struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: bool = true;

var<private> global3: bool;

var<private> global4: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(24270u, 4294967295u, 10706u, 0u), vec4<u32>(1u, 1338u, 0u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> vec4<bool> {
    global2 = global1.x;
    let var_0 = select(select(vec4<bool>(!global1.x || any(global1.yzx), all(global1.xxx), false, false), !select(vec4<bool>(true, global1.x, false, false), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, true)), !all(!vec3<bool>(global1.x, true, true))), select(select(select(vec4<bool>(true, global1.x, global1.x, true), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), true), !vec4<bool>(global1.x, global1.x, true, true), any(vec4<bool>(global1.x, global1.x, global1.x, true))), select(!vec4<bool>(true, global1.x, global1.x, global1.x), select(!vec4<bool>(false, global1.x, global1.x, global1.x), select(vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, global1.x, false, false), global1.x), vec4<bool>(global1.x, true, global1.x, false)), !vec4<bool>(global1.x, false, true, global1.x)), any(!select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))), any(!select(global1.wzw, vec3<bool>(global1.x, false, true), vec3<bool>(true, true, true))));
    global3 = global1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1732f - _wgslsmith_f_op_f32(arg_3 - arg_0.x)))))), vec3<bool>(!all(!var_0), all(vec3<bool>(!var_0.x, select(false, global1.x, global1.x), false)), global1.x));
    var var_2 = _wgslsmith_div_i32(44132i, -26148i << (firstTrailingBit(41938u) % 32u));
    return select(select(vec4<bool>(false, var_0.x, global1.x, !(!var_0.x)), select(select(!vec4<bool>(false, global1.x, var_1.b.x, true), var_0, !global1.x), !(!var_0), !var_0), vec4<bool>(var_0.x, false && var_1.b.x, _wgslsmith_f_op_f32(min(-750f, -1120f)) < _wgslsmith_div_f32(792f, var_1.a), firstLeadingBit(arg_2.x) > (arg_2.x >> (u_input.c % 32u)))), !vec4<bool>(true, true, false, var_0.x), global1.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    global0 = array<u32, 12>();
    global1 = !select(!(!func_3(arg_1, 144245u, vec3<i32>(44353i, arg_0.b, -17960i), -787f)), vec4<bool>(arg_0.a.b.x, all(arg_0.a.b), false, all(!vec4<bool>(true, true, global1.x, arg_0.a.b.x))), !(!vec4<bool>(arg_0.a.b.x, true, false, global1.x)));
    global4 = array<vec4<u32>, 2>();
    var var_0 = true;
    global1 = vec4<bool>(arg_0.a.b.x, any(!(!select(vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, global1.x, false)))), true, all(!func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, -499f, -390f, arg_1.x))), global0[_wgslsmith_index_u32(0u, 12u)], vec3<i32>(u_input.b, arg_0.b, 2147483647i), _wgslsmith_f_op_f32(round(arg_0.a.a))).yxw));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 60595u), select(u_input.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 96767u) ^ countOneBits(u_input.a), vec2<u32>(71970u, 4606u) | _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50264u, 12u)], 12u)], 32898u), u_input.a)), true)), 12u)];
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    global1 = vec4<bool>(select(global1.x, global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 12u)], 0u)) != _wgslsmith_clamp_u32(~0u, u_input.a.x, global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(-672f, vec3<bool>(global1.x, false, false)), u_input.b), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -926f)), 12u)])), global1.x, any(global1.yzx), !(global0[_wgslsmith_index_u32(9832u, 12u)] >= u_input.a.x) | !global1.x);
    global1 = vec4<bool>(global1.x, (4294967295u >> (u_input.c % 32u)) < u_input.c, true, firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, u_input.c ^ 4294967295u)) != ~u_input.c);
    let var_0 = global0[_wgslsmith_index_u32(4294967295u << (reverseBits(_wgslsmith_sub_u32(u_input.a.x, 65152u)) % 32u), 12u)] >> (_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(countOneBits(abs(global4[_wgslsmith_index_u32(u_input.c, 2u)])), ~(global4[_wgslsmith_index_u32(12728u, 2u)] & vec4<u32>(33983u, global0[_wgslsmith_index_u32(24980u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], 4116u)))) % 32u);
    var var_1 = ~(~(~(~vec4<i32>(u_input.b, 54673i, 1i, u_input.b)) << (reverseBits(global4[_wgslsmith_index_u32(~57147u, 2u)]) % vec4<u32>(32u))));
    let var_2 = global1.x;
    return vec3<bool>(!(global1.x && true), any(select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(false, false, global1.x, false)), select(vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(false, false, true, global1.x)), false)), global1.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = vec4<i32>(min(abs(-u_input.b), abs(u_input.b)), -(~_wgslsmith_mod_i32(-39109i, -1i)), 0i, 19782i) << (vec4<u32>(~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)])), 1u, global0[_wgslsmith_index_u32(countOneBits(4294967295u), 12u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(88971u, 12u)], _wgslsmith_div_u32(~u_input.a.x, 1u))) % vec4<u32>(32u));
    let var_1 = !func_1(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2881f) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_0.a))).x;
    let var_2 = ~firstLeadingBit(u_input.a);
    var var_3 = var_0;
    global0 = array<u32, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -41830i, _wgslsmith_div_i32(u_input.b, 35105i), ~u_input.b, -u_input.b), vec4<i32>(-1922i, -u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -63087i, u_input.b, u_input.b), vec4<i32>(u_input.b, 21030i, -12693i, u_input.b)))) & abs(-(~(~vec4<i32>(u_input.b, 23287i, 2147483647i, -1i))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1f)), -747f);
    var_1 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-605f, -1863f))), select(vec3<bool>(!global1.x, true, all(vec2<bool>(false, global1.x))), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2042f, -337f, 587f))), !func_1(vec3<f32>(-690f, -1155f, -127f)))), Struct_1(-555f, !global1.xxx)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_0.x, var_0.x, var_0.x, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_0, var_0), -2147483647i)), ~countOneBits(~0u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(~(~u_input.c), 12u)]), u_input.a), -406f, var_0.x);
}

