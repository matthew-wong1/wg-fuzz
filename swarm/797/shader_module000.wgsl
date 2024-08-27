struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 16>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = u_input.b | vec3<i32>(u_input.b.x, 1i, _wgslsmith_mult_i32(-7822i, arg_1));
    let var_1 = Struct_2(vec4<bool>(any(arg_2.a), global0.a, ((arg_2.a.x && false) && any(vec3<bool>(arg_2.a.x, true, false))) & (~global2[_wgslsmith_index_u32(62165u, 16u)] <= ~0u), true | (global1.x != any(vec2<bool>(true, global1.x)))), var_0.x, -31604i, ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(30932u, 16u)], u_input.a.x)), reverseBits(~vec4<u32>(u_input.a.x, 1u, 40215u, u_input.a.x))), arg_2.e);
    var var_2 = Struct_1(global1.x || any(var_1.a));
    global1 = arg_2.a;
    var_2 = Struct_1((false & any(!vec4<bool>(var_1.a.x, false, true, false))) && true);
    return ~max(reverseBits(var_1.d.x), 12685u);
}

fn func_2() -> Struct_2 {
    let var_0 = ~global2[_wgslsmith_index_u32(53737u, 16u)];
    var var_1 = false;
    global2 = array<u32, 16>();
    var var_2 = vec2<bool>(global1.x, true);
    var var_3 = Struct_1((~0u | ~func_3(Struct_1(false), u_input.b.x, Struct_2(vec4<bool>(true, global0.a, false, var_2.x), u_input.b.x, u_input.b.x, vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 0u, global2[_wgslsmith_index_u32(59590u, 16u)], var_0), vec4<f32>(1000f, 903f, 836f, 1469f)))) <= 1u);
    return Struct_2(select(!select(vec4<bool>(global1.x, global0.a, true, true), vec4<bool>(var_2.x, false, global0.a, global1.x), var_2.x), !select(select(vec4<bool>(true, global1.x, true, false), vec4<bool>(var_2.x, false, true, true), true), select(vec4<bool>(var_3.a, var_3.a, global0.a, false), vec4<bool>(global0.a, var_3.a, global1.x, false), vec4<bool>(global1.x, false, true, true)), select(vec4<bool>(global0.a, var_3.a, var_2.x, true), vec4<bool>(true, global1.x, true, global0.a), vec4<bool>(true, var_3.a, false, var_2.x))), all(vec3<bool>(var_3.a, !var_2.x, true))), _wgslsmith_dot_vec3_i32(~(~(~u_input.b)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b.x, u_input.b.x, 1i), select(-vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(false, global1.x, global0.a)))), u_input.b.x >> (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(14997u, 82922u, var_0)), abs(~vec3<u32>(1u, var_0, 0u))), 16u)] % 32u), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(0u, u_input.a.x, 57705u, 1u)) & firstLeadingBit(abs(vec4<u32>(u_input.a.x, 0u, 11850u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - -927f)), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -848f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(228f - -636f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-593f, 1219f, 529f, -2225f)), vec4<f32>(1291f, 778f, 1000f, 1136f)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_1 {
    global2 = array<u32, 16>();
    global0 = Struct_1(!global1.x);
    global2 = array<u32, 16>();
    global1 = !func_2().a;
    global0 = Struct_1(global1.x);
    return Struct_1(any(global1.wwy));
}

fn func_1() -> bool {
    global0 = func_4(func_2(), _wgslsmith_mult_i32(select(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, -31020i, 4003i, u_input.b.x), vec4<i32>(-2147483647i, -1i, u_input.b.x, u_input.b.x)), !(u_input.b.x > -1i)), _wgslsmith_dot_vec2_i32(~firstTrailingBit(u_input.b.zz), u_input.b.zy ^ u_input.b.xx)), 2147483647i);
    global0 = Struct_1(global1.x || !(!select(global1.x, false, true)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1643f + 1829f), 1168f, _wgslsmith_div_f32(-798f, _wgslsmith_f_op_f32(-478f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -865f), global0.a)))));
    var var_1 = var_0.x;
    var var_2 = func_4(Struct_2(!select(!vec4<bool>(false, false, global1.x, true), !vec4<bool>(true, global1.x, true, false), func_2().a), abs(u_input.b.x), (max(21675i, -3857i) >> (min(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(51973u, 16u)], 16u)], global2[_wgslsmith_index_u32(42945u, 16u)]) % 32u)) | u_input.b.x, _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.a.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)])), firstLeadingBit(vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], 50401u, 4294967295u)), ~vec4<u32>(u_input.a.x, 4294967295u, 22716u, u_input.a.x)) >> ((max(vec4<u32>(u_input.a.x, 1u, global2[_wgslsmith_index_u32(36795u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(1u, 16u)], 11029u, 0u)) | vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45649u, 16u)], 16u)], 38830u, global2[_wgslsmith_index_u32(1u, 16u)], 49289u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, -349f))))), min(1i, _wgslsmith_dot_vec3_i32(u_input.b, countOneBits(min(u_input.b, vec3<i32>(u_input.b.x, -56743i, 7380i))))), min(-2147483647i, u_input.b.x) & 0i);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2027f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1656f, var_0.x, true)) - 2055f)))) > _wgslsmith_f_op_f32(var_0.x - var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = !arg_3.a;
    let var_2 = -abs(_wgslsmith_mod_i32(min(var_0.b, -1i) << (52681u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 22460i, 1i, -2147483647i), vec4<i32>(1i, 2147483647i, -25393i, u_input.b.x))));
    global2 = array<u32, 16>();
    let var_3 = u_input.b;
    return func_4(func_2(), -(~(-34197i)), firstTrailingBit(max(1i, ~reverseBits(u_input.b.x))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = false;
    global0 = Struct_1(!arg_1.a);
    var var_1 = Struct_2(!vec4<bool>(any(arg_2.a.xx), !any(vec4<bool>(true, false, false, false)), true, global0.a), abs(~(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x) << (global2[_wgslsmith_index_u32(abs(u_input.a.x), 16u)] % 32u))), u_input.b.x, arg_2.d, arg_2.e);
    let var_2 = func_5(Struct_1((true == any(global1.yw)) & (global2[_wgslsmith_index_u32(firstTrailingBit(1u), 16u)] <= var_1.d.x)), vec3<u32>(~42114u, 35707u, arg_2.d.x), arg_1, arg_1);
    var var_3 = !var_1.a;
    return func_5(Struct_1(var_3.x), vec3<u32>(u_input.a.x, 0u, ~(reverseBits(70398u) ^ ~var_1.d.x)), Struct_1(var_1.a.x), func_5(func_5(func_4(arg_2, 1i, 2147483647i), ~(var_1.d.zxy & vec3<u32>(1u, global2[_wgslsmith_index_u32(26862u, 16u)], arg_2.d.x)), Struct_1(var_0), var_2), arg_2.d.xwx, Struct_1(~9405u != _wgslsmith_dot_vec3_u32(arg_2.d.wzx, vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(var_1.d.x, 16u)]))), func_4(arg_2, var_1.c >> (~13380u % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-32613i, arg_2.c, 30182i), vec3<i32>(-1i, 41794i, 1490i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(219f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1813f, 283f, global0.a))), -1304f))), func_5(Struct_1(global1.x), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(70340u, 16u)], 21693u, global2[_wgslsmith_index_u32(4764u, 16u)])), ~vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 0u)), select(min(vec3<u32>(4294967295u, 25705u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(vec3<u32>(0u, 1u, u_input.a.x)), any(vec3<bool>(false, true, false)))), Struct_1(false), Struct_1(func_1())), func_2());
    global1 = !func_2().a;
    var var_1 = Struct_1(true);
    global1 = !vec4<bool>(any(global1.yxx), true, var_1.a, false);
    var_1 = Struct_1(func_6(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1666f, _wgslsmith_div_f32(-139f, 260f), _wgslsmith_f_op_f32(sign(-1000f))))), func_6(vec3<f32>(1f, 1f, 1f), func_6(vec3<f32>(-1000f, 1000f, -324f), Struct_1(true), Struct_2(vec4<bool>(false, false, global0.a, global1.x), 6339i, u_input.b.x, vec4<u32>(16882u, 4294967295u, u_input.a.x, u_input.a.x), vec4<f32>(774f, -316f, 529f, 1389f))), Struct_2(vec4<bool>(var_0.a, true, true, true), firstTrailingBit(u_input.b.x), u_input.b.x, ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 33296u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-588f, -1510f, -564f, 2699f) + vec4<f32>(-1162f, -954f, -1062f, -1168f)))), func_2()).a);
    var_0 = func_4(func_2(), u_input.b.x, -u_input.b.x);
    let var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-u_input.b.x, firstLeadingBit(u_input.b.x)) & u_input.b.xy, -(u_input.b.xy | vec2<i32>(0i, u_input.b.x))), select(u_input.a.x, 85976u, true));
}

