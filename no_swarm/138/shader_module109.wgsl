struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33289u;

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false));

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-189f, 288f, -441f, -416f), vec4<f32>(-403f, -469f, 1138f, -1387f), vec4<f32>(213f, 591f, -450f, -1740f), vec4<f32>(1149f, -703f, 1708f, 2757f), vec4<f32>(1170f, -1618f, -1458f, -201f), vec4<f32>(1274f, -144f, 996f, -104f), vec4<f32>(-1000f, -166f, -210f, 1257f), vec4<f32>(1000f, -495f, -512f, -173f), vec4<f32>(-692f, 106f, -1657f, -991f), vec4<f32>(743f, -761f, -283f, -671f), vec4<f32>(804f, -825f, -436f, 152f), vec4<f32>(-217f, -2279f, -1182f, -396f), vec4<f32>(-543f, -668f, 764f, 612f), vec4<f32>(-1435f, 1000f, 668f, -284f), vec4<f32>(138f, -551f, -1077f, -183f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<i32> {
    let var_0 = 1i << (_wgslsmith_sub_u32(1u, 0u) % 32u);
    global2 = vec2<i32>(abs(global2.x), u_input.a.x);
    let var_1 = ~vec4<i32>(global2.x, var_0, var_0 & _wgslsmith_sub_i32(global2.x, _wgslsmith_mod_i32(global2.x, u_input.a.x)), ~(-20132i));
    return (firstTrailingBit(reverseBits(~vec2<i32>(var_0, 39441i))) ^ vec2<i32>(global2.x, ~reverseBits(var_0))) & vec2<i32>(~12170i, 0i);
}

fn func_2() -> u32 {
    var var_0 = Struct_1(vec3<u32>(4294967295u, 8197u, 1u));
    let var_1 = Struct_1(select(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, 23815u, var_0.a.x), vec3<u32>(30478u, var_0.a.x, 4294967295u), var_0.a) | var_0.a), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(var_0.a.x, 11497u, var_0.a.x)), var_0.a), vec3<bool>(false, select(u_input.a.x != u_input.a.x, any(vec2<bool>(true, true)), true), false)));
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(153444u, var_0.a.x, min(~var_0.a.x, var_1.a.x)), ~_wgslsmith_mod_vec3_u32(var_1.a >> (vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x) % vec3<u32>(32u)), vec3<u32>(var_0.a.x, 98694u, var_1.a.x))));
    let var_3 = var_2;
    global2 = func_3();
    return firstTrailingBit(1u);
}

fn func_1() -> Struct_1 {
    let var_0 = 32329i;
    global3 = array<vec4<f32>, 15>();
    var var_1 = Struct_1(~(~vec3<u32>(1u, func_2(), abs(1u))));
    var_1 = Struct_1(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(2631u, var_1.a.x, 45738u), vec3<u32>(var_1.a.x, 0u, 1u)), var_1.a.x), var_1.a.x, _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_1.a.xx, var_1.a.xz), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 16974u) ^ vec2<u32>(var_1.a.x, var_1.a.x), firstLeadingBit(vec2<u32>(var_1.a.x, 1u))))));
    global0 = max(min(_wgslsmith_mult_u32(var_1.a.x, 9164u), countOneBits(max(~var_1.a.x, 4294967295u))), 31307u);
    return Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_1.a.x, var_1.a.x, var_1.a.x) ^ vec3<u32>(4294967295u, var_1.a.x, var_1.a.x)), _wgslsmith_mod_vec3_u32(~(var_1.a ^ var_1.a), vec3<u32>(_wgslsmith_mod_u32(var_1.a.x, 0u), func_2(), ~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    var var_2 = firstTrailingBit(vec3<u32>((_wgslsmith_dot_vec2_u32(var_0.a.zz, var_1.a.xx) << (34u % 32u)) >> (var_0.a.x % 32u), 0u, ~max(var_0.a.x, ~10410u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1705f + _wgslsmith_f_op_f32(f32(-1f) * -572f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(987f)), _wgslsmith_div_f32(1176f, 2456f), 1i != global2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -685f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1162f * _wgslsmith_f_op_f32(abs(526f))), _wgslsmith_f_op_f32(select(-270f, -644f, true))), _wgslsmith_f_op_f32(-1059f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-647f)) + -1653f))), var_0.a, ~func_3(), vec4<i32>(~global2.x, select(_wgslsmith_clamp_i32(select(global2.x, 13765i, true), 0i, select(-2147483647i, global2.x, false)), global2.x, true), abs(2147483647i | global2.x) & 2147483647i, global2.x));
}

