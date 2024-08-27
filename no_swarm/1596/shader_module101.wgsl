struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(31226i, 37005u, 1000f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    return Struct_2(arg_2.a, -(~vec3<i32>(arg_0.a, firstTrailingBit(8810i), arg_0.a)));
}

fn func_3() -> u32 {
    global2 = Struct_3(Struct_1(_wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~firstLeadingBit(u_input.a.x)), _wgslsmith_sub_u32(global1.x, 73961u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-789f)))));
    let var_0 = global2.a.c;
    global0 = -2147483647i >= ~(-(~reverseBits(u_input.b)));
    var var_1 = countOneBits(vec4<u32>(~1u, 52124u, ~global1.x, ~abs(global1.x)));
    global2 = Struct_3(Struct_1(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-17672i, global2.a.a) | vec2<i32>(1876i, -31002i), u_input.a.xz)), 20537u, 562f));
    return min(~global1.x, ~global2.a.b);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> vec4<u32> {
    var var_0 = global2.a.c;
    global2 = Struct_3(Struct_1(_wgslsmith_div_i32(-u_input.b << ((global2.a.b ^ 20572u) % 32u), firstTrailingBit(u_input.b)), _wgslsmith_mult_u32(~global2.a.b, arg_1.x), _wgslsmith_f_op_f32(global2.a.c - 267f)));
    let var_1 = _wgslsmith_sub_i32(abs(-20579i), select(u_input.b, 1i, any(vec3<bool>(true, arg_0, true))));
    let var_2 = func_2(Struct_1(u_input.a.x, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-918f + global2.a.c) - global2.a.c))), global2.a.c, Struct_2(select(!select(vec4<bool>(false, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, false), true), select(vec4<bool>(false, arg_0, true, false), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, arg_0, false, true), false), u_input.a.x <= -2147483647i), vec4<bool>(true, !arg_0, !arg_0, arg_1.x > arg_1.x)), u_input.a));
    var var_3 = Struct_1(-5498i, func_3(), -384f);
    return firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(72934u, 0u, 46860u, 11583u), vec4<u32>(83388u, 42123u, global2.a.b, 0u)), global2.a.b, 1u & global1.x, ~1u), ~firstTrailingBit(vec4<u32>(global1.x, 59824u, 0u, global2.a.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, 11872u, 4294967295u, arg_1.x) ^ vec4<u32>(arg_1.x, 83279u, var_3.b, arg_1.x), ~vec4<u32>(4294967295u, 23699u, var_3.b, arg_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(77418u, 1479u, var_3.b, arg_1.x), vec4<u32>(arg_1.x, 20560u, 38899u, var_3.b))))) | _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, ~1u, ~var_3.b), ~vec4<u32>(arg_1.x, 1u, var_3.b, 1u)), min(countOneBits(vec4<u32>(var_3.b, 91133u, arg_1.x, 1u)), vec4<u32>(global1.x, 10765u, global2.a.b, 0u)) >> (vec4<u32>(~4294967295u, ~arg_1.x, ~106739u, ~global2.a.b) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec4_u32((~vec4<u32>(4294967295u, 1u, 4294967295u, 1u) << (abs(vec4<u32>(global1.x, 27831u, 0u, global1.x)) % vec4<u32>(32u))) | vec4<u32>(~global1.x, max(24371u, global2.a.b), _wgslsmith_mult_u32(44589u, 5674u), 4294967295u), select(func_1(global1.x <= global2.a.b, vec2<u32>(global1.x, 1u)), ~vec4<u32>(35595u, global1.x, global1.x, 22569u), !func_2(Struct_1(-48324i, global2.a.b, 170f), -182f, Struct_2(vec4<bool>(true, false, false, true), u_input.a)).a), vec4<u32>(_wgslsmith_mult_u32(15674u ^ global1.x, global1.x), min(1u, 69895u) & firstTrailingBit(global1.x), select(global1.x, 37062u, false) >> (firstLeadingBit(53499u) % 32u), 31411u));
    global1 = vec4<u32>(~min(59315u ^ _wgslsmith_add_u32(global1.x, 39743u), 1436u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~max(var_0.yxx, global1.zww), firstTrailingBit(abs(var_0.wzz))), ~var_0.x, _wgslsmith_clamp_u32(var_0.x, _wgslsmith_mod_u32(12612u, global1.x), global1.x)), ~_wgslsmith_dot_vec3_u32(min(var_0.ywz, global1.zxy) << ((global1.wxz & global1.wzx) % vec3<u32>(32u)), ~global1.yxw >> (~global1.zwx % vec3<u32>(32u))), reverseBits(_wgslsmith_sub_u32(global1.x, 0u)));
    global2 = Struct_3(global2.a);
    global0 = any(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, true, true), false), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), func_2(Struct_1(global2.a.a, 14825u, global2.a.c), 2346f, Struct_2(vec4<bool>(false, false, true, false), u_input.a)).a.yxx), true || select(false, false, true)), !func_2(Struct_1(global2.a.a, 1u, -594f), global2.a.c, Struct_2(vec4<bool>(true, false, true, true), u_input.a)).a.xyx, any(vec4<bool>(true, true, true, true))));
    global0 = false;
    var var_1 = u_input.b;
    global1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(var_0.xyz, global1.wwz), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), global1.wx), max(global2.a.b, 12785u)), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(0u, global2.a.b, global1.x), 1u, abs(40930u))) ^ select(vec4<u32>(66895u, 4294967295u, _wgslsmith_dot_vec2_u32(global1.yy, vec2<u32>(var_0.x, global1.x)), 0u), vec4<u32>(global1.x, _wgslsmith_add_u32(var_0.x, 0u), func_1(false, var_0.xz).x, 1u), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~(~firstLeadingBit(u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, global2.a.a) | vec3<i32>(u_input.a.x, 37848i, global2.a.a), -u_input.a) ^ u_input.a));
}

