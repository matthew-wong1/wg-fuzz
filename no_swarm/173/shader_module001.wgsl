struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(10361i, 2147483647i, i32(-2147483648));

var<private> global2: array<i32, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: u32) -> vec3<u32> {
    let var_0 = Struct_2(~arg_2, _wgslsmith_add_i32(global1.x, 1i), Struct_1(_wgslsmith_f_op_f32(-1f), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), vec2<bool>(true, true)), vec4<bool>(true, 0u <= arg_2, true, !all(vec4<bool>(true, true, true, true))), Struct_1(-1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0.x)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(1i != arg_1, true), vec2<bool>(true, true))));
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(var_0.a, 17u)]) >> (vec2<u32>(1u, 64348u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.x, 66996i), vec2<i32>(arg_1, var_0.b), global1.xx)), ~(u_input.a.x ^ -44932i), -31796i), 0i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * var_0.e.a)))))) + -657f);
    var var_3 = var_0.c;
    global1 = vec3<i32>(29461i, ~abs((u_input.a.x | arg_1) >> (~41984u % 32u)), -3104i);
    return ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, arg_2, 1u) | vec3<u32>(arg_2, arg_2, arg_2), firstTrailingBit(vec3<u32>(arg_2, 0u, arg_2))), firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(32997u, arg_2, 0u), vec3<u32>(var_0.a, 1u, 0u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-610f)))), 812f)), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(_wgslsmith_clamp_i32(2147483647i, 0i, global1.x) <= global2[_wgslsmith_index_u32(max(arg_0.x, arg_0.x), 17u)], true), !vec2<bool>(false, arg_1 <= arg_1), true));
    global2 = array<i32, 17>();
    var var_1 = vec4<bool>(all(select(select(!var_0.c, var_0.c, !vec2<bool>(true, var_0.c.x)), vec2<bool>(all(var_0.c), all(vec4<bool>(true, var_0.b, true, var_0.c.x))), vec2<bool>(!var_0.c.x, var_0.b))), all(var_0.c), var_0.b, !(all(!vec4<bool>(false, true, true, var_0.b)) && true));
    global0 = 1u >> (arg_0.x % 32u);
    global1 = max(-firstTrailingBit(-(~vec3<i32>(0i, global1.x, u_input.a.x))), -(~vec3<i32>(-1i, global1.x, -14515i)) & _wgslsmith_mult_vec3_i32((vec3<i32>(u_input.a.x, global1.x, global1.x) >> (arg_0 % vec3<u32>(32u))) | vec3<i32>(global1.x, global1.x, u_input.a.x), vec3<i32>(u_input.a.x, global1.x, reverseBits(u_input.a.x))));
    return 2203f;
}

fn func_2() -> f32 {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_3(vec2<f32>(1485f, 1438f), _wgslsmith_dot_vec2_i32(global1.yz, u_input.a), firstLeadingBit(0u)), 473f)))), false, select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(false, false))), true));
    var var_2 = select(var_1.b, var_1.b, select(true, false | any(!vec4<bool>(var_1.c.x, false, false, var_1.c.x)), any(var_1.c)));
    var var_3 = 2680f;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) + _wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -2113f) - -1297f))), -558f, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-507f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(241f, 1845f) - -484f));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = -106f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(func_2()))));
    var var_1 = vec3<bool>(select(arg_1.x, !any(arg_1.yxz) == any(select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1, vec4<bool>(arg_1.x, arg_1.x, true, true))), false), true, all(select(select(vec2<bool>(arg_1.x, arg_1.x), select(arg_1.yy, arg_1.xy, arg_1.x), select(arg_1.zw, arg_1.zz, true)), arg_1.wy, vec2<bool>(true, true))));
    var_1 = vec3<bool>(false, true, true);
    global2 = array<i32, 17>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(182f + arg_0.x))))) - _wgslsmith_f_op_f32(trunc(arg_0.x))), !(!var_1.x), vec2<bool>(any(arg_1.yy), true));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = !all(!vec3<bool>(global1.x <= -10069i, false, arg_0.c.x));
    global2 = array<i32, 17>();
    var var_1 = -1086f;
    var var_2 = true;
    let var_3 = Struct_2(arg_1.x & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(arg_1.x, 44727u, arg_1.x), vec3<u32>(arg_1.x, 3539u, arg_1.x))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.x, arg_1.x), vec3<u32>(6315u, arg_1.x, arg_1.x)) | _wgslsmith_mult_vec3_u32(vec3<u32>(51393u, arg_1.x, 1u), vec3<u32>(6705u, arg_1.x, 33255u))), global1.x, Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a, arg_0.a))), -1302f)), var_0, !arg_0.c), vec4<bool>(var_0, false, true, arg_1.x > 43944u), func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-162f, 851f), vec2<f32>(arg_0.a, 2140f), vec2<bool>(true, arg_0.c.x)))), vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(arg_0.a * -2184f)), arg_0.c)), !vec4<bool>(func_1(vec2<f32>(480f, 2280f), vec4<bool>(arg_0.c.x, true, false, arg_0.c.x), global2[_wgslsmith_index_u32(0u, 17u)]).c.x, var_0, arg_0.c.x | var_0, func_1(vec2<f32>(-1002f, arg_0.a), vec4<bool>(false, arg_0.c.x, false, false), global1.x).c.x), abs(reverseBits(global1.x)) ^ (global2[_wgslsmith_index_u32(44050u, 17u)] >> (arg_1.x % 32u))));
    return 4294967295u | (~(~0u >> (~arg_1.x % 32u)) ^ 26913u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<i32>(-34512i, min(i32(-1i) * -19013i, firstTrailingBit(~(-29815i)))), u_input.a, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)), -164f, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))))))), false, vec2<bool>(~(~7508u) <= func_5(func_1(vec2<f32>(-1019f, 1077f), vec4<bool>(true, false, true, false), global2[_wgslsmith_index_u32(83821u, 17u)]), min(vec2<u32>(16206u, 119681u), vec2<u32>(4294967295u, 65255u))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(887f, var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 408f)))))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(8258u, 40008u), reverseBits(vec2<u32>(14965u, 0u)))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(27069u, 1u), 1u, 0u));
}

