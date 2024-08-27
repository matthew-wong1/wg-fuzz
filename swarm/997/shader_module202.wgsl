struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<Struct_2, 14>;

var<private> global2: bool;

var<private> global3: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = vec3<u32>(9530u, arg_0.b, _wgslsmith_mult_u32(arg_0.c.x, arg_0.b));
    var_0 = vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, u_input.a.x, arg_0.b)) << (select(_wgslsmith_clamp_u32(var_0.x, 4294967295u, 0u), var_0.x, arg_0.d.x) % 32u)), max(~22243u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(51221u, 1u, 4294967295u) << (_wgslsmith_sub_u32(u_input.d, 7717u) % 32u), 1u | ~var_0.x)), arg_0.b);
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_1 = ~_wgslsmith_sub_u32(firstTrailingBit(91211u), arg_0.c.x) >> (25029u % 32u);
    return any(select(arg_0.d.xzw, vec3<bool>(any(vec2<bool>(arg_0.d.x, arg_0.d.x)), any(!vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)), any(select(arg_0.d, arg_0.d, arg_0.d))), !(!select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d.x))));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = any(vec3<bool>(true, !all(vec2<bool>(true, true)), (false & func_3(Struct_1(vec2<i32>(17595i, -69221i), u_input.a.x, vec4<u32>(u_input.d, 19656u, u_input.b.x, 69251u), vec4<bool>(true, false, true, false), 1038f), vec2<i32>(u_input.c, u_input.c))) | select(func_3(Struct_1(vec2<i32>(arg_0, 0i), u_input.a.x, vec4<u32>(39639u, 0u, 4294967295u, u_input.a.x), vec4<bool>(false, true, true, false), 864f), vec2<i32>(u_input.c, -2147483647i)), true, func_3(Struct_1(vec2<i32>(arg_0, 25702i), u_input.d, u_input.b, vec4<bool>(true, false, true, false), -968f), vec2<i32>(u_input.c, arg_0)))));
    let var_1 = Struct_1(vec2<i32>(-u_input.c >> (~firstLeadingBit(0u) % 32u), 2147483647i), 1u, ~min(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), ~vec4<u32>(u_input.d, u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(17337u, u_input.b.x, u_input.a.x, 1u)), vec4<u32>(42231u, firstLeadingBit(u_input.d), u_input.a.x, ~u_input.b.x)), vec4<bool>(firstLeadingBit(u_input.a.x | u_input.d) > u_input.d, _wgslsmith_mult_u32(u_input.d, 26332u) < ~4294967295u, all(vec4<bool>(true, false, true, false)), true), 459f);
    let var_2 = vec4<u32>(~1u, _wgslsmith_add_u32(537u, var_1.b), u_input.b.x, 56779u);
    global3 = abs(u_input.c);
    var var_3 = vec2<f32>(var_1.e, var_1.e);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, 474f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -643f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1194f, -1040f), vec2<f32>(-337f, var_1.e))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_3.x), vec2<f32>(1391f, var_3.x)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(var_1.e - var_1.e)))));
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(-1758i, u_input.c)), -select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, -23667i)), vec2<i32>(u_input.c, -39418i), true)), u_input.d, u_input.a, !(!select(select(vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, arg_1, false, arg_1)), vec4<bool>(true, true, false, arg_1), true)), arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -541f), _wgslsmith_f_op_vec2_f32(func_2(var_0.a.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, -356f) - vec2<f32>(-156f, -475f))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(946f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1000f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1684f, arg_0)))));
    global2 = false;
    global3 = -9941i;
    let var_2 = global0[_wgslsmith_index_u32(max(4294967295u, var_0.b), 16u)];
    return -var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -528f))))))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, func_1(_wgslsmith_f_op_f32(floor(374f)), false), 1i), ~(-firstLeadingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i)))) <= _wgslsmith_sub_i32(67190i, u_input.c);
    var var_3 = any(!vec3<bool>(all(select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), var_2)), true, true));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -2432f);
    var var_5 = u_input.c;
    let var_6 = global1[_wgslsmith_index_u32(u_input.d, 14u)];
    var_1 = var_6.b.x;
    global3 = -u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, var_6.d.x), vec3<i32>(23199i, 0i, u_input.c))), 0i, reverseBits(min(42963i, var_6.d.x))), var_4);
}

