struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(28132u, 19u)], global0[_wgslsmith_index_u32(~29135u, 19u)]), _wgslsmith_mult_vec3_i32(select(vec3<i32>(26135i, -46033i, -2147483647i) ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], -10785i, 0i), -vec3<i32>(global0[_wgslsmith_index_u32(arg_1, 19u)], u_input.c, 1i), true), vec3<i32>(1i >> (arg_1 % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(38708u, 7207u), 19u)], global0[_wgslsmith_index_u32(~arg_1, 19u)]))), arg_0, vec2<i32>(_wgslsmith_div_i32(1i >> (0u % 32u), min(0i, global0[_wgslsmith_index_u32(arg_0, 19u)])), 0i) >> (_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(arg_1, arg_1) << (vec2<u32>(8325u, u_input.b) % vec2<u32>(32u))), firstTrailingBit(abs(vec2<u32>(4294967295u, 4294967295u)))) % vec2<u32>(32u)));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(abs(-reverseBits(vec3<i32>(-6786i, -2147483647i, u_input.a))), -vec3<i32>(var_0.a, 0i >> (u_input.b % 32u), global0[_wgslsmith_index_u32(1u, 19u)])), firstTrailingBit(5960i));
    return select(arg_0, arg_0, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))));
}

fn func_3() -> bool {
    var var_0 = ~(~(~vec4<u32>(~u_input.b, u_input.b, 1u, 30101u)));
    var var_1 = ~((u_input.b << (min(u_input.b >> (u_input.b % 32u), var_0.x) % 32u)) | u_input.b);
    var var_2 = true;
    global0 = array<i32, 19>();
    return any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> u32 {
    return select(select(~u_input.b, firstTrailingBit(_wgslsmith_div_u32(35648u, 1u)), !(global0[_wgslsmith_index_u32(u_input.b, 19u)] <= u_input.a)), 10318u, !func_3()) | u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(max(94589u, u_input.b >> (_wgslsmith_div_u32(~u_input.b, 1u) % 32u)), 19u)], ~func_4(~u_input.c, vec4<bool>(true, !arg_0.x, func_3(), any(vec2<bool>(arg_0.x, arg_0.x))), select(!vec4<bool>(arg_0.x, arg_2, arg_2, false), !vec4<bool>(false, arg_2, arg_0.x, false), !arg_0.x)), select(min(vec2<i32>(u_input.c, u_input.a) >> (arg_1.wx % vec2<u32>(32u)), max(vec2<i32>(u_input.c, u_input.a), vec2<i32>(-9417i, -9135i))) << (vec2<u32>(1u, _wgslsmith_clamp_u32(0u, 1u, u_input.b)) % vec2<u32>(32u)), reverseBits(abs(firstLeadingBit(vec2<i32>(u_input.a, -2147483647i)))), select(select(select(vec2<bool>(false, arg_2), arg_0, vec2<bool>(false, arg_0.x)), vec2<bool>(true, arg_2), arg_0), vec2<bool>(all(vec3<bool>(arg_0.x, false, false)), select(arg_0.x, arg_0.x, arg_2)), arg_0)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(616f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * 413f))))));
    var var_2 = -_wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a, -1i >> (var_0.b % 32u)), vec2<i32>(global0[_wgslsmith_index_u32(7918u, 19u)], var_0.a)) ^ ((vec2<i32>(-1i) * -var_0.c) ^ var_0.c);
    var var_3 = Struct_3(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 6221i), func_3(), arg_1);
    let var_4 = global1[_wgslsmith_index_u32(15735u, 1u)];
    return 9549u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(4294967295u, _wgslsmith_add_u32(~17816u & (~0u ^ u_input.b), _wgslsmith_mod_u32(reverseBits(u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b, 7807u, u_input.b), ~vec4<u32>(u_input.b, 14326u, u_input.b, 38758u)))));
    var var_1 = _wgslsmith_f_op_f32(296f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2439f * -1013f)), -409f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(433f, 1879f)))))));
    let var_2 = reverseBits(firstTrailingBit(func_1(_wgslsmith_mult_u32(~0u, var_0.x), 17717u)));
    global0 = array<i32, 19>();
    var var_3 = u_input.c <= global0[_wgslsmith_index_u32(~abs(countOneBits(~u_input.b)), 19u)];
    let var_4 = Struct_4(Struct_1(~_wgslsmith_div_u32(var_2, func_2(vec2<bool>(false, true), vec4<u32>(1u, var_2, var_0.x, 4294967295u), true)), countOneBits(var_0.x), false, var_0, vec2<f32>(_wgslsmith_f_op_f32(-913f + _wgslsmith_f_op_f32(min(1729f, -545f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f * 301f)))));
    var var_5 = global0[_wgslsmith_index_u32(45135u, 19u)];
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(_wgslsmith_sub_u32(u_input.b, 1u), abs(0u)) | 1u, ~81605u), 19u)]);
}

