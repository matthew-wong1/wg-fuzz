struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 19290u, 0u), vec3<u32>(4294967295u, 49027u, 1u), vec3<u32>(148836u, 47104u, 79720u), vec3<u32>(1u, 66466u, 57460u), vec3<u32>(1u, 53405u, 86713u), vec3<u32>(1u, 5411u, 0u), vec3<u32>(57362u, 0u, 29452u), vec3<u32>(1u, 16783u, 1u), vec3<u32>(4294967295u, 1u, 13403u), vec3<u32>(0u, 18989u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 0u, 33027u), vec3<u32>(4294967295u, 21333u, 5834u), vec3<u32>(19524u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 52019u), vec3<u32>(0u, 55700u, 58909u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 49409u), vec3<u32>(47277u, 1u, 1u), vec3<u32>(0u, 18549u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 37873u, 4294967295u), vec3<u32>(38881u, 38536u, 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = array<vec3<u32>, 26>();
    global0 = 24278u;
    let var_0 = arg_0.a;
    let var_1 = _wgslsmith_sub_u32(2162u, 0u);
    global2 = array<vec3<u32>, 26>();
    return arg_0.a;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = u_input.a;
    global2 = array<vec3<u32>, 26>();
    let var_1 = select(false, false, false) || true;
    global1 = func_1(Struct_2(func_1(Struct_2(Struct_1(vec3<f32>(global1.a.x, 132f, global1.a.x), global1.b), func_1(Struct_2(Struct_1(vec3<f32>(global1.a.x, -134f, global1.a.x), vec4<i32>(1i, global1.b.x, 793i, arg_2.x)), Struct_1(vec3<f32>(global1.a.x, global1.a.x, -1197f), vec4<i32>(1i, 1i, -2147483647i, -15849i)), Struct_1(global1.a, vec4<i32>(arg_2.x, 2147483647i, arg_2.x, arg_2.x)), 21448i, -1589f)), Struct_1(vec3<f32>(985f, -644f, global1.a.x), vec4<i32>(global1.b.x, -2595i, global1.b.x, 2147483647i)), ~35900i, _wgslsmith_f_op_f32(global1.a.x - global1.a.x))), func_1(Struct_2(func_1(Struct_2(Struct_1(vec3<f32>(global1.a.x, global1.a.x, -1346f), global1.b), Struct_1(global1.a, vec4<i32>(global1.b.x, arg_2.x, 35334i, 0i)), Struct_1(vec3<f32>(-353f, 1000f, global1.a.x), global1.b), 30887i, global1.a.x)), Struct_1(global1.a, global1.b), Struct_1(global1.a, vec4<i32>(-32764i, -71417i, global1.b.x, -1i)), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(min(-135f, 1376f)))), Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.x, global1.a.x, 647f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.a.x, 509f, -1635f))))), _wgslsmith_mod_vec4_i32(global1.b, min(global1.b, global1.b))), _wgslsmith_div_i32(~(global1.b.x ^ 0i), 0i), 864f));
    global2 = array<vec3<u32>, 26>();
    return func_1(Struct_2(func_1(Struct_2(Struct_1(global1.a, global1.b), func_1(Struct_2(Struct_1(vec3<f32>(369f, global1.a.x, global1.a.x), vec4<i32>(0i, arg_2.x, global1.b.x, 2147483647i)), Struct_1(vec3<f32>(global1.a.x, 270f, global1.a.x), global1.b), Struct_1(vec3<f32>(-1973f, global1.a.x, global1.a.x), vec4<i32>(2147483647i, arg_2.x, 10266i, -14925i)), arg_2.x, -1158f)), func_1(Struct_2(Struct_1(global1.a, vec4<i32>(16640i, 12923i, arg_2.x, global1.b.x)), Struct_1(vec3<f32>(global1.a.x, -636f, global1.a.x), global1.b), Struct_1(global1.a, global1.b), global1.b.x, -361f)), func_1(Struct_2(Struct_1(global1.a, global1.b), Struct_1(global1.a, global1.b), Struct_1(global1.a, global1.b), -36112i, -419f)).b.x, _wgslsmith_f_op_f32(max(global1.a.x, 1088f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, global1.a.x, global1.a.x) + vec3<f32>(global1.a.x, global1.a.x, -1081f))), -(global1.b | global1.b)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-638f, global1.a.x, global1.a.x) * vec3<f32>(-776f, 212f, 1628f))), ~(~global1.b)), _wgslsmith_div_i32(-16173i, global1.b.x) << (_wgslsmith_div_u32(var_0, _wgslsmith_sub_u32(u_input.a, u_input.a)) % 32u), _wgslsmith_f_op_f32(ceil(global1.a.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_2, Struct_1(global1.a, ~((arg_2.b << (vec4<u32>(u_input.a, 87440u, 26413u, u_input.a) % vec4<u32>(32u))) ^ arg_2.b)), arg_2, -1i, _wgslsmith_f_op_f32(sign(-1689f)));
    let var_1 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(abs(_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(global1.b.x, var_0.d, 2147483647i, 8930i))), _wgslsmith_dot_vec2_i32(arg_2.b.yw, vec2<i32>(1i, 2147483647i)), -global1.b.x), ~vec3<i32>(~(-13381i), 0i, _wgslsmith_dot_vec3_i32(~arg_2.b.xyw, countOneBits(global1.b.wxw))), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b.x, var_0.a.b.x, firstLeadingBit(_wgslsmith_mod_i32(47230i, 31027i))), _wgslsmith_sub_vec3_i32(-var_0.c.b.wwx, firstLeadingBit(~var_0.a.b.xyx))));
    let var_2 = Struct_2(arg_2, Struct_1(var_0.b.a, -global1.b), func_3(arg_0.x, arg_0.x, abs(var_0.c.b.zwx)), func_3(!all(arg_0.xx), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.b.b, vec4<i32>(-10590i, 2423i, var_0.d, arg_2.b.x)), _wgslsmith_mod_i32(arg_2.b.x, -60098i)) <= 0i, reverseBits(~(~vec3<i32>(var_1.x, var_0.c.b.x, arg_2.b.x)))).b.x, var_0.b.a.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.a.x)) - 2611f);
    var var_4 = vec2<u32>(~_wgslsmith_add_u32(9108u, _wgslsmith_mod_u32(firstLeadingBit(32215u), u_input.a >> (u_input.a % 32u))), u_input.a);
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(~1u, ~u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a << (u_input.a % 32u)), ~firstLeadingBit(vec2<u32>(u_input.a, var_4.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_4.x), vec2<u32>(var_4.x, var_4.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(18549u, 14917u)))), min(firstTrailingBit(vec2<u32>(1196u, 7337u)), vec2<u32>(1u << (var_4.x % 32u), _wgslsmith_mod_u32(var_4.x, 70235u)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global2 = array<vec3<u32>, 26>();
    let var_0 = Struct_1(global1.a, countOneBits(vec4<i32>(firstLeadingBit(-1i), ~arg_0.d, 2147483647i, 1i)) << (vec4<u32>(_wgslsmith_sub_u32(39263u, ~arg_1.x), arg_2, _wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a, arg_1.x)), func_4(vec3<bool>(true, true, true), any(vec2<bool>(true, true)), func_3(false, false, vec3<i32>(-2147483647i, arg_0.d, arg_0.c.b.x)))) % vec4<u32>(32u)));
    global0 = arg_1.x;
    global2 = array<vec3<u32>, 26>();
    global1 = var_0;
    return Struct_1(arg_0.a.a, arg_0.c.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    global1 = arg_1.a;
    global1 = arg_1.a;
    global0 = ~_wgslsmith_sub_u32(firstLeadingBit(~(u_input.a >> (u_input.a % 32u))), 1u);
    var var_0 = arg_1.c;
    global2 = array<vec3<u32>, 26>();
    return _wgslsmith_div_u32(117616u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, u_input.a, 1u, ~u_input.a | min(u_input.a, 0u)), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a, 55771u, u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 70857u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, 38470u))), vec4<u32>(u_input.a, u_input.a, 4825u, u_input.a) << (~vec4<u32>(56871u, 1u, u_input.a, 1u) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32((u_input.a ^ 4294967295u) << (firstLeadingBit(27483u) % 32u), ~u_input.a, ~30666u) | func_5(Struct_2(Struct_1(global1.a, vec4<i32>(-911i, 0i, -2147483647i, 0i)), func_1(Struct_2(Struct_1(global1.a, vec4<i32>(global1.b.x, -3268i, global1.b.x, -5741i)), Struct_1(global1.a, vec4<i32>(global1.b.x, -2147483647i, -2147483647i, -4342i)), Struct_1(vec3<f32>(-801f, global1.a.x, global1.a.x), vec4<i32>(global1.b.x, 0i, 4228i, -26803i)), global1.b.x, 801f)), func_2(Struct_2(Struct_1(global1.a, global1.b), Struct_1(vec3<f32>(-883f, -254f, -1410f), global1.b), Struct_1(vec3<f32>(global1.a.x, 762f, global1.a.x), vec4<i32>(global1.b.x, 2147483647i, 58115i, global1.b.x)), -30464i, global1.a.x), vec2<u32>(u_input.a, 1u), 1u, global1.a.x), -2147483647i, func_1(Struct_2(Struct_1(global1.a, vec4<i32>(1i, global1.b.x, global1.b.x, 1i)), Struct_1(vec3<f32>(global1.a.x, -153f, global1.a.x), global1.b), Struct_1(vec3<f32>(global1.a.x, global1.a.x, global1.a.x), global1.b), global1.b.x, -589f)).a.x), Struct_2(Struct_1(global1.a, global1.b), func_3(false, true, vec3<i32>(global1.b.x, global1.b.x, global1.b.x)), Struct_1(vec3<f32>(global1.a.x, -268f, 409f), vec4<i32>(global1.b.x, -778i, global1.b.x, global1.b.x)), reverseBits(global1.b.x), _wgslsmith_f_op_f32(-global1.a.x)), vec2<bool>(u_input.a >= u_input.a, true)));
    var var_1 = 42001u & var_0;
    let var_2 = vec4<u32>(max(77561u, select(u_input.a << (u_input.a % 32u), abs(u_input.a), !(var_0 <= var_0))), abs(u_input.a), ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, u_input.a, 12712u), vec4<u32>(var_0, 31145u, 4294967295u, var_0)))), countOneBits(var_0 | ~4294967295u));
    global0 = u_input.a;
    let var_3 = true;
    var var_4 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global1.a.zx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.a.xy, vec2<f32>(1000f, -416f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.zx)))), vec4<f32>(_wgslsmith_f_op_f32(-625f * _wgslsmith_div_f32(-2464f, -880f)), _wgslsmith_f_op_f32(abs(func_3(var_3, var_2.x != var_2.x, vec3<i32>(7449i, global1.b.x, global1.b.x)).a.x)), func_3(true, !var_3 || any(vec2<bool>(false, true)), vec3<i32>(-2147483647i, i32(-1i) * -31847i, global1.b.x | -1i)).a.x, -1549f), _wgslsmith_dot_vec3_i32(global1.b.xzx, -(~global1.b.xxw)));
}

