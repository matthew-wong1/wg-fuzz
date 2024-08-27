struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_2(all(!select(!vec3<bool>(true, false, arg_1.a), select(vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_1.a, false, arg_1.a), arg_1.a), !vec3<bool>(true, arg_1.a, false))), ~(~(-2147483647i)));
    var var_1 = select(select(vec2<bool>(false, false), !(!select(vec2<bool>(arg_1.a, var_0.a), vec2<bool>(false, false), vec2<bool>(arg_1.a, false))), !(!select(vec2<bool>(arg_1.a, true), vec2<bool>(true, arg_1.a), vec2<bool>(true, var_0.a)))), vec2<bool>(false, 2147483647i >= _wgslsmith_sub_i32(firstTrailingBit(3086i), u_input.b)), true);
    let var_2 = _wgslsmith_dot_vec2_i32(-reverseBits(-(vec2<i32>(u_input.b, -26334i) << (arg_0 % vec2<u32>(32u)))), vec2<i32>(~u_input.b, -1i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, 119f, -204f, 1456f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-715f)) + 633f), _wgslsmith_f_op_f32(-884f - _wgslsmith_f_op_f32(-1015f - -1000f)), -661f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-368f * 1000f), -565f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-118f, 2021f, -1581f, 478f), vec4<f32>(1302f, 360f, 543f, 1287f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1000f * -1000f), -259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.x))), !arg_1.a, u_input.d.xyw, !select(vec2<bool>(true, true), !(!vec2<bool>(var_1.x, false)), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, arg_1.a))), ~firstTrailingBit(~select(33738u, 0u, arg_1.a)));
    return vec2<i32>(_wgslsmith_sub_i32(-abs(-5729i) >> (1u % 32u), u_input.b), 9240i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = abs(u_input.b);
    var var_1 = func_3(vec2<u32>(26182u, 1u), Struct_2(any(select(vec4<bool>(true, true, arg_0.d.x, true), !vec4<bool>(true, arg_0.d.x, false, true), !arg_3.b)), max(u_input.c, _wgslsmith_sub_i32(reverseBits(arg_2), u_input.c))));
    var_1 = vec2<i32>(reverseBits(_wgslsmith_mod_i32(arg_2 ^ -38734i, i32(-1i) * -2147483647i) & 1i), arg_2);
    var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-3145i, var_0), vec2<i32>(2147483647i, var_1.x) << (vec2<u32>(3190u, 41860u) % vec2<u32>(32u))), ~vec2<i32>(var_1.x, var_1.x)), 1i), countOneBits(reverseBits(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-36513i, 1i, u_input.a), min(arg_2, arg_2)))));
    let var_2 = !vec4<bool>(1u >= arg_0.e, any(select(select(arg_3.d, arg_0.d, arg_3.b), select(arg_0.d, arg_0.d, arg_0.d.x), true)), arg_0.b, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.b, arg_3.d.x, arg_0.b, false), vec4<bool>(false, true, true, false)), !vec4<bool>(true, arg_0.b, arg_0.b, arg_3.b), select(vec4<bool>(arg_0.b, arg_3.b, true, false), vec4<bool>(arg_0.b, true, arg_3.b, false), arg_3.d.x))));
    return u_input.c << (firstTrailingBit(24255u) % 32u);
}

fn func_1() -> i32 {
    var var_0 = vec4<bool>(1i != -(-2147483647i ^ func_2(Struct_1(-307f, false, u_input.d.wzz, vec2<bool>(true, true), u_input.d.x), 1155f, u_input.c, Struct_1(-1016f, false, u_input.d.wxx, vec2<bool>(false, true), 1u))), !(!all(vec3<bool>(true, false, false))) & select(true, true, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, false, any(vec4<bool>(false, true, false, true))))), select(true, true, !any(vec2<bool>(true, true))));
    var var_1 = ~u_input.d.x;
    var_1 = ~_wgslsmith_div_u32(~(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), ~u_input.d.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1809f - -1242f), false, _wgslsmith_mod_vec3_u32(vec3<u32>(max(firstTrailingBit(0u), abs(u_input.d.x)), 50344u, u_input.d.x), abs(u_input.d.zyz)), select(select(!var_0.yx, vec2<bool>(any(vec3<bool>(false, var_0.x, var_0.x)), all(vec2<bool>(false, var_0.x))), select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), var_0.zy), var_0.zy, select(false, var_0.x, var_0.x))), select(select(vec2<bool>(var_0.x, var_0.x), select(var_0.yz, var_0.wy, var_0.yz), true), select(!var_0.yy, !vec2<bool>(var_0.x, var_0.x), true), !(27140u < u_input.d.x)), false), 194u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(225f - _wgslsmith_f_op_f32(select(var_2.a, -794f, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, -1000f, true))))) * var_2.a);
    return ~min(22002i, _wgslsmith_mult_i32(1i, -7169i)) << (~(~firstLeadingBit(~u_input.d.x)) % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, -569f, -1066f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, -908f, -311f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1502f, var_0.x, -1770f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1333f, var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x))))) * vec3<f32>(var_0.x, var_0.x, -1260f));
    var var_1 = firstLeadingBit(vec4<u32>(79699u, arg_1, ~14816u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 1u), ~0u)) & ~(select(vec4<u32>(4294967295u, arg_1, arg_1, u_input.d.x), vec4<u32>(arg_1, 34199u, 15401u, 0u), false) >> (u_input.d % vec4<u32>(32u))));
    let var_2 = Struct_2(!any(vec3<bool>(u_input.d.x == 71736u, true, true)), _wgslsmith_div_i32(1i, 1i));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~vec4<i32>(_wgslsmith_mod_i32(~u_input.b, u_input.c << (u_input.d.x % 32u)), func_1(), ~u_input.b, firstLeadingBit(1i >> (u_input.d.x % 32u))), u_input.d.x);
    let var_1 = vec3<bool>(true, true, !(!all(vec4<bool>(true, var_0.a, false, false))));
    var var_2 = !(!select(!vec3<bool>(true, false, var_1.x), select(var_1, select(var_1, var_1, vec3<bool>(var_0.a, true, var_0.a)), 53220u < u_input.d.x), all(vec4<bool>(var_1.x, var_0.a, false, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(230f, -878f, 1691f, -412f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-266f, 2125f, -774f, -534f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-275f + 1567f), _wgslsmith_f_op_f32(select(-334f, 1231f, true))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f * -1366f)), -1000f, _wgslsmith_div_f32(-461f, 448f), 1f));
    var var_4 = var_2.x;
    var var_5 = all(select(!vec4<bool>(u_input.d.x >= 1u, true, any(var_1), 192f >= var_3.x), !(!select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, false, var_2.x, var_1.x), vec4<bool>(var_0.a, var_2.x, var_0.a, false))), !vec4<bool>(any(vec4<bool>(false, false, var_0.a, false)), u_input.c < 3281i, !var_1.x, true | var_0.a)));
    var_4 = !(u_input.b != -48048i);
    let var_6 = vec3<bool>(select(var_1.x, var_1.x, _wgslsmith_f_op_f32(-var_3.x) >= -1000f), !(!((1439f < var_3.x) || func_4(vec4<i32>(2147483647i, u_input.a, var_0.b, 17178i), 39236u).a)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_3.xy - vec2<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(floor(var_3.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) * var_3.x))))), _wgslsmith_sub_i32(-50906i, _wgslsmith_add_i32(-2147483647i, u_input.c & abs(var_0.b))), vec3<u32>(u_input.d.x, firstTrailingBit(~1u), _wgslsmith_mult_u32(1u, 19217u | abs(u_input.d.x))));
}

