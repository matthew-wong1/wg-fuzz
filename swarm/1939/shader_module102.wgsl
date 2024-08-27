struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1000f, 567f, -1087f, 1337f, 1133f, -1000f, -1611f, 1000f, 123f, 1696f, 1000f, -545f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(34380u, 12u)])) - global0[_wgslsmith_index_u32(1u, 12u)]))))), arg_0.a, _wgslsmith_f_op_f32(-arg_0.a));
    global0 = array<f32, 12>();
    let var_1 = 416f;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) * _wgslsmith_f_op_f32(select(-347f, var_1, false)))), _wgslsmith_f_op_f32(2114f - 1000f))));
    let var_3 = arg_0;
    return !(!(u_input.a.x >= 73941u)) && all(vec2<bool>(false, true));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = vec4<bool>(true, func_3(arg_0), false, func_3(arg_0));
    let var_1 = var_0.x;
    let var_2 = vec4<i32>(37484i, -abs(18191i), -22571i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -u_input.d, select(14199i, 1i, var_1)), select(max(vec3<i32>(u_input.c, 1i, 2147483647i), vec3<i32>(2147483647i, -55949i, u_input.b)), vec3<i32>(u_input.b, u_input.d, u_input.d), select(vec3<bool>(var_0.x, var_0.x, var_1), vec3<bool>(true, true, true), true))), _wgslsmith_sub_i32(u_input.b, i32(-1i) * -3340i)));
    global0 = array<f32, 12>();
    var var_3 = min(var_2.x ^ -1i, var_2.x) | reverseBits(var_2.x);
    return arg_0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec4<u32> {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(select(71394u, _wgslsmith_mod_u32(~76043u, ~u_input.a.x) ^ 0u, true), 12u)]);
    global0 = array<f32, 12>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.a), vec4<u32>(0u, _wgslsmith_add_u32(arg_0.x, 32917u), firstTrailingBit(39530u), arg_0.x | 2673u) ^ ~min(vec4<u32>(arg_0.x, 0u, u_input.a.x, arg_0.x), vec4<u32>(0u, 66295u, u_input.a.x, arg_0.x)))));
    global0 = array<f32, 12>();
    var var_2 = !(!any(vec3<bool>(true, true, true)) || ((u_input.d >> (1u % 32u)) != abs(u_input.b & u_input.c)));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, arg_0.x ^ abs(31403u), 4294967295u, arg_1.x), ~(~vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 1u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, u_input.a.x, 0u, arg_1.x), vec4<u32>(4294967295u, 0u, 32526u, 1u)) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(min(vec4<u32>(5377u, 0u, 1u, 0u) | vec4<u32>(arg_0.x, arg_1.x, 20618u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 1u, 63458u, 0u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_1.x), vec4<u32>(arg_0.x, u_input.a.x, 83145u, 35153u))), ~select(vec4<u32>(1u, arg_1.x, arg_1.x, u_input.a.x), vec4<u32>(arg_0.x, arg_0.x, 27973u, u_input.a.x), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(func_1(vec2<u32>(u_input.a.x, 108171u), vec3<u32>(58966u, u_input.a.x, 1u)), abs(vec4<u32>(u_input.a.x, 28342u, u_input.a.x, u_input.a.x))), 12u)] * _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(4294967295u), firstLeadingBit(16182u)), 12u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-852f)), 1381f))))));
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

