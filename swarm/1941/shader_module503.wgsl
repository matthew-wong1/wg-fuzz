struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(global0.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, arg_1.a.x, global0.a.c.a.x, u_input.b) & (arg_1.a & vec4<u32>(109293u, 1u, 0u, arg_1.a.x)), countOneBits(arg_1.a)) << (_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, global0.a.c.a.x), vec3<u32>(arg_2.a.x, 38537u, arg_1.a.x))), arg_1.a.xyw) % 32u), Struct_1(~(~vec4<u32>(2775u, u_input.c.x, 1u, u_input.c.x)), 29021i, global0.a.c.c << (~(~vec2<u32>(arg_2.a.x, 9686u)) % vec2<u32>(32u))));
    var var_1 = select(!select(vec2<bool>(arg_0, true), select(vec2<bool>(false, false), vec2<bool>(arg_0, false), !vec2<bool>(true, arg_0)), !select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(false, arg_0))), vec2<bool>(any(vec2<bool>(true, true)), !arg_0), true);
    var var_2 = arg_2.a.x;
    global0 = Struct_3(var_0);
    let var_3 = Struct_3(Struct_2(Struct_1(var_0.c.a, var_0.c.b, var_0.c.c), 60603u, Struct_1(global0.a.c.a, -42205i, ~select(arg_2.c, vec2<i32>(27310i, 1i), vec2<bool>(true, arg_0)))));
    return -countOneBits(1i);
}

fn func_2() -> Struct_3 {
    global0 = Struct_3(Struct_2(Struct_1(firstTrailingBit(vec4<u32>(global0.a.a.a.x, u_input.c.x, global0.a.a.a.x, 1u)), 1i, global0.a.a.c), 1u, global0.a.c));
    global0 = Struct_3(Struct_2(Struct_1(global0.a.a.a, -_wgslsmith_dot_vec2_i32(global0.a.c.c, global0.a.a.c), vec2<i32>(func_3(false, global0.a.a, global0.a.a), -2147483647i)), min(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_clamp_u32(20947u, u_input.b, global0.a.c.a.x), abs(52208u)), _wgslsmith_add_u32(global0.a.c.a.x | 1u, ~global0.a.b)), Struct_1(abs(abs(vec4<u32>(54004u, global0.a.a.a.x, u_input.d.x, u_input.d.x))), 37270i, vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a), _wgslsmith_clamp_i32(-2147483647i, 16349i, -43566i)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) * _wgslsmith_f_op_f32(2002f + -230f)), -220f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-577f)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -827f, 263f, 391f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1031f, 1408f, 447f, 804f) * vec4<f32>(-1248f, -1000f, 264f, 1633f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, -1160f, -2572f, 664f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-432f, 149f, 750f, 1101f), vec4<f32>(-1808f, -468f, 2836f, -964f))))))));
    global0 = Struct_3(global0.a);
    let var_1 = Struct_4(Struct_3(Struct_2(Struct_1(global0.a.c.a, ~(-22733i), global0.a.a.c), abs(4294967295u), Struct_1(vec4<u32>(47039u, 4294967295u, u_input.d.x, global0.a.c.a.x), i32(-1i) * -3045i, ~vec2<i32>(u_input.a, 2147483647i)))), Struct_1(global0.a.c.a, 23076i, global0.a.a.c), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(max(-vec3<i32>(-18706i, 0i, u_input.e), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 31216i), vec3<i32>(20053i, 0i, u_input.a))), max(vec3<i32>(global0.a.c.c.x, u_input.e, u_input.e), ~vec3<i32>(u_input.e, global0.a.c.b, u_input.e))), -(~vec3<i32>(global0.a.a.b, global0.a.a.b, global0.a.a.c.x) & vec3<i32>(global0.a.a.c.x, 2147483647i, -79051i))), 4294967295u, u_input.a);
    return Struct_3(global0.a);
}

fn func_1(arg_0: f32) -> u32 {
    global0 = func_2();
    var var_0 = global0.a.a.b & global0.a.c.c.x;
    var var_1 = global0.a.a;
    let var_2 = 4294967295u;
    let var_3 = ~u_input.c.x;
    return global0.a.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(Struct_2(global0.a.c, func_1(174f), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.c.a.x, 46520u, u_input.d.x, global0.a.a.a.x), vec4<u32>(global0.a.b, u_input.c.x, 1u, global0.a.b)) << (global0.a.a.a % vec4<u32>(32u)), _wgslsmith_clamp_i32(-2147483647i, -1496i, u_input.e), ~vec2<i32>(u_input.e, global0.a.a.c.x))));
    var var_0 = true;
    let var_1 = Struct_3(global0.a);
    var var_2 = var_1;
    var var_3 = var_2.a.a;
    var var_4 = _wgslsmith_div_i32(-38642i, var_2.a.c.b << (_wgslsmith_mod_u32(1u, countOneBits(24099u)) % 32u)) ^ 0i;
    global0 = Struct_3(Struct_2(func_2().a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(var_2.a.c.a.x, global0.a.c.a.x), 4294967295u, max(0u, 10076u), ~u_input.b), vec4<u32>(_wgslsmith_mult_u32(28115u, var_2.a.c.a.x), var_2.a.a.a.x, u_input.d.x, _wgslsmith_div_u32(49299u, 61468u))), global0.a.a));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(2147483647i >> (1u % 32u), var_2.a.c.b, _wgslsmith_dot_vec2_i32(~var_3.c, ~vec2<i32>(-1i, global0.a.c.c.x))));
}

