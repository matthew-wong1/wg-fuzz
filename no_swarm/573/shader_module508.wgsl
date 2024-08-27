struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: vec2<f32> = vec2<f32>(1124f, -501f);

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global2 = array<vec2<i32>, 7>();
    var var_0 = vec4<i32>(16029i, 1i, -u_input.b, -2147483647i >> (global1.b % 32u));
    let var_1 = vec3<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(-global3.x))) + -103f), global3.x), global3.x);
    let var_2 = Struct_1(true, 0u, (-(vec4<i32>(u_input.b, -14573i, global1.e, var_0.x) & global1.c) << (vec4<u32>(u_input.a, u_input.a, global1.d.x, _wgslsmith_dot_vec3_u32(global1.d, vec3<u32>(u_input.c.x, 52980u, u_input.a))) % vec4<u32>(32u))) | ~_wgslsmith_add_vec4_i32(~vec4<i32>(var_0.x, global1.e, 2147483647i, global1.e), vec4<i32>(-1i, 0i, var_0.x, -1i)), u_input.c.zxy, u_input.b);
    var var_3 = var_2;
    return global1.a;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1521f, -1884f), vec2<f32>(global3.x, -778f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(841f, global3.x))), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-894f, _wgslsmith_f_op_f32(global3.x - -615f)))), vec2<f32>(global3.x, 597f));
    let var_0 = arg_0;
    let var_1 = !global1.a;
    let var_2 = arg_0;
    global4 = array<Struct_1, 12>();
    return select(select(!select(vec2<bool>(false, arg_0.a), !vec2<bool>(false, var_0.a), true | global1.a), vec2<bool>(true, select(true, true, 10792u < var_2.d.x)), vec2<bool>(any(select(vec2<bool>(false, global1.a), vec2<bool>(arg_0.a, false), false)), var_1)), vec2<bool>(true, func_3()), !all(select(!vec2<bool>(true, arg_0.a), !vec2<bool>(var_2.a, true), true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global1 = arg_1;
    var var_0 = global4[_wgslsmith_index_u32(1u, 12u)];
    let var_1 = vec3<bool>(true, true, !(!global1.a));
    var var_2 = ~(~arg_1.c.wzx);
    var var_3 = 285f;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_4(func_2(global4[_wgslsmith_index_u32(4294967295u, 12u)]), Struct_1(false, 5841u, _wgslsmith_div_vec4_i32(vec4<i32>(firstLeadingBit(global1.e), countOneBits(u_input.b), -1i, ~global1.e), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), u_input.b, -43339i)), _wgslsmith_div_vec3_u32(vec3<u32>(~global1.b, abs(74306u), max(0u, 54443u)), ~u_input.c.zwz | ~vec3<u32>(arg_0.x, global1.b, 1u)), 38734i), 0i);
    var var_1 = false;
    let var_2 = func_4(!vec2<bool>(var_0.c.x < _wgslsmith_div_i32(global1.c.x, global1.c.x), false), func_4(!vec2<bool>(!global1.a, var_0.b >= 71204u), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.d, _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(var_0.b, 4294967295u, global1.d.x)), vec3<u32>(global1.d.x, arg_0.x, 0u) | var_0.d, u_input.c.zxz)), 12u)], 1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32((global1.c.ww & vec2<i32>(0i, 1i)) | global2[_wgslsmith_index_u32(13280u, 7u)], global2[_wgslsmith_index_u32(~global1.d.x, 7u)]), global1.c.x & (_wgslsmith_dot_vec3_i32(var_0.c.xwy, global1.c.yzy) & _wgslsmith_add_i32(global1.c.x, u_input.b))));
    global3 = vec2<f32>(1f, _wgslsmith_f_op_f32(-324f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))) * _wgslsmith_f_op_f32(-1316f * global3.x))));
    global1 = func_4(func_2(func_4(!select(vec2<bool>(false, global1.a), vec2<bool>(true, global1.a), true), func_4(select(vec2<bool>(true, true), vec2<bool>(false, global1.a), false), func_4(vec2<bool>(true, var_0.a), var_0, global1.c.x), func_4(vec2<bool>(var_0.a, false), var_2, var_2.e).e), _wgslsmith_clamp_i32(var_0.c.x, abs(u_input.b), _wgslsmith_dot_vec4_i32(var_2.c, global0[_wgslsmith_index_u32(0u, 13u)])))), func_4(vec2<bool>(any(select(vec4<bool>(true, var_0.a, false, var_2.a), vec4<bool>(var_2.a, false, var_0.a, var_0.a), true)), global3.x < _wgslsmith_f_op_f32(ceil(-419f))), func_4(vec2<bool>(false, global1.a), Struct_1(all(vec3<bool>(var_2.a, true, var_0.a)), ~var_2.d.x, -var_2.c, vec3<u32>(19797u, 1u, global1.b) & vec3<u32>(1u, 1u, 1u), 5996i), 2147483647i), countOneBits(~_wgslsmith_sub_i32(u_input.b, u_input.b))), -1i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, true, all(vec3<bool>(global1.a, global1.a, true))), select(!vec3<bool>(false, global1.a, global1.a), vec3<bool>(false, global1.a, false), global1.a), !global1.a));
    global1 = func_1(_wgslsmith_sub_vec2_u32(~(select(u_input.c.zz, global1.d.xz, vec2<bool>(false, true)) & vec2<u32>(global1.b, 4294967295u)), u_input.c.wx | (vec2<u32>(4294967295u, u_input.c.x) & vec2<u32>(u_input.a, u_input.c.x))));
    global0 = array<vec4<i32>, 13>();
    let var_1 = global0[_wgslsmith_index_u32(global1.b, 13u)];
    var var_2 = -vec2<i32>(-2147483647i, ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(min(1310f, -389f))));
}

