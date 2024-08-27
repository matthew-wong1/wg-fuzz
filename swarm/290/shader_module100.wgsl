struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<u32>,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-42835i, true, false, vec4<bool>(false, true, true, true), -1145f), Struct_1(0i, false, true, vec4<bool>(true, false, false, true), 1000f), false, Struct_1(-3980i, false, false, vec4<bool>(false, true, true, false), -316f), 1u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(global0.b, global0.b, global0.b.d.x, Struct_1(countOneBits(~0i), (global0.a.d.x && false) && true, global0.b.d.x, vec4<bool>(true, true, false, any(global0.a.d.zyw)), global0.a.e), ~global0.e), true, vec3<u32>(~1u | ~global0.e, _wgslsmith_dot_vec4_u32(abs(u_input.b), ~vec4<u32>(4294967295u, u_input.b.x, 0u, 24172u)), _wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(vec4<u32>(global0.e, 1u, u_input.b.x, 82043u)))) | u_input.b.wzy, u_input.b << (u_input.b % vec4<u32>(32u)), Struct_2(Struct_1(u_input.a, global0.d.d.x, true, global0.d.d, _wgslsmith_f_op_f32(sign(global0.d.e))), global0.b, global0.a.c, Struct_1(u_input.c, ~global0.e >= global0.e, any(!vec3<bool>(true, true, global0.a.d.x)), vec4<bool>(true, any(global0.a.d), global0.b.d.x, global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.e))), countOneBits(u_input.d.x)));
    let var_1 = var_0.e.e;
    global0 = var_0.e;
    var var_2 = var_0.e;
    global0 = Struct_2(Struct_1(1i, firstLeadingBit(var_1) >= var_1, ~abs(var_2.b.a) > _wgslsmith_sub_i32(var_0.a.b.a, ~u_input.a), !var_0.e.b.d, var_2.a.e), global0.b, !(all(!var_0.a.b.d.zy) & !global0.d.d.x), Struct_1(_wgslsmith_sub_i32(~var_0.e.d.a << (~var_1 % 32u), 44311i), !any(select(var_0.e.a.d, var_2.b.d, var_2.d.d.x)), any(var_0.e.b.d), !(!global0.b.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.e))))), countOneBits(global0.e) | global0.e);
    return global0.a.d.x;
}

fn func_2() -> Struct_4 {
    global0 = Struct_2(Struct_1(_wgslsmith_div_i32(5922i, _wgslsmith_div_i32(global0.d.a, abs(u_input.a))), any(select(select(vec3<bool>(true, global0.a.d.x, global0.a.d.x), global0.d.d.xxw, global0.d.d.x), vec3<bool>(global0.d.d.x, global0.a.d.x, global0.d.b), global0.b.d.ywx)), global0.d.d.x, !global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b.e - global0.a.e), _wgslsmith_f_op_f32(floor(global0.a.e)))))), global0.d, false, global0.b, ~(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d.x, 18187u, 4294967295u), ~116195u) >> (global0.e % 32u)));
    global0 = Struct_2(Struct_1(2147483647i, func_3(), global0.b.c, global0.a.d, global0.b.e), global0.d, global0.a.c, global0.b, reverseBits(14906u));
    let var_0 = Struct_4(Struct_1(_wgslsmith_clamp_i32(u_input.a, -85139i, -u_input.c), ~1u != global0.e, true, global0.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.e)), global0.b.e))), Struct_1(~(-31810i), !(!(!global0.c)), any(global0.d.d), select(global0.a.d, select(global0.a.d, select(vec4<bool>(true, true, true, global0.b.b), vec4<bool>(true, true, global0.c, true), global0.c), vec4<bool>(global0.d.c, false, global0.b.d.x, global0.b.b)), global0.d.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.e) + _wgslsmith_f_op_f32(f32(-1f) * -249f)))), Struct_2(Struct_1(-2147483647i, !(global0.c && false), true, vec4<bool>(global0.d.d.x, global0.c, false, false), 1105f), Struct_1(_wgslsmith_mod_i32(-5676i, global0.d.a), global0.c, true, select(select(global0.a.d, global0.b.d, global0.d.d), vec4<bool>(global0.c, false, global0.b.d.x, global0.c), global0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(882f, global0.b.e)))), global0.d.d.x, Struct_1(0i, false, !(u_input.c < -30249i), !global0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.e + global0.a.e))), _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_add_u32(global0.e, _wgslsmith_mult_u32(global0.e, global0.e)))), 572f);
    var var_1 = ~8292u;
    var_1 = _wgslsmith_add_u32(~(var_0.c.e ^ ~var_0.c.e), var_0.c.e);
    return var_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = u_input.b.ywx;
    global0 = arg_3;
    let var_1 = func_2().c;
    var var_2 = vec2<f32>(241f, arg_1.c.a.e);
    var var_3 = Struct_2(func_2().b, Struct_1(~var_1.b.a, func_2().c.b.d.x, !(!var_1.d.c), vec4<bool>(arg_1.a.c, func_2().a.d.x, all(global0.b.d), -189f > _wgslsmith_f_op_f32(ceil(975f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.e, global0.b.e))), false, func_2().c.d, ~u_input.b.x);
    return _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(705f, arg_1.d)) * -1075f), var_1.a.e)));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(select(global0.a.d.wyz, global0.d.d.zzz, vec3<bool>(true & global0.b.b, !global0.b.d.x, true)), func_2(), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_add_u32(u_input.d.x, 74263u)), 17409u, _wgslsmith_mod_u32(u_input.d.x, 1u) | ~global0.e), func_2().c)) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), global0.d.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(504f, 840f, -450f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.e, var_0.x)), 1f, _wgslsmith_f_op_f32(-1392f + -2063f)))));
    var var_2 = Struct_2(func_2().c.d, Struct_1(-(~func_2().a.a), (global0.c || true) || false, func_3() | !(!global0.b.b), !global0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f - var_1.x) + _wgslsmith_f_op_f32(round(global0.a.e))))), false, global0.b, _wgslsmith_add_u32(u_input.b.x, 1u));
    global0 = func_2().c;
    var_2 = func_2().c;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = vec2<u32>(38999u, ~u_input.b.x);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(-2147483647i) ^ abs(u_input.a), firstTrailingBit(global0.a.a)) | ~(-_wgslsmith_add_vec2_i32(vec2<i32>(19350i, -12673i), vec2<i32>(global0.d.a, 2147483647i))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-32258i, 17916i), firstLeadingBit(vec2<i32>(global0.d.a, -3483i))), ~vec2<i32>(global0.b.a, u_input.c)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 25322i), abs(vec2<i32>(u_input.a, 27549i)), reverseBits(vec2<i32>(global0.b.a, global0.a.a))))));
    var var_2 = Struct_3(func_1(), false, select(_wgslsmith_div_vec3_u32(~(~u_input.b.wzy), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b.x, 5316u, var_0.x), u_input.b.wzx)), vec3<u32>(~global0.e >> ((var_0.x & 1u) % 32u), ~56381u, _wgslsmith_add_u32(1u, _wgslsmith_add_u32(0u, 1u))), global0.a.d.wzz), vec4<u32>(38184u, var_0.x, abs(~1u), var_0.x), Struct_2(Struct_1(-30027i, any(func_2().c.a.d.yzz), all(global0.d.d), vec4<bool>(true, global0.c, global0.a.d.x, false), _wgslsmith_f_op_f32(global0.b.e - _wgslsmith_f_op_f32(-global0.a.e))), Struct_1(_wgslsmith_mod_i32(0i, -2147483647i ^ global0.a.a), global0.c, true && global0.c, select(select(global0.d.d, global0.d.d, global0.d.d), !global0.d.d, !global0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1574f * global0.d.e))), global0.d.e < _wgslsmith_f_op_f32(global0.d.e - _wgslsmith_f_op_f32(f32(-1f) * -347f)), Struct_1(-5538i, all(select(vec2<bool>(false, global0.d.b), global0.d.d.zy, true)), !(!global0.a.c), global0.a.d, _wgslsmith_f_op_f32(max(-1085f, -800f))), var_0.x));
    let var_3 = func_2().c;
    let var_4 = _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(select(vec2<i32>(global0.d.a, 57770i), vec2<i32>(5342i, var_2.e.d.a), var_2.b), vec2<i32>(var_3.b.a, -1i)) | vec2<i32>(0i, -min(1i, var_3.d.a)), -((vec2<i32>(var_1.x, 17415i) ^ countOneBits(vec2<i32>(-2142i, global0.b.a))) << (vec2<u32>(_wgslsmith_add_u32(1u, 1u), _wgslsmith_mult_u32(28695u, u_input.d.x)) % vec2<u32>(32u))));
    let var_5 = _wgslsmith_dot_vec3_u32(u_input.b.ywx, ~abs(_wgslsmith_mod_vec3_u32(var_2.c, vec3<u32>(var_0.x, 4294967295u, 5229u))));
    var_2 = Struct_3(var_2.a, !var_2.e.d.c, vec3<u32>(var_2.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, 3856u) ^ ~var_5, ~(~50545u)), ~(~70106u)), ~(~(~(u_input.b & vec4<u32>(var_3.e, var_3.e, 44838u, var_3.e)))), func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.d.e, _wgslsmith_f_op_f32(sign(-682f)), true))))), ~vec4<i32>(-1i, _wgslsmith_sub_i32(var_4, max(global0.a.a, 0i)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, var_3.b.a, -2147483647i), vec3<i32>(2147483647i, var_3.d.a, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_3.b.a, var_3.d.a, -67215i), vec3<i32>(-8977i, var_1.x, u_input.c))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(var_3.d.a, -2147483647i), vec2<i32>(-29198i, 2424i)), -vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(316f, 811f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d.e, var_2.e.d.e)))))), _wgslsmith_div_u32(~1u, global0.e));
}

