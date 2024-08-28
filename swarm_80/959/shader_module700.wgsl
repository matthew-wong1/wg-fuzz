struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = u_input.c;
    let var_1 = Struct_1(~1u, true, _wgslsmith_mult_u32(10016u, _wgslsmith_dot_vec3_u32(vec3<u32>(~10452u, abs(4294967295u), ~0u), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(34636u, 0u, 0u), vec3<u32>(0u, 1u, 4294967295u)), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 7917u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, 177f, arg_2)))), 1u);
    var_0 = firstLeadingBit(u_input.a | 2147483647i);
    let var_2 = select(select(!select(vec3<bool>(false, var_1.b, true), vec3<bool>(true, true, false), vec3<bool>(var_1.b, false, var_1.b)), !(!select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, true, var_1.b), vec3<bool>(var_1.b, true, var_1.b))), all(!select(vec4<bool>(var_1.b, var_1.b, true, var_1.b), vec4<bool>(var_1.b, var_1.b, false, var_1.b), var_1.b))), !vec3<bool>(any(vec4<bool>(false, var_1.b, false, true)) || var_1.b, true, true), arg_2 <= _wgslsmith_f_op_f32(floor(-1537f)));
    var_0 = u_input.a;
    return !(!vec4<bool>(all(!vec4<bool>(false, true, var_1.b, false)), any(!vec4<bool>(var_1.b, var_2.x, true, true)), false, !any(var_2)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_1(1u, arg_0.a.b, 1u, arg_0.b.d, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.d.e, arg_0.a.c, 77176u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.b.e, 0u), arg_0.c.xzw), vec3<bool>(true, true, true)), abs(vec3<u32>(31183u, 0u, 1u))) >> (_wgslsmith_sub_u32(arg_0.c.x, firstTrailingBit(countOneBits(arg_0.a.e))) % 32u));
    let var_1 = arg_0.a.e;
    var var_2 = true;
    var var_3 = arg_0.c;
    var var_4 = _wgslsmith_f_op_f32(abs(arg_0.b.d.x));
    return _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(2251u, arg_0.b.a, 0u), vec3<u32>(var_1, 45932u, var_0.c) ^ select(vec3<u32>(1u, var_1, var_1), vec3<u32>(arg_0.b.a, var_1, var_0.a), vec3<bool>(true, var_0.b, arg_0.d.b)))), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.a, 61664u), abs(vec2<u32>(82123u, 0u)) >> (var_3.yz % vec2<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(abs(~40049u), !(~108599u < func_3(Struct_2(Struct_1(52815u, arg_3.x, arg_0, vec4<f32>(-1525f, arg_1, arg_2.x, 453f), 17163u), Struct_1(arg_0, arg_3.x, 4294967295u, vec4<f32>(-904f, -1215f, -1793f, 463f), 73438u), vec4<u32>(58285u, 2546u, 75996u, 0u), Struct_1(arg_0, arg_3.x, 0u, vec4<f32>(arg_1, 114f, arg_2.x, 175f), arg_0)))), min(firstTrailingBit(arg_0) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 545u, 0u, arg_0), vec4<u32>(0u, arg_0, 4294967295u, arg_0)), ~countOneBits(42057u)), vec4<f32>(-563f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), -250f, true))), countOneBits(79626u)), Struct_1(arg_0, false, arg_0, _wgslsmith_div_vec4_f32(vec4<f32>(230f, arg_1, 317f, _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1324f, arg_1, arg_2.x, 345f) - vec4<f32>(1925f, arg_1, arg_2.x, arg_1)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(960f, -2083f, arg_1, -720f))), arg_3))), arg_0), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(_wgslsmith_clamp_u32(arg_0, 0u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(0u, 7773u)), _wgslsmith_mod_u32(arg_0, arg_0), arg_0)), ~vec4<u32>(min(arg_0, arg_0), arg_0, ~arg_0, ~1u)), Struct_1(~func_3(Struct_2(Struct_1(arg_0, true, arg_0, vec4<f32>(959f, 2019f, -159f, arg_2.x), arg_0), Struct_1(1u, false, arg_0, vec4<f32>(1050f, 368f, arg_1, 1817f), 4294967295u), vec4<u32>(1u, arg_0, 1u, arg_0), Struct_1(1u, arg_3.x, 1u, vec4<f32>(arg_1, -126f, -230f, 1782f), arg_0))), select(any(arg_3.yzx), false, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, arg_0) ^ ~vec3<u32>(arg_0, arg_0, arg_0), ~firstTrailingBit(vec3<u32>(6221u, arg_0, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, -1000f, -140f))))), ~(~1u ^ arg_0)));
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_f_op_f32(1258f - _wgslsmith_div_f32(246f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -361f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -1016f)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1164f + var_1) + -597f);
    var_3 = _wgslsmith_f_op_f32(sign(-1692f));
    return vec3<i32>(i32(-1i) * -2147483647i, abs(-_wgslsmith_mod_i32(5207i, _wgslsmith_sub_i32(2147483647i, u_input.c))), 1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.d.yww);
    let var_1 = ~(_wgslsmith_sub_u32(4294967295u, firstTrailingBit(0u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, 1u, 0u, arg_1.c)), ~vec4<u32>(66106u, 30833u, arg_1.e, arg_1.e)), vec4<u32>(firstLeadingBit(arg_1.e), 1u, func_3(Struct_2(Struct_1(4294967295u, arg_1.b, arg_1.a, arg_1.d, 4294967295u), arg_1, vec4<u32>(0u, arg_1.a, 37162u, 1u), arg_1)), ~arg_1.c)));
    let var_2 = _wgslsmith_mult_vec2_i32(u_input.b, ~arg_0.zx);
    let var_3 = func_1(min(var_2, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, 1095f))))), 396f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.d.x, var_0.x, 557f), arg_1.d) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.d - arg_1.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1062f, 674f, var_0.x, var_0.x))))));
    var var_4 = Struct_2(arg_1, Struct_1(max(_wgslsmith_clamp_u32(firstLeadingBit(arg_1.e), arg_1.a, var_1), countOneBits(~57635u)), true, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_vec4_f32(abs(arg_1.d)))), ~func_3(Struct_2(arg_1, Struct_1(44134u, arg_1.b, var_1, arg_1.d, arg_1.e), vec4<u32>(8979u, arg_1.a, arg_1.e, var_1), arg_1))), select(~vec4<u32>(15922u, 4294967295u, arg_1.a, arg_1.c), ~(~vec4<u32>(18260u, 0u, var_1, var_1)), all(var_3.yy)) << (_wgslsmith_div_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(0u, arg_1.c, arg_1.e, 24492u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.c, 26118u, var_1), min(vec4<u32>(4294967295u, var_1, 0u, 1u), vec4<u32>(0u, 4294967295u, 0u, 1u)))) % vec4<u32>(32u)), Struct_1(func_3(Struct_2(Struct_1(28531u, var_3.x, 12628u, vec4<f32>(arg_1.d.x, 1000f, arg_1.d.x, arg_1.d.x), var_1), arg_1, vec4<u32>(1u, 1u, 1u, 4499u), arg_1)), var_3.x != true, 0u, arg_1.d, _wgslsmith_clamp_u32(~(~0u), 1640u, ~arg_1.e)));
    return arg_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true));
    let var_1 = vec3<bool>(select(false, !(!var_0.x), false & !var_0.x) && true, any(select(func_1(~vec2<i32>(u_input.d, 1i), 1f, _wgslsmith_f_op_f32(max(-454f, 374f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, 805f, 474f, 266f) + vec4<f32>(-600f, -107f, 1823f, 154f))), !(!vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(var_0.x, true, true, true))), false);
    var var_2 = -1997f;
    var_2 = _wgslsmith_f_op_f32(-1233f + _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_sub_u32(66469u, 6557u), -1372f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(633f, -302f, -1124f)), !vec4<bool>(true, var_0.x, true, false)) ^ -(~vec3<i32>(24238i, -60767i, 1i)), Struct_1(_wgslsmith_sub_u32(~28137u, firstLeadingBit(0u)), true, ~0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(946f, 460f, -246f, 128f)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), ~vec2<u32>(35242u, 4294967295u))), -(vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.b.x) | vec4<i32>(u_input.a, u_input.a, 41058i, u_input.b.x)) & _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, u_input.d, u_input.c), -vec4<i32>(-59154i, u_input.a, -53521i, u_input.b.x)))));
    var_2 = -113f;
    let var_3 = -24416i;
    var_2 = 2708f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-578f))))), 1015f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -791f))), 1008f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

