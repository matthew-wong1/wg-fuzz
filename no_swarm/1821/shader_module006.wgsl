struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_0.a, arg_0.a), vec3<f32>(-1376f, 1970f, 1238f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, arg_0.a, arg_0.c)))));
    let var_1 = arg_2;
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    let var_2 = ~0u;
    return Struct_3((vec4<i32>(-652i, -arg_2.a, _wgslsmith_add_i32(1i, -1i), arg_0.d.x) | abs(vec4<i32>(6958i, arg_0.b.x, -10026i, -52645i))) >> (~(vec4<u32>(u_input.c, var_2, 1u, 60601u) & select(vec4<u32>(1u, u_input.a, u_input.c, var_2), vec4<u32>(4294967295u, 1u, 2406u, 4294967295u), vec4<bool>(false, true, false, false))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1102f + var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -169f)), var_0.x, _wgslsmith_f_op_f32(arg_0.c - -1684f), var_0.x))), abs(~(~vec4<u32>(arg_1, 4294967295u, var_2, 38775u))) ^ vec4<u32>(1u, arg_1, arg_1, 42851u));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = Struct_2(true | !(true | (-1000f == arg_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-442f, 1000f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1041f))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))))), arg_1.a, arg_1.a, Struct_1(arg_0));
    let var_1 = vec4<f32>(327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))), var_0.b.x, _wgslsmith_f_op_f32(min(981f, var_0.b.x)));
    global0 = array<vec2<bool>, 21>();
    var var_2 = ~vec3<u32>(0u, u_input.a, _wgslsmith_mod_u32(0u, 1u));
    let var_3 = all(select(!select(vec4<bool>(false, var_0.a, true, var_0.a), vec4<bool>(var_0.a, false, var_0.a, var_0.a), true), !vec4<bool>(true, true, u_input.b.x >= u_input.b.x, !var_0.a), all(vec4<bool>(all(vec3<bool>(var_0.a, var_0.a, var_0.a)), var_0.b.x != -1049f, !var_0.a, true))));
    return true;
}

fn func_4(arg_0: i32, arg_1: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = Struct_4(Struct_1(_wgslsmith_add_i32(~(-arg_0), arg_0)));
    var_0 = arg_1;
    let var_2 = ~u_input.c;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, arg_1, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - func_2(Struct_5(arg_1, vec2<i32>(-1i, arg_0), 1899f, vec3<i32>(0i, 348i, var_1.a.a)), var_2, Struct_1(arg_0)).b.x) + -1000f)));
    return vec3<i32>(firstTrailingBit(var_1.a.a) << (38991u % 32u), var_1.a.a, min(~_wgslsmith_mod_i32(arg_0, i32(-1i) * -32939i), var_1.a.a));
}

fn func_1(arg_0: u32, arg_1: Struct_5) -> vec3<i32> {
    var var_0 = func_2(arg_1, arg_0, Struct_1(~arg_1.d.x | ~arg_1.d.x));
    let var_1 = ~vec3<i32>(arg_1.d.x, arg_1.d.x, -79960i);
    global0 = array<vec2<bool>, 21>();
    let var_2 = var_0.b.x;
    global0 = array<vec2<bool>, 21>();
    return func_4(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(var_0.a, var_0.a), vec4<i32>(-2147483647i, ~(-18603i), var_0.a.x, ~(-2147483647i)), select(false, false, false) | func_3(var_0.a.x, Struct_4(Struct_1(2801i)), arg_1.a)), -var_0.a), _wgslsmith_f_op_f32(-var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1824f + 1335f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -928f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(738f, 755f)) - _wgslsmith_f_op_f32(select(-246f, -971f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -455f), _wgslsmith_f_op_f32(ceil(-481f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(883f - 790f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -559f), -210f));
    global0 = array<vec2<bool>, 21>();
    let var_1 = vec4<i32>(48613i, abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(func_1(u_input.c, Struct_5(806f, vec2<i32>(-28573i, 12804i), var_0.x, vec3<i32>(2147483647i, 2147483647i, 2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 71i, 1i), vec3<i32>(1i, 1i, -1i))), ~0i)), i32(-1i) * -abs(2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 1i), select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), max(vec2<i32>(0i, 2147483647i), vec2<i32>(-2147483647i, 31197i))), ~(-7699i), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a));
}

