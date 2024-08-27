struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 15> = array<f32, 15>(-1752f, -1992f, -616f, -391f, 850f, -807f, 1000f, -2112f, 1000f, -731f, -1371f, 1398f, -364f, -1525f, -1249f);

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<Struct_3, 21>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c.x), 21u)];
    let var_1 = ~_wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(1u, 10054u & u_input.c.x)), ~4644u | abs(u_input.a.x), ~_wgslsmith_div_u32(var_0.c, var_0.c & var_0.c));
    return 0u;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<i32> {
    global4 = array<Struct_1, 24>();
    var var_0 = select(vec4<bool>(!(!(global1[_wgslsmith_index_u32(arg_1.x, 15u)] >= global1[_wgslsmith_index_u32(1u, 15u)])), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), all(vec3<bool>(true, true, true)))), max(firstTrailingBit(u_input.c.x), u_input.a.x) > _wgslsmith_clamp_u32(arg_1.x, u_input.a.x, abs(7736u)), true != any(vec3<bool>(true, false, false))), !vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(vec4<bool>(true, true, true, true)), false, -210f > global1[_wgslsmith_index_u32(~1u, 15u)]), vec4<bool>(all(vec3<bool>(true, true, true)), true & !any(vec4<bool>(false, false, true, true)), true, true));
    return vec2<i32>(min(-countOneBits(-18016i << (u_input.a.x % 32u)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), abs(arg_0)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(-33261i, 1i), min(-2147483647i >> (arg_1.x % 32u), -u_input.b) << (76877u % 32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = arg_2.b.x;
    global3 = array<Struct_3, 21>();
    global3 = array<Struct_3, 21>();
    var var_1 = ~func_3(vec4<i32>(u_input.b & u_input.b, u_input.b, -17417i, u_input.b) << (_wgslsmith_div_vec4_u32(u_input.a, abs(u_input.c)) % vec4<u32>(32u)), select(~vec2<u32>(arg_2.c, arg_3.b), vec2<u32>(23411u, u_input.a.x) >> (vec2<u32>(55970u, arg_3.b) % vec2<u32>(32u)), arg_2.b));
    var var_2 = select(select(select(vec4<bool>(any(vec3<bool>(true, arg_0.x, true)), true, false, arg_2.b.x), vec4<bool>(true, any(vec4<bool>(true, true, false, var_0)), true, true), true), select(select(vec4<bool>(arg_0.x, arg_0.x, var_0, false), select(vec4<bool>(arg_0.x, true, false, var_0), vec4<bool>(arg_2.b.x, arg_2.b.x, false, false), vec4<bool>(arg_0.x, false, arg_2.b.x, arg_2.b.x)), select(vec4<bool>(false, arg_2.b.x, true, arg_0.x), vec4<bool>(false, arg_2.b.x, false, arg_2.b.x), true)), select(!vec4<bool>(arg_2.b.x, true, arg_2.b.x, false), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0, var_0, var_0, arg_2.b.x), vec4<bool>(arg_2.b.x, false, true, true), arg_2.b.x)), arg_0.x), true), select(select(select(vec4<bool>(false, false, false, arg_2.b.x), vec4<bool>(arg_2.b.x, var_0, true, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_2.b.x, arg_0.x, true, var_0), vec4<bool>(false, false, var_0, true))), !(!vec4<bool>(var_0, false, false, arg_0.x)), arg_2.b.x), vec4<bool>(all(!arg_0), select(var_0, false, false), all(!arg_0.yx), arg_0.x), var_0), arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-816f, arg_2.a.a.x)) * arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 21>();
    global0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(17413u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, func_1(Struct_4(vec3<f32>(-616f, -517f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_1(vec2<f32>(-1067f, -1126f), vec4<u32>(48704u, 10087u, u_input.c.x, u_input.c.x)), u_input.b, vec2<bool>(false, true)), vec2<i32>(u_input.b, 17746i))), u_input.a.x, u_input.a.x)), 15u)]);
    global3 = array<Struct_3, 21>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), u_input.a.x >= 0u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(985f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)]))), Struct_3(global4[_wgslsmith_index_u32(36377u, 24u)], vec2<bool>(true, true), u_input.a.x), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(min(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(u_input.c.x, 6009u)), 11u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(32580u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f - -326f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-152f, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 15u)])))))));
    var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~max(u_input.a.x, u_input.c.x)) >> (_wgslsmith_mod_u32(9115u, ~(~u_input.a.x)) % 32u), 15u)] + -1797f);
    var var_1 = select(-u_input.b, u_input.b << (u_input.a.x % 32u), any(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_f32(-656f * 520f), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(u_input.a.wy, u_input.c.wx), 53300u, ~_wgslsmith_clamp_u32(u_input.a.x, 45780u, 13159u))), 15u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 15u)], global1[_wgslsmith_index_u32(19416u, 15u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x >> (u_input.a.x % 32u), 15u)] + global1[_wgslsmith_index_u32(u_input.a.x, 15u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(88826u, 15u)], 145f, -1090f, -801f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 1092f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec4<bool>(true, false, false, false))))))), -459f);
}

