struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(21361i, 7721i), vec2<i32>(-1i, 10593i));

var<private> global1: array<Struct_5, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, -1980f, -397f, -138f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, -358f, 568f, 622f) * vec4<f32>(-961f, -579f, 1336f, -664f)), vec4<f32>(1551f, -1391f, -176f, -1087f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, 310f, -269f, -1106f) - vec4<f32>(-1000f, -491f, -815f, 722f)), _wgslsmith_div_vec4_f32(vec4<f32>(-728f, 1186f, 671f, -1528f), vec4<f32>(-182f, 960f, -252f, -122f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-1934f, -566f, -383f, -1279f)))));
    var var_1 = abs(select(vec3<u32>(arg_0.x, arg_0.x, reverseBits(~arg_0.x)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 82387u), vec3<u32>(21220u, arg_0.x, 40237u)), ~vec3<u32>(u_input.b, 1u, 1u)), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_0.x, 4294967295u)), ~u_input.b)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(select(453f, var_0.x, true));
    let var_3 = vec4<i32>(~2147483647i, u_input.a, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(global0.a.x, 34171i, global0.a.x, global0.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(0i & u_input.a, abs(-27916i), global0.a.x, u_input.a >> (var_1.x % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, 0i, 0i, global0.b.x), min(vec4<i32>(global0.a.x, u_input.a, global0.a.x, -43182i), vec4<i32>(1i, 13236i, 28363i, -25962i))))), abs(-_wgslsmith_div_i32(-1i, 2147483647i)));
    var var_4 = vec2<f32>(527f, _wgslsmith_f_op_f32(exp2(var_0.x)));
    return 13267u;
}

fn func_2() -> i32 {
    global1 = array<Struct_5, 5>();
    let var_0 = ~vec4<u32>(~u_input.b, 0u, func_3(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 46308u), u_input.c))), ~4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(312f, -1264f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(554f, 1264f, -252f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, 695f, -1510f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-967f, -1052f, 1000f) - vec3<f32>(1000f, -2876f, 1251f))), false)))));
    global1 = array<Struct_5, 5>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(-1158f - 1000f)))), var_1.x)));
    return -2147483647i;
}

fn func_1() -> i32 {
    global1 = array<Struct_5, 5>();
    var var_0 = 35946i;
    global1 = array<Struct_5, 5>();
    var_0 = firstLeadingBit(_wgslsmith_mod_i32(-_wgslsmith_add_i32(14546i, global0.a.x), u_input.a));
    var var_1 = -func_2();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(_wgslsmith_mult_vec4_i32(max(vec4<i32>(global0.a.x, 7657i, 0i, u_input.a), vec4<i32>(global0.a.x, u_input.a, -3536i, -52120i)) << (vec4<u32>(u_input.c.x, u_input.b, 19436u, u_input.b) % vec4<u32>(32u)), select(~vec4<i32>(16273i, 6351i, global0.b.x, u_input.a), max(vec4<i32>(global0.b.x, u_input.a, global0.a.x, 1i), vec4<i32>(u_input.a, -8604i, 0i, 6961i)), vec4<bool>(false, false, false, false)))), vec4<i32>(-select(-36754i, -2147483647i, true), -countOneBits(global0.b.x), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-16243i, 57311i, global0.a.x), vec3<i32>(u_input.a, 49329i, 21284i)) >> (u_input.b % 32u)), func_1()), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false), true), true));
    global1 = array<Struct_5, 5>();
    global0 = Struct_1(countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, -1i), var_0.zz)), vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(var_0.x), _wgslsmith_mod_i32(u_input.a, -34714i), -u_input.a) | 2147483647i, _wgslsmith_dot_vec4_i32(select(~var_0, var_0, vec4<bool>(true, false, true, false)), firstTrailingBit(var_0 & var_0))));
    let var_1 = global1[_wgslsmith_index_u32(52672u, 5u)];
    var var_2 = vec2<bool>(true, !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
    global1 = array<Struct_5, 5>();
    global1 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(1u, firstTrailingBit(-162i), vec4<u32>(u_input.b, 1u, ~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) ^ select(4294967295u, 0u, any(vec4<bool>(true, var_2.x, var_2.x, false))), firstTrailingBit(~(~u_input.c.x))), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), var_0.xxz), -var_0.yxy), i32(-1i) * -73663i) | -global0.a.x, (~_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, u_input.c.x), vec3<u32>(0u, 4294967295u, 1u)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 1220u, 0u), vec3<u32>(u_input.b, 12187u, 126529u), vec3<u32>(15050u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))) & firstLeadingBit(~vec3<u32>(4294967295u, 0u, u_input.b) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 5818u, u_input.c.x))));
}

