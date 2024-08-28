struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21>;

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-282f, -1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.d, 1u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.d) + _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_f32(-arg_0.d)), countOneBits(~1038u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.d))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.b) + -895f))), 23907u);
    global0 = array<vec4<bool>, 21>();
    var var_1 = reverseBits(u_input.e);
    let var_2 = var_0.a;
    var_1 = _wgslsmith_clamp_i32(u_input.b, i32(-1i) * -_wgslsmith_mult_i32(~(-2147483647i), u_input.e), 1i);
    return ~_wgslsmith_mod_vec3_i32(-u_input.a, u_input.a);
}

fn func_3(arg_0: Struct_4) -> bool {
    global1 = array<vec2<f32>, 1>();
    var var_0 = !all(!global0[_wgslsmith_index_u32(u_input.c.x, 21u)]);
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let var_1 = Struct_3(~u_input.c, false, ~_wgslsmith_add_u32(arg_0.a.c, u_input.c.x));
    return var_1.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<bool>) -> vec2<f32> {
    global0 = array<vec4<bool>, 21>();
    var var_0 = Struct_3(~vec3<u32>(~(~u_input.c.x), ~15075u ^ u_input.d, ~(~1u)), arg_2.x, ~_wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(u_input.d, u_input.c.x, u_input.c.x))), u_input.c));
    global0 = array<vec4<bool>, 21>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2276f, 1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(805f, 200f))))), _wgslsmith_sub_u32(var_0.a.x, 49652u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(795f + -743f) * _wgslsmith_f_op_f32(f32(-1f) * -1032f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -208f))))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1458f, 1000f))))), global1[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)), any(!vec3<bool>(arg_2.x, true, arg_2.x)))), ~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2371f)))))), -16748i);
    var var_2 = _wgslsmith_clamp_u32(~reverseBits(_wgslsmith_mult_u32(var_1.a.c, var_0.c >> (var_1.a.c % 32u))), max(_wgslsmith_sub_u32(~81289u, _wgslsmith_add_u32(var_1.a.c, ~25718u)), u_input.d), var_1.b.c);
    return var_1.b.a;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_3 {
    global0 = array<vec4<bool>, 21>();
    global1 = array<vec2<f32>, 1>();
    let var_0 = ~_wgslsmith_sub_vec2_i32(~(-u_input.a.zx), u_input.a.zx);
    global0 = array<vec4<bool>, 21>();
    let var_1 = Struct_4(Struct_1(arg_0, 232f, 0u, 1000f), 0u);
    return Struct_3(u_input.c, ~var_0.x < u_input.a.x, 0u);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(func_4(~select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.e, u_input.b), u_input.a, u_input.a), func_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 1u)], -530f, u_input.d, -757f), 4294967295u, Struct_3(vec3<u32>(27037u, 103310u, 0u), false, u_input.d)), true), u_input.e, select(vec4<bool>(true, true, true, func_3(Struct_4(Struct_1(vec2<f32>(668f, 1342f), -1227f, 47524u, 1045f), u_input.d))), global0[_wgslsmith_index_u32(24117u, 21u)], true))), Struct_3(max(~firstLeadingBit(vec3<u32>(0u, u_input.c.x, u_input.d)), u_input.c), all(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.d, u_input.c.x), vec4<u32>(16024u, u_input.c.x, u_input.d, 16625u)), vec4<u32>(u_input.d, 0u, 54765u, u_input.d)), reverseBits(vec4<u32>(u_input.d, u_input.d, u_input.c.x, 28026u)))));
    global0 = array<vec4<bool>, 21>();
    global0 = array<vec4<bool>, 21>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(1u, 1u)]))))));
    global0 = array<vec4<bool>, 21>();
    return var_0;
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    var var_0 = -15992i;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.a, u_input.a), vec3<i32>(-39236i >> (arg_3.c % 32u), _wgslsmith_mod_i32(49434i, u_input.b), reverseBits(u_input.a.x))), firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 4901i)) ^ vec3<i32>(2147483647i, -1i, u_input.e))), -u_input.b, !select(!select(vec4<bool>(arg_2.x, arg_0.x, false, true), arg_2, arg_2), vec4<bool>(u_input.a.x < -18028i, arg_2.x || true, arg_1 >= arg_1, !arg_3.b), true))).x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u, 1u)])) + global1[_wgslsmith_index_u32(arg_3.c, 1u)]), _wgslsmith_f_op_f32(max(arg_1, arg_1)), ~_wgslsmith_mult_u32(~26741u, ~u_input.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-804f * 1034f), _wgslsmith_f_op_f32(-arg_1))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1139f, arg_1), global1[_wgslsmith_index_u32(max(0u, u_input.d), 1u)])), _wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_dot_vec2_u32(arg_3.a.xx, vec2<u32>(~arg_3.c, countOneBits(arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), u_input.b);
    global1 = array<vec2<f32>, 1>();
    var_0 = -(firstTrailingBit(abs(u_input.a.x) ^ ~2147483647i) << (1u % 32u));
    return 488f;
}

fn func_7(arg_0: i32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_3.x;
    var var_1 = -1297f;
    let var_2 = Struct_4(Struct_1(global1[_wgslsmith_index_u32(3340u, 1u)], var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.c.x, u_input.c.x, 1u), vec4<u32>(arg_2, 1u, 1u, arg_2)), abs(4294967295u), u_input.c.x), func_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 4294967295u), 1u)], func_5(vec2<f32>(-1000f, arg_3.x), Struct_3(u_input.c, arg_1.x, 1u))).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + arg_3.x))))), ~(~76562u));
    var var_3 = all(vec2<bool>(true, any(vec4<bool>(true, arg_1.x, false, true))));
    let var_4 = vec2<u32>(reverseBits(reverseBits(36166u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.c.x), firstTrailingBit(46772u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    let var_0 = _wgslsmith_f_op_f32(func_7(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e, u_input.a.x), _wgslsmith_sub_i32(firstTrailingBit(31825i), -19611i) | max(0i, u_input.e)), global0[_wgslsmith_index_u32(u_input.c.x, 21u)], 0u, vec4<f32>(-1002f, _wgslsmith_f_op_f32(-1637f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1659f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -195f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), 1000f, global0[_wgslsmith_index_u32(4294967295u, 21u)], func_1())) - _wgslsmith_f_op_f32(f32(-1f) * -775f)))));
    global1 = array<vec2<f32>, 1>();
    var var_1 = vec3<i32>(u_input.b, func_2(Struct_1(vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1292f)), _wgslsmith_f_op_f32(f32(-1f) * -612f), _wgslsmith_mult_u32(~u_input.d, 34418u), -965f), 11207u, func_5(_wgslsmith_f_op_vec2_f32(func_4(vec3<i32>(-18894i, 1i, u_input.a.x), _wgslsmith_sub_i32(-43158i, u_input.e), global0[_wgslsmith_index_u32(4294967295u, 21u)])), func_1())).x, 0i);
    let var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) * 177f))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(990f + 266f)))) - _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1604f) - _wgslsmith_f_op_f32(-var_0)))));
    var_3 = vec3<f32>(1009f, -517f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))));
    let var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-2048f, 423f, false || select(func_5(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], Struct_3(u_input.c, var_2.x, u_input.d)).b, any(var_2), var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1915f, var_0, _wgslsmith_f_op_vec2_f32(func_4(u_input.a, func_2(Struct_1(vec2<f32>(-771f, var_0), -124f, 0u, -1490f), 68932u, Struct_3(vec3<u32>(u_input.c.x, u_input.c.x, 86933u), var_2.x, 35242u)).x, global0[_wgslsmith_index_u32(func_5(var_3.xz, Struct_3(u_input.c, false, 0u)).c, 21u)])).x) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1850f)), _wgslsmith_f_op_f32(trunc(1318f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1200f * var_0)))));
}

