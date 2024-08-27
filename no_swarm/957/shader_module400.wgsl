struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(-1i, 58508i, -30479i), vec3<i32>(0i, -2866i, 48848i), vec3<i32>(1i, -71832i, 2147483647i), vec3<i32>(25464i, i32(-2147483648), -58404i), vec3<i32>(-1i, -14271i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -8066i), vec3<i32>(13739i, -45039i, 21289i), vec3<i32>(232i, 1i, -49042i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = array<vec3<i32>, 8>();
    global0 = array<Struct_2, 24>();
    let var_0 = arg_1.a.yxx;
    var var_1 = ~0i;
    global0 = array<Struct_2, 24>();
    return arg_1.b;
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~(~1u), 24u)];
    let var_1 = vec4<bool>(any(vec4<bool>(u_input.a < 18032u, false, true, var_0.a)) && !all(!vec4<bool>(var_0.a, true, var_0.a, true)), true, false, true);
    let var_2 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(57737u) ^ ~u_input.a, abs(_wgslsmith_sub_u32(6504u, var_0.b))), _wgslsmith_mod_u32(50035u, ~var_0.b)), max(u_input.a, 100468u), max(firstTrailingBit(27569u), 1u));
    var_0 = global0[_wgslsmith_index_u32(4294967295u ^ var_2.x, 24u)];
    let var_3 = vec4<i32>(-46045i, 12334i, abs(_wgslsmith_mod_i32(arg_0 | arg_0, arg_0 ^ -7004i)), ~(arg_0 & abs(arg_0))) | vec4<i32>(_wgslsmith_clamp_i32(1i, 0i, -1i), arg_0, arg_0, abs(min(arg_0, 2147483647i)) >> (1u % 32u));
    return !any(var_1);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_2, 24>();
    var var_0 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), false)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(true, all(vec3<bool>(true, true, true)))), vec2<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -766f), -151f, 5790u > u_input.a)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(-1i, Struct_1(vec4<bool>(true, false, true, false), 247f, vec3<bool>(true, false, false)))))), true));
    let var_1 = Struct_1(vec4<bool>(true, all(!vec4<bool>(true, true, true, var_0.x)), false, func_3((2147483647i >> (u_input.a % 32u)) & 1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-473f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1035f))), select(select(!vec3<bool>(var_0.x, true, true), select(!vec3<bool>(false, var_0.x, false), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, false, false), var_0.x)), !(!vec3<bool>(false, false, var_0.x))), select(vec3<bool>(true, var_0.x, !var_0.x), !vec3<bool>(true, var_0.x, true), true), select(vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(true, var_0.x, false), !(!var_0.x))));
    global1 = array<vec3<i32>, 8>();
    var var_2 = 39271u;
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(firstTrailingBit(~(~u_input.a)), ~_wgslsmith_div_u32(~u_input.a, 4294967295u)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u, 25346u, 0u), ~(u_input.a ^ u_input.a))), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(767f, -994f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) * _wgslsmith_f_op_f32(floor(-533f))));
    var var_1 = global0[_wgslsmith_index_u32(abs(4294967295u), 24u)];
    var var_2 = var_1.a;
    var_1 = func_1();
    let var_3 = _wgslsmith_div_f32(-669f, 1f);
    let var_4 = _wgslsmith_f_op_f32(min(var_3, _wgslsmith_f_op_f32(f32(-1f) * -814f)));
    var var_5 = vec2<i32>(reverseBits(-(abs(908i) << (~u_input.a % 32u))), 0i);
    var_5 = _wgslsmith_sub_vec2_i32(abs(vec2<i32>((var_5.x ^ var_5.x) << (19937u % 32u), -2147483647i)), abs(vec2<i32>(1i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, var_4, -626f, var_4) - vec4<f32>(var_4, var_3, var_3, var_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, var_4, var_4, var_4))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, var_4, var_4) + vec3<f32>(var_3, 816f, var_4))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, 1193f, var_3) * vec3<f32>(var_3, 1743f, var_3)))))), firstLeadingBit(var_5.x), 13047u);
}

