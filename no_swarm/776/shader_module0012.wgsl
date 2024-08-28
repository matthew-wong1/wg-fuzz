struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(26105u, 8548u, 31026u), 1487u), Struct_1(vec3<u32>(4294967295u, 23051u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(72918u, 48943u, 4643u), 32444u), Struct_1(vec3<u32>(0u, 23655u, 4294967295u), 46949u), Struct_1(vec3<u32>(1u, 0u, 0u), 4294967295u), Struct_1(vec3<u32>(10873u, 58760u, 4294967295u), 48286u), Struct_1(vec3<u32>(0u, 0u, 1u), 1u), Struct_1(vec3<u32>(39724u, 1u, 0u), 0u), Struct_1(vec3<u32>(1u, 0u, 1890u), 38252u), Struct_1(vec3<u32>(0u, 4294967295u, 33762u), 4294967295u), Struct_1(vec3<u32>(0u, 4294967295u, 79704u), 29911u), Struct_1(vec3<u32>(8369u, 24542u, 4294967295u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 33496u, 0u), 16054u), Struct_1(vec3<u32>(0u, 0u, 53019u), 0u), Struct_1(vec3<u32>(12357u, 4294967295u, 0u), 29904u), Struct_1(vec3<u32>(4294967295u, 3093u, 1u), 0u), Struct_1(vec3<u32>(0u, 32093u, 99836u), 1u), Struct_1(vec3<u32>(1u, 1u, 77074u), 39828u), Struct_1(vec3<u32>(1211u, 1u, 0u), 1u), Struct_1(vec3<u32>(23417u, 58861u, 4676u), 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f + 537f) + _wgslsmith_f_op_f32(step(628f, -2114f))))), -630f, _wgslsmith_f_op_f32(sign(-1938f))));
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(2696u, abs(arg_0.b), 0u, _wgslsmith_div_u32(arg_0.a.x, global0.x))), firstTrailingBit(select(~vec4<u32>(u_input.a, arg_0.a.x, u_input.a, 1u), select(vec4<u32>(4294967295u, 57067u, arg_0.a.x, arg_0.a.x), vec4<u32>(1u, arg_0.b, 80655u, u_input.a), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, true))))), vec4<u32>(abs(62290u), _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(48874u, 0u, u_input.a)), 0u, (53783u << (1u % 32u)) ^ _wgslsmith_div_u32(54092u << (arg_0.b % 32u), abs(u_input.a))));
    return firstTrailingBit(vec3<i32>(countOneBits(firstTrailingBit(2147483647i) | _wgslsmith_add_i32(arg_1, 2147483647i)), arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -60232i) >> (vec2<u32>(global0.x, 9646u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, 9402i) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), vec2<i32>(arg_1, arg_1)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<i32>) -> bool {
    global0 = select(~firstLeadingBit(reverseBits(~vec4<u32>(arg_0.b, u_input.a, global0.x, 4294967295u))), ~(~vec4<u32>(~u_input.a, firstLeadingBit(global0.x), 0u, ~u_input.a)), !any(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, true)));
    let var_0 = _wgslsmith_sub_i32(select(~_wgslsmith_mod_i32(-14541i, 2147483647i >> (arg_0.a.x % 32u)), -select(-arg_1.x, 21487i, true), arg_2 != 3963u), arg_1.x);
    global0 = ~(~(~vec4<u32>(reverseBits(global0.x), _wgslsmith_dot_vec2_u32(global0.wx, arg_0.a.xz), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(arg_0.a.x, 0u)), 42881u ^ global0.x)));
    let var_1 = select(abs(abs(~(~vec4<u32>(u_input.a, arg_2, global0.x, 4294967295u)))), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 47586u, arg_0.b, arg_0.a.x), ~vec4<u32>(0u, global0.x, 4294967295u, arg_2), vec4<bool>(false, true, false, true)), ~(vec4<u32>(0u, arg_0.a.x, global0.x, 43724u) ^ countOneBits(vec4<u32>(27618u, u_input.a, 30219u, u_input.a))), ~(~vec4<u32>(u_input.a, 27068u, 48413u, global0.x))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(false, true)), _wgslsmith_add_u32(arg_0.b, global0.x) >= 1u, true, true)));
    var var_2 = _wgslsmith_mod_vec2_u32(arg_0.a.zx, abs(_wgslsmith_clamp_vec2_u32(~(~arg_0.a.zx), vec2<u32>(0u, _wgslsmith_div_u32(u_input.a, u_input.a)), global0.zw)));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = !vec2<bool>(!any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), func_4(arg_0, func_3(arg_0, _wgslsmith_clamp_i32(40735i, 0i, -32709i)), max(arg_1, 26942u) & select(0u, global0.x, false), ~abs(vec2<i32>(-2147483647i, 27020i))));
    let var_1 = Struct_1(min(arg_0.a, abs(~arg_0.a)), arg_1);
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, 0u), firstLeadingBit(select(max(vec3<u32>(arg_0.a.x, arg_0.a.x, arg_1), global0.wxw), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, var_1.b, 1u), vec3<u32>(u_input.a, 49383u, arg_1)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, false), true)))), _wgslsmith_div_u32(arg_0.a.x ^ 120531u, max(select(1u, _wgslsmith_add_u32(1u, u_input.a), var_0.x), ~arg_1)), _wgslsmith_div_u32(~(~max(arg_1, arg_1)), (arg_1 | 24195u) ^ ~26787u));
    let var_3 = vec3<bool>(!var_0.x, false, var_0.x);
    global0 = _wgslsmith_add_vec4_u32(~firstLeadingBit(firstLeadingBit(vec4<u32>(26764u, global0.x, var_1.a.x, 4174u)) ^ firstLeadingBit(vec4<u32>(var_2.x, arg_1, u_input.a, 95473u))), firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(4936u, 15504u, global0.x, 22226u), ~vec4<u32>(arg_0.a.x, u_input.a, 4294967295u, 111163u))) << (vec4<u32>(1u, ~var_1.a.x, 36739u, 1u) % vec4<u32>(32u)));
    return _wgslsmith_div_i32(-1i, 45158i);
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<u32>, arg_3: f32) -> vec4<u32> {
    var var_0 = vec2<bool>(all(!vec3<bool>(all(vec3<bool>(true, true, true)), arg_2.x >= 64580u, global0.x == global0.x)), !any(vec4<bool>(true, true, true, true)));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_3, -382f, _wgslsmith_div_f32(830f, -172f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1148f, var_2.x))), vec2<f32>(-881f, _wgslsmith_f_op_f32(select(arg_3, var_2.x, var_0.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yw * _wgslsmith_f_op_vec2_f32(-var_2.xx)))));
    let var_4 = Struct_1(global0.xzz, _wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(0u, arg_1, 1u, 1u) & vec4<u32>(1u, global0.x, 53759u, arg_2.x), ~vec4<u32>(arg_2.x, global0.x, u_input.a, 51078u), vec4<bool>(false, true, true, false))), vec4<u32>(_wgslsmith_add_u32(global0.x ^ 0u, ~global0.x), _wgslsmith_add_u32(abs(u_input.a), 0u), 1u, ~_wgslsmith_mult_u32(1u, 4294967295u))));
    return vec4<u32>(var_4.a.x, arg_1, _wgslsmith_mod_u32(u_input.a, ~((1u ^ var_4.a.x) ^ min(0u, arg_2.x))), ~arg_2.x);
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 20>();
    global0 = func_5(vec3<i32>(_wgslsmith_add_i32(func_2(Struct_1(vec3<u32>(82994u, 1u, global0.x), u_input.a), global0.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(12325i, 0i, 382i), vec3<i32>(1i, 75698i, 0i))), -52470i, -5962i), ~(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 1u), vec4<u32>(65822u, u_input.a, 4294967295u, 33174u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 65598u, global0.x, 1u), vec4<u32>(u_input.a, 0u, 4294967295u, global0.x))) >> ((~global0.x >> (~u_input.a % 32u)) % 32u)), ~vec2<u32>(1u, ~global0.x), -383f);
    global0 = vec4<u32>(_wgslsmith_mod_u32(36136u, _wgslsmith_add_u32(324u, ~(~global0.x))), ~u_input.a, abs(~_wgslsmith_mod_u32(global0.x, ~1u)), min(select(14008u, 0u << ((global0.x << (u_input.a % 32u)) % 32u), true), u_input.a));
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(15455u, u_input.a, global0.x, 46761u), vec4<u32>(5909u, u_input.a, 35592u, 60228u))) | 48577u, 0u, global0.x), ~4294967295u);
    return firstTrailingBit(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(0u, 30247u, ~_wgslsmith_add_u32(u_input.a, u_input.a), 0u);
    let var_0 = firstTrailingBit(1u);
    global1 = array<Struct_1, 20>();
    var var_1 = func_1();
    let var_2 = Struct_1(global0.zxw, ~_wgslsmith_clamp_u32(112257u << (global0.x % 32u), ~4294967295u, global0.x));
    var var_3 = Struct_1(reverseBits(~abs(~vec3<u32>(0u, 5679u, 14785u))), reverseBits(var_2.a.x & ~_wgslsmith_sub_u32(0u, var_2.b)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f + -3327f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-188f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1453f * -186f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(361f)))), -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(696f)))))));
    global1 = array<Struct_1, 20>();
    let var_5 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.x - _wgslsmith_f_op_f32(abs(-334f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -404f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(27099i, 1i, _wgslsmith_mult_i32(-25345i, -1i))), vec2<f32>(var_4.x, 875f));
}

