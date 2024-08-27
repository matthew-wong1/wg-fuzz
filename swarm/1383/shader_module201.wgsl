struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-519f, -1000f, 427f, -1382f);

var<private> global1: array<i32, 13>;

var<private> global2: u32;

var<private> global3: array<bool, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(698f, -350f, arg_1, -669f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-649f, 550f, global0.x, 829f) * vec4<f32>(arg_1, arg_1, 824f, 659f)), vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(376f, 1590f, -618f, 945f))))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-597f, -239f, 186f, 264f))) * vec4<f32>(arg_1, -210f, global0.x, 1059f)))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), -312f));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<u32> {
    global3 = array<bool, 7>();
    global3 = array<bool, 7>();
    let var_0 = arg_1;
    global2 = 1u;
    let var_1 = Struct_2(vec4<u32>(~(~_wgslsmith_add_u32(arg_1.d.x, 67385u)), var_0.b.x, ~1u, ~_wgslsmith_mod_u32(0u, 1u) & countOneBits(select(4294967295u, 4294967295u, false))), Struct_1(arg_1.c, arg_1.d, true, var_0.b & ~vec2<u32>(61052u, 4294967295u)));
    return vec2<u32>(~abs(_wgslsmith_clamp_u32(7451u, 11601u, 0u) | (arg_1.b.x & var_1.a.x)), firstTrailingBit(var_1.a.x));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    var var_0 = Struct_2(arg_1.a, Struct_1(false, ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a, 7070u)), arg_1.b.d), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_1.b.b, vec2<u32>(arg_2.d.x, 1u)), arg_2.d.x), 13u)] > ~global1[_wgslsmith_index_u32(arg_2.d.x, 13u)], ~vec2<u32>(_wgslsmith_mod_u32(34898u, 18208u), arg_2.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(457f)), arg_0, -857f, _wgslsmith_f_op_f32(trunc(global0.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2345f, -1324f, -844f, 512f), vec4<f32>(-1181f, -431f, global0.x, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2120f, -295f, global0.x, global0.x) - vec4<f32>(-116f, -547f, arg_0, arg_0)), arg_2.a)))));
    global1 = array<i32, 13>();
    var var_2 = Struct_2(max(arg_1.a, var_0.a), Struct_1((~(-15770i) >> (_wgslsmith_sub_u32(u_input.a, 0u) % 32u)) <= _wgslsmith_div_i32(select(global1[_wgslsmith_index_u32(var_0.b.b.x, 13u)], global1[_wgslsmith_index_u32(arg_3, 13u)], true), global1[_wgslsmith_index_u32(6310u, 13u)] & 0i), ~(~select(vec2<u32>(1u, arg_1.b.d.x), vec2<u32>(22988u, var_0.a.x), vec2<bool>(true, var_0.b.a))), arg_1.b.a, ~(~(vec2<u32>(8555u, 8299u) << (vec2<u32>(u_input.a, arg_3) % vec2<u32>(32u))))));
    var var_3 = abs(~(~(_wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(arg_1.a.x, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(13769u, 13u)], 2147483647i, 21424i)) | -vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]))));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), -349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1320f, global0.x, 932f, -2234f) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-314f, global0.x, global0.x, -655f)))))));
    global2 = u_input.a;
    global3 = array<bool, 7>();
    let var_0 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.a, 13u)], -2147483647i, -1i);
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-global0.x), 702f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(false, ~vec2<u32>(4294967295u, 1u), true, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, 1u))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(round(357f))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 76114u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 2511u)) ^ abs(vec4<u32>(1u, 4294967295u, u_input.a, 1u)))))));
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_f32(global0.x - 1408f), Struct_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 53893u, u_input.a, 1u) << (vec4<u32>(u_input.a, 17950u, 35469u, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(17038u, 8018u, 4564u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 50992u, u_input.a, 40811u), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)))), Struct_1(global3[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 61838u), vec2<u32>(3037u, u_input.a)), any(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)])), firstTrailingBit(func_2(vec2<u32>(4294967295u, 122700u), Struct_1(true, vec2<u32>(1u, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 7u)], vec2<u32>(u_input.a, u_input.a)))))), Struct_1(global3[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_mod_vec2_u32(vec2<u32>(~25209u, u_input.a), ~vec2<u32>(96058u, u_input.a) | ~vec2<u32>(23427u, 30771u)), all(!(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], false))), firstLeadingBit(vec2<u32>(u_input.a, 1u))), 40571u);
}

