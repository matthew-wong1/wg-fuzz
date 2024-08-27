struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<i32> {
    global0 = array<f32, 4>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(12716u, 4u)], !vec4<bool>(any(arg_2.b), all(select(vec2<bool>(true, true), arg_3, arg_3.x)), true, (4294967295u == arg_2.d) & (arg_2.e >= arg_1)), 1000f, 46024u, ~arg_1 >> (1u % 32u));
    let var_1 = vec3<i32>(-2671i, -18886i, -_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-3883i, -8845i, -33958i, arg_1), vec4<i32>(var_0.e, 22873i, u_input.b.x, -2147483647i)), arg_1));
    global0 = array<f32, 4>();
    global0 = array<f32, 4>();
    return var_1 << (~(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, 1u, 34610u) << (vec3<u32>(1076u, 88991u, 1u) % vec3<u32>(32u)), vec3<u32>(arg_2.d, u_input.a, u_input.a)) & countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, 31416u, u_input.a), vec3<u32>(arg_2.d, 28798u, var_0.d)))) % vec3<u32>(32u));
}

fn func_3(arg_0: vec3<i32>) -> Struct_2 {
    return Struct_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(reverseBits(arg_0.x), arg_0.x), abs(_wgslsmith_div_i32(0i, 5892i))) & _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.c, arg_0.x, u_input.c, arg_0.x), vec4<i32>(2147483647i, 76376i, u_input.b.x, 1i)), ~vec4<i32>(-1i, -2147483647i, -20432i, -51751i) >> (vec4<u32>(u_input.a, u_input.a, 12345u, u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 4u)], -436f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(111775u, 4u)] * 436f), -1303f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 4u)] * -951f)), -476f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(1u, 4u)])))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-300f, 142f), global0[_wgslsmith_index_u32(u_input.a, 4u)])), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), arg_0.x <= -35373i), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + -225f))), u_input.a, arg_0.x), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.zx, ~vec2<i32>(-6426i, -34741i)), func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(countOneBits(0u), 4u)] * -671f), ~(arg_0.x ^ u_input.c), Struct_1(_wgslsmith_f_op_f32(trunc(-356f)), vec4<bool>(true, true, true, true), 244f, u_input.a, arg_0.x), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))).xz));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a, 4u)]));
    var_0 = global0[_wgslsmith_index_u32(~0u, 4u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-120f * _wgslsmith_f_op_f32(min(-724f, -828f))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(75331u | u_input.a), 0u), 4u)]), 4356u, u_input.b.x);
    let var_2 = var_1.b.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-253f, -306f)) - global0[_wgslsmith_index_u32(~var_1.d, 4u)]);
    return func_3(_wgslsmith_sub_vec3_i32((-vec3<i32>(var_1.e, var_1.e, 27351i) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 76720u), vec3<u32>(u_input.a, u_input.a, var_1.d)) % vec3<u32>(32u))) ^ select(func_2(global0[_wgslsmith_index_u32(u_input.a, 4u)], var_1.e, var_1, vec2<bool>(var_2, true)), ~vec3<i32>(13637i, 1i, u_input.c), select(var_1.b.www, vec3<bool>(true, var_1.b.x, var_2), var_1.b.x)), vec3<i32>(_wgslsmith_div_i32(var_1.e, -2147483647i) | _wgslsmith_mod_i32(0i, -2966i), u_input.c, reverseBits(abs(arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    let var_0 = u_input.a >> (_wgslsmith_div_u32(_wgslsmith_div_u32(max(4092u, 51815u), ~u_input.a) << (0u % 32u), ~(~22317u)) % 32u);
    let var_1 = ~(-((u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 3911u, var_0, 48662u), vec4<u32>(43648u, var_0, 9691u, u_input.a)) % 32u)) >> (u_input.a % 32u)));
    var var_2 = func_1(var_1);
    let var_3 = -10467i;
    let var_4 = abs(1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1052f, -1134f, var_2.c.a, global0[_wgslsmith_index_u32(firstLeadingBit(~15599u), 4u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), 789f, var_2.c.a, var_2.c.a), _wgslsmith_f_op_vec3_f32(func_1(-23172i).b * var_2.b));
}

