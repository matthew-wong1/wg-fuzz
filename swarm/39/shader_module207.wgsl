struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -250f;

var<private> global1: array<f32, 4> = array<f32, 4>(-1000f, -325f, -965f, 1086f);

var<private> global2: array<u32, 2>;

var<private> global3: array<vec4<u32>, 5>;

var<private> global4: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u))), Struct_2(Struct_1(vec4<u32>(17344u, 4294967295u, 74408u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u))), Struct_2(Struct_1(vec4<u32>(1u, 0u, 23641u, 1u))), Struct_2(Struct_1(vec4<u32>(39361u, 53909u, 0u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(1u, 0u, 37834u, 66422u))), Struct_2(Struct_1(vec4<u32>(1u, 45332u, 30566u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(46358u, 0u, 70162u, 0u))), Struct_2(Struct_1(vec4<u32>(11762u, 1u, 62489u, 48743u))), Struct_2(Struct_1(vec4<u32>(42094u, 4294967295u, 1u, 25976u))), Struct_2(Struct_1(vec4<u32>(8861u, 1u, 43225u, 58963u))), Struct_2(Struct_1(vec4<u32>(16229u, 7012u, 1u, 49160u))), Struct_2(Struct_1(vec4<u32>(11191u, 98003u, 10393u, 1u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 54655u, 0u, 26453u))), Struct_2(Struct_1(vec4<u32>(1u, 4123u, 46401u, 1u))), Struct_2(Struct_1(vec4<u32>(0u, 0u, 21310u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(0u, 50308u, 4294967295u, 63218u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 7494u, 1u, 0u))), Struct_2(Struct_1(vec4<u32>(26327u, 3557u, 1097u, 104177u))), Struct_2(Struct_1(vec4<u32>(37978u, 4294967295u, 1u, 8850u))), Struct_2(Struct_1(vec4<u32>(1u, 68698u, 20869u, 0u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 8998u, 55800u, 4294967295u))), Struct_2(Struct_1(vec4<u32>(69822u, 14386u, 0u, 1u))), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 75443u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 96009u, 0u, 0u))), Struct_2(Struct_1(vec4<u32>(1u, 27016u, 50334u, 13446u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 12372u, 0u))), Struct_2(Struct_1(vec4<u32>(0u, 9642u, 33261u, 0u))), Struct_2(Struct_1(vec4<u32>(4294967295u, 20798u, 10187u, 0u))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(98870u, 4u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1581f, -605f, var_0)), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(81355u, 4u)], global1[_wgslsmith_index_u32(21794u, 4u)])), any(vec3<bool>(var_0, true, true)))), _wgslsmith_f_op_f32(max(-217f, -1572f)), 2135f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2256f), global1[_wgslsmith_index_u32(arg_1.a.a.x, 4u)], global1[_wgslsmith_index_u32(arg_1.a.a.x, 4u)], global1[_wgslsmith_index_u32(52744u >> (1u % 32u), 4u)])))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(0u, ~arg_0.a.a.x), 4u)] * global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), reverseBits(53930u), arg_0.a.a.xy);
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(ceil(var_1.b)), 971f, ~_wgslsmith_mult_u32(~u_input.c.x, var_1.e.x), select(u_input.a.wy, ~vec2<u32>(global2[_wgslsmith_index_u32(~1u, 2u)], ~arg_1.a.a.x), vec2<bool>(false, var_0)));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(0u, ~_wgslsmith_mod_u32(~15372u, ~u_input.c.x)), 1u);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.a.a.x, reverseBits(~u_input.b)), (_wgslsmith_mult_u32(0u, 11296u) & var_1.a.a.x) | min(var_1.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.a.a, global3[_wgslsmith_index_u32(var_1.a.a.x, 5u)] | u_input.c), 2u)])), 29u)];
    return 464f;
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    global4 = array<Struct_2, 29>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<u32>(u_input.b, 20244u, global2[_wgslsmith_index_u32(1u, 2u)], 43723u))), global4[_wgslsmith_index_u32(36600u, 29u)])), _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, ~vec2<u32>(global2[_wgslsmith_index_u32(9639u, 2u)], 127232u)), 29u)], global4[_wgslsmith_index_u32(~(1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] % 32u)), 29u)])), any(!select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, true, true), arg_0)))));
    global0 = 655f;
    let var_1 = _wgslsmith_mod_i32(9957i, select(~1i, arg_1, false));
    global1 = array<f32, 4>();
    return ~(~_wgslsmith_dot_vec2_u32(select(firstTrailingBit(vec2<u32>(24274u, 4294967295u)), ~vec2<u32>(14599u, 4294967295u), !vec2<bool>(true, arg_0)), countOneBits(max(u_input.a.yx, vec2<u32>(23052u, u_input.a.x)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a.a.x, 4u)]);
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(~1u), 4u)];
    global4 = array<Struct_2, 29>();
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 4u)];
    return Struct_2(Struct_1(vec4<u32>(1u, ~func_2(false, u_input.d.x), 1u, ~max(u_input.a.x, 48806u))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = ~(~(global2[_wgslsmith_index_u32(~u_input.a.x, 2u)] ^ _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.b, 2u)], 51880u))) >> (u_input.c.x % 32u);
    let var_1 = Struct_3(func_1(global4[_wgslsmith_index_u32(~1u, 29u)]).a, vec4<f32>(global1[_wgslsmith_index_u32(countOneBits(~48338u), 4u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1074f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_3.a.a.x, 4u)], 635f) + global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(max(arg_3.a.a.x, 82606u & arg_3.a.a.x), 4u)])), -782f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2177f, global1[_wgslsmith_index_u32(1u >> (arg_3.a.a.x % 32u), 4u)], true)))), 4294967295u, abs(vec2<u32>(min(~arg_3.a.a.x, 0u), 7057u)));
    let var_2 = Struct_3(func_1(func_1(Struct_2(func_1(Struct_2(var_1.a)).a))).a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 4u)] - -971f), _wgslsmith_f_op_f32(abs(var_1.b.x))))), -1323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_2.a.a)), arg_2)) * -176f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 4u)]) + _wgslsmith_f_op_f32(step(var_1.b.x, 482f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(730f - 830f) + -953f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.a.a.x, 2u)], 2u)], 4u)], var_1.b.x, arg_1)))))), 4294967295u, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, global2[_wgslsmith_index_u32(0u, 2u)]), firstTrailingBit(arg_3.a.a.xy))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_2.b.yy);
    return vec4<u32>(~_wgslsmith_dot_vec3_u32(var_2.a.a.wxx, max(arg_3.a.a.zyy, vec3<u32>(var_2.a.a.x, arg_2.a.a.x, global2[_wgslsmith_index_u32(4294967295u, 2u)])) ^ ~var_1.a.a.wzy), 79675u, 91322u, ~var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4450i;
    let var_1 = global1[_wgslsmith_index_u32(abs(47564u), 4u)];
    global1 = array<f32, 4>();
    global2 = array<u32, 2>();
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(min(global3[_wgslsmith_index_u32(6206u, 5u)] << (min(u_input.a, vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u)), func_4(~(-7475i), true, Struct_2(Struct_1(global3[_wgslsmith_index_u32(5289u, 5u)])), func_1(global4[_wgslsmith_index_u32(u_input.a.x, 29u)]))), global3[_wgslsmith_index_u32(4294967295u, 5u)]));
    global1 = array<f32, 4>();
    let var_3 = global4[_wgslsmith_index_u32(abs(~(55499u << (1u % 32u))), 29u)];
    global4 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(var_2.a.yy, vec2<u32>(var_3.a.a.x, var_2.a.x) << (~select(vec2<u32>(0u, var_2.a.x), var_2.a.xx, true) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.a.a.yw, vec2<u32>(0u, 81u)), u_input.c.yx | var_3.a.a.yz), func_1(func_1(global4[_wgslsmith_index_u32(1u, 29u)])).a.a.wx)), 4294967295u);
}

