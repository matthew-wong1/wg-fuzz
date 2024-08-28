struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<bool> {
    return !select(!vec4<bool>(true, arg_0.a.x, false && arg_1, arg_1), select(select(vec4<bool>(arg_1, false, true, false), vec4<bool>(false, arg_1, arg_0.a.x, false), all(vec3<bool>(false, arg_0.b, arg_1))), vec4<bool>(all(vec4<bool>(arg_1, arg_0.a.x, false, arg_1)), arg_0.a.x, select(false, true, true), true), !(!vec4<bool>(arg_1, true, arg_0.b, arg_0.a.x))), any(vec2<bool>(true, any(arg_0.a))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = Struct_1(arg_0.a, false);
    let var_1 = any(vec4<bool>(true, false, all(vec3<bool>(arg_1, var_0.b, false)) || var_0.b, !all(var_0.a.wy)));
    var_0 = Struct_1(vec4<bool>(any(var_0.a) & !(!arg_1), true, all(!(!arg_0.a)), arg_1), all(vec4<bool>(!arg_1, all(var_0.a.yz), var_1, var_0.b || arg_1)) != arg_0.a.x);
    var_0 = arg_0;
    var_0 = Struct_1(select(select(vec4<bool>(true, any(arg_0.a.ww), all(vec4<bool>(var_1, false, false, arg_1)), true), !vec4<bool>(var_1, arg_0.a.x, var_1, arg_0.a.x), arg_0.a), vec4<bool>(var_0.a.x, true, true, arg_1), !func_3(arg_0, true, _wgslsmith_f_op_f32(f32(-1f) * -262f))), any(!func_3(Struct_1(var_0.a, true), false, 874f)) && select(false || !arg_0.a.x, arg_1, arg_1));
    return true;
}

fn func_1() -> vec3<i32> {
    var var_0 = true;
    let var_1 = all(!(!vec4<bool>(true, any(vec4<bool>(true, false, true, true)), func_2(Struct_1(vec4<bool>(true, true, false, false), false), true), false)));
    var var_2 = -675f;
    var_0 = !(!(!any(func_3(Struct_1(vec4<bool>(false, var_1, false, var_1), true), false, -2103f).wzy)));
    let var_3 = select(!vec4<bool>(var_1, _wgslsmith_mult_i32(0i, 2147483647i) < select(34227i, -2147483647i, false), any(vec2<bool>(var_1, var_1)), !any(vec4<bool>(var_1, var_1, var_1, var_1))), func_3(Struct_1(!(!vec4<bool>(var_1, var_1, var_1, true)), var_1), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1422f * -1120f) + _wgslsmith_div_f32(-200f, 252f)))), false);
    return vec3<i32>(abs(-abs(select(-55428i, 24987i, true))), _wgslsmith_div_i32(select(0i, 2147483647i, var_3.x) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 87051u, u_input.a, 55473u), vec4<u32>(u_input.a, 1u, u_input.a, 10714u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(73634i, -1i), vec2<i32>(16576i, 4276i))), ~8087i)), ~_wgslsmith_add_i32(countOneBits(~(-32301i)), firstTrailingBit(_wgslsmith_clamp_i32(0i, -31632i, -1i))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    var var_0 = select(0u, ~min(3221u, 4294967295u), true);
    var_0 = 1u;
    let var_1 = arg_3.a.x;
    var var_2 = Struct_1(arg_3.a, func_3(Struct_1(vec4<bool>(arg_3.b, any(vec2<bool>(true, true)), true, true), true), var_1, arg_1.x).x);
    var_0 = u_input.a;
    return !(!func_2(Struct_1(vec4<bool>(false, false, false, true), arg_3.b), any(var_2.a)) || select(!var_1, arg_3.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), _wgslsmith_f_op_vec3_f32(vec3<f32>(800f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-521f + -863f), -313f, true)), 1429f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, -786f, -329f) - vec3<f32>(-760f, -1420f, 330f))) + vec3<f32>(1f, 1f, 1f))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, _wgslsmith_clamp_i32(1i, -17291i, 0i), _wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_add_i32(-2147483647i, 2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(31459i, -1i, 4335i, 30115i), abs(vec4<i32>(-1i, -40637i, 0i, 23539i)))), abs(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-14923i, 1i, 17453i, -36656i), vec4<i32>(30256i, -1220i, -1i, -2147483647i)), ~vec4<i32>(-28727i, -1870i, 1i, -10644i), vec4<bool>(true, false, true, true)))), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, true)), true, false, true), all(vec2<bool>(true, true))), false));
    let var_1 = 1253f;
    var var_2 = any(vec2<bool>(false, true));
    let var_3 = Struct_1(vec4<bool>(false, true, false, !any(vec3<bool>(true, true, true))), true);
    let var_4 = vec4<i32>(_wgslsmith_sub_i32(-28720i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 225u), vec2<u32>(1u, 1u)) % 32u), _wgslsmith_sub_i32(max(~1i, -7746i), countOneBits(_wgslsmith_div_i32(-1613i, -2147483647i)))), abs(func_1().x), ~(-(2147483647i >> (_wgslsmith_div_u32(28339u, u_input.a) % 32u))), -(_wgslsmith_add_i32(46762i, 34859i) << (u_input.a % 32u)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1250f))) + -585f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1209f + _wgslsmith_f_op_f32(round(var_1))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~var_4.x ^ var_4.x, -1i), u_input.a, _wgslsmith_mod_i32(~(abs(-32039i) & var_4.x), var_4.x ^ reverseBits(-var_4.x)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, max(u_input.a, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), countOneBits(vec2<u32>(u_input.a, 1u))))));
}

