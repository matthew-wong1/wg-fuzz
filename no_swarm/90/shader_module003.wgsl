struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<f32, 21>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = reverseBits(_wgslsmith_sub_i32(select(_wgslsmith_mod_i32(u_input.a.x, 0i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), u_input.a.x), u_input.a.x >= -u_input.a.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-58941i, u_input.a.x)), u_input.a.zx), u_input.a.x)));
    var_0 = -16354i;
    var var_1 = Struct_4(Struct_3(6442i, ~2147483647i < u_input.a.x, Struct_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f - -104f)))), Struct_3(~_wgslsmith_dot_vec2_i32(u_input.a.zy, firstTrailingBit(u_input.a.xz)), !(1i > u_input.a.x), Struct_2(~vec4<u32>(2113u, u_input.b.x, 24237u, 23363u) ^ ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(68162u, 21u)])))), (select(u_input.b.x | 1u, u_input.b.x, true) > 3527u) && global0.x, vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), -398f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 64239u, 0u, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), 21u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1420u, 21u)])))), ~u_input.b);
    let var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, max(var_1.b.c.a.x, firstTrailingBit(58839u))), _wgslsmith_mult_u32(_wgslsmith_div_u32(4000u << (u_input.b.x % 32u), u_input.b.x & var_1.b.c.a.x), ~1u));
    var_1 = Struct_4(Struct_3(0i, global0.x, var_1.a.c), var_1.b, any(vec3<bool>(global1[_wgslsmith_index_u32(var_1.e.x, 21u)] >= _wgslsmith_f_op_f32(floor(255f)), var_1.c, true)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-899f)))), var_1.a.c.b, global1[_wgslsmith_index_u32(~(~reverseBits(var_1.b.c.a.x)), 21u)]), vec4<u32>(max(var_1.b.c.a.x, var_1.e.x & var_2), _wgslsmith_mult_u32(countOneBits(2997u), var_1.b.c.a.x), 4294967295u, ~_wgslsmith_add_u32(84346u, 38885u)) | vec4<u32>(4294967295u >> (~var_1.e.x % 32u), ~var_2, ~(~133808u), 4294967295u));
    return any(vec4<bool>(select(var_1.c, false == global0.x, (var_1.a.b && true) & (var_1.c | true)), _wgslsmith_f_op_f32(floor(var_1.d.x)) <= _wgslsmith_f_op_f32(ceil(var_1.b.c.b)), all(select(!global0.xwx, select(vec3<bool>(true, false, false), global0.wwx, vec3<bool>(true, var_1.c, false)), 26775u < var_1.e.x)), true));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = true;
    return Struct_3(_wgslsmith_div_i32(u_input.a.x, reverseBits(1i)) | u_input.a.x, !func_3(), Struct_2(u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-179f - -201f), global1[_wgslsmith_index_u32(12333u, 21u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global1 = array<f32, 21>();
    let var_0 = arg_0.a;
    global0 = !vec4<bool>(false, -reverseBits(arg_1) <= (_wgslsmith_div_i32(u_input.a.x, arg_1) | var_0), _wgslsmith_mod_u32(~arg_0.c.a.x, max(70963u, u_input.b.x)) < _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(8559u, 4495u)), ~u_input.b.yy), true);
    global0 = vec4<bool>(arg_0.b, true, false, select(var_0 == -2147483647i, true, !global0.x));
    let var_1 = func_2(global0.xw).c;
    return Struct_3(i32(-1i) * -63934i, all(global0.xxx), Struct_2(vec4<u32>(firstLeadingBit(8741u), 0u, var_1.a.x, arg_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * -121f) + _wgslsmith_div_f32(-722f, _wgslsmith_div_f32(850f, arg_0.c.b)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = abs(~(_wgslsmith_mod_u32(_wgslsmith_div_u32(60549u, u_input.b.x), 1u | u_input.b.x) | (firstLeadingBit(0u) ^ u_input.b.x)));
    global1 = array<f32, 21>();
    let var_1 = vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~8871u, _wgslsmith_div_u32(~var_0, var_0)), 21u)], arg_0.c.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.b.x, 21u)] + 1868f)), _wgslsmith_f_op_f32(select(-1316f, -311f, any(vec2<bool>(false, arg_0.b))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b, -361f, global1[_wgslsmith_index_u32(arg_0.c.a.x, 21u)], -157f) - _wgslsmith_div_vec4_f32(vec4<f32>(472f, -259f, 448f, 139f), vec4<f32>(arg_0.c.b, arg_0.c.b, -2550f, -804f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(100f, 693f, 1604f, global1[_wgslsmith_index_u32(var_0, 21u)]), vec4<f32>(394f, -170f, -1181f, global1[_wgslsmith_index_u32(arg_0.c.a.x, 21u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1328f, global1[_wgslsmith_index_u32(var_0, 21u)], -391f, 638f) + vec4<f32>(global1[_wgslsmith_index_u32(var_0, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], -1105f, 655f)))))));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(vec2<bool>(global0.x, arg_0.d.x)), u_input.a.x | -946i), vec4<bool>(false, global0.x, true, global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.c, 21u)], 1329f, 340f, -2250f)))) + vec4<f32>(global1[_wgslsmith_index_u32(1u, 21u)], 588f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(5054u, 38930u)), 21u)], -518f)))));
    var var_1 = 50419i;
    let var_2 = Struct_5(select(vec3<u32>(~86340u, ~arg_0.c, u_input.b.x), u_input.b.xzz << (vec3<u32>(u_input.b.x, 36159u, arg_0.c) % vec3<u32>(32u)), select(vec3<bool>(global0.x, false, arg_0.d.x), vec3<bool>(global0.x, false, true), false)) & reverseBits(vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), arg_0.a.ww), arg_0.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 1049f, global1[_wgslsmith_index_u32(118548u, 21u)]), vec3<f32>(var_0.x, 377f, 1102f), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zxx)))), func_2(global0.wx).c, Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-5843i, -1i), vec2<i32>(-63573i, 12191i)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(48142u, 62681u), vec2<u32>(103615u, u_input.b.x)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(2147483647i, u_input.a.x), -u_input.a.x)), func_4(func_4(Struct_3(2147483647i, global0.x, Struct_2(vec4<u32>(arg_0.c, 37707u, 0u, u_input.b.x), 1623f)), -18778i), -arg_0.b.x).c.a.x == u_input.b.x, func_2(!vec2<bool>(false, global0.x)).c));
    global1 = array<f32, 21>();
    let var_3 = !(!select(!(!vec4<bool>(var_2.d.b, arg_0.d.x, false, global0.x)), !(!vec4<bool>(arg_0.d.x, true, var_2.d.b, false)), global0.x));
    return var_2.d.c;
}

fn func_6(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = u_input.b.x ^ (~u_input.b.x ^ ~(~arg_2.a.x));
    global1 = array<f32, 21>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1142f, 621f, global1[_wgslsmith_index_u32(47412u, 21u)]) * vec3<f32>(global1[_wgslsmith_index_u32(arg_2.a.x, 21u)], global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(arg_2.a.x, 21u)])))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2312f, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)] * 846f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_5(func_2(!global0.ww), select(select(vec4<bool>(global0.x, false, false, true), vec4<bool>(arg_0, global0.x, global0.x, false), vec4<bool>(arg_0, false, global0.x, true)), vec4<bool>(true, false, global0.x, arg_0), global0.x))).zxx));
    let var_2 = func_2(!vec2<bool>(true, any(select(vec4<bool>(arg_0, true, false, global0.x), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(arg_0, true, global0.x, arg_0)))));
    let var_3 = Struct_1(firstLeadingBit(var_2.c.a) ^ func_4(var_2, _wgslsmith_add_i32(countOneBits(u_input.a.x), func_4(var_2, arg_1.x).a)).c.a, vec2<i32>(-4639i | (0i & u_input.a.x), var_2.a) & arg_1, countOneBits(~reverseBits(~arg_3)), vec2<bool>(false, !(!arg_0 && true)));
    return all(vec3<bool>(arg_0, true, func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!(!vec4<bool>(global0.x, true, true, global0.x))), select(!vec4<bool>(all(vec4<bool>(false, global0.x, global0.x, false)), global0.x, false, true), vec4<bool>(func_6(global0.x, abs(u_input.a.zy), func_1(Struct_1(vec4<u32>(u_input.b.x, 0u, 43374u, u_input.b.x), vec2<i32>(u_input.a.x, -14135i), 4294967295u, global0.zw)), _wgslsmith_sub_u32(1u, u_input.b.x)), global1[_wgslsmith_index_u32(select(2695u, 13390u, true), 21u)] < _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(15173u, 21u)])), !(!global0.x), !any(vec3<bool>(true, global0.x, false))), vec4<bool>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) <= _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 1i, 917i)), any(!vec4<bool>(false, global0.x, global0.x, true)), true, true)), !vec4<bool>(_wgslsmith_f_op_f32(select(1313f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true)) != _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 21u)] + global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), global0.x, any(vec3<bool>(false, true, false)), any(global0.wyw)));
    let var_0 = u_input.a.xy;
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_3(u_input.a.x, true, Struct_2(vec4<u32>(u_input.b.x, var_1, 46914u, var_1), -1143f)), 20349i).c.b)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(19224u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1082f))), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_1, 21u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1793f)))) - global1[_wgslsmith_index_u32(~u_input.b.x, 21u)]));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_5(Struct_3(u_input.a.x, global0.x, Struct_2(vec4<u32>(1u, 4294967295u, u_input.b.x, 23752u), global1[_wgslsmith_index_u32(u_input.b.x, 21u)])), vec4<bool>(true, false, false, global0.x))).yx + _wgslsmith_f_op_vec2_f32(vec2<f32>(443f, 1000f) + vec2<f32>(var_2, var_2))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-943f, global1[_wgslsmith_index_u32(1u, 21u)]) + vec2<f32>(var_2, global1[_wgslsmith_index_u32(33821u, 21u)])) * _wgslsmith_f_op_vec4_f32(func_5(Struct_3(-15939i, false, Struct_2(u_input.b, 320f)), vec4<bool>(global0.x, global0.x, false, global0.x))).xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 893f) - vec2<f32>(700f, global1[_wgslsmith_index_u32(var_1, 21u)])))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1592f, global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec2<f32>(-1639f, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), false)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1054f, 600f), vec2<f32>(var_2, global1[_wgslsmith_index_u32(var_1, 21u)]))))))));
    global1 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1098f - -1184f), _wgslsmith_f_op_f32(f32(-1f) * -790f)), var_3, vec2<f32>(func_2(!select(global0.ww, vec2<bool>(true, false), true)).c.b, -391f), u_input.b, -vec4<i32>(-1i, ~var_0.x, u_input.a.x, i32(-1i) * -55247i) | _wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(1i, var_0.x, u_input.a.x, var_0.x)), vec4<i32>(2147483647i | var_0.x, reverseBits(25471i), -var_0.x, ~var_0.x)));
}

