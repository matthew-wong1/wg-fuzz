struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<bool> {
    global0 = array<u32, 5>();
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(471f)), _wgslsmith_f_op_f32(sign(-504f))) * vec2<f32>(-973f, _wgslsmith_f_op_f32(min(-250f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-151f, 604f), vec2<f32>(-369f, 1494f), false)) + _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -787f), vec2<f32>(487f, 253f))))));
    global0 = array<u32, 5>();
    var var_1 = 0i | (_wgslsmith_clamp_i32(-24756i, ~_wgslsmith_mod_i32(-36605i, 2394i), _wgslsmith_add_i32(1i, min(-31862i, 10245i))) << (1u % 32u));
    var var_2 = _wgslsmith_div_vec4_u32(max(reverseBits(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(2631u, 5u)], 42957u, 36739u)), vec4<u32>(1u, 19972u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 30904u) | vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u))), vec4<u32>(_wgslsmith_add_u32(max(u_input.a.x, global0[_wgslsmith_index_u32(90185u, 5u)]), ~24186u), abs(global0[_wgslsmith_index_u32(~0u, 5u)]), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66192u, 5u)], 5u)], 5u)], 5u)], u_input.a.x, u_input.a.x), ~vec3<u32>(7138u, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), u_input.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(1u, 4294967295u, 23689u)), select(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x, 0u) >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(75635u, 5u)], u_input.a.x) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x, 1u), true)), global0[_wgslsmith_index_u32(~2145u, 5u)] & max(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 5u)], 0u), u_input.a.x), min(~1u, _wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4269u, u_input.a.x) << (u_input.a % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(99514u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    return !select(vec3<bool>(true, false, true), vec3<bool>(55623u <= global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(1u, 5u)]), 5u)], all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false)), !select(false, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), true), any(vec3<bool>(false, false, false))));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = abs(~vec3<u32>(u_input.a.x, ~1656u, ~(~u_input.a.x)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) + _wgslsmith_f_op_f32(898f + -1090f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -960f))))), !select(vec3<bool>(true, true, true), func_3(), all(!vec3<bool>(false, arg_0, true))), Struct_1(any(vec4<bool>(true, false, true, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1334f, -1454f) * -1548f)), u_input.a.x >> (~abs(0u) % 32u), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = Struct_1(all(var_1.b), _wgslsmith_f_op_f32(trunc(1f)), 1u, var_1.c.d);
    let var_3 = var_2;
    global0 = array<u32, 5>();
    return select(select(!select(select(vec4<bool>(var_1.b.x, arg_0, false, var_3.a), vec4<bool>(var_1.b.x, var_3.a, true, arg_0), vec4<bool>(var_1.b.x, true, true, false)), vec4<bool>(true, var_2.a, false, false), select(var_3.a, arg_0, true)), vec4<bool>(any(vec3<bool>(true, true, var_1.c.a)), var_1.c.a, !var_2.a || !arg_0, false), true), select(!select(vec4<bool>(var_3.a, var_1.c.a, arg_0, true), vec4<bool>(false, var_2.a, var_1.c.a, true), vec4<bool>(false, true, var_1.c.a, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)] > 1u, true, func_3().x, true), select(select(vec4<bool>(var_1.c.a, true, true, arg_0), vec4<bool>(var_2.a, var_3.a, true, true), arg_0), !vec4<bool>(var_2.a, var_1.b.x, false, false), !vec4<bool>(var_1.b.x, false, var_3.a, var_3.a)), vec4<bool>(arg_0, true, true, true)), select(vec4<bool>(var_1.b.x, true, var_2.d.x < var_3.d.x, false), select(select(vec4<bool>(var_3.a, var_2.a, arg_0, var_2.a), vec4<bool>(false, var_1.b.x, arg_0, false), var_1.c.a), select(vec4<bool>(var_1.c.a, var_2.a, arg_0, false), vec4<bool>(true, false, var_3.a, var_3.a), false), select(vec4<bool>(arg_0, true, true, true), vec4<bool>(var_1.c.a, true, false, var_2.a), vec4<bool>(true, false, arg_0, var_1.b.x))), vec4<bool>(all(vec4<bool>(false, var_2.a, true, arg_0)), false, any(vec3<bool>(var_1.b.x, var_1.c.a, var_2.a)), false))), vec4<bool>(any(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, var_3.a, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, var_3.a, true), vec4<bool>(var_2.a, false, var_3.a, true), var_3.a))), any(func_3()), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1525f * var_3.b), 1140f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-753f)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = !select(func_2(true), func_2(all(vec4<bool>(false, false, false, true))), ~min(arg_3.d.x, arg_2.x) > select(-1i, arg_3.d.x, !arg_3.a));
    var var_1 = vec2<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_3.c, arg_3.c, 4294967295u, global0[_wgslsmith_index_u32(68010u, 5u)])), vec4<u32>(0u, arg_3.c, 27705u, u_input.a.x) << (vec4<u32>(21103u, 22378u, 0u, global0[_wgslsmith_index_u32(23711u, 5u)]) % vec4<u32>(32u))), 5u)], ~(~_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(39604u, 5u)]))) << (vec2<u32>(u_input.a.x, _wgslsmith_div_u32(4294967295u, arg_3.c)) % vec2<u32>(32u));
    var_1 = u_input.a;
    let var_2 = _wgslsmith_clamp_vec4_u32(~(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.c, 4294967295u, var_1.x, arg_3.c), vec4<u32>(16762u, 1u, 54376u, 1u)), ~vec4<u32>(u_input.a.x, arg_3.c, 33941u, global0[_wgslsmith_index_u32(0u, 5u)]))), vec4<u32>(global0[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(197u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), u_input.a), 5u)], firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)] | countOneBits(u_input.a.x), 5u)]), 0u, arg_3.c), vec4<u32>(~23399u, 41246u, arg_3.c, global0[_wgslsmith_index_u32(~52631u, 5u)]));
    var_0 = !select(vec4<bool>(any(vec4<bool>(arg_3.a, arg_3.a, var_0.x, arg_3.a)), true, !(!arg_3.a), func_2(arg_3.a).x || (false | arg_3.a)), select(select(select(vec4<bool>(arg_3.a, var_0.x, var_0.x, false), vec4<bool>(false, false, false, var_0.x), vec4<bool>(false, var_0.x, true, false)), !vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_3.a), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(arg_3.a, true, arg_3.a, false), vec4<bool>(false, var_0.x, true, var_0.x))), !vec4<bool>(var_0.x, var_0.x, false, arg_3.a), !any(vec4<bool>(true, true, true, var_0.x))), !func_2(arg_3.a));
    return 1413f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = -arg_1.c.d.x <= 2836i;
    global0 = array<u32, 5>();
    let var_1 = vec2<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.c.c, 5u)], 5u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51350u, 5u)], 5u)]) ^ vec3<u32>(arg_1.c.c, global0[_wgslsmith_index_u32(20088u, 5u)], u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 10612u, 7103u) << (vec3<u32>(4294967295u, 72675u, 6913u) % vec3<u32>(32u))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.c, u_input.a.x, arg_1.c.c), min(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(arg_1.c.c, 0u, 45871u))) % 32u)), 8314u);
    var var_2 = 73811u;
    var var_3 = ~28138u;
    return Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-918f, -771f, arg_1.c.a)) - arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) - arg_1.a), func_2(true).x)), arg_1.b, arg_1.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~0u, 5u)], global0[_wgslsmith_index_u32(select(arg_0.c.c, _wgslsmith_add_u32(~4294967295u, 16001u) ^ global0[_wgslsmith_index_u32(max(62634u, arg_1.c.c), 5u)], arg_1.c.a), 5u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -177f);
    var var_2 = select(arg_0.b.yy, vec2<bool>(false, arg_1.b.x), vec2<bool>(false, (countOneBits(0u) & (u_input.a.x ^ arg_1.c.c)) == arg_0.c.c));
    var var_3 = Struct_2(arg_0.c.b, !vec3<bool>(arg_0.b.x, false, true), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2303f, arg_2.x, arg_1.c.b), vec3<f32>(arg_1.c.b, arg_2.x, arg_0.c.b), true)) - arg_2) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a, -959f, 380f))), _wgslsmith_f_op_vec3_f32(arg_2 - arg_2), vec3<bool>(var_2.x, false, arg_0.b.x)))), Struct_2(921f, select(arg_1.b, vec3<bool>(var_2.x, true, true), arg_1.b), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -1664f), _wgslsmith_div_u32(arg_0.c.c, 4294967295u), ~arg_0.c.d)), -vec3<i32>(arg_0.c.d.x, arg_0.c.d.x, arg_0.c.d.x) | arg_1.c.d.yxw).c);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(982f, arg_1.a) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-123f, 930f) - vec2<f32>(-219f, -397f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_2.xy)), _wgslsmith_div_vec2_f32(arg_2.xz, arg_2.yy), vec2<bool>(arg_1.c.d.x >= 0i, var_2.x))), var_3.b.x))));
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -158f), func_3(), func_4(arg_2, func_4(vec3<f32>(arg_0.c.b, _wgslsmith_f_op_f32(func_1(-1349f, var_3.c.d.x, var_3.c.d.xxz, Struct_1(arg_0.b.x, -1000f, u_input.a.x, arg_0.c.d))), _wgslsmith_f_op_f32(var_3.c.b - var_3.a)), func_4(arg_2, arg_0, firstLeadingBit(vec3<i32>(1i, arg_0.c.d.x, -1i))), _wgslsmith_mult_vec3_i32(arg_1.c.d.zxw, _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.c.d.x, arg_0.c.d.x, arg_1.c.d.x), arg_1.c.d.zyy))), var_3.c.d.yyw).c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(112f, 3205f, 1000f), vec3<f32>(104f, 166f, 1000f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true))))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(-710f, -1i, vec3<i32>(-32872i, 0i, 30092i), Struct_1(false, -1565f, 0u, vec4<i32>(20330i, -2147483647i, -65581i, 4292i)))))), vec3<bool>(true, true, true), Struct_1(true, 1000f, min(32982u, 71159u), _wgslsmith_clamp_vec4_i32(vec4<i32>(-30167i, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, 1i, -2147483647i, 2147483647i), vec4<i32>(-6294i, 8452i, -9652i, 28154i)))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(4224i, 2147483647i), firstLeadingBit(1i)), _wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, -55534i, -8290i), vec3<i32>(1i, 1i, 1i)))), func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, 642f, -1499f) - vec3<f32>(-942f, -1592f, -1284f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-375f, 304f, 1000f))))))), func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, 1000f, 361f)))), Struct_2(_wgslsmith_f_op_f32(1210f + 1720f), func_2(false).xxx, Struct_1(false, 127f, 18964u, vec4<i32>(27926i, -1i, 14040i, 41145i))), min(~vec3<i32>(27788i, 60765i, -2147483647i), ~vec3<i32>(-1i, 0i, -2147483647i))), vec3<i32>(_wgslsmith_div_i32(1i, 1i), ~(-330i), i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1288f, 1000f, -619f), vec3<f32>(1395f, -171f, -1159f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, 1430f, -405f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, -1631f, -708f) * vec3<f32>(1000f, 530f, -534f)))));
    let var_1 = _wgslsmith_f_op_f32(1426f + -1000f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) - -283f) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1800f, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1))))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-444f, -1000f)), -1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), ~(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.d.x, var_0.c.d.x), ~var_0.c.d.wy) << (vec2<u32>(~global0[_wgslsmith_index_u32(4294967295u, 5u)], ~global0[_wgslsmith_index_u32(var_0.c.c, 5u)]) % vec2<u32>(32u))));
}

