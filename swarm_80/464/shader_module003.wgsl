struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: f32 = 1135f;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(-271f))));
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1805f, 432f, -323f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(403f, -809f, 1215f) - vec3<f32>(1000f, 353f, -710f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(602f, 1000f, -1865f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(753f))), 382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(639f)) * 953f)))));
    var_0 = vec3<f32>(-517f, var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1012f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(154f)), _wgslsmith_f_op_f32(f32(-1f) * -2116f), _wgslsmith_f_op_f32(f32(-1f) * -197f)), vec3<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(floor(-1639f)), _wgslsmith_div_f32(-188f, 894f))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1027f), var_1.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -2781f) * 1334f))), 377f)));
    return 0u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.b;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(116f))));
    var var_1 = func_3(-_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, u_input.d.x)), abs(abs(vec2<i32>(u_input.d.x, u_input.d.x)))), select(~reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -5171i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(-1i, 11089i, u_input.d.x))), vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(11935i, -29670i, 15710i), vec3<i32>(u_input.d.x, u_input.d.x, -8146i)), true));
    var_1 = u_input.c.x;
    global0 = 1829f;
    return arg_0.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = select(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), vec3<bool>(true, true, true), any(vec2<bool>(all(vec2<bool>(false, true)) & true, !all(vec3<bool>(true, true, true)))));
    var var_1 = Struct_3(firstLeadingBit(vec4<u32>(arg_1.x, abs(1u) & (u_input.e >> (40601u % 32u)), arg_0.x, func_2(vec2<u32>(4294967295u, 25914u), Struct_3(vec4<u32>(u_input.c.x, 0u, u_input.c.x, arg_0.x), u_input.c.x), _wgslsmith_f_op_f32(-482f - 1424f), Struct_2(vec2<f32>(-591f, -1191f), Struct_1(vec2<u32>(arg_0.x, arg_1.x)), u_input.c.x, arg_0.x)))), ~u_input.e);
    var var_2 = 224f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(select(686f, -940f, false)))))));
    let var_4 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, var_3.x)))), Struct_1(vec2<u32>(1u ^ arg_0.x, 4294967295u)), ~0u, var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -704f), var_1.b, Struct_3(~_wgslsmith_sub_vec4_u32(var_1.a, var_1.a), arg_1.x & (arg_1.x >> (_wgslsmith_clamp_u32(arg_0.x, 40919u, u_input.e) % 32u))));
    return vec3<bool>(true && (6870i >= u_input.d.x), ~func_2(select(vec2<u32>(arg_0.x, 38543u), arg_1, false), var_4.d, 184f, var_4.a) < ~(u_input.e | 4294967295u), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !all(vec3<bool>(false, true, true))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), func_1(vec2<u32>(48882u, 0u), vec2<u32>(u_input.b.x, 1u))), select(vec3<bool>(true, false, true), vec3<bool>(true, any(vec2<bool>(true, false)), false), func_1(~vec2<u32>(32699u, 4187u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), u_input.a)))));
    var var_1 = u_input.d.x;
    var var_2 = u_input.d.x;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -741f);
    let var_3 = Struct_3(vec4<u32>(1u, ~42415u, 14721u, _wgslsmith_mult_u32(4294967295u, ~0u | u_input.e)), ~(~u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, u_input.d.x, _wgslsmith_sub_i32(-(u_input.d.x ^ u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, -1i)) | 0i)));
}

