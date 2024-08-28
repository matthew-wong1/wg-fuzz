struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(true, false), -944i, vec3<i32>(16470i, -1i, 1i), -51578i, false), Struct_1(vec2<bool>(false, false), 2147483647i, vec3<i32>(4562i, 1i, 51278i), 18345i, false), Struct_1(vec2<bool>(true, false), -14558i, vec3<i32>(38258i, 43420i, 1i), 1i, false), Struct_1(vec2<bool>(false, false), 30107i, vec3<i32>(-3622i, -1i, 1i), 1824i, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_1(arg_2.a, 1i, u_input.d, -_wgslsmith_dot_vec2_i32(u_input.d.yx, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.d, arg_2.c.x), u_input.e))), true);
    let var_1 = !select(select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.x, true, var_0.e), !any(arg_2.a)), select(!select(vec3<bool>(arg_0, false, var_0.e), vec3<bool>(true, arg_2.e, arg_2.a.x), vec3<bool>(false, var_0.a.x, false)), select(vec3<bool>(arg_0, true, true), select(vec3<bool>(true, arg_2.e, false), vec3<bool>(false, true, false), false), !vec3<bool>(var_0.a.x, var_0.e, false)), !vec3<bool>(false, arg_2.a.x, false)), false);
    var var_2 = global0[_wgslsmith_index_u32(65690u, 4u)];
    var var_3 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(select(1507f, 1008f, var_1.x)) >= _wgslsmith_f_op_f32(floor(242f)), true), var_1.yz, var_2.a), arg_2.d, select(max(-var_0.c | _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, -5078i, 1i), vec3<i32>(14693i, 2147483647i, -16459i)), vec3<i32>(_wgslsmith_sub_i32(arg_2.d, var_2.c.x), firstLeadingBit(6755i), -arg_2.c.x)), abs(vec3<i32>(0i, var_2.b, u_input.d.x)) << (vec3<u32>(13913u, arg_3.x, arg_1) % vec3<u32>(32u)), !vec3<bool>(false, arg_0, true)), var_2.b, true);
    global0 = array<Struct_1, 4>();
    return select(all(var_1) || !(!var_0.a.x), all(select(var_3.a, !var_0.a, vec2<bool>(arg_0, var_0.e))), !(true || var_3.a.x)) != false;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = select(vec3<bool>(true, false, true), vec3<bool>(true, true, func_3(!(0i != arg_1.x), countOneBits(u_input.b.x ^ 59243u), global0[_wgslsmith_index_u32(35896u, 4u)], arg_2.xwx)), select(select(select(!vec3<bool>(arg_0.a.x, false, arg_0.e), select(vec3<bool>(arg_3.a.x, arg_3.a.x, true), vec3<bool>(true, arg_3.a.x, true), false), true), !select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(false, false, true), arg_3.e), vec3<bool>(func_3(arg_0.a.x, 81173u, Struct_1(vec2<bool>(true, arg_3.e), arg_1.x, arg_1, 1i, true), vec3<u32>(arg_2.x, 0u, 4294967295u)), true, false)), select(vec3<bool>(arg_0.a.x, arg_0.e, true), !select(vec3<bool>(arg_3.a.x, arg_3.e, arg_3.e), vec3<bool>(false, false, true), vec3<bool>(false, true, arg_3.a.x)), vec3<bool>(true || arg_0.a.x, false, false)), arg_0.a.x));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_1 = i32(-1i) * -1i;
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -308f, -166f) - vec3<f32>(1590f, 1612f, -206f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-740f, 1241f, 600f)))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: u32) -> u32 {
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1549u) & (u_input.b.wyw << (u_input.b.www % vec3<u32>(32u))), vec3<u32>(~u_input.c, ~6266u, ~arg_2)), u_input.b.x), 4u)];
    global0 = array<Struct_1, 4>();
    var var_1 = u_input.b.xwx;
    return ~_wgslsmith_clamp_u32(101750u, arg_2, ~var_1.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.a;
    let var_1 = vec2<i32>(select(62017i, _wgslsmith_sub_i32(-9994i, _wgslsmith_add_i32(u_input.d.x, -1i)), true) >> (35284u % 32u), _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_add_i32(arg_1.b, 0i), 1i));
    var var_2 = min(u_input.c, ~(~func_4(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(arg_1.a, arg_1.b, vec3<i32>(arg_1.d, 2147483647i, 2147483647i), var_1.x, arg_1.e), vec3<i32>(arg_1.b, arg_1.c.x, arg_0.x), vec4<u32>(u_input.b.x, u_input.c, u_input.c, 1u), Struct_1(vec2<bool>(arg_1.e, arg_1.e), arg_0.x, vec3<i32>(7646i, -59420i, var_1.x), arg_0.x, true))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1592f, -625f), vec2<f32>(687f, 1794f))), u_input.c)));
    var_2 = ~(~u_input.a);
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-912f, 119f, _wgslsmith_f_op_f32(1461f + _wgslsmith_f_op_f32(max(-782f, -185f))), _wgslsmith_div_f32(-550f, _wgslsmith_f_op_f32(abs(1447f))))));
}

fn func_5(arg_0: vec4<f32>) -> StorageBuffer {
    global0 = array<Struct_1, 4>();
    let var_0 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true), vec2<bool>(true, true), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)))), -u_input.d.x, min(min(u_input.d, u_input.d), _wgslsmith_mult_vec3_i32(u_input.d, countOneBits(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))), -((i32(-1i) * -2147483647i) << (~u_input.a % 32u)) | u_input.d.x, true);
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(11820u, u_input.a, u_input.c), ~u_input.a), countOneBits(~(~vec2<u32>(88u, 60564u)))) ^ ~_wgslsmith_clamp_u32(1u, u_input.a, _wgslsmith_sub_u32(u_input.a << (u_input.b.x % 32u), 59147u));
    var var_2 = global0[_wgslsmith_index_u32(var_1, 4u)];
    let var_3 = _wgslsmith_f_op_f32(-2173f - 1430f);
    return StorageBuffer(~_wgslsmith_div_u32(~12061u, countOneBits(var_1)) & (var_1 >> (_wgslsmith_sub_u32(~var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1, 4294967295u), u_input.b.xzx)) % 32u)), _wgslsmith_sub_i32((var_2.b << (0u % 32u)) | -38502i, var_0.c.x) & _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.c.x, var_2.b), abs(u_input.d.x << (var_1 % 32u))), _wgslsmith_div_f32(547f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-448f)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-314f, arg_0.x), _wgslsmith_f_op_f32(1480f + arg_0.x))))), ~(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(func_1(-u_input.d.zx, global0[_wgslsmith_index_u32(u_input.c, 4u)])));
}

