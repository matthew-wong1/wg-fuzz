struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    let var_0 = min(abs(max(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), firstTrailingBit(vec4<u32>(4294967295u, u_input.d, u_input.d, 15534u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.d, 5251u, 0u), ~vec4<u32>(u_input.d, 1u, u_input.d, 4294967295u)))), ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.d, u_input.d, 23495u), abs(vec4<u32>(0u, u_input.d, u_input.d, 42722u)))));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_1 = false;
    global0 = array<Struct_1, 11>();
    return global0[_wgslsmith_index_u32(1u, 11u)];
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_0 = global0[_wgslsmith_index_u32(0u | ~u_input.d, 11u)];
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_sub_u32(52767u, 27107u), ~0u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 1u), firstTrailingBit(vec2<u32>(u_input.d, 1u))), vec2<u32>(firstTrailingBit(20344u), _wgslsmith_mod_u32(0u, u_input.d))) | abs(~(~vec2<u32>(u_input.d, u_input.d)))), 11u)];
    let var_2 = Struct_1(var_1.a, select(vec4<bool>(!(true & var_1.b.x), true, false, var_0.b.x), var_0.b, false));
    return _wgslsmith_add_vec4_u32(vec4<u32>(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d) >> (vec3<u32>(u_input.d, u_input.d, 25680u) % vec3<u32>(32u)), vec3<u32>(422u, 1u, 4294967295u) & vec3<u32>(u_input.d, 66209u, 4294967295u)), u_input.d, 4294967295u), vec4<u32>(u_input.d, u_input.d, u_input.d, max(_wgslsmith_sub_u32(28363u, u_input.d), firstTrailingBit(u_input.d)))) & vec4<u32>(u_input.d, _wgslsmith_sub_u32(select(select(u_input.d, u_input.d, var_2.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 0u, 1u, 6276u), vec4<u32>(0u, 4294967295u, u_input.d, u_input.d)), var_1.b.x), ~4294967295u | reverseBits(u_input.d)), 0u, u_input.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
    var var_1 = 511f;
    var_1 = -1720f;
    global0 = array<Struct_1, 11>();
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2405f)) * var_0.x)));
    return arg_0;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-285f)) * 1184f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1615f - -560f) + 1058f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(var_0)), 955f, var_0));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    var var_2 = func_4(func_2(), func_2(), countOneBits(_wgslsmith_mod_vec3_i32(u_input.a.xww, vec3<i32>(u_input.c.x << (0u % 32u), 1i, u_input.a.x))), _wgslsmith_dot_vec4_u32(~func_3(u_input.b, u_input.a.wxx) << (vec4<u32>(~u_input.d, 30985u, min(0u, u_input.d), firstLeadingBit(u_input.d)) % vec4<u32>(32u)), vec4<u32>(1u, ~(~0u), u_input.d, _wgslsmith_sub_u32(1259u, u_input.d))));
    return func_4(func_2(), func_2(), _wgslsmith_add_vec3_i32(~min(vec3<i32>(u_input.c.x, var_2.a.x, var_2.a.x), vec3<i32>(u_input.a.x, -1i, 2147483647i)) & vec3<i32>(0i, ~u_input.c.x, _wgslsmith_mod_i32(u_input.a.x, -1i)), vec3<i32>(_wgslsmith_mult_i32(1i, u_input.a.x), select(var_2.a.x, 3203i, var_2.b.x), select(u_input.a.x, var_2.a.x, true))), 13496u).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    var var_0 = true;
    let var_1 = select(vec2<bool>(!(true && func_1()), false), vec2<bool>(false, true), all(vec2<bool>(true == any(vec4<bool>(false, true, true, true)), false)));
    let var_2 = Struct_1(~abs(vec4<i32>(u_input.c.x, ~u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 1i), _wgslsmith_mult_i32(u_input.a.x, 1i))), func_2().b);
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32((vec4<u32>(1u, 1u, u_input.d, u_input.d) ^ vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d)) | max(vec4<u32>(u_input.d, 38940u, 48331u, 1u), vec4<u32>(u_input.d, 1u, u_input.d, 28865u)), max(vec4<u32>(19667u, 0u, 2788u, 0u), max(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(43085u, 0u, u_input.d, u_input.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(112f + -637f)))))), u_input.c.x);
}

