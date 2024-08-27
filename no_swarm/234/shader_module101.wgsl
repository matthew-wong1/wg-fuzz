struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(987f, 1043f), vec2<f32>(-1932f, 184f), vec2<f32>(-125f, -1134f), vec2<f32>(1002f, -381f), vec2<f32>(-727f, -592f), vec2<f32>(1000f, -1069f), vec2<f32>(294f, -1165f), vec2<f32>(557f, 102f), vec2<f32>(-327f, 2517f), vec2<f32>(1525f, 1331f), vec2<f32>(791f, 447f), vec2<f32>(1648f, 1892f), vec2<f32>(1342f, 195f), vec2<f32>(-512f, 580f), vec2<f32>(559f, -2150f), vec2<f32>(487f, 1264f), vec2<f32>(-550f, -1224f), vec2<f32>(-433f, -2361f), vec2<f32>(460f, -694f), vec2<f32>(111f, -981f), vec2<f32>(-142f, -296f), vec2<f32>(176f, -225f), vec2<f32>(1103f, 833f), vec2<f32>(608f, 1000f), vec2<f32>(1254f, -1000f), vec2<f32>(285f, -467f), vec2<f32>(348f, 685f), vec2<f32>(391f, -1048f), vec2<f32>(877f, -758f), vec2<f32>(258f, 1000f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> f32 {
    global2 = array<vec2<f32>, 30>();
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(abs(u_input.d), abs(u_input.d)), ~45067u);
    let var_1 = false;
    let var_2 = !vec3<bool>(any(!select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)], false), vec2<bool>(var_1, false))), var_1, true);
    var var_3 = vec2<u32>(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec3_u32(min(select(vec3<u32>(var_0.x, var_0.x, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.d), var_2), ~vec3<u32>(u_input.d, u_input.d, 0u)), ~max(vec3<u32>(var_0.x, u_input.d, u_input.d), vec3<u32>(0u, var_0.x, 160224u)))), 61948u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f + -413f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(464f, -760f)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(17426u, u_input.d, 1u, u_input.d), vec4<u32>(0u, 1u, 28477u, 1u))), ~(~vec2<u32>(u_input.d, u_input.d)))), select(select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 1u)], true), !vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(12392u, 1u)], false), !global1[_wgslsmith_index_u32(u_input.d, 1u)]), !vec4<bool>(true, true, global1[_wgslsmith_index_u32(17465u, 1u)], global1[_wgslsmith_index_u32(u_input.d, 1u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(73137u, 1u)], true, false, global1[_wgslsmith_index_u32(1u, 1u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], true, global1[_wgslsmith_index_u32(u_input.d, 1u)], false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], false, true, global1[_wgslsmith_index_u32(u_input.d, 1u)]), true), all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(102979u, 1u)], global1[_wgslsmith_index_u32(u_input.d, 1u)])))), !select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(u_input.d, 1u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(43083u, 1u)], false), false), select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], true), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)])), global1[_wgslsmith_index_u32(~u_input.d, 1u)]), !(_wgslsmith_f_op_f32(-1000f * -398f) >= _wgslsmith_f_op_f32(step(-240f, 1306f)))), ~(~((vec2<u32>(u_input.d, 47206u) ^ vec2<u32>(u_input.d, 26310u)) << (abs(vec2<u32>(u_input.d, 52196u)) % vec2<u32>(32u)))), Struct_1(global1[_wgslsmith_index_u32(~0u, 1u)] | false, firstTrailingBit(u_input.d) << (u_input.d % 32u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-286f, 1000f), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 8u)])))), select(vec4<bool>(true, select(global1[_wgslsmith_index_u32(45164u, 1u)], global1[_wgslsmith_index_u32(u_input.d, 1u)], false), false, !global1[_wgslsmith_index_u32(u_input.d, 1u)]), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(29273u, 1u)], true), global1[_wgslsmith_index_u32(13555u, 1u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 1u)], false, false), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 1u)], false, global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 1u)]), global1[_wgslsmith_index_u32(1u, 1u)])), !global1[_wgslsmith_index_u32(~71271u, 1u)]), abs(_wgslsmith_clamp_u32(u_input.d, 1u, u_input.d) ^ _wgslsmith_div_u32(1u, 66729u))));
    let var_1 = true & (var_0.d.a & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.c.x + var_0.d.c.x)) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1316f, var_0.d.c.x))));
    let var_2 = any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 1u)], true));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0.d.c.x) - -464f);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3 - var_3))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1150f, var_0.d.c.x, -195f, -883f) + vec4<f32>(var_0.d.c.x, -2981f, var_3, -2823f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), 661f, _wgslsmith_f_op_f32(-1719f * var_3), 252f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(428f, var_3)) * _wgslsmith_f_op_f32(trunc(var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.c.x), _wgslsmith_f_op_f32(abs(742f))), 282f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 579f)), var_1)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.c.x, var_3, -565f, var_3), vec4<f32>(var_0.d.c.x, var_3, -562f, -1271f)), vec4<f32>(2045f, var_0.d.c.x, -310f, 474f), var_0.d.d)))))));
}

fn func_2() -> vec4<f32> {
    global0 = array<vec2<f32>, 8>();
    var var_0 = ~(~u_input.d);
    global1 = array<bool, 1>();
    let var_1 = max(u_input.b.yy, vec2<i32>(~(-38049i << (_wgslsmith_mult_u32(u_input.d, u_input.d) % 32u)), u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, 849f, 915f, -838f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1528f, 1413f, 621f, 520f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1782f, -1596f, 1185f, -326f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, 428f, 1219f, 1396f) - vec4<f32>(-1000f, -409f, 1034f, -187f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-260f, 357f, 574f, -445f)))))));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 1025f) - _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(917f - var_2.x), _wgslsmith_div_f32(1000f, var_2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) * var_2.x), var_2.x, _wgslsmith_f_op_f32(trunc(908f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-136f, -771f) * _wgslsmith_f_op_f32(f32(-1f) * -1053f)), 504f, _wgslsmith_f_op_f32(-439f - _wgslsmith_f_op_f32(func_1()))));
    global2 = array<vec2<f32>, 30>();
    let var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    var var_2 = Struct_2(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(53879u, u_input.d, u_input.d) | vec3<u32>(4294967295u, u_input.d, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.d), reverseBits(vec2<u32>(u_input.d, 0u)))), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, 10030u), vec3<u32>(1u, 0u, u_input.d)), vec3<u32>(30780u, 0u, u_input.d)), 1u)], all(select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(86352u, 1u)]), global1[_wgslsmith_index_u32(u_input.d, 1u)])), true), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(56413u, 1u)], true, global1[_wgslsmith_index_u32(31541u, 1u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)], global1[_wgslsmith_index_u32(4294967295u, 1u)], false, true), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(49346u, 1u)]))), vec4<bool>(var_0.x >= 929f, true, u_input.d <= u_input.d, global1[_wgslsmith_index_u32(19221u, 1u)]), false), all(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)], false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(64288u, 1u)]), select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 1u)]), global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)], false)))), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d & u_input.d, _wgslsmith_sub_u32(u_input.d, u_input.d)), ~(~vec2<u32>(0u, u_input.d))), ~select(vec2<u32>(0u, u_input.d), vec2<u32>(4294967295u, 1924u), global1[_wgslsmith_index_u32(u_input.d, 1u)]), true), Struct_1(select(global1[_wgslsmith_index_u32(58391u, 1u)], true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 25030u, 17985u, u_input.d) | vec4<u32>(76073u, 1u, u_input.d, 52373u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, 1u), vec4<u32>(3300u, u_input.d, 45953u, u_input.d))), 1u)]), firstLeadingBit(~16108u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-969f, var_1.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.x))))), vec4<bool>(true, true, !global1[_wgslsmith_index_u32(u_input.d, 1u)], true), firstLeadingBit(u_input.d)));
    var_2 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~abs(var_2.c), vec2<u32>(~u_input.d, select(9338u, 1u, global1[_wgslsmith_index_u32(4294967295u, 1u)]))), reverseBits(vec2<u32>(52646u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(0u, 4294967295u, var_2.d.b))))), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 1u)] | all(vec4<bool>(true, false, true, var_2.d.d.x)), var_2.b.x, true, false), ~(~var_2.c), var_2.d);
    global0 = array<vec2<f32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1, -_wgslsmith_add_i32(reverseBits(u_input.c.x), u_input.a.x), _wgslsmith_dot_vec2_i32(min(vec2<i32>(firstTrailingBit(-1i), u_input.b.x), ~vec2<i32>(-13434i, u_input.a.x)), firstTrailingBit(vec2<i32>(-1i, 0i))), min(38886u, ~(~1u) & ~_wgslsmith_sub_u32(var_2.c.x, 27970u)));
}

