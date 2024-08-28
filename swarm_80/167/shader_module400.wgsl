struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 39988u;

var<private> global1: array<vec2<bool>, 21>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(~u_input.b, u_input.e.xyz), u_input.e.x, i32(-1i) * -u_input.e.x));
    global3 = array<f32, 15>();
    global3 = array<f32, 15>();
    let var_1 = 71738u == _wgslsmith_add_u32(u_input.c, ~min(firstLeadingBit(u_input.a), 13463u));
    global1 = array<vec2<bool>, 21>();
    return -333f;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    global2 = array<Struct_1, 28>();
    var var_0 = !(!select(_wgslsmith_dot_vec4_u32(vec4<u32>(1500u, 72359u, 141170u, 21801u), vec4<u32>(u_input.c, u_input.d, 1u, u_input.d)) != abs(arg_0), false, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 15u)], arg_2.x) < -1121f));
    var var_1 = vec3<i32>(-35903i, _wgslsmith_mult_i32(i32(-1i) * -29529i, min(i32(-1i) * -41258i, 1i)), arg_3.b.a.x) & select(vec3<i32>(-8454i << (arg_0 % 32u), 14179i, -arg_3.d.a.x) << (select(vec3<u32>(7073u, 2710u, 0u) | vec3<u32>(0u, u_input.a, 123477u), ~vec3<u32>(67757u, u_input.d, 4294967295u), all(vec4<bool>(false, true, true, false))) % vec3<u32>(32u)), arg_3.c.a, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), all(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true))));
    global2 = array<Struct_1, 28>();
    let var_2 = !vec3<bool>(!(all(vec2<bool>(false, false)) | false), false, false);
    return _wgslsmith_clamp_i32(abs(_wgslsmith_mod_i32(1i, 9586i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(~var_1.x, -21691i, arg_3.a), -18024i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, var_1.x, -1i), arg_3.c.a), u_input.b.x)), countOneBits(~vec3<i32>(-2147483647i, u_input.b.x, -1i))), _wgslsmith_dot_vec2_i32(arg_3.b.a.xx, -arg_3.c.a.zz));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec3<u32> {
    global0 = 0u;
    var var_0 = min(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(select(min(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(21590u, 1u) | vec2<u32>(u_input.a, u_input.a), true), ~(~vec2<u32>(4294967295u, 1u))), u_input.c, u_input.d), vec4<u32>(abs(_wgslsmith_mult_u32(1u, ~37388u)), _wgslsmith_dot_vec3_u32(vec3<u32>(25591u, _wgslsmith_add_u32(u_input.c, 22320u), ~4294967295u), ~(~vec3<u32>(27701u, u_input.c, u_input.a))), reverseBits(~u_input.d), _wgslsmith_mult_u32(u_input.a, ~u_input.d | ~u_input.d)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-528f, global3[_wgslsmith_index_u32(1u, 15u)])))), -492f)));
    return ~(~(vec3<u32>(u_input.a, u_input.d, u_input.c) ^ var_0.yyx) >> (select(var_0.yyz, select(_wgslsmith_div_vec3_u32(var_0.xxy, var_0.wzx), max(vec3<u32>(u_input.a, 1u, u_input.d), vec3<u32>(u_input.a, var_0.x, 35096u)), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(global1[_wgslsmith_index_u32(1u, 21u)]))) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(func_2(~vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.e.xy & vec2<i32>(u_input.b.x, 1i), u_input.e.xy), -u_input.b.x, reverseBits(min(u_input.e.x, u_input.e.x)))));
    let var_1 = global2[_wgslsmith_index_u32(~u_input.d, 28u)];
    global0 = u_input.d;
    global3 = array<f32, 15>();
    var var_2 = global2[_wgslsmith_index_u32(15112u << (_wgslsmith_dot_vec3_u32(func_4(_wgslsmith_sub_i32(func_3(64148u, global3[_wgslsmith_index_u32(52332u, 15u)], vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 15u)], global3[_wgslsmith_index_u32(6443u, 15u)], -1103f), Struct_2(var_1.a.x, global2[_wgslsmith_index_u32(u_input.a, 28u)], Struct_1(vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x)), Struct_1(vec3<i32>(0i, 1i, var_1.a.x)))), -78115i), Struct_2(_wgslsmith_div_i32(u_input.b.x, u_input.e.x), global2[_wgslsmith_index_u32(~u_input.c, 28u)], Struct_1(vec3<i32>(var_1.a.x, 1i, 28085i)), global2[_wgslsmith_index_u32(reverseBits(u_input.d), 28u)])), firstTrailingBit(~(~vec3<u32>(2224u, 30752u, 0u)))) % 32u), 28u)];
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.x;
    var_0 = u_input.b.x;
    var var_1 = !(_wgslsmith_add_i32(~u_input.b.x, -1i) <= -7661i) || false;
    var var_2 = global2[_wgslsmith_index_u32(u_input.c, 28u)];
    let var_3 = !(!any(vec3<bool>(true, all(vec2<bool>(false, true)), true)));
    global1 = array<vec2<bool>, 21>();
    var var_4 = select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(), 0u), 21u)], !vec2<bool>(all(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.d), 21u)]), any(select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, false, false), true))), global1[_wgslsmith_index_u32(u_input.a, 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~1u), _wgslsmith_add_u32(u_input.a, 1u), ~u_input.a, u_input.a));
}

