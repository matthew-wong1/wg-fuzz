struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec4<u32> {
    global0 = array<Struct_1, 11>();
    var var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var_0 = 573f;
    let var_1 = global0[_wgslsmith_index_u32(~(~(~(83519u & _wgslsmith_clamp_u32(u_input.c, u_input.c, 26608u)))), 11u)];
    var var_2 = u_input.c;
    return abs(reverseBits(firstLeadingBit(~(~vec4<u32>(4294967295u, 34007u, 31219u, 0u)))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 11>();
    return select(vec4<bool>(false, false, false, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), any(vec4<bool>(true, true, true, true))), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_mod_i32(-11507i, u_input.a.x);
    let var_1 = arg_1.e;
    var var_2 = select(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.c, 0u, u_input.c), select(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u), vec4<u32>(u_input.c, u_input.c, 14654u, u_input.c), arg_2)) & reverseBits(min(firstLeadingBit(vec4<u32>(u_input.c, 62563u, 44857u, u_input.c)), vec4<u32>(0u, u_input.c, 1u, u_input.c))), func_2(_wgslsmith_f_op_f32(round(arg_1.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(374f, -627f, arg_0.e, arg_0.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1370f, -368f, arg_0.a) * vec4<f32>(1266f, arg_0.c.x, var_1, var_1))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-484f, -422f, var_1, -548f), vec4<f32>(arg_0.e, arg_1.a, 593f, arg_0.c.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(arg_0.e - var_1), arg_1.e, -982f))), select(vec4<bool>(arg_2, true, true, false), select(!(!vec4<bool>(arg_2, arg_2, true, arg_2)), select(func_3(Struct_1(843f, vec3<i32>(u_input.b, u_input.b, -1i), vec2<f32>(-474f, arg_1.c.x), u_input.a.x, -107f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2, arg_2), false), select(arg_2, arg_2, arg_2)), arg_2), select(select(!arg_2, arg_0.d > arg_0.b.x, any(vec4<bool>(true, false, true, arg_2))), true, any(vec4<bool>(false, arg_2, false, arg_2)))));
    let var_3 = var_1 > 334f;
    let var_4 = select(!(!vec4<bool>(true, !var_3, 4294967295u <= u_input.c, arg_2)), !select(vec4<bool>(arg_2, arg_2, !var_3, true), vec4<bool>(!arg_2, true, false, arg_2), vec4<bool>(any(vec2<bool>(true, var_3)), any(vec3<bool>(true, true, false)), any(vec2<bool>(var_3, true)), true)), select(select(func_3(Struct_1(arg_1.e, arg_1.b, arg_0.c, -11855i, arg_1.e)), vec4<bool>(any(vec3<bool>(arg_2, var_3, var_3)), any(vec2<bool>(true, var_3)), arg_2, !arg_2), arg_2), !(!vec4<bool>(false, var_3, false, true)), func_3(global0[_wgslsmith_index_u32(var_2.x, 11u)])));
    return arg_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1346f, vec3<i32>(-u_input.a.x, _wgslsmith_mod_i32(u_input.a.x << (_wgslsmith_mult_u32(0u, 1u) % 32u), 1i), 11983i), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(1100f + _wgslsmith_f_op_f32(min(359f, -633f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(147f, -795f))))))), ~(~func_1(Struct_1(-1314f, vec3<i32>(u_input.d, 24362i, u_input.a.x), vec2<f32>(-1155f, -1359f), u_input.d, -365f), global0[_wgslsmith_index_u32(u_input.c, 11u)], true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1269f)))))));
    global0 = array<Struct_1, 11>();
    let var_1 = max(_wgslsmith_mult_vec4_u32(vec4<u32>(5232u, func_2(var_0.a, vec4<f32>(-1923f, var_0.e, var_0.e, var_0.e), vec4<f32>(var_0.e, -1523f, 389f, var_0.a)).x, ~u_input.c, u_input.c), countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(36630u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 61402u, u_input.c)))), vec4<u32>(1u, u_input.c, u_input.c, 1u | u_input.c) & ~(~vec4<u32>(0u, 4294967295u, 65708u, 235u)));
    let var_2 = !select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), !vec2<bool>(var_0.a != 354f, true), func_3(Struct_1(_wgslsmith_f_op_f32(min(-377f, -222f)), reverseBits(vec3<i32>(u_input.d, -1i, u_input.d)), _wgslsmith_f_op_vec2_f32(-var_0.c), min(u_input.d, 1i), 1942f)).yz);
    var var_3 = ~countOneBits(~_wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.a), select(vec4<i32>(u_input.d, -15060i, 41007i, var_0.d), u_input.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, var_3.wwx, _wgslsmith_f_op_f32(round(-189f)), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), abs(_wgslsmith_div_u32(_wgslsmith_mod_u32(82664u, u_input.c), ~14590u))), -var_3.x);
}

