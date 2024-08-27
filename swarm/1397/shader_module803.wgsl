struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(4294967295u, 58266u), vec2<u32>(7425u, 0u), vec2<u32>(0u, 1u));

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = select(!select(!vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false)), !vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(true, (u_input.a == 42756i) | true, true, any(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0))), !select(!vec4<bool>(arg_0, arg_0, true, arg_0), select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false)), false), vec4<bool>(arg_0, false, true, false)), true);
    global0 = array<vec2<u32>, 3>();
    let var_1 = false;
    global1 = firstLeadingBit(_wgslsmith_sub_i32(1i, -u_input.a));
    let var_2 = Struct_1(_wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(214i, -1i, u_input.b)), u_input.c.x), _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 42847u), vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(max(max(vec4<u32>(0u, 42948u, 80044u, 0u), vec4<u32>(46235u, 11785u, 13023u, 1u)), ~vec4<u32>(32446u, 46000u, 0u, 0u)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(609f, 1005f)), _wgslsmith_f_op_f32(sign(-636f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 399f))))), select(!vec4<bool>(select(false, false, true), !arg_0, all(var_0.wwz), var_1), select(select(!vec4<bool>(var_1, var_1, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1, arg_0, arg_0, true), vec4<bool>(var_1, arg_0, true, var_0.x)), !vec4<bool>(var_1, arg_0, true, arg_0)), vec4<bool>(true, var_1, all(vec3<bool>(var_0.x, false, true)), true), select(select(vec4<bool>(false, var_0.x, var_1, arg_0), vec4<bool>(var_1, var_0.x, var_1, var_0.x), true), vec4<bool>(var_0.x, true, true, var_1), true)), any(select(vec3<bool>(false, var_1, arg_0), !vec3<bool>(var_1, var_0.x, var_1), var_0.wwy))));
    return true;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = any(select(vec3<bool>(any(vec3<bool>(true, arg_1.x, arg_1.x)), func_3(arg_0 == arg_0), all(arg_1)), !vec3<bool>(true, any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), true), all(vec3<bool>(true, arg_0 > 4294967295u, all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))))));
    var var_1 = ~abs(1u);
    let var_2 = Struct_1(u_input.d.x << (4294967295u % 32u), ~abs(~(vec4<u32>(0u, 4294967295u, arg_0, arg_0) >> (vec4<u32>(56157u, arg_0, 0u, arg_0) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(322f, 786f, 2847f) - vec3<f32>(1248f, -1293f, -1314f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1840f, 1022f, -1176f) - vec3<f32>(224f, 1005f, -907f))))), vec4<bool>(arg_1.x, false, arg_1.x, var_0));
    let var_3 = ~(-15422i);
    let var_4 = u_input.c.yy;
    return Struct_1(select(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_2.a & 76893i, _wgslsmith_mod_i32(u_input.b, var_4.x), var_3, _wgslsmith_mult_i32(-1i, var_3))), ~min(var_4.x, var_2.a), var_0), _wgslsmith_div_vec4_u32(var_2.b, firstLeadingBit(~abs(vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, 2835u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(499f, _wgslsmith_f_op_f32(sign(453f)), -492f)))), var_2.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = func_2(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~arg_1.b.ww, vec2<u32>(arg_1.b.x, arg_2.b.x)), 63706u)), !(!vec2<bool>(all(arg_3.d.xy), true)));
    let var_1 = func_2(~arg_2.b.x, var_0.d.yz);
    var var_2 = var_1;
    var var_3 = var_2.a;
    var var_4 = ~abs(countOneBits(~6281u));
    return 6665i == arg_2.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = func_2(4294967295u, !vec2<bool>(true, !(!arg_0.x)));
    let var_1 = firstTrailingBit(max(vec4<i32>(u_input.b, var_0.a, 1i, u_input.d.x), -vec4<i32>(u_input.a, -12595i, ~2147483647i, u_input.d.x)));
    var_0 = Struct_1(~(-var_1.x), var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)) + _wgslsmith_f_op_vec3_f32(-var_0.c))))), !var_0.d);
    var var_2 = ~_wgslsmith_dot_vec2_i32(-(var_1.wy | vec2<i32>(-7772i, -11965i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-25777i, 20519i, var_1.x), _wgslsmith_add_i32(var_0.a, u_input.a)), ~vec2<i32>(-29619i, -2147483647i), _wgslsmith_div_vec2_i32(-u_input.c.zz, firstLeadingBit(vec2<i32>(48040i, 61040i)))));
    return Struct_1(1i, var_0.b ^ _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~var_0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(4399u, 1217u, var_0.b.x, 4294967295u), vec4<u32>(var_0.b.x, var_0.b.x, 23124u, var_0.b.x), vec4<u32>(4294967295u, 43434u, var_0.b.x, 44770u))), firstTrailingBit(~var_0.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(f32(-1f) * -937f), -963f), var_0.d);
}

fn func_1() -> f32 {
    var var_0 = u_input.d.x;
    var_0 = u_input.c.x;
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(-3726i, -1i), _wgslsmith_add_i32(u_input.b & -1i, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.a, 2147483647i, -664i), vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec3<bool>(true, true, true)), vec3<i32>(abs(u_input.b), 29971i, u_input.a))), -24373i);
    let var_1 = func_5(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false), !func_4(_wgslsmith_dot_vec4_i32(u_input.d, u_input.d), func_2(51313u, vec2<bool>(false, false)), func_2(0u, vec2<bool>(false, false)), func_2(46222u, vec2<bool>(true, false)))), _wgslsmith_div_f32(-271f, 306f), -360f);
    global0 = array<vec2<u32>, 3>();
    return 384f;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = func_2(1u, vec2<bool>(!func_2(min(1u, 1752u), select(vec2<bool>(true, arg_2), vec2<bool>(true, arg_2), arg_2)).d.x, arg_2)).d;
    var var_1 = Struct_1(firstTrailingBit(-26298i), firstLeadingBit(~min(vec4<u32>(1066u, 0u, 39211u, 1u), vec4<u32>(1u, 4294967295u, 90508u, 0u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(391f - -2204f)))) * vec3<f32>(_wgslsmith_f_op_f32(249f + arg_0), _wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(f32(-1f) * -604f))), !vec4<bool>(arg_2, _wgslsmith_div_f32(arg_0, -262f) == _wgslsmith_f_op_f32(-arg_0), !(!var_0.x), true));
    let var_2 = var_0.yy;
    let var_3 = _wgslsmith_mult_i32(~u_input.d.x << (func_5(var_1.d.ww, _wgslsmith_f_op_f32(abs(var_1.c.x)), -963f).b.x % 32u), ~(-(i32(-1i) * -14023i)));
    var_1 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.d.xwx, u_input.c.www), ~(~vec4<u32>(42819u, var_1.b.x, 0u, 17961u) ^ vec4<u32>(var_1.b.x, var_1.b.x, ~44642u, _wgslsmith_mult_u32(1u, var_1.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1273f))), -534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1357f, 219f))))), select(var_0, !vec4<bool>(!var_0.x, var_2.x, any(var_2), !var_1.d.x), func_5(!vec2<bool>(true, var_1.d.x), 904f, var_1.c.x).d));
    return Struct_1(2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(~11384u, ~(~var_1.b.x), 19341u, 16278u | ~var_1.b.x), vec4<u32>(0u, var_1.b.x, 4294967295u, 29306u)), var_1.c, select(select(select(!var_1.d, select(vec4<bool>(false, true, var_1.d.x, var_2.x), vec4<bool>(arg_2, false, var_2.x, var_2.x), vec4<bool>(false, true, var_0.x, true)), false), vec4<bool>(all(var_1.d), !var_2.x, false, true), func_5(vec2<bool>(var_2.x, var_0.x), 659f, 199f).d), func_5(vec2<bool>(false, true), 1515f, var_1.c.x).d, any(func_2(_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), var_2).d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -36281i;
    global0 = array<vec2<u32>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -924f, -805f));
    var var_1 = vec2<bool>(true, true);
    let var_2 = func_6(_wgslsmith_f_op_f32(func_1()), -func_2(func_5(vec2<bool>(false, true), 1104f, 161f).b.x | 1u, vec2<bool>(true, true)).a, true | var_1.x);
    let var_3 = countOneBits(~(global0[_wgslsmith_index_u32(4294967295u, 3u)] >> (var_2.b.xy % vec2<u32>(32u))) << (firstTrailingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.b.x), global0[_wgslsmith_index_u32(var_2.b.x, 3u)])) % vec2<u32>(32u)));
    global1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.x, var_0.x, ~_wgslsmith_dot_vec2_i32(reverseBits(firstTrailingBit(vec2<i32>(1i, 45260i))), vec2<i32>(-11761i, var_2.a) << (var_3 % vec2<u32>(32u))), 0u);
}

