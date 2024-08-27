struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<vec2<bool>, 10>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(1u & global2.c.b), 60807u), 4u)];
    global0 = array<Struct_2, 4>();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e.d, var_0.c.a) + vec2<f32>(117f, -130f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, var_0.c.d)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1000f) - vec2<f32>(var_0.b, var_0.d.a)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(858f, var_0.b) * vec2<f32>(2217f, global2.c.d)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.e.d, 1000f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b, 294f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.e.a, 728f), vec2<f32>(global2.b, var_0.b), vec2<bool>(false, var_0.d.c.x))), vec2<bool>(global2.e.c.x, false))))), !any(select(!vec4<bool>(global2.d.c.x, global2.c.c.x, false, global2.c.c.x), !vec4<bool>(false, global2.d.c.x, true, global2.d.c.x), vec4<bool>(true, false, false, global2.c.c.x)))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, 0i), arg_0.zz, -firstLeadingBit(vec2<i32>(arg_0.x, 0i))), arg_0.yy) == (global2.a.x ^ _wgslsmith_sub_i32(arg_0.x, 30622i));
    global1 = array<vec2<bool>, 10>();
    return global2.a;
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_mult_u32(~abs(firstTrailingBit(_wgslsmith_mod_u32(u_input.b, 1u))), 0u);
    let var_1 = ~firstTrailingBit(~4294967295u);
    let var_2 = Struct_2(select(vec3<i32>((u_input.e.x | u_input.e.x) & 2147483647i, u_input.a.x, -15877i), func_3(firstTrailingBit(countOneBits(vec3<i32>(0i, u_input.e.x, -3488i)))), true), _wgslsmith_f_op_f32(-global2.c.d), global2.e, global2.d, global2.c);
    var_0 = 4294967295u;
    var_0 = abs(76609u);
    return arg_0.xz;
}

fn func_1() -> Struct_1 {
    var var_0 = global2.d.c.x;
    global2 = global0[_wgslsmith_index_u32(~(u_input.c.x & _wgslsmith_dot_vec2_u32(abs(func_2(u_input.c.wyw)), _wgslsmith_mod_vec2_u32(select(u_input.c.zz, u_input.c.zy, vec2<bool>(global2.c.c.x, true)), vec2<u32>(u_input.c.x, 1u)))), 4u)];
    let var_1 = Struct_2(-vec3<i32>(-1i, _wgslsmith_mult_i32(u_input.d.x, _wgslsmith_sub_i32(-1i, global2.a.x)), 2147483647i), 1002f, Struct_1(-478f, ~(~(4294967295u >> (1u % 32u))), select(global2.d.c, vec3<bool>(global2.c.c.x, true, 1000f == global2.b), select(!global2.c.c.x, any(vec3<bool>(global2.c.c.x, false, false)), global2.c.c.x)), 1213f), Struct_1(-886f, u_input.c.x, !select(global2.c.c, !global2.e.c, select(vec3<bool>(false, true, global2.d.c.x), vec3<bool>(global2.d.c.x, false, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1093f)))), global2.c);
    var var_2 = ~var_1.a.yy;
    global2 = Struct_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.a.x, -36619i), vec3<i32>(-global2.a.x, _wgslsmith_sub_i32(var_1.a.x, -1i), -var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.b * _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(global2.d.a * -1000f))))), var_1.e, var_1.e, var_1.d);
    return global2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let var_0 = func_1();
    var var_1 = select(vec4<bool>(all(func_1().c.zy), true, true, (var_0.c.x & false) == true), select(vec4<bool>(any(vec3<bool>(true, true, true)), global2.c.c.x, var_0.d >= -456f, all(var_0.c)), vec4<bool>(all(vec4<bool>(false, false, var_0.c.x, true)) | var_0.c.x, all(vec3<bool>(true, true, global2.d.c.x)), global2.e.c.x, true), !vec4<bool>(!global2.d.c.x, false, any(vec3<bool>(true, var_0.c.x, var_0.c.x)), false)), var_0.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(abs(_wgslsmith_mult_vec3_i32(global2.a, ~u_input.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-773f + -1197f) + _wgslsmith_f_op_f32(var_2 * -526f))))), vec3<i32>((global2.a.x & u_input.e.x) & -(global2.a.x ^ global2.a.x), ~firstLeadingBit(-2147483647i), func_3(~_wgslsmith_add_vec3_i32(u_input.a.xzy, vec3<i32>(49808i, -1i, global2.a.x))).x));
}

