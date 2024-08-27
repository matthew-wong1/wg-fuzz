struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-64306i, u_input.a.x, u_input.a.x), -19549i << (u_input.b % 32u)), u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 12532i, u_input.a.x), vec3<i32>(20164i, 23435i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) << (vec3<u32>(1u, 40114u, u_input.b) % vec3<u32>(32u))), ~(-2147483647i)), ~(vec4<i32>(u_input.a.x, -2147483647i, -6081i, -32479i) << (vec4<u32>(u_input.b, 4294967295u, 57685u, 0u) % vec4<u32>(32u))) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 12820i), vec4<i32>(-28957i, -22064i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(5086u, 19733u, 8608u, u_input.b) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-19199i, 1i, -26696i, 1i) ^ vec4<i32>(16902i, u_input.a.x, 42131i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -46033i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -2147483647i, -1i, u_input.a.x)), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x)), firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, -13226i, u_input.a.x)))), 5304i, -u_input.a.x, -29485i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1355f, -610f)) + -488f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(344f * -1181f) - _wgslsmith_div_f32(1000f, 1776f)), 326f))));
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.a.x, 1i, -36445i)), var_0.wzy, (vec3<i32>(-1i, var_0.x, u_input.a.x) | var_0.wyx) | vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_0.x, var_0.x, u_input.a.x), vec3<i32>(59871i, u_input.a.x, -2147483647i), true), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, -22891i), var_0.xyw)), vec3<i32>(var_0.x, 1i, -4065i) << (select(vec3<u32>(u_input.b, u_input.b, 1779u), vec3<u32>(u_input.b, u_input.b, u_input.b), true) % vec3<u32>(32u)), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)))), abs(countOneBits(var_0.yzy))));
}

fn func_2(arg_0: Struct_3) -> vec3<u32> {
    global0 = u_input.a.x & firstLeadingBit(-2147483647i);
    global0 = _wgslsmith_mult_i32(~(~(~(~u_input.a.x))), u_input.a.x);
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a.x, arg_0.a.a.x) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.a.x, arg_0.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-391f + _wgslsmith_f_op_f32(-1985f - arg_0.b.x)), -1433f))));
    let var_1 = -(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 9586i, u_input.a.x, 35615i)));
    var var_2 = (_wgslsmith_mod_i32(u_input.a.x | -2147483647i, -func_3()) << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u) | ~u_input.b, firstTrailingBit(u_input.b) << (_wgslsmith_div_u32(u_input.b, 10471u) % 32u)) % 32u)) <= select(27749i, _wgslsmith_dot_vec2_i32(vec2<i32>(-var_1.x, 1i ^ var_1.x), _wgslsmith_mod_vec2_i32(countOneBits(var_1.wy), var_1.xw)), true);
    return max(vec3<u32>(~(~_wgslsmith_sub_u32(1153u, u_input.b)), u_input.b, ~(~(u_input.b | u_input.b))), ~reverseBits(~(vec3<u32>(4294967295u, 16269u, 38497u) ^ vec3<u32>(0u, u_input.b, 4294967295u))));
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = func_2(arg_1);
    var_0 = ~select(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(9742u, 11314u, u_input.b) & vec3<u32>(111148u, 19461u, u_input.b)), vec3<u32>(0u, 1u, var_0.x) & ~vec3<u32>(var_0.x, var_0.x, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u) ^ vec3<u32>(4294967295u, 4294967295u, u_input.b), ~vec3<u32>(30075u, 620u, u_input.b))), firstLeadingBit(~(vec3<u32>(var_0.x, u_input.b, u_input.b) >> (vec3<u32>(1u, 4294967295u, u_input.b) % vec3<u32>(32u)))), any(vec4<bool>(true, true, true, true)));
    var var_1 = false & (4172u >= var_0.x);
    let var_2 = arg_1.a;
    let var_3 = Struct_3(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1874f - arg_0), 1000f, _wgslsmith_f_op_f32(min(arg_0, arg_0))), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + arg_1.a.a.x), -501f, -213f))));
    return var_3;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = reverseBits(1i);
    global0 = u_input.a.x;
    let var_0 = -1916f;
    global0 = ~(-u_input.a.x >> (0u % 32u));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x - _wgslsmith_f_op_f32(arg_0.a.a.x * -507f))), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-172f, var_0), vec2<f32>(var_0, arg_0.b.x)))))), vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))), vec2<bool>(0i <= u_input.a.x, true))));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = ~abs(~_wgslsmith_div_i32(~(-19073i), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    var var_0 = !select(!vec3<bool>(true, any(vec4<bool>(false, false, false, false)), 1u > u_input.b), vec3<bool>(true, _wgslsmith_mult_i32(u_input.a.x, -14259i) > u_input.a.x, true && all(vec3<bool>(true, false, false))), true);
    var_0 = select(vec3<bool>(any(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(var_0.x, var_0.x, false))), all(vec3<bool>(u_input.a.x < u_input.a.x, var_0.x && var_0.x, true)), var_0.x), !vec3<bool>(select(true, true, false & var_0.x), any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, var_0.x))), var_0.x), vec3<bool>(!var_0.x, !(true | var_0.x) || (u_input.a.x <= ~u_input.a.x), true));
    global0 = func_3();
    let var_1 = ~4294967295u;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    global0 = -_wgslsmith_mod_i32(func_5(4294967295u, func_4(func_1(875f, Struct_3(Struct_1(vec2<f32>(-259f, -649f)), vec3<f32>(-943f, -1000f, 1163f))))), -_wgslsmith_mod_i32(-18843i, ~u_input.a.x));
    global0 = u_input.a.x;
    global0 = -u_input.a.x;
    let var_0 = func_2(Struct_3(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(-1157f, -355f)), _wgslsmith_f_op_f32(f32(-1f) * -762f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-394f, -727f)), 2142f, _wgslsmith_f_op_f32(856f + -647f)))));
    let var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1006f)), 320f)) * func_4(func_1(_wgslsmith_f_op_f32(-1295f - -280f), Struct_3(Struct_1(vec2<f32>(-1000f, -621f)), vec3<f32>(2128f, -1475f, -1765f)))).a.x), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1026f, 108f)) + _wgslsmith_f_op_f32(-182f * 415f)))), Struct_3(func_1(_wgslsmith_f_op_f32(f32(-1f) * -735f), Struct_3(Struct_1(vec2<f32>(-546f, -2349f)), vec3<f32>(-981f, -197f, 1071f))).a, vec3<f32>(_wgslsmith_f_op_f32(max(101f, 978f)), _wgslsmith_f_op_f32(floor(1610f)), -1000f)))).a;
    var var_2 = vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & true, !(true & !select(false, true, true)), (select(false, any(vec4<bool>(true, false, false, false)), true) | !any(vec3<bool>(false, true, false))) || (468f == var_1.a.x));
    let var_3 = _wgslsmith_sub_u32(~func_2(Struct_3(Struct_1(var_1.a), vec3<f32>(1000f, -734f, 334f))).x, ~8771u);
    var var_4 = Struct_3(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, 1221f, -1376f), vec3<f32>(-417f, -806f, 673f))) * vec3<f32>(-531f, -763f, -1225f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -734f, var_1.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 757f, 1629f) - vec3<f32>(var_1.a.x, 182f, var_1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~(max(var_3, 85927u) >> ((var_0.x & 4294967295u) % 32u)), max(~0u, var_3), 28645u), _wgslsmith_div_vec2_f32(vec2<f32>(func_1(1660f, func_1(var_1.a.x, Struct_3(Struct_1(var_4.b.xz), vec3<f32>(var_4.b.x, 353f, var_4.b.x)))).b.x, -1000f), _wgslsmith_f_op_vec2_f32(-var_4.a.a)), 4294967295u);
}

