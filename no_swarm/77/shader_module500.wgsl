struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = 0u;
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(34461u, 0u, u_input.a, 4294967295u)) & (vec4<u32>(u_input.a, 4294967295u, 1u, 20217u) & vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(38777u, u_input.a, u_input.a, u_input.a)), u_input.a, 4294967295u, ~u_input.a)), vec2<bool>(all(vec2<bool>(true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), select(vec4<bool>(false, _wgslsmith_mult_i32(u_input.b, 0i) < firstTrailingBit(14662i), !any(vec3<bool>(false, false, false)), true), !vec4<bool>(true, any(vec3<bool>(true, false, true)), false, true), !vec4<bool>(true, true, 13487u != u_input.a, all(vec3<bool>(true, true, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(370f, 1188f, -2100f))) * vec3<f32>(1688f, 873f, 171f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 859f, var_2.x, 351f) - vec4<f32>(267f, var_2.x, var_2.x, 586f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 1310f, 975f, var_2.x), vec4<f32>(-791f, var_2.x, var_2.x, 1193f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1487f)), -1180f, -207f, _wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = var_1.b.x;
    return min(~0u & ~select(58287u, reverseBits(6869u), var_4), 4294967295u);
}

fn func_2() -> vec2<bool> {
    let var_0 = vec3<f32>(-173f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(567f, 665f) - -906f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(ceil(-192f)))));
    var var_1 = 2147483647i;
    var var_2 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true && any(vec4<bool>(true, true, true, true)), !(_wgslsmith_f_op_f32(f32(-1f) * -413f) < _wgslsmith_f_op_f32(1614f * var_0.x)), ~(~u_input.a) >= 1u, (_wgslsmith_add_u32(40407u, u_input.a) == 0u) == !any(vec2<bool>(false, true))), vec4<bool>(true, false, _wgslsmith_clamp_u32(reverseBits(21916u), ~12182u, u_input.a) > ~func_3(), any(vec4<bool>(true, true, true, true))));
    var var_3 = var_2.xx;
    global0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, 10573i)) & _wgslsmith_div_vec2_i32(vec2<i32>(max(2147483647i, -300i), 1i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.e, 1i), ~u_input.c.yz, _wgslsmith_div_vec2_i32(u_input.d.wz, u_input.d.zx))), select(u_input.c.yz, _wgslsmith_clamp_vec2_i32(-_wgslsmith_add_vec2_i32(u_input.d.yw, u_input.d.ww), -vec2<i32>(-1i, 25689i), vec2<i32>(0i, -u_input.e)), select(var_2.xw, select(var_2.xx, select(vec2<bool>(true, false), vec2<bool>(var_3.x, var_3.x), var_3.x), var_2.x), !(!var_2.wy))));
    return vec2<bool>(!all(select(select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(var_3.x, var_3.x, var_3.x, false), var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, var_3.x))), true);
}

fn func_1() -> bool {
    let var_0 = false;
    global0 = -58888i;
    let var_1 = Struct_1(abs(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(44921u, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 50183u, 4294967295u), vec3<u32>(u_input.a, 1u, 1u))), u_input.a)), select(func_2(), select(func_2(), vec2<bool>(!var_0, true), var_0), func_2()), !vec4<bool>(true, all(!vec4<bool>(false, var_0, var_0, false)), var_0, var_0));
    var var_2 = select(1469u, u_input.a, select(select(false, any(vec4<bool>(var_0, true, false, var_0)), !any(var_1.c)), true, !all(var_1.c.xyy)));
    var var_3 = -10121i;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_i32(u_input.c.x, u_input.b));
    var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(743f, _wgslsmith_f_op_f32(min(-620f, _wgslsmith_f_op_f32(162f + -136f)))), -845f, _wgslsmith_f_op_f32(-456f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-402f + 411f))))), vec3<f32>(907f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-510f)), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1674f)) * -1543f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-725f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1200f, 1444f)), _wgslsmith_f_op_f32(513f + 119f), any(arg_0.c.xww)))))));
    var var_2 = u_input.a;
    var var_3 = vec3<i32>(-abs(-12908i), -2147483647i, ~(0i) >> (~reverseBits(u_input.a) % 32u));
    return Struct_1(firstTrailingBit(arg_0.a), vec2<bool>((_wgslsmith_f_op_f32(abs(var_1.x)) == 1f) | !arg_0.c.x, -1i < arg_1), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_div_i32(u_input.e, select(_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -2147483647i), u_input.b), -(41836i & u_input.c.x), select(false, true, false)));
    global0 = -5936i;
    let var_0 = func_4(Struct_1(~vec4<u32>(u_input.a, 27595u, _wgslsmith_add_u32(u_input.a, u_input.a), 0u), vec2<bool>(true, false), select(vec4<bool>(func_1(), select(true, false, false), true, false), vec4<bool>(true, true, true, true), select(true, true, func_1()))), u_input.c.x);
    global0 = ~u_input.e;
    var var_1 = Struct_1(vec4<u32>(~var_0.a.x, u_input.a, 1u, u_input.a) ^ firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 0u), var_0.a)), var_0.c.xz, !var_0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, -1579f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -760f))))), ~(-2147483647i), _wgslsmith_clamp_i32(select(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.d.xz)), u_input.b, true), 17482i, u_input.b));
}

