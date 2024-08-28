struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> i32 {
    return arg_0.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 1u)];
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x >> (4294967295u % 32u), ~1u, _wgslsmith_mod_u32(1u, global1.x)), 1u)];
    let var_1 = global2[_wgslsmith_index_u32(1u, 1u)];
    let var_2 = 0u;
    let var_3 = global2[_wgslsmith_index_u32(~abs(min(115531u, var_0.b)) | 784u, 1u)];
    return Struct_1(var_3.a, ~99683u, var_1.c);
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_i32(-5457i, func_2().a.x | _wgslsmith_sub_i32(-45103i, ~(21138i >> (global0.b % 32u))), ~(~global0.a.x));
    let var_1 = _wgslsmith_f_op_f32(-1045f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2().c.x + _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(trunc(-243f))), true))));
    var_0 = ~(56668i >> (global1.x % 32u));
    var_0 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(2147483647i, u_input.b.x), u_input.b.x);
    var var_2 = -_wgslsmith_add_vec4_i32(global0.a, _wgslsmith_clamp_vec4_i32(global0.a | _wgslsmith_sub_vec4_i32(global0.a, vec4<i32>(global0.a.x, 1i, -1i, u_input.c)), ~(~vec4<i32>(-35773i, global0.a.x, global0.a.x, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, u_input.c, -1i, global0.a.x), global0.a)));
    return vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().c.x), global0.c.x)), var_1, _wgslsmith_f_op_f32(trunc(global0.c.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    global2 = array<Struct_1, 1>();
    global1 = ~min(max(vec3<u32>(select(1u, global1.x, arg_3), reverseBits(global0.b), ~8008u), _wgslsmith_mod_vec3_u32(reverseBits(arg_0), arg_0)), ~arg_0);
    var var_0 = false;
    global2 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(419f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.c.x, arg_2.x)))) * 1056f))));
    return global2[_wgslsmith_index_u32(abs(global1.x), 1u)];
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> vec2<u32> {
    global1 = vec3<u32>(global1.x, arg_1.b, 17792u);
    var var_0 = func_4(vec3<u32>(1u, ~(~arg_1.b), global0.b) | (~(~vec3<u32>(0u, 14381u, 0u)) | ~countOneBits(vec3<u32>(87789u, global0.b, 4294967295u))), arg_1.a.x, vec4<f32>(-286f, _wgslsmith_f_op_f32(-arg_3), 1620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f))), _wgslsmith_div_i32(global0.a.x, ~(-42608i) << (~global1.x % 32u)) < -global0.a.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_3 + arg_2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_3))))));
    var var_2 = 42639u;
    var var_3 = arg_1;
    return global1.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(abs(_wgslsmith_dot_vec2_u32(global1.yz, _wgslsmith_mod_vec2_u32(global1.yy, ~global1.xy))), global1.x);
    var var_1 = Struct_1(-vec4<i32>(_wgslsmith_mult_i32(3085i, global0.a.x) | min(global0.a.x, u_input.c), _wgslsmith_sub_i32(func_1(Struct_1(global0.a, 7545u, vec2<f32>(global0.c.x, -205f)), global2[_wgslsmith_index_u32(1u, 1u)], vec2<u32>(var_0.x, global1.x), -1000f), ~7080i), ~u_input.c, func_1(global2[_wgslsmith_index_u32(12166u, 1u)], func_2(), firstLeadingBit(global1.xy), 1421f)), 96401u | (global0.b & (1u >> (min(3504u, 1u) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c)));
    var_0 = func_5(global0.a.x, func_4(vec3<u32>(1u, select(~var_1.b, ~29424u, select(false, true, true)), ~1u), -21945i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.x, -811f, var_1.c.x, var_1.c.x), _wgslsmith_f_op_vec4_f32(func_3(675f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1468f, -1004f, global0.c.x, var_1.c.x))))), true), vec2<f32>(_wgslsmith_f_op_f32(-global0.c.x), 1000f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_2().c.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c.x - global0.c.x))))));
    global2 = array<Struct_1, 1>();
    let var_2 = vec3<bool>(global1.x > 0u, false, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x), vec2<u32>(global1.x << (var_1.b % 32u), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 47291u), ~var_1.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-121f + global0.c.x) * func_2().c.x)), var_2.x)), vec2<u32>(var_0.x, firstTrailingBit(4294967295u)));
}

