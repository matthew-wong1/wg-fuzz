struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec3<f32> = vec3<f32>(846f, 1107f, -1017f);

var<private> global2: Struct_4 = Struct_4(vec2<f32>(558f, 1566f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = 10938i;
    let var_1 = -1000f;
    let var_2 = !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), true, true));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, 985f, global2.a.x)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-257f - global2.a.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, global2.a.x, var_1), vec3<f32>(-422f, global1.x, var_1), var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(251f, -553f, global1.x) * vec3<f32>(global2.a.x, 291f, 948f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, -218f, -317f), vec3<f32>(-1000f, global1.x, var_1)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-272f, -2193f, 400f))))))));
    var_0 = -_wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(-u_input.d), 47731i), u_input.d);
    return ~max(-(~(vec3<i32>(u_input.d, u_input.d, -4452i) & vec3<i32>(u_input.d, u_input.d, u_input.d))), select((vec3<i32>(u_input.d, 17646i, -1i) & vec3<i32>(u_input.d, 2147483647i, -2147483647i)) >> (u_input.b.zzw % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, u_input.d, 36594i), vec3<i32>(u_input.d, u_input.d, u_input.d)), vec3<i32>(u_input.d, 54453i, 17380i)), any(!vec3<bool>(var_2.x, var_2.x, var_2.x))));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(!vec2<bool>(!any(vec2<bool>(true, false)), false), abs(vec2<i32>(u_input.d >> (~u_input.c % 32u), -2147483647i)), Struct_1(_wgslsmith_dot_vec3_i32(min(firstTrailingBit(vec3<i32>(u_input.d, u_input.d, -15517i)), func_3()), select(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(u_input.d, 10507i, -532i) >> (vec3<u32>(4294967295u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), vec3<bool>(true, false, true))), u_input.d));
    let var_1 = u_input.b;
    var var_2 = var_0.c;
    global0 = 23546u;
    let var_3 = var_0;
    return ~u_input.c;
}

fn func_1() -> Struct_3 {
    global0 = func_2();
    var var_0 = Struct_1(-74255i, abs(u_input.d) & 5644i);
    global1 = vec3<f32>(111f, global1.x, global1.x);
    var var_1 = vec2<u32>(4294967295u, u_input.a);
    var_1 = u_input.b.wx;
    return Struct_3(all(vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), false, any(vec4<bool>(false, false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-978f, 686f)))) - 147f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(575f - global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-985f + _wgslsmith_f_op_f32(global2.a.x - -212f)) + _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(trunc(312f))))), Struct_2(vec2<bool>(~u_input.d != ~u_input.d, all(vec4<bool>(true, true, true, true))), firstLeadingBit(vec2<i32>(26040i, 25977i)), Struct_1(~(-34291i), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-587f, global2.a.x, global1.x), vec3<f32>(global1.x, global2.a.x, -132f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global2.a.x)))))));
    let var_0 = false;
    global0 = ~(~_wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, u_input.b.x), (u_input.a ^ u_input.e) ^ u_input.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(-559f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.x, 819f))))), var_0)));
    let var_2 = func_1();
    global0 = ~u_input.b.x;
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -301f), global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.a.x - var_2.b.x), -1168f, _wgslsmith_div_f32(var_2.b.x, global1.x)))), var_2.c.a.x));
    global0 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(~u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.c), u_input.b.x), _wgslsmith_clamp_u32(4294967295u, 99844u, countOneBits(countOneBits(u_input.a))));
    var var_3 = Struct_1(-1i, _wgslsmith_dot_vec4_i32(~reverseBits(-vec4<i32>(6070i, -2147483647i, u_input.d, u_input.d)), vec4<i32>(i32(-1i) * -29032i, _wgslsmith_sub_i32(max(var_2.c.c.a, 2147483647i), -1i), -1i, _wgslsmith_mod_i32(var_2.c.c.a, ~u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32((4294967295u << (_wgslsmith_mult_u32(u_input.a, 0u) % 32u)) & 7878u, u_input.c), (vec3<i32>(var_2.c.b.x, ~0i, _wgslsmith_div_i32(1i, 25663i)) << ((u_input.b.zyy << (~u_input.b.wzy % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<i32>(-3486i, -u_input.d << (firstTrailingBit(u_input.c) % 32u), ~(~var_3.a)));
}

