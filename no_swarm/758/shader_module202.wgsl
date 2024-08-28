struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: f32 = 2234f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: u32) -> vec2<bool> {
    let var_0 = ~50523u;
    let var_1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_3, ~74669u & select(var_0, 0u, arg_1.x), var_0, ~(~u_input.c)), countOneBits(~vec4<u32>(4294967295u, 39962u, arg_3, u_input.c)));
    let var_2 = arg_2.x;
    global1 = _wgslsmith_div_f32(-157f, -354f);
    global0 = array<bool, 6>();
    return arg_1;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-853f, _wgslsmith_f_op_f32(round(532f)), any(vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 6u)], arg_0.x, false, arg_0.x)), select(false, global0[_wgslsmith_index_u32(u_input.c, 6u)], true))))));
    var var_0 = all(vec4<bool>(arg_0.x, false & (arg_0.x || arg_0.x), false, global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 12064u, 44054u)), firstLeadingBit(vec4<u32>(0u, 1u, u_input.c, u_input.c)))), 6u)]));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + 1009f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -436f)) - _wgslsmith_f_op_f32(sign(321f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1758f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f) * _wgslsmith_f_op_f32(abs(1607f))), -1000f);
    global0 = array<bool, 6>();
    var_0 = !(!arg_0.x) & global0[_wgslsmith_index_u32(u_input.c, 6u)];
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1260f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + 1f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-530f)))) - -966f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = select(select(select(vec2<bool>(true, any(vec3<bool>(arg_1.a, arg_0.a, true))), select(func_2(vec4<i32>(-39250i, 1i, u_input.a.x, u_input.b), vec2<bool>(arg_0.a, true), vec4<i32>(-17631i, 10535i, u_input.a.x, 55170i), u_input.c), !vec2<bool>(arg_1.a, false), !vec2<bool>(true, arg_1.a)), true), !select(func_2(vec4<i32>(2205i, -52730i, u_input.b, 17562i), vec2<bool>(arg_0.a, true), vec4<i32>(u_input.a.x, -2147483647i, -1i, 30754i), 1u), func_2(vec4<i32>(u_input.a.x, u_input.b, -2147483647i, 2147483647i), vec2<bool>(false, arg_1.a), vec4<i32>(37718i, u_input.d, -19170i, 24588i), u_input.c), vec2<bool>(true, true)), !(_wgslsmith_f_op_f32(-1881f - 1000f) != _wgslsmith_f_op_f32(func_3(vec4<bool>(arg_1.a, false, false, arg_1.a))))), func_2(min(vec4<i32>(max(u_input.d, -2017i), i32(-1i) * -1i, u_input.d, u_input.d), -vec4<i32>(u_input.a.x, u_input.b, 7875i, u_input.b)), vec2<bool>(false || func_2(vec4<i32>(u_input.d, u_input.b, -2147483647i, -23911i), vec2<bool>(arg_0.a, true), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 12308i), 30613u).x, false), vec4<i32>(abs(u_input.a.x), _wgslsmith_add_i32(1i, u_input.a.x) << (~u_input.c % 32u), abs(firstLeadingBit(u_input.b)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.a.x, -1989i), vec4<i32>(23188i, -24777i, u_input.d, -21821i)), 1i)), _wgslsmith_div_u32(~(~18487u), u_input.c)), false);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(670f, -1281f, 324f), vec3<f32>(-2545f, 974f, -2103f), vec3<bool>(true, var_0.x, true))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1106f), -1729f, _wgslsmith_f_op_f32(func_3(vec4<bool>(global0[_wgslsmith_index_u32(29474u, 6u)], var_1.a, arg_1.a, arg_0.a)))), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(41596u, 6u)], false, arg_1.a)), true, !var_1.a))))));
    var_0 = !vec2<bool>(true, arg_0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(var_0.x, arg_0.a, global0[_wgslsmith_index_u32(0u, 6u)], false))), var_2.x), _wgslsmith_f_op_f32(-968f + _wgslsmith_f_op_f32(sign(var_2.x))), -1668f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f - var_2.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), -235f), 1157f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, -605f, var_2.x), vec4<f32>(var_2.x, var_2.x, 1000f, 1764f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1006f, -1000f, var_2.x, var_2.x)))))))));
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-131f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1200f)), _wgslsmith_f_op_f32(round(-710f))))), _wgslsmith_f_op_f32(func_3(select(select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 6u)], arg_2.a), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)], true, arg_2.a, true), select(vec4<bool>(global0[_wgslsmith_index_u32(11862u, 6u)], true, global0[_wgslsmith_index_u32(u_input.c, 6u)], arg_0.x), vec4<bool>(arg_0.x, true, true, arg_2.a), false)), vec4<bool>(arg_0.x | true, global0[_wgslsmith_index_u32(u_input.c ^ 0u, 6u)], false, false), vec4<bool>(arg_2.a, global0[_wgslsmith_index_u32(u_input.c, 6u)], true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1124f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(round(251f)))))));
    let var_1 = Struct_1((u_input.c != abs(1u)) & arg_1.a);
    var var_2 = var_1;
    global0 = array<bool, 6>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec4<bool>(var_2.a, false, true, var_2.a), vec4<bool>(arg_1.a, true, arg_2.a, true), !var_1.a))))));
    return vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), -190f, var_1.a))))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1000f;
    let var_0 = reverseBits(_wgslsmith_div_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, u_input.c))), vec2<u32>(u_input.c, u_input.c) | firstLeadingBit(vec2<u32>(u_input.c, u_input.c)))) << (_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u << (u_input.c % 32u), u_input.c), select(vec2<u32>(1u, 1u), vec2<u32>(~20238u, 48175u), vec2<bool>(!global0[_wgslsmith_index_u32(4294967295u, 6u)], !global0[_wgslsmith_index_u32(45902u, 6u)]))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-143f, 976f, -1570f, 284f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-173f, -2572f, 1505f, 1275f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], true), func_1(Struct_1(global0[_wgslsmith_index_u32(57211u, 6u)]), Struct_1(false)), Struct_1(global0[_wgslsmith_index_u32(43290u, 6u)])))))));
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(0u, 6u)]);
    let var_3 = var_0.x;
    let var_4 = all(select(vec4<bool>((4294967295u > u_input.c) && true, var_2.a & (var_1.x <= var_1.x), any(select(vec2<bool>(global0[_wgslsmith_index_u32(29761u, 6u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 6u)], false), true)), -1021f <= var_1.x), vec4<bool>(false, var_2.a, true, any(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 6u)], false, global0[_wgslsmith_index_u32(var_3, 6u)]))), vec4<bool>(func_1(func_1(Struct_1(false), Struct_1(var_2.a)), Struct_1(false)).a, true, var_2.a, !(true || global0[_wgslsmith_index_u32(0u, 6u)]))));
    global1 = var_1.x;
    var var_5 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-421f, var_1.x, var_1.x), _wgslsmith_div_vec3_f32(vec3<f32>(-492f, var_1.x, var_1.x), var_1.zzy))) * vec3<f32>(_wgslsmith_f_op_f32(-539f - -498f), _wgslsmith_f_op_f32(max(-174f, var_1.x)), var_1.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(u_input.a.x, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, 2147483647i, -10258i, u_input.b), vec4<bool>(false, false, false, false)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.b, -25781i, u_input.b)), vec4<i32>(-2147483647i, u_input.a.x, 23184i, u_input.a.x)) | (reverseBits(vec4<i32>(32845i, 14408i, u_input.a.x, 30747i)) >> (vec4<u32>(var_0.x, u_input.c, 24994u, 75606u) % vec4<u32>(32u))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(1i, u_input.b, u_input.d, u_input.b)), vec4<i32>(u_input.a.x, -34967i, u_input.b, -17469i))), abs(reverseBits(u_input.b)));
}

