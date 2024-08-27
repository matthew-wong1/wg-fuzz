struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = firstLeadingBit(vec2<u32>(u_input.a, 15715u));
    var var_1 = abs(~(~arg_0.wxy));
    var var_2 = _wgslsmith_sub_vec2_u32(~var_0, vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x)) >> (~vec4<u32>(1u, 4294967295u, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<u32>(var_0.x, var_0.x, 0u, 0u) ^ firstLeadingBit(vec4<u32>(77158u, 39236u, 45470u, 44845u))), u_input.b));
    let var_3 = _wgslsmith_dot_vec3_i32(-arg_0.xyw ^ abs(-arg_0.wzy), abs(firstTrailingBit(~arg_0.yyy)));
    let var_4 = vec4<bool>(false != !any(vec3<bool>(true, false, false)), false, all(select(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), false)), false);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1820f)), _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)))))) + -220f);
}

fn func_2() -> vec3<f32> {
    var var_0 = !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)));
    global0 = _wgslsmith_div_i32(i32(-1i) * -(~(-8386i >> (0u % 32u))), 2147483647i);
    global1 = array<Struct_1, 32>();
    global0 = i32(-1i) * -2672i;
    global2 = array<Struct_1, 31>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1467f, -1000f, 588f), vec3<f32>(-2395f, 1000f, -1053f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(289f, -2914f, -1261f), vec3<f32>(162f, 590f, -1655f), vec3<bool>(var_0.x, var_0.x, var_0.x)))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, -9842i, -2147483647i, -2147483647i), vec2<f32>(1168f, 134f))), 408f), 209f, -643f)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var var_1 = select(vec3<bool>(!(1053f != var_0.x) && true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), -25151i > arg_0)), any(vec3<bool>(false, false, true))), vec3<bool>(true, all(vec2<bool>(true, true)) != true, all(vec4<bool>(true, true, false, all(vec3<bool>(false, true, true))))), !vec3<bool>(any(vec2<bool>(true, true)), true, true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, var_0.x, -732f))) - vec3<f32>(var_0.x, var_0.x, -642f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-305f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x)))))))));
    let var_3 = ~(firstTrailingBit(~arg_0) | (max(max(2147483647i, 11933i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(-9236i, arg_0))) | _wgslsmith_add_i32(1i, -2147483647i)));
    global0 = 1i;
    return Struct_1(vec3<i32>(var_3, var_3, _wgslsmith_add_i32(-58162i, var_3)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1104f - 559f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -529f, var_0.x, 2321f))))), select(select(vec3<bool>(true, all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), false), select(!vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(true, select(var_1.x, var_1.x, true), true)), select(vec3<bool>(var_1.x, true, true), select(!vec3<bool>(false, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(!var_1.x, var_0.x >= -536f, var_1.x)), !(any(vec4<bool>(false, var_1.x, false, false)) || !var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(429f, -289f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_2.x)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x - var_2.x)))), all(!var_1.xz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_i32(11921i, -2147483647i, 1i);
    var var_0 = func_1(2147483647i);
    let var_1 = func_1(-1i ^ var_0.a.x);
    let var_2 = var_1;
    let var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(_wgslsmith_sub_i32(2147483647i & var_1.a.x, firstTrailingBit(8414i)), _wgslsmith_mult_i32(~(-1i), -2147483647i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -37169i, var_0.a.x, var_1.a.x)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_2.a.x, -44514i, var_1.a.x), vec4<i32>(-24374i, var_2.a.x, var_1.a.x, -5222i), vec4<i32>(var_1.a.x, 20022i, 0i, var_1.a.x)), vec4<i32>(reverseBits(var_1.a.x), var_2.a.x, 43613i << (u_input.a % 32u), i32(-1i) * -1i))), var_2.a.x, var_1.a.x);
}

