struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(false, 1u, vec4<i32>(21160i, 1i, 2147483647i, 23363i), vec2<f32>(1110f, -929f)), Struct_1(true, 48332u, vec4<i32>(8621i, -1i, 0i, 1i), vec2<f32>(586f, 272f)), Struct_1(false, 0u, vec4<i32>(31810i, 0i, i32(-2147483648), 23548i), vec2<f32>(1873f, -111f)), Struct_1(true, 0u, vec4<i32>(1i, -29607i, 30496i, 29799i), vec2<f32>(-490f, -1089f)), Struct_1(true, 4294967295u, vec4<i32>(i32(-2147483648), -13311i, 46365i, i32(-2147483648)), vec2<f32>(1000f, 2150f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 5>();
    let var_0 = any(vec3<bool>(any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))), 0i == (countOneBits(u_input.b.x) & u_input.a.x), true));
    return 1u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = 39936i;
    var var_1 = u_input.a;
    var var_2 = -663f;
    var var_3 = global0[_wgslsmith_index_u32(~(~(~(~0u | func_3()))), 5u)];
    var var_4 = global0[_wgslsmith_index_u32(firstLeadingBit(~(~(~_wgslsmith_sub_u32(var_3.b, var_3.b)))), 5u)];
    return global0[_wgslsmith_index_u32(var_4.b, 5u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(arg_2.b, func_3()), func_3(), firstTrailingBit(abs(_wgslsmith_add_u32(arg_2.b, arg_2.b) | 28971u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-848f, _wgslsmith_f_op_f32(-arg_2.d.x))))));
    let var_2 = arg_2;
    return var_0.x;
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~reverseBits(1u), func_4(!vec2<bool>(arg_0.x, false), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-1i, 1738i, u_input.b.x)), func_2(vec3<f32>(-561f, 632f, 581f), arg_0, vec3<f32>(214f, 158f, -630f)), Struct_1(false, 4294967295u, vec4<i32>(-16570i, u_input.b.x, u_input.b.x, -21545i), vec2<f32>(1533f, -562f)))), vec2<u32>(1u, 1u)) | ~vec2<u32>(17714u, ~(~4294967295u));
    var var_1 = global0[_wgslsmith_index_u32(~7195u, 5u)];
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-557f + var_1.d.x)), 938f, _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(ceil(-1097f))), -998f) * vec4<f32>(1000f, var_1.d.x, var_1.d.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, 1323f, var_1.d.x))), !vec3<bool>(true, var_1.a, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x), vec3<f32>(2937f, var_1.d.x, var_1.d.x), arg_0.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d.x, 1623f, var_1.d.x))))).d.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    global0 = array<Struct_1, 5>();
    let var_0 = func_2(arg_0.zyw, !vec3<bool>(any(!arg_2), any(!vec4<bool>(true, arg_3.a, arg_2.x, false)), false), arg_0.xxx);
    let var_1 = Struct_1(any(arg_2), 9538u >> ((((33314u & var_0.b) >> (~1u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(52028u, arg_3.b, var_0.b, arg_1.x), vec4<u32>(0u, arg_3.b, 0u, 44359u) ^ vec4<u32>(arg_1.x, 4294967295u, arg_1.x, var_0.b)) % 32u)) % 32u), vec4<i32>(arg_3.c.x >> (arg_3.b % 32u), min(u_input.a.x, var_0.c.x), ~(-2147483647i), max(abs(var_0.c.x), 15582i) >> ((_wgslsmith_sub_u32(91631u, 1u) ^ _wgslsmith_sub_u32(arg_1.x, 0u)) % 32u)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_0.d)))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true))), _wgslsmith_div_vec2_u32(vec2<u32>(~abs(55795u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 95836u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(15740u, 1u, 24265u)))), ~(~vec2<u32>(6169u, 11504u))), select(vec2<bool>(false || all(vec3<bool>(false, true, true)), true), vec2<bool>(any(vec4<bool>(true, true, false, true)), select(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, false)), true)), vec2<bool>(func_4(vec2<bool>(false, false), u_input.a, Struct_1(true, 152u, vec4<i32>(-70823i, u_input.b.x, u_input.b.x, u_input.b.x), vec2<f32>(-1000f, -350f)), global0[_wgslsmith_index_u32(4294967295u, 5u)]) > _wgslsmith_dot_vec4_u32(vec4<u32>(9474u, 1u, 0u, 4483u), vec4<u32>(1u, 1u, 41563u, 1u)), any(vec2<bool>(true, true)))), Struct_1(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), 4294967295u, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, 0i, 0i, -2147483647i) & vec4<i32>(u_input.a.x, 4515i, u_input.b.x, u_input.a.x)), -firstTrailingBit(vec4<i32>(-1i, u_input.b.x, u_input.b.x, 2147483647i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2637f, 1134f) - vec2<f32>(-1283f, 412f))))))));
    let var_1 = Struct_1(!select(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false)), func_2(vec3<f32>(-1000f, 364f, 1045f), vec3<bool>(true, false, true), vec3<f32>(676f, -1000f, 532f)).c.x > -u_input.b.x, any(vec2<bool>(true, true)) && any(vec2<bool>(true, false))), ~67955u, vec4<i32>(39032i, 421i, -u_input.a.x, -(~u_input.a.x)), vec2<f32>(-1582f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(vec3<f32>(1418f, -640f, 376f), vec3<bool>(false, false, true), vec3<f32>(1058f, -1051f, -275f)).d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(878f, 619f)))))));
    var_0 = 1i;
    var_0 = -12116i;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-706f))), 486f, 257f, var_1.d.x) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 2321f, var_1.d.x, var_1.d.x)), vec4<f32>(var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), -2002f)), vec4<f32>(var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1647f * var_1.d.x)), -295f)));
    var var_3 = Struct_1(var_1.a, var_1.b, _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -firstLeadingBit(var_1.c), -(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, -24821i, -51797i), vec4<i32>(u_input.b.x, var_1.c.x, var_1.c.x, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 875f)));
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(var_1.d.x, var_3.d.x), 2040f, -1087f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(359f, 1000f)), var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1817f)))), select(!select(!vec3<bool>(var_3.a, true, var_3.a), select(vec3<bool>(var_1.a, false, false), vec3<bool>(true, var_3.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a)), false), vec3<bool>(!var_1.a && true, var_3.a, true), true), var_2.yyy);
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -countOneBits(u_input.a.x), reverseBits(_wgslsmith_add_i32(0i, _wgslsmith_add_i32(-30520i, var_5.c.x))), var_1.c.x, var_4.c.x), max(abs(var_1.c), reverseBits(var_4.c)));
}

