struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(699f, -1000f, 651f, -567f, -708f, -1088f, -1000f, -167f, -205f, -1041f, 410f, -1277f, -794f, 415f, 869f, 733f, -1843f, 651f, 982f, 530f, -793f, -1794f, -342f);

var<private> global1: array<vec2<bool>, 21>;

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(0i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(2350i, i32(-2147483648)), vec2<i32>(2147483647i, 40617i), vec2<i32>(-1i, -23269i), vec2<i32>(2147483647i, -1i), vec2<i32>(-640i, 0i), vec2<i32>(-63610i, 56299i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -5574i), vec2<i32>(41649i, 73096i), vec2<i32>(0i, -8i), vec2<i32>(0i, 1i), vec2<i32>(-21946i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<f32> {
    global0 = array<f32, 23>();
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(~abs(~(~75079u))), 23u)];
    var var_1 = 4294967295u;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1337f, 1000f, 105f) * vec3<f32>(-673f, 483f, 718f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(50853u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], 162f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(45084u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], 324f)))), vec3<bool>(true, global0[_wgslsmith_index_u32(20688u, 23u)] >= global0[_wgslsmith_index_u32(2200u, 23u)], true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, 837f, -1265f)))), vec3<f32>(global0[_wgslsmith_index_u32(~42297u, 23u)], _wgslsmith_f_op_f32(1133f - global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 23u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))) * vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(62670u, 23u)], global0[_wgslsmith_index_u32(118452u, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(80007u, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(68431u, 23u)], global0[_wgslsmith_index_u32(1393u, 23u)], global0[_wgslsmith_index_u32(39020u, 23u)]) * vec3<f32>(878f, global0[_wgslsmith_index_u32(49374u, 23u)], 1230f)) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - -1000f), global0[_wgslsmith_index_u32(49298u, 23u)])), vec3<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(99962u), 23u)] == _wgslsmith_div_f32(global0[_wgslsmith_index_u32(66848u, 23u)], 347f), true, !all(vec2<bool>(false, false))))));
}

fn func_2() -> Struct_2 {
    global2 = array<vec2<i32>, 14>();
    global1 = array<vec2<bool>, 21>();
    global2 = array<vec2<i32>, 14>();
    var var_0 = Struct_1(~(~max(~vec2<u32>(4294967295u, 58429u), vec2<u32>(39374u, 0u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(14618u, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(62350u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_vec3_f32(func_3()), true)))), true, false, vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_add_i32(u_input.a.x & _wgslsmith_dot_vec4_i32(u_input.a, -select(u_input.a, u_input.a, true)), 0i);
    return Struct_2(_wgslsmith_f_op_f32(ceil(298f)), Struct_1(vec2<u32>(max(~1u, countOneBits(var_0.a.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, var_0.a.x), _wgslsmith_div_u32(var_0.a.x, var_0.a.x))), var_0.b, true, true, var_0.e), select(var_0.a, var_0.a, var_0.e.x), ~(-1i));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(arg_1 + 1143f)), arg_1, _wgslsmith_f_op_f32(-arg_1));
    global1 = array<vec2<bool>, 21>();
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1377f)));
    global0 = array<f32, 23>();
    return Struct_1(vec2<u32>(var_1.b.a.x, reverseBits(var_1.b.a.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(var_1.b.b)))), !any(vec2<bool>(true, arg_3.x && true)), !(!all(var_1.b.e.zy)), !select(arg_3, arg_3, vec3<bool>(true, arg_2 <= 4142i, any(arg_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(true, 1i > u_input.a.x, true);
    global1 = array<vec2<bool>, 21>();
    let var_1 = ~(~(38774u << (~(~0u) % 32u)));
    global2 = array<vec2<i32>, 14>();
    var var_2 = !var_0;
    var var_3 = global0[_wgslsmith_index_u32(~(~var_1), 23u)];
    var var_4 = func_1(var_0, -781f, ~1i, vec3<bool>(true, !(!(!var_0)), !any(vec4<bool>(false, true, false, true))));
    var_2 = all(select(select(select(!vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_4.c, false, var_0, false), vec4<bool>(false, false, false, true)), vec4<bool>(!var_4.c, true, 3848i >= u_input.a.x, var_0 || var_4.e.x), vec4<bool>(var_4.c, all(var_4.e.zx), var_0, true)), select(select(vec4<bool>(var_0, var_4.e.x, var_0, true), select(vec4<bool>(false, false, true, var_0), vec4<bool>(false, true, var_0, var_4.d), var_0), false | var_4.d), !vec4<bool>(false, false, var_4.c, var_4.d), func_2().b.e.x), vec4<bool>(true, !var_0, false, all(vec2<bool>(var_0, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -_wgslsmith_mult_vec4_i32(~u_input.a, u_input.a), vec2<f32>(-1846f, -1504f), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(23567i >> (var_4.a.x % 32u), -u_input.a.x), select(vec2<i32>(u_input.a.x, u_input.a.x), ~vec2<i32>(u_input.a.x, 13762i), true)), ~(-u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -539f))))));
}

