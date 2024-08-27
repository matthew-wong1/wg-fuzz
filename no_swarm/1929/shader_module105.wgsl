struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-292f, -1432f, 643f), Struct_1(false, vec3<f32>(-500f, -426f, -430f), -34579i, 1u), Struct_1(true, vec3<f32>(1207f, 392f, 1085f), 1i, 41641u));

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<i32>, 10>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(66262u, max(~u_input.a.x, u_input.b.x & 4294967295u)), 4294967295u, min(abs(_wgslsmith_clamp_u32(global0.b.d, u_input.b.x, 0u)), 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 62519u), ~(~u_input.b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, -258f, 346f))))))), global0.b, Struct_1(all(select(!vec4<bool>(arg_1.a, global0.b.a, global0.c.a, global0.b.a), select(vec4<bool>(arg_1.a, arg_1.a, false, global0.b.a), vec4<bool>(global0.c.a, arg_1.a, global0.c.a, global0.b.a), global0.b.a), global0.c.a)), _wgslsmith_f_op_vec3_f32(-arg_1.b), ~global1.x, ~(18655u << (~u_input.a.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-374f, 1571f) * _wgslsmith_f_op_f32(arg_2.x - -312f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) + var_0.b.b.x)));
    var var_2 = Struct_2(arg_1.b, arg_1, global0.b);
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(475f))))), -1208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - arg_1.b.x)), Struct_1(any(!(!vec4<bool>(false, var_2.c.a, global0.b.a, true))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.b.x), var_1)), arg_2.x, var_0.c.b.x), var_0.b.c, 1u), Struct_1(all(!select(vec4<bool>(true, false, false, var_0.c.a), vec4<bool>(var_2.c.a, arg_1.a, global0.c.a, true), vec4<bool>(arg_1.a, true, global0.b.a, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a.x + 989f), _wgslsmith_f_op_f32(f32(-1f) * -1117f), -580f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.b), _wgslsmith_f_op_vec3_f32(-arg_1.b), select(vec3<bool>(false, var_2.b.a, true), vec3<bool>(false, var_0.c.a, false), vec3<bool>(arg_1.a, var_2.c.a, true))))), firstLeadingBit(-46019i), 27416u));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-926f, 469f, global0.c.b.x)) - global0.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(157f, -493f, var_1) * vec3<f32>(-159f, 500f, -1122f)), vec3<f32>(1f, 1f, 1f))), select(select(!vec3<bool>(true, true, var_2.c.a), select(vec3<bool>(false, var_2.c.a, arg_1.a), vec3<bool>(arg_1.a, false, var_0.c.a), vec3<bool>(arg_1.a, arg_1.a, global0.c.a)), select(vec3<bool>(true, false, var_3.b.a), vec3<bool>(false, true, true), vec3<bool>(var_3.c.a, false, true))), select(select(vec3<bool>(false, var_3.b.a, true), vec3<bool>(var_2.c.a, false, var_0.c.a), vec3<bool>(var_0.b.a, true, var_0.c.a)), !vec3<bool>(global0.b.a, false, true), select(vec3<bool>(true, true, true), vec3<bool>(var_3.c.a, global0.b.a, global0.c.a), vec3<bool>(false, var_2.c.a, global0.c.a))), true))), arg_1, var_0.c);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1356f, -576f, -1000f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_2 {
    global0 = Struct_2(global0.b.b, arg_2, Struct_1(!arg_0.b.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-247f, 549f, -143f))), _wgslsmith_f_op_vec3_f32(max(arg_0.b.b, vec3<f32>(141f, arg_0.c.b.x, -537f))))), 21101i | u_input.c, arg_0.c.d));
    let var_0 = arg_0;
    var var_1 = ~reverseBits(~(select(vec2<u32>(7297u, 0u), vec2<u32>(4294967295u, 4294967295u), arg_0.c.a) ^ abs(vec2<u32>(global0.c.d, arg_0.c.d))));
    let var_2 = select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, 29831u, 33933u) << (~vec3<u32>(40911u, 31288u, global0.b.d) % vec3<u32>(32u)), vec3<u32>(max(43337u, global0.b.d) << (4294967295u % 32u), 0u >> (~var_1.x % 32u), max(~var_1.x, 4294967295u)), u_input.b), ~(~vec3<u32>(~global0.b.d, ~global0.b.d, arg_2.d)), all(vec4<bool>(false, false, global0.c.a, any(vec2<bool>(var_0.c.a, true)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, 527f, 1000f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-687f, global0.c.b.x, 925f) + _wgslsmith_f_op_vec3_f32(select(var_0.b.b, vec3<f32>(1802f, 465f, 536f), var_0.c.a)))))), Struct_1(select(false, !select(false, var_0.b.a, arg_0.b.a), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.b.b))) + arg_2.b), 8476i, ~0u), global0.b);
    return Struct_2(var_3.b.b, Struct_1(arg_0.c.a, _wgslsmith_f_op_vec3_f32(-arg_2.b), firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, ~(-11219i), abs(var_3.b.c))), u_input.a.x | 1u), var_0.c);
}

fn func_1() -> Struct_2 {
    var var_0 = -reverseBits(-(~(~global2[_wgslsmith_index_u32(1u, 10u)])));
    var_0 = _wgslsmith_mod_vec3_i32(~_wgslsmith_mult_vec3_i32(-global2[_wgslsmith_index_u32(global0.c.d >> (global0.c.d % 32u), 10u)], global2[_wgslsmith_index_u32(~u_input.b.x, 10u)]), -(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(121479u, 1u), vec2<u32>(u_input.b.x, 49621u)), u_input.b.zz ^ vec2<u32>(u_input.b.x, u_input.e)), 10u)]));
    global1 = var_0.yz;
    global0 = func_4(Struct_2(_wgslsmith_f_op_vec3_f32(func_3(~(~1u), Struct_1(true, vec3<f32>(2787f, 1121f, -109f), _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(global0.b.d, 10u)], global2[_wgslsmith_index_u32(0u, 10u)]), 63202u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1089f, 313f) * global0.c.b.zz))), func_2())), global0.b, global0.c), global2[_wgslsmith_index_u32(1u, 10u)], Struct_1(global0.b.a, _wgslsmith_f_op_vec3_f32(func_3(u_input.e ^ ~4294967295u, global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(75858u, global0.c, vec2<f32>(-103f, global0.a.x), 14836u)).yx), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 20558u, u_input.b.x, global0.b.d), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.c.d, 1u, 0u, 0u), vec4<u32>(u_input.a.x, u_input.b.x, global0.b.d, 49481u))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, global1.x), vec2<i32>(global0.b.c, global0.b.c), vec2<i32>(u_input.d, 11454i)) ^ ~var_0.yy, vec2<i32>(u_input.d, abs(-35718i))), min(4294967295u | u_input.b.x, u_input.e | global0.b.d) << (u_input.a.x % 32u)));
    global1 = _wgslsmith_add_vec2_i32(-abs(max(vec2<i32>(121762i, -2147483647i), -var_0.xy)), min(var_0.xy, select(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.c, var_0.x), vec2<i32>(global0.b.c, 26326i)), -var_0.yy, !vec2<bool>(global0.c.a, global0.b.a)) << (~select(u_input.a.xz, u_input.b.yy, false) % vec2<u32>(32u))));
    return func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.b.b.x)), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(331f * 1367f))), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, 2145f, global0.a.x)), _wgslsmith_add_i32(18428i, 0i), 1u), func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, 359f, global0.b.b.x)), Struct_1(false, global0.b.b, global0.b.c, global0.c.d), global0.c), -min(vec3<i32>(-40264i, var_0.x, var_0.x), vec3<i32>(2147483647i, global0.b.c, global0.b.c)), Struct_1(false, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1376f, -1228f, global0.b.b.x) * global0.b.b), ~var_0.x, u_input.b.x)).b), abs(vec3<i32>(_wgslsmith_sub_i32(1i, -1703i >> (u_input.e % 32u)), global1.x, -2147483647i)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1801f;
    let var_1 = !(!(!(!global0.c.a)) & false);
    let var_2 = func_1();
    let var_3 = abs((~(-vec4<i32>(u_input.d, -1i, 2147483647i, -1i)) << (~vec4<u32>(global0.b.d, u_input.a.x, var_2.c.d, u_input.e) % vec4<u32>(32u))) << (~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global0.c.d, global0.b.d), vec4<u32>(global0.b.d, 0u, u_input.b.x, 5018u))) % vec4<u32>(32u)));
    global2 = array<vec3<i32>, 10>();
    global2 = array<vec3<i32>, 10>();
    var var_4 = select(~select(firstTrailingBit(~vec3<i32>(var_3.x, u_input.d, var_3.x)), ~(~global2[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(all(vec3<bool>(false, false, true)), var_2.b.a, global0.c.d >= global0.c.d)), var_3.wxz, select(true & (global0.c.b.x >= var_2.b.b.x), true, var_2.b.a) | true);
    let var_5 = _wgslsmith_f_op_vec3_f32(-global0.b.b);
    var_0 = _wgslsmith_f_op_f32(global0.b.b.x * _wgslsmith_div_f32(var_2.c.b.x, -652f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-global1.x, _wgslsmith_mod_i32(u_input.d, -23676i), firstTrailingBit(u_input.c)), 46686i)), 1358f);
}

