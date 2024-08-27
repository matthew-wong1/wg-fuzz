struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = -436f;
    let var_1 = !select(select(!vec4<bool>(true, false, false, global2.a.x), vec4<bool>(global1.a.x, global1.b, select(global1.b, false, global2.b), !global2.b), select(global1.c.x < 1783f, any(vec2<bool>(global1.a.x, false)), true)), vec4<bool>(global1.a.x, true, true, any(select(vec3<bool>(false, global2.a.x, true), global1.a, global1.a.x))), all(vec3<bool>(true, global2.b & global2.a.x, true)));
    global2 = Struct_1(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i), ~vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)) <= _wgslsmith_mult_i32(11753i, u_input.a), true, select(!(arg_0.x < u_input.b), true, true)), true, vec4<f32>(_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.x)) * _wgslsmith_f_op_f32(-1550f + -528f))), _wgslsmith_f_op_f32(-235f + var_0), _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -1671f), _wgslsmith_f_op_f32(755f + -591f))), _wgslsmith_f_op_f32(1000f - 420f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(global2.c.yyz + vec3<f32>(_wgslsmith_f_op_f32(global1.c.x + var_0), _wgslsmith_f_op_f32(max(global2.c.x, var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.c.x, var_0)))))));
    let var_3 = select(!var_1, var_1, vec4<bool>(true, any(!vec2<bool>(global1.a.x, global2.b)), global1.b, global2.b));
    return ~(max(arg_0.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(24560u, 60718u, 0u), _wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(80629u, 6775u)))) & arg_0.x);
}

fn func_2() -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b, 51303u, 1u, u_input.b), countOneBits(vec4<u32>(u_input.b, 0u, 0u, u_input.b)), true) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), ~54031u), _wgslsmith_mult_vec4_u32(vec4<u32>(6312u, 20175u, u_input.b, u_input.b), ~vec4<u32>(0u, u_input.b, 0u, u_input.b))), vec4<u32>(0u, firstLeadingBit(u_input.b), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53536u, u_input.b), vec2<u32>(4294967295u, 6756u)) | (u_input.b & 0u), func_3(vec3<u32>(u_input.b, u_input.b, 1933u))), u_input.b)), 4u)];
    var var_1 = -(u_input.a | abs(4635i));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-921f - 1000f), -2443f, 113f, _wgslsmith_f_op_f32(f32(-1f) * -396f))));
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(u_input.b), 4u)];
    let var_4 = u_input.a;
    return global1.c.x;
}

fn func_1() -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global1.c.x, global2.c.x)), -565f, global2.c.x, 789f))));
    let var_1 = vec4<bool>(true, true, !any(global1.a), true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) * _wgslsmith_f_op_f32(sign(var_0.a.x))) * 950f) - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1212f) + _wgslsmith_f_op_f32(f32(-1f) * -2871f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f))) * _wgslsmith_f_op_f32(520f * global2.c.x)));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    return global1.c.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_1(select(vec3<bool>(false, ~u_input.a == -u_input.a, false), global2.a, vec3<bool>(true, global1.a.x || true, any(!vec2<bool>(global1.b, true)))), !global1.b, _wgslsmith_f_op_vec4_f32(global1.c - global1.c));
    global2 = Struct_1(select(!vec3<bool>(u_input.a > -4261i, var_1.b != false, !var_1.a.x), select(vec3<bool>(select(global2.b, true, true), false, global2.a.x), !vec3<bool>(global2.a.x, var_1.a.x, global2.b), select(!vec3<bool>(true, global1.b, true), select(vec3<bool>(true, var_1.b, global1.b), vec3<bool>(true, false, global1.a.x), vec3<bool>(true, false, false)), any(vec3<bool>(false, true, false)))), !select(select(vec3<bool>(true, true, true), var_1.a, var_1.a.x), global2.a, select(global2.a, vec3<bool>(true, global2.a.x, true), global1.a))), true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1110f, 1398f, -374f, global2.c.x), vec4<f32>(global2.c.x, var_0.x, -342f, var_0.x)))))));
    global1 = var_1;
    var var_2 = !(!select(!vec4<bool>(global2.a.x, true, global1.b, true), vec4<bool>(true, any(global2.a.zy), true, true), !var_1.b));
    var var_3 = global0[_wgslsmith_index_u32(~4294967295u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(649f, -424f));
}

