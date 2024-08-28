struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_mult_vec2_i32(~(~firstTrailingBit(vec2<i32>(1i, -15146i))), select(~(-u_input.c << (firstTrailingBit(vec2<u32>(70499u, 1u)) % vec2<u32>(32u))), select(vec2<i32>(abs(u_input.c.x), 20791i), firstLeadingBit(u_input.c) >> (arg_0.b % vec2<u32>(32u)), true), true));
    var var_0 = select(arg_0.e, vec2<bool>(all(vec4<bool>(true, !arg_0.d.x, arg_0.e.x, arg_0.d.x)), true), !arg_0.e);
    var_0 = select(vec2<bool>(true, true), vec2<bool>(select(select(true, arg_0.d.x, select(true, var_0.x, true)), arg_0.e.x & (34215u != u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(41145i, -8394i, u_input.c.x, -18090i), vec4<i32>(-8691i, -2147483647i, u_input.d.x, 30687i)) == u_input.c.x), all(select(!vec4<bool>(true, var_0.x, arg_0.e.x, false), !vec4<bool>(var_0.x, arg_0.d.x, true, true), true))), arg_0.d.x);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(98396u, arg_0.b.x, 88002u), ~vec3<u32>(u_input.b.x, 4294967295u, 17044u), min(vec3<u32>(u_input.b.x, u_input.e, 4294967295u), vec3<u32>(arg_0.a, u_input.b.x, arg_0.a))) << (~(~vec3<u32>(8029u, 117456u, 61337u)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(34361u, 4294967295u, 0u), vec3<u32>(u_input.e, u_input.e, arg_0.b.x)))), ~vec2<u32>(arg_0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, u_input.e, 13715u), vec3<u32>(u_input.b.x, 27297u, 29192u)), 4954u, ~4294967295u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2246f + -641f)), _wgslsmith_f_op_f32(abs(-1107f)), 1309f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.c, arg_0.c, true))), arg_0.c)))), !arg_0.e, !arg_0.e);
    return select(arg_0.d, !var_1.d, vec2<bool>(true, (!arg_0.e.x == !var_0.x) && false));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = !(!vec2<bool>(true, !(6954u <= u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-344f - -261f), 1f, var_0.x)))))) - -942f);
    let var_2 = Struct_2(var_1, Struct_1(_wgslsmith_add_u32(~u_input.b.x, abs(abs(0u))), vec2<u32>(u_input.e, ~min(u_input.e, 3792u)), vec3<f32>(var_1, 1620f, _wgslsmith_f_op_f32(832f * _wgslsmith_f_op_f32(var_1 + 371f))), func_3(Struct_1(4307u, u_input.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 1204f, var_1), vec3<f32>(706f, 1000f, -1450f), vec3<bool>(var_0.x, var_0.x, false))), !vec2<bool>(var_0.x, false), select(var_0, var_0, var_0.x))), var_0));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -516f), var_2.b);
    global0 = reverseBits(vec2<i32>(-12991i, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(18558i), countOneBits(arg_1.x)), select(vec2<i32>(-32506i, u_input.a.x), u_input.a, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))))));
    return var_3.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = !all(vec3<bool>(true, arg_1.b.d.x, all(!vec2<bool>(arg_1.b.e.x, arg_2.e.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(749f, _wgslsmith_f_op_f32(-arg_2.c.x), func_3(arg_1.b).x)), 266f, arg_1.b.c.x, _wgslsmith_f_op_f32(-arg_1.b.c.x));
    var var_2 = arg_1.b.a;
    var var_3 = countOneBits(select(arg_1.b.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_1.b.b, arg_2.b & arg_2.b), vec2<u32>(arg_1.b.b.x, u_input.e | arg_1.b.a)), arg_2.e.x));
    global0 = u_input.d.yy >> (~(~(~(~arg_2.b))) % vec2<u32>(32u));
    return _wgslsmith_mult_vec2_i32(vec2<i32>(~firstLeadingBit(-15944i), -16831i), vec2<i32>(~(min(global0.x, 1i) | (u_input.a.x & global0.x)), i32(-1i) * -global0.x));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    global0 = (u_input.d.zx | func_4(vec2<bool>(any(vec3<bool>(false, true, arg_3)), false), Struct_2(_wgslsmith_f_op_f32(func_2(vec4<i32>(arg_0, global0.x, 1i, -62322i), arg_2)), Struct_1(0u, vec2<u32>(69834u, 0u), vec3<f32>(1166f, -2488f, arg_1.x), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, true))), Struct_1(_wgslsmith_mult_u32(u_input.b.x, 53118u), u_input.b, _wgslsmith_f_op_vec3_f32(select(arg_1, vec3<f32>(arg_1.x, 1000f, -1000f), arg_3)), vec2<bool>(true, false), select(vec2<bool>(arg_3, arg_3), vec2<bool>(true, false), vec2<bool>(false, false))))) << (u_input.b % vec2<u32>(32u));
    global0 = arg_2.xw;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1127f - arg_1.x)))), Struct_1(4294967295u, u_input.b, vec3<f32>(941f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(round(arg_1.x))), select(!vec2<bool>(false, arg_3), !select(vec2<bool>(arg_3, arg_3), vec2<bool>(false, false), vec2<bool>(arg_3, false)), arg_3), select(vec2<bool>(true, true), vec2<bool>(arg_3, func_3(Struct_1(4294967295u, vec2<u32>(u_input.e, 0u), arg_1, vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3))).x), true)));
    let var_1 = Struct_1(_wgslsmith_sub_u32(0u, u_input.e & min(u_input.e, _wgslsmith_sub_u32(84527u, var_0.b.a))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1745f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-var_0.b.c))))), !vec2<bool>(!var_0.b.e.x, global0.x != -1i), !(!func_3(var_0.b)));
    var var_2 = var_0.b.c;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(444f, 162f), -856f, _wgslsmith_f_op_f32(f32(-1f) * -219f)))))), select(vec4<i32>(1i, -2147483647i, _wgslsmith_div_i32(global0.x, u_input.d.x), 1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, global0.x, global0.x), vec4<i32>(-1i, -1i, u_input.d.x, -2147483647i)), true) | _wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.c.x, global0.x, 2147483647i, global0.x)), -select(vec4<i32>(global0.x, 1i, -26534i, global0.x), vec4<i32>(u_input.a.x, u_input.a.x, -1i, -13496i), vec4<bool>(true, false, true, false))), false);
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 24380i), min(vec2<i32>(u_input.d.x, u_input.c.x), vec2<i32>(global0.x, 5976i))), -53156i), global0.x), -u_input.a);
    global0 = vec2<i32>(~4514i, min(global0.x, _wgslsmith_div_i32(~u_input.a.x ^ u_input.a.x, _wgslsmith_mult_i32(abs(-44341i), ~(-1i)))));
    let var_1 = select(!vec4<bool>(true, 14875u <= min(var_0.a, var_0.b.x), any(vec2<bool>(var_0.e.x, false)), true), vec4<bool>(true, u_input.b.x != ~_wgslsmith_sub_u32(16414u, 0u), var_0.e.x, func_3(func_1(~u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.c.x, -1755f) - var_0.c), vec4<i32>(global0.x, 15139i, u_input.a.x, u_input.c.x) << (vec4<u32>(5497u, u_input.e, 35582u, 1u) % vec4<u32>(32u)), any(vec3<bool>(true, var_0.e.x, true)))).x), select(vec4<bool>(all(select(vec3<bool>(false, var_0.e.x, var_0.d.x), vec3<bool>(false, true, false), var_0.e.x)), !var_0.e.x, !(var_0.c.x != 304f), any(var_0.e)), vec4<bool>(false, any(vec2<bool>(false, true)), true, var_0.e.x & (-1i != u_input.c.x)), all(!vec3<bool>(true, var_0.e.x, var_0.d.x))));
    let var_2 = Struct_2(var_0.c.x, var_0);
    var var_3 = vec3<u32>(~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 13796u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(var_2.b.b.x, u_input.e, u_input.b.x))), 1158u, 0u);
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 5391i), u_input.d.xz);
    var_3 = firstTrailingBit(countOneBits(~vec3<u32>(func_1(1i, vec3<f32>(var_2.a, 840f, 531f), vec4<i32>(53261i, u_input.a.x, -42134i, u_input.d.x), false).a, 1u, ~var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_2.b.b.x), -u_input.a.x, ~(~(~_wgslsmith_mult_u32(67894u, var_0.b.x))), _wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(0u, var_0.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, 4294967295u), vec2<u32>(var_2.b.a, var_2.b.a), var_3.xz)) ^ var_2.b.b);
}

