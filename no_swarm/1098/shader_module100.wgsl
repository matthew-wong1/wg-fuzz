struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    return ~(~42080u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_2, 21>();
    var var_0 = vec4<u32>(func_3(), 0u << ((16128u | global1.x) % 32u), 1u, max(49242u, 4294967295u)) & (vec4<u32>(24123u, 4294967295u, arg_1.x, ~(4294967295u >> (global1.x % 32u))) & vec4<u32>(~37349u, 1u, 4294967295u, ~arg_1.x));
    global1 = vec4<u32>(~1u, 25640u, 52974u, min(_wgslsmith_mult_u32(~var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), arg_1.xz)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, global1.x, 81877u), _wgslsmith_clamp_vec4_u32(vec4<u32>(39015u, 4294967295u, 4294967295u, 44008u), vec4<u32>(global1.x, 2412u, 1u, 0u), vec4<u32>(arg_1.x, 0u, 4294967295u, 21144u))), arg_1.x));
    global0 = array<Struct_2, 21>();
    var_0 = ~reverseBits(vec4<u32>(4294967295u, 0u, 0u | countOneBits(var_0.x), var_0.x));
    return Struct_3(~arg_0.x <= (arg_0.x ^ _wgslsmith_mult_i32(abs(arg_0.x), arg_0.x)), abs(abs(arg_0.x) & (-22861i << (arg_1.x % 32u))) >> (1u % 32u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(36591u, u_input.a)), 1u) | ~global1.x, 21u)]);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = array<Struct_2, 21>();
    let var_0 = Struct_1(!any(vec3<bool>(!arg_3.a.x, any(vec4<bool>(false, false, true, arg_1.a)), func_2(vec2<i32>(-8493i, arg_1.b), arg_2).a)));
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(i32(-1i) * -55075i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) | (vec2<i32>(arg_1.b, -2147483647i) | vec2<i32>(arg_1.b, 2147483647i)), vec2<i32>(~arg_1.b, -arg_1.b))), ~arg_1.b);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - -1000f))))) * _wgslsmith_f_op_f32(exp2(arg_0)))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-125f, _wgslsmith_f_op_f32(round(arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(select(arg_0, arg_0, true)))))));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_2 {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(-2184f + -457f), arg_2.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.x, -644f, arg_2.x))) - vec3<f32>(-880f, arg_2.x, -885f))))));
    return Struct_2(!arg_3.yx);
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    var var_0 = func_5(4294967295u, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1 | 6244i, min(_wgslsmith_add_i32(arg_1, -42546i), _wgslsmith_sub_i32(4542i, -36882i))), (vec2<i32>(arg_1, arg_1) >> (~global1.wx % vec2<u32>(32u))) ^ (vec2<i32>(-2147483647i, 1i) | reverseBits(vec2<i32>(arg_1, 2147483647i)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-653f, -184f)) - 366f), func_2(vec2<i32>(-1i, arg_1) ^ vec2<i32>(5618i, -28273i), _wgslsmith_div_vec3_u32(vec3<u32>(29300u, 75235u, global1.x), global1.ywy)), _wgslsmith_add_vec3_u32(global1.zxx, vec3<u32>(u_input.a, global1.x, 74256u)), global0[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1274f, -2114f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1193f, -615f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1583f), _wgslsmith_div_f32(-517f, -740f))), func_2(min(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -39095i), vec2<i32>(1i, -42081i)), vec2<i32>(-1i, arg_1)), vec3<u32>(global1.x, u_input.a, global1.x) << (max(global1.zxx, global1.www) % vec3<u32>(32u))).c.a)), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), vec4<bool>(true, !(arg_1 <= -1836i), false, ~u_input.a == reverseBits(29831u))));
    global0 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -1704f), _wgslsmith_f_op_vec2_f32(func_4(600f, Struct_3(false, arg_1, Struct_2(var_0.a)), global1.zyx, global0[_wgslsmith_index_u32(4294967295u, 21u)])).x)))));
    var var_2 = Struct_1(select(var_0.a.x, true, select(var_0.a.x, var_0.a.x, var_0.a.x) & false) & (66475u < _wgslsmith_div_u32(global1.x ^ 4294967295u, 1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1098f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(abs(var_1)))))));
    return reverseBits(arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-19292i, 1i, 0i))), _wgslsmith_sub_vec3_i32(vec3<i32>(func_1(global1.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-11510i, 15307i, -2147483647i, 1i), vec4<i32>(61865i, -1i, -2147483647i, 4180i)), _wgslsmith_sub_i32(2147483647i, 2147483647i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-94792i, 1i, -13600i), vec3<i32>(1i, -1i, 1i), vec3<i32>(-1470i, -2147483647i, 18037i)))) << (_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~global1.zwx, global1.zxz), ~vec3<u32>(1u, ~0u, 1u)) % vec3<u32>(32u));
    global1 = vec4<u32>(global1.x, ~u_input.a, _wgslsmith_clamp_u32(~reverseBits(global1.x) | 1u, ~4294967295u, _wgslsmith_div_u32(firstTrailingBit(22683u), _wgslsmith_dot_vec2_u32(~global1.yx, vec2<u32>(4294967295u, global1.x)))), 1u);
    global1 = vec4<u32>(34148u, global1.x, 20176u, 4294967295u);
    var var_1 = func_2(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1110i, 1i, -1i, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, 10045i, 1i), vec4<i32>(-2147483647i, var_0.x, var_0.x, var_0.x))), -var_0.x), firstTrailingBit(~global1.yzx)).c.a;
    var var_2 = ~global1.x;
    global0 = array<Struct_2, 21>();
    global1 = vec4<u32>(_wgslsmith_clamp_u32(~(0u ^ u_input.a), u_input.a, ~((global1.x ^ 4294967295u) << (global1.x % 32u))), global1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global1.yx, vec2<u32>(90512u, abs(92984u))), vec2<u32>(4294967295u, abs(min(u_input.a, 4294967295u)))), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.x), var_0.zx), -9183i), abs(-_wgslsmith_clamp_i32(var_0.x, var_0.x, 8743i)), ~_wgslsmith_mult_i32(-var_0.x, -var_0.x)), 33839i);
}

