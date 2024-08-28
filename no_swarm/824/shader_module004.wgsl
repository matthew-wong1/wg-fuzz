struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, true, false, true, false, true, false, false, true, true, false, false, false, true, true, true, false, true, false, true, false, false, true, false, true, false, true, true, false, true);

var<private> global1: array<bool, 5> = array<bool, 5>(true, true, false, true, false);

var<private> global2: array<vec3<i32>, 19>;

var<private> global3: vec4<i32> = vec4<i32>(63768i, 1i, -18665i, 1i);

var<private> global4: array<vec3<bool>, 12>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-851f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(848f))))), _wgslsmith_f_op_f32(f32(-1f) * -176f))));
    let var_1 = Struct_2(!(true | arg_1.x), ~global3.x);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    var var_4 = 2147483647i;
    return firstTrailingBit(~vec4<u32>(~22302u, 4294967295u, 1u, 31935u)) & (min(countOneBits(vec4<u32>(u_input.b, 1u, u_input.b, u_input.a.x)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 14867u, 0u), vec4<u32>(0u, 1u, 3652u, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.b, 0u)), ~firstTrailingBit(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 1u))) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 3446u, u_input.a.x, u_input.a.x) >> (vec4<u32>(0u, 52333u, u_input.a.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, 4294967295u, 0u, 4874u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 1u, 39858u, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.b)), arg_0.x));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = ~(~(~vec4<u32>(u_input.a.x, u_input.b, 35040u, 1u) | ~arg_1) >> (~func_3(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], true, global1[_wgslsmith_index_u32(u_input.b, 5u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(29268u, 5u)])) % vec4<u32>(32u)));
    global4 = array<vec3<bool>, 12>();
    var var_1 = 2147483647i ^ ~(-16467i & global3.x);
    let var_2 = ~(~(~(~1u))) ^ arg_1.x;
    var var_3 = !select(!vec4<bool>(true, all(vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(abs(43823u), 5u)], true), select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(14034u, 31u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_1.x, 31u)], true, global0[_wgslsmith_index_u32(1u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(var_2, 31u)], global1[_wgslsmith_index_u32(9161u, 5u)])), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 31u)], true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(var_2, 31u)], global1[_wgslsmith_index_u32(1068u, 5u)], global1[_wgslsmith_index_u32(var_0.x, 5u)]), global0[_wgslsmith_index_u32(var_2, 31u)])), select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(8116u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(9243u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_2, 31u)], true, global1[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(65507u, 31u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 5u)], true, false, global0[_wgslsmith_index_u32(0u, 31u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 31u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 31u)]), global0[_wgslsmith_index_u32(0u, 31u)])), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], true, false, false))), vec4<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 5u)], false, global1[_wgslsmith_index_u32(var_0.x, 5u)], true)), false, !(!global1[_wgslsmith_index_u32(0u, 5u)]), true));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) * 1682f)), -665f);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = vec3<bool>(!(any(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(11452u, 5u)], false)) & (_wgslsmith_f_op_f32(arg_1 * arg_3) >= 1000f)), firstLeadingBit(u_input.b) != ~1u, false);
    global1 = array<bool, 5>();
    return Struct_1(!all(var_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(-1i, ~reverseBits(vec4<u32>(4294967295u, 0u, u_input.b, u_input.c.x)))) + vec2<f32>(arg_3, -642f)), max(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(arg_2, arg_2), vec2<i32>(0i, 0i) << (u_input.a % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-8353i, arg_2)), global3.zz << (vec2<u32>(79134u, 4294967295u) % vec2<u32>(32u)))), ~vec2<i32>(firstTrailingBit(18735i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 19703i, 5180i), vec3<i32>(arg_2, -145i, 10498i)))), 716f);
}

fn func_4(arg_0: Struct_4) -> u32 {
    global1 = array<bool, 5>();
    global0 = array<bool, 31>();
    let var_0 = select(vec2<bool>(true, any(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], true), global4[_wgslsmith_index_u32(79108u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])) & global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<bool>(false, func_1(global1[_wgslsmith_index_u32(4294967295u, 5u)] | true, _wgslsmith_f_op_f32(arg_0.b.d + 780f), global3.x, _wgslsmith_f_op_f32(-arg_0.a.b.x)).a & false), select(select(vec2<bool>(!global0[_wgslsmith_index_u32(48812u, 31u)], select(false, global1[_wgslsmith_index_u32(92930u, 5u)], global1[_wgslsmith_index_u32(u_input.b, 5u)])), vec2<bool>(false, global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, false), 31u)]), false), select(vec2<bool>(true, true), vec2<bool>(func_1(true, -2074f, 28264i, 1000f).a, true), !(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 31u)]))), global0[_wgslsmith_index_u32(u_input.c.x, 31u)]));
    global3 = vec4<i32>(_wgslsmith_mod_i32(arg_0.a.c.x, global3.x), -(arg_0.a.c.x ^ arg_0.b.c.x), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(~global2[_wgslsmith_index_u32(1u, 19u)], vec3<i32>(global3.x, arg_0.b.c.x, arg_0.b.c.x)), select(1i, _wgslsmith_add_i32(43313i, global3.x), global1[_wgslsmith_index_u32(u_input.c.x, 5u)] | arg_0.b.a) >> (1837u % 32u)), ~(~(~(arg_0.b.c.x | 42237i))));
    global0 = array<bool, 31>();
    return firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(~func_4(Struct_4(Struct_1(global1[_wgslsmith_index_u32(u_input.b, 5u)], vec2<f32>(175f, -754f), global3.xx, -2669f), func_1(global0[_wgslsmith_index_u32(4294967295u, 31u)], 1000f, -51155i, 1000f), ~1i, !global1[_wgslsmith_index_u32(1u, 5u)])), 31u)], ~0i);
    let var_1 = ~(~global3.x);
    let var_2 = vec2<bool>(true, true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1157f - -764f)) * _wgslsmith_f_op_f32(step(-2012f, _wgslsmith_div_f32(-128f, 589f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(max(-577f, -1049f))))) - 1481f);
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(61297u, 4294967295u), vec2<u32>(1u, ~_wgslsmith_mult_u32(u_input.b, u_input.a.x))) <= ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.c.x, u_input.c.x), ~vec3<u32>(52154u, u_input.a.x, 28312u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 82951u), vec3<u32>(10800u, u_input.c.x, 34806u) >> (vec3<u32>(11433u, u_input.c.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(15113u, 1u, 49708u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(~var_1 << ((u_input.a.x | u_input.c.x) % 32u)), var_1, global3.x), _wgslsmith_clamp_i32(func_1(var_2.x, _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(exp2(var_3))), _wgslsmith_sub_i32(47933i, 1i), var_3).c.x, _wgslsmith_sub_i32(1i, max(firstTrailingBit(var_1), var_0.b)), _wgslsmith_add_i32(68728i, max(-2147483647i, 1i))), reverseBits(~(~vec2<u32>(1u, 0u))) | u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1275f, 467f, -384f, 1284f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_3, 1294f, var_3)))))));
}

