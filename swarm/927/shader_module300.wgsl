struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(1390f, 593f, 1450f), vec3<f32>(-256f, -1000f, 770f), vec3<f32>(-418f, 738f, -1688f), vec3<f32>(-772f, -1411f, -1755f), vec3<f32>(1175f, -1075f, 575f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    var_0 = u_input.b;
    var var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, 0i | (-6416i | u_input.c), (-36587i >> (1u % 32u)) << (~select(1u, u_input.b, arg_1) % 32u)), vec3<i32>(~1i, ~(~(u_input.a | u_input.a)), u_input.c));
    var_0 = 1u;
    return 212f;
}

fn func_4(arg_0: vec4<f32>) -> f32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(102f - arg_0.x) * _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), true))), Struct_1(u_input.d.yz), select(-reverseBits(vec2<i32>(-1i, u_input.c)), vec2<i32>(~0i, abs(2147483647i)), any(vec3<bool>(true, true, true)))), Struct_1(u_input.d.xz), select(u_input.d.x, u_input.b, true));
    let var_1 = false;
    let var_2 = Struct_2(var_0.a.a, Struct_1(~(~vec2<u32>(4294967295u, u_input.b))), vec2<i32>(-(-u_input.c ^ var_0.a.c.x), _wgslsmith_div_i32(var_0.a.c.x, u_input.c)));
    let var_3 = Struct_4(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.c.x, 28753i, -70452i, var_2.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.c.x, var_0.a.c.x, var_0.a.c.x, 11973i), vec4<i32>(var_0.a.c.x, 506i, 25017i, 12619i), vec4<i32>(1i, 13462i, var_2.c.x, var_2.c.x))) << (~vec4<u32>(u_input.d.x, 15239u, var_0.a.b.a.x, u_input.d.x) % vec4<u32>(32u))), _wgslsmith_mod_vec2_u32(~firstTrailingBit(reverseBits(u_input.d.xy)), _wgslsmith_mult_vec2_u32(firstTrailingBit(abs(var_2.b.a)), u_input.d.zw)), ~firstLeadingBit(u_input.d), Struct_2(_wgslsmith_f_op_f32(max(arg_0.x, var_2.a)), Struct_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_2.b.a.x), vec2<u32>(4294967295u, var_0.b.a.x))), vec2<i32>(-1i) * -vec2<i32>(var_0.a.c.x, var_2.c.x)), var_2.b);
    let var_4 = _wgslsmith_mult_vec2_i32(firstTrailingBit(~_wgslsmith_mod_vec2_i32(var_2.c, vec2<i32>(var_3.d.c.x, 1i))) << (_wgslsmith_div_vec2_u32(vec2<u32>(33680u << (var_2.b.a.x % 32u), ~var_0.a.b.a.x), ~(vec2<u32>(4294967295u, var_2.b.a.x) << (vec2<u32>(var_0.a.b.a.x, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u)), var_3.d.c);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    global0 = array<vec3<f32>, 5>();
    global0 = array<vec3<f32>, 5>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), arg_0, _wgslsmith_f_op_f32(min(-1411f, arg_0)), _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))) * -137f)));
    global0 = array<vec3<f32>, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-312f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec4<f32>(arg_0, arg_0, -120f, -145f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, arg_2)), _wgslsmith_f_op_f32(arg_2 - arg_0))))), Struct_1(firstTrailingBit(select(arg_3, u_input.d.xw, false))), firstLeadingBit(abs(vec2<i32>(countOneBits(0i), ~(-1i)))));
    return var_1.b.a.x;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec2<u32>(~func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1211f)) - -1341f), max(~1u, arg_0.x), -130f, ~(~arg_0)), 42812u);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-528f))));
    var var_2 = Struct_2(-1435f, Struct_1(vec2<u32>(~var_0.x, _wgslsmith_mult_u32(firstTrailingBit(8265u), 4294967295u))), vec2<i32>(-_wgslsmith_mod_i32(u_input.c, countOneBits(u_input.a)), u_input.a));
    var var_3 = (vec2<i32>(_wgslsmith_sub_i32(24610i & var_2.c.x, 39609i), var_2.c.x) << (u_input.d.zx % vec2<u32>(32u))) << (select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_2.b.a.x), var_2.b.a) << (arg_0 % vec2<u32>(32u)), reverseBits(u_input.d.yy)), max(_wgslsmith_add_vec2_u32(var_0, u_input.d.wx), vec2<u32>(var_0.x, firstLeadingBit(var_2.b.a.x))), vec2<bool>(any(vec4<bool>(false, true, true, true)) & false, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))) % vec2<u32>(32u));
    var var_4 = u_input.a;
    return ~var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 5>();
    let var_0 = u_input.d.x;
    global0 = array<vec3<f32>, 5>();
    let var_1 = func_1(u_input.d.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-553f, -141f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -392f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1250f + -249f) + -422f)), _wgslsmith_f_op_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(-1517f)), _wgslsmith_f_op_f32(922f + -2177f), _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(-1570f * -839f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1315f * -2593f) + _wgslsmith_div_f32(496f, -166f)))), u_input.d.wyw);
}

