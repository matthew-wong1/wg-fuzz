struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_3 = Struct_3(-1738f, Struct_1(vec2<f32>(762f, -550f), vec4<i32>(28402i, 0i, 2147483647i, 2147483647i)), Struct_1(vec2<f32>(-737f, 623f), vec4<i32>(15262i, 0i, 87011i, 0i)));

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(1i, vec4<u32>(83226u, 0u, 4518u, 4294967295u), Struct_2(vec2<u32>(90489u, 12066u))), Struct_5(1i, vec4<u32>(77285u, 46369u, 1u, 61061u), Struct_2(vec2<u32>(1878u, 25145u))), Struct_5(0i, vec4<u32>(0u, 78131u, 28211u, 47048u), Struct_2(vec2<u32>(4294967295u, 4674u))), Struct_5(i32(-2147483648), vec4<u32>(1u, 45927u, 4294967295u, 14415u), Struct_2(vec2<u32>(58767u, 51199u))), Struct_5(14858i, vec4<u32>(0u, 9534u, 39283u, 51898u), Struct_2(vec2<u32>(74636u, 93611u))), Struct_5(i32(-2147483648), vec4<u32>(10825u, 20359u, 85360u, 0u), Struct_2(vec2<u32>(0u, 33253u))), Struct_5(21164i, vec4<u32>(6460u, 0u, 1322u, 20272u), Struct_2(vec2<u32>(0u, 0u))), Struct_5(0i, vec4<u32>(77793u, 4294967295u, 2946u, 0u), Struct_2(vec2<u32>(0u, 4294967295u))), Struct_5(-49297i, vec4<u32>(1186u, 1u, 30475u, 1u), Struct_2(vec2<u32>(21582u, 1u))), Struct_5(-15912i, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), Struct_2(vec2<u32>(1u, 4294967295u))), Struct_5(-7630i, vec4<u32>(11250u, 11607u, 58368u, 37761u), Struct_2(vec2<u32>(29627u, 2481u))), Struct_5(-12063i, vec4<u32>(29823u, 79134u, 20230u, 55293u), Struct_2(vec2<u32>(5962u, 0u))), Struct_5(i32(-2147483648), vec4<u32>(7863u, 0u, 31572u, 1u), Struct_2(vec2<u32>(4294967295u, 1u))), Struct_5(-22862i, vec4<u32>(64797u, 59233u, 4294967295u, 43675u), Struct_2(vec2<u32>(4294967295u, 4294967295u))), Struct_5(16969i, vec4<u32>(36049u, 52684u, 0u, 55516u), Struct_2(vec2<u32>(14661u, 88398u))), Struct_5(0i, vec4<u32>(0u, 34148u, 30774u, 33002u), Struct_2(vec2<u32>(4294967295u, 4294967295u))), Struct_5(-18597i, vec4<u32>(0u, 12414u, 4294967295u, 12605u), Struct_2(vec2<u32>(4294967295u, 0u))), Struct_5(47583i, vec4<u32>(2860u, 99776u, 32914u, 0u), Struct_2(vec2<u32>(135926u, 0u))), Struct_5(-58016i, vec4<u32>(34648u, 0u, 1785u, 9198u), Struct_2(vec2<u32>(11670u, 4294967295u))), Struct_5(20300i, vec4<u32>(0u, 13259u, 85205u, 0u), Struct_2(vec2<u32>(1u, 1u))), Struct_5(-1i, vec4<u32>(66348u, 21134u, 4294967295u, 1u), Struct_2(vec2<u32>(1116u, 58288u))), Struct_5(5617i, vec4<u32>(0u, 0u, 1u, 56187u), Struct_2(vec2<u32>(2077u, 69398u))), Struct_5(-6164i, vec4<u32>(4294967295u, 1u, 22628u, 84978u), Struct_2(vec2<u32>(1u, 4294967295u))), Struct_5(-13099i, vec4<u32>(1u, 3206u, 4294967295u, 47488u), Struct_2(vec2<u32>(0u, 21652u))), Struct_5(-15155i, vec4<u32>(4294967295u, 0u, 1u, 0u), Struct_2(vec2<u32>(36217u, 0u))), Struct_5(34194i, vec4<u32>(2240u, 89790u, 17463u, 23794u), Struct_2(vec2<u32>(1u, 28777u))), Struct_5(i32(-2147483648), vec4<u32>(1u, 1785u, 1u, 61580u), Struct_2(vec2<u32>(0u, 4294967295u))), Struct_5(-1529i, vec4<u32>(0u, 18332u, 26522u, 0u), Struct_2(vec2<u32>(1u, 4294967295u))), Struct_5(32025i, vec4<u32>(4294967295u, 0u, 0u, 1u), Struct_2(vec2<u32>(1u, 327u))));

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> u32 {
    global0 = array<Struct_1, 20>();
    var var_0 = 66829u;
    global0 = array<Struct_1, 20>();
    global3 = array<Struct_2, 30>();
    var_0 = u_input.b;
    return ~(~u_input.a.x) >> (min(~reverseBits(~0u), ~(~u_input.b) ^ ~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)) % 32u);
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: i32) -> vec4<u32> {
    let var_0 = select(!vec4<bool>(false, all(vec2<bool>(false, true)), true, true), vec4<bool>(59981u < firstTrailingBit(func_1(arg_2, true, false)), false | !(55510u == u_input.b), (_wgslsmith_sub_i32(global1.c.b.x, 2147483647i) < -1i) || !all(vec4<bool>(false, true, true, false)), false), vec4<bool>(!(!(global1.b.b.x != global1.c.b.x)), true | (true | any(vec3<bool>(true, true, true))), true, false));
    global1 = Struct_3(-215f, global1.b, Struct_1(_wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.yy * vec2<f32>(global1.b.a.x, -530f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -1221f) * vec2<f32>(-437f, global1.a)))), abs(~vec4<i32>(arg_3, -8278i, 23253i, -1469i))));
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global2 = array<Struct_5, 29>();
    return ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(45871u, 16008u, 6027u, arg_0), ~vec4<u32>(46733u, 30464u, arg_0, 18227u)), 0u, 0u, ~_wgslsmith_mod_u32(1u, 46270u)) << (vec4<u32>(~_wgslsmith_add_u32(10135u, firstTrailingBit(u_input.a.x)), 0u, ~(u_input.a.x & 29210u) ^ ~u_input.b, arg_0) % vec4<u32>(32u));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(-1000f));
    global3 = array<Struct_2, 30>();
    let var_1 = ~func_3(_wgslsmith_add_u32(_wgslsmith_mod_u32(min(4294967295u, u_input.b), _wgslsmith_add_u32(1u, u_input.b)), 1u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, -1413f)), _wgslsmith_f_op_vec2_f32(floor(global1.b.a)), true)), global1.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.b.a.x, 836f, global1.c.a.x), vec3<f32>(-1868f, global1.a, 1065f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-669f, 716f, global1.a)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-356f, global1.c.a.x, global1.c.a.x)))))), 0i & global1.b.b.x);
    global2 = array<Struct_5, 29>();
    global2 = array<Struct_5, 29>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i, -6044i);
    var var_1 = ~(~(~u_input.a)) ^ (~(~vec3<u32>(u_input.a.x, 7305u, 0u)) | (u_input.a >> (~max(vec3<u32>(1u, 34489u, 0u), vec3<u32>(4294967295u, 9273u, 0u)) % vec3<u32>(32u))));
    var var_2 = firstTrailingBit(firstLeadingBit(-_wgslsmith_mult_i32(-1i, var_0.x)));
    global0 = array<Struct_1, 20>();
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, ~u_input.b) ^ ~firstTrailingBit(u_input.b), ~firstLeadingBit(79370u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 13910u, 41453u), vec4<u32>(90671u, u_input.a.x, 1u, 4294967295u)) & ~vec4<u32>(u_input.b, u_input.a.x, 19585u, var_1.x), ~vec4<u32>(u_input.a.x, 8040u, u_input.b, u_input.a.x)), ~func_1(vec3<f32>(global1.b.a.x, global1.a, global1.b.a.x), all(vec3<bool>(true, false, true)), true)), firstTrailingBit(vec4<u32>(6913u, ~u_input.a.x, _wgslsmith_clamp_u32(var_1.x, 13619u, 41592u), func_2())) << (firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, var_1.x, 1u, var_1.x), vec4<u32>(u_input.a.x, 0u, var_1.x, 0u)) & vec4<u32>(var_1.x, var_1.x, u_input.a.x, 0u)) % vec4<u32>(32u)));
    var var_4 = _wgslsmith_dot_vec2_i32(firstTrailingBit(global1.c.b.zx), abs(vec2<i32>(-1i, var_0.x)));
    var_4 = ~var_0.x;
    var_4 = reverseBits(_wgslsmith_mod_i32(var_0.x, -global1.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, var_0.x, ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.x, 18517u, 0u, var_3.x), vec4<u32>(30702u, var_3.x, 1u, 12080u), vec4<u32>(1u, 30081u, u_input.a.x, u_input.b)), ~vec4<u32>(u_input.b, var_1.x, 0u, 1u))), global1.b.a, vec3<u32>(((u_input.b | 0u) & _wgslsmith_mod_u32(u_input.b, 1u)) << (_wgslsmith_dot_vec3_u32(reverseBits(u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(97243u, u_input.b, 4294967295u), var_3.wyw)) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, u_input.b, 75110u), u_input.a) ^ 1u, 65419u));
}

