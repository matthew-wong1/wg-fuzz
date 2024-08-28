struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(2052f, 532f, -290f, -316f, -221f, 127f, 514f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<bool>(arg_1.b, any(select(!select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, true, arg_1.b), arg_1.b), vec3<bool>(arg_1.b, true, true), any(vec2<bool>(arg_1.b, false)))), true, !arg_1.b);
    var_0 = vec4<bool>(true, var_0.x, true, any(vec2<bool>(select(1u, u_input.a.x, true) == ~arg_1.a, false)));
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_mod_vec4_u32(arg_1.c ^ u_input.a, vec4<u32>(firstLeadingBit(arg_1.a), 1u, ~29789u, 4294967295u)) | vec4<u32>(~1u, arg_1.c.x, ~u_input.a.x, _wgslsmith_mult_u32(arg_1.c.x, ~min(1u, 1u)));
    var var_3 = -1i;
    return _wgslsmith_add_u32(var_2.x >> (49325u % 32u), 33553u);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = Struct_1(4294967295u, !arg_1, vec4<u32>(1u, u_input.a.x, reverseBits(~u_input.a.x), 0u) >> ((~u_input.a ^ _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u)));
    let var_1 = vec4<u32>(_wgslsmith_div_u32(0u, ~57272u), var_0.c.x, 16290u, (~min(u_input.a.x, 73087u) << ((4294967295u & var_0.c.x) % 32u)) >> (select(~func_3(vec4<f32>(1742f, global0[_wgslsmith_index_u32(4294967295u, 7u)], -1000f, arg_2), var_0), ~var_0.c.x, false) % 32u));
    global0 = array<f32, 7>();
    var var_2 = false;
    var var_3 = arg_2;
    return !var_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<f32, 7>();
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(8601i, 0i, _wgslsmith_sub_i32(-41518i, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(0i, 1i)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, -5200i, -1i) >> (u_input.a % vec4<u32>(32u)), -vec4<i32>(2147483647i, 2147483647i, -2147483647i, 0i)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, 1i, 2147483647i, 1i)), -vec4<i32>(45749i, 1i, -63694i, -18003i)), firstLeadingBit(-vec4<i32>(-50692i, -1i, 3432i, 9606i)))), vec4<i32>(-36809i, 0i, 51598i, reverseBits(-2147483647i) << (arg_1.a % 32u)) << (arg_2.c % vec4<u32>(32u)));
    var_0 = reverseBits(~(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(57280i, var_0.x, -2147483647i, var_0.x), ~vec4<i32>(var_0.x, var_0.x, -1i, 2147483647i), ~vec4<i32>(2147483647i, var_0.x, var_0.x, -18335i))));
    return !select(select(!(!vec4<bool>(arg_2.b, true, arg_0, arg_0)), select(select(vec4<bool>(true, arg_1.b, arg_1.b, arg_2.b), vec4<bool>(false, arg_0, arg_0, arg_1.b), arg_0), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, arg_1.b, false)), arg_1.b), !(!vec4<bool>(arg_2.b, true, true, true))), vec4<bool>(arg_0, false, arg_1.b, true), false);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    let var_0 = vec2<bool>(!any(func_4(func_2(413f, arg_0.b, 984f), Struct_1(7846u, false, vec4<u32>(54863u, arg_0.c.x, u_input.a.x, arg_1.x)), arg_0)), arg_0.b & true);
    global0 = array<f32, 7>();
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), global0[_wgslsmith_index_u32(arg_2, 7u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(arg_2, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_1.x, 7u)], global0[_wgslsmith_index_u32(reverseBits(arg_2), 7u)])))))));
    var var_2 = arg_0;
    var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x >> (u_input.a.x % 32u), all(vec2<bool>(true, false)), select(u_input.a, vec4<u32>(4294967295u, 1u, u_input.a.x, 92738u), vec4<bool>(false, false, true, true))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 38706u, 1u, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a.xz, min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(61839u, 4294967295u)))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], -2106f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)])) * vec2<f32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)]))))) + vec2<f32>(-868f, global0[_wgslsmith_index_u32(~4294967295u, 7u)]));
    let var_2 = ~u_input.a.xyy;
    let var_3 = Struct_1(4294967295u, all(vec3<bool>(true, any(vec2<bool>(false, false)), true)), ~u_input.a & select(_wgslsmith_div_vec4_u32(reverseBits(u_input.a), vec4<u32>(0u, u_input.a.x, 1u, 4294967295u)), u_input.a, vec4<bool>(true, true, true, true)));
    var var_4 = abs(~0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, _wgslsmith_f_op_f32(f32(-1f) * -518f), var_2.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x, 7u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.x)))) + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(578f * var_1.x)))));
}

