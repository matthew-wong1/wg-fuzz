struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-580f, -2005f, -616f, 627f, 1000f, -659f, 478f, 1053f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1() -> u32 {
    var var_0 = ~(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.e), vec2<u32>(u_input.c, u_input.e)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 14826u), vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.e, _wgslsmith_mod_u32(u_input.c, 1u))) | _wgslsmith_sub_vec2_u32(max(~vec2<u32>(u_input.e, 1u), max(vec2<u32>(u_input.b, u_input.e), vec2<u32>(0u, u_input.e))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(14288u, u_input.b), vec2<u32>(41041u, u_input.c)))));
    var_0 = ~(~(~(~firstLeadingBit(vec2<u32>(var_0.x, 31964u)))));
    var_0 = ~(vec2<u32>(_wgslsmith_add_u32(1u, 1u), firstTrailingBit(firstTrailingBit(0u))) ^ ~vec2<u32>(~0u, var_0.x));
    global0 = array<f32, 8>();
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 8u)] - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(17050u, 8u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 8u)]))) != global0[_wgslsmith_index_u32(u_input.b, 8u)], all(vec2<bool>(any(vec2<bool>(true, true)), !any(vec3<bool>(false, true, false)))), true);
    return ~_wgslsmith_mult_u32(15169u, u_input.b) >> (firstTrailingBit(abs(2390u)) % 32u);
}

fn func_3() -> u32 {
    return abs(~(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, u_input.b)), min(vec2<u32>(7993u, u_input.b), vec2<u32>(33647u, 73007u)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    var var_0 = -vec2<i32>(u_input.a.x, 1i);
    var_0 = u_input.d.yx;
    var_0 = vec2<i32>(-2147483647i, u_input.a.x);
    return Struct_1(arg_0.x, vec2<u32>(_wgslsmith_mod_u32(arg_0.x >> (arg_0.x % 32u), func_3()), 4294967295u) & arg_0.zz, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-714f - _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.c, 8u)]))), global0[_wgslsmith_index_u32(4294967295u, 8u)], _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 17627u, 59782u), 8u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(2554u, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 8u)])) - vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 8u)] + 406f), -250f, 126f, global0[_wgslsmith_index_u32(arg_0.x ^ u_input.b, 8u)]))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<f32, 8>();
    return func_2(vec4<u32>(arg_2.b.x, arg_2.b.x, ~u_input.c, u_input.c), max(-countOneBits(u_input.d.wx), countOneBits(u_input.d.zy)), u_input.a.x, vec4<bool>(any(vec3<bool>(any(vec3<bool>(true, true, false)), u_input.a.x <= 1i, true)), false & all(vec2<bool>(false, true)), !any(vec4<bool>(true, true, true, true)), !any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(0u, Struct_1(_wgslsmith_add_u32(u_input.b, 0u), vec2<u32>(u_input.c, ~(~0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], 1000f, global0[_wgslsmith_index_u32(0u, 8u)], 538f), vec4<f32>(-312f, -1345f, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)])))) * vec4<f32>(_wgslsmith_f_op_f32(1854f + global0[_wgslsmith_index_u32(u_input.e, 8u)]), -898f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u, 8u)])), global0[_wgslsmith_index_u32(func_1(), 8u)]))));
    global0 = array<f32, 8>();
    let var_1 = true;
    var var_2 = Struct_3(firstTrailingBit(vec4<i32>(-_wgslsmith_clamp_i32(2147483647i, u_input.d.x, u_input.d.x), _wgslsmith_clamp_i32(u_input.d.x, -1i, _wgslsmith_div_i32(18089i, u_input.a.x)), u_input.d.x, u_input.d.x)), func_4(var_0.b.c.xxw, Struct_1(~(~0u), var_0.b.b, vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_0.a, 8u)], var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.b.a, 8u)] + var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.b.c.x))), func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.c, u_input.c, var_0.b.a), abs(vec4<u32>(var_0.a, u_input.c, u_input.e, 49611u))), (u_input.a << (vec2<u32>(13792u, 0u) % vec2<u32>(32u))) << (var_0.b.b % vec2<u32>(32u)), u_input.d.x ^ -u_input.d.x, select(!vec4<bool>(var_1, var_1, true, var_1), !vec4<bool>(var_1, var_1, false, var_1), any(vec3<bool>(false, true, var_1))))), 34619u, var_0.b);
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(var_2.d.c.wz)))), vec2<f32>(-963f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

