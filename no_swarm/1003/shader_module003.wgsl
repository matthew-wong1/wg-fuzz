struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(8366u, 88175i, vec4<bool>(true, false, false, true)), Struct_1(49372u, 12241i, vec4<bool>(true, false, false, false)), Struct_1(6645u, 16327i, vec4<bool>(false, false, false, true)), Struct_1(4294967295u, 2147483647i, vec4<bool>(false, true, false, true)), Struct_1(4294967295u, 86003i, vec4<bool>(true, false, true, true)), Struct_1(36118u, 2147483647i, vec4<bool>(false, false, false, false)), Struct_1(49026u, -20875i, vec4<bool>(false, false, false, false)), Struct_1(4294967295u, 23677i, vec4<bool>(true, false, false, true)), Struct_1(36110u, -26113i, vec4<bool>(true, false, true, false)), Struct_1(1u, -4632i, vec4<bool>(false, true, false, false)), Struct_1(0u, -18605i, vec4<bool>(true, false, true, false)), Struct_1(34877u, 2147483647i, vec4<bool>(true, false, true, true)), Struct_1(75611u, 1i, vec4<bool>(false, true, false, false)), Struct_1(10338u, -1i, vec4<bool>(false, true, false, false)), Struct_1(1u, 0i, vec4<bool>(true, true, false, false)), Struct_1(1u, -33741i, vec4<bool>(true, false, false, true)), Struct_1(45220u, -31212i, vec4<bool>(true, true, false, false)), Struct_1(76099u, 0i, vec4<bool>(true, false, true, true)), Struct_1(0u, 2147483647i, vec4<bool>(true, false, true, true)), Struct_1(4294967295u, 1i, vec4<bool>(true, true, true, true)), Struct_1(78805u, 2147483647i, vec4<bool>(true, false, false, false)));

var<private> global3: array<i32, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = ~min(firstLeadingBit(abs(~vec3<i32>(-44229i, -42733i, u_input.a.x))), (_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, global3[_wgslsmith_index_u32(0u, 11u)]), vec3<i32>(1i, -1i, u_input.a.x)) | vec3<i32>(0i, global3[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.a.x)) & min(-vec3<i32>(-12229i, global3[_wgslsmith_index_u32(40024u, 11u)], global3[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<i32>(52783i, -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 11u)]) ^ vec3<i32>(-18780i, u_input.a.x, 44657i)));
    global0 = ~(~abs((68974u << (u_input.b % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, 6289u, u_input.e.x), vec4<u32>(7815u, u_input.e.x, u_input.c, u_input.c))));
    var var_1 = arg_0;
    var_1 = arg_0;
    global1 = 1u;
    return global3[_wgslsmith_index_u32(min(22960u, ~u_input.b << ((u_input.b & ~u_input.e.x) % 32u)), 11u)];
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1 - arg_1))), -234f)));
    global1 = ~23157u;
    return Struct_3(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, select(u_input.a, u_input.a, false)), _wgslsmith_mod_i32(0i, func_3(arg_1, true))), global3[_wgslsmith_index_u32(51787u, 11u)], global3[_wgslsmith_index_u32(u_input.e.x, 11u)], _wgslsmith_add_i32(u_input.a.x, (global3[_wgslsmith_index_u32(32931u, 11u)] ^ u_input.a.x) >> (~20935u % 32u))), select(any(vec3<bool>(true, true, true)), false, all(vec4<bool>(true, true, true, true))), ~abs(~(vec4<u32>(u_input.e.x, u_input.b, 48632u, u_input.b) << (vec4<u32>(0u, 1u, u_input.c, 4294967295u) % vec4<u32>(32u)))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = -(~(~min(0i, 2147483647i)));
    global3 = array<i32, 11>();
    global3 = array<i32, 11>();
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1189f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f * -1050f) * _wgslsmith_f_op_f32(select(-449f, 418f, false)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f * -997f) + _wgslsmith_f_op_f32(f32(-1f) * -353f))), _wgslsmith_f_op_f32(f32(-1f) * -148f), true)));
    var_1 = Struct_3(var_1.a, var_1.b, ~vec4<u32>(u_input.d, _wgslsmith_mod_u32(var_1.c.x, var_1.c.x) | _wgslsmith_mult_u32(92108u, arg_0), abs(max(93158u, 4294967295u)), select(~var_1.c.x, 0u, var_1.b)));
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> u32 {
    var var_0 = select(!(!(!select(vec4<bool>(true, arg_0.b, true, true), vec4<bool>(false, false, false, arg_0.b), arg_0.b))), select(!select(vec4<bool>(arg_0.b, false, true, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, false, true), select(vec4<bool>(false, true, arg_0.b, true), vec4<bool>(false, false, false, false), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))), vec4<bool>(arg_0.b, true, false, all(select(vec3<bool>(arg_0.b, true, arg_0.b), vec3<bool>(false, arg_0.b, false), vec3<bool>(true, true, false)))), select(!vec4<bool>(arg_0.b, true, arg_0.b, arg_0.b), !vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), false == arg_0.b)), vec4<bool>(false, true, !arg_0.b, true));
    let var_1 = 18068u;
    let var_2 = Struct_3(select(~(~(-vec4<i32>(-1i, -1i, global3[_wgslsmith_index_u32(1u, 11u)], arg_0.a.x))), ~abs(arg_1), !vec4<bool>(!var_0.x, false, !arg_0.b, !var_0.x)), any(!select(var_0.zy, !var_0.xx, vec2<bool>(false, var_0.x))), ~arg_0.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-106f, -314f, _wgslsmith_f_op_f32(-542f + 768f)) - vec3<f32>(_wgslsmith_f_op_f32(-940f - -606f), -692f, _wgslsmith_f_op_f32(step(1289f, 1027f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1165f, -1480f, -392f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1694f, 464f, -726f) - vec3<f32>(522f, 375f, 1890f)), vec3<bool>(true, false, var_2.b)))))));
    var var_4 = any(select(select(vec2<bool>(true, var_2.b), vec2<bool>(arg_0.b, 1i != u_input.a.x), select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, var_0.x), var_0.zw, true), var_0.wy)), vec2<bool>(true, all(!var_0.wxw)), true));
    return 3758u;
}

fn func_5(arg_0: vec3<u32>) -> vec4<bool> {
    global1 = arg_0.x;
    var var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 1u), ~vec3<u32>(arg_0.x, u_input.d, 18011u)), min(_wgslsmith_sub_i32(-2147483647i, select(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(u_input.e.x, 11u)], true)), ~global3[_wgslsmith_index_u32(u_input.d, 11u)]), vec4<bool>(true, min(global3[_wgslsmith_index_u32(arg_0.x, 11u)], 0i) >= u_input.a.x, !all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false)) && true)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(u_input.b, 11u)], -19493i, -1i), vec4<i32>(30207i, 82098i, u_input.a.x, -84634i) | vec4<i32>(global3[_wgslsmith_index_u32(arg_0.x, 11u)], u_input.a.x, u_input.a.x, -42699i)) | _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, 21926i, -1i, global3[_wgslsmith_index_u32(8832u, 11u)])), -select(vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-67943i, -2147483647i, -1i, -17070i), true)));
    global0 = 1u;
    global3 = array<i32, 11>();
    var var_1 = -vec4<i32>(var_0.b.x, i32(-1i) * -18747i, reverseBits(~min(global3[_wgslsmith_index_u32(1u, 11u)], u_input.a.x)), select(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 26033i, u_input.a.x), func_1(u_input.c, vec3<i32>(32351i, u_input.a.x, 0i)).zwy), ~_wgslsmith_add_i32(var_0.b.x, var_0.a.b), !var_0.a.c.x & var_0.a.c.x));
    return select(select(!select(!vec4<bool>(var_0.a.c.x, true, true, true), !var_0.a.c, vec4<bool>(var_0.a.c.x, false, true, var_0.a.c.x)), !var_0.a.c, !(!var_0.a.c)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(457f + -646f)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(414f * -1077f))), any(vec3<bool>(false, all(vec2<bool>(var_0.a.c.x, var_0.a.c.x)), !var_0.a.c.x)), true, true), !var_0.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(vec3<u32>(func_4(Struct_3(vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(1u, 11u)], 2147483647i, global3[_wgslsmith_index_u32(u_input.b, 11u)]), false, vec4<u32>(48207u, u_input.b, 60543u, u_input.e.x)), func_1(u_input.b, vec3<i32>(global3[_wgslsmith_index_u32(u_input.e.x, 11u)], u_input.a.x, 2147483647i))), ~(~u_input.c), _wgslsmith_sub_u32(1u, 1u))), select(vec4<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), true, true, (u_input.b >= 4294967295u) || true), vec4<bool>(true, true, func_5(select(vec3<u32>(u_input.c, 30008u, 50372u), vec3<u32>(29878u, 24428u, u_input.c), vec3<bool>(false, false, true))).x, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), !vec4<bool>(any(vec2<bool>(true, false)), false, true, true)), select(vec4<bool>(true, 0i > global3[_wgslsmith_index_u32(u_input.c | 1u, 11u)], true, true & any(vec4<bool>(true, true, true, true))), func_5(vec3<u32>(~u_input.c, 16491u, _wgslsmith_div_u32(u_input.b, 1u))), vec4<bool>(true, select(true, true, all(vec3<bool>(true, false, false))), !any(vec2<bool>(true, true)), !any(vec4<bool>(true, false, false, false)))));
    let var_1 = vec2<i32>(global3[_wgslsmith_index_u32(0u, 11u)], -_wgslsmith_dot_vec4_i32(-vec4<i32>(27983i, 45669i, -2147483647i, global3[_wgslsmith_index_u32(32164u, 11u)]), vec4<i32>(-11939i, 28774i, -16526i, -27633i) & vec4<i32>(-1i, global3[_wgslsmith_index_u32(42502u, 11u)], u_input.a.x, 12806i)) | -firstTrailingBit(-global3[_wgslsmith_index_u32(45946u, 11u)]));
    var var_2 = 202f;
    var var_3 = Struct_3(func_1(4294967295u, vec3<i32>(abs(firstLeadingBit(u_input.a.x)), ~u_input.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(22943i, -35813i, 0i), vec3<i32>(24481i, 1i, global3[_wgslsmith_index_u32(66711u, 11u)])))), var_0.x, abs(vec4<u32>(_wgslsmith_mult_u32(0u ^ u_input.e.x, select(u_input.c, u_input.e.x, false)), 0u, ~u_input.b, 58544u)));
    global1 = var_3.c.x;
    let var_4 = Struct_2(global2[_wgslsmith_index_u32(u_input.e.x | 35097u, 21u)], var_3.a);
    global2 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1491f)), -1052f, _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(f32(-1f) * -1677f)), _wgslsmith_div_vec4_f32(vec4<f32>(1810f, 2289f, -1824f, 1220f), _wgslsmith_div_vec4_f32(vec4<f32>(-370f, 1557f, 343f, -862f), vec4<f32>(875f, -1475f, -205f, 2843f))))), vec2<u32>(var_4.a.a, 4294967295u));
}

