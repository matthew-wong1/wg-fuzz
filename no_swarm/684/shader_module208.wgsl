struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(0u, 1u, 51318u, 2276u), vec4<u32>(1u, 37197u, 7168u, 27567u), vec4<u32>(13708u, 4955u, 1u, 92553u), vec4<u32>(0u, 58822u, 26779u, 0u), vec4<u32>(18049u, 8135u, 6887u, 26599u), vec4<u32>(1u, 4294967295u, 59387u, 4294967295u), vec4<u32>(25503u, 1u, 24626u, 37795u), vec4<u32>(0u, 24069u, 0u, 8370u), vec4<u32>(120515u, 4294967295u, 10561u, 0u), vec4<u32>(52393u, 4294967295u, 0u, 31088u), vec4<u32>(61297u, 12206u, 75539u, 4294967295u), vec4<u32>(27473u, 2961u, 12708u, 1u), vec4<u32>(25099u, 1u, 9894u, 0u), vec4<u32>(1149u, 23056u, 4294967295u, 1u), vec4<u32>(13002u, 69830u, 31786u, 1u), vec4<u32>(1u, 88241u, 1u, 116471u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(0u, 0u, 16251u, 30239u));

var<private> global2: array<vec3<i32>, 4>;

var<private> global3: array<vec3<f32>, 24>;

var<private> global4: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> i32 {
    return -u_input.c;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> i32 {
    global3 = array<vec3<f32>, 24>();
    var var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(49328i & u_input.c, _wgslsmith_dot_vec3_i32(arg_0, arg_0)) >> (_wgslsmith_div_u32(u_input.d.x, countOneBits(u_input.b.x)) % 32u), -66470i));
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = reverseBits(max(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 1u, 6240u, u_input.a), u_input.d), ~4294967295u, 0u), max(vec3<u32>(27029u >> (u_input.b.x % 32u), select(u_input.b.x, u_input.a, true), firstLeadingBit(4294967295u)), firstTrailingBit(~u_input.d.www))));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.zw, arg_1.yx)));
    return 2147483647i;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = false & (all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false)) | true);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global4.x);
    let var_2 = 0u;
    var_1 = 593f;
    let var_3 = u_input.c;
    return Struct_2(abs(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, 18778i), func_2(u_input.b, u_input.b.zx))) <= max(func_3(countOneBits(vec3<i32>(var_3, u_input.c, 334i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, 507f, -1175f, global4.x))), var_3));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(~(firstLeadingBit(u_input.c) & u_input.c), _wgslsmith_div_i32(~0i, u_input.c));
    var_0 = -2147483647i;
    global0 = array<Struct_1, 22>();
    var var_1 = -1132f;
    let var_2 = Struct_2(any(vec4<bool>(false, all(!vec3<bool>(false, true, arg_1.a)), arg_0.a, true)));
    return Struct_1(1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(-1724f)));
    var var_1 = func_4(Struct_2(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true))), func_1(1u));
    var var_2 = Struct_1(max(-27003i >> (u_input.d.x % 32u), u_input.c >> (58076u % 32u)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(global4.x, 1583f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(1485f, -956f), vec2<f32>(global4.x, var_0)))) * vec2<f32>(_wgslsmith_f_op_f32(min(global4.x, 1000f)), -549f)), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1066f), global4.x) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-836f, var_0))))))));
    let var_3 = vec4<i32>(_wgslsmith_mult_i32(var_1.a, -1i) ^ (_wgslsmith_add_i32(-1i, u_input.c) >> (min(92744u, u_input.b.x) % 32u)), -(i32(-1i) * -reverseBits(31216i)), var_1.a ^ firstLeadingBit(0i), var_1.a);
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, var_0))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(582f, -1705f), vec2<f32>(var_0, global4.x), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -255f) + vec2<f32>(157f, global4.x)), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), !vec2<bool>(func_1(~17400u).a, all(vec3<bool>(true, true, true)))));
    global2 = array<vec3<i32>, 4>();
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))) - global4.x)));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(1u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -161f, -1486f) * vec3<f32>(-275f, -1000f, global4.x))) - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(u_input.a, 24u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

