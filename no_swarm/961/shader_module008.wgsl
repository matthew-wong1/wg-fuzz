struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(1u, 1u), vec2<u32>(0u, 107483u), vec2<u32>(2775u, 20950u), vec2<u32>(26214u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 21797u), vec2<u32>(4294967295u, 1236u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 8539u), vec2<u32>(19600u, 77821u), vec2<u32>(15015u, 4294967295u), vec2<u32>(1u, 26416u), vec2<u32>(8793u, 1u), vec2<u32>(0u, 46604u), vec2<u32>(42975u, 686u), vec2<u32>(2317u, 0u), vec2<u32>(89429u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(10166u, 1u), vec2<u32>(16395u, 4294967295u), vec2<u32>(81707u, 76832u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 10567u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1524u), vec2<u32>(1u, 11825u), vec2<u32>(68482u, 32794u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var var_0 = 823f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(495f, 422f), 1104f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(222f - -1599f), _wgslsmith_f_op_f32(f32(-1f) * -621f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) + _wgslsmith_div_f32(-352f, -381f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-777f, _wgslsmith_f_op_f32(trunc(var_1.x))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - var_1.x) * var_1.x), _wgslsmith_f_op_f32(674f + _wgslsmith_f_op_f32(ceil(-1000f)))))));
    return vec2<i32>(-5551i, arg_0.a.a.x);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(~select(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(-2147483647i, -2147483647i), all(vec4<bool>(true, true, true, true))), -min(-vec2<i32>(u_input.a, u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.b, 53398i)))), (39672u < _wgslsmith_sub_u32(~7929u, _wgslsmith_mod_u32(arg_0, arg_0))) & (~14394u <= ~arg_0));
    var var_1 = Struct_1(func_3(Struct_2(Struct_1(vec2<i32>(-28070i, var_0.a.x), false), arg_0 ^ 31927u, Struct_1(var_0.a, var_0.b), vec2<bool>(var_0.b, true)), -2147483647i, ~abs(vec3<u32>(arg_0, arg_0, arg_0))) | func_3(Struct_2(Struct_1(var_0.a, var_0.b), 20888u, Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), false), vec2<bool>(var_0.b, var_0.b)), -1i, select(vec3<u32>(arg_0, 9114u, arg_0), vec3<u32>(arg_0, 74118u, 71879u), vec3<bool>(var_0.b, false, false)) & min(vec3<u32>(1u, 0u, arg_0), vec3<u32>(arg_0, arg_0, 20915u))), var_0.b);
    let var_2 = Struct_2(Struct_1(var_1.a, false), _wgslsmith_mult_u32(7785u, ~(~(149008u | arg_0))), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(12702i, max(var_1.a.x, var_0.a.x)), -(~vec2<i32>(-23635i, var_0.a.x))), firstTrailingBit(_wgslsmith_div_u32(arg_0, 0u)) > _wgslsmith_dot_vec2_u32(~vec2<u32>(5036u, arg_0), ~global0[_wgslsmith_index_u32(63688u, 27u)])), vec2<bool>(any(vec2<bool>(var_0.b, false)), any(select(select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, false, false), true), select(vec3<bool>(var_0.b, false, var_1.b), vec3<bool>(var_0.b, true, var_1.b), var_1.b), vec3<bool>(var_0.b, true, var_0.b)))));
    var_0 = Struct_1(reverseBits(min(var_1.a, vec2<i32>(-1i, u_input.a))), var_2.d.x);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1707f)));
    return min(~(~(~0u)), arg_0) >> (0u % 32u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(arg_1.a.a.x, -arg_1.c.a.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b.x, -1254f))), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-202f)) - _wgslsmith_f_op_f32(531f * 205f))), 991f));
    let var_2 = arg_1.a;
    global0 = array<vec2<u32>, 27>();
    let var_3 = _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec3_i32(arg_0.e.zxw, arg_0.a));
    return Struct_3(firstTrailingBit(~(~(-1i) | arg_2.c.a.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(Struct_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, u_input.b, u_input.a), max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.a, -21773i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(3272i, 19510i, -16894i), vec3<i32>(u_input.a, u_input.a, -2147483647i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-138f, -587f, 167f, -327f))), vec4<f32>(-310f, 299f, -1000f, 1310f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, 1563f, 642f, 214f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1644f, -856f, -1668f, 1000f))))), countOneBits(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 32604u, 4294967295u), vec4<u32>(13304u, 0u, 28511u, 1160u)), func_2(4294967295u))), ~(~(-vec4<i32>(-11481i, u_input.a, -1i, u_input.b)))), Struct_2(Struct_1(func_3(Struct_2(Struct_1(vec2<i32>(47977i, u_input.a), true), 1u, Struct_1(vec2<i32>(u_input.b, 18346i), false), vec2<bool>(false, false)), reverseBits(10537i), select(vec3<u32>(1u, 4294967295u, 4477u), vec3<u32>(0u, 50508u, 0u), vec3<bool>(false, true, true))), !select(false, true, true)), ~65293u, Struct_1(-vec2<i32>(-1i, -20287i) >> (global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(92025u, 1u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 20086u, 43376u)), 27u)] % vec2<u32>(32u)), all(vec3<bool>(true, true, true))), vec2<bool>(true, true)), Struct_2(Struct_1(~vec2<i32>(-1i, -1i) & firstLeadingBit(vec2<i32>(u_input.a, -4i)), !select(false, false, false)), ~(~max(1u, 10346u)), Struct_1(abs(func_3(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.b), false), 4294967295u, Struct_1(vec2<i32>(20641i, u_input.b), true), vec2<bool>(false, true)), -51532i, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), false)));
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var_0 = Struct_3(firstLeadingBit(var_0.a));
    var var_1 = func_4(Struct_4(-_wgslsmith_div_vec3_i32(vec3<i32>(-20333i, var_0.a, 8162i), vec3<i32>(u_input.b, u_input.a, -24196i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a, 0i, var_0.a) << (vec3<u32>(88815u, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.a, var_0.a, 1i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 731f, 1285f, -1000f) - vec4<f32>(-669f, -527f, -910f, -378f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-137f)), -421f, -739f, _wgslsmith_f_op_f32(f32(-1f) * -433f))), ~(_wgslsmith_div_u32(3839u, 59865u) << (~4294967295u % 32u)), max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-12585i, 55247i), vec2<i32>(u_input.a, -1i)), ~26416i, u_input.b | var_0.a, _wgslsmith_mult_i32(u_input.b, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, u_input.b, u_input.b, var_0.a), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.b, -1i, u_input.a), vec4<i32>(var_0.a, 0i, var_0.a, -29539i))))), Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(var_0.a, -646i), 1i & u_input.b), false & all(vec3<bool>(true, false, false))), 1u, Struct_1(vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-3519i, -2147483647i, -85486i, u_input.b), vec4<i32>(var_0.a, 15828i, 1i, 59124i))), _wgslsmith_f_op_f32(min(-543f, -1124f)) != _wgslsmith_f_op_f32(select(-1000f, -131f, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<i32>(6459i, -43113i) | -vec2<i32>(u_input.b, var_0.a), any(vec3<bool>(false, false, true)) && true), 121529u << (min(1517u, _wgslsmith_add_u32(0u, 0u)) % 32u), Struct_1(-(~vec2<i32>(u_input.a, u_input.a)), true), vec2<bool>(true, true)));
    return Struct_1(~(vec2<i32>(countOneBits(2147483647i), 0i) & _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(var_1.a, 77901i)), ~vec2<i32>(u_input.b, -1i), -vec2<i32>(var_1.a, 29303i))), any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))) && true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), ~(~1u), Struct_1(-abs(min(vec2<i32>(u_input.a, 43142i), vec2<i32>(-13589i, 14481i))), any(vec3<bool>(true, true, true)) && select(true, true, true)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(func_1().b, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec4<bool>(false, true, false, false))), vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, true, true))))));
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var_0 = Struct_2(func_1(), 22175u, var_0.a, var_0.d);
    let var_1 = Struct_2(func_1(), 11717u, func_1(), select(vec2<bool>(var_0.a.a.x > 0i, !(1u <= var_0.b)), select(vec2<bool>(all(vec3<bool>(var_0.c.b, true, var_0.d.x)), 4294967295u != var_0.b), vec2<bool>(true, func_1().b), vec2<bool>(true, true)), true));
    var var_2 = ~(~var_0.b);
    var var_3 = var_1;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -534f), 195f)))))), _wgslsmith_f_op_f32(ceil(2390f)), ~_wgslsmith_clamp_vec3_i32(-(vec3<i32>(var_3.c.a.x, var_3.a.a.x, var_4.a.a.x) >> (vec3<u32>(var_1.b, 26710u, 0u) % vec3<u32>(32u))), firstTrailingBit(~vec3<i32>(var_1.c.a.x, -38172i, -2147483647i)), vec3<i32>(-1i, abs(var_1.a.a.x), ~var_0.a.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1165f, -920f, -1069f)))))), ~var_3.b);
}

