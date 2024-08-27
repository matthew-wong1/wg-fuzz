struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_4,
    d: Struct_4,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool = false;

var<private> global2: array<Struct_5, 30>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_3 {
    global0 = u_input.a;
    global0 = ~u_input.a | max(0u, 0u);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-452f))), 651f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-456f, -482f), vec2<f32>(342f, -159f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-339f, -1294f)))))));
    global0 = u_input.a;
    var var_1 = u_input.b;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(152f, var_0.x, var_0.x), vec3<f32>(var_0.x, 336f, -200f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1596f + var_0.x), _wgslsmith_f_op_f32(round(205f)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, -375f, var_0.x)))))));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = vec4<f32>(-2759f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1000f)))));
    let var_1 = Struct_3(Struct_2(func_2().a.a), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.xzz, arg_2.a) - _wgslsmith_f_op_vec3_f32(-var_0.ywz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1928f, -1868f) + var_0.xyw)))));
    global1 = true;
    var var_2 = any(select(vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false), select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), all(vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(true, true, var_1.b.a.x <= -658f)));
    global2 = array<Struct_5, 30>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_1.a.a.a)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, 1518f, 914f)), var_1.b.a, vec3<bool>(true, true, true))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec4<u32>) -> vec4<u32> {
    var var_0 = func_2();
    var_0 = Struct_3(Struct_2(func_3(arg_2.d, countOneBits(-2147483647i), func_2().b, reverseBits(5361i & u_input.b.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(1273f, _wgslsmith_f_op_f32(floor(var_0.b.a.x)))), var_0.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global2 = array<Struct_5, 30>();
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a.x, -578f, -575f))))), func_3(arg_2.c, u_input.b.x, arg_0.a.a, u_input.b.x));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(u_input.a, arg_3.x), u_input.a, _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(u_input.a, 0u, u_input.a), arg_3.x) << ((200u >> (u_input.a % 32u)) % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(60479u, arg_3.x), ~1u) & ~arg_2.a, arg_2.a));
    return select(arg_3 << (vec4<u32>(_wgslsmith_div_u32(arg_3.x >> (arg_3.x % 32u), 1u & arg_2.c.a.x), ~var_2.x, firstTrailingBit(firstTrailingBit(27236u)), arg_3.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(max(~var_2, ~vec4<u32>(var_2.x, arg_3.x, 133128u, 11019u)), var_2, abs(max(var_2, vec4<u32>(9267u, arg_3.x, 20469u, arg_3.x)))) | _wgslsmith_mult_vec4_u32(var_2, var_2), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 30>();
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1637f, 1967f, -1174f), vec3<f32>(1379f, -922f, -279f)), vec3<f32>(734f, -696f, 139f), vec3<bool>(true, true, true))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(579f + -2514f), -1750f, _wgslsmith_f_op_f32(-1f))));
    let var_1 = Struct_4(_wgslsmith_mult_vec2_u32(~countOneBits(~vec2<u32>(52178u, 29664u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(32381u, u_input.a), vec2<u32>(u_input.a, u_input.a), true) | (vec2<u32>(u_input.a, u_input.a) | vec2<u32>(0u, u_input.a)), ~(~vec2<u32>(0u, 0u)))));
    global0 = 87933u;
    global2 = array<Struct_5, 30>();
    global0 = _wgslsmith_add_u32(~(_wgslsmith_div_u32(1u, ~1u) << (~u_input.a % 32u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~1u, var_1.a.x, min(var_1.a.x, u_input.a), ~35034u)), ~(vec4<u32>(1u, 68269u, 10251u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 1u, 40392u)) << (_wgslsmith_div_vec4_u32(func_1(var_0, vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(u_input.a, 30u)], vec4<u32>(u_input.a, 6769u, u_input.a, u_input.a)), ~vec4<u32>(var_1.a.x, 4294967295u, 83584u, 4294967295u)) % vec4<u32>(32u))));
    let var_2 = var_0.a;
    var var_3 = ~vec2<u32>(~func_1(func_2(), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), Struct_5(21307u, -1144f, var_1, var_1, vec2<f32>(var_2.a.a.x, var_2.a.a.x)), ~vec4<u32>(u_input.a, var_1.a.x, 1u, u_input.a)).x, _wgslsmith_mult_u32(abs(var_1.a.x), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-30617i, abs(min(vec3<u32>(42929u, var_1.a.x, var_1.a.x), vec3<u32>(u_input.a, var_3.x, var_3.x)) << (reverseBits(vec3<u32>(4294967295u, 31733u, u_input.a)) % vec3<u32>(32u))) | reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 33463u) & vec3<u32>(var_3.x, var_1.a.x, var_3.x), ~vec3<u32>(var_3.x, 1u, 1u))), reverseBits(reverseBits(_wgslsmith_div_i32(u_input.b.x, u_input.b.x)) & -40085i), vec2<f32>(838f, _wgslsmith_f_op_f32(-var_0.a.a.a.x)));
}

