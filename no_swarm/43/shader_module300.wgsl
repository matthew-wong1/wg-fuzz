struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 25>;

var<private> global2: array<f32, 32>;

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(true, vec4<u32>(39901u, 80051u, 30801u, 4335u)), Struct_2(false, vec4<u32>(20469u, 1u, 4294967295u, 4294967295u)));

var<private> global4: array<bool, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = Struct_3(global0.a, global0.b, ~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, global0.c.x), global0.c) | vec3<u32>(arg_0.b.x, arg_0.b.x, ~u_input.d)), any(vec2<bool>(all(global0.b), global0.d)));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~arg_0.b.x, 1u)), max(_wgslsmith_div_vec2_u32(var_0.b.zx | vec2<u32>(u_input.c, 1u), arg_0.b.zz), min(vec2<u32>(41889u, var_0.b.x), ~vec2<u32>(arg_0.b.x, global0.c.x)))), arg_0.b.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c, 1u, ~_wgslsmith_dot_vec4_u32(var_0.b, vec4<u32>(0u, u_input.c, var_0.b.x, var_0.b.x))), ~u_input.d | _wgslsmith_add_u32(~arg_0.b.x, 41163u)), ~arg_0.b.x);
    global4 = array<bool, 25>();
    global2 = array<f32, 32>();
    return global0.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = Struct_2(arg_0.a, _wgslsmith_clamp_vec4_u32(arg_0.b, arg_0.b, ~vec4<u32>(~arg_0.b.x, ~global0.c.x, func_3(arg_0, u_input.b), 0u)));
    var var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(global0.a.x - arg_1))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a))), global0.b, vec3<u32>(8527u, ~(select(global0.c.x, global0.c.x, true) >> (~global0.c.x % 32u)), 1u), any(!(!(!vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(var_0.b.x, 25u)])))));
    var var_4 = _wgslsmith_mod_u32(~(arg_0.b.x ^ u_input.d), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 1u), 47613u >> (var_0.b.x % 32u)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global0.a.xy)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1060f, -740f)) * _wgslsmith_f_op_f32(-global0.a.x))), arg_2.x)));
}

fn func_1() -> vec2<u32> {
    global4 = array<bool, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(global4[_wgslsmith_index_u32(1u, 25u)] | global0.b.x, vec4<u32>(48327u, 4294967295u, global0.c.x, global0.c.x)), _wgslsmith_div_f32(-664f, global0.a.x), global0.a.xzz)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(113f + -1769f), _wgslsmith_f_op_f32(global0.a.x - 1769f)), global0.a.wy, any(select(vec4<bool>(global4[_wgslsmith_index_u32(global0.c.x, 25u)], false, global4[_wgslsmith_index_u32(1u, 25u)], global4[_wgslsmith_index_u32(u_input.d, 25u)]), vec4<bool>(global4[_wgslsmith_index_u32(global0.c.x, 25u)], false, global0.b.x, true), vec4<bool>(false, false, global0.d, true)))))));
    var var_1 = global0.a.zy;
    let var_2 = reverseBits(u_input.a);
    var var_3 = Struct_3(global0.a, vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(80187u, u_input.c), abs(_wgslsmith_clamp_u32(1u, 16047u, global0.c.x))), 25u)], global4[_wgslsmith_index_u32(~global0.c.x, 25u)], true), global0.c, (24966i | _wgslsmith_dot_vec4_i32(select(vec4<i32>(-16846i, var_2.x, var_2.x, 5413i), var_2, global4[_wgslsmith_index_u32(u_input.d, 25u)]), ~u_input.a)) <= max(firstTrailingBit(u_input.b.x | u_input.b.x), ~2147483647i));
    return reverseBits(min(firstTrailingBit(~vec2<u32>(u_input.d, 1u) ^ ~vec2<u32>(global0.c.x, 42642u)), _wgslsmith_mod_vec2_u32(min(~var_3.c.xx, countOneBits(vec2<u32>(22305u, 4294967295u))), min(vec2<u32>(var_3.c.x, 1u), _wgslsmith_clamp_vec2_u32(global0.c.yy, var_3.c.xz, vec2<u32>(global0.c.x, u_input.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(1u, 32u)];
    global1 = array<vec3<u32>, 25>();
    let var_1 = true;
    var var_2 = vec3<u32>(u_input.c, 1u, 19309u);
    global3 = array<Struct_2, 2>();
    let var_3 = -_wgslsmith_add_vec2_i32(~(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-79776i, 1i))), u_input.b.zx);
    var_2 = vec3<u32>(_wgslsmith_add_u32(~0u, min(~global0.c.x & ~u_input.d, ~1u)), var_2.x, firstTrailingBit(~4294967295u << (0u % 32u)) | _wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(1u, var_2.x), vec2<u32>(u_input.d, 4294967295u))), ~var_2.xx >> (func_1() % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec4_i32(abs(u_input.a) ^ u_input.a, select(~u_input.a, -u_input.a, vec4<bool>(false, global0.b.x, false, false))), 0u, global0.a.x);
}

