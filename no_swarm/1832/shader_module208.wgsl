struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<i32, 21>;

var<private> global2: array<vec4<u32>, 6>;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(112f, 1056f), vec2<f32>(-1128f, 248f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1129f, 956f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1587f, -111f) + vec2<f32>(998f, -891f)))))));
    global1 = array<i32, 21>();
    var var_1 = ~4294967295u;
    var var_2 = Struct_2(!select(!select(vec4<bool>(true, arg_1, true, arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(76696u, 32u)], false, true, arg_1), vec4<bool>(false, arg_0.x, false, arg_1)), select(!vec4<bool>(arg_1, false, arg_1, global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), !vec4<bool>(true, arg_1, false, true), vec4<bool>(false, true, false, true)), false | all(vec3<bool>(true, arg_0.x, arg_0.x))), arg_1);
    var var_3 = Struct_4(~(~u_input.e.x), Struct_1(var_2.b, var_0.x, select(!select(arg_0, arg_0, vec2<bool>(false, false)), select(!var_2.a.yz, select(vec2<bool>(arg_0.x, true), arg_0, true), any(var_2.a)), vec2<bool>(true, !arg_1)), var_2.a.xy));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -596f))))), var_3.b.b));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, true, _wgslsmith_add_i32(2049i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, u_input.c.x, u_input.b), u_input.c)) != u_input.d, true);
    global0 = array<bool, 32>();
    let var_1 = Struct_2(vec4<bool>(false, any(select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(6855u, 32u)], var_0.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 32u)], var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, var_0.x, global0[_wgslsmith_index_u32(u_input.e.x, 32u)])), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 32u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], true, false, true))), false, _wgslsmith_div_f32(409f, arg_0.x) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false);
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, 1000f)), _wgslsmith_f_op_f32(-1000f - 1262f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) + _wgslsmith_div_f32(arg_1.x, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(!var_0.yx, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, -300f, var_1.a.x)) * _wgslsmith_div_f32(arg_1.x, arg_0.x)), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(sign(365f))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))))));
    var var_3 = Struct_1(any(var_1.a), arg_0.x, !select(vec2<bool>(any(var_0.zyw), true), vec2<bool>(-944f != var_2.x, false), all(!vec4<bool>(false, var_0.x, var_0.x, false))), !(!vec2<bool>(all(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(u_input.e.x, 32u)], true)), true)));
    return Struct_1(var_1.b, _wgslsmith_f_op_f32(exp2(var_2.x)), var_0.ww, !select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(var_1.a.zy, !vec2<bool>(true, global0[_wgslsmith_index_u32(33585u, 32u)]), select(var_0.ww, var_1.a.yy, vec2<bool>(false, var_0.x))), u_input.b != (u_input.d ^ -23862i)));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = 111f;
    var var_1 = 1i;
    var var_2 = ~50042u;
    global0 = array<bool, 32>();
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-746f, -341f, -382f, 1764f), vec4<f32>(1000f, 1117f, 174f, 139f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1850f, 101f) + _wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1086f - -1297f), _wgslsmith_f_op_f32(727f + 424f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f * 420f)))));
    return StorageBuffer(0i, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32((u_input.e | vec3<u32>(u_input.e.x, arg_0.x, u_input.e.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 48774u), u_input.e) % vec3<u32>(32u)), ~u_input.e), ~(~u_input.e)), _wgslsmith_div_u32(0u, min(1u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(960f, 2016f))), vec2<f32>(_wgslsmith_div_f32(-847f, -951f), _wgslsmith_f_op_f32(min(var_3.b, var_3.b))), true))), countOneBits(24698u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 6>();
    var var_0 = -2741f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) * 785f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1774f, 683f), _wgslsmith_div_f32(-864f, 352f)))))));
    let x = u_input.a;
    s_output = func_1(u_input.e.zz);
}

