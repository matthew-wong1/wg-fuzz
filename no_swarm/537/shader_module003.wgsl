struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 40030u;

var<private> global1: bool = true;

var<private> global2: u32 = 112646u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global2 = 0u;
    var var_0 = ~_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-1i, u_input.c.x, -17669i, u_input.d)), vec4<i32>(-2147483647i, u_input.a, -1i, u_input.a)) | _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.c), u_input.c);
    global2 = ~(arg_0.x >> (abs(~1u) % 32u));
    var var_1 = Struct_1(vec2<i32>(min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-3591i, 10276i, u_input.d), abs(u_input.c.x)), -19672i ^ ~u_input.c.x), _wgslsmith_div_i32(-_wgslsmith_mult_i32(-6050i, u_input.d), _wgslsmith_sub_i32(u_input.a, 27610i))), ~min(1i, reverseBits(u_input.c.x)), !arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -737f, 125f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, -744f, -407f) + vec3<f32>(667f, 303f, -1647f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1195f, -1000f, -1000f), vec3<f32>(-375f, 187f, 419f))))))), _wgslsmith_div_vec3_u32(~((vec3<u32>(80092u, 32769u, 1u) << (vec3<u32>(90714u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) << (vec3<u32>(47956u, arg_0.x, arg_0.x) % vec3<u32>(32u))), select(vec3<u32>(_wgslsmith_mult_u32(58435u, u_input.b.x), reverseBits(120496u), 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 44692u), vec3<u32>(1u, u_input.b.x, arg_0.x), vec3<u32>(arg_0.x, u_input.b.x, u_input.b.x)), vec3<u32>(arg_0.x, 22053u, 0u) & vec3<u32>(1u, 1u, 19706u)), true)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.x), -282f, false)) * var_1.d.x) * 535f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) - _wgslsmith_f_op_f32(min(var_1.d.x, var_1.d.x))), _wgslsmith_f_op_f32(round(-685f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.d.x, var_1.d.x)) * 1587f)), var_1.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x))), 127f)));
    return _wgslsmith_f_op_f32(round(-1024f));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(min(vec2<u32>(u_input.b.x, 13206u), vec2<u32>(arg_1.x, 0u)), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_1 = _wgslsmith_sub_vec3_i32(~(-((vec3<i32>(u_input.c.x, -6927i, u_input.a) ^ vec3<i32>(u_input.a, u_input.d, u_input.c.x)) & (vec3<i32>(18497i, u_input.c.x, -24998i) & vec3<i32>(u_input.a, -2147483647i, -2147483647i)))), ((_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.c.x, 10158i)) << (_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(17123u, arg_1.x, 4294967295u)) % vec3<u32>(32u))) & select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, -29085i, u_input.a), vec3<i32>(u_input.c.x, u_input.c.x, -7822i)), select(vec3<i32>(u_input.a, u_input.d, u_input.c.x), vec3<i32>(u_input.a, -33621i, 0i), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))) << (~arg_1 % vec3<u32>(32u)));
    let var_2 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), arg_1.x >= 0u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(-var_0)))), Struct_1(var_1.xx, ~u_input.c.x, select(vec4<bool>(var_2, var_2 || var_2, true, all(vec3<bool>(false, var_2, var_2))), vec4<bool>(true, false, any(vec4<bool>(false, var_2, true, true)), all(vec3<bool>(var_2, true, true))), !vec4<bool>(var_2, var_2, var_2, var_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, arg_0.x, arg_0.x))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -700f, arg_0.x))))), countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1, arg_1), ~arg_1))), vec3<u32>(1u, arg_1.x >> (arg_1.x % 32u), u_input.b.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<f32> {
    var var_0 = func_2(arg_1.b.d.xx, arg_1.c);
    global1 = !(true && arg_1.b.c.x);
    global1 = true;
    return var_0.b.d.yy;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(vec2<i32>(-min(-19057i, -u_input.c.x), ~_wgslsmith_sub_i32(~(-62907i), -2147483647i >> (arg_0.b.e.x % 32u))), u_input.b.x < ~select(firstLeadingBit(arg_0.b.e.x), ~1u, !arg_0.b.c.x));
    var var_1 = _wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.b.x, ~firstLeadingBit(1u)), select(vec4<bool>(!arg_0.b.c.x, !(var_0.b || true), arg_3, true), !vec4<bool>(true, all(vec4<bool>(var_0.b, arg_3, arg_3, var_0.b)), 41093i <= u_input.a, u_input.b.x != arg_0.b.e.x), vec4<bool>(all(arg_0.b.c.yy), true, all(arg_0.b.c.zyx) & false, true)), any(vec4<bool>(arg_0.b.c.x, !(!var_0.b), true, any(select(vec4<bool>(true, var_0.b, arg_0.b.c.x, arg_0.b.c.x), vec4<bool>(arg_3, arg_0.b.c.x, true, var_0.b), true))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, -645f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 12635i), u_input.c)), firstLeadingBit(~u_input.c.x), vec4<bool>(true, true, true, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2077f, -1559f, 293f))), min(countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), select(vec3<u32>(18771u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 18998u), vec3<bool>(true, true, false)))), abs(select(vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1353f))), _wgslsmith_f_op_f32(sign(-1554f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))) + vec3<f32>(143f, 1498f, _wgslsmith_f_op_f32(trunc(667f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-112f, -864f) - vec2<f32>(-533f, 1139f)), _wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(-2013f, 1217f, -262f), Struct_3(vec2<f32>(-920f, 1140f), Struct_1(u_input.c, u_input.d, vec4<bool>(false, false, true, true), vec3<f32>(253f, -533f, 828f), vec3<u32>(0u, 4294967295u, 4294967295u)), vec3<u32>(u_input.b.x, u_input.b.x, 6853u)))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(443f, 762f), vec2<f32>(-394f, 1628f)))))), true);
    var var_1 = countOneBits(vec4<u32>(30103u, _wgslsmith_mod_u32(u_input.b.x, select(36334u, ~u_input.b.x, !var_0.b)), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.b.x, 4294967295u) | _wgslsmith_sub_u32(u_input.b.x, 1u), 0u), _wgslsmith_clamp_u32(u_input.b.x, ~36773u, _wgslsmith_dot_vec2_u32(max(u_input.b, u_input.b), u_input.b))));
    global1 = true;
    var_1 = ~(~(~(~(vec4<u32>(4294967295u, u_input.b.x, var_1.x, var_1.x) << (vec4<u32>(var_1.x, 34516u, 39445u, u_input.b.x) % vec4<u32>(32u))))));
    global2 = 0u;
    let var_2 = ~firstLeadingBit(vec3<i32>(firstLeadingBit(-12646i), 1i, i32(-1i) * -7460i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(122f, -518f) - vec2<f32>(599f, 112f)), vec2<f32>(-1378f, 843f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, -120f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(step(-1248f, 243f)))))), _wgslsmith_mult_u32(var_1.x, 85628u), ~((var_1.x | ~23604u) | u_input.b.x));
}

