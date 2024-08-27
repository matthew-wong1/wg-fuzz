struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: Struct_1 = Struct_1(19838i);

var<private> global3: bool = true;

var<private> global4: array<vec4<bool>, 31>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 1257f, 712f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1095f, 451f, 419f) - vec3<f32>(-1000f, -743f, 1120f)) + vec3<f32>(1725f, -751f, 1185f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1110f, -1197f, 1000f), vec3<f32>(-798f, 1689f, -700f)))))), vec3<bool>(true, !arg_0, false | !any(vec2<bool>(false, arg_0)))));
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 11711u), 32u)];
    var_2 = arg_1;
    global0 = array<Struct_1, 32>();
    return 82393u & ~(~u_input.b);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(max(func_3(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), global0[_wgslsmith_index_u32(9547u, 32u)]), u_input.b), 32u)];
    global0 = array<Struct_1, 32>();
    global4 = array<vec4<bool>, 31>();
    global1 = array<vec2<f32>, 24>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x, u_input.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(arg_0.x, arg_0.x, false), 1u), 1u)), 1u), 32u)];
    return true;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = select(select(func_2(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x))), func_2(~firstLeadingBit(vec4<u32>(u_input.b, arg_0.x, 30108u, arg_0.x))), true), false, all(vec2<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)))));
    let var_1 = Struct_1(i32(-1i) * -18567i);
    var var_2 = true;
    var var_3 = select(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), all(vec2<bool>(all(vec3<bool>(true, true, false)), true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), any(vec3<bool>(!select(false, false, false), true, _wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.d) > 1i)));
    var var_4 = !global4[_wgslsmith_index_u32(~60409u, 31u)];
    return Struct_1(~_wgslsmith_mult_i32(global2.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.a, global2.a), u_input.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> StorageBuffer {
    global3 = arg_2.x;
    var var_0 = u_input.c.xy;
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_2 = vec3<u32>(u_input.b, u_input.b, max(u_input.b, u_input.b));
    var var_3 = !(all(!vec2<bool>(arg_2.x, arg_2.x)) || all(vec2<bool>(false, arg_2.x)));
    return StorageBuffer(~countOneBits(~var_2), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, 1523f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, arg_1, arg_1))))), _wgslsmith_mod_vec2_i32(u_input.d, min(vec2<i32>(1i, arg_3.a) | vec2<i32>(-8158i, var_1.a), u_input.c.yy)), -1334f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 32u)];
    var var_1 = abs(vec4<u32>(1u, u_input.b, u_input.b | ~u_input.b, u_input.b));
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.c.x, ~(~(~global2.a))));
    let var_3 = var_1.x;
    let var_4 = global0[_wgslsmith_index_u32(1u, 32u)];
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.b, 20306u, u_input.b, 68367u), vec4<u32>(4294967295u, u_input.b, var_1.x, u_input.b)), ~vec4<u32>(u_input.b, 0u, 4294967295u, var_1.x)), max(vec4<u32>(u_input.b, u_input.b, var_1.x, 12324u), vec4<u32>(var_1.x, 40463u, 9491u, 4294967295u)) | abs(vec4<u32>(4886u, 1u, var_1.x, u_input.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-153f, -1000f, false)), _wgslsmith_f_op_f32(-1952f * -1000f)), _wgslsmith_div_f32(1702f, _wgslsmith_f_op_f32(f32(-1f) * -822f))), -1115f)), select(select(select(select(vec4<bool>(false, false, false, true), global4[_wgslsmith_index_u32(66770u, 31u)], global4[_wgslsmith_index_u32(1u, 31u)]), select(vec4<bool>(true, true, false, true), global4[_wgslsmith_index_u32(104800u, 31u)], true), true), vec4<bool>(true, true, true, true), false), global4[_wgslsmith_index_u32(1u, 31u)], !vec4<bool>(false, false, any(vec4<bool>(false, true, true, false)), true)), global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 11265u, 39482u, 1u), vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u))), 4294967295u), 32u)]);
}

