struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<f32>(420f, 673f, -434f), -38727i, vec2<f32>(1116f, -185f), -941f), Struct_1(vec3<f32>(-218f, -1334f, 1485f), 26687i, vec2<f32>(-479f, 496f), -1869f), Struct_1(vec3<f32>(1767f, 2640f, -944f), -24647i, vec2<f32>(-638f, -816f), -693f), Struct_1(vec3<f32>(1625f, 1000f, 909f), 2147483647i, vec2<f32>(-223f, 1080f), -2433f), Struct_1(vec3<f32>(-1253f, 789f, -2452f), -18371i, vec2<f32>(-971f, -839f), 120f), Struct_1(vec3<f32>(-837f, 743f, -320f), 0i, vec2<f32>(-401f, 526f), 305f), Struct_1(vec3<f32>(254f, 1267f, 1086f), -1i, vec2<f32>(852f, -296f), 354f), Struct_1(vec3<f32>(1278f, 170f, 431f), 42380i, vec2<f32>(-507f, 1043f), 278f), Struct_1(vec3<f32>(-440f, 867f, 233f), -15062i, vec2<f32>(1000f, 596f), 933f), Struct_1(vec3<f32>(-1063f, -1000f, 1000f), -1i, vec2<f32>(1000f, -1413f), -1106f), Struct_1(vec3<f32>(-423f, 598f, -2277f), -1i, vec2<f32>(807f, 122f), -408f), Struct_1(vec3<f32>(384f, -792f, 553f), -34524i, vec2<f32>(-1000f, -565f), 810f), Struct_1(vec3<f32>(-822f, 1000f, -1277f), i32(-2147483648), vec2<f32>(659f, 782f), 2460f), Struct_1(vec3<f32>(115f, -440f, 255f), -1i, vec2<f32>(-3289f, 905f), 699f), Struct_1(vec3<f32>(-448f, -1021f, 1570f), -73770i, vec2<f32>(-2827f, -969f), 1483f), Struct_1(vec3<f32>(822f, 912f, 1995f), -28129i, vec2<f32>(654f, -298f), -1032f), Struct_1(vec3<f32>(534f, 733f, 1000f), 73i, vec2<f32>(269f, -1073f), -254f), Struct_1(vec3<f32>(-414f, 1205f, 637f), 2147483647i, vec2<f32>(-1288f, 558f), -874f), Struct_1(vec3<f32>(1641f, -1000f, -391f), -22494i, vec2<f32>(-274f, 189f), -561f), Struct_1(vec3<f32>(-709f, 500f, -324f), 13191i, vec2<f32>(-922f, -598f), -1000f), Struct_1(vec3<f32>(-788f, 563f, 171f), 16061i, vec2<f32>(-1000f, 1992f), 2033f), Struct_1(vec3<f32>(-1000f, -1000f, 265f), 2147483647i, vec2<f32>(1000f, -194f), 242f), Struct_1(vec3<f32>(-855f, 2302f, 596f), -1i, vec2<f32>(-764f, 236f), -111f), Struct_1(vec3<f32>(-108f, 154f, 1013f), -2857i, vec2<f32>(-868f, -700f), -673f), Struct_1(vec3<f32>(1305f, -408f, -282f), -5892i, vec2<f32>(1030f, -523f), -325f), Struct_1(vec3<f32>(1450f, -1000f, -1267f), 33790i, vec2<f32>(-491f, 561f), 1824f), Struct_1(vec3<f32>(534f, 1000f, 1946f), 4930i, vec2<f32>(1206f, 240f), -967f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = ~vec3<u32>(u_input.c.x, 78222u, 1u);
    let var_1 = (24151u << (u_input.c.x % 32u)) == 1u;
    var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(61477u, 0u)) << (min(min(0u, 57823u), 37062u) % 32u), var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x)), vec3<u32>(0u, ~(select(14442u, 84738u, var_1) << (select(u_input.c.x, 1u, false) % 32u)), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(u_input.c.x, var_0.x)), vec2<u32>(6751u, u_input.c.x))));
    let var_2 = 287f;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_div_f32(-596f, -264f)), 1f, _wgslsmith_f_op_f32(var_2 - 775f));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x + var_3.x)));
}

fn func_2() -> f32 {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1569f, 1042f, 799f), vec3<f32>(1629f, 1324f, 376f), true)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-606f, 1168f, 224f), vec3<f32>(957f, -1304f, 782f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -962f, -600f)))))), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(715f)), global0[_wgslsmith_index_u32(3841u, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(1299f)), Struct_1(vec3<f32>(674f, 686f, 139f), u_input.a, vec2<f32>(719f, -1000f), 1090f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-838f, 354f)))), 221f)));
    var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 27u)];
    var_0 = Struct_1(vec3<f32>(-1044f, _wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a.x)) + var_0.d))), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d, var_0.c.x), vec2<f32>(var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - -177f), var_0.a.x));
    let var_1 = all(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) + var_0.a.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec2<bool>(arg_1, arg_1);
    var var_1 = vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(round(-933f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)) * arg_0.a.x));
    let var_2 = arg_0.c.x;
    let var_3 = arg_0.b;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~6139u | ~min(u_input.c.x, 4294967295u)), u_input.c.x), 27u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_4.a, var_4.a))) + var_4.a), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, 1i), 11953i, _wgslsmith_add_i32(~12221i, ~1i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(18954i, 1i, 37303i), vec3<i32>(var_3, -2147483647i, 5127i))), var_4.a.xy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d + arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1091f)))), -1217f));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_4(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], any(vec4<bool>(true, true, false, true)) || (true | (_wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(select(-348f, 1682f, false)))));
    let var_1 = select(true, true, all(vec4<bool>(true, true, true, true)) | false) | true;
    global0 = array<Struct_1, 27>();
    var var_2 = !(!all(vec4<bool>(var_1, false, true, all(vec4<bool>(var_1, var_1, var_1, true)))));
    var var_3 = 1u <= (~u_input.c.x ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c.x, 4294967295u), ~13323u));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1718f, 115f), _wgslsmith_f_op_f32(f32(-1f) * -1832f), _wgslsmith_f_op_f32(-557f - 128f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1299f, 1050f, -1599f), vec3<f32>(405f, -1525f, 391f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, 538f, 750f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-391f, -677f, -404f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -858f, -119f) - vec3<f32>(-1294f, -540f, -252f)))))), -(u_input.b | _wgslsmith_div_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, -200f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-494f, -749f)))) * _wgslsmith_f_op_vec2_f32(func_1())))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-998f)), -1430f)));
    var var_1 = abs(-u_input.b);
    var_1 = ~(~(_wgslsmith_clamp_i32(2147483647i, var_0.b, 1i) << (u_input.c.x % 32u)) ^ _wgslsmith_clamp_i32(_wgslsmith_mult_i32(min(38361i, var_0.b), -2147483647i), -u_input.b, -_wgslsmith_sub_i32(0i, u_input.a)));
    var var_2 = var_0.a;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(-567f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_2.x)))), -521f)), -1596f, var_2.x);
    let var_4 = all(vec3<bool>(!any(vec4<bool>(true, true, true, true)), 12621i > -_wgslsmith_sub_i32(u_input.a, var_0.b), false));
    global0 = array<Struct_1, 27>();
    let var_5 = ~(~countOneBits(u_input.c));
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(u_input.c.x >> (var_5.x % 32u), ~var_5.x, var_5.x), firstTrailingBit(select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, var_5.x, 28732u), false))), var_0.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-531f, -796f, var_3.x)))))))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_clamp_vec2_u32(~(~(~u_input.c)), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 33456u), select(vec2<u32>(u_input.c.x, 0u), u_input.c, vec2<bool>(var_4, var_4)), !vec2<bool>(var_4, var_4)), max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.c.x)), abs(vec2<u32>(0u, u_input.c.x)) | vec2<u32>(u_input.c.x, var_5.x)), ~(~select(vec2<u32>(var_5.x, u_input.c.x), u_input.c, var_4))));
}

