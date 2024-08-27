struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(-1000f, true), vec3<f32>(1043f, 441f, 238f), Struct_1(836f, false), vec2<bool>(false, false)), Struct_3(Struct_1(-1000f, true), vec3<f32>(712f, -161f, -122f), Struct_1(630f, true), vec2<bool>(false, true)), Struct_3(Struct_1(-1139f, false), vec3<f32>(-812f, 256f, 942f), Struct_1(445f, true), vec2<bool>(true, true)), Struct_3(Struct_1(-784f, false), vec3<f32>(-1491f, 1000f, 1566f), Struct_1(1093f, true), vec2<bool>(true, false)), Struct_3(Struct_1(678f, true), vec3<f32>(405f, 328f, 845f), Struct_1(-239f, false), vec2<bool>(true, true)), Struct_3(Struct_1(-611f, true), vec3<f32>(-404f, 401f, -1687f), Struct_1(-1073f, false), vec2<bool>(false, true)), Struct_3(Struct_1(112f, true), vec3<f32>(-276f, 441f, 1445f), Struct_1(454f, false), vec2<bool>(false, false)), Struct_3(Struct_1(1297f, true), vec3<f32>(-956f, 1769f, -595f), Struct_1(-794f, false), vec2<bool>(true, false)), Struct_3(Struct_1(649f, false), vec3<f32>(-472f, -1507f, -985f), Struct_1(160f, true), vec2<bool>(true, true)), Struct_3(Struct_1(1482f, false), vec3<f32>(-1916f, 208f, -802f), Struct_1(-568f, false), vec2<bool>(false, false)));

var<private> global1: array<bool, 22>;

var<private> global2: Struct_4 = Struct_4(-1255f);

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1570f, arg_2.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1097f, _wgslsmith_f_op_f32(abs(-984f)), -1199f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-114f, -804f, 494f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-210f, -402f, arg_0.a))), global1[_wgslsmith_index_u32(~u_input.a, 22u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1552f, var_1.x) * vec3<f32>(var_1.x, 665f, 944f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-317f, global2.a, 1705f))))));
    global0 = array<Struct_3, 10>();
    let var_3 = -vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 9381i, 22665i, u_input.b) & (vec4<i32>(u_input.b, -1i, 0i, -1i) << (vec4<u32>(1u, 68855u, 1u, u_input.a) % vec4<u32>(32u))), vec4<i32>(select(u_input.b, u_input.b, global1[_wgslsmith_index_u32(u_input.a, 22u)]), -1i, -1i, _wgslsmith_div_i32(u_input.b, -33804i))), reverseBits(~1i));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = Struct_3(arg_0, vec3<f32>(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a + -605f)))), 1339f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f)), -396f, arg_0.b))), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.a, global2.a), global2.a), true), !vec2<bool>(select(false, arg_0.b, select(false, true, global1[_wgslsmith_index_u32(arg_2.x, 22u)])), arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -947f) - -887f));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-262f, 1000f)) - _wgslsmith_f_op_f32(-1092f * global2.a)) * _wgslsmith_f_op_f32(sign(var_0.b.x))) + 329f), arg_0.a);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -339f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(361f, 1262f)), _wgslsmith_f_op_f32(-173f * -1382f)))))));
    let var_3 = 1i;
    return arg_0.a;
}

fn func_1() -> f32 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(137749u, 0u), vec2<u32>(1u, u_input.a)), ~firstTrailingBit(vec2<u32>(u_input.a & u_input.a, 4294967295u)));
    let var_2 = !(!(!(!select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(63067u, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(45591u, 22u)], true, false), global1[_wgslsmith_index_u32(13905u, 22u)]))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(541f + _wgslsmith_f_op_f32(func_3(Struct_1(1202f, false), func_2(Struct_4(666f), -1i, Struct_4(global2.a)), vec3<u32>(46913u, var_1.x, u_input.a)))), global2.a)) < global2.a;
    global2 = Struct_4(_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-global2.a))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -679f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 22>();
    let var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1484f, _wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a, 267f, global2.a)))))), select(vec3<u32>(u_input.a, ~_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a), select(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, 65469u), ~vec3<u32>(u_input.a, 0u, 4294967295u), global1[_wgslsmith_index_u32(~u_input.a, 22u)]) ^ _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.a, 8560u, 46136u), vec3<u32>(0u, 1u, 1973u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, true)), vec3<u32>(u_input.a, 1u, 1u) & vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(all(vec4<bool>(false, false, true, true)) || (false || global1[_wgslsmith_index_u32(u_input.a, 22u)]), false, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(54991u, u_input.a)), 22u)])), vec2<i32>(~1i, -31020i), u_input.a, -1134f);
}

