struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 1i, -9699i, 2147483647i);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(146f), Struct_1(-548f), Struct_1(-1131f), Struct_1(-2076f), Struct_1(-986f), Struct_1(-1000f), Struct_1(749f), Struct_1(-559f), Struct_1(-1380f), Struct_1(480f), Struct_1(1000f), Struct_1(-552f));

var<private> global3: array<Struct_1, 4>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_1, 25>();
    var var_0 = firstTrailingBit(firstTrailingBit(vec3<i32>(min(global1.x, global1.x), global1.x, ~global1.x)) >> (~(~(vec3<u32>(0u, arg_0.x, 65702u) & vec3<u32>(u_input.a, u_input.a, arg_0.x))) % vec3<u32>(32u)));
    let var_1 = Struct_1(-634f);
    var var_2 = var_1.a;
    global1 = vec4<i32>(var_0.x, abs(1i) & var_0.x, global1.x, abs(35105i));
    return global2[_wgslsmith_index_u32(0u | u_input.a, 12u)];
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.a, -2010f)), vec3<f32>(_wgslsmith_f_op_f32(floor(142f)), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-296f + -282f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-199f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_0.a * arg_0.a))))));
    var_0 = vec3<f32>(-1105f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(sign(-133f)), all(vec3<bool>(true, true, true))))));
    let var_1 = _wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32((u_input.a | u_input.a) ^ _wgslsmith_mod_u32(0u, 4294967295u), u_input.a) & ~u_input.a);
    global0 = array<Struct_1, 25>();
    global2 = array<Struct_1, 12>();
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(29448i, -global1.x), global1.x) < global1.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = (39913u >> (select(31326u, 17479u, true) % 32u)) << (~(~(~u_input.a) ^ 44323u) % 32u);
    let var_1 = !vec2<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 1503f)) == _wgslsmith_f_op_f32(-arg_0));
    var var_2 = !(!vec4<bool>(var_1.x && (var_1.x || false), true, var_1.x, var_1.x));
    var var_3 = func_3(func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, firstLeadingBit(u_input.a), var_0), ~vec3<u32>(var_0, u_input.a, 28402u) ^ vec3<u32>(28619u, 5042u, var_0))));
    var var_4 = func_2(select(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, u_input.a, var_0) | vec3<u32>(1u, u_input.a, u_input.a), min(vec3<u32>(var_0, var_0, var_0), vec3<u32>(var_0, 0u, 1u))), ~vec3<u32>(u_input.a, u_input.a ^ var_0, min(37721u, u_input.a)), select(var_2.yyx, var_2.xxw, select(var_2.zyy, select(var_2.wzy, vec3<bool>(false, var_1.x, false), var_2.x), var_1.x))));
    return Struct_1(154f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(634f);
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2008f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(473f - var_0.a), _wgslsmith_div_f32(var_0.a, var_0.a))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1697f))))));
    var_1 = func_1(_wgslsmith_f_op_f32(-var_1.a));
    let var_2 = u_input.a;
    global0 = array<Struct_1, 25>();
    var var_3 = Struct_1(-860f);
    global1 = -_wgslsmith_mod_vec4_i32(abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-53028i, global1.x, global1.x, global1.x), vec4<i32>(1i, -91115i, global1.x, global1.x)))), vec4<i32>(_wgslsmith_mod_i32(global1.x, global1.x), global1.x, global1.x ^ global1.x, global1.x) & -_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -552i, global1.x, global1.x), vec4<i32>(2147483647i, global1.x, global1.x, -29194i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~(~select(vec3<u32>(u_input.a, u_input.a, 97714u), vec3<u32>(var_2, var_2, 23186u), false))).a, _wgslsmith_div_u32(14222u, u_input.a), vec4<u32>(~_wgslsmith_sub_u32(u_input.a & 0u, ~0u), var_2, _wgslsmith_div_u32(abs(abs(4294967295u)), u_input.a), max(firstTrailingBit(_wgslsmith_clamp_u32(38252u, 1u, var_2)), ~abs(u_input.a))), abs(~(~(vec3<u32>(var_2, 4294967295u, 5297u) ^ vec3<u32>(0u, u_input.a, u_input.a)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 12264u, max(var_2, var_2), ~1u), max(vec4<u32>(u_input.a, u_input.a, var_2, u_input.a), vec4<u32>(18196u, var_2, 25111u, 1u) | vec4<u32>(4294967295u, 28389u, 58158u, 16536u))));
}

