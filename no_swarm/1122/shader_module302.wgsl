struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(529f, -1449f, 857f, 556f), vec4<f32>(-1123f, 682f, 1079f, 455f), vec4<f32>(866f, 2040f, 201f, 116f), vec4<f32>(1022f, -752f, -937f, 189f), vec4<f32>(-517f, -1010f, -125f, -866f), vec4<f32>(548f, -187f, -608f, -937f), vec4<f32>(-1373f, -2871f, 1759f, 2131f), vec4<f32>(-1845f, 341f, 1000f, -516f), vec4<f32>(444f, 1618f, 1163f, 189f), vec4<f32>(-1525f, 1618f, -1076f, 475f), vec4<f32>(-484f, -1787f, -384f, 650f), vec4<f32>(140f, 1000f, 439f, -829f), vec4<f32>(-165f, 728f, -158f, -1026f), vec4<f32>(-1192f, -639f, -521f, -239f), vec4<f32>(-111f, 1514f, 772f, 503f), vec4<f32>(1082f, -517f, 481f, -992f), vec4<f32>(-1141f, 1140f, 492f, -1281f), vec4<f32>(1812f, -708f, 903f, -1000f), vec4<f32>(-910f, -672f, -1337f, -255f));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec3<f32>(-159f, -297f, -909f), vec4<u32>(1391u, 46216u, 11616u, 8619u), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec3<f32>(3509f, 637f, -1844f), vec4<u32>(1740u, 4294967295u, 1u, 21810u), vec2<bool>(true, false)), vec4<i32>(-1i, 30106i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 4650i));

var<private> global2: array<vec4<f32>, 6>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = vec3<u32>(max(89316u, ~(~(global3.b.c.x ^ u_input.b.x))), ~global3.a.c.x, ~_wgslsmith_dot_vec2_u32(select(global1.a.c.zy, ~global1.b.c.xw, any(global3.b.a)), max(global3.b.c.xz, abs(vec2<u32>(39419u, u_input.b.x)))));
    var var_1 = !(!(!vec4<bool>(!global1.a.a.x, any(vec4<bool>(global3.b.d.x, global1.b.a.x, global3.a.a.x, global1.b.a.x)), true, !global3.a.a.x)));
    var var_2 = vec2<i32>(global3.d.x, -24126i);
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(step(-138f, _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2667f + 295f) - _wgslsmith_f_op_f32(floor(global1.b.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.b.x * -759f), _wgslsmith_div_f32(global3.a.b.x, global3.b.b.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.b.x), _wgslsmith_f_op_f32(step(global1.a.b.x, 1337f)))))), -1280f), vec2<f32>(global1.b.b.x, global1.a.b.x), vec4<f32>(global3.b.b.x, global1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1973f - -228f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.a.b.x, -1083f, global3.b.d.x)))))));
    var var_4 = _wgslsmith_f_op_f32(min(-2153f, -519f));
    return -216f;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = ~global1.d.yy;
    var var_1 = countOneBits(~(~firstLeadingBit(vec3<u32>(35603u, global1.a.c.x, u_input.b.x) | vec3<u32>(global3.a.c.x, global3.b.c.x, 4294967295u))));
    var_0 = reverseBits(firstTrailingBit(max(vec2<i32>(u_input.a, _wgslsmith_div_i32(-2147483647i, 2147483647i)), firstTrailingBit(vec2<i32>(u_input.a, 10979i)))));
    global2 = array<vec4<f32>, 6>();
    var var_2 = Struct_4(Struct_1(vec2<bool>(all(!vec4<bool>(global1.a.d.x, true, global1.b.a.x, global1.b.a.x)), true), vec3<f32>(global3.a.b.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b.x + global3.b.b.x) + _wgslsmith_f_op_f32(max(926f, -216f)))), vec4<u32>(arg_0.x, abs(~38503u), reverseBits(17462u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.xz, u_input.b.wz), arg_0.zy)), select(select(select(global1.b.a, global1.a.d, false), !global1.b.d, vec2<bool>(false, global3.b.d.x)), vec2<bool>(true, select(true, false, global3.a.d.x)), !global1.a.d)), global1.a.c.wx);
    return Struct_4(Struct_1(global3.b.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(325f, 1861f, -1000f), global3.a.b)), _wgslsmith_f_op_vec3_f32(global1.b.b - vec3<f32>(global3.a.b.x, global1.a.b.x, -189f))))), ~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 1u), var_2.b.x, 29928u, max(1u, var_1.x)), select(select(vec2<bool>(false, true), global1.b.d, select(vec2<bool>(global1.b.a.x, false), var_2.a.d, false)), var_2.a.a, _wgslsmith_f_op_f32(max(1155f, global3.b.b.x)) < -177f)), ~vec2<u32>(min(abs(4294967295u), 1u), reverseBits(~var_2.a.c.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_5 {
    global0 = array<vec4<f32>, 19>();
    var var_0 = vec2<bool>(arg_0.x, global3.b.d.x);
    var var_1 = Struct_3(arg_0.x, Struct_1(vec2<bool>(global3.a.d.x, var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1011f, global3.a.b.x, 1000f), arg_1.a.b))), select(~vec4<u32>(global1.b.c.x, 4294967295u, 12239u, 4294967295u) ^ global1.a.c, ~vec4<u32>(global1.b.c.x, global1.b.c.x, 54112u, 12360u), 1369f > _wgslsmith_div_f32(arg_1.a.b.x, arg_1.a.b.x)), func_2(~(~global3.b.c.yxx)).a.a));
    var var_2 = ~(~(vec4<u32>(1u, _wgslsmith_add_u32(global3.b.c.x, 4294967295u), 1u, ~arg_1.b.x) & firstTrailingBit(vec4<u32>(0u, global3.b.c.x, arg_1.b.x, global1.b.c.x))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.x, 1u), 19u)]), arg_1.a.b.zx, _wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(select(~1u, countOneBits(~146600u), arg_0.x), 6u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.b.b.x - global1.a.b.x), _wgslsmith_f_op_f32(global1.a.b.x * var_1.b.b.x), -2112f, global1.b.b.x) * vec4<f32>(global3.b.b.x, _wgslsmith_f_op_f32(-757f + global3.a.b.x), _wgslsmith_f_op_f32(select(-885f, var_1.b.b.x, true)), _wgslsmith_f_op_f32(step(776f, 755f))))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_3.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1106f, 758f, 1000f, -989f), vec4<f32>(833f, global3.a.b.x, 225f, var_3.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, arg_1.a.b.x, -266f, global1.b.b.x)), !global1.a.d.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-723f, _wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(var_3.c)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2115f, -263f, global3.a.b.x, -368f) * var_3.a)), vec4<f32>(_wgslsmith_f_op_f32(214f * -1000f), _wgslsmith_f_op_f32(var_3.a.x - -568f), -480f, -570f))))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(-1702f * -105f)), -1440f)), _wgslsmith_f_op_f32(floor(1368f)))));
    let var_1 = Struct_4(global1.b, reverseBits(vec2<u32>(21790u, 0u)));
    var var_2 = func_4(var_1.a.a, func_2(var_1.a.c.xzz), global1.c.xzz);
    let var_3 = Struct_2(Struct_1(!(!(!vec2<bool>(var_1.a.d.x, true))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(922f, _wgslsmith_f_op_f32(-1000f - -208f), global1.a.b.x), global3.b.b)), ~(~(~var_1.a.c)), !(!(!var_1.a.a))), Struct_1(!func_2(u_input.b.xyy & vec3<u32>(u_input.b.x, global3.a.c.x, global1.a.c.x)).a.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.b.x, _wgslsmith_f_op_f32(global3.a.b.x * 1561f), _wgslsmith_f_op_f32(-global3.a.b.x)))), vec4<u32>(global3.b.c.x, global3.a.c.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(global1.a.c, vec4<u32>(global1.a.c.x, u_input.b.x, var_1.b.x, global3.b.c.x))), 21241u), var_1.a.d), firstTrailingBit(-(~vec4<i32>(u_input.a, 307i, -15353i, 64979i))), global3.c.xzz);
    var var_4 = min(_wgslsmith_sub_i32(_wgslsmith_add_i32(1770i, u_input.a) & var_3.d.x, -6042i), -16078i);
    return vec2<bool>(true, -(i32(-1i) * -global3.d.x) >= max(~(0i << (u_input.b.x % 32u)), 57615i));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> Struct_3 {
    global0 = array<vec4<f32>, 19>();
    let var_0 = Struct_2(global1.a, Struct_1(global3.b.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-680f + arg_1), global1.a.b.x, arg_0.b.b.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global1.a.b.x, 764f))) + _wgslsmith_f_op_vec3_f32(-arg_3))), vec4<u32>(firstTrailingBit(101639u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 2979u), global3.b.c.xy) ^ _wgslsmith_mult_u32(1u, 57394u), ~29675u, ~select(0u, global1.b.c.x, global1.a.a.x)), func_2(vec3<u32>(1u, 4216u << (1u % 32u), _wgslsmith_sub_u32(global1.a.c.x, 0u))).a.d), ~(~vec4<i32>(u_input.a ^ u_input.a, 103i, _wgslsmith_div_i32(u_input.a, 2147483647i), global3.d.x)), vec3<i32>(1i ^ global3.d.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.d.x, global3.d.x, 44329i), vec3<i32>(34106i, -31689i, -17582i)), -u_input.a, _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(global3.d, vec3<i32>(-63444i, u_input.a, u_input.a)))), global3.c.x));
    let var_1 = arg_3.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = func_5(Struct_3(true, Struct_1(func_1(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global3.b.b, vec3<f32>(-1187f, -256f, global1.a.b.x)))), ~global1.b.c ^ vec4<u32>(40764u, global1.b.c.x, global3.a.c.x, global1.b.c.x), vec2<bool>(true, true))), _wgslsmith_div_f32(global1.a.b.x, -2108f), global1.b.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1.a.b, global1.b.b))) * global1.a.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-497f, global1.b.b.x, -1117f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1509f, 1232f))))));
    global1 = Struct_2(Struct_1(global3.b.d, vec3<f32>(_wgslsmith_f_op_f32(trunc(-545f)), -113f, _wgslsmith_f_op_f32(func_3())), vec4<u32>(~1u, global3.a.c.x, u_input.b.x, abs(57421u)), !vec2<bool>(any(vec4<bool>(true, var_1.a, global3.b.d.x, global1.a.a.x)), func_1().x)), var_1.b, vec4<i32>(~u_input.a, -8671i, abs(0i), 21941i >> (~select(1u, 18064u, false) % 32u)), -global1.d);
    let var_2 = var_1.b.c.yzx | _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global1.b.c.x >> (120755u % 32u), _wgslsmith_div_u32(global1.b.c.x, var_1.b.c.x), 47454u), global1.b.c.x, ~global1.a.c.x | func_2(vec3<u32>(u_input.b.x, global1.b.c.x, global1.b.c.x)).b.x), ~(~vec3<u32>(1u, u_input.b.x, 16828u)));
    var var_3 = Struct_2(global3.a, func_2(global3.a.c.www).a, _wgslsmith_mod_vec4_i32(min(-vec4<i32>(12320i, global1.d.x, 0i, global1.c.x), -global3.c), abs(vec4<i32>(global3.c.x, u_input.a, -17253i, global3.c.x))) & firstTrailingBit(-vec4<i32>(global1.c.x, u_input.a, 31335i, 21445i)), ~vec3<i32>(1i, abs(-48747i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(countOneBits(var_2.x), _wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(global3.b.c.x, 0u) ^ var_3.b.c.xz)), global3.a.c.zww, ~_wgslsmith_div_i32(firstTrailingBit(select(2147483647i, u_input.a, false)), i32(-1i) * -15222i));
}

