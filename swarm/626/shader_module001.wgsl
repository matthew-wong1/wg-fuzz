struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(32618u, 1u, 1u, 4294967295u, 154u, 4294967295u, 1u);

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(2147483647i, 775f), Struct_1(13287i, 2025f), Struct_1(1i, 612f), Struct_1(2147483647i, 963f), Struct_1(i32(-2147483648), -311f), Struct_1(9347i, -1069f), Struct_1(0i, -806f), Struct_1(1i, -1158f), Struct_1(1i, 849f), Struct_1(-1i, 734f), Struct_1(-72884i, 1199f), Struct_1(-21647i, -830f), Struct_1(2147483647i, -102f), Struct_1(-1i, 1105f), Struct_1(-24587i, 945f), Struct_1(i32(-2147483648), 1000f), Struct_1(56194i, 1833f), Struct_1(1i, 786f), Struct_1(i32(-2147483648), -1395f), Struct_1(-1i, -1961f), Struct_1(15431i, 1000f), Struct_1(-1i, -380f), Struct_1(-17702i, 1557f), Struct_1(1i, -115f), Struct_1(2147483647i, 903f), Struct_1(20318i, -216f), Struct_1(23813i, -594f), Struct_1(2147483647i, 1516f), Struct_1(-1i, -751f));

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    global3 = Struct_2(Struct_1(-25817i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1329f)), _wgslsmith_f_op_f32(global3.a.b * 603f), all(vec4<bool>(true, true, false, false)))) * _wgslsmith_f_op_f32(global3.d.b * _wgslsmith_f_op_f32(max(global3.b.x, 493f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b, global3.b.x, global3.a.b, global3.d.b)))) - vec4<f32>(_wgslsmith_f_op_f32(step(-166f, global3.d.b)), global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(504f)) * _wgslsmith_f_op_f32(min(global3.d.b, 201f))), global3.b.x)), _wgslsmith_sub_vec4_u32(global3.c, vec4<u32>(u_input.d, 4294967295u, global3.c.x, ~u_input.d)) ^ _wgslsmith_clamp_vec4_u32(~firstLeadingBit(global3.c), ~(vec4<u32>(1u, 20018u, arg_1.a, 4294967295u) >> (vec4<u32>(global3.c.x, u_input.d, 29268u, global0[_wgslsmith_index_u32(global3.c.x, 7u)]) % vec4<u32>(32u))), countOneBits(abs(global3.c))), global3.d, global3.e);
    var var_0 = Struct_1(_wgslsmith_mod_i32(select(50198i, -reverseBits(global3.a.a), _wgslsmith_f_op_f32(-1906f * global3.a.b) <= global3.b.x), ~((arg_1.b | 65805i) ^ 1762i)), 1141f);
    var var_1 = Struct_2(Struct_1(-firstLeadingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_vec4_f32(global3.b, global3.b), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global3.c.zz, global3.c.xz & vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 54972u)), select(_wgslsmith_sub_vec2_u32(global3.c.xx, vec2<u32>(arg_1.a, 4294967295u)), global3.c.xz, !vec2<bool>(global3.e.x, arg_0))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 7u)], 66976u, arg_1.a), vec4<u32>(u_input.d, 0u, global0[_wgslsmith_index_u32(global3.c.x, 7u)], 1u)), reverseBits(vec4<u32>(arg_1.a, u_input.d, 4294967295u, arg_1.a))), max(~vec4<u32>(27619u, 0u, 29343u, u_input.d), ~global3.c)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(81860u, global0[_wgslsmith_index_u32(arg_1.a, 7u)], arg_1.a, 1u), global3.c), abs(vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], 33557u))), countOneBits(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.c.x, 7u)], 7u)], _wgslsmith_div_u32(120696u, arg_1.a), 37438u, ~arg_1.a), ~global3.c & vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d))), global3.a, select(vec4<bool>(global3.e.x, global3.e.x, !arg_0, all(global3.e.yxw)), select(vec4<bool>(false, select(arg_0, true, global3.e.x), global3.e.x, true || arg_0), select(vec4<bool>(global3.e.x, true, arg_0, false), global3.e, vec4<bool>(true, true, arg_0, global3.e.x)), !(!vec4<bool>(false, global3.e.x, true, global3.e.x))), global3.e));
    global0 = array<u32, 7>();
    let var_2 = Struct_3(66798u, ~_wgslsmith_mod_i32(~(~global3.a.a), reverseBits(-15297i) ^ u_input.b.x));
    return vec2<i32>(-1i) * -select(firstLeadingBit(vec2<i32>(var_0.a, 0i)), u_input.b, !vec2<bool>(false, var_1.e.x));
}

fn func_2() -> Struct_1 {
    global1 = true;
    let var_0 = Struct_3(firstTrailingBit(global3.c.x | ~(~global0[_wgslsmith_index_u32(u_input.d, 7u)])), select(1i & min(~0i, global3.a.a), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -36548i), func_3(false, Struct_3(1u, -2147483647i))), ~global3.a.a), global3.e.x));
    let var_1 = 1363f;
    let var_2 = vec2<u32>(global3.c.x, firstTrailingBit(7999u));
    var var_3 = ~var_0.a == global3.c.x;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.c.x | ~var_2.x, var_0.a, 1u), firstLeadingBit(~global3.c.wxy)), 29u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = ~abs(global3.c.yx) ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~global3.c.yz, ~vec2<u32>(global0[_wgslsmith_index_u32(arg_2.a, 7u)], 4294967295u)), firstTrailingBit(select(global3.c.wz, vec2<u32>(16039u, global3.c.x), global3.e.x))), countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.a, u_input.d), global3.c.zy)));
    var var_1 = _wgslsmith_sub_vec4_u32(max(~countOneBits(~global3.c), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 7u)] >> (20296u % 32u), firstTrailingBit(4252u), 0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0, ~var_0 ^ vec2<u32>(global0[_wgslsmith_index_u32(54604u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), ~4294967295u, _wgslsmith_mult_u32(~(~var_0.x), ~14292u), var_0.x));
    var var_2 = arg_2;
    let var_3 = global3.b;
    var var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(209f, arg_0.b)) - 2210f) > 1936f, true, select(false, true, false), true), vec4<bool>(global3.e.x, all(!vec2<bool>(global3.e.x, true)), true, false), true);
    return 4294967295u;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(0u, -min(-_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~u_input.c.x));
    var var_1 = _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 7u)]), ~24652u) ^ u_input.d, ~_wgslsmith_add_u32(arg_0.a, global0[_wgslsmith_index_u32(u_input.d, 7u)]), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d, 75312u, 118670u, global0[_wgslsmith_index_u32(global3.c.x, 7u)])), ~global3.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~global3.c.x), 7u)])));
    var var_2 = Struct_1(u_input.c.x, global3.d.b);
    let var_3 = func_4(func_2(), -abs(_wgslsmith_sub_i32(arg_0.b << (1u % 32u), select(var_2.a, var_2.a, global3.e.x))), arg_0);
    let var_4 = Struct_1(-9176i, _wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-425f * var_2.b)))));
    return var_4;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> bool {
    global3 = arg_2;
    var var_0 = 580f;
    var var_1 = func_1(Struct_3(arg_2.c.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.a, global3.d.a, global3.a.a, 0i) | u_input.a), firstLeadingBit(vec4<i32>(arg_1.a, -1278i, arg_1.a, 0i)))));
    return arg_2.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.e.x || !func_5(global3.e.x, func_1(Struct_3(9835u, u_input.b.x)), Struct_2(Struct_1(9692i, global3.d.b), _wgslsmith_f_op_vec4_f32(-global3.b), ~global3.c, Struct_1(u_input.c.x, global3.d.b), !vec4<bool>(global3.e.x, true, false, global3.e.x)), 231f);
    var var_1 = global3.e.yzw;
    global2 = array<Struct_1, 29>();
    global3 = Struct_2(Struct_1(-13814i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global3.a.b)), _wgslsmith_f_op_f32(-379f * global3.d.b), u_input.c.x > -25705i)) + -168f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global3.b, vec4<f32>(2012f, 2770f, 894f, global3.b.x), global3.e))), _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-690f, -1899f, -1758f, 1671f)))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(~global3.c.x, 4294967295u, ~46290u, ~4294967295u), global3.c), global3.d, global3.e);
    var var_2 = Struct_3(firstLeadingBit(65703u), ~(-1i));
    let var_3 = _wgslsmith_mod_i32(-global3.d.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(global3.a.a >> (17449u % 32u), u_input.a.x), -(0i << (global3.c.x % 32u))));
    let var_4 = func_3(var_0, Struct_3(25733u, global3.d.a)).x;
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 1u, 29922u) >> (global3.c.wwx % vec3<u32>(32u))), global3.c.yzz));
}

