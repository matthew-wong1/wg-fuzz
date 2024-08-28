struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(12337u);

var<private> global1: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-390f, -354f, 1201f), vec3<f32>(932f, -797f, -949f), vec3<f32>(1000f, 733f, -1946f), vec3<f32>(1000f, 217f, 2218f), vec3<f32>(-425f, -320f, 1580f), vec3<f32>(-1173f, -2454f, -996f), vec3<f32>(-371f, 1321f, -641f), vec3<f32>(-2201f, 491f, 340f), vec3<f32>(-548f, 1642f, -1152f), vec3<f32>(259f, 1080f, 1068f), vec3<f32>(-1504f, 811f, 774f), vec3<f32>(-1231f, 642f, 761f), vec3<f32>(-1000f, -375f, -1000f), vec3<f32>(365f, 1060f, 123f), vec3<f32>(-535f, 984f, 341f), vec3<f32>(573f, 760f, -429f), vec3<f32>(1179f, -1032f, 214f), vec3<f32>(1023f, 499f, 323f), vec3<f32>(691f, -530f, -368f), vec3<f32>(249f, 966f, 1301f), vec3<f32>(-384f, -784f, 1072f), vec3<f32>(-1042f, 2604f, -715f), vec3<f32>(-852f, 834f, -352f), vec3<f32>(489f, -1651f, -2194f), vec3<f32>(1000f, 485f, 1000f), vec3<f32>(255f, 890f, -1970f), vec3<f32>(716f, 1196f, -729f), vec3<f32>(544f, -1745f, 977f), vec3<f32>(1934f, 1150f, -167f), vec3<f32>(-192f, -2119f, -119f), vec3<f32>(409f, -336f, -167f), vec3<f32>(-685f, -769f, 2497f));

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> vec2<i32> {
    global2 = 4294967295u;
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_i32(min(-19930i, 78887i), reverseBits(-56770i));
    global1 = array<vec3<f32>, 32>();
    var_0 = select(abs(-54743i), 27795i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-546f)) * _wgslsmith_f_op_f32(f32(-1f) * -1504f))) == -513f);
    return u_input.a.yx;
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = Struct_2(u_input.a.zyz, min(_wgslsmith_mult_vec2_u32(max(vec2<u32>(0u, global0.a), _wgslsmith_add_vec2_u32(vec2<u32>(global0.a, u_input.b), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 27998u), ~vec2<u32>(49867u, u_input.b))), select(~firstLeadingBit(vec2<u32>(global0.a, 1u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(10680u, 28082u), vec2<u32>(1u, 27694u)), global0.a >> (0u % 32u)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))), any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), max(max(~firstTrailingBit(vec2<u32>(23118u, u_input.b)), vec2<u32>(u_input.b >> (22459u % 32u), 1u)), ~vec2<u32>(u_input.b, 33829u) ^ firstTrailingBit(max(vec2<u32>(global0.a, u_input.b), vec2<u32>(1u, u_input.b)))));
    var var_1 = countOneBits(-1306i);
    let var_2 = _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(~_wgslsmith_clamp_u32(18984u, reverseBits(46842u), 0u), ~(_wgslsmith_mult_u32(global0.a, var_0.d.x) >> (~global0.a % 32u))));
    let var_3 = max(-1i, _wgslsmith_clamp_i32(-13689i, ~u_input.a.x, -17023i) & select(_wgslsmith_mult_i32(0i, u_input.a.x), i32(-1i) * -69291i, true)) | (-(max(u_input.a.x, 17639i) >> ((1u >> (var_0.d.x % 32u)) % 32u)) << (var_0.b.x % 32u));
    var var_4 = Struct_2(~vec3<i32>(min(-1i ^ u_input.a.x, u_input.a.x), 1i, i32(-1i) * -var_0.a.x), abs(min(select(~vec2<u32>(1u, 23690u), ~vec2<u32>(global0.a, 4294967295u), select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, var_0.c), true)), vec2<u32>(select(var_2, global0.a, var_0.c), global0.a))), true != ((var_2 < (var_0.d.x << (20900u % 32u))) & !(!var_0.c)), var_0.b);
    return max(vec2<u32>(4294967295u, var_4.b.x), vec2<u32>(~4294967295u, u_input.b));
}

fn func_2() -> Struct_3 {
    global0 = Struct_1(global0.a);
    var var_0 = -62767i;
    var var_1 = Struct_3(abs(u_input.a) << ((~(vec4<u32>(global0.a, u_input.b, 0u, 22941u) ^ vec4<u32>(31219u, 73187u, global0.a, 1u)) ^ ~(vec4<u32>(global0.a, 4294967295u, 19934u, u_input.b) & vec4<u32>(0u, global0.a, 61976u, 43874u))) % vec4<u32>(32u)), Struct_2(min(abs(u_input.a.wyz), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) >> (vec3<u32>(u_input.b, global0.a, u_input.b) % vec3<u32>(32u)), -u_input.a.wxx)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), ~vec2<u32>(0u, u_input.b)), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_div_vec2_u32(select(~vec2<u32>(u_input.b, u_input.b), func_3(637f), vec2<bool>(true, true)), ~vec2<u32>(u_input.b, 0u) & select(vec2<u32>(4294967295u, global0.a), vec2<u32>(4294967295u, global0.a), false))));
    var var_2 = ~(~var_1.b.b);
    global0 = Struct_1(17353u);
    return Struct_3(u_input.a, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 32>();
    let var_0 = u_input.a.x;
    let var_1 = ~u_input.a.xyx;
    var var_2 = Struct_2(vec3<i32>(-1i) * -var_1, select(vec2<u32>(_wgslsmith_add_u32(u_input.b & u_input.b, ~u_input.b), _wgslsmith_div_u32(1u, u_input.b | u_input.b)), ~(~vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, true)), false, ~firstTrailingBit(vec2<u32>(global0.a, select(global0.a, u_input.b, true))));
    let var_3 = _wgslsmith_div_vec2_i32(-min(func_1(), firstTrailingBit(abs(u_input.a.yz))), max(u_input.a.wx, _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(var_1.yy, var_2.a.yz), vec2<i32>(-var_2.a.x, ~u_input.a.x))));
    let var_4 = func_2();
    let var_5 = ~3832u;
    let var_6 = select(select(!select(select(vec3<bool>(true, true, var_2.c), vec3<bool>(var_4.b.c, var_4.b.c, var_2.c), var_4.b.c), !vec3<bool>(var_4.b.c, var_2.c, var_4.b.c), vec3<bool>(false, var_2.c, true)), !vec3<bool>(select(false, false, true), !var_2.c, func_2().b.c), -57873i > ((var_0 & var_2.a.x) >> (u_input.b % 32u))), vec3<bool>(true, var_2.c, false), select(select(vec3<bool>(var_4.b.c & var_4.b.c, true || var_2.c, false), vec3<bool>(!var_4.b.c, true, any(vec2<bool>(true, true))), vec3<bool>(all(vec4<bool>(var_2.c, false, false, var_2.c)), func_2().b.c, true)), vec3<bool>(false, var_4.b.c, false), vec3<bool>(!var_4.b.c, false, any(!vec4<bool>(var_4.b.c, true, var_2.c, var_2.c)))));
    let var_7 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, ~var_4.a.x, ~(-12655i)), vec3<i32>(var_4.a.x, var_1.x, u_input.a.x)), var_2.b, true, _wgslsmith_div_vec2_u32(abs(var_4.b.d), ~(~(~var_4.b.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(_wgslsmith_dot_vec2_i32(var_3, var_7.a.zx), var_0, var_2.a.x) | (-var_7.a & _wgslsmith_mult_vec3_i32(var_2.a, vec3<i32>(var_4.a.x, 25647i, var_1.x)))), max(4948u, var_2.b.x), 1574f);
}

