struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: array<f32, 26>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(0u, 45248u, 21931u, 1u), vec2<i32>(-18085i, 27122i), vec3<u32>(0u, 1u, 66758u), vec2<f32>(-1051f, 465f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    global1 = array<f32, 26>();
    let var_0 = Struct_4(select(select(vec2<bool>(true, true), select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 24u)], true), !arg_2.a, true), arg_2.a), vec2<bool>(true, true), true), !(!global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)]), countOneBits(min(vec4<u32>(firstLeadingBit(89382u), global2.a.x, _wgslsmith_mult_u32(3451u, 0u), 0u & u_input.c.x), arg_3.a)), select(_wgslsmith_sub_u32(select(global2.a.x, ~96080u, true), 3737u), ~(~(~arg_2.c.x)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, global2.b.x), 10917i) >= arg_2.e.a.b.x), Struct_2(Struct_1(vec4<u32>(7026u, arg_2.e.b, firstTrailingBit(arg_2.d), arg_2.c.x), -vec2<i32>(arg_0.x, u_input.b.x), vec3<u32>(max(u_input.c.x, 62745u), abs(45122u), abs(global2.a.x)), vec2<f32>(1f, -552f)), u_input.c.x));
    global1 = array<f32, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(73105u, 26u)], 1f, 2133f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(global2.d.x, arg_2.e.a.d.x), _wgslsmith_f_op_f32(ceil(var_0.e.a.d.x)), arg_2.e.a.d.x))), arg_3.b.x >= -(global2.b.x & 41721i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -605f, -914f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, 1023f, global1[_wgslsmith_index_u32(1u, 26u)]) * vec3<f32>(825f, global2.d.x, -507f)))))));
    var var_2 = Struct_2(var_0.e.a, ~(~(~arg_3.c.x)));
    return min(var_2.b, ~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(arg_3.c.x, arg_2.e.b, var_0.e.a.a.x), _wgslsmith_add_u32(1u, ~arg_3.a.x)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    var var_0 = vec3<i32>(-43416i, u_input.b.x, 1i);
    return Struct_2(arg_3.e.a, func_3(-(max(u_input.b, vec2<i32>(u_input.b.x, 2147483647i)) << (vec2<u32>(4294967295u, 71447u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.e.a.d), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-212f, arg_3.e.a.d.x))))), arg_3, arg_3.e.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    var var_0 = Struct_4(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(global2.c.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false)), !vec2<bool>(global0[_wgslsmith_index_u32(15150u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), any(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.b ^ global2.c.x, global2.c.x), 24u)]), any(!select(select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(8230u, 24u)], false), global0[_wgslsmith_index_u32(global2.c.x, 24u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)]), global0[_wgslsmith_index_u32(8434u, 24u)])), vec4<u32>(~global2.c.x << (77214u % 32u), reverseBits(65931u), func_3(vec2<i32>(arg_1.a.b.x, -55314i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 26u)], arg_1.a.d.x), vec2<f32>(global1[_wgslsmith_index_u32(arg_1.a.a.x, 26u)], 782f), global0[_wgslsmith_index_u32(1u, 24u)])), Struct_4(select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], true)), true, ~arg_1.a.a, func_3(u_input.b, global2.d, Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(global2.c.x, 24u)]), global0[_wgslsmith_index_u32(1u, 24u)], vec4<u32>(0u, 1u, 4294967295u, 1u), global2.a.x, arg_1), Struct_1(vec4<u32>(u_input.c.x, global2.c.x, 0u, 20109u), vec2<i32>(-2147483647i, -2147483647i), vec3<u32>(arg_1.b, 4294967295u, 1u), vec2<f32>(arg_1.a.d.x, -1418f))), Struct_2(Struct_1(global2.a, vec2<i32>(0i, -4016i), arg_1.a.a.wxz, vec2<f32>(659f, -749f)), 12092u)), Struct_1(global2.a, ~arg_1.a.b, select(vec3<u32>(u_input.c.x, arg_1.b, 0u), vec3<u32>(u_input.c.x, global2.c.x, 4294967295u), global0[_wgslsmith_index_u32(29680u, 24u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1704f, 1104f)))), ~abs(arg_1.a.c.x)), min(_wgslsmith_dot_vec4_u32(arg_1.a.a, abs(global2.a)) >> (0u % 32u), 38119u), arg_1);
    let var_1 = arg_1.a.c.x;
    var var_2 = 94590u;
    var_2 = func_2(var_0.e.a.d.x, abs(-max(max(u_input.a, u_input.a), 2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, ~(~3000u), var_1, _wgslsmith_mod_u32(abs(global2.c.x), var_1)), var_0.c), Struct_4(var_0.a, global1[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_div_u32(23866u, 4294967295u), 26u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4855u, 26u)]))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.c.x, u_input.c.x, var_0.c.x) >> (var_0.c % vec4<u32>(32u)), vec4<u32>(var_0.e.b, var_0.e.a.a.x, 34302u, var_1)), _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.a.a.x, 107385u), ~0u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.a.a, arg_1.a.a), ~var_0.c)), Struct_2(Struct_1(vec4<u32>(u_input.c.x, 0u, u_input.c.x, var_1) >> (vec4<u32>(arg_1.a.a.x, var_0.d, 0u, u_input.c.x) % vec4<u32>(32u)), max(vec2<i32>(-12803i, u_input.d), global2.b), vec3<u32>(arg_1.a.a.x, 18465u, var_1), var_0.e.a.d), arg_1.b))).a.a.x;
    let var_3 = 10090u;
    return _wgslsmith_mult_u32(global2.c.x, (func_2(_wgslsmith_f_op_f32(-var_0.e.a.d.x), -global2.b.x, ~27621u, Struct_4(vec2<bool>(false, true), false, vec4<u32>(1u, 4294967295u, 30588u, 4294967295u), 17619u, var_0.e)).a.c.x & var_1) ^ ~_wgslsmith_mod_u32(var_0.c.x, countOneBits(arg_1.b)));
}

fn func_5(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = -367f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 26u)] + 476f), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(30179u, 26u)]))))), _wgslsmith_f_op_f32(-1057f - global2.d.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(select(global2.d.x, global2.d.x, global0[_wgslsmith_index_u32(4294967295u, 24u)]))) - global2.d.x), _wgslsmith_f_op_f32(463f - _wgslsmith_f_op_f32(f32(-1f) * -891f))));
    let var_1 = 3641i;
    return Struct_3(func_2(_wgslsmith_f_op_f32(sign(-886f)), firstTrailingBit(reverseBits(_wgslsmith_sub_i32(-14483i, arg_0))), _wgslsmith_add_u32(97924u ^ _wgslsmith_sub_u32(69627u, global2.c.x), _wgslsmith_dot_vec3_u32(select(arg_1.xww, arg_1.zxy, false), arg_1.zxy)), Struct_4(vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.x, 1u), 24u)], ~vec4<u32>(54572u, arg_1.x, u_input.c.x, arg_1.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 63417u), vec3<u32>(58818u, 12908u, 4294967295u)), Struct_2(func_2(global1[_wgslsmith_index_u32(29479u, 26u)], -55121i, 35712u, Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 24u)], true), global0[_wgslsmith_index_u32(global2.a.x, 24u)], vec4<u32>(global2.a.x, u_input.c.x, 15765u, 114998u), 46485u, Struct_2(Struct_1(vec4<u32>(1u, arg_1.x, u_input.c.x, u_input.c.x), vec2<i32>(var_1, 1i), global2.c, global2.d), u_input.c.x))).a, 0u))), func_2(global1[_wgslsmith_index_u32(arg_1.x, 26u)], 5206i, global2.a.x, Struct_4(vec2<bool>(true, true), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, 5571u), 24u)], abs(vec4<u32>(4294967295u, arg_1.x, 0u, 30850u)), _wgslsmith_div_u32(arg_1.x, global2.c.x), func_2(_wgslsmith_f_op_f32(-1431f - global1[_wgslsmith_index_u32(arg_1.x, 26u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_1, 8457i), vec4<i32>(23677i, 43483i, arg_0, global2.b.x)), _wgslsmith_sub_u32(1u, 1u), Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 24u)], global0[_wgslsmith_index_u32(global2.c.x, 24u)]), global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global2.a, 9327u, Struct_2(Struct_1(vec4<u32>(arg_1.x, 100295u, u_input.c.x, 4294967295u), global2.b, global2.c, vec2<f32>(global1[_wgslsmith_index_u32(12416u, 26u)], -659f)), u_input.c.x))))).a, select(vec4<bool>((-34199i | arg_0) != (var_1 ^ global2.b.x), true, true, all(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.c.x, 24u)], global0[_wgslsmith_index_u32(global2.a.x, 24u)], global0[_wgslsmith_index_u32(27297u, 24u)])) & (global2.d.x <= 459f)), !(!select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(38055u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global2.a.x, 24u)], true, global0[_wgslsmith_index_u32(60026u, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global2.c.x, 24u)], false, true))), true), true, Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(global2.a.zzy, ~vec3<u32>(arg_1.x, arg_1.x, 11610u)), ~global2.a.x, _wgslsmith_clamp_u32(~50117u, 4294967295u, func_3(vec2<i32>(-2147483647i, 7421i), global2.d, Struct_4(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), global0[_wgslsmith_index_u32(0u, 24u)], vec4<u32>(34031u, 48758u, 1u, u_input.c.x), u_input.c.x, Struct_2(Struct_1(arg_1, vec2<i32>(-7935i, global2.b.x), global2.c, global2.d), global2.a.x)), Struct_1(vec4<u32>(u_input.c.x, arg_1.x, u_input.c.x, 0u), vec2<i32>(-20574i, 2147483647i), vec3<u32>(49918u, global2.c.x, 32756u), global2.d))), 0u), _wgslsmith_mult_vec2_i32(firstTrailingBit(global2.b), u_input.b), ~(~arg_1.wwz ^ (vec3<u32>(arg_1.x, 1u, arg_1.x) | vec3<u32>(arg_1.x, global2.c.x, global2.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.c.x, 26u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d - global2.d)))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    global0 = array<bool, 24>();
    var var_0 = func_5(firstTrailingBit(firstTrailingBit((19586i | arg_0) << (_wgslsmith_sub_u32(global2.a.x, global2.a.x) % 32u))), countOneBits(vec4<u32>(global2.c.x, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global2.a.x, 26u)], global2.d.x, global2.d.x, 2340f)), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], -11334i, global2.c.x, Struct_4(vec2<bool>(global0[_wgslsmith_index_u32(global2.c.x, 24u)], global0[_wgslsmith_index_u32(14713u, 24u)]), global0[_wgslsmith_index_u32(global2.a.x, 24u)], global2.a, global2.a.x, Struct_2(Struct_1(vec4<u32>(0u, u_input.c.x, 1u, 65126u), vec2<i32>(u_input.a, 1i), vec3<u32>(4294967295u, 18633u, 39587u), global2.d), global2.a.x)))), ~global2.c.x, firstLeadingBit(1u))));
    global2 = Struct_1(firstLeadingBit(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_0.e.a.x, 0u, var_0.b.c.x, 0u)), global2.a)), abs(u_input.b), var_0.b.c, vec2<f32>(-725f, var_0.e.d.x));
    let var_1 = global2.c;
    return Struct_4(func_5(~var_0.a.a.b.x, func_5(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, -2147483647i, 1i), vec4<i32>(u_input.a, var_0.e.b.x, 61962i, global2.b.x))), ~select(var_0.e.a, global2.a, false)).b.a).c.zy, func_5(arg_0, vec4<u32>(0u, var_1.x, min(_wgslsmith_div_u32(global2.c.x, 0u), ~u_input.c.x), ~2808u & global2.a.x)).d, reverseBits(countOneBits(_wgslsmith_add_vec4_u32(~global2.a, var_0.e.a))), reverseBits(8258u), var_0.a);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_div_f32(176f, 1094f);
    var var_1 = arg_1;
    var var_2 = vec4<bool>(false, !select(any(!vec3<bool>(arg_0.b, true, false)), arg_0.a.x, (arg_0.e.a.b.x <= 1053i) & (0i > arg_0.e.a.b.x)), any(func_1(global2.b.x).a), any(vec4<bool>((arg_0.e.a.b.x << (4294967295u % 32u)) > -13272i, any(vec2<bool>(true, true)) & true, true, min(0u, arg_0.c.x) >= abs(1u))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1422f, 1019f, true))), -854f, -276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * 1485f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(var_0, global2.d.x, arg_1.x, -436f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1, vec4<f32>(global2.d.x, 2079f, var_0, global1[_wgslsmith_index_u32(global2.c.x, 26u)])))))));
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-arg_0.e.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_6(func_1(_wgslsmith_mod_i32(global2.b.x, ~global2.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global2.d.x, global2.d.x, global1[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(874f, global2.d.x, 1000f, global1[_wgslsmith_index_u32(1u, 26u)])))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(abs(global2.c.x), ~4294967295u)), i32(-1i) * -1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, -728f)) - global2.d.x))), reverseBits(global2.b.x), ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global2.c.x, u_input.c.x, u_input.c.x), global2.a.zyz), vec3<u32>(4294967295u, u_input.c.x, 0u) | vec3<u32>(4294967295u, u_input.c.x, 73649u))));
}

