struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec2<f32>, 12>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false));

var<private> global3: array<f32, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = !vec4<bool>(!((u_input.a.x >= -28449i) || false), true, true, true);
    global3 = array<f32, 7>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -879f)));
    global1 = select(select(!select(!vec4<bool>(true, true, global2.b.x, true), select(vec4<bool>(global1.x, global2.a.x, false, var_0.x), vec4<bool>(true, global2.a.x, true, global2.a.x), true), select(vec4<bool>(true, global2.b.x, global1.x, true), vec4<bool>(true, var_0.x, var_0.x, global2.b.x), vec4<bool>(var_0.x, true, global2.b.x, false))), !(!(!vec4<bool>(global1.x, global1.x, global2.b.x, global2.a.x))), vec4<bool>(false, global2.a.x, true, global2.a.x)), select(!(!(!vec4<bool>(global2.b.x, global1.x, true, false))), vec4<bool>(true, select(!global2.a.x, false, true), var_0.x | !global1.x, false), false), vec4<bool>(all(!var_0.wyx), !(var_0.x || false), true, !global1.x));
    global1 = !(!vec4<bool>(abs(-2872i) > firstTrailingBit(-21319i), true | var_0.x, !(541f > global3[_wgslsmith_index_u32(4294967295u, 7u)]), any(select(vec3<bool>(true, var_0.x, global2.b.x), vec3<bool>(global2.b.x, var_0.x, global1.x), false))));
    return global2.a.zy;
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = vec2<u32>(~(1971u & arg_0.c), arg_0.c);
    var var_1 = Struct_1(select(select(global1.zww, select(vec3<bool>(arg_0.d, global2.b.x, false), !global2.a, !vec3<bool>(false, false, global1.x)), vec3<bool>(true, false, all(vec4<bool>(false, true, arg_0.d, global2.a.x)))), !global1.zzy, false), func_3());
    var var_2 = _wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(11596u, 12u)], _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.a.wx + vec2<f32>(826f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(0u, 7u)], -1000f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.zw * arg_0.a.zy) + vec2<f32>(909f, global3[_wgslsmith_index_u32(arg_0.c, 7u)])), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(arg_0.a.x, global3[_wgslsmith_index_u32(var_0.x, 7u)])), true)))));
    let var_3 = arg_0.c;
    let var_4 = Struct_5(1u, _wgslsmith_f_op_f32(min(255f, _wgslsmith_f_op_f32(select(188f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6787u, 4294967295u), vec3<u32>(var_0.x, 89670u, 10020u)), 7u)])), true)))), _wgslsmith_f_op_f32(f32(-1f) * -713f), -2147483647i, arg_0);
    return countOneBits(4294967295u);
}

fn func_1() -> bool {
    global0 = array<vec2<f32>, 12>();
    global1 = vec4<bool>(!(!(true || !global2.b.x)), !any(global2.a), true, true);
    global1 = !vec4<bool>(!(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(29314u, 7u)]) <= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 7u)])), global2.b.x, _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.a.x) != ~u_input.a.x, (u_input.a.x & ~u_input.a.x) < 1i);
    global2 = Struct_1(select(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 7u)] < 2198f, global2.a.x, !global2.a.x), vec3<bool>(false, false, true), vec3<bool>(global1.x, all(global2.a), global1.x)), vec2<bool>(any(!(!vec2<bool>(false, global1.x))), global1.x));
    var var_0 = vec2<u32>(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1782u, 6989u), vec3<u32>(4294967295u, 54422u, 4294967295u)), 4133u, false) | (func_2(Struct_4(vec4<f32>(228f, 777f, -1000f, -742f), u_input.a.x, 4427u, false, -924f)) << (_wgslsmith_mod_u32(~6332u, 1u) % 32u)), _wgslsmith_mult_u32(~max(~1u, ~35084u), ~1u));
    return all(select(!(!select(global2.a, global2.a, false)), select(!(!vec3<bool>(global2.b.x, true, false)), select(global2.a, select(global2.a, global2.a, vec3<bool>(global2.a.x, true, false)), global2.a.x), vec3<bool>(global1.x, global2.b.x, func_3().x)), global2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(select(vec3<bool>(false, select(global2.a.x, global1.x, global2.b.x && true), !any(global2.b)), global2.a, func_1()), global2.a.zx);
    global2 = Struct_1(vec3<bool>(any(global2.a), true, 2147483647i < max(0i, u_input.a.x)), select(global2.a.yz, global1.zy, select(global2.b, !select(global2.a.yy, vec2<bool>(true, global2.a.x), false), global3[_wgslsmith_index_u32(1u, 7u)] != _wgslsmith_div_f32(global3[_wgslsmith_index_u32(0u, 7u)], 107f))));
    let var_0 = select(~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, 56047i, u_input.a.x, u_input.a.x), -vec4<i32>(3933i, 13170i, -2147483647i, 10820i)) & select(vec4<i32>(countOneBits(-7841i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(25399i, -1i)), u_input.a.x, _wgslsmith_sub_i32(15480i, -29894i)), -select(vec4<i32>(-1i, 1i, u_input.a.x, 182i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, 16386i), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), true & any(vec4<bool>(false, true, global2.b.x, false))), vec4<i32>(40971i, select(~firstTrailingBit(u_input.a.x), abs(-1i), all(global2.a.xz)), ~(_wgslsmith_mod_i32(0i, 24898i) & u_input.a.x), 5933i), !select(!vec4<bool>(global1.x, false, global2.b.x, false), !vec4<bool>(true, false, global1.x, true), true));
    var var_1 = 37148u;
    var_1 = 1u;
    global2 = Struct_1(select(global1.zyz, vec3<bool>(any(func_3()), false, all(select(vec4<bool>(global2.a.x, false, global2.a.x, false), vec4<bool>(false, global2.a.x, true, false), vec4<bool>(global1.x, false, global2.b.x, true)))), any(!global1.xxx)), !vec2<bool>(_wgslsmith_f_op_f32(-403f - -151f) != _wgslsmith_f_op_f32(trunc(523f)), any(select(vec3<bool>(false, true, global2.a.x), vec3<bool>(global2.a.x, global1.x, true), global1.zww))));
    let var_2 = Struct_5(firstTrailingBit(~1u), _wgslsmith_f_op_f32(1482f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~4294967295u, 7u)]))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 7u)]), var_0.x, Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3[_wgslsmith_index_u32(128562u, 7u)], global3[_wgslsmith_index_u32(35380u, 7u)], global3[_wgslsmith_index_u32(38527u, 7u)], 1000f), vec4<f32>(global3[_wgslsmith_index_u32(29234u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], -1185f, -349f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(405f, global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(37913u, 7u)], -225f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(76926u, 7u)], global3[_wgslsmith_index_u32(62495u, 7u)], -1000f, 2035f), vec4<f32>(-606f, -425f, -1239f, 341f)))))), ~2147483647i, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(96838u, 61314u, 5008u, 0u), ~vec4<u32>(4294967295u, 17783u, 26844u, 4294967295u)), all(vec4<bool>(global2.a.x, true, true, global1.x)), 1000f));
    global3 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_2.d, var_2.d));
}

