struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4>;

var<private> global1: array<f32, 6> = array<f32, 6>(490f, 955f, -314f, 684f, -856f, -1000f);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(815f));

var<private> global3: array<Struct_1, 18>;

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(-158f), Struct_1(933f), Struct_1(-497f), Struct_1(512f), Struct_1(204f), Struct_1(-182f), Struct_1(304f), Struct_1(1330f), Struct_1(-1260f), Struct_1(-1622f), Struct_1(-859f), Struct_1(1000f), Struct_1(2275f), Struct_1(990f), Struct_1(242f), Struct_1(-263f), Struct_1(1089f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(65842u, ~_wgslsmith_dot_vec4_u32(arg_0 & arg_0, vec4<u32>(3960u, 9529u, 43146u, 14701u))), 6u)]);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(68174u, 6u)] + -363f), arg_3.a))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)])));
    let var_2 = select(vec4<bool>(!all(vec2<bool>(true, true)), false, false, select(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 6u)] < -129f, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), !any(vec4<bool>(false, false, false, false))), vec4<bool>(!all(vec4<bool>(false, true, false, true)), true, true, true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))))), true);
    global2 = array<Struct_1, 1>();
    var var_3 = global3[_wgslsmith_index_u32(0u, 18u)];
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-208f)))));
    global3 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(-784f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(598f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(710f)))))));
    var var_3 = abs(vec2<i32>(~(i32(-1i) * -1i), u_input.b));
    return vec2<bool>(!any(arg_0.xyw), 660f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))));
}

fn func_2() -> vec3<bool> {
    global4 = array<Struct_1, 17>();
    var var_0 = func_4(vec4<bool>(func_3(~vec4<u32>(66180u, u_input.c, u_input.d.x, 14596u) >> ((vec4<u32>(u_input.c, 875u, 58268u, u_input.c) | vec4<u32>(u_input.d.x, 62722u, u_input.d.x, u_input.c)) % vec4<u32>(32u)), ~_wgslsmith_sub_i32(u_input.b, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 6u)] - global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), -456f, 1000f, _wgslsmith_f_op_f32(step(462f, -2348f))), Struct_1(262f)), false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 16385u) | ~u_input.c, 6u)])));
    var var_1 = min((countOneBits(u_input.d) & ~vec2<u32>(58457u, 103244u)) >> (_wgslsmith_clamp_vec2_u32(~(vec2<u32>(4294967295u, 87365u) | vec2<u32>(u_input.d.x, u_input.c)), _wgslsmith_mult_vec2_u32(select(u_input.d, u_input.d, var_0.x), vec2<u32>(u_input.d.x, u_input.d.x)), reverseBits(~u_input.d)) % vec2<u32>(32u)), u_input.d);
    let var_2 = -29963i;
    let var_3 = global3[_wgslsmith_index_u32(~select(u_input.c, 0u, var_0.x & var_0.x), 18u)];
    return vec3<bool>(true, !(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1025f - -1069f), -929f)) >= 1176f), 25274u <= abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(7550u, var_1.x, var_1.x), vec3<u32>(var_1.x, 4294967295u, 39544u), vec3<bool>(false, true, true)), vec3<u32>(u_input.c, 52069u, 23453u))));
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.c | u_input.c, 6u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 6u)]))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26459u, 6u)]))))));
    var var_1 = global2[_wgslsmith_index_u32(13909u, 1u)];
    global1 = array<f32, 6>();
    global3 = array<Struct_1, 18>();
    var var_2 = !select(!func_2(), vec3<bool>(true, true, _wgslsmith_f_op_f32(-var_1.a) <= var_1.a), true);
    return reverseBits(vec3<i32>(firstLeadingBit(~(2147483647i >> (u_input.d.x % 32u))), countOneBits(~u_input.a), -(~(i32(-1i) * -39770i))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 17>();
    global0 = array<vec4<i32>, 4>();
    var var_0 = abs(reverseBits((vec3<i32>(u_input.a, -40305i, u_input.a) | vec3<i32>(u_input.b, u_input.a, u_input.a)) >> (~vec3<u32>(u_input.d.x, u_input.c, u_input.c) % vec3<u32>(32u)))) >> (min(select(~vec3<u32>(0u, u_input.c, 1u) ^ ~vec3<u32>(23898u, u_input.d.x, u_input.d.x), ~vec3<u32>(4294967295u, 0u, u_input.d.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, false)))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.c, 4294967295u), vec3<u32>(u_input.d.x, 0u, u_input.c)) & ~vec3<u32>(7087u, 1u, u_input.d.x), abs(vec3<u32>(22141u, 1u, u_input.d.x)))) % vec3<u32>(32u));
    var var_1 = Struct_1(-326f);
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(1u, max(u_input.d.x, countOneBits(4294967295u) >> (u_input.d.x % 32u))), ~u_input.c, select(~firstTrailingBit(52919u << (0u % 32u)), ~_wgslsmith_mult_u32(firstLeadingBit(120318u), firstLeadingBit(u_input.c)), !(!any(vec3<bool>(true, true, false)))));
    var_0 = func_1();
    var var_3 = global3[_wgslsmith_index_u32(~select(var_2.x, 48959u, true) ^ u_input.c, 18u)];
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.d.x, 1u, u_input.d.x)), var_2.x, firstLeadingBit(0u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, var_2.x, u_input.c) >> (vec3<u32>(var_2.x, u_input.d.x, var_2.x) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(var_2.x, 38721u, 39779u), vec3<u32>(22309u, var_2.x, u_input.d.x) >> (vec3<u32>(46621u, 4294967295u, var_2.x) % vec3<u32>(32u))), select(vec3<u32>(var_2.x, var_2.x, 0u), vec3<u32>(5866u, var_2.x, 1u), vec3<bool>(true, true, true)))), -40754i, u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(~var_2.x, var_2.x, 1u) ^ vec3<u32>(_wgslsmith_sub_u32(1u, 1u), ~90759u, var_2.x), ~(~(vec3<u32>(u_input.d.x, var_2.x, var_2.x) >> (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))))));
}

