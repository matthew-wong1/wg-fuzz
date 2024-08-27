struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(0u, 17172u, 3827u), vec3<u32>(0u, 23074u, 134329u), vec3<u32>(1u, 9583u, 1u), vec3<u32>(60084u, 4294967295u, 0u), vec3<u32>(57743u, 1u, 3389u), vec3<u32>(0u, 38326u, 34966u), vec3<u32>(54206u, 75951u, 51793u), vec3<u32>(44041u, 1u, 74792u), vec3<u32>(4294967295u, 64629u, 27582u), vec3<u32>(4294967295u, 0u, 4294967295u));

var<private> global2: array<i32, 2> = array<i32, 2>(31358i, 990i);

var<private> global3: Struct_4;

var<private> global4: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(1000f, vec3<f32>(-1000f, 1257f, -540f), Struct_4(false, Struct_3(vec2<u32>(4294967295u, 1u), vec2<i32>(2147483647i, 0i)))), Struct_5(439f, vec3<f32>(778f, 140f, 1828f), Struct_4(true, Struct_3(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 1i)))), Struct_5(204f, vec3<f32>(600f, 565f, 1203f), Struct_4(false, Struct_3(vec2<u32>(1u, 54036u), vec2<i32>(1i, 2147483647i)))), Struct_5(-1000f, vec3<f32>(808f, 889f, -1000f), Struct_4(true, Struct_3(vec2<u32>(52997u, 0u), vec2<i32>(-20801i, 1i)))), Struct_5(923f, vec3<f32>(-1282f, -2258f, -282f), Struct_4(false, Struct_3(vec2<u32>(4294967295u, 20017u), vec2<i32>(0i, -52448i)))), Struct_5(-1905f, vec3<f32>(-203f, 878f, 117f), Struct_4(false, Struct_3(vec2<u32>(38972u, 1u), vec2<i32>(2147483647i, -1i)))), Struct_5(-121f, vec3<f32>(2089f, 1915f, -893f), Struct_4(true, Struct_3(vec2<u32>(4294967295u, 3113u), vec2<i32>(0i, 0i)))), Struct_5(1167f, vec3<f32>(-349f, -195f, -1058f), Struct_4(true, Struct_3(vec2<u32>(10374u, 27881u), vec2<i32>(26147i, -1i)))), Struct_5(342f, vec3<f32>(467f, 715f, -589f), Struct_4(false, Struct_3(vec2<u32>(79044u, 40186u), vec2<i32>(37763i, 2147483647i)))), Struct_5(1686f, vec3<f32>(-180f, -1000f, 1319f), Struct_4(true, Struct_3(vec2<u32>(1u, 7212u), vec2<i32>(31799i, -1i)))), Struct_5(2098f, vec3<f32>(568f, 713f, 2322f), Struct_4(false, Struct_3(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(5326i, 26026i)))), Struct_5(491f, vec3<f32>(497f, 1437f, -192f), Struct_4(false, Struct_3(vec2<u32>(55054u, 7059u), vec2<i32>(i32(-2147483648), 1i)))), Struct_5(2121f, vec3<f32>(-499f, 827f, 1646f), Struct_4(false, Struct_3(vec2<u32>(27253u, 941u), vec2<i32>(0i, -7997i)))), Struct_5(1697f, vec3<f32>(142f, -543f, -139f), Struct_4(true, Struct_3(vec2<u32>(1u, 1u), vec2<i32>(56763i, 0i)))), Struct_5(555f, vec3<f32>(-724f, 203f, 441f), Struct_4(true, Struct_3(vec2<u32>(36277u, 16614u), vec2<i32>(-1i, i32(-2147483648))))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global4 = array<Struct_5, 15>();
    global4 = array<Struct_5, 15>();
    var var_0 = ~firstLeadingBit(u_input.c);
    let var_1 = Struct_2(select(vec3<bool>(true, !(!global3.a), true), vec3<bool>(all(!vec4<bool>(global3.a, false, global3.a, true)), global3.a, any(select(vec3<bool>(global3.a, false, global3.a), vec3<bool>(true, false, global3.a), global3.a))), !(!select(vec3<bool>(global3.a, global3.a, global3.a), vec3<bool>(true, false, true), vec3<bool>(false, global3.a, true)))), vec3<bool>(select(true, global3.a, all(!vec4<bool>(global3.a, false, global3.a, false))), true, global3.a), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(345f, 505f, 540f), vec3<f32>(-1228f, 787f, -723f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))), u_input.b.yxx, select(vec4<bool>(!global3.a, false, global3.a, any(!vec4<bool>(false, global3.a, false, false))), !select(!vec4<bool>(false, global3.a, global3.a, global3.a), vec4<bool>(true, true, global3.a, false), global3.a), vec4<bool>(global3.a, global3.a, false, global3.a)));
    return _wgslsmith_f_op_f32(floor(var_1.c.a.x));
}

fn func_2() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2233f) + _wgslsmith_f_op_f32(func_3()));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + var_0) + var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, _wgslsmith_div_f32(-2223f, 1361f), _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, 460f, -567f)))), Struct_4(any(!vec2<bool>(global3.a, global3.a)), Struct_3(max(countOneBits(u_input.b.ww), global3.b.a), _wgslsmith_mod_vec2_i32(-vec2<i32>(global3.b.b.x, global2[_wgslsmith_index_u32(global3.b.a.x, 2u)]), u_input.c.xy))));
    global0 = select(true, 1u > global3.b.a.x, false) | select((_wgslsmith_f_op_f32(139f - var_0) > _wgslsmith_f_op_f32(floor(-1000f))) | global3.a, any(select(vec3<bool>(global3.a, global3.a, var_1.c.a), vec3<bool>(global3.a, var_1.c.a, global3.a), vec3<bool>(var_1.c.a, true, false))) == (_wgslsmith_f_op_f32(var_1.a * var_1.a) > _wgslsmith_f_op_f32(max(var_1.a, 281f))), var_1.c.a);
    return _wgslsmith_mult_vec4_u32(firstLeadingBit(firstLeadingBit(u_input.b << (u_input.b % vec4<u32>(32u))) | (vec4<u32>(4294967295u, var_1.c.b.a.x, 1u, 31445u) >> (select(u_input.b, vec4<u32>(0u, 1u, 4294967295u, global3.b.a.x), vec4<bool>(global3.a, true, true, var_1.c.a)) % vec4<u32>(32u)))), u_input.b);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = Struct_4(global3.a, Struct_3(~vec2<u32>(countOneBits(var_0.x), select(u_input.b.x, 1u, false)), ~firstLeadingBit(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(0u, 2u)]))));
    var_0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(var_0.zwz, var_0.zyw)), vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), 0u, ~7990u)), 4294967295u, var_1.b.a.x, _wgslsmith_mult_u32(global3.b.a.x, var_0.x));
    let var_2 = (u_input.b.x ^ var_1.b.a.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.b.a ^ vec2<u32>(u_input.b.x, 41250u), min(u_input.b.yy, vec2<u32>(global3.b.a.x, 1u))), min(max(global3.b.a.x, u_input.b.x), var_0.x)), firstTrailingBit(~var_0.zy));
    var var_3 = vec4<i32>(var_1.b.b.x << (_wgslsmith_dot_vec4_u32(~u_input.b, select(func_2(), func_2(), select(vec4<bool>(var_1.a, global3.a, var_1.a, true), vec4<bool>(global3.a, false, var_1.a, true), var_1.a))) % 32u), _wgslsmith_mod_i32(min(-10217i, -1i), 2147483647i), min(-32146i, _wgslsmith_add_i32(_wgslsmith_add_i32(var_1.b.b.x, 2450i), 35820i)), ~abs(4341i));
    return StorageBuffer(u_input.c, 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1306f, _wgslsmith_f_op_f32(1000f * -119f))))), ~_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(func_2().x, var_1.b.a.x, 55524u << (u_input.b.x % 32u), select(var_2, 0u, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.a;
    global1 = array<vec3<u32>, 10>();
    let var_0 = 1000f;
    var var_1 = var_0;
    var var_2 = global3.b;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(603f, 1716f, 2113f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, var_0, var_0) - vec3<f32>(1281f, var_0, 268f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 810f, 426f) + vec3<f32>(var_0, 557f, -932f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2102f, var_0, var_0)))))));
    let var_4 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 13895u), vec2<u32>(4294967295u, 3310u)) << (~(~global3.b.a.x) % 32u), 2u)] == 0i, Struct_3(u_input.b.xw, _wgslsmith_mult_vec2_i32(u_input.c.wx, -vec2<i32>(-20833i, -8971i))));
    let x = u_input.a;
    s_output = func_1();
}

