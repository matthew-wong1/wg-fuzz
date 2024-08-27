struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec4<f32>, 30>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(min(-1057f, -477f)), arg_1));
    var var_1 = arg_2;
    var var_2 = u_input.e.xx;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-953f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(arg_1 - -199f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_4));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))) + global0.a);
    var var_1 = -(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.b.x, global0.b.x), global0.b.zy, vec2<i32>(u_input.e.x, 17877i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, 9783i), vec2<i32>(u_input.c.x, 23400i))));
    var_0 = _wgslsmith_div_f32(1665f, _wgslsmith_f_op_f32(func_3(firstTrailingBit(-35241i) | global0.b.x, _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -612f)))), Struct_2(_wgslsmith_mult_i32(min(u_input.a.x, 2189i), -1i >> (arg_0 % 32u)), true))));
    global0 = Struct_4(arg_2, vec3<i32>(0i, firstLeadingBit(-u_input.e.x), ~2147483647i), select(vec4<bool>(global0.c.x, true == global0.c.x, false, true), select(select(select(vec4<bool>(true, true, global0.c.x, true), global0.c, global0.c.x), global0.c, select(global0.c, vec4<bool>(false, true, true, global0.c.x), vec4<bool>(global0.c.x, true, global0.c.x, false))), vec4<bool>(all(global0.c.zw), global0.c.x, global0.c.x, u_input.c.x > u_input.c.x), global0.c), global0.c.x & all(vec2<bool>(global0.c.x, true))));
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, arg_0, 1u)), ~firstLeadingBit(vec3<u32>(arg_0, u_input.b.x, 22690u)))), 30u)]);
    return ~(~76007u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: Struct_4) -> u32 {
    let var_0 = (-379f > global0.a) & (global0.a < -633f);
    var var_1 = vec4<bool>(false, arg_0.x | (38910u < (u_input.b.x << (104329u % 32u))), all(vec3<bool>(var_0, arg_0.x, !any(arg_2.c.xxy))), true);
    global1 = array<vec4<f32>, 30>();
    var var_2 = select(~(~firstTrailingBit(reverseBits(vec3<u32>(47096u, 61505u, u_input.b.x)))), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<u32>(106764u, u_input.b.x, u_input.b.x)), 27233u)), vec3<u32>(0u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(35584u, 44822u)), u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(func_2(u_input.b.x, vec2<f32>(-1668f, arg_1.a.x), 217f), u_input.b.x))), !global0.c.xwx);
    var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, 0u, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 44904u, 4294967295u), vec3<u32>(33261u, u_input.b.x, 0u))) << (abs(abs(vec3<u32>(u_input.b.x, 0u, u_input.b.x)) >> (vec3<u32>(4333u, var_2.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), select(select(vec3<u32>(var_2.x, ~0u, 4294967295u), vec3<u32>(1927u, 18667u, _wgslsmith_mult_u32(u_input.b.x, 37918u)), any(global0.c.www)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, var_2.x, 14040u) | _wgslsmith_add_vec3_u32(vec3<u32>(16980u, 82457u, var_2.x), vec3<u32>(u_input.b.x, 43711u, var_2.x)), reverseBits(vec3<u32>(var_2.x, 29549u, 0u))), vec3<bool>(arg_0.x, true, global0.c.x)));
    return u_input.b.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_4 {
    global0 = Struct_4(global0.a, u_input.e.zzw, select(global0.c, global0.c, !(!global0.c)));
    let var_0 = vec4<u32>(1u, _wgslsmith_div_u32(arg_0.x, arg_0.x), _wgslsmith_sub_u32(~arg_0.x, u_input.b.x), _wgslsmith_add_u32(arg_3.x ^ ~abs(arg_3.x), firstTrailingBit(u_input.b.x)));
    var var_1 = vec3<bool>(!(!(!global0.c.x) && false), true, !any(!global0.c));
    var var_2 = Struct_2(u_input.d, true);
    global1 = array<vec4<f32>, 30>();
    return Struct_4(-241f, vec3<i32>(-26372i, -1i, -select(var_2.a, _wgslsmith_add_i32(arg_2.a, u_input.c.x), true)), select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1.x, var_2.b, var_2.b), arg_1), !vec4<bool>(true, var_1.x, var_2.b, false), !select(global0.c, global0.c, true)), vec4<bool>(any(global0.c), any(global0.c), true, all(!vec2<bool>(arg_2.b, true))), any(select(select(vec3<bool>(var_1.x, global0.c.x, arg_2.b), global0.c.xyx, vec3<bool>(arg_1, false, global0.c.x)), global0.c.zyx, any(vec3<bool>(arg_2.b, var_1.x, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~u_input.b.x, min(u_input.b.x, 4294967295u)), 39258u, u_input.b.x, 13845u), min(_wgslsmith_div_vec4_u32(vec4<u32>(8404u, 47484u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 37532u, 1u, 0u)), vec4<u32>(u_input.b.x ^ u_input.b.x, select(u_input.b.x, 50903u, global0.c.x), u_input.b.x, func_1(vec2<bool>(false, true), Struct_5(vec4<f32>(global0.a, -885f, 1127f, 629f)), Struct_4(-1000f, vec3<i32>(u_input.a.x, u_input.d, 2147483647i), global0.c))))), !global0.c.x, Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.c.xz, _wgslsmith_sub_vec2_i32(u_input.c.xx, u_input.e.yy)), u_input.c.zx), !global0.c.x), vec3<u32>(~(u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_mult_u32(0u, min(u_input.b.x, ~0u)), u_input.b.x));
    var var_0 = vec3<bool>(true, u_input.b.x < countOneBits(~u_input.b.x), all(!(!vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x))) | global0.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(155f)), _wgslsmith_f_op_f32(global0.a - -703f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 1270f)) - global0.a), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -289f)), 1f)), func_4(vec4<u32>(u_input.b.x, 42691u ^ u_input.b.x, u_input.b.x, 25845u >> (u_input.b.x % 32u)), true, Struct_2(~26249i, true), vec3<u32>(~71970u, u_input.b.x, min(u_input.b.x, 69126u))).a));
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a, var_1.x)))) - -981f), abs(firstTrailingBit(u_input.e.xww)), !global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(select(global0.b.yz, global0.b.xx, vec2<bool>(var_0.x, var_0.x)) ^ vec2<i32>(-2147483647i, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-32517i, var_1.x, Struct_2(637i, var_0.x)))), 2090f))));
}

