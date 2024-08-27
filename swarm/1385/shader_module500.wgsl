struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = Struct_1(global0.a, firstTrailingBit(arg_0.a.b), arg_0.a.c);
    var var_0 = global0.b.ww;
    var var_1 = vec4<i32>(-u_input.a.x, arg_0.a.a.x, -20589i, abs(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(arg_0.a.a.x, -1i, -2147483647i), u_input.a.x)));
    let var_2 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(~var_1.x, 1i, max(arg_0.a.a.x, global0.a.x), 11030i)), vec4<u32>(global0.b.x, var_0.x, _wgslsmith_add_u32(var_0.x, 1u) & _wgslsmith_mult_u32(0u, global0.b.x), arg_0.a.b.x), arg_0.a.c));
    var_0 = ~var_2.a.b.wy;
    return 635f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-2191f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 13027i), global0.b, vec4<f32>(global0.c.x, global0.c.x, -539f, 1293f))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) * global0.c.x))));
    global0 = Struct_1(vec4<i32>(u_input.a.x, 0i, -(~global0.a.x) | (i32(-1i) * -u_input.a.x), -1i), global0.b | countOneBits(vec4<u32>(global0.b.x, global0.b.x, 9352u >> (global0.b.x % 32u), select(1u, global0.b.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, 102f, -2873f, global0.c.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-164f, -1316f, 755f, -374f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.c)))))));
    var var_1 = Struct_2(Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec4_f32(trunc(global0.c))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -541f) - 227f), global0.c.x));
    let var_3 = global0.a.x;
    return var_1.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = arg_2.a.c;
    return abs(arg_2.a.b);
}

fn func_1(arg_0: i32) -> vec4<u32> {
    let var_0 = abs(50426u);
    return func_4(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.a), ~_wgslsmith_add_vec2_i32(select(global0.a.xz, vec2<i32>(u_input.a.x, u_input.a.x), false), ~global0.a.xz)), vec2<i32>(-u_input.a.x, -firstLeadingBit(_wgslsmith_clamp_i32(u_input.a.x, -13615i, arg_0))), Struct_2(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.x), -358f)))));
    let var_0 = vec3<i32>(_wgslsmith_add_i32(-1i, -3362i), -204i, ~_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(2147483647i, -2147483647i & global0.a.x), ~select(global0.a.x, u_input.a.x, true)));
    let var_1 = global0.b.x;
    global0 = Struct_1(~vec4<i32>(2147483647i, 0i, -(-2147483647i >> (global0.b.x % 32u)), firstLeadingBit(global0.a.x) & -2147483647i), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.b.x, 0u, 0u, global0.b.x), vec4<u32>(~global0.b.x, 0u, global0.b.x, ~global0.b.x), abs(vec4<u32>(global0.b.x, 11578u, 4294967295u, 0u)) >> (min(global0.b, vec4<u32>(53349u, global0.b.x, 1u, global0.b.x)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(func_1(i32(-1i) * -2147483647i), min(vec4<u32>(global0.b.x, 91331u, global0.b.x, global0.b.x), firstLeadingBit(vec4<u32>(0u, 49168u, global0.b.x, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(-global0.c.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(390f)), _wgslsmith_f_op_f32(floor(-1497f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -726f))) - global0.c.x), -1000f, -994f));
    let var_2 = global0.a;
    let var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-46542i, var_0.x, 1i, var_0.x), vec4<i32>(2147483647i, 1i, 11508i, var_2.x))), -(~vec4<i32>(2147483647i, 38397i, var_0.x, 1i))), ~reverseBits(abs(vec4<u32>(24245u, global0.b.x, global0.b.x, global0.b.x))), vec4<f32>(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(420f + global0.c.x) - _wgslsmith_div_f32(global0.c.x, -1000f)), global0.c.x, _wgslsmith_f_op_f32(675f * 569f))));
    let var_4 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, ~global0.b.x, select(_wgslsmith_mult_vec4_u32(firstTrailingBit(~var_3.a.b), func_4(-vec2<i32>(1i, 24278i), _wgslsmith_mult_vec2_i32(vec2<i32>(49332i, var_4.x), vec2<i32>(-49896i, -23909i)), Struct_2(var_3.a))), countOneBits(var_3.a.b), vec4<bool>(true, !all(vec4<bool>(false, false, false, false)), true, !(var_3.a.b.x != global0.b.x))), min(global0.a & (~global0.a ^ (vec4<i32>(var_4.x, var_0.x, -60075i, 1i) ^ global0.a)), select(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(global0.a, var_3.a.a), -global0.a), vec4<i32>(global0.a.x, var_0.x, var_0.x, 1i) ^ (global0.a | var_3.a.a), vec4<bool>(all(vec2<bool>(false, false)), true, true, false))), var_3.a.b);
}

