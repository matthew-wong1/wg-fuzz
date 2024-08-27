struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(74010u, -2086f), Struct_5(34338u, -185f), Struct_5(3550u, 1969f), Struct_5(0u, 1000f), Struct_5(1u, -144f), Struct_5(21586u, 1002f), Struct_5(48013u, 915f), Struct_5(4294967295u, 1566f), Struct_5(27409u, 238f), Struct_5(11581u, -1625f), Struct_5(25608u, -475f), Struct_5(4294967295u, -2882f), Struct_5(51530u, 488f), Struct_5(1u, -1394f), Struct_5(13727u, 1096f), Struct_5(1u, 1000f), Struct_5(22401u, 1946f), Struct_5(4294967295u, -339f), Struct_5(1u, 550f), Struct_5(1u, -1090f), Struct_5(28585u, 1370f), Struct_5(0u, -1255f), Struct_5(1u, -214f), Struct_5(1u, -666f), Struct_5(0u, 735f), Struct_5(0u, 457f), Struct_5(1u, -992f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(arg_0.a.a.x, 1126f))) + -1784f), 967f, true)), _wgslsmith_f_op_f32(min(global0.x, global0.x)));
    global1 = array<Struct_5, 27>();
    var var_0 = vec3<bool>(true, -2222f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-767f, global0.x)))), arg_0.b && !(_wgslsmith_mult_u32(64787u, u_input.b) == ~u_input.c));
    global1 = array<Struct_5, 27>();
    global1 = array<Struct_5, 27>();
    return vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), 1191f);
}

fn func_3() -> vec4<f32> {
    var var_0 = (u_input.a != ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, 10662u), vec4<u32>(4294967295u, 79998u, u_input.c, 56672u)))) || !(!all(vec3<bool>(false, false, true)));
    let var_1 = max(abs(countOneBits(-1i)), -(~(-2147483647i)));
    let var_2 = abs(-(vec2<i32>(~var_1, 39583i) ^ vec2<i32>(var_1, min(2070i, 2147483647i))));
    let var_3 = abs(vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(var_1), 0i), 0i) & (reverseBits(vec2<i32>(var_1, -36268i)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.a, u_input.c) & vec2<u32>(47629u, 63760u)) % vec2<u32>(32u))));
    var var_4 = _wgslsmith_f_op_vec3_f32(global0.wyw * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2419f, _wgslsmith_f_op_f32(-global0.x), 1787f), vec3<f32>(_wgslsmith_f_op_f32(-1526f - 695f), 213f, -881f))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -2601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~(u_input.b << (u_input.b % 32u)))), u_input.b), 27u)];
    let var_1 = Struct_1(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a * global0.x), _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(Struct_1(vec3<f32>(561f, 166f, global0.x), global0.zx, 33378u, vec2<i32>(1i, 2147483647i), 1u), false)))))), 1u, countOneBits(-vec2<i32>(-1i, arg_0.b)), 1u);
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))));
    var var_2 = arg_0;
    let var_3 = (max(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.d.x, var_2.b, var_1.d.x), -arg_0.c.yzw), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.d.x, arg_0.c.x) | vec3<i32>(1i, arg_0.b, var_2.c.x), var_2.c.xzz >> (vec3<u32>(var_0.a, 45997u, var_0.a) % vec3<u32>(32u)))) | max(arg_0.c.xyw, arg_0.c.yzx)) << (~vec3<u32>(5462u, ~u_input.c, ~countOneBits(38704u)) % vec3<u32>(32u));
    return -460f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(1712f, 2525f, _wgslsmith_f_op_f32(f32(-1f) * -176f), 1046f);
    var var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-317f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(-891f, 1i, vec4<i32>(29464i, 10913i, -4646i, 32146i)))))), _wgslsmith_f_op_f32(-284f - global0.x))));
    var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true)));
    global1 = array<Struct_5, 27>();
    global1 = array<Struct_5, 27>();
    var var_1 = ~firstTrailingBit(u_input.b);
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(~2984u, firstLeadingBit(4294967295u)), ~0u >> (u_input.c % 32u), ~abs(~u_input.c)) | (vec3<u32>(~u_input.c, ~select(u_input.a, u_input.a, false), 26271u) | vec3<u32>(_wgslsmith_add_u32(max(u_input.b, 0u), ~u_input.b), 6125u, _wgslsmith_dot_vec2_u32(vec2<u32>(58021u, u_input.c) >> (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(exp2(global0.zwx)), 14979i, ~vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(38600u, 14479u), vec2<u32>(1u, 1u)), u_input.c ^ ~u_input.b, _wgslsmith_add_u32(var_2.x, max(4196u, 4294967295u)), select(_wgslsmith_mod_u32(4294967295u, var_2.x), 1u, true)));
}

