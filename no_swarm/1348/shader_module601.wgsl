struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), countOneBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) | abs(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 9357u))) << (vec4<u32>(~(~_wgslsmith_add_u32(27592u, u_input.a.x)), 37409u, _wgslsmith_add_u32(64492u, u_input.a.x), _wgslsmith_sub_u32(~_wgslsmith_add_u32(1u, 6237u), u_input.a.x)) % vec4<u32>(32u));
    var var_1 = var_0.x;
    let var_2 = Struct_1(arg_0.d, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -149f)))), _wgslsmith_mult_vec2_i32(-(~vec2<i32>(arg_0.c.x, arg_0.e)) | vec2<i32>(arg_0.e, arg_0.c.x), ~(-(arg_0.c >> (vec2<u32>(var_0.x, u_input.a.x) % vec2<u32>(32u))))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2393f - arg_0.b.x)) > arg_0.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, 1i, -70656i), vec3<i32>(0i, arg_0.e, arg_0.e)) | _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c.x, -1i, arg_0.e), vec3<i32>(arg_0.c.x, arg_0.c.x, -2147483647i)), vec3<i32>(-51108i, arg_0.c.x, arg_0.c.x) | ~vec3<i32>(arg_0.c.x, -1i, 16262i)) ^ (~(~arg_0.c.x) ^ arg_0.c.x));
    var_1 = 5364u;
    let var_3 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.x, u_input.a.x, ~var_0.x), ~var_0.xyx));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1156f, _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(min(arg_0.b.x, 1020f)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - arg_2.a)) + _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(-arg_2.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.xwy);
    let var_2 = !arg_0.b.wyy;
    var var_3 = _wgslsmith_div_vec4_i32(~(vec4<i32>(48140i, arg_3.b.x, 2147483647i, 2147483647i) >> (vec4<u32>(0u, u_input.a.x, 1u, 103793u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -52077i, arg_3.b.x, arg_3.b.x)), vec4<i32>(arg_3.b.x, 11510i, arg_3.b.x, arg_3.b.x))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(23820u, countOneBits(firstTrailingBit(u_input.a.x)), ~(~22701u), max(~u_input.a.x, ~arg_3.c.x)), ~min(vec4<u32>(4294967295u, 13230u, 1u, 1u) >> (vec4<u32>(4294967295u, 1u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u))) % vec4<u32>(32u));
    let var_4 = any(!select(!arg_0.b.xy, !arg_2.b.zw, false));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.xx))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> vec4<u32> {
    var var_0 = ~_wgslsmith_dot_vec2_u32(u_input.a, select(~min(u_input.a, u_input.a), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(arg_2, arg_1))));
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(func_4(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2641f, 1169f) - _wgslsmith_f_op_f32(func_3(Struct_1(false, vec2<f32>(1482f, arg_0.x), vec2<i32>(1459i, -39993i), true, 0i)))), !select(vec4<bool>(arg_2, true, arg_1, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2), arg_2), Struct_2(any(vec4<bool>(true, false, false, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(862f, arg_0.x)), _wgslsmith_f_op_f32(sign(-206f)), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-320f, 808f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -899f, 1945f, -676f)))), Struct_5(arg_0.x, select(!vec4<bool>(arg_1, arg_2, arg_2, arg_1), !vec4<bool>(false, arg_2, true, arg_1), true), Struct_2(arg_2)), Struct_3(select(vec2<bool>(true, true), !vec2<bool>(arg_1, true), any(vec2<bool>(arg_1, arg_1))), vec3<i32>(~(-2147483647i), -56509i, i32(-1i) * -1011i), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 12829u), ~vec2<u32>(21404u, 0u), ~u_input.a)))), vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -8990i), vec2<i32>(0i, -22239i)), -71855i), max(1i, _wgslsmith_sub_i32(1i, 1694i))), arg_1, -1i);
    var_0 = ~39106u;
    return vec4<u32>(35339u, ~_wgslsmith_add_u32(111331u & u_input.a.x, 1u), ~1u, abs(_wgslsmith_div_u32(14018u, _wgslsmith_add_u32(u_input.a.x, 1313u)))) | (abs(vec4<u32>(~u_input.a.x, max(u_input.a.x, 14674u), 4294967295u, u_input.a.x & 4294967295u)) >> (vec4<u32>(abs(u_input.a.x & 1u), firstTrailingBit(1u & u_input.a.x), ~(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 27195u, u_input.a.x), select(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, arg_2, true, true)))) % vec4<u32>(32u)));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-421f, 1863f), vec2<f32>(-295f, 384f)))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1938f * 1000f), _wgslsmith_f_op_f32(-1000f - 338f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 111f) - _wgslsmith_f_op_f32(1000f * 1104f)))));
    var var_1 = vec4<bool>(true, true, !(!((arg_2.x | arg_2.x) || true)), (((true || arg_2.x) || (arg_1 <= 1i)) && any(vec2<bool>(arg_2.x, arg_2.x))) == (_wgslsmith_add_i32(_wgslsmith_mult_i32(34544i, arg_1), max(arg_1, arg_1)) <= -1i));
    var var_2 = Struct_3(select(select(vec2<bool>(!var_1.x, !arg_2.x), vec2<bool>(false | var_1.x, true), vec2<bool>(true, true)), select(vec2<bool>(var_1.x, true), !var_1.yy, var_0.x <= _wgslsmith_f_op_f32(var_0.x - var_0.x)), false), select(-(vec3<i32>(-1i, -2147483647i, 48890i) << ((vec3<u32>(u_input.a.x, 1u, u_input.a.x) & vec3<u32>(arg_3.x, arg_0, 0u)) % vec3<u32>(32u))), max(max(max(vec3<i32>(arg_1, -2147483647i, -45229i), vec3<i32>(arg_1, arg_1, arg_1)), select(vec3<i32>(-51314i, -1i, -66916i), vec3<i32>(arg_1, -17683i, -1i), arg_2.xyz)), vec3<i32>(arg_1, ~arg_1, -1i)), !var_1.yww), ~(~func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 605f)), !arg_2.x, all(vec4<bool>(var_1.x, true, true, arg_2.x))).wx));
    var var_3 = arg_0;
    var_3 = _wgslsmith_dot_vec3_u32(~(arg_3.wwx | (vec3<u32>(53330u, arg_0, 1u) & arg_3.wxy)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(15144u, arg_3.x, 42474u), vec3<u32>(~arg_3.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(3005u, 4294967295u, u_input.a.x), vec3<u32>(arg_0, 4730u, 0u)))), var_2.c.x, ~(~(~4294967295u))));
    return Struct_3(vec2<bool>(false, all(arg_2.yww)), _wgslsmith_mult_vec3_i32(~var_2.b, vec3<i32>(arg_1, -(arg_1 ^ arg_1), var_2.b.x)), ~countOneBits(~(vec2<u32>(arg_0, 72018u) << (u_input.a % vec2<u32>(32u)))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -44319i, ~(~3107i)), i32(-1i) * -1i), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))));
    var_0 = 0u;
    var_0 = _wgslsmith_div_u32(47340u, 20129u);
    let var_2 = func_5(u_input.a.x, _wgslsmith_sub_i32(i32(-1i) * -var_1.b, 0i) | -17622i, !(!var_1.c), abs(~reverseBits(vec4<u32>(46697u, var_1.a, 1u, u_input.a.x)) | func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -506f))), select(false, false, true), true)));
    return func_5(_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_add_u32(~(~u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_2.c.x, u_input.a.x), vec3<u32>(32532u, 67195u, 1u)))), var_2.b.x, !select(var_1.c, !(!vec4<bool>(true, var_1.c.x, var_2.a.x, false)), var_1.c.x), vec4<u32>(34028u, ~_wgslsmith_mult_u32(u_input.a.x, ~var_2.c.x), u_input.a.x, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_2.c.x, 142410u), vec3<u32>(24139u, var_2.c.x, u_input.a.x)), 3100u, var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~0u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1747f) + -1324f));
    let var_2 = var_0;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -394f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(660f, 1081f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, 1000f), vec2<f32>(148f, 1000f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), 269f) - vec2<f32>(-1234f, -566f)))), var_3.b.x, _wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1768f + var_1))));
}

