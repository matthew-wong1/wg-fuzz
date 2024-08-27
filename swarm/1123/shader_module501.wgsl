struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1131f;

var<private> global1: array<Struct_1, 25>;

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = select(~_wgslsmith_mult_vec3_u32(u_input.c.wzw, u_input.c.xxy), firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(arg_3.b.e, arg_3.b.e, arg_3.b.e), ~17594u, ~4294967295u)), select(select(arg_2.a.xwz, arg_2.a.wyx, arg_2.a.x), select(vec3<bool>(false, false, true), select(vec3<bool>(arg_3.e, true, true), arg_2.a.wyy, arg_1.a.x), false), !any(arg_1.a))) & vec3<u32>(u_input.c.x, arg_3.b.e & ~0u, min(u_input.c.x, 0u));
    let var_1 = _wgslsmith_div_f32(215f, arg_3.b.c);
    global2 = all(!vec4<bool>(true, var_0.x > u_input.c.x, (arg_0.x >> (54914u % 32u)) != (u_input.a & -2147483647i), true));
    let var_2 = u_input.a;
    var var_3 = global1[_wgslsmith_index_u32(~u_input.c.x, 25u)];
    return var_1;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, countOneBits(0u)), 25u)];
    global1 = array<Struct_1, 25>();
    let var_1 = var_0.e;
    global0 = _wgslsmith_f_op_f32(-var_0.c);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(60131i, arg_0.x, var_0.a.x, 1i), vec4<i32>(u_input.a, 2147483647i, arg_0.x, var_0.a.x)), Struct_2(vec4<bool>(false, var_0.b.x, arg_1, true)), Struct_2(vec4<bool>(arg_1, true, var_0.b.x, var_0.b.x)), Struct_3(vec4<f32>(-396f, 136f, 1123f, var_0.c), Struct_1(vec3<i32>(30183i, u_input.a, -2147483647i), var_0.b, -737f, var_0.a.x, 1u), var_0.a.xy, var_0.c, var_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, var_0.c, var_0.b.x))) * 123f))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(-1612f - var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 1152f)))), Struct_1(~(~vec3<i32>(-55420i, -305i, 44240i) >> (~vec3<u32>(11929u, 63339u, u_input.c.x) % vec3<u32>(32u))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-211f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1658f)))), ~(-2147483647i), ~4294967295u), vec2<i32>(_wgslsmith_clamp_i32(var_0.d, firstLeadingBit(-272i), arg_0.x), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(110f)) - _wgslsmith_f_op_f32(func_3(vec4<i32>(11200i, -2147483647i, 2147483647i, 13986i), Struct_2(vec4<bool>(false, var_0.b.x, false, true)), Struct_2(vec4<bool>(false, false, true, false)), Struct_3(vec4<f32>(var_0.c, 1372f, -359f, var_0.c), global1[_wgslsmith_index_u32(var_0.e, 25u)], vec2<i32>(var_0.d, arg_0.x), -221f, false)))))), !(abs(arg_0.x) > var_0.d) | any(!select(vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, false), arg_1)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = !vec2<bool>(arg_0.b.x, !(!any(vec2<bool>(true, arg_0.b.x))));
    var var_1 = arg_0.a;
    let var_2 = func_2(-(~(vec3<i32>(var_1.x, u_input.b, 0i) << (vec3<u32>(0u, 23735u, arg_0.e) % vec3<u32>(32u)))), any(vec4<bool>(false, false, var_0.x, any(select(vec2<bool>(true, false), arg_0.b, true)))));
    global2 = true;
    let var_3 = var_2.a.zyx;
    return _wgslsmith_dot_vec2_i32(~firstLeadingBit((arg_0.a.zy ^ vec2<i32>(-1i, var_1.x)) ^ vec2<i32>(var_2.c.x, var_1.x)), ~vec2<i32>(_wgslsmith_sub_i32(max(var_1.x, 0i), _wgslsmith_clamp_i32(u_input.b, arg_0.a.x, var_2.c.x)), _wgslsmith_sub_i32(firstLeadingBit(var_1.x), 45554i >> (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(~(~vec4<i32>(u_input.a, u_input.b, 11315i, u_input.b))) ^ vec4<i32>(_wgslsmith_add_i32(~u_input.b, u_input.b & func_1(Struct_1(vec3<i32>(u_input.a, u_input.a, 9766i), vec2<bool>(false, false), -432f, 0i, u_input.c.x))), _wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.a, -1i), 1i), u_input.a, u_input.b);
    var var_1 = 0u;
    var var_2 = Struct_1(~var_0.wxz, !func_2(vec3<i32>(0i, 5181i, -var_0.x), var_0.x != -45121i).b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -985f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1218f - -499f) * _wgslsmith_f_op_f32(min(-899f, -1210f))))), -1i, 31592u);
    global2 = true;
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(u_input.c.x, var_2.e), u_input.c.x, 1u, var_2.e), u_input.c, ~abs(u_input.c & vec4<u32>(var_2.e, u_input.c.x, var_2.e, 41767u))), max(firstLeadingBit(u_input.c), u_input.c));
    let var_4 = var_2.c;
    var_0 = firstLeadingBit(min(-_wgslsmith_mod_vec4_i32(vec4<i32>(-7585i, var_0.x, 26933i, -12807i), -vec4<i32>(-1i, var_2.d, 1i, 25475i)), ~select(-vec4<i32>(var_2.a.x, u_input.a, var_2.a.x, u_input.a), -vec4<i32>(-16887i, 16291i, var_2.d, var_2.d), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1240f, 1722f, var_2.c, var_2.c)))) - vec4<f32>(1475f, _wgslsmith_div_f32(121f, var_2.c), _wgslsmith_f_op_f32(-196f * var_2.c), _wgslsmith_f_op_f32(-915f + 866f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(780f, var_2.c, -1051f, var_2.c) + vec4<f32>(272f, -272f, var_2.c, var_2.c))))))), 31981i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_div_f32(-136f, var_2.c), _wgslsmith_f_op_f32(2559f - var_2.c), _wgslsmith_f_op_f32(sign(601f))) - vec4<f32>(var_2.c, 380f, _wgslsmith_f_op_f32(round(-2061f)), 451f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)), var_2.c, _wgslsmith_f_op_f32(step(636f, 496f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c, var_2.c), var_2.c))));
}

