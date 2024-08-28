struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, -406f, vec4<u32>(69801u, 23799u, 100984u, 1u)), Struct_1(false, 799f, vec4<u32>(35435u, 1u, 4294967295u, 4294967295u)), Struct_1(false, 2623f, vec4<u32>(29466u, 1u, 1u, 31399u)), Struct_1(true, 1000f, vec4<u32>(4294967295u, 1u, 39565u, 1u)), Struct_1(false, -688f, vec4<u32>(1u, 1u, 25448u, 0u)), Struct_1(true, -720f, vec4<u32>(754u, 0u, 12210u, 1u)), Struct_1(false, 101f, vec4<u32>(4294967295u, 26303u, 31090u, 4294967295u)), Struct_1(true, 140f, vec4<u32>(102667u, 1u, 0u, 1u)), Struct_1(true, 350f, vec4<u32>(4294967295u, 66062u, 92380u, 1u)), Struct_1(true, -151f, vec4<u32>(4294967295u, 82536u, 1u, 32483u)), Struct_1(false, -1000f, vec4<u32>(36652u, 4294967295u, 39848u, 51573u)), Struct_1(true, 502f, vec4<u32>(4294967295u, 54752u, 1u, 1u)), Struct_1(false, -887f, vec4<u32>(21393u, 4294967295u, 4294967295u, 1u)), Struct_1(false, -662f, vec4<u32>(25762u, 17037u, 10124u, 0u)), Struct_1(true, 1098f, vec4<u32>(78674u, 81723u, 1u, 54257u)), Struct_1(false, -971f, vec4<u32>(0u, 4294967295u, 63135u, 34488u)), Struct_1(true, 323f, vec4<u32>(0u, 4294967295u, 4502u, 4294967295u)), Struct_1(true, 468f, vec4<u32>(26398u, 1u, 13117u, 15340u)), Struct_1(false, 225f, vec4<u32>(28452u, 448u, 0u, 1u)), Struct_1(true, -822f, vec4<u32>(2853u, 4294967295u, 23989u, 0u)), Struct_1(false, 372f, vec4<u32>(30431u, 96445u, 0u, 10807u)), Struct_1(true, 1344f, vec4<u32>(0u, 18373u, 4294967295u, 45689u)), Struct_1(true, 702f, vec4<u32>(36305u, 0u, 1u, 22117u)), Struct_1(true, -642f, vec4<u32>(26594u, 0u, 56344u, 109129u)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<u32> {
    global0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, 416f) * global0.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(global0.b + 277f))) * -839f)), global0.c);
    global0 = Struct_1(!(!(u_input.b.x <= _wgslsmith_mod_i32(2147483647i, u_input.b.x))), _wgslsmith_f_op_f32(trunc(-929f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(52248u, u_input.a.x, global0.c.x, 2419u), vec4<u32>(_wgslsmith_mod_u32(26798u, u_input.a.x), firstLeadingBit(41266u), firstLeadingBit(1u), 25912u), firstLeadingBit(max(vec4<u32>(42299u, 40384u, 53293u, global0.c.x), global0.c))) & vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c.yxy, global0.c.xyz), _wgslsmith_mod_vec3_u32(vec3<u32>(117893u, u_input.a.x, global0.c.x), vec3<u32>(global0.c.x, global0.c.x, global0.c.x))), abs(~99325u), _wgslsmith_add_u32(global0.c.x, firstTrailingBit(0u)), ~select(46213u, u_input.a.x, global0.a)));
    global1 = vec4<bool>(true, all(global1.xy), global1.x, global0.a);
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(3132f, global0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, 938f), vec2<f32>(975f, global0.b), global1.zw)))), global1.wz))));
    var var_1 = u_input.b;
    return select(_wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 57621u, u_input.a.x), vec4<u32>(14477u, 20014u, 34160u, 0u)) | (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u) & vec4<u32>(global0.c.x, 0u, u_input.a.x, 84618u)), select(vec4<u32>(global0.c.x, 4294967295u, global0.c.x, 4294967295u), select(vec4<u32>(1u, 0u, global0.c.x, u_input.a.x), vec4<u32>(0u, 18612u, 0u, global0.c.x), global0.a), vec4<bool>(global1.x, global1.x, global0.a, true))), vec4<u32>(firstTrailingBit(abs(u_input.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(47322u, 6993u), u_input.a), 34673u, ~firstTrailingBit(22974u))), firstLeadingBit(global0.c) >> (abs(vec4<u32>(u_input.a.x | u_input.a.x, global0.c.x, 0u, global0.c.x)) % vec4<u32>(32u)), global1.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-172f));
    global1 = !vec4<bool>(any(vec3<bool>(global0.a, false, select(false, false, global1.x))), true, global1.x, true);
    var var_1 = Struct_1(all(vec4<bool>(true, !global1.x, true, any(select(vec3<bool>(global1.x, global1.x, global0.a), vec3<bool>(true, global1.x, global0.a), false)))), _wgslsmith_f_op_f32(-global0.b), func_3());
    return 120f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1.c.x;
    global1 = vec4<bool>(!any(!select(vec4<bool>(true, arg_0.a, false, true), vec4<bool>(true, arg_2.a, false, arg_0.a), arg_0.a)), false, arg_0.c.x >= ~reverseBits(var_0), true);
    global0 = Struct_1(!(false || global0.a), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1258f, -645f, arg_0.a))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, arg_0.b, global0.b)), u_input.a & vec2<u32>(var_0, 0u), firstLeadingBit(2147483647i), select(arg_0.c, vec4<u32>(global0.c.x, arg_2.c.x, arg_2.c.x, 30813u), arg_3.x)))), _wgslsmith_f_op_f32(-global0.b), !(global0.a & arg_2.a) || (true && arg_1.a))), ~select(vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), 12465u, ~arg_2.c.x, 1u >> (arg_1.c.x % 32u)), ~vec4<u32>(var_0, 0u, 38961u, 9709u), true));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_1.b)))), -2379f);
    global2 = array<Struct_1, 24>();
    return global2[_wgslsmith_index_u32(var_0, 24u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(global1.x, arg_1.b, ~min(func_3(), ~vec4<u32>(arg_1.c.x, 7740u, 53594u, u_input.a.x)) << (~abs(func_3()) % vec4<u32>(32u)));
    var var_1 = !(!global1.www);
    return select(countOneBits(vec4<i32>(0i, -u_input.b.x, _wgslsmith_add_i32(-u_input.b.x, abs(u_input.b.x)), firstTrailingBit(8848i))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i & u_input.b.x, 19210i), vec3<i32>(-1i) * -vec3<i32>(-4127i, u_input.b.x, -54420i)), ~u_input.b.x, _wgslsmith_add_i32(u_input.b.x, ~max(u_input.b.x, 0i)), select(u_input.b.x, max(u_input.b.x, u_input.b.x) ^ _wgslsmith_sub_i32(u_input.b.x, 0i), !any(global1.xwy))), select(select(vec4<bool>(arg_1.a, all(vec2<bool>(false, false)), true, true), select(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(global1.x, arg_1.a, true, global1.x), vec4<bool>(false, arg_1.a, false, true)), !vec4<bool>(arg_1.a, arg_1.a, var_0.a, false), !var_1.x), any(!vec4<bool>(global1.x, arg_1.a, arg_1.a, false))), select(vec4<bool>(global0.a, any(vec4<bool>(var_0.a, global0.a, var_1.x, true)), global1.x, true), vec4<bool>(arg_1.a, true, true, true), var_1.x), !(!var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(step(-616f, 668f))), -134f)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(18804u, 3956u, u_input.a.x, 1u) << (~global0.c % vec4<u32>(32u))), vec4<u32>(~global0.c.x, global0.c.x, _wgslsmith_mult_u32(u_input.a.x >> (44199u % 32u), u_input.a.x), 20564u)));
    let var_1 = -593f;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-927f, -183f)))))));
    global0 = var_0;
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(-8932i, 2900i, -821i, -4166i) >> (global0.c % vec4<u32>(32u))), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2149f, var_2.x, 102f), vec4<f32>(var_1, -323f, -1712f, -342f)), func_1(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_1(true, global0.b, vec4<u32>(9268u, 0u, u_input.a.x, 34918u)), var_0, vec4<bool>(false, global0.a, global0.a, false))), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<i32>(_wgslsmith_add_i32(1i & u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -20523i), u_input.b)), reverseBits(47013i), -17039i >> (0u % 32u), -59690i), _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 19679i, u_input.b.x, -23376i), vec4<i32>(-1i, 0i, u_input.b.x, -1i)) & reverseBits(vec4<i32>(21756i, 2147483647i, u_input.b.x, -15080i))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -38717i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.b.x)), ~vec4<i32>(75568i, u_input.b.x, 422i, u_input.b.x)) | _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 90208i, u_input.b.x)), vec4<i32>(u_input.b.x, 90046i, u_input.b.x, -18406i))));
    var var_4 = ~select(vec2<u32>(global0.c.x, u_input.a.x), firstTrailingBit(max(var_0.c.xx, vec2<u32>(var_0.c.x, 1u))), !any(vec2<bool>(var_0.a, global1.x))) | global0.c.xw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(522f)), var_0.b, global0.c.x, _wgslsmith_sub_vec3_u32(reverseBits(min(vec3<u32>(u_input.a.x, 61977u, 102848u), global0.c.yzw >> (var_0.c.xwy % vec3<u32>(32u)))), var_0.c.xyx));
}

