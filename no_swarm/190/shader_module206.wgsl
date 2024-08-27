struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: array<vec3<u32>, 27>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(0u);
    let var_1 = max(u_input.a, u_input.b.x);
    var var_2 = u_input.a;
    var var_3 = Struct_1(13048u);
    let var_4 = Struct_1(52224u);
    return Struct_2(var_4, var_4, ~vec4<u32>(abs(var_0.a), ~(~var_3.a), var_3.a, abs(1u & var_3.a)), Struct_1(0u), !(arg_0 == _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 + arg_0))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = select(!vec4<bool>(true, select(any(vec3<bool>(false, arg_0.e, false)), true, true), true, false), select(vec4<bool>(0u <= u_input.c, arg_0.e, (1u > arg_0.d.a) != all(vec2<bool>(arg_0.e, arg_0.e)), arg_0.e), !vec4<bool>(!arg_0.e, arg_0.e, true && arg_0.e, true), vec4<bool>(arg_0.e, arg_0.e, !(arg_0.b.a != u_input.c), arg_0.e)), !arg_0.e || !(all(vec3<bool>(false, true, false)) | arg_0.e));
    let var_1 = any(var_0.wy);
    var var_2 = arg_0.a;
    global0 = array<vec3<u32>, 27>();
    let var_3 = select(false | !var_0.x, u_input.b.x != _wgslsmith_div_i32(1i, 2147483647i), true) && arg_0.e;
    return var_2.a;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(min(u_input.c, func_3(func_2(-968f, vec2<bool>(false, true))))), Struct_1(u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, ~u_input.c, 1u, 15735u), ~(~vec4<u32>(4294967295u, u_input.c, 0u, u_input.c)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(29082u, 33879u, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, 0u, 1u)), ~vec4<u32>(_wgslsmith_mult_u32(u_input.c, u_input.c), ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 28858u, u_input.c, u_input.c), vec4<u32>(u_input.c, 5274u, 1u, 0u)), _wgslsmith_mult_u32(u_input.c, u_input.c))), Struct_1(u_input.c), true);
    var var_1 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) * _wgslsmith_f_op_f32(f32(-1f) * -170f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-513f, 319f, var_0.e)))))), !select(select(select(vec2<bool>(var_0.e, false), vec2<bool>(false, var_0.e), vec2<bool>(var_0.e, true)), vec2<bool>(true, true), true | var_0.e), select(vec2<bool>(true, false), !vec2<bool>(var_0.e, true), true), select(vec2<bool>(true, true), select(vec2<bool>(var_0.e, true), vec2<bool>(var_0.e, var_0.e), var_0.e), !vec2<bool>(true, var_0.e))));
    let var_2 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f)))), !select(vec2<bool>(var_0.e, true), vec2<bool>(var_1.e, var_1.e), true)).a;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(130f - -1105f), _wgslsmith_f_op_f32(321f - 895f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1669f, 1000f, 1179f, -1210f), vec4<f32>(279f, -183f, -1193f, 558f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(284f, -187f, -1000f, -2280f), vec4<f32>(754f, -696f, 472f, 1928f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, -188f, -1059f, -2549f)))))));
    var_1 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-331f))), vec2<bool>(true, true)).b, var_1.a, select(vec4<u32>(var_1.a.a, var_2.a, 1u, func_2(1200f, vec2<bool>(true, true)).a.a) | ~(vec4<u32>(var_0.b.a, u_input.c, var_1.b.a, var_2.a) >> (var_1.c % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(max(var_1.c, var_0.c) << ((var_0.c & var_1.c) % vec4<u32>(32u)), reverseBits(~vec4<u32>(4294967295u, var_1.c.x, var_2.a, var_2.a))), vec4<bool>(func_2(_wgslsmith_f_op_f32(-761f - var_3.x), select(vec2<bool>(var_0.e, var_1.e), vec2<bool>(true, var_1.e), var_1.e)).e, true, false, true)), var_1.d, true);
    return -u_input.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_2 {
    global0 = array<vec3<u32>, 27>();
    global0 = array<vec3<u32>, 27>();
    var var_0 = -985f;
    var var_1 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(-1f);
    return Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(-1394f + 646f))), vec2<bool>(select(false, any(arg_0), true), false)).a, Struct_1(~u_input.c), vec4<u32>(_wgslsmith_div_u32(u_input.c, _wgslsmith_mult_u32(4294967295u, u_input.c)), 30654u, ~u_input.c, 4294967295u) << (~vec4<u32>(u_input.c & u_input.c, u_input.c, select(u_input.c, 36417u, arg_0.x), reverseBits(132u)) % vec4<u32>(32u)), Struct_1(25900u), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-u_input.a, ~min(_wgslsmith_clamp_i32(-37198i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(0i, u_input.a)), u_input.b.x), ~_wgslsmith_add_i32(u_input.a, u_input.a)));
    var_0 = u_input.b.zx;
    let var_1 = false;
    let var_2 = func_4(vec4<bool>(!var_1, var_1, any(vec2<bool>(var_0.x >= var_0.x, all(vec3<bool>(true, true, var_1)))), !var_1), select(func_1(), -vec3<i32>(var_0.x, -var_0.x, ~22947i), !select(select(vec3<bool>(var_1, var_1, false), vec3<bool>(false, var_1, var_1), false), vec3<bool>(true, var_1, var_1), !vec3<bool>(var_1, false, false))));
    global0 = array<vec3<u32>, 27>();
    var var_3 = max(vec4<u32>(u_input.c, reverseBits(reverseBits(var_2.b.a)), _wgslsmith_dot_vec4_u32(~var_2.c, func_4(select(vec4<bool>(var_1, var_1, var_1, var_2.e), vec4<bool>(var_1, var_2.e, var_2.e, true), vec4<bool>(true, var_2.e, false, false)), vec3<i32>(2147483647i, 1i, -48486i)).c), ~abs(4294967295u)), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.a, u_input.c, u_input.c, var_2.d.a) | var_2.c, vec4<u32>(0u, 41312u, var_2.d.a, 17962u)), max(firstTrailingBit(var_2.c), var_2.c), vec4<u32>(1u, 1u, firstLeadingBit(61676u), ~1u)), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~(vec4<u32>(4294967295u, var_3.x, 29522u, var_2.c.x) | vec4<u32>(0u, u_input.c, 0u, 86758u)), select(var_2.c, ~var_2.c, vec4<bool>(u_input.b.x != -2147483647i, var_2.e, all(vec3<bool>(true, false, false)), false || var_2.e))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-586f)), -2122f))), -128f), 0u);
}

