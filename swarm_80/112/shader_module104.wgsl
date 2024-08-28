struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true));

var<private> global1: vec2<i32> = vec2<i32>(29562i, 2147483647i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_3 & _wgslsmith_clamp_u32(arg_3, _wgslsmith_add_u32(51755u, ~_wgslsmith_mod_u32(arg_3, arg_3)), _wgslsmith_div_u32(abs(1u), ~_wgslsmith_mod_u32(30107u, arg_3))), 27u)];
    global0 = array<Struct_4, 27>();
    let var_1 = vec3<bool>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(11698u, arg_3), ~arg_3) < arg_3, false, (false || arg_1) || any(select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(false, arg_1, arg_1), arg_1), select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, var_0.a), vec3<bool>(arg_1, var_0.a, true)), arg_1)));
    let var_2 = true & (global1.x == reverseBits(0i));
    global1 = u_input.a.xz << (~(vec2<u32>(1962u, arg_3) << (select(vec2<u32>(arg_3, arg_3), ~vec2<u32>(arg_3, 4294967295u), true) % vec2<u32>(32u))) % vec2<u32>(32u));
    return 30690u;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(u_input.a.xx, vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(countOneBits(1i), _wgslsmith_sub_i32(global1.x, u_input.a.x), reverseBits(-7690i)), u_input.a.x << (1u % 32u)), u_input.a.x, u_input.a.x), vec2<u32>(_wgslsmith_sub_u32(~0u, ~func_3(vec4<f32>(1954f, -2149f, 476f, -439f), false, -511f, 26770u)), ~0u));
    global1 = min(u_input.a.yz, -vec2<i32>(abs(u_input.a.x) ^ ~20708i, 10771i));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-373f, -1001f, 249f, -1079f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-553f, 1685f, -565f, -1487f)) + vec4<f32>(1f, 1f, 1f, 1f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-973f, 334f, 1064f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, -298f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 338f, 250f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1087f, var_1.x) - vec4<f32>(var_1.x, -1175f, -1542f, var_1.x)) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 294f, var_1.x, -630f))))));
    var var_2 = vec2<u32>(~(28208u ^ (~var_0.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 4294967295u, var_0.c.x), vec4<u32>(var_0.c.x, var_0.c.x, 112531u, var_0.c.x)) % 32u))), abs(10363u));
    return !select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, false, false, false)), (global1.x > u_input.a.x) | true), vec2<bool>(!select(false, true, true), true));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(766f, 417f)), _wgslsmith_f_op_f32(max(874f, 157f))))) - _wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -311f), _wgslsmith_f_op_f32(f32(-1f) * -340f))))));
    global0 = array<Struct_4, 27>();
    global0 = array<Struct_4, 27>();
    var var_1 = ~_wgslsmith_div_vec3_i32(~vec3<i32>(0i, -2147483647i, u_input.a.x) | vec3<i32>(global1.x, -2147483647i, min(global1.x, global1.x)), abs(vec3<i32>(global1.x, u_input.a.x, -26350i)));
    var var_2 = u_input.a.x;
    return false | !all(select(vec2<bool>(true, true), func_2(), vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.wy;
    let var_0 = u_input.a.ww;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2110f);
    var var_2 = select(vec4<bool>(select(true, all(vec2<bool>(true, true)), true), true, true, true), select(vec4<bool>(countOneBits(0u) > _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 60303u, 18166u), vec3<u32>(0u, 49775u, 75682u)), true, false, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, func_1(), func_1(), true))), true);
    var_2 = vec4<bool>(var_2.x, var_2.x, any(var_2.wwy), func_1());
    var var_3 = reverseBits(~(~firstTrailingBit(3248u))) << (46956u % 32u);
    var_2 = select(!vec4<bool>(true, true | var_2.x, (u_input.a.x >> (4294967295u % 32u)) > u_input.a.x, var_2.x), select(!vec4<bool>(var_2.x, false || var_2.x, var_2.x && var_2.x, all(vec3<bool>(var_2.x, true, var_2.x))), vec4<bool>(var_2.x, var_2.x, true, true), false), var_2.x);
    let var_4 = ~(-1i);
    global1 = ~(-max(-vec2<i32>(var_4, var_4), firstLeadingBit(select(vec2<i32>(var_4, var_0.x), vec2<i32>(global1.x, u_input.a.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(1u), _wgslsmith_clamp_u32(0u, abs(30899u), 64486u)) | 0u, 1000f);
}

