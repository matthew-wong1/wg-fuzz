struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = ~(-_wgslsmith_clamp_i32(1i, i32(-1i) * -1i, countOneBits(0i))) >> (4294967295u % 32u);
    var_0 = ~(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(43273i, 551i, -1i), ~vec3<i32>(1i, 21194i, -26052i)), vec3<i32>(1i, 1i, 1i)) ^ _wgslsmith_clamp_i32(-9610i, ~firstTrailingBit(0i), 1i));
    var var_1 = ~(vec3<u32>(0u, _wgslsmith_sub_u32(reverseBits(u_input.b), 1u << (u_input.c % 32u)), u_input.a) & countOneBits(vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 35513u, 1u), u_input.b, ~u_input.a)));
    var_1 = (~vec3<u32>(~u_input.b, u_input.b, ~var_1.x) ^ firstLeadingBit(~vec3<u32>(u_input.b, var_1.x, 1u) << ((vec3<u32>(var_1.x, u_input.c, u_input.c) << (vec3<u32>(1u, var_1.x, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)))) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(select(~vec3<u32>(4294967295u, var_1.x, u_input.a), vec3<u32>(1u, 49619u, var_1.x), vec3<bool>(false, false, false)), countOneBits(select(vec3<u32>(var_1.x, 1u, 1u), vec3<u32>(u_input.a, var_1.x, u_input.b), vec3<bool>(false, true, true)))), ~(~(~vec3<u32>(4294967295u, 27665u, 36400u))));
    var var_2 = Struct_4(firstLeadingBit(_wgslsmith_div_i32(min(-6573i, max(1i, -28008i)), -2147483647i)), Struct_1(0u, 0i, 1f), !(!vec4<bool>(true, true, true, select(true, false, false))), select(-2038i, ~(~(-1i)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.b), min(vec3<u32>(u_input.c, var_1.x, 1u), vec3<u32>(4294967295u, var_1.x, 0u))) % 32u), true));
    return _wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, 17989i, _wgslsmith_add_i32(var_2.a, 12347i) >> (countOneBits(4294967295u) % 32u)), vec3<i32>(abs(reverseBits(12035i)), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -13368i, var_2.a, -2147483647i)), firstLeadingBit(vec4<i32>(-2147483647i, var_2.b.b, 1i, -1i))), abs(32601i & var_2.d)), var_2.c.zyy), vec3<i32>(select(firstTrailingBit(~var_2.a), var_2.a, all(var_2.c)), firstTrailingBit(-18451i) ^ 38964i, 1i ^ (var_2.b.b << (~var_2.b.a % 32u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = arg_3.d.b;
    var var_1 = func_3();
    var_0 = Struct_1(1u, _wgslsmith_add_i32(-1i, 0i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))))))));
    let var_2 = Struct_3(arg_2, firstTrailingBit(arg_3.b), !select(arg_3.c, select(vec4<bool>(arg_3.d.c, arg_3.c.x, arg_3.c.x, arg_3.d.c), select(vec4<bool>(false, arg_3.c.x, true, false), arg_3.c, arg_3.c), arg_3.d.c), !(arg_3.c.x != arg_3.d.c)), arg_3.d);
    var var_3 = Struct_1(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_2.b.x, 4294967295u, 36875u), vec4<u32>(var_2.b.x, 24138u, 48465u, 0u)))), arg_3.d.b.b, _wgslsmith_div_f32(1057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1716f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * 626f) - _wgslsmith_f_op_f32(arg_3.d.b.c * var_2.d.b.c)))));
    return var_2.c.x;
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(~(u_input.a << (~(~arg_2) % 32u)), (1i & _wgslsmith_add_i32(arg_3.x, i32(-1i) * -1i)) << ((~arg_2 ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u) ^ vec2<u32>(u_input.c, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 73732u), vec2<u32>(47508u, arg_2)))) % 32u), -1000f);
    var var_1 = arg_1.x;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(126f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_mod_vec2_u32(firstLeadingBit(min(~vec2<u32>(0u, u_input.b), vec2<u32>(21981u, 0u) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))), vec2<u32>(arg_2, arg_2)), select(vec4<bool>(true, true, true, true), vec4<bool>(!select(true, true, true), false, false, true), !vec4<bool>(78450i >= arg_0, true, func_2(vec2<i32>(arg_0, var_0.b), vec4<i32>(arg_0, var_0.b, arg_3.x, -48101i), 897f, Struct_3(var_0.c, vec2<u32>(u_input.b, var_0.a), vec4<bool>(false, false, false, false), Struct_2(vec2<u32>(arg_2, 27652u), Struct_1(u_input.c, 1i, var_0.c), true))), false)), Struct_2(vec2<u32>(select(u_input.a, _wgslsmith_div_u32(4294967295u, 1u), true), 1u), Struct_1(var_0.a, var_0.b, 2269f), ~arg_0 != ~0i));
    var var_3 = var_2.d;
    let var_4 = var_3.b;
    return _wgslsmith_f_op_f32(-568f - var_3.b.c);
}

fn func_4(arg_0: f32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1322f, 1119f) * vec2<f32>(arg_0, 155f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(2228f, -551f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-476f, -956f), vec2<f32>(-505f, -554f), true))))), vec2<f32>(_wgslsmith_f_op_f32(-1326f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2377f) - arg_0)), 1826f), false));
    var var_1 = Struct_4(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(27801i, 1i, -27161i), vec3<i32>(abs(-2264i), 1i, ~0i))), Struct_1(_wgslsmith_add_u32((u_input.c ^ u_input.b) & u_input.c, u_input.a), _wgslsmith_clamp_i32(1i, -33413i, 2147483647i), _wgslsmith_f_op_f32(-450f + arg_0)), vec4<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false))), false, true, any(vec3<bool>(u_input.a != u_input.a, all(vec2<bool>(false, true)), u_input.b <= u_input.b))), ~(i32(-1i) * -2147483647i));
    var var_2 = var_1.c.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1596f, 1547f, var_1.b.c) + vec4<f32>(var_1.b.c, var_0.x, 1000f, 217f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_0.x, arg_0, var_1.b.c) - vec4<f32>(318f, arg_0, arg_0, -1681f))) - vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, arg_0, true)), 960f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, -436f, 526f) + vec4<f32>(1229f, arg_0, var_1.b.c, arg_0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1155f, var_0.x, 1215f, 222f), vec4<f32>(-657f, -236f, var_1.b.c, 326f), var_1.c.x))))));
    var var_4 = Struct_3(var_1.b.c, _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.a, u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b) | vec3<u32>(6162u, 4986u, u_input.b), vec3<u32>(var_1.b.a, 37538u, 1u) << (vec3<u32>(73872u, 1u, var_1.b.a) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(11166u, 1476u)), abs(vec2<u32>(u_input.b, u_input.a))))), vec4<bool>(var_1.c.x, true, 11133u <= _wgslsmith_sub_u32(~var_1.b.a, _wgslsmith_add_u32(u_input.a, 1u)), var_1.c.x), Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 41027u, u_input.c, 0u), vec4<u32>(61155u, u_input.a, 27317u, 2540u)), 14881u) & abs(~vec2<u32>(u_input.c, 21955u)), var_1.b, !(_wgslsmith_f_op_f32(max(arg_0, -1000f)) != -1271f)));
    return Struct_4(var_4.d.b.b, Struct_1(0u, -23121i, -677f), !vec4<bool>(!(u_input.b < 1u), true, var_1.c.x, all(var_1.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d.b.b, var_1.a, -1i) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(var_1.d, -53018i, var_1.b.b), -vec3<i32>(var_1.b.b, var_4.d.b.b, -1i)), -_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_4.d.b.b, var_1.a, 2147483647i)), -vec3<i32>(8125i, -2147483647i, var_4.d.b.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(0i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(105f, -761f, -832f, 802f))), 46783u, firstLeadingBit(vec2<i32>(67255i, -26424i)))))));
    let var_2 = Struct_2(vec2<u32>(var_1.b.a, u_input.b), Struct_1(~(~(~1u)), firstTrailingBit(-var_1.b.b) & 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) * var_1.b.c)), (true && all(!vec3<bool>(true, var_1.c.x, var_1.c.x))) == var_1.c.x);
    var_1 = Struct_4(0i, var_2.b, !(!select(var_1.c, !vec4<bool>(true, var_2.c, true, true), var_2.b.b <= var_2.b.b)), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i << (_wgslsmith_clamp_u32(~1u, countOneBits(0u) | u_input.c, 23409u) % 32u), vec4<u32>(func_4(_wgslsmith_div_f32(-674f, var_2.b.c)).b.a, 4294967295u, ~(var_1.b.a << (var_0 % 32u)), 26270u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -1000f), 1f)), select(2147483647i, -5758i, any(func_4(var_1.b.c).c.zxw) != (true || (true | var_1.c.x))));
}

