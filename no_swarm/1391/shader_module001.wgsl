struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 0u), vec2<u32>(50937u, 0u), vec2<u32>(0u, 41575u), vec2<u32>(16367u, 24785u), vec2<u32>(0u, 4294967295u), vec2<u32>(60448u, 4294967295u), vec2<u32>(0u, 12222u), vec2<u32>(1u, 27351u), vec2<u32>(47757u, 4294967295u), vec2<u32>(20744u, 34011u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 97139u), vec2<u32>(4294967295u, 92u), vec2<u32>(0u, 4294967295u), vec2<u32>(33255u, 30487u), vec2<u32>(48880u, 39123u), vec2<u32>(48614u, 1u), vec2<u32>(15256u, 73543u), vec2<u32>(27163u, 1u), vec2<u32>(4294967295u, 13530u), vec2<u32>(35887u, 32350u), vec2<u32>(4294967295u, 21339u), vec2<u32>(50437u, 76917u), vec2<u32>(49719u, 60610u), vec2<u32>(4294967295u, 0u), vec2<u32>(562u, 4294967295u));

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    global0 = array<vec2<u32>, 26>();
    global1 = Struct_3(arg_0, arg_3);
    global0 = array<vec2<u32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(min(global1.b, global1.b));
    let var_1 = Struct_4(0u, u_input.b, vec2<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(arg_3 * -423f)), arg_3));
    return 39261u;
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_4 {
    global1 = Struct_3(Struct_1(~min(u_input.e, 1u) | 1u), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-713f, -545f) + -191f)))));
    let var_0 = Struct_1(select(1u, arg_0, any(!global2[_wgslsmith_index_u32(1u, 29u)])));
    global0 = array<vec2<u32>, 26>();
    global1 = Struct_3(Struct_1(~(~(~0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(874f)) + arg_1.c.x));
    global1 = Struct_3(Struct_1(27324u), _wgslsmith_f_op_f32(-308f * 348f));
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(~4294967295u, u_input.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b, _wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(global1.b + -186f))))));
    var_0 = func_3(71930u, Struct_4(func_2(Struct_1(30079u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, 2147483647i), vec3<i32>(var_0.b, u_input.c.x, u_input.b)), global2[_wgslsmith_index_u32(var_0.a, 29u)], -845f) ^ (var_0.a & global1.a.a), 37729i, var_0.c), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -21562i, var_0.b), vec3<i32>(u_input.d, -43690i, 2147483647i))) ^ (1i >> (min(var_0.a, 1u) % 32u)), var_0.b, _wgslsmith_div_i32(-_wgslsmith_add_i32(var_0.b, var_0.b), u_input.d)));
    let var_1 = false;
    var_0 = Struct_4(~var_0.a, firstLeadingBit(-(min(-8053i, u_input.d) >> (~0u % 32u))), _wgslsmith_f_op_vec2_f32(select(func_3(global1.a.a, Struct_4(global1.a.a | 17500u, _wgslsmith_sub_i32(-11439i, var_0.b), _wgslsmith_f_op_vec2_f32(-var_0.c)), reverseBits(min(vec3<i32>(7602i, -2147483647i, var_0.b), vec3<i32>(u_input.d, -2147483647i, var_0.b)))).c, func_3(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, global1.a.a, 4294967295u, global1.a.a)), ~vec4<u32>(u_input.a, var_0.a, u_input.a, global1.a.a)), Struct_4(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.a.a, var_0.a), vec3<u32>(var_0.a, u_input.a, 1u)), 0i & u_input.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c.x, var_0.c.x), var_0.c))), vec3<i32>(2147483647i, var_0.b, u_input.d)).c, select(select(!vec2<bool>(true, var_1), vec2<bool>(false, var_1), global1.b == global1.b), select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u), 29u)], !vec2<bool>(true, var_1), any(vec4<bool>(var_1, var_1, var_1, false))), true))));
    var_0 = func_3(~countOneBits(1u), Struct_4(7615u, var_0.b, _wgslsmith_f_op_vec2_f32(func_3(var_0.a, Struct_4(u_input.a, 1i, var_0.c), vec3<i32>(-7709i, 4597i, var_0.b)).c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, var_1)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c.x, global1.b)))))), min(vec3<i32>(10877i, min(2147483647i, u_input.d) >> (var_0.a % 32u), -(~(-2147483647i))), vec3<i32>(reverseBits(1i), _wgslsmith_mult_i32(var_0.b ^ var_0.b, 15668i << (1u % 32u)), ~max(u_input.d, 0i))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(global1.a.a, u_input.a, global1.a.a) >> (firstLeadingBit(vec3<u32>(97242u, 7268u, var_0.a)) % vec3<u32>(32u))) | min(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.a, 16920u, 23984u), abs(vec3<u32>(492u, var_0.a, global1.a.a)), vec3<u32>(30158u, u_input.a, 4294967295u) & vec3<u32>(global1.a.a, 97044u, var_0.a)), firstLeadingBit(~vec3<u32>(14813u, 0u, 4294967295u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.a, 47331u, _wgslsmith_add_u32(~var_0.a, func_3(global1.a.a, Struct_4(4294967295u, u_input.d, vec2<f32>(global1.b, -266f)), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)).a)), ~(~vec3<u32>(7610u, var_0.a, 0u)), abs(vec3<u32>(firstLeadingBit(43018u), 1u, 4294967295u))));
    var var_2 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~16874u);
}

