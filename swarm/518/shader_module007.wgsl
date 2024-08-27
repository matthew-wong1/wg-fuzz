struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<i32>;

var<private> global2: vec2<i32> = vec2<i32>(11897i, -8922i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = u_input.e.x;
    var var_1 = firstTrailingBit(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(arg_0.a, u_input.a.x, 5038u, arg_0.b.x)), firstLeadingBit(~vec4<u32>(u_input.d.x, 4294967295u, arg_0.a, 28968u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-581f, -471f, -663f, 154f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(828f, -1000f, 1000f, -296f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -1000f, 337f, -1285f)))))));
    return vec2<u32>(0u, arg_0.a);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(4294967295u, _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)), select(~vec2<u32>(u_input.a.x, u_input.d.x), u_input.d.xx, select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))) & _wgslsmith_mult_vec2_u32(func_3(Struct_1(u_input.d.x, u_input.a, vec3<bool>(false, true, true), u_input.e, true)), u_input.a), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(max(global1.x, -3141i) << (~32948u % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, 0i), _wgslsmith_div_i32(u_input.c, 1i)), 0i, 20035i << ((u_input.d.x | 18768u) % 32u)), vec4<i32>(1i, i32(-1i) * -47280i, _wgslsmith_add_i32(0i, u_input.e.x), 18183i >> (u_input.a.x % 32u)) & firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.x, global1.x, u_input.e.x, -61218i), vec4<i32>(-28622i, global2.x, 19262i, 33511i)))), true);
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), var_0.b), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 10189u), u_input.d.x), var_0.c, vec4<i32>(1i, 16364i, 1i, ~var_0.d.x) | ~var_0.d, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-381f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1548f)), _wgslsmith_f_op_f32(f32(-1f) * -954f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -799f))) - _wgslsmith_f_op_f32(select(-251f, _wgslsmith_div_f32(-600f, -1000f), true)))));
    var var_3 = Struct_2(var_0, _wgslsmith_f_op_f32(1289f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-var_2.b))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.b, var_2.b, -932f), vec3<f32>(1305f, -1251f, var_3.b)))), vec3<f32>(651f, -1022f, var_2.b)), vec3<f32>(_wgslsmith_div_f32(547f, 2219f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -424f) + -487f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_2.b)))) * vec3<f32>(246f, var_3.b, 705f));
    return !vec4<bool>(true, true, false, !(!select(var_0.c.x, false, true)));
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(25961u, _wgslsmith_mod_u32(0u, u_input.d.x), u_input.a.x, reverseBits(u_input.a.x)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.d.x), vec4<u32>(0u, 120438u, u_input.d.x, u_input.a.x)) >> (vec4<u32>(u_input.d.x, u_input.a.x, 0u, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 17827u, u_input.a.x, 48589u), vec4<u32>(1u, u_input.d.x, 0u, u_input.d.x), vec4<u32>(28866u, 0u, u_input.a.x, u_input.d.x)) ^ vec4<u32>(u_input.a.x, u_input.a.x, 46903u, 26697u))));
    global1 = vec4<i32>(1i, global2.x, -global1.x, u_input.b.x);
    global2 = u_input.e.zy;
    let var_1 = Struct_1(~(~0u), _wgslsmith_add_vec2_u32(vec2<u32>(abs(36958u), ~u_input.a.x) >> (~(~vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)), ~((u_input.d.yx ^ u_input.a) | vec2<u32>(4294967295u, u_input.a.x))), vec3<bool>(global2.x == 24573i, arg_0.x, func_2().x), u_input.e, true || any(select(func_2().yyz, select(arg_0.yxz, arg_0.wxw, arg_0.x), !arg_0.yxz)));
    var var_2 = Struct_2(var_1, 1000f);
    return Struct_2(Struct_1(_wgslsmith_sub_u32(firstLeadingBit(var_0) << (firstLeadingBit(148970u) % 32u), var_1.b.x), ~vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 0u), _wgslsmith_add_u32(0u, 34739u)), var_1.c, ~vec4<i32>(global1.x, ~var_2.a.d.x, var_2.a.d.x, global2.x), !(!any(vec4<bool>(false, true, false, false)))), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = !(!(arg_0.a.c.x & false));
    var var_1 = 4583u;
    var_1 = ~select(func_3(Struct_1(~4294967295u, u_input.a, select(vec3<bool>(false, false, false), arg_0.a.c, false), abs(u_input.e), arg_1.x)).x, _wgslsmith_sub_u32(~(~arg_0.a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.b.x, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_0.a.b.x), vec2<u32>(9357u, 4153u)))), !arg_1.x);
    var var_2 = func_4(arg_1);
    var_2 = func_4(func_2());
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_5(func_4(func_2()), vec4<bool>(func_4(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))).a.e || (arg_0 != _wgslsmith_f_op_f32(-arg_0)), false, true, !all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    global0 = !(!any(select(vec4<bool>(var_0.a.e, true, var_0.a.e, var_0.a.c.x), vec4<bool>(false, false, var_0.a.e, true), vec4<bool>(var_0.a.e, var_0.a.c.x, true, true))) | var_0.a.e);
    global2 = select((global1.ww << (countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(9143u, 5722u), vec2<u32>(17739u, var_0.a.b.x))) % vec2<u32>(32u))) | ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), u_input.b)), global1.xy, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(272f, arg_0), -644f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 221f)))));
    let var_2 = var_0;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 602f))) * _wgslsmith_f_op_f32(f32(-1f) * -1182f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-377f, 374f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1084f, -461f, true)) + func_5(Struct_2(Struct_1(46358u, u_input.d.yz, vec3<bool>(false, false, false), u_input.e, false), 628f), vec4<bool>(false, false, true, true)).b)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b, var_0.b))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_0.b) - vec2<f32>(_wgslsmith_div_f32(1287f, var_0.b), _wgslsmith_f_op_f32(select(var_0.b, 654f, var_0.a.e)))))));
    var var_2 = vec4<i32>(~0i, -2147483647i, global2.x, func_1(_wgslsmith_f_op_f32(exp2(var_0.b))).d.x);
    let var_3 = func_4(select(!vec4<bool>(59020u <= var_0.a.b.x, var_1.x != -1251f, any(var_0.a.c), var_0.a.e), !select(!vec4<bool>(var_0.a.c.x, false, var_0.a.c.x, var_0.a.c.x), !vec4<bool>(var_0.a.e, false, false, false), var_0.a.c.x), !vec4<bool>(var_0.a.e, all(vec2<bool>(true, true)), false, var_0.a.e)));
    let var_4 = func_4(vec4<bool>(func_5(func_4(!vec4<bool>(var_0.a.e, var_0.a.e, var_3.a.c.x, var_0.a.e)), select(vec4<bool>(var_3.a.c.x, false, var_0.a.c.x, var_3.a.c.x), !vec4<bool>(false, var_0.a.c.x, true, false), func_2())).a.c.x, !all(vec3<bool>(var_3.a.e, false, var_0.a.c.x)), false, !var_0.a.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.d.zzy, vec2<i32>((-2147483647i & -global1.x) | 1i, var_3.a.d.x));
}

