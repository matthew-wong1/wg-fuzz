struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = ~1i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2227f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_1.c))))))), _wgslsmith_f_op_f32(-883f * -1423f), 355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1133f)), arg_1.c)))));
    var_0 = firstTrailingBit(u_input.d.x);
    var var_2 = _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(25110u, ~_wgslsmith_clamp_u32(23394u, ~0u, ~u_input.b.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_1.zwy * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-716f, _wgslsmith_f_op_f32(f32(-1f) * -716f), arg_1.c))));
    return vec3<bool>(true, true, any(vec4<bool>(true, all(vec2<bool>(true, true)), false, false)));
}

fn func_4(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0.b;
    var_0 = _wgslsmith_sub_vec4_u32(arg_0.b, firstLeadingBit(~(~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 17101u)))));
    let var_1 = arg_0.b.x;
    var_0 = arg_0.b;
    var_0 = ~(vec4<u32>(1u, var_1, 10091u, select(~u_input.b.x, var_1, true)) << ((vec4<u32>(_wgslsmith_div_u32(20939u, 37502u), ~var_1, 1u, ~1u) >> (vec4<u32>(1u, arg_0.b.x, firstLeadingBit(var_1), 35172u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return vec2<i32>(0i, 1i);
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(Struct_1(select(_wgslsmith_div_vec3_i32(-u_input.d, vec3<i32>(u_input.e.x, 1i, u_input.e.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -2147483647i), ~u_input.d), func_3(Struct_1(u_input.e.yxw, vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a.x), -388f), Struct_1(vec3<i32>(40368i, u_input.c.x, u_input.c.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 22649u), -771f), u_input.e.zxx, ~u_input.e)), min(vec4<u32>(u_input.b.x, ~0u, 7791u, _wgslsmith_mod_u32(55946u, u_input.a.x)), vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.b.x, u_input.a.x, 23304u, u_input.b.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-564f)), 1817f))));
    var var_1 = u_input.b.x;
    var_0 = select(_wgslsmith_mult_vec2_i32(-u_input.e.ww, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, i32(-1i) * -46763i), vec2<i32>(-28949i, 1i))), _wgslsmith_mult_vec2_i32(vec2<i32>(-firstTrailingBit(-679i), 1i), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.d.x, 2147483647i), _wgslsmith_mult_vec2_i32(select(u_input.d.yz, vec2<i32>(-1i, u_input.d.x), vec2<bool>(false, true)), vec2<i32>(u_input.e.x, u_input.e.x)))), !vec2<bool>(true & any(vec4<bool>(true, false, true, true)), true));
    let var_2 = Struct_2(vec2<bool>(true, any(vec3<bool>(true, true, true))), false);
    var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(abs(-var_0.x)), u_input.c.x), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-6321i >> (u_input.a.x % 32u)), -var_0.x), vec2<i32>(~_wgslsmith_mod_i32(-1i, var_0.x), i32(-1i) * -1i)));
    return var_2;
}

fn func_1() -> vec2<bool> {
    let var_0 = func_2();
    var var_1 = -185f;
    let var_2 = _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(u_input.d.x), 0i), u_input.c.x) << (0u % 32u);
    var var_3 = ~128353u;
    let var_4 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(func_4(Struct_1(vec3<i32>(11375i, u_input.e.x, u_input.e.x), vec4<u32>(6453u, 33105u, 1u, 4294967295u), 338f)), vec2<i32>(-1i) * -u_input.d.zy), -14334i, var_2), ~vec4<u32>(u_input.a.x, select(1u, u_input.a.x, true), ~(~u_input.b.x), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-856f, -974f))) - -627f)));
    return func_2().a;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-19186i | u_input.c.x, min(-12212i, arg_0)) & (~(-1i) << ((u_input.b.x & arg_3) % 32u)), u_input.c.x, arg_0, arg_0), _wgslsmith_mod_vec4_i32((reverseBits(vec4<i32>(u_input.e.x, 5779i, 65476i, 19073i)) ^ ~u_input.e) & _wgslsmith_clamp_vec4_i32(-u_input.e, firstTrailingBit(vec4<i32>(0i, 21846i, u_input.d.x, -42567i)), vec4<i32>(arg_0, u_input.c.x, u_input.e.x, arg_0)), u_input.e ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, u_input.e.x, arg_0), vec4<i32>(arg_0, 1i, u_input.c.x, -26384i))));
    let var_1 = Struct_1(vec3<i32>(~1744i, ~u_input.e.x, arg_0), reverseBits(reverseBits(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, arg_3), vec3<u32>(arg_3, 4294967295u, 52261u)), _wgslsmith_div_u32(u_input.b.x, 25513u), arg_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f))));
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(306f + -690f) * var_1.c));
    var var_4 = Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, var_1.a.x), abs(_wgslsmith_add_i32(18136i, arg_0))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.c.x, 2147483647i), -42232i), ~(~arg_0 | _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.d.x, arg_0, arg_0, var_1.a.x)))), ~select(var_1.b, var_1.b, any(var_2.a)) >> (_wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, var_1.b.x), var_1.b)), ~var_1.b ^ _wgslsmith_div_vec4_u32(var_1.b, vec4<u32>(50386u, 1u, 61591u, u_input.b.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_3)))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.d.x, all(!func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-209f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -362f), 941f)), true || func_1().x))), 1u);
    var_0 = func_5(_wgslsmith_clamp_i32(-3817i, _wgslsmith_dot_vec3_i32(~vec3<i32>(5285i, -2147483647i, 0i) << (vec3<u32>(0u, var_0.b.x, 4294967295u) % vec3<u32>(32u)), func_5(~2147483647i, false, _wgslsmith_f_op_f32(floor(1492f)), var_0.b.x).a), var_0.a.x), any(select(func_3(func_5(u_input.c.x, false, -1806f, var_0.b.x), func_5(32128i, false, var_0.c, 0u), firstTrailingBit(var_0.a), vec4<i32>(var_0.a.x, 26200i, 86929i, 0i) & vec4<i32>(u_input.d.x, u_input.e.x, var_0.a.x, u_input.d.x)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false))), vec3<bool>(false, true, select(false, false, false)))), _wgslsmith_f_op_f32(ceil(var_0.c)), _wgslsmith_clamp_u32(45221u, ~_wgslsmith_add_u32(u_input.a.x, 81913u), 4294967295u));
    var_0 = func_5(u_input.d.x, all(!func_3(Struct_1(u_input.e.zww, vec4<u32>(5051u, var_0.b.x, 1u, 54016u), 772f), Struct_1(u_input.d, var_0.b, var_0.c), ~vec3<i32>(var_0.a.x, 16334i, 2147483647i), u_input.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(385f))) - _wgslsmith_div_f32(var_0.c, -218f)), var_0.c), ~u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-246f, -727f, var_0.c, 861f), vec4<f32>(var_0.c, var_0.c, -961f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, -685f, 808f, var_0.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, -438f, 649f, var_0.c), vec4<f32>(var_0.c, 2460f, 568f, var_0.c)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.c, var_0.c, var_0.c, 2410f), vec4<f32>(-1468f, -662f, var_0.c, var_0.c))))))));
    var var_2 = func_5(var_0.a.x, _wgslsmith_mult_u32(var_0.b.x, 22496u) <= _wgslsmith_mod_u32(~(~u_input.b.x), 0u), _wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1079f))))), 63181u);
    var_0 = func_5(_wgslsmith_mult_i32(var_0.a.x, var_2.a.x), true, 944f, 56727u);
    var var_3 = func_5(_wgslsmith_mod_i32(-min(_wgslsmith_dot_vec2_i32(u_input.d.yy, var_2.a.xx), var_2.a.x), func_4(Struct_1(firstLeadingBit(var_2.a), ~var_2.b, var_2.c)).x), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)) && any(select(vec2<bool>(true, true), func_3(Struct_1(vec3<i32>(var_2.a.x, -1i, 0i), vec4<u32>(13152u, 21467u, var_2.b.x, var_0.b.x), 135f), Struct_1(vec3<i32>(-1i, var_2.a.x, -2147483647i), var_0.b, var_1.x), vec3<i32>(6175i, u_input.c.x, -1i), vec4<i32>(2147483647i, u_input.e.x, 1i, u_input.d.x)).xz, func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c - var_0.c))), var_2.c, (var_0.a.x << (4294967295u % 32u)) > (var_2.a.x >> (u_input.a.x % 32u)))) * var_2.c), min(~(~reverseBits(var_0.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(62172u), ~0u, 4294967295u, ~var_0.b.x), ~(~var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-196f, -select(abs(-u_input.e), u_input.e, ~u_input.a.x < u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c));
}

