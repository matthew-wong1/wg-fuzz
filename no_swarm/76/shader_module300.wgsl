struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(0u, 51733u), vec2<u32>(1u, 79240u), vec2<u32>(0u, 1u), vec2<u32>(0u, 98096u), vec2<u32>(4294967295u, 32134u), vec2<u32>(40781u, 28054u), vec2<u32>(26437u, 1u));

var<private> global2: array<f32, 12> = array<f32, 12>(105f, 1043f, 286f, 1595f, -840f, -181f, -1442f, 468f, 225f, 339f, 532f, -1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(abs(~arg_2)), 14u)];
    var var_1 = 0i;
    var var_2 = global0[_wgslsmith_index_u32(~var_0.b, 14u)];
    var var_3 = false;
    var var_4 = Struct_1(select(!(!select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_1.x), false)), var_0.a, true), min(~var_0.b, 0u), vec3<bool>((var_2.d.x <= ~41472u) && all(!vec3<bool>(false, var_0.c.x, true)), !any(var_2.c), false), firstLeadingBit(var_2.d));
    return countOneBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x << (var_4.d.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx), -77903i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(2339i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(arg_1.x, true)), vec2<i32>(-1i, u_input.a.x))) | _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(0u, 58664u, var_0.b, var_2.d.x) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_1(vec2<bool>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, 1i)) == func_3(arg_1.c, arg_1.c, _wgslsmith_add_u32(40005u, 42961u), arg_1.a.x), u_input.a.x < 11294i), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(arg_1.b, 37293u | arg_1.b, reverseBits(arg_1.d.x)), 979u), arg_1.c, ~select(vec3<u32>(arg_1.b, ~arg_1.b, countOneBits(arg_1.b)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.d, vec3<u32>(arg_1.d.x, 4294967295u, 1u)), arg_1.d), arg_1.c.x && true));
    var var_1 = _wgslsmith_f_op_f32(min(arg_0.x, -1465f));
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(~max(~select(0u, arg_1.b, false), 1u)), 14u)];
    let var_3 = arg_1.d;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-342f, _wgslsmith_f_op_f32(1079f - -2308f), !var_0.a.x)), _wgslsmith_f_op_f32(-818f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(90656u, 12u)]))) - -715f));
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_1.b, var_3.x, 1u)), ~(~vec3<u32>(arg_1.b, 1u, 63486u))), ~var_0.d) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(arg_1.d, vec3<u32>(var_3.x, arg_1.d.x & arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(9824u, var_2.d.x, var_3.x), var_0.d))), var_0.d) % vec3<u32>(32u));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global1 = array<vec2<u32>, 7>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 8634i, u_input.a.x) >> (~func_2(vec2<f32>(global2[_wgslsmith_index_u32(21512u, 12u)], -1036f), global0[_wgslsmith_index_u32(22571u, 14u)], false) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(~(~u_input.a), abs(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, 9700i))))), ~u_input.a.x);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~12057u, 1u, 26233u), ~countOneBits(firstTrailingBit(vec3<u32>(57441u, 12378u, 1u))) | vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(43734u, 1u, 27867u), ~27307u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 9497u), vec3<u32>(1u, 1u, 1u)), 1u)), 12u)];
    global1 = array<vec2<u32>, 7>();
    let var_2 = 1u;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(_wgslsmith_mod_u32(_wgslsmith_div_u32(select(0u, 3554u, true), select(23376u, 1u, true)), _wgslsmith_dot_vec3_u32(~vec3<u32>(100940u, 52177u, 6805u), ~vec3<u32>(42239u, 6753u, 6019u))) > 1u, !(~(~u_input.a.x) >= func_1(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))) | true, !all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)));
    global2 = array<f32, 12>();
    var var_1 = Struct_1(var_0.zw, ~(~0u), !var_0.zzz, vec3<u32>(_wgslsmith_mod_u32(0u, ~7426u) << (1u % 32u), firstTrailingBit(max(72795u, 1u)), ~(~0u)));
    global0 = array<Struct_1, 14>();
    var var_2 = global0[_wgslsmith_index_u32(37239u, 14u)];
    global2 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-2813f)), ~_wgslsmith_sub_u32(0u, ~var_2.d.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(723f, -1690f, global2[_wgslsmith_index_u32(4294967295u, 12u)], 138f), vec4<f32>(606f, global2[_wgslsmith_index_u32(4294967295u, 12u)], -400f, -2355f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(var_1.b, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(var_2.b, 12u)], 414f)))))), vec4<f32>(global2[_wgslsmith_index_u32(var_1.d.x >> (~var_2.b % 32u), 12u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_2.d.x, 12u)], global2[_wgslsmith_index_u32(35179u, 12u)])) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b, 12u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1583f + -432f))), _wgslsmith_f_op_f32(min(-1358f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b, 12u)] + -603f)))))), vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.d.x, var_2.d.x, var_1.b, 0u) << (vec4<u32>(var_2.d.x, var_1.b, 37284u, 0u) % vec4<u32>(32u))), ~min(vec4<u32>(var_2.d.x, var_2.b, var_1.b, var_1.d.x), vec4<u32>(0u, var_2.b, var_2.b, 0u))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_2.d, abs(vec3<u32>(var_1.b, var_2.d.x, var_2.d.x))), countOneBits(reverseBits(vec3<u32>(89350u, var_1.b, 4294967295u))))));
}

