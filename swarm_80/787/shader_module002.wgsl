struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_1.b, u_input.a.x), u_input.a | vec3<u32>(1u, 1u, 41568u)), ~_wgslsmith_mod_vec3_u32(~u_input.a, ~vec3<u32>(arg_1.b, 1u, arg_1.b))), 12u)], 2147483647i);
    var var_1 = abs(~(1i & _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, var_0), var_0)));
    var var_2 = Struct_3(arg_1.b, ~_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1.b, 28142u, u_input.a.x | 1u, ~u_input.a.x), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(28792u, u_input.a.x), ~1u, ~1u)), Struct_2(arg_0, arg_1, vec2<i32>(_wgslsmith_div_i32(~1i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_1.b, 12u)], var_0)), var_0), vec3<i32>(min(1i, firstTrailingBit(var_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(33637u, 12u)], var_0, global0[_wgslsmith_index_u32(68169u, 12u)]), _wgslsmith_add_vec3_i32(vec3<i32>(var_0, -54322i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(-26222i, -15132i, 45371i))), reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 12u)]) >> (4294967295u % 32u))), ~countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i), vec4<i32>(-2147483647i, 0i, 1i, global0[_wgslsmith_index_u32(39441u, 12u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(25581u, 12u)], var_0, 1i)), abs(vec4<i32>(global0[_wgslsmith_index_u32(0u, 12u)], -53040i, global0[_wgslsmith_index_u32(4294967295u, 12u)], -61211i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -519f))))));
    let var_3 = Struct_3(arg_1.b, vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(32855u, var_2.c.b.b), 0u << ((1u | ~arg_1.b) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, 26866u, arg_1.b), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2.a, u_input.a.x), _wgslsmith_sub_vec3_u32(var_2.b.zyx, vec3<u32>(var_2.b.x, 0u, u_input.a.x))))), var_2.c, var_2.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -389f) + -1918f)))));
    let var_4 = 4294967295u;
    return var_2.d << (~var_3.b % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec2<bool> {
    var var_0 = all(vec3<bool>(all(vec3<bool>(true, arg_0.a.c.a.x, true)), ~11002u < ~arg_0.a.c.b.b, false)) || any(arg_0.c.c.b.a);
    let var_1 = Struct_4(arg_0.c.c.b, Struct_3(~57446u, vec4<u32>(~66896u, abs(5798u), ~(u_input.a.x | arg_0.b.a), arg_0.a.a), Struct_2(!select(vec3<bool>(false, arg_0.c.c.b.a.x, arg_0.a.c.a.x), vec3<bool>(false, false, arg_0.a.c.a.x), true), Struct_1(!arg_0.a.c.a.zz, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), countOneBits(vec2<i32>(46322i, -33534i)), abs(select(vec3<i32>(-2029i, 11438i, -2147483647i), arg_0.b.d.xyw, vec3<bool>(arg_0.c.c.a.x, arg_0.b.c.a.x, false)))), arg_0.c.d, _wgslsmith_f_op_f32(-arg_0.b.e)), arg_0.a.c.b, arg_0.a.c, 0u);
    let var_2 = ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_1.d.d.x, 15101i, 2147483647i) | ~39330i, arg_0.c.d.x) >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 58669u), u_input.a.zz), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 129570u, arg_0.b.b.x, u_input.a.x), var_1.b.b)) % 32u);
    var var_3 = firstTrailingBit(vec4<i32>(var_2, -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.b.c.d, vec3<i32>(var_2, 1i, -17185i)), arg_0.b.d.x), 2147483647i, var_1.b.c.d.x));
    global0 = array<i32, 12>();
    return arg_0.c.c.a.zx;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 12>();
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(!select(!select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), var_0);
    var_1 = Struct_1(func_4(Struct_5(Struct_3(abs(67484u), vec4<u32>(28145u, 66738u, var_0, var_1.b), Struct_2(vec3<bool>(true, true, var_1.a.x), Struct_1(var_1.a, var_0), vec2<i32>(-25777i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 12u)], 0i, -38597i)), func_3(vec3<bool>(var_1.a.x, var_1.a.x, true), Struct_1(vec2<bool>(true, true), 4294967295u)), 1306f), Struct_3(1257u, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 10287u, 1u, var_0), vec4<u32>(var_0, 0u, 1u, u_input.a.x)), Struct_2(vec3<bool>(false, true, var_1.a.x), Struct_1(vec2<bool>(false, var_1.a.x), u_input.a.x), vec2<i32>(global0[_wgslsmith_index_u32(var_1.b, 12u)], 2147483647i), vec3<i32>(7702i, global0[_wgslsmith_index_u32(var_0, 12u)], -95770i)), select(vec4<i32>(42243i, 2147483647i, 0i, 47927i), vec4<i32>(global0[_wgslsmith_index_u32(var_0, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(var_1.b, 12u)], 21766i), vec4<bool>(false, false, var_1.a.x, true)), _wgslsmith_f_op_f32(790f - 1128f)), Struct_3(_wgslsmith_sub_u32(var_0, var_1.b), vec4<u32>(21376u, 0u, 0u, 1u) ^ vec4<u32>(var_1.b, 1u, var_0, 47873u), Struct_2(vec3<bool>(var_1.a.x, var_1.a.x, false), Struct_1(var_1.a, var_1.b), vec2<i32>(-2147483647i, 25209i), vec3<i32>(-1i, -45732i, global0[_wgslsmith_index_u32(89212u, 12u)])), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], -38302i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)])), _wgslsmith_f_op_f32(step(-410f, 1000f)))), var_0), ~((u_input.a.x >> (21251u % 32u)) & u_input.a.x));
    var var_2 = var_1.a.x;
    return Struct_2(vec3<bool>(all(select(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x), select(vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, false, false)), false || var_1.a.x)), !var_1.a.x, select(all(!vec4<bool>(true, var_1.a.x, var_1.a.x, true)), var_1.a.x, any(vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)))), Struct_1(vec2<bool>(true || !var_1.a.x, !(!var_1.a.x)), max(14765u, var_0)), ~min(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(70650u, 12u)], 17334i) | vec2<i32>(-30755i, 22564i), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(var_0, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))), vec2<i32>(global0[_wgslsmith_index_u32(16295u, 12u)] | global0[_wgslsmith_index_u32(var_1.b, 12u)], global0[_wgslsmith_index_u32(var_1.b, 12u)] & 2147483647i)), vec3<i32>(-8270i, abs(~1i), -global0[_wgslsmith_index_u32(1u, 12u)]));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    let var_0 = -413f;
    let var_1 = func_2();
    global0 = array<i32, 12>();
    var var_2 = Struct_3(~(60227u ^ ~var_1.b.b), min(~vec4<u32>(_wgslsmith_mod_u32(0u, 88422u), _wgslsmith_add_u32(33388u, var_1.b.b), min(22032u, 4294967295u), abs(u_input.a.x)), vec4<u32>(u_input.a.x, var_1.b.b, countOneBits(var_1.b.b), u_input.a.x)), var_1, max(vec4<i32>(firstTrailingBit(var_1.d.x), global0[_wgslsmith_index_u32(var_1.b.b, 12u)], _wgslsmith_dot_vec2_i32(var_1.c, var_1.c), var_1.d.x) & firstLeadingBit(~vec4<i32>(var_1.d.x, 78393i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i)), vec4<i32>(var_1.d.x, -1i, global0[_wgslsmith_index_u32(~abs(1u), 12u)], _wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(4294967295u, 12u)] | var_1.d.x))), -346f);
    var_2 = Struct_3(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17008u, firstLeadingBit(39311u), _wgslsmith_div_u32(var_2.a, var_2.a)), vec3<u32>(firstLeadingBit(31781u), var_1.b.b, var_1.b.b)), 1u | var_1.b.b, _wgslsmith_div_u32(select(35144u, var_1.b.b, var_1.b.a.x) | abs(var_1.b.b), u_input.a.x & 0u)), firstLeadingBit(vec4<u32>(~34864u, var_2.b.x, 21206u, ~_wgslsmith_add_u32(14258u, var_2.b.x))), Struct_2(select(var_2.c.a, vec3<bool>(var_1.a.x | var_1.b.a.x, false, true), any(vec4<bool>(false, var_1.a.x, false, var_1.b.a.x))), func_2().b, _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.d.x, global0[_wgslsmith_index_u32(var_2.b.x, 12u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 12u)], -2150i)), vec2<i32>(firstTrailingBit(0i), firstTrailingBit(13516i))), ~var_1.d), vec4<i32>(15613i, ~global0[_wgslsmith_index_u32(var_1.b.b, 12u)], ~(~(-var_1.c.x)), -52154i), _wgslsmith_f_op_f32(exp2(arg_1)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(699f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-171f, -663f)), _wgslsmith_f_op_f32(floor(-645f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) * _wgslsmith_f_op_f32(abs(-487f))))));
    global0 = array<i32, 12>();
    let var_1 = vec2<u32>(27456u, ~firstTrailingBit(87865u));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * _wgslsmith_f_op_f32(max(-872f, -359f)))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(-474f, 158f)), 514f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(1862f, 309f)), vec2<f32>(var_0.x, -1396f)))) - vec2<f32>(var_0.x, var_0.x)));
    let var_2 = Struct_4(Struct_1(select(func_2().a.zz, vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), 52366u), Struct_3(32724u, ~(~(~vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x))), Struct_2(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), 27368u), _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(0i, 2147483647i))), vec3<i32>(14295i, -1i, func_2().c.x)), abs(select(abs(vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 15531i, -28111i)), ~vec4<i32>(1i, 11585i, 1i, -1i), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), var_0.x), func_2().b, func_2(), firstLeadingBit(~_wgslsmith_clamp_u32(min(23214u, u_input.a.x), u_input.a.x, u_input.a.x)));
    global0 = array<i32, 12>();
    var var_3 = (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, ~42703u, 1u, ~var_1.x), ~var_2.b.b) | ~vec4<u32>(_wgslsmith_clamp_u32(var_1.x, u_input.a.x, var_2.e), 23142u, 44520u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 44413u, 1u), u_input.a))) >> (firstTrailingBit(min(_wgslsmith_sub_vec4_u32(~var_2.b.b, abs(vec4<u32>(43078u, u_input.a.x, 33945u, var_1.x))), min(vec4<u32>(0u, u_input.a.x, 1u, 68974u), var_2.b.b))) % vec4<u32>(32u));
    global0 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, 17294u), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.e * 645f) - -915f)), 2147483647i, ~var_2.d.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(143f, 131f), vec2<f32>(var_0.x, -248f))), _wgslsmith_f_op_f32(sign(610f)))), 1223f))));
}

