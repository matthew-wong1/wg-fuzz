struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(33851i, 0i, i32(-2147483648), 0i, 2147483647i, 47068i, -14883i, i32(-2147483648), 42200i, 0i, i32(-2147483648), i32(-2147483648), 2147483647i, 1i, -1i, 3597i, 2147483647i, i32(-2147483648), 23543i, i32(-2147483648), 1i, -9877i, -38846i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2040f * _wgslsmith_f_op_f32(arg_0 - arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(arg_0 + arg_0))), abs(19334u), -1000f, min(vec4<i32>(2147483647i, reverseBits(32196i), global0[_wgslsmith_index_u32(16943u, 23u)], -global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<i32>(global0[_wgslsmith_index_u32(31962u, 23u)], -1i, global0[_wgslsmith_index_u32(arg_1, 23u)], 36132i) | (vec4<i32>(-2147483647i, -41132i, global0[_wgslsmith_index_u32(58902u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]) | vec4<i32>(global0[_wgslsmith_index_u32(38027u, 23u)], global0[_wgslsmith_index_u32(11889u, 23u)], -2147483647i, -2147483647i))) >> (vec4<u32>(82498u, u_input.a.x, _wgslsmith_div_u32(4294967295u, countOneBits(arg_1)), 4294967295u) % vec4<u32>(32u)));
    var var_2 = Struct_1(arg_0, 4294967295u, var_1.a, ~select(vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.d.xx, var_1.d.zz), max(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), countOneBits(2410i)), reverseBits(var_1.d), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f - arg_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.c, var_2.c, true)), _wgslsmith_f_op_f32(f32(-1f) * -1879f))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<u32> {
    var var_0 = Struct_2(-arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(300f * 1362f), _wgslsmith_f_op_f32(func_3(arg_1.a, 20318u))))))), arg_0.c, !vec3<bool>(true, false, arg_0.d.x && !arg_0.d.x));
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_1 = arg_1;
    global0 = array<i32, 23>();
    return vec3<u32>(~(4458u | ~countOneBits(arg_1.b)), 14806u, firstLeadingBit(var_0.c.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> f32 {
    let var_0 = Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(7097u, 23u)], min(_wgslsmith_mult_i32(0i, arg_1.d.x), ~2147483647i) << ((~2739u << (u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(max(arg_2, -106f)), vec4<u32>(~(~(~arg_0)), 4294967295u, min(_wgslsmith_dot_vec3_u32(func_2(Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 2147483647i), -307f, u_input.a, vec3<bool>(true, false, false)), arg_1, u_input.a.wx), ~vec3<u32>(arg_0, arg_0, u_input.a.x)), _wgslsmith_mult_u32(~u_input.a.x, 0u)), ~arg_0), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), true), true));
    var var_1 = vec2<bool>(all(!vec3<bool>(375f < arg_3, all(vec2<bool>(true, var_0.d.x)), any(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x)))), var_0.d.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3)), 101f)) - -796f), 46664u, -1000f, vec4<i32>(reverseBits(-53207i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-19570i, -2147483647i, var_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 23u)] << (13240u % 32u)), arg_1.d.x << (~arg_1.b % 32u), min(_wgslsmith_dot_vec4_i32(arg_1.d, arg_1.d), ~18172i)) << (~u_input.a % vec4<u32>(32u)));
    global0 = array<i32, 23>();
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool) -> StorageBuffer {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0.c.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~(~firstTrailingBit(arg_0.c))), max(firstTrailingBit(arg_0.c), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 21322u), ~57122u, arg_0.c.x, _wgslsmith_add_u32(u_input.a.x, 0u))));
    var var_1 = arg_0.d.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f + -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + 2242f), _wgslsmith_f_op_f32(1000f - arg_0.b)), _wgslsmith_div_f32(arg_1.x, 1652f), 1024f), vec4<f32>(arg_0.b, arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2270f) - 753f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, arg_2))))), select(vec4<bool>(true, arg_2, true, all(arg_0.d.zx)), !(!vec4<bool>(arg_0.d.x, arg_2, arg_2, arg_2)), true)))));
    return StorageBuffer(abs(u_input.a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    var var_1 = ~22540i;
    let var_2 = select(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -899f))) > 954f, !(!(!all(vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = func_4(Struct_2(_wgslsmith_mod_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], 8161i)), ~vec2<i32>(global0[_wgslsmith_index_u32(0u, 23u)], -1i)), -vec2<i32>(global0[_wgslsmith_index_u32(1u, 23u)], 0i) | vec2<i32>(45409i, global0[_wgslsmith_index_u32(29660u, 23u)])), _wgslsmith_f_op_f32(round(251f)), firstTrailingBit(~(u_input.a >> (vec4<u32>(53866u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), select(!vec3<bool>(var_2, true, var_2), vec3<bool>(!var_2, any(vec3<bool>(var_2, false, false)), var_2), select(select(var_2, var_2, false), var_2, var_2 | true))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(9411u, Struct_1(-872f, 4294967295u, 1163f, vec4<i32>(0i, -3387i, 0i, global0[_wgslsmith_index_u32(1u, 23u)])), -554f, 591f)) - -1105f), -516f, !var_2)), _wgslsmith_f_op_f32(func_3(-728f, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(11887u, u_input.a.x, 325u), ~u_input.a.x)))), var_2);
}

