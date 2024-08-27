struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3>;

var<private> global1: array<u32, 29>;

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-96909i, -3641i), vec2<i32>(1i, 22873i));

var<private> global3: array<i32, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_1(arg_0: Struct_5, arg_1: bool) -> u32 {
    let var_0 = select(~(~(~firstTrailingBit(vec3<u32>(13023u, 2820u, u_input.c)))), abs(abs(abs(~arg_0.d.d.yxz))), !arg_0.d.e.c);
    let var_1 = Struct_2(arg_0.d.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1019f)))), false);
    var var_2 = arg_0.d.e.b;
    global3 = array<i32, 3>();
    global2 = array<vec2<i32>, 2>();
    return 1u;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = ~u_input.d;
    let var_1 = global0[_wgslsmith_index_u32(~47739u, 3u)];
    let var_2 = _wgslsmith_add_i32(global3[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.c, 0u, var_1.c) ^ var_1.d.d, _wgslsmith_mult_vec4_u32(firstTrailingBit(var_1.d.d), ~var_1.d.d))), 3u)], -36347i);
    var var_3 = var_2;
    let var_4 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 1u, u_input.c) << (vec3<u32>(var_1.c, 1u, var_1.c) % vec3<u32>(32u)), var_1.d.d.zzx))), 3u)];
    return arg_0.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: vec4<u32>) -> bool {
    global1 = array<u32, 29>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(49358u, 38915u) ^ _wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_3.x, 29u)], u_input.a.x)), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37125u, 29u)], 29u)], 29u)], 1u, global1[_wgslsmith_index_u32(21734u, 29u)]), global1[_wgslsmith_index_u32(4294967295u, 29u)] | arg_3.x))) >> (182u % 32u), 3u)];
    var_0 = Struct_5(Struct_2(Struct_1(true, var_0.a.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.b.b, -1488f))), all(vec4<bool>(var_0.d.b.c, select(true, arg_2, false), 9233u != u_input.c, var_0.a.a.a))), _wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(round(423f))), var_0.c, var_0.d, arg_2);
    var_0 = global0[_wgslsmith_index_u32(17632u, 3u)];
    let var_1 = arg_3;
    return any(vec3<bool>(any(select(select(vec3<bool>(arg_2, var_0.d.b.c, false), vec3<bool>(var_0.a.a.a, false, var_0.e), false), select(vec3<bool>(var_0.a.c, arg_2, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, arg_2))), true, any(select(!vec3<bool>(true, arg_2, var_0.d.e.c), select(vec3<bool>(true, false, var_0.a.a.a), vec3<bool>(arg_2, true, var_0.e), vec3<bool>(false, arg_2, var_0.e)), arg_3.x > var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 26217u, 19480u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 29u)], 29u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 29u)], 1508u, global1[_wgslsmith_index_u32(u_input.b, 29u)]) & vec4<u32>(1u, 14629u, u_input.a.x, 69540u)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(1u, 29u)] >> (13134u % 32u)), 29u)], func_1(Struct_5(Struct_2(Struct_1(true, vec2<bool>(true, false)), -1427f, false), 303f, 822u, Struct_3(1i, Struct_2(Struct_1(false, vec2<bool>(false, true)), 1073f, false), vec3<i32>(u_input.e.x, u_input.d, -2147483647i), vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)], u_input.c, 0u, global1[_wgslsmith_index_u32(31914u, 29u)]), Struct_2(Struct_1(false, vec2<bool>(true, false)), 1000f, false)), false), any(vec3<bool>(false, false, true))))), select(select(vec3<u32>(u_input.a.x, 43151u, u_input.b) & _wgslsmith_clamp_vec3_u32(vec3<u32>(49754u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 29u)], global1[_wgslsmith_index_u32(58522u, 29u)]), vec3<u32>(u_input.c, 0u, global1[_wgslsmith_index_u32(25551u, 29u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], 1u, 74196u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(1u, 29u)], 0u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 29u)], u_input.c, u_input.c), vec3<u32>(u_input.b, 30152u, 1u)) & ~vec3<u32>(u_input.b, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], 29u)]), true), ~((vec3<u32>(u_input.a.x, 12352u, 31646u) << (vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]) % vec3<u32>(32u))) << (~vec3<u32>(0u, 64904u, global1[_wgslsmith_index_u32(0u, 29u)]) % vec3<u32>(32u))), vec3<bool>(func_2(Struct_1(false, vec2<bool>(true, true))), true, true))), 3u)];
    let var_1 = Struct_4(_wgslsmith_add_u32(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 29u)]) ^ u_input.a.x, _wgslsmith_add_u32(102914u, global1[_wgslsmith_index_u32(min(u_input.b, 1u), 29u)])), _wgslsmith_sub_u32(0u, ~firstTrailingBit(35546u)), Struct_3(~select(u_input.e.x, 0i & global3[_wgslsmith_index_u32(u_input.c, 3u)], false), Struct_2(Struct_1(true, select(vec2<bool>(false, false), vec2<bool>(false, true), false)), -1165f, true), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(1u, 3u)], 11078i) << (vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 29u)], 4377u, global1[_wgslsmith_index_u32(u_input.c, 29u)]) % vec3<u32>(32u)), vec3<i32>(-20155i, -2147483647i, u_input.e.x), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.c, 3u)], u_input.e.x)), ~vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44330u, 29u)], 3u)], 2147483647i, 72320i), true), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 22327u, global1[_wgslsmith_index_u32(31070u, 29u)])), 54747u, ~0u, 1u), Struct_2(Struct_1(true, vec2<bool>(true, false)), -441f, func_3(vec3<i32>(0i, u_input.d, u_input.e.x), global3[_wgslsmith_index_u32(u_input.b, 3u)], any(vec2<bool>(true, false)), ~vec4<u32>(global1[_wgslsmith_index_u32(0u, 29u)], 21252u, global1[_wgslsmith_index_u32(u_input.c, 29u)], u_input.a.x)))), vec2<bool>(true, true), Struct_2(Struct_1(select(true, true, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(749f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2245f, 1508f)), -627f)), 2147483647i != u_input.e.x));
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 3u)];
    let var_3 = ~(i32(-1i) * -abs(max(var_1.c.a, 47237i)));
    let var_4 = ~4294967295u;
    let var_5 = var_2.a.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_u32(~4294967295u, global1[_wgslsmith_index_u32(var_2.c >> (1u % 32u), 29u)])), var_1.c.d.x | 1u, abs(~_wgslsmith_div_vec4_u32(var_2.d.d, ~var_1.c.d)));
}

