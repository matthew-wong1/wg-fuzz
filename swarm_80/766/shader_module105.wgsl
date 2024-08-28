struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9>;

var<private> global1: array<bool, 2>;

var<private> global2: Struct_4 = Struct_4(Struct_1(78673u, 2147483647i, vec2<u32>(13689u, 4294967295u), vec4<i32>(-31433i, 47025i, 0i, -1804i)), vec4<i32>(7534i, -15359i, -67074i, 0i));

var<private> global3: array<f32, 9> = array<f32, 9>(773f, -1695f, 1685f, -852f, -341f, 915f, 1014f, -401f, -1630f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.c.x, u_input.a, 1u), vec3<u32>(33599u, 116842u, 5967u)) ^ u_input.a));
    var var_1 = any(!select(vec4<bool>(false, true, arg_1.x & false, true != global1[_wgslsmith_index_u32(global2.a.a, 2u)]), select(!vec4<bool>(true, false, arg_1.x, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], true, true, true), vec4<bool>(true, true, arg_1.x, global1[_wgslsmith_index_u32(u_input.a, 2u)])), select(!vec4<bool>(true, true, true, arg_1.x), !vec4<bool>(global1[_wgslsmith_index_u32(global2.a.a, 2u)], global1[_wgslsmith_index_u32(global2.a.c.x, 2u)], true, arg_1.x), !vec4<bool>(arg_1.x, false, arg_1.x, global1[_wgslsmith_index_u32(57147u, 2u)]))));
    global0 = array<vec2<bool>, 9>();
    global3 = array<f32, 9>();
    global3 = array<f32, 9>();
    return Struct_4(Struct_1(global2.a.a, -5476i, ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(56527u, 69645u), global2.a.c), vec2<u32>(62894u, 4294967295u) | global2.a.c), u_input.d | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 81303i, -5330i, global2.b.x), ~vec4<i32>(-1i, global2.a.d.x, 34041i, arg_0.x), vec4<i32>(37746i, 2147483647i, 14560i, arg_0.x) ^ global2.b)), -vec4<i32>(global2.b.x, _wgslsmith_dot_vec2_i32(-arg_0.xz, arg_0.yy | arg_0.yy), _wgslsmith_dot_vec4_i32(-vec4<i32>(56069i, arg_0.x, 2147483647i, u_input.b), -global2.a.d), arg_0.x));
}

fn func_2() -> vec3<u32> {
    global0 = array<vec2<bool>, 9>();
    global0 = array<vec2<bool>, 9>();
    global0 = array<vec2<bool>, 9>();
    global2 = Struct_4(func_1(u_input.d, vec2<bool>(false, any(select(vec4<bool>(global1[_wgslsmith_index_u32(55845u, 2u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(68250u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(29561u, 2u)], global1[_wgslsmith_index_u32(17852u, 2u)])))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 151f))))).a, global2.b);
    global0 = array<vec2<bool>, 9>();
    return vec3<u32>(u_input.a, global2.a.a, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(max(firstTrailingBit(vec3<u32>(68511u, u_input.a, u_input.a)), vec3<u32>(1u, 1u, 1u)))), max(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 1u), global2.a.a), 0u, 1u), ~vec3<u32>(~global2.a.a, 31112u, 12114u)));
    let var_1 = Struct_4(Struct_1(9220u, countOneBits(global2.a.b), _wgslsmith_mod_vec2_u32(global2.a.c, ~(vec2<u32>(34237u, global2.a.a) & vec2<u32>(53245u, 47771u))), vec4<i32>(u_input.b, global2.b.x, global2.b.x >> ((4294967295u >> (u_input.a % 32u)) % 32u), 1i)), vec4<i32>(min(global2.a.b, -5498i), -22911i, select(abs(_wgslsmith_div_i32(u_input.b, 1i)), global2.b.x, global1[_wgslsmith_index_u32(reverseBits(0u), 2u)]), ~global2.a.b & firstLeadingBit(abs(u_input.b))));
    var var_2 = !(~(~_wgslsmith_clamp_u32(var_1.a.c.x, 1u, u_input.a)) != u_input.a);
    var var_3 = 4294967295u;
    global2 = func_1(vec4<i32>(var_1.b.x, firstLeadingBit(-1i), 1i, _wgslsmith_add_i32(i32(-1i) * -global2.a.d.x, u_input.d.x)), select(!global0[_wgslsmith_index_u32(u_input.a, 9u)], vec2<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(109229u, 2u)], true, false, false)), true), vec2<bool>(true, all(vec3<bool>(global1[_wgslsmith_index_u32(40542u, 2u)], false, global1[_wgslsmith_index_u32(1u, 2u)])) & global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.c.x, var_1.a.c.x, 85156u), vec3<u32>(u_input.a, global2.a.c.x, 0u)), 2u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-395f, 266f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3340f, global3[_wgslsmith_index_u32(global2.a.c.x, 9u)])), _wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 529f), vec2<f32>(-1000f, -1193f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, global3[_wgslsmith_index_u32(var_1.a.c.x, 9u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1792f, -359f))))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_1.a.c.x, 9u)], -453f)) - _wgslsmith_f_op_f32(ceil(163f))), global3[_wgslsmith_index_u32(u_input.a, 9u)], _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, var_1.a.c.x), 9u)])), global3[_wgslsmith_index_u32(82366u, 9u)])), var_1.a, var_1.a, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(func_2(), ~firstTrailingBit(vec3<u32>(global2.a.a, global2.a.a, var_1.a.a))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.c.x, u_input.a), global2.a.c), 31360u, ~var_1.a.a) & vec3<u32>(global2.a.a, 20022u, global2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.a.c.x), 761f, _wgslsmith_sub_vec4_i32(~vec4<i32>(var_4.b.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2.b.x, 9111i, 0i), var_4.c.d), -37305i, -1i), -var_1.a.d), global2.a.c);
}

