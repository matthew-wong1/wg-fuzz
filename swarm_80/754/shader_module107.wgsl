struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 93193u;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, i32(-2147483648));

var<private> global2: u32;

var<private> global3: vec3<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global2 = ~arg_0.x;
    var var_0 = Struct_1(reverseBits(vec4<u32>(17998u, _wgslsmith_add_u32(1u, 1u), arg_0.x, ~arg_0.x)), u_input.a);
    global2 = (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, ~var_0.a.x), vec3<u32>(var_0.a.x, 4294967295u, arg_0.x)) << ((~reverseBits(u_input.a) & reverseBits(arg_0.x)) % 32u)) >> (~var_0.a.x % 32u);
    var var_1 = countOneBits(_wgslsmith_mod_u32(abs(~_wgslsmith_sub_u32(4294967295u, var_0.a.x)), var_0.b));
    global3 = vec3<i32>(2147483647i, i32(-1i) * -2147483647i, -12426i);
    return any(select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false))), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), all(vec4<bool>(true, true, true, true)))));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<bool> {
    var var_0 = !vec2<bool>(1105f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-232f * -888f) * _wgslsmith_f_op_f32(select(483f, -435f, false))), !func_3(max(vec2<u32>(4294967295u, 1u), vec2<u32>(arg_1, 0u))));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(289f, 626f)) - -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1422f)) - 128f), 1858f, var_0.x))));
    var var_3 = firstLeadingBit(countOneBits(-u_input.b));
    return select(vec4<bool>(false, any(select(vec2<bool>(var_0.x, true), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), var_0.x))), true, _wgslsmith_add_u32(~4294967295u, arg_1 >> (1u % 32u)) > ~(~1u)), vec4<bool>(true, any(select(select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, var_0.x), true)), var_0.x, -1i != abs(_wgslsmith_mod_i32(2147483647i, var_3.x))), !var_0.x);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-900f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), 1182f))))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -412f)));
    global1 = ~u_input.b.xy;
    let var_1 = Struct_4(~(~abs(~0u)), vec4<bool>(!(!var_0 || arg_2.x), ~(4294967295u >> (0u % 32u)) > ~_wgslsmith_div_u32(arg_3.x, arg_3.x), !arg_2.x, true), firstLeadingBit(-1i));
    var var_2 = Struct_4(~(~1u), select(!vec4<bool>(arg_2.x & arg_2.x, any(arg_2.yx), false, var_0), arg_2, !var_1.b.x), max(abs(u_input.b.x), -reverseBits(global1.x)));
    global0 = _wgslsmith_sub_u32(var_1.a, arg_3.x);
    return _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, var_2.a, arg_3.x), vec3<u32>(arg_3.x, ~5597u, _wgslsmith_sub_u32(arg_3.x, 10036u))), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.a, 74559u, var_1.a) << (vec3<u32>(var_1.a, 389u, var_2.a) % vec3<u32>(32u))), vec3<u32>(73259u, var_1.a, 20563u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.a, var_2.a), vec3<u32>(35440u, 4294967295u, 4294967295u)), vec3<u32>(var_1.a, 27989u, arg_3.x) & ~vec3<u32>(var_2.a, 0u, var_1.a)) << ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 118501u, 4294967295u), vec4<u32>(var_2.a, 17212u, var_2.a, 15122u)), var_2.a, ~arg_3.x) & countOneBits(vec3<u32>(u_input.a, 0u, u_input.a) | vec3<u32>(arg_3.x, 29468u, u_input.a))) % vec3<u32>(32u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> u32 {
    global2 = arg_1.a.b;
    var var_0 = arg_1.c.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(floor(1218f))), 2739f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) - _wgslsmith_f_op_f32(-1060f - -1000f)), _wgslsmith_mod_u32(arg_0.x, 35901u) != _wgslsmith_mult_u32(arg_0.x, arg_1.a.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-926f, 908f))), -851f, _wgslsmith_f_op_f32(f32(-1f) * -2110f)));
    return countOneBits(arg_1.a.b);
}

fn func_1(arg_0: u32) -> vec3<f32> {
    global0 = _wgslsmith_mult_u32(func_5(func_4(-198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1183f))), func_2(arg_0, 7424u), ~(~vec2<u32>(u_input.a, 4294967295u))), Struct_2(Struct_1(min(vec4<u32>(0u, u_input.a, 1u, 28980u), vec4<u32>(14983u, arg_0, 10530u, u_input.a)), arg_0), false, Struct_1(vec4<u32>(1u, 19351u, arg_0, 1u) & vec4<u32>(1u, 1u, 0u, arg_0), firstTrailingBit(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-200f)) * _wgslsmith_div_f32(-867f, 1304f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(754f + 653f), _wgslsmith_f_op_f32(f32(-1f) * -1141f)))), _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u));
    global3 = u_input.b.xxw;
    var var_0 = abs(u_input.b);
    var var_1 = 1047u;
    let var_2 = ~0u;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f * -2546f) + -1386f)), _wgslsmith_f_op_f32(-277f * -1282f), -1169f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(1u));
    var var_1 = firstLeadingBit(~abs(~vec2<u32>(4294967295u, 49190u)));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(4294967295u, u_input.a, 4294967295u, 45698u))), min(vec4<u32>(var_1.x, u_input.a << (45589u % 32u), ~var_1.x, 1u & u_input.a), ~max(vec4<u32>(1u, 642u, 1u, 7943u), vec4<u32>(0u, 1u, 84621u, u_input.a)))), !select(vec4<bool>(true, func_2(4294967295u, var_1.x).x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), -2147483647i >= (global3.x << (22168u % 32u))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global3.x, select(2147483647i, global1.x, true), -global3.x), vec4<i32>(global1.x, -1i, global1.x, _wgslsmith_add_i32(-14733i, countOneBits(-6237i)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(-2027f, 599f, _wgslsmith_f_op_f32(387f + var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_0, vec3<f32>(1012f, -367f, var_0.x))) + _wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(508f, var_0.x, var_0.x), var_2.b.x))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-1061f * var_0.x), _wgslsmith_f_op_f32(sign(654f))))), _wgslsmith_f_op_vec3_f32(round(var_0))));
    global1 = _wgslsmith_add_vec2_i32(abs(select(u_input.b.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -45754i), u_input.b.wy, countOneBits(vec2<i32>(-2147483647i, 2147483647i))), select(!var_2.b.yw, var_2.b.zx, true))), countOneBits((vec2<i32>(0i, global1.x) | vec2<i32>(var_2.c, global1.x)) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, select(vec4<i32>(1i, ~22749i, max(1i, _wgslsmith_sub_i32(0i, u_input.b.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global3.x, global1.x), ~u_input.b.wx)), _wgslsmith_mult_vec4_i32(u_input.b >> (vec4<u32>(32560u, var_1.x, 4294967295u, var_1.x) % vec4<u32>(32u)), max(~u_input.b, u_input.b)), var_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, var_3.x, var_0.x, 1053f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(785f, var_3.x, 959f, 1229f), vec4<f32>(var_3.x, 1000f, 686f, -245f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_3.x, var_0.x, 1915f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1000f + -1264f), _wgslsmith_div_f32(var_3.x, 162f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(874f, _wgslsmith_f_op_f32(ceil(761f)))))), ~abs(firstLeadingBit(~vec3<u32>(u_input.a, 4294967295u, 75261u))));
}

