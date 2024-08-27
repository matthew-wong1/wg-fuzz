struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: array<vec2<u32>, 14>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, abs(2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) & -vec3<i32>(3887i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_add_i32(2124i, u_input.a.x)))), 45114i);
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-773f)) * _wgslsmith_div_f32(1000f, 1811f)), _wgslsmith_f_op_f32(trunc(-2287f)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1158f) - 115f) + _wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(f32(-1f) * -845f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1935f)), _wgslsmith_f_op_f32(f32(-1f) * -723f), 735f, _wgslsmith_f_op_f32(729f - -1091f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-1184f - -1076f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1143f, -221f, -1543f, 1870f), vec4<f32>(-677f, -626f, 446f, 709f))))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1384f, -772f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -1416f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(floor(var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -637f, -1798f, var_2) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_2, 663f) + var_1)) - vec4<f32>(var_1.x, -553f, _wgslsmith_div_f32(-390f, var_1.x), 284f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, 1953f, var_1.x)) * _wgslsmith_f_op_vec4_f32(var_1 + var_1))))));
    var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), var_3.x, var_1.x) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, var_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))), var_3.x, -395f));
    return 1i ^ _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a.x, -1i, 2147483647i, var_0.b.x)) >> (vec4<u32>(0u, u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), 4294967295u) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 0i, 394i), vec4<i32>(-16900i, 2147483647i, u_input.a.x, -22339i)), 1i, ~(u_input.a.x >> (1u % 32u)), -1i));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> i32 {
    global0 = array<vec2<f32>, 19>();
    var var_0 = Struct_2(Struct_1(!arg_0, vec3<i32>(0i, func_3(), u_input.a.x), ~(-func_3())), any(!arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1951f));
    var var_1 = _wgslsmith_clamp_vec3_i32(reverseBits(~var_0.a.b), select(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.a.b.x), _wgslsmith_mod_i32(-102854i, 23686i)), 68164i, -1i), ~(vec3<i32>(u_input.a.x, 27937i, -252i) >> (u_input.b % vec3<u32>(32u))), select(var_0.a.a, arg_0, !select(var_0.a.a, vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, var_0.b, false)))), vec3<i32>(-6929i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c, var_0.a.b.x), vec2<i32>(0i, i32(-1i) * -4216i))));
    var var_2 = var_0.a;
    var var_3 = Struct_1(!(!vec3<bool>(all(vec4<bool>(var_2.a.x, true, arg_0.x, var_2.a.x)), true, true)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(var_0.a.b.x, var_1.x))), reverseBits(var_0.a.b.x << (u_input.b.x % 32u))), -(~u_input.a.x), var_1.x), var_2.b.x << (5936u % 32u));
    return var_3.c;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_1(vec3<bool>(false, any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), true)), true), _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.a.x | -u_input.a.x, _wgslsmith_sub_i32(func_2(vec3<bool>(true, true, false), u_input.b.xy), -62191i), max(_wgslsmith_mult_i32(arg_0, u_input.a.x), _wgslsmith_mod_i32(arg_0, 1i))), ~min(vec3<i32>(5065i, arg_0, u_input.a.x) >> (vec3<u32>(17039u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(-22898i, -1i, arg_0)))), arg_0);
    let var_1 = Struct_2(Struct_1(select(select(var_0.a, !var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a, !select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.a.x)), select(~var_0.b, var_0.b, select(var_0.a, var_0.a, vec3<bool>(true, false, false))) | vec3<i32>(_wgslsmith_div_i32(55422i, -23520i), var_0.c, _wgslsmith_add_i32(var_0.b.x, 16660i)), ~(i32(-1i) * -14629i)), arg_0 == -22675i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1060f)))));
    let var_2 = u_input.b.xy;
    var var_3 = var_1;
    let var_4 = Struct_1(var_0.a, var_1.a.b, ~var_0.c);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    global1 = array<vec2<u32>, 14>();
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_2(Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), reverseBits(firstTrailingBit(vec3<i32>(1i, u_input.a.x, u_input.a.x))), 296i), all(select(vec3<bool>(select(true, true, true), func_1(u_input.a.x), true), vec3<bool>(-16035i >= u_input.a.x, u_input.a.x == -25817i, u_input.a.x != u_input.a.x), vec3<bool>(true, true, true))), -868f);
    let var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1049f)))), -1305f, true | (var_1.a.b.x != var_1.a.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), var_0.c)), _wgslsmith_div_f32(-245f, -432f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1914f, -445f, -2273f, -644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -819f, var_1.c, 131f) * vec4<f32>(var_0.c, 505f, var_0.c, -611f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, var_1.c, -412f) * _wgslsmith_div_vec4_f32(vec4<f32>(586f, var_1.c, var_0.c, -180f), vec4<f32>(var_1.c, var_1.c, 1615f, -440f))), false))), var_0.a.c, select(abs(_wgslsmith_add_vec3_i32(reverseBits(var_0.a.b), abs(var_1.a.b))), abs(~var_1.a.b), false));
}

