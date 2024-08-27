struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(4294967295u, 1i, true, vec2<bool>(true, 0i < -u_input.b));
    let var_1 = Struct_1(~(~_wgslsmith_mod_u32(~arg_1.x, _wgslsmith_div_u32(12803u, arg_1.x))), -1i, var_0.c | true, !(!select(vec2<bool>(true, true), !vec2<bool>(false, var_0.c), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_0.a, 2u)]))));
    var_0 = var_1;
    var var_2 = 15518i;
    var_0 = var_1;
    return u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<f32>) -> vec2<f32> {
    global0 = array<bool, 2>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2245f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-315f))))))), 106f, arg_0.x);
    global0 = array<bool, 2>();
    var var_1 = Struct_1(_wgslsmith_sub_u32(~u_input.a.x, 4294967295u >> (u_input.a.x % 32u)), -2147483647i, any(select(select(vec2<bool>(true, true), arg_1.yz, arg_1.xx), vec2<bool>(true, arg_1.x), !(arg_1.x && true))), !arg_1.zy);
    let var_2 = Struct_1(~(~func_3(_wgslsmith_f_op_vec3_f32(-arg_0), ~vec3<u32>(63731u, var_1.a, 0u))), u_input.b, !(!all(select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.d.x, var_1.c), true))), var_1.d);
    return arg_0.xz;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1218f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1051f * -504f))))));
    let var_1 = firstTrailingBit(firstTrailingBit(firstTrailingBit(vec4<u32>(~26038u, 4294967295u, ~u_input.a.x, arg_0))));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1286f + _wgslsmith_f_op_f32(f32(-1f) * -639f)) + _wgslsmith_f_op_f32(f32(-1f) * -873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-597f)) - _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2465f), 2671f, var_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 466f, var_0.x))))), select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(19508u, 2u)])), all(vec2<bool>(true, true)), true), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false, global0[_wgslsmith_index_u32(arg_0, 2u)]), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), (33549i | u_input.d) == (u_input.d & u_input.b)), min(-u_input.b, -44434i) >> (u_input.a.x % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1305f))), vec2<f32>(_wgslsmith_f_op_f32(select(314f, var_0.x, global0[_wgslsmith_index_u32(38943u, 2u)])), _wgslsmith_f_op_f32(sign(var_0.x))), firstLeadingBit(u_input.c.x) != u_input.d)))));
    return Struct_1(60350u, min(_wgslsmith_add_i32(~u_input.c.x | u_input.b, ~1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.c.x, reverseBits(u_input.c.x)), min(u_input.d, u_input.b) | select(u_input.d, 2147483647i, false))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(firstTrailingBit(u_input.a.x)) ^ ~4294967295u, 78472u, ~var_1.x), 2u)], select(vec2<bool>(~u_input.c.x > u_input.c.x, true), vec2<bool>((u_input.b <= -22479i) & true, any(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_1.x, 2u)]))), all(!vec2<bool>(global0[_wgslsmith_index_u32(4198u, 2u)], global0[_wgslsmith_index_u32(15494u, 2u)])) & !(!global0[_wgslsmith_index_u32(30139u, 2u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = func_1(u_input.a.x);
    global0 = array<bool, 2>();
    let var_2 = _wgslsmith_mult_u32(countOneBits(4294967295u) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_0, 31538u), var_0), max(~(10393u >> (var_0 % 32u)), _wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(var_1.a, 0u, 56028u))), ~vec3<u32>(var_1.a, 1u, var_1.a))));
    let var_3 = _wgslsmith_f_op_f32(sign(1029f));
    var var_4 = func_1(select(var_0, ~1u, all(!vec3<bool>(global0[_wgslsmith_index_u32(var_2, 2u)], var_1.c, global0[_wgslsmith_index_u32(var_2, 2u)])) & true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1339f, var_3, var_3), vec3<f32>(var_3, var_3, 223f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -248f, var_3))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(542f, var_3, var_3))))))), var_3, -(var_1.b | ~max(-19518i, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(236f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1865f, -172f)), _wgslsmith_div_f32(-425f, var_3)))), _wgslsmith_mod_u32(abs(var_4.a), var_1.a));
}

