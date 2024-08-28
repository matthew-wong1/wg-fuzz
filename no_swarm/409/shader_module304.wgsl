struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    return !select(vec2<bool>(!arg_0.a.x, select(true, false, true)), arg_0.a, true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = !vec4<bool>(!arg_1.a.x, arg_2.b.x != _wgslsmith_add_u32(select(arg_2.b.x, 0u, false), ~73062u), func_3(Struct_1(func_3(Struct_1(vec2<bool>(var_0.a.x, arg_2.a.x), var_0.b, arg_1.c, arg_0.d)), vec3<u32>(73051u, 41254u, 20055u), vec4<f32>(arg_2.c.x, var_0.c.x, -156f, -1230f), -37161i)).x, all(vec4<bool>(false, !arg_0.a.x, true, true)));
    let var_2 = arg_2;
    let var_3 = _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(50839u, var_0.b.x >> (arg_0.b.x % 32u), ~4294967295u, var_2.b.x), vec4<u32>(min(21339u, 1u), 1u, var_0.b.x, arg_2.b.x), !select(vec4<bool>(true, true, var_0.a.x, arg_0.a.x), vec4<bool>(false, var_1.x, true, arg_2.a.x), arg_2.a.x)), vec4<u32>(abs(_wgslsmith_mult_u32(arg_1.b.x, 9698u)), 1u, abs(1237u), _wgslsmith_clamp_u32(arg_0.b.x, ~23972u, arg_0.b.x)) & ~(_wgslsmith_sub_vec4_u32(u_input.d, u_input.d) | u_input.d), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_3, 7361u, _wgslsmith_mod_u32(3963u, 1u), var_2.b.x)), vec4<u32>(4294967295u, arg_1.b.x, arg_1.b.x, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_3, arg_0.b.x, arg_3, arg_0.b.x)))));
    var_1 = !select(!select(!vec4<bool>(var_0.a.x, arg_1.a.x, false, false), vec4<bool>(true, true, true, arg_0.a.x), arg_0.a.x), vec4<bool>(true, true, var_0.a.x, _wgslsmith_mult_i32(-43644i, var_0.d) < arg_0.d), vec4<bool>(_wgslsmith_sub_i32(var_0.d, var_2.d) > abs(arg_2.d), all(select(vec4<bool>(false, arg_0.a.x, true, arg_2.a.x), vec4<bool>(arg_2.a.x, false, false, var_0.a.x), vec4<bool>(var_1.x, true, false, false))), true, all(!vec4<bool>(arg_0.a.x, true, arg_1.a.x, arg_2.a.x))));
    return u_input.c;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.d, abs(_wgslsmith_mult_i32(var_0.d >> (0u % 32u), ~0i))), 1i);
    var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(24645i, var_0.d, arg_0.d), firstLeadingBit(vec3<i32>(1i, 2147483647i, -1560i))), u_input.c), func_4(var_0, Struct_1(select(!vec2<bool>(true, var_0.a.x), select(arg_0.a, arg_0.a, true), func_3(arg_0)), u_input.d.yxx >> (vec3<u32>(1u, 6509u, var_0.b.x) % vec3<u32>(32u)), var_0.c, -abs(arg_0.d)), arg_0, ~105968u));
    let var_2 = all(var_0.a);
    var var_3 = arg_0;
    return Struct_1(!var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.c))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.x, arg_0.c.x, -1914f, -441f), vec4<f32>(317f, var_0.c.x, 2499f, 425f))))), min(13149i, var_3.d));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = -1000f;
    let var_1 = ~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(27053u, u_input.d.x)), _wgslsmith_dot_vec4_u32(select(u_input.d, u_input.d, true), select(vec4<u32>(u_input.d.x, u_input.d.x, 62824u, 100312u), u_input.d, true))), ~(u_input.d.x ^ u_input.d.x) >> (select(u_input.d.x, 1u, all(vec4<bool>(false, true, true, false))) % 32u));
    var var_2 = ~u_input.d;
    let var_3 = func_2(Struct_1(vec2<bool>(false, true), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.wxz, abs(vec3<u32>(u_input.d.x, 0u, u_input.d.x))), vec3<u32>(var_1.x, var_2.x, _wgslsmith_clamp_u32(var_1.x, 4294967295u, var_2.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -929f, -182f, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, var_0, arg_0)), vec4<bool>(true, true, true, true))), -(u_input.c.x | u_input.c.x)));
    var var_4 = vec3<bool>(false, -_wgslsmith_clamp_i32(u_input.c.x | var_3.d, reverseBits(var_3.d), -var_3.d) == _wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(~vec2<i32>(-26055i, var_3.d), vec2<i32>(u_input.b, -23376i))), true);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(26878i);
    var var_1 = func_1(206f);
    var_0 = 0i;
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(max(u_input.d.xxz, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 1u), ~vec3<u32>(var_1.b.x, 4294967295u, 1720u))), ~select(vec3<u32>(36029u, 16948u, 46348u), ~var_1.b, true)), max(~(~var_1.b), vec3<u32>(_wgslsmith_mult_u32(8884u, u_input.d.x), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, u_input.d.x, 1u, u_input.d.x) | u_input.d, vec4<u32>(29820u, u_input.d.x, 4294967295u, 69005u)))));
    var var_3 = func_2(Struct_1(!vec2<bool>(func_2(Struct_1(vec2<bool>(var_1.a.x, true), vec3<u32>(u_input.d.x, u_input.d.x, 0u), var_1.c, 1i)).a.x, !var_1.a.x), u_input.d.zwy, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(349f + -428f), 2270f)), var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x) - 584f)), _wgslsmith_mod_i32(func_2(func_2(Struct_1(var_1.a, u_input.d.xxx, var_1.c, -3791i))).d, func_4(func_1(var_1.c.x), Struct_1(var_1.a, vec3<u32>(u_input.d.x, 42580u, 0u), var_1.c, u_input.b), Struct_1(var_1.a, vec3<u32>(8128u, var_1.b.x, 1u), vec4<f32>(var_1.c.x, -256f, var_1.c.x, var_1.c.x), var_1.d), 0u).x)));
    var var_4 = func_1(var_1.c.x);
    var_3 = Struct_1(vec2<bool>(true, var_3.a.x), abs(abs(vec3<u32>(~u_input.d.x, ~73478u, 7527u))), _wgslsmith_div_vec4_f32(func_1(_wgslsmith_f_op_f32(ceil(940f))).c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, var_3.c.x, 629f, -1903f))))), 46995i);
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1614f, 155f, -2477f, 850f))), var_1.c)));
    var var_6 = !(true || !(~55183u <= func_1(var_4.c.x).b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xwx);
}

