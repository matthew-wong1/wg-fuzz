struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(~(_wgslsmith_div_i32(u_input.a.x, -10235i) >> (24700u % 32u)), Struct_2(Struct_1(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, 31236u))), -22382i), -_wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x)), ~vec4<i32>(0i, 10529i, u_input.a.x, u_input.a.x))), ~1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1640f, 1666f, _wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(sign(1060f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, 1000f, -160f, 415f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(258f, 1000f, 423f, 405f)))), vec4<bool>(true, true, true, true))))), Struct_2(Struct_1(vec2<u32>(u_input.b, ~1u), -53503i), vec4<i32>(reverseBits(1i), max(~(-37849i), firstTrailingBit(1i)), u_input.a.x ^ _wgslsmith_div_i32(32171i, -1i), -26693i)));
    let var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-18605i, ~var_0.b.b.x), 1i), Struct_3(-1i, var_0.b, ~(~(var_0.b.a.b << (52348u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, 1342f, -1000f, 981f), _wgslsmith_f_op_vec4_f32(-var_0.d))), Struct_2(var_0.e.a, _wgslsmith_mod_vec4_i32(vec4<i32>(31738i, var_0.c, 1i, u_input.a.x), vec4<i32>(u_input.a.x, var_0.e.b.x, 55542i, 1i) & vec4<i32>(u_input.a.x, 73078i, 1i, var_0.b.a.b)))));
    var var_2 = var_1.b.e.a;
    var_0 = Struct_3(firstLeadingBit(abs(u_input.a.x)), var_1.b.b, -var_2.b << (select(~abs(var_0.b.a.a.x), var_0.e.a.a.x, false) % 32u), var_1.b.d, Struct_2(Struct_1(abs(vec2<u32>(67894u, 0u)), var_0.c), var_1.b.e.b));
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(var_2.a, ~var_1.b.b.a.a, vec2<u32>(~(~var_1.b.e.a.a.x), u_input.c)), -40125i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1379f))), _wgslsmith_f_op_f32(ceil(var_0.d.x)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<i32>, 23>();
    let var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(462f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -484f))), _wgslsmith_f_op_f32(func_3()), -1276f) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(440f, -660f, 1074f, arg_0.x) * vec4<f32>(arg_0.x, -647f, 1301f, 1495f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 1f)), -133f, arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -500f)));
    var var_2 = Struct_1(vec2<u32>(u_input.b, u_input.c), ~(-3848i));
    let var_3 = 1u;
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(i32(-1i) * -1i), _wgslsmith_mult_i32(9472i, select(i32(-1i) * -7641i, -2147483647i, true)), var_0), ~_wgslsmith_div_i32(max(arg_1.b.x, -2147483647i | u_input.a.x), _wgslsmith_div_i32(arg_1.a.b, 1i) << (~var_2.a.x % 32u)));
}

fn func_1() -> f32 {
    let var_0 = select(vec2<bool>(true, true), !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), 0i == func_2(vec3<f32>(1f, 1f, 1f), Struct_2(Struct_1(vec2<u32>(0u, u_input.b), u_input.a.x), max(vec4<i32>(u_input.a.x, 2014i, -2147483647i, -89007i), vec4<i32>(-34086i, -2147483647i, 1i, u_input.a.x)))));
    let var_1 = vec2<i32>(min(firstTrailingBit(50667i), u_input.a.x), -2147483647i);
    let var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.b, u_input.c, 13247u)), vec4<u32>(~18004u, ~(u_input.c | 0u), min(1u, u_input.c), _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 13241u), vec3<u32>(u_input.c, u_input.c, 0u))))) ^ select(u_input.b, _wgslsmith_div_u32(1u, abs(u_input.b)), false);
    var var_3 = Struct_2(Struct_1(select(min(_wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(15560u, 120351u)), select(vec2<u32>(var_2, 4294967295u), vec2<u32>(4294967295u, 73379u), var_0)), select(vec2<u32>(var_2, u_input.c), vec2<u32>(var_2, var_2), all(vec2<bool>(true, var_0.x))), vec2<bool>(select(false, var_0.x, false), var_0.x)), 8531i), vec4<i32>(var_1.x, u_input.a.x, -var_1.x, u_input.a.x & -22923i) | abs(-_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, var_1.x, 0i, -55748i), vec4<i32>(-1i, var_1.x, var_1.x, 0i))));
    global0 = array<vec2<i32>, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f + 212f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -19955i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * 640f), -251f)))))));
    global0 = array<vec2<i32>, 23>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1)), -378f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(669f - var_1), _wgslsmith_f_op_f32(func_3()))), true)) + _wgslsmith_f_op_f32(-var_1)));
    let var_3 = Struct_3(-1i, Struct_2(Struct_1(max(~vec2<u32>(53659u, 5376u), vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), 0i), _wgslsmith_add_vec4_i32(firstTrailingBit(select(vec4<i32>(u_input.a.x, u_input.a.x, -3799i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 7654i, 40630i), false)), select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, -48254i, u_input.a.x)), vec4<bool>(true, true, true, true)))), -8326i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(442f, -179f, var_2, -155f), vec4<f32>(var_2, 1008f, var_1, 671f))))), Struct_2(Struct_1(vec2<u32>(u_input.b, ~u_input.b), -27722i), vec4<i32>(0i, 1i | u_input.a.x, reverseBits(i32(-1i) * -1i), ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

