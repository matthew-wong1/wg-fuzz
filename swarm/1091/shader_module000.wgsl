struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> bool {
    global0 = array<Struct_1, 28>();
    return !arg_2.b.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_1(arg_0.b.a, arg_1.x, select(true, any(vec4<bool>(arg_1.x, all(vec3<bool>(arg_1.x, false, arg_0.b.b)), false, !arg_1.x)), all(select(vec3<bool>(arg_0.b.b, false, arg_0.b.b), vec3<bool>(arg_0.b.b, false, arg_1.x), arg_0.b.d.x > arg_0.b.d.x))), vec4<i32>(0i, u_input.d.x, ~(u_input.c | u_input.a.x), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.d.x)), -1i)), _wgslsmith_f_op_f32(-1738f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.x - var_0.a.x), _wgslsmith_f_op_f32(-1481f * _wgslsmith_f_op_f32(f32(-1f) * -480f)), _wgslsmith_f_op_f32(-var_0.e));
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    return Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-arg_0.b.a))), true, false, vec4<i32>(_wgslsmith_mult_i32(arg_0.b.d.x, 1i), -5180i, var_0.d.x, var_0.d.x << (u_input.b.x % 32u)) & vec4<i32>(-u_input.c, 2147483647i, 37357i, firstLeadingBit(1i)), -1000f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    let var_0 = abs(arg_3.b.d.x);
    var var_1 = func_3(func_3(func_3(Struct_2(max(u_input.b, vec3<u32>(u_input.b.x, arg_3.a.x, 99478u)), Struct_1(arg_0.a, arg_3.b.c, false, vec4<i32>(0i, u_input.a.x, -27473i, arg_0.d.x), arg_1)), !(!vec2<bool>(arg_0.b, arg_3.b.c)), arg_0.a.zx), vec2<bool>(arg_3.b.b, _wgslsmith_clamp_i32(arg_0.d.x, var_0, 2147483647i) > _wgslsmith_sub_i32(arg_3.b.d.x, u_input.d.x)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))))), vec2<bool>(!(!func_3(Struct_2(arg_3.a, Struct_1(vec3<f32>(arg_3.b.e, arg_1, -285f), arg_3.b.c, arg_3.b.b, vec4<i32>(u_input.d.x, 0i, 2147483647i, arg_0.d.x), arg_1)), vec2<bool>(arg_3.b.c, arg_0.b), vec2<f32>(769f, arg_3.b.e)).b.b), true), arg_3.b.a.xx).b.a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.e)) * -1373f), _wgslsmith_f_op_f32(-arg_1), -1042f);
    return func_3(func_3(Struct_2(vec3<u32>(arg_3.a.x, u_input.b.x >> (9220u % 32u), 0u), Struct_1(func_3(arg_3, vec2<bool>(arg_0.b, arg_0.b), var_2.xy).b.a, all(vec3<bool>(true, false, arg_0.c)), func_2(arg_3.b.a.x, vec4<f32>(var_2.x, -1173f, -738f, arg_0.a.x), arg_3), _wgslsmith_sub_vec4_i32(vec4<i32>(-15530i, var_0, 0i, -5102i), vec4<i32>(var_0, 0i, 25552i, 1i)), -1598f)), vec2<bool>(true, all(!vec3<bool>(false, arg_3.b.b, arg_0.b))), arg_0.a.yx), vec2<bool>(arg_3.b.c, !arg_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.zx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2417f, 129f) * arg_3.b.a.zz))) * arg_3.b.a.xz))).b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec2<f32> {
    global0 = array<Struct_1, 28>();
    var var_0 = ~(~vec3<u32>(arg_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(35166u, 17905u, u_input.b.x, arg_0.a.x), min(vec4<u32>(1u, arg_0.a.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 58813u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) | arg_0.a)));
    var_0 = select(vec3<u32>(select(0u, ~103719u, true), ~(~(~u_input.b.x)), var_0.x), ~arg_0.a, select(vec3<bool>(false && func_2(arg_1.e, vec4<f32>(-1258f, -924f, arg_0.b.e, 363f), Struct_2(vec3<u32>(57756u, var_0.x, var_0.x), Struct_1(vec3<f32>(arg_1.e, arg_0.b.e, -1015f), true, arg_1.b, vec4<i32>(-24840i, 2147483647i, 4489i, arg_1.d.x), arg_0.b.e))), false, arg_1.b), select(vec3<bool>(arg_1.b, arg_0.b.b || arg_1.b, any(vec2<bool>(true, true))), !vec3<bool>(arg_1.b, arg_0.b.c, true), !vec3<bool>(arg_0.b.c, false, true)), true));
    var var_1 = !vec2<bool>(false, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.b.a * arg_1.a), 501f <= arg_1.a.x, false, ~u_input.a, arg_1.e), arg_0.b.a.x, -1536f, Struct_2(~arg_0.a, func_3(Struct_2(arg_0.a, Struct_1(vec3<f32>(714f, arg_1.a.x, arg_0.b.e), false, true, vec4<i32>(u_input.a.x, 2147483647i, -28277i, -95351i), 818f)), vec2<bool>(arg_0.b.b, false), arg_1.a.xx).b)).b);
    var var_2 = _wgslsmith_add_vec3_i32(-vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1.d.x, arg_0.b.d.x), 19863i, func_4(Struct_1(vec3<f32>(1187f, arg_1.e, -432f), false, false, arg_0.b.d, 982f), _wgslsmith_f_op_f32(-arg_0.b.e), _wgslsmith_f_op_f32(-arg_1.a.x), Struct_2(vec3<u32>(arg_0.a.x, 0u, arg_0.a.x), Struct_1(arg_1.a, true, arg_0.b.b, arg_0.b.d, arg_1.a.x))).d.x), ~(-arg_0.b.d.yyy));
    return vec2<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(240f + -527f), _wgslsmith_f_op_f32(arg_0.b.e * arg_0.b.a.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(Struct_2(~firstLeadingBit(u_input.b), global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), func_4(Struct_1(arg_3.a, !(arg_3.c | arg_2), true, vec4<i32>(-28023i, -2147483647i, u_input.a.x, firstLeadingBit(arg_0.x)), -2769f), -956f, _wgslsmith_f_op_f32(min(615f, _wgslsmith_f_op_f32(round(arg_3.e)))), func_3(Struct_2(select(u_input.b, vec3<u32>(arg_1, u_input.b.x, 19845u), vec3<bool>(true, arg_2, arg_3.c)), arg_3), vec2<bool>(true, func_2(arg_3.e, vec4<f32>(arg_3.e, arg_3.a.x, -627f, arg_3.a.x), Struct_2(vec3<u32>(arg_1, arg_1, u_input.b.x), Struct_1(vec3<f32>(-180f, arg_3.a.x, arg_3.e), arg_3.c, arg_3.c, vec4<i32>(-2147483647i, 5382i, -25452i, u_input.a.x), 1115f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-208f, arg_3.e))) * vec2<f32>(1036f, -1310f))))));
    var var_1 = Struct_2(u_input.b, global0[_wgslsmith_index_u32(arg_1, 28u)]);
    global0 = array<Struct_1, 28>();
    var_1 = func_3(Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(arg_3.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, var_1.b.a.x, var_0.x))), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(arg_2, arg_3.b, true, false), vec4<bool>(arg_2, arg_2, false, false), true)), vec4<i32>(~(-2147483647i), arg_3.d.x, ~arg_0.x, 0i), _wgslsmith_f_op_f32(-arg_3.a.x))), vec2<bool>(false, arg_3.c), vec2<f32>(var_1.b.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_1.b.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -199f))));
    var var_2 = Struct_2(~var_1.a, Struct_1(var_1.b.a, false, any(!vec3<bool>(arg_2, true, false)), arg_3.d, var_1.b.e));
    return global0[_wgslsmith_index_u32(1955u, 28u)];
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    return vec3<u32>(59298u, _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global0 = array<Struct_1, 28>();
    var_0 = 13948i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1290f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1815f) * _wgslsmith_f_op_f32(sign(-227f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, 1079f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f + -138f))) + -279f));
    let var_2 = Struct_2(func_6(false, Struct_2(u_input.b, func_1(u_input.d >> (vec2<u32>(57546u, 43300u) % vec2<u32>(32u)), firstLeadingBit(4294967295u), true, Struct_1(vec3<f32>(-1481f, -460f, 147f), true, false, vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, 13258i), -513f))), func_1(vec2<i32>(u_input.c, select(u_input.d.x, u_input.a.x, false)), 4294967295u, true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]).c), global0[_wgslsmith_index_u32(1u, 28u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~109414u, 0u) << (~max(min(u_input.b.zy, vec2<u32>(u_input.b.x, 86988u)), vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(u_input.d.x), ~(-47889i)), i32(-1i) * -1i)), vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1i, -58459i)), abs(u_input.c) >> (4294967295u % 32u), u_input.c), vec3<f32>(var_2.b.e, -703f, _wgslsmith_f_op_f32(-var_2.b.e)), vec3<i32>(~(-1i), var_2.b.d.x, var_2.b.d.x));
}

