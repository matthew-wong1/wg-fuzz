struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
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

var<private> global0: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 69985u, 49558u), vec3<u32>(15925u, 27696u, 27134u), vec3<u32>(18319u, 15411u, 0u), vec3<u32>(58124u, 0u, 110514u), vec3<u32>(4906u, 1u, 5487u), vec3<u32>(0u, 50637u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 3850u, 10016u), vec3<u32>(0u, 10667u, 37704u), vec3<u32>(3912u, 2681u, 0u), vec3<u32>(140145u, 1365u, 1u), vec3<u32>(0u, 4294967295u, 6793u), vec3<u32>(18547u, 35027u, 4294967295u), vec3<u32>(14306u, 4294967295u, 12125u), vec3<u32>(4294967295u, 4294967295u, 10080u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(52615u, 76927u, 82682u));

var<private> global1: u32 = 1u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    global0 = array<vec3<u32>, 17>();
    var var_1 = false;
    let var_2 = ~_wgslsmith_sub_u32(10550u, 0u);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, -1031f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * arg_3.b))))));
    return _wgslsmith_f_op_f32(arg_3.b - var_0.b);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, 1153f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1696f, -917f), _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_0.x, false), true, 1085f, Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), 366f, vec4<bool>(arg_0.x, arg_0.x, false, false), u_input.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -795f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-205f, 776f, 382f, -476f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -310f, -2042f, -580f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1019f, 144f, 145f)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(min(498f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(953f, 627f), _wgslsmith_f_op_f32(max(646f, 780f)), arg_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f * 2130f) + 846f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(251f, 217f)))))));
    global0 = array<vec3<u32>, 17>();
    var var_1 = Struct_1(!(!vec4<bool>(arg_0.x, all(arg_0), arg_0.x, any(arg_0))), _wgslsmith_f_op_f32(func_3(arg_0, all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), Struct_1(!(!vec4<bool>(true, false, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(func_3(!arg_0, arg_0.x, 818f, Struct_1(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), 558f, vec4<bool>(false, arg_0.x, arg_0.x, false), u_input.c))), vec4<bool>(arg_0.x == arg_0.x, arg_0.x || arg_0.x, all(vec4<bool>(false, arg_0.x, true, arg_0.x)), false), (vec4<i32>(-25237i, u_input.a.x, 26969i, u_input.a.x) | u_input.c) >> (max(vec4<u32>(0u, 1988u, 65223u, 37345u), vec4<u32>(48549u, 4294967295u, 1u, 1u)) % vec4<u32>(32u))))), select(select(vec4<bool>(true, true, !arg_0.x, true), !select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), all(vec4<bool>(arg_0.x, false, false, false))), select(vec4<bool>(arg_0.x, arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), false), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, true), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), true), any(vec3<bool>(arg_0.x, true, arg_0.x)))), select(~0u, 78599u, true) > ~0u), abs(u_input.c) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 17917u, 0u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)));
    let var_2 = Struct_1(var_1.c, 1617f, select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(select(vec2<bool>(arg_0.x, true), var_1.a.xy, vec2<bool>(arg_0.x, arg_0.x))), true, true), vec4<bool>(select(true, false, false), arg_0.x, true, all(!var_1.c.zx))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x & var_1.d.x, ~u_input.a.x, var_1.d.x, countOneBits(17749i)) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), max(~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(_wgslsmith_div_i32(0i, 2147483647i), u_input.b.x, ~(-26245i), _wgslsmith_clamp_i32(var_1.d.x, u_input.b.x, 1i)))));
    global1 = ~1867u;
    return arg_0.x;
}

fn func_1() -> i32 {
    var var_0 = Struct_1(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec2<bool>(false, false)), true, func_2(vec2<bool>(false, false)), true), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1362f * _wgslsmith_f_op_f32(384f - 1046f)))), vec4<bool>(true, true, all(vec3<bool>(true, any(vec4<bool>(false, false, false, true)), all(vec3<bool>(true, false, true)))), select(select(true, false, false), true, true) || true), -u_input.c);
    global0 = array<vec3<u32>, 17>();
    var_0 = Struct_1(var_0.a, var_0.b, var_0.a, _wgslsmith_clamp_vec4_i32(-var_0.d, min(~u_input.c, -var_0.d), var_0.d) & u_input.c);
    global1 = ~(~abs(~(~1u)));
    global0 = array<vec3<u32>, 17>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(func_1() | 1i, 1i, u_input.b.x), vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.c.x), vec2<i32>(-17777i, u_input.a.x)) << (_wgslsmith_div_u32(0u, 4975u) % 32u), ~_wgslsmith_add_i32(8497i, -1i)));
    global1 = (~abs(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(11461u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])) & 39744u) ^ 0u;
    let var_1 = Struct_1(!(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, true)), all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(893f, _wgslsmith_div_f32(1000f, 694f), any(vec4<bool>(true, false, true, false)))) + 113f)), vec4<bool>(any(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(false, false, true))), true, !func_2(vec2<bool>(true, true)) || true, false), ~(-select(-vec4<i32>(-2147483647i, 2147483647i, 0i, 17631i), -vec4<i32>(79567i, u_input.a.x, -1i, u_input.c.x), false)));
    let var_2 = _wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, 1u) >> (_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(18393u, 55285u)), vec2<u32>(1u, 1u)) % vec2<u32>(32u))), select(select(select(vec2<u32>(55791u, 99105u), vec2<u32>(4294967295u, 0u), var_1.a.xw), vec2<u32>(1u, 1u), var_1.c.x) & vec2<u32>(countOneBits(0u), ~29227u), abs(min(reverseBits(vec2<u32>(21893u, 1u)), ~vec2<u32>(1u, 44887u))), vec2<bool>(!any(var_1.a), (-327f <= var_1.b) || true)));
    var var_3 = Struct_1(select(select(select(var_1.c, vec4<bool>(var_1.c.x, var_1.a.x, false, true), var_1.c), vec4<bool>(false, true, var_1.a.x, 141f >= var_1.b), all(vec3<bool>(var_1.c.x, var_1.c.x, var_1.a.x))), vec4<bool>(any(vec4<bool>(false, false, var_1.a.x, false)), true, u_input.b.x >= 1i, var_1.c.x), vec4<bool>(func_2(var_1.c.yx), true, false, !var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(func_3(var_1.a.zz, true, var_1.b, Struct_1(var_1.c, -1167f, vec4<bool>(var_1.a.x, var_1.c.x, var_1.a.x, false), u_input.c))))) + _wgslsmith_f_op_f32(trunc(1f)))), select(!var_1.a, !vec4<bool>(any(var_1.c.yz), any(vec4<bool>(false, true, var_1.c.x, var_1.a.x)), !var_1.a.x, var_1.c.x), var_1.c.x == true), abs(_wgslsmith_sub_vec4_i32(u_input.c << (vec4<u32>(4294967295u, var_2.x, 14707u, var_2.x) % vec4<u32>(32u)), vec4<i32>(13958i, var_0.x, var_0.x, u_input.c.x)) << (max(~vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), ~vec4<u32>(15231u, 0u, 1u, var_2.x)) % vec4<u32>(32u))));
    global1 = _wgslsmith_mod_u32(~(var_2.x ^ var_2.x), _wgslsmith_mult_u32(var_2.x, 1u)) ^ var_2.x;
    let var_4 = all(select(!var_1.a, vec4<bool>(false, !all(var_1.c), !any(vec2<bool>(true, false)), var_1.a.x), select(select(!var_3.a, vec4<bool>(false, var_3.a.x, var_3.a.x, true), false), !(!var_3.a), all(var_3.a.wyy))));
    global1 = abs(var_2.x & (abs(var_2.x) | ~1u)) | _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_2.x, var_2.x, 4294967295u), ~abs(vec4<u32>(1u, var_2.x, 46544u, 7566u))), select(firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 68252u, 55458u, 27068u))), vec4<u32>(5008u, var_2.x, 1u, var_2.x), any(var_3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(26147u);
}

