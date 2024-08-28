struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: u32 = 1u;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec2<bool>, 13>;

var<private> global4: array<vec3<i32>, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(Struct_1(all(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.a.x), u_input.a.zwz)), 13u)]), 1i, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.c.xx), u_input.c.zw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1820f, -2236f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec3<f32>(global0[_wgslsmith_index_u32(18201u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(18160u, 32u)])))))), Struct_1(u_input.c.x == _wgslsmith_mult_u32(u_input.c.x, 31111u), 2147483647i, vec2<u32>(max(u_input.c.x, 31964u), countOneBits(u_input.a.x)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, -1082f, -1243f)))) * vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), -143f, -2312f))), Struct_1(!(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] == -1794f) && true, -_wgslsmith_dot_vec3_i32(vec3<i32>(40086i, -2147483647i, -2147483647i), vec3<i32>(0i, -2147483647i, -29317i)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 36456u), firstLeadingBit(u_input.a.wz)), u_input.c.yx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(10484u, 32u)], -489f, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(569f, global0[_wgslsmith_index_u32(1u, 32u)], 1395f)))))), -973f);
    var var_1 = Struct_4(Struct_3(-950f, Struct_2(var_0.a, Struct_1(all(vec3<bool>(var_0.a.a, false, true)), 60333i, vec2<u32>(u_input.a.x, 35025u), _wgslsmith_f_op_vec3_f32(-var_0.a.d)), Struct_1(false & var_0.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.b, var_0.c.b, 70276i, var_0.a.b), vec4<i32>(-10803i, -2147483647i, var_0.c.b, var_0.a.b)), ~u_input.a.xx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-263f, var_0.c.d.x, global0[_wgslsmith_index_u32(var_0.a.c.x, 32u)]) + vec3<f32>(-294f, -110f, global0[_wgslsmith_index_u32(var_0.c.c.x, 32u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(463f - global0[_wgslsmith_index_u32(4294967295u, 32u)]) - var_0.a.d.x)), select(!select(vec3<bool>(var_0.a.a, var_0.a.a, var_0.c.a), vec3<bool>(var_0.c.a, var_0.b.a, var_0.a.a), vec3<bool>(false, false, var_0.c.a)), !(!vec3<bool>(true, true, var_0.c.a)), select(select(vec3<bool>(true, var_0.c.a, false), vec3<bool>(var_0.c.a, true, true), vec3<bool>(var_0.b.a, var_0.b.a, true)), vec3<bool>(true, true, true), vec3<bool>(var_0.b.a, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f)), 1000f, -517f)), any(vec4<bool>(true, true, true, true)), Struct_2(var_0.b, Struct_1(true, _wgslsmith_add_i32(var_0.c.b, _wgslsmith_add_i32(-8363i, -11579i)), firstTrailingBit(u_input.a.wx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-499f, -1350f, -2233f), var_0.b.d)))), var_0.c, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~0u, 32u)]))), Struct_2(var_0.b, var_0.c, var_0.c, 1000f));
    var var_2 = _wgslsmith_add_i32(1i << (select(69280u, 4294967295u, false) % 32u), -(~select(-var_0.b.b, -2147483647i, any(global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))));
    let var_3 = vec4<u32>(33199u, 59014u, 4294967295u, 14263u);
    var var_4 = vec2<i32>(firstTrailingBit(firstLeadingBit(var_0.a.b)), _wgslsmith_add_i32(var_1.a.b.c.b, ~(-var_0.c.b)));
    return all(!var_1.a.c) && false;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec2<u32>) -> bool {
    let var_0 = select(vec2<bool>(arg_0.a | arg_0.a, !arg_0.a), !(!select(select(vec2<bool>(true, false), global3[_wgslsmith_index_u32(arg_3.x, 13u)], vec2<bool>(arg_0.a, false)), !global3[_wgslsmith_index_u32(arg_0.c.x, 13u)], true)), vec2<bool>(all(vec3<bool>(true, true, arg_0.a)), !all(vec3<bool>(false, arg_0.a, arg_0.a))));
    let var_1 = ~vec2<i32>(24518i, _wgslsmith_mult_i32(-30191i, arg_0.b));
    var var_2 = Struct_2(Struct_1(!func_3() && true, -arg_0.b, _wgslsmith_mult_vec2_u32(~select(arg_0.c, vec2<u32>(arg_2, 1u), arg_0.a), abs(~vec2<u32>(56149u, 84837u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_1, -841f)))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -1272f, arg_1), !vec3<bool>(var_0.x, false, arg_0.a)))), Struct_1(!(abs(arg_0.b) <= select(65351i, var_1.x, var_0.x)), ~firstLeadingBit(-2147483647i & arg_0.b), _wgslsmith_mult_vec2_u32(arg_0.c, ~vec2<u32>(4294967295u, 0u)), _wgslsmith_div_vec3_f32(arg_0.d, _wgslsmith_f_op_vec3_f32(-arg_0.d))), arg_0, -490f);
    global1 = ~1u;
    var_2 = Struct_2(Struct_1(false, min(var_1.x | arg_0.b, -var_1.x << (59498u % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_3.x, arg_2)), arg_0.c), arg_2), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 - arg_1))), -1000f, _wgslsmith_f_op_f32(select(2150f, -381f, true)))), arg_0, var_2.c, global0[_wgslsmith_index_u32(~58098u | ~_wgslsmith_dot_vec3_u32(abs(u_input.a.xwz), max(vec3<u32>(0u, 1u, 153100u), vec3<u32>(20287u, u_input.c.x, arg_2))), 32u)]);
    return true;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    global0 = array<f32, 32>();
    return Struct_3(-948f, Struct_2(arg_0, arg_0, Struct_1(arg_0.a, ~(~arg_0.b), u_input.a.ww, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(5870u, 32u)], -523f, global0[_wgslsmith_index_u32(arg_0.c.x, 32u)]), arg_0.d))))), _wgslsmith_f_op_f32(-arg_0.d.x)), select(!vec3<bool>(arg_0.a || arg_0.a, all(vec3<bool>(arg_0.a, arg_0.a, true)), true), select(!select(vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a)), select(select(vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, false)), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, true, false)), false), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(arg_0.a, true, arg_0.a)), arg_0.a)), all(vec2<bool>(arg_0.a, func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(634f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.d)) - vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x * 306f), _wgslsmith_f_op_f32(-687f + 205f), _wgslsmith_f_op_f32(-1022f * -212f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(arg_0.d.x, -1890f, arg_0.d.x)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(300f, global0[_wgslsmith_index_u32(arg_0.c.x, 32u)], global0[_wgslsmith_index_u32(arg_0.c.x, 32u)])))))));
}

fn func_1() -> u32 {
    var var_0 = !select(select(select(select(global3[_wgslsmith_index_u32(u_input.c.x, 13u)], global3[_wgslsmith_index_u32(u_input.c.x, 13u)], true), vec2<bool>(true, true), global3[_wgslsmith_index_u32(0u, 13u)]), select(global3[_wgslsmith_index_u32(~10471u, 13u)], global3[_wgslsmith_index_u32(select(1u, 1u, false), 13u)], vec2<bool>(true, false)), true), vec2<bool>(all(vec2<bool>(true, true)) == false, true), !select(select(vec2<bool>(true, false), global3[_wgslsmith_index_u32(u_input.a.x, 13u)], false), select(global3[_wgslsmith_index_u32(1u, 13u)], vec2<bool>(true, true), global3[_wgslsmith_index_u32(u_input.a.x, 13u)]), true));
    global4 = array<vec3<i32>, 13>();
    let var_1 = func_4(Struct_1(!(var_0.x & var_0.x) & func_2(Struct_1(false, -2147483647i, vec2<u32>(u_input.a.x, 0u), vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 1000f, -1000f)), _wgslsmith_f_op_f32(sign(247f)), ~u_input.a.x, u_input.c.xz), -(~countOneBits(-1i)), u_input.c.ww & min(~u_input.a.xw, u_input.a.ww), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - -138f)), -162f)));
    global2 = ~1u;
    global4 = array<vec3<i32>, 13>();
    return 23641u ^ var_1.b.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 13>();
    let var_0 = countOneBits(~func_1());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(var_0, 32u)]))))), -398f);
    let var_2 = countOneBits(select(~u_input.c.ywx >> (vec3<u32>(1u, 0u, ~u_input.a.x) % vec3<u32>(32u)), ~max(firstTrailingBit(vec3<u32>(u_input.a.x, var_0, var_0)), vec3<u32>(20783u, var_0, 79238u) & u_input.a.yyx), false));
    let var_3 = 1i;
    global4 = array<vec3<i32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-491f * func_4(Struct_1(true, 1i, _wgslsmith_add_vec2_u32(var_2.xy, var_2.zx), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -212f, 832f))))).a), var_3 & var_3, _wgslsmith_dot_vec4_u32(u_input.c, u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, -1000f, -464f, var_1.x) * vec4<f32>(var_1.x, -207f, 192f, var_1.x))))), 36124u);
}

