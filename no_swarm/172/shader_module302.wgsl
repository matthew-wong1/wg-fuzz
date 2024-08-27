struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(44784u, 1u, 0u, 4294967295u, 15787u, 0u, 4294967295u, 0u, 58630u, 122605u, 4294967295u, 3123u, 22997u, 95791u, 0u, 0u, 4294967295u, 25637u, 1u, 10368u);

var<private> global1: vec3<f32>;

var<private> global2: i32;

var<private> global3: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(95407u, 0u, 11087u, 27406u), vec4<u32>(4294967295u, 4294967295u, 84940u, 6690u), vec4<u32>(112217u, 72674u, 0u, 1u), vec4<u32>(0u, 22067u, 8933u, 4294967295u), vec4<u32>(1u, 38649u, 81620u, 0u), vec4<u32>(62755u, 7507u, 6600u, 22281u), vec4<u32>(74802u, 46200u, 1u, 14278u), vec4<u32>(25415u, 4294967295u, 0u, 20650u), vec4<u32>(4294967295u, 33607u, 71450u, 59144u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 98064u, 1u), vec4<u32>(0u, 71360u, 33565u, 26528u), vec4<u32>(111450u, 61023u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 32037u, 4294967295u), vec4<u32>(34064u, 4294967295u, 50030u, 24049u), vec4<u32>(1u, 25977u, 0u, 0u), vec4<u32>(69363u, 1u, 1u, 57450u), vec4<u32>(48059u, 33642u, 4294967295u, 38024u), vec4<u32>(68776u, 1u, 26023u, 4294967295u), vec4<u32>(0u, 0u, 14732u, 35205u), vec4<u32>(4294967295u, 4294967295u, 52140u, 1u), vec4<u32>(4294967295u, 19374u, 4294967295u, 0u), vec4<u32>(14202u, 0u, 37037u, 4294967295u), vec4<u32>(4294967295u, 20615u, 24511u, 16542u), vec4<u32>(12850u, 1u, 4294967295u, 0u), vec4<u32>(55483u, 45722u, 20158u, 78011u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(50735u, 58560u, 259u, 0u), vec4<u32>(26565u, 123005u, 4294967295u, 20550u), vec4<u32>(25639u, 15093u, 17963u, 4294967295u));

var<private> global4: Struct_5;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> i32 {
    global4 = Struct_5(global4.a, -498f, Struct_2(min(min(_wgslsmith_sub_u32(4294967295u, 1u), ~arg_0.a.c.b.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global4.e.x, 30419u), min(u_input.b, arg_1))), arg_0.a.c), _wgslsmith_mod_vec2_u32(firstLeadingBit(select(abs(vec2<u32>(25257u, 1u)), vec2<u32>(49750u, 20255u), select(arg_0.d, vec2<bool>(arg_0.d.x, false), false))), vec2<u32>(139213u, 1u)), ~global4.e);
    var var_0 = !arg_0.d;
    var var_1 = -27615i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-366f, arg_0.a.c.d, arg_0.c)))) + arg_0.b));
    var var_3 = Struct_3(select(vec2<bool>(!(arg_0.d.x || arg_0.a.a.x), all(select(vec3<bool>(false, true, arg_0.d.x), vec3<bool>(true, arg_0.d.x, arg_0.d.x), vec3<bool>(true, true, var_0.x)))), vec2<bool>(true, arg_0.a.a.x & true), !var_0.x), vec4<u32>(0u, 33736u, 21287u, arg_0.a.b.x) >> (min(global3[_wgslsmith_index_u32(4294967295u, 30u)], vec4<u32>(~arg_0.a.b.x, min(0u, u_input.b), ~arg_0.a.b.x, arg_2)) % vec4<u32>(32u)), global4.c.b, global4.a.zw);
    return 32984i;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = max(u_input.b, ~(~(u_input.b << (global4.e.x % 32u)) ^ u_input.b));
    global3 = array<vec4<u32>, 30>();
    var var_1 = abs(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(global4.d.x), _wgslsmith_div_u32(global4.e.x, 4294967295u), 55780u, global4.c.a), ~global3[_wgslsmith_index_u32(~4294967295u, 30u)]), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], 20u)], 1927u, global0[_wgslsmith_index_u32(57980u, 20u)])), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~1u, 20u)], ~u_input.b), 30u)])));
    global2 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(global4.a.x, ~func_3(Struct_4(Struct_3(vec2<bool>(arg_0, arg_0), global3[_wgslsmith_index_u32(1u, 30u)], Struct_1(vec2<u32>(0u, global4.c.a), vec2<u32>(global4.c.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.c.b.a.x, 20u)], 20u)]), 26802u, 346f), vec2<i32>(u_input.a, global4.a.x)), vec3<f32>(-1363f, -4450f, 901f), 1000f, vec2<bool>(false, arg_0)), var_1.x, var_1.x)), firstTrailingBit(-(vec2<i32>(2147483647i, 28366i) ^ global4.a.wy))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-818f, global4.b, _wgslsmith_f_op_f32(max(203f, global1.x)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-786f, global1.x, 996f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b, global4.c.b.d, -291f) - vec3<f32>(global1.x, global1.x, global4.b)))))));
    return global4.c.a;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(Struct_3(vec2<bool>(true, true), vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(30808u, u_input.b, global0[_wgslsmith_index_u32(global4.c.b.c, 20u)]), 20u)], func_2(true), 0u) << ((min(vec4<u32>(55434u, 1u, u_input.b, global0[_wgslsmith_index_u32(global4.c.a, 20u)]), global3[_wgslsmith_index_u32(global4.e.x, 30u)]) | max(global3[_wgslsmith_index_u32(global4.c.b.b.x, 30u)], global3[_wgslsmith_index_u32(41263u, 30u)])) % vec4<u32>(32u)), global4.c.b, global4.a.yw), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -570f, global1.x), vec3<f32>(global4.b, global4.b, global1.x)))) - vec3<f32>(_wgslsmith_f_op_f32(583f * global4.b), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -702f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b, 199f, -697f))))), -2040f, vec2<bool>(false, !(true == all(vec2<bool>(true, false)))));
    global0 = array<u32, 20>();
    let var_1 = -751f;
    global4 = Struct_5(global4.a, var_0.a.c.d, Struct_2(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global4.c.a, u_input.b), vec3<u32>(global4.e.x, 4294967295u, 0u))), Struct_1(~abs(vec2<u32>(24668u, var_0.a.b.x)), vec2<u32>(global4.c.a, var_0.a.c.a.x), ~countOneBits(42783u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.c.d))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)] & global0[_wgslsmith_index_u32(var_0.a.c.b.x, 20u)], 0u) | ~(vec2<u32>(0u, var_0.a.c.c) ^ vec2<u32>(4294967295u, 4705u)), select(global4.c.b.a | (vec2<u32>(4294967295u, 35205u) ^ var_0.a.b.wx), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(41429u, u_input.b)), global4.d, var_0.a.c.b), !vec2<bool>(false, var_0.a.a.x)), reverseBits(vec2<u32>(1u, 1u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 87917u), global4.d) % vec2<u32>(32u))), abs(var_0.a.b.yyx));
    return Struct_5(_wgslsmith_add_vec4_i32(global4.a, global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1210f) + 1f), global4.c, vec2<u32>(4294967295u << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(40922u, u_input.b, 24279u), var_0.a.b.ywy), vec3<u32>(24172u, 4294967295u, global0[_wgslsmith_index_u32(23337u, 20u)])) % 32u), 1u), reverseBits(~(~vec3<u32>(var_0.a.b.x, global4.d.x, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !(!(!vec2<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, false)))));
    global3 = array<vec4<u32>, 30>();
    let var_2 = Struct_4(Struct_3(var_1, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)]), firstTrailingBit(var_0.d.x)), 30u)], global4.c.b, -vec2<i32>(37936i, -38579i) >> (vec2<u32>(global4.e.x, _wgslsmith_add_u32(0u, global4.e.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(544f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b * -414f), _wgslsmith_f_op_f32(f32(-1f) * -1721f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f + -201f))) + vec3<f32>(_wgslsmith_f_op_f32(step(-559f, _wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f - -1000f)), _wgslsmith_f_op_f32(440f + -773f))), 952f, vec2<bool>(any(!select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true))), var_0.d.x > var_0.c.a));
    let var_3 = func_1().c;
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_0.a, global4.a, vec4<bool>(false, true, select(var_2.a.a.x, true, true), var_2.d.x & true)));
}

