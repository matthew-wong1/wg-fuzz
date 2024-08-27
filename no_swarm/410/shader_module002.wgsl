struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<f32, 15> = array<f32, 15>(390f, 1817f, -1245f, -1022f, 1066f, -393f, 1352f, 109f, 733f, 1000f, -166f, -534f, -1278f, -205f, -390f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    return countOneBits(_wgslsmith_mod_u32(1u, 62455u));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<Struct_1, 17>();
    let var_0 = !vec3<bool>(!any(vec2<bool>(arg_2.c.b.a.x, arg_2.a)), all(!vec2<bool>(false, arg_2.a)) & true, !any(arg_2.c.b.a));
    let var_1 = arg_1.c.c.wzw;
    var var_2 = Struct_2(countOneBits(~(~arg_3.b.d.ww)), arg_1.c.b, !(!select(arg_3.c, select(arg_2.c.c, vec4<bool>(false, var_1.x, false, var_1.x), arg_1.c.c), all(arg_1.c.c.yzx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_3.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.d.x, arg_1.e, arg_2.c.d.x, 210f)))) * _wgslsmith_f_op_vec4_f32(round(arg_3.d))));
    var var_3 = Struct_1(var_0.yx, arg_0, _wgslsmith_div_vec3_f32(arg_2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c.b.c.x, 335f, arg_1.c.d.x), vec3<f32>(arg_3.b.c.x, -2117f, -405f), true))))), arg_1.c.b.d);
    return !(!vec3<bool>(true, select(1533i, var_2.b.b, false) >= _wgslsmith_clamp_i32(26422i, 0i, arg_2.c.b.b), max(26365i, -2147483647i) >= u_input.b));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(arg_1.a.d.xxy, vec3<u32>(_wgslsmith_mult_u32(min(~arg_1.a.d.x, 37642u & arg_0), arg_0), 0u, ~(~_wgslsmith_sub_u32(arg_1.b, arg_0))));
    global0 = array<Struct_1, 17>();
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    return Struct_3(Struct_1(arg_1.a.a, _wgslsmith_add_i32(arg_1.a.b, arg_3.c.b.b), vec3<f32>(global1[_wgslsmith_index_u32(arg_3.b, 15u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(10921u, 15u)]), _wgslsmith_div_f32(arg_1.a.c.x, arg_1.a.c.x), !arg_3.c.b.a.x)), arg_1.a.c.x), vec4<u32>(_wgslsmith_div_u32(1u, var_0.x), 71685u, 0u, arg_1.b)), abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    let var_0 = func_3(func_1(), Struct_3(Struct_1(vec2<bool>(true, true), 1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-155f, global1[_wgslsmith_index_u32(1u, 15u)], 112f), vec3<f32>(global1[_wgslsmith_index_u32(15463u, 15u)], 1994f, -547f), vec3<bool>(true, false, false))), vec3<f32>(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(53894u, 15u)], -305f)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 8780u, 13805u, 5362u))), 2752u), -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, -37269i), _wgslsmith_mult_vec2_i32(vec2<i32>(5783i, u_input.a), vec2<i32>(1i, 110891i))), vec2<i32>(select(-18880i, u_input.b, false), ~u_input.a)), Struct_4(all(!func_2(u_input.a, Struct_4(false, 69145u, Struct_2(vec2<u32>(1u, 0u), Struct_1(vec2<bool>(false, false), -14678i, vec3<f32>(global1[_wgslsmith_index_u32(4754u, 15u)], global1[_wgslsmith_index_u32(1485u, 15u)], global1[_wgslsmith_index_u32(23653u, 15u)]), vec4<u32>(28108u, 1u, 0u, 1626u)), vec4<bool>(false, true, true, true), vec4<f32>(-1018f, global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)])), vec3<f32>(global1[_wgslsmith_index_u32(1u, 15u)], 855f, -671f), global1[_wgslsmith_index_u32(59u, 15u)]), Struct_4(false, 10051u, Struct_2(vec2<u32>(1u, 29974u), global0[_wgslsmith_index_u32(1u, 17u)], vec4<bool>(false, false, true, false), vec4<f32>(global1[_wgslsmith_index_u32(14311u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(55127u, 15u)], 154f)), vec3<f32>(-1000f, global1[_wgslsmith_index_u32(1443u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), global1[_wgslsmith_index_u32(89642u, 15u)]), Struct_2(vec2<u32>(18026u, 4294967295u), global0[_wgslsmith_index_u32(23273u, 17u)], vec4<bool>(true, true, false, false), vec4<f32>(-918f, global1[_wgslsmith_index_u32(4294967295u, 15u)], -1192f, 202f)))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(26772u, 44139u, 1u), vec3<u32>(52872u, 4294967295u, 4294967295u))) << (~4294967295u % 32u), Struct_2(vec2<u32>(~0u, min(53640u, 4113u)), global0[_wgslsmith_index_u32(abs(~36574u), 17u)], vec4<bool>(true, true, true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(47424u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], 302f, -372f) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], -1513f, global1[_wgslsmith_index_u32(0u, 15u)], 637f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(0u, 15u)], 291f, global1[_wgslsmith_index_u32(63248u, 15u)], global1[_wgslsmith_index_u32(36040u, 15u)]))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(87405u, 15u)], -822f, -972f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-855f, global1[_wgslsmith_index_u32(4294967295u, 15u)], -455f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(8868u, 15u)], -1000f, global1[_wgslsmith_index_u32(77765u, 15u)]))))), vec3<bool>(all(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 15u)])) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(96119u, 15u)]))))));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_4(var_0.a.a.x, min(_wgslsmith_mult_u32(var_0.a.d.x & var_0.a.d.x, _wgslsmith_dot_vec2_u32(var_0.a.d.xw, ~var_0.a.d.yy)), select(~39434u, 62186u, !var_0.a.a.x)), Struct_2(var_0.a.d.yx, Struct_1(!(!var_0.a.a), 1i, vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a.c.x, global1[_wgslsmith_index_u32(var_0.b, 15u)])), _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -511f)), min(vec4<u32>(0u, 14197u, var_0.a.d.x, 125103u), countOneBits(var_0.a.d))), select(vec4<bool>(var_0.a.d.x <= 51956u, func_3(4294967295u, Struct_3(Struct_1(var_0.a.a, 11554i, vec3<f32>(-1290f, var_0.a.c.x, var_0.a.c.x), vec4<u32>(0u, var_0.a.d.x, 0u, 0u)), var_0.b), vec2<i32>(u_input.a, 16040i), Struct_4(false, var_0.b, Struct_2(vec2<u32>(19917u, var_0.a.d.x), Struct_1(vec2<bool>(var_0.a.a.x, true), 2745i, var_0.a.c, var_0.a.d), vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x), vec4<f32>(-1316f, global1[_wgslsmith_index_u32(0u, 15u)], -1000f, global1[_wgslsmith_index_u32(var_0.a.d.x, 15u)])), vec3<f32>(568f, -1795f, global1[_wgslsmith_index_u32(var_0.b, 15u)]), var_0.a.c.x)).a.a.x, false, func_2(-1i, Struct_4(false, var_0.b, Struct_2(var_0.a.d.zz, Struct_1(vec2<bool>(var_0.a.a.x, false), -2147483647i, var_0.a.c, vec4<u32>(4294967295u, 0u, var_0.b, 32738u)), vec4<bool>(true, var_0.a.a.x, false, false), vec4<f32>(1435f, 861f, var_0.a.c.x, var_0.a.c.x)), vec3<f32>(global1[_wgslsmith_index_u32(37119u, 15u)], -1000f, -1222f), global1[_wgslsmith_index_u32(var_0.a.d.x, 15u)]), Struct_4(true, var_0.a.d.x, Struct_2(vec2<u32>(var_0.b, 1u), Struct_1(var_0.a.a, 21042i, vec3<f32>(global1[_wgslsmith_index_u32(1u, 15u)], 503f, global1[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(17001u, var_0.a.d.x, 16215u, 1u)), vec4<bool>(false, true, true, false), vec4<f32>(var_0.a.c.x, 243f, 397f, var_0.a.c.x)), var_0.a.c, global1[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_2(vec2<u32>(0u, 1u), Struct_1(var_0.a.a, var_0.a.b, var_0.a.c, var_0.a.d), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false), vec4<f32>(129f, 1014f, 2965f, global1[_wgslsmith_index_u32(var_0.b, 15u)]))).x), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), select(!vec4<bool>(false, var_0.a.a.x, false, var_0.a.a.x), !vec4<bool>(var_0.a.a.x, var_0.a.a.x, false, var_0.a.a.x), !vec4<bool>(false, var_0.a.a.x, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 15u)], var_0.a.c.x, -583f, var_0.a.c.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.c.x, 507f, -433f, var_0.a.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)), _wgslsmith_f_op_f32(trunc(897f)), 1020f, _wgslsmith_f_op_f32(floor(-1607f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(15833u, 15u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_0.a.d.x, 15u)]))), -1145f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1[_wgslsmith_index_u32(var_0.b, 15u)], _wgslsmith_f_op_f32(var_0.a.c.x + -568f), var_0.a.c.x)))), var_0.a.c.x);
    let var_2 = ~var_1.c.b.d.xzw;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~reverseBits(vec4<u32>(~29981u, ~var_0.b, var_1.b, ~4294967295u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x * var_1.c.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.e), -891f, !var_0.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1342f))), var_0.a.c.x));
}

