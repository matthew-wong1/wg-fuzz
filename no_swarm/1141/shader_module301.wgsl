struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: array<vec3<bool>, 5>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(~1u, firstLeadingBit(firstTrailingBit(1628u) << (1u % 32u))));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = ~vec2<u32>(31498u, ~1u);
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(572f - 1431f), _wgslsmith_div_f32(func_2(func_2(Struct_1(arg_1.a, true, vec3<bool>(true, arg_0, arg_1.b)), 415f, vec3<bool>(arg_0, false, arg_1.b), u_input.a.x), arg_1.a.x, arg_1.c, u_input.a.x).a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-115f * arg_1.a.x))))))));
    let var_3 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x ^ 4294967295u, 1u, var_0.x, 13902u), vec4<u32>(max(4294967295u, 20634u | var_0.x), 83982u, ~(~var_0.x), var_0.x));
    global2 = ~1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1656f - 300f)) + -1210f))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    global1 = array<vec3<bool>, 5>();
    let var_0 = 209f;
    global1 = array<vec3<bool>, 5>();
    let var_1 = Struct_1(arg_3.a, func_2(func_2(arg_3, _wgslsmith_f_op_f32(arg_0.a.x - func_2(Struct_1(vec2<f32>(686f, arg_3.a.x), true, arg_3.c), -1992f, arg_3.c, u_input.a.x).a.x), vec3<bool>(arg_0.c.x, -21794i <= u_input.a.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 44957i), vec2<i32>(u_input.a.x, -2147483647i))), -906f, func_2(func_2(func_2(Struct_1(arg_3.a, arg_2.b, vec3<bool>(arg_0.c.x, arg_3.c.x, true)), -290f, vec3<bool>(arg_0.b, false, arg_0.b), u_input.a.x), _wgslsmith_f_op_f32(110f * -2427f), !arg_3.c, -u_input.a.x), func_2(Struct_1(arg_3.a, arg_3.c.x, vec3<bool>(false, arg_3.c.x, arg_2.c.x)), _wgslsmith_f_op_f32(trunc(arg_2.a.x)), arg_2.c, _wgslsmith_div_i32(u_input.a.x, 23993i)).a.x, select(arg_0.c, !arg_0.c, false), firstLeadingBit(1i)).c, _wgslsmith_mult_i32(1i, -2147483647i >> (_wgslsmith_clamp_u32(1u, 4294967295u, 1u) % 32u))).c.x, !(!select(vec3<bool>(arg_0.b, arg_0.c.x, true), select(global1[_wgslsmith_index_u32(20978u, 5u)], arg_0.c, true), false)));
    global0 = array<vec2<bool>, 17>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(-arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(func_1(), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 10630i), ~vec3<i32>(u_input.a.x, 0i, u_input.a.x))), 0i, ~(~(~u_input.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(vec2<f32>(585f, 1443f), true, global1[_wgslsmith_index_u32(0u, 5u)]), 1479f, vec3<bool>(false, false, false), var_0.x), _wgslsmith_f_op_f32(func_3(false, Struct_1(vec2<f32>(210f, 522f), true, vec3<bool>(true, false, true)))), Struct_1(vec2<f32>(-486f, -895f), false, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-374f, 236f), true, vec3<bool>(true, true, false)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-254f, -2190f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-808f, 272f), vec2<f32>(-1000f, -1341f), vec2<bool>(true, true))), u_input.a.x > u_input.a.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2091f, 3287f) * vec2<f32>(-783f, 417f)) - vec2<f32>(491f, -376f))))), any(vec4<bool>(true, true, false, _wgslsmith_mod_i32(-1i, var_0.x) >= _wgslsmith_add_i32(-1i, 45182i))), !global1[_wgslsmith_index_u32(~((63165u << (1u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(32833u, 28512u), vec2<u32>(4294967295u, 6058u)) % 32u)), 5u)]);
    var var_2 = var_1;
    global0 = array<vec2<bool>, 17>();
    global2 = countOneBits(~(~5889u) << (min(1u, 0u) % 32u));
    let var_3 = func_2(func_2(func_2(func_2(func_2(Struct_1(vec2<f32>(-1245f, var_1.a.x), var_1.c.x, vec3<bool>(var_1.b, var_2.c.x, false)), -730f, var_1.c, -2147483647i), var_2.a.x, var_2.c, -var_0.x), var_2.a.x, vec3<bool>(var_1.b, true, !var_1.c.x), i32(-1i) * -58774i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, Struct_1(var_2.a, true, var_2.c))))), global1[_wgslsmith_index_u32(0u, 5u)], ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -14871i), vec2<i32>(u_input.a.x, -2604i)), firstLeadingBit(u_input.a.zw))), var_2.a.x, vec3<bool>(var_1.b, var_2.b, false), _wgslsmith_mult_i32(-(~(-1i)), -19962i));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.a.x)))), _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -935f), -2051f))))), _wgslsmith_mod_i32(~u_input.a.x, 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(9975u, 0u, 9951u, 74240u)) % 32u)), ~_wgslsmith_div_u32(26949u, min(~0u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1402f, -862f, var_1.a.x, var_2.a.x)), vec4<f32>(var_3.a.x, -837f, -167f, var_3.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(763f, 1000f, -1588f, var_2.a.x))))))));
}

