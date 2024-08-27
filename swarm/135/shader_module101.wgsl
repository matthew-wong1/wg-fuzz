struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(1i, vec4<bool>(false, true, false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> bool {
    global1 = Struct_1(-1i, !(!select(vec4<bool>(true, false, true, true), !global2.b, false)));
    global2 = Struct_1(-33885i, select(global2.b, !global2.b, arg_0.a.b.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b, arg_0.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-971f, arg_0.b.x) - vec2<f32>(1133f, -767f))))));
    global1 = arg_2;
    global1 = Struct_1(~select(-firstTrailingBit(u_input.e), ~abs(0i), arg_0.b.x >= -704f), select(!select(arg_0.a.b, vec4<bool>(true, true, global2.b.x, true), true), select(!select(vec4<bool>(global2.b.x, false, false, arg_1), vec4<bool>(global2.b.x, global1.b.x, arg_2.b.x, global1.b.x), false), arg_2.b, vec4<bool>(arg_2.b.x, arg_2.b.x, true, false)), arg_2.b.x));
    return !any(arg_0.a.b) == true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec3<i32> {
    global1 = arg_0;
    global0 = array<u32, 20>();
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(countOneBits(select(4294967295u, 4294967295u, true)), 1u), _wgslsmith_add_u32(0u, 30016u) << (firstTrailingBit(u_input.d.x & global0[_wgslsmith_index_u32(0u, 20u)]) % 32u));
    var var_1 = ~min(u_input.e, global2.a);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1594f), _wgslsmith_f_op_f32(2132f + _wgslsmith_f_op_f32(-1991f - 1250f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-201f))), _wgslsmith_f_op_f32(floor(-1219f))))), !any(vec3<bool>(!global1.b.x, !global2.b.x, true))));
    return _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(2147483647i, arg_1.a, global2.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-global2.a, arg_1.a, 44676i), vec3<i32>(arg_1.a, arg_1.a & u_input.a, ~(-1i)))), _wgslsmith_mod_vec3_i32(vec3<i32>(11197i, arg_1.a, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, -16147i, u_input.e, 3691i), vec4<i32>(-1i, u_input.e, -1i, global1.a), arg_1.b), min(vec4<i32>(arg_1.a, global2.a, u_input.e, 2147483647i), vec4<i32>(global1.a, 2943i, 1i, global2.a)))), vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2381i), vec2<i32>(-15484i, u_input.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(0i, -53807i)), firstTrailingBit(i32(-1i) * -36999i))));
}

fn func_2() -> vec4<f32> {
    var var_0 = func_4(Struct_1(abs(global2.a), global1.b), Struct_1(u_input.e, vec4<bool>(true, true, func_3(Struct_2(Struct_1(global1.a, vec4<bool>(false, global1.b.x, false, true)), vec2<f32>(-1476f, -752f), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.b.x, 4294967295u), global1.b.zy), true, Struct_1(35380i, vec4<bool>(false, true, global1.b.x, global1.b.x))), any(vec2<bool>(true, global1.b.x)))), true) << (vec3<u32>(u_input.d.x, abs(~4294967295u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~0u, 20u)], 20u)]) % vec3<u32>(32u));
    let var_1 = -2147483647i;
    global0 = array<u32, 20>();
    var var_2 = Struct_2(Struct_1(global2.a, global1.b), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1103f), vec2<f32>(-1534f, 1344f)))))), u_input.d.yxw, global2.b.ww);
    let var_3 = !(!(!(!vec3<bool>(true, global1.b.x, global2.b.x))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, var_2.b.x, var_2.b.x, 711f)), vec4<f32>(var_2.b.x, -1911f, var_2.b.x, var_2.b.x), var_2.b.x >= var_2.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, 1384f, var_2.b.x, -294f), vec4<f32>(1830f, 347f, var_2.b.x, 352f), global1.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, -1000f) + vec4<f32>(533f, var_2.b.x, -1465f, var_2.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.b.x, var_2.b.x, -313f), vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-551f, var_2.b.x, -1273f, 1498f), vec4<f32>(129f, 832f, -893f, -195f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x) * vec4<f32>(var_2.b.x, -198f, 995f, var_2.b.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1244f, -1086f)), _wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(floor(var_2.b.x)), 498f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-428f, 1297f, 216f, 1660f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1519f, var_2.b.x, var_2.b.x, var_2.b.x), vec4<f32>(var_2.b.x, var_2.b.x, -341f, var_2.b.x)))), global2.b)), 2915u == u_input.d.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -arg_0, min(vec3<i32>(arg_1.a, 24507i, -1i), vec3<i32>(global1.a, 0i, 3494i) & arg_0)), select(!select(arg_3.b, vec4<bool>(false, false, arg_1.b.x, arg_1.b.x), false), select(!vec4<bool>(arg_2, true, arg_3.b.x, true), global2.b, arg_1.b), global2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), 617f) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1237f, -803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1165f)))), u_input.b, vec2<bool>(-202f != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(662f + -718f), _wgslsmith_f_op_f32(select(-817f, -507f, true)), false)), false));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, var_0.b.x, 3021f, 545f)) - vec4<f32>(var_1.b.x, 846f, var_1.b.x, 168f)))) + _wgslsmith_f_op_vec4_f32(func_2())));
    global1 = var_1.a;
    var var_3 = ~var_1.c.x;
    return Struct_2(arg_3, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-116f)), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_vec4_f32(func_2()).xy, all(select(global2.b.zy, vec2<bool>(arg_3.b.x, var_0.d.x), all(vec4<bool>(arg_2, true, var_0.a.b.x, var_0.d.x)))))), firstTrailingBit(~(~(vec3<u32>(var_1.c.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)]) << (var_0.c % vec3<u32>(32u))))), select(var_0.a.b.yy, !(!(!var_0.a.b.xw)), vec2<bool>(!(arg_2 && arg_3.b.x), global2.b.x)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> Struct_2 {
    global2 = arg_0.a;
    let var_0 = arg_0.a;
    global2 = Struct_1(-8021i, global1.b);
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(floor(-950f)), _wgslsmith_div_f32(-1128f, _wgslsmith_div_f32(340f, 459f))))), ~select(vec3<u32>(_wgslsmith_clamp_u32(arg_1, 71285u, 40004u), 1u, ~u_input.b.x), u_input.d.zyz, !select(vec3<bool>(true, false, true), global1.b.yzw, var_0.b.zyz)), vec2<bool>(all(global2.b), !any(var_0.b.ww)));
    let var_2 = Struct_1(u_input.a, vec4<bool>(all(func_1(vec3<i32>(48946i, var_1.a.a, var_1.a.a), func_1(vec3<i32>(var_0.a, u_input.e, 17363i), Struct_1(18651i, global2.b), true, Struct_1(global2.a, vec4<bool>(var_0.b.x, true, true, global1.b.x))).a, all(vec4<bool>(var_0.b.x, arg_0.a.b.x, global1.b.x, false)), func_1(vec3<i32>(-4182i, 2239i, 20283i), Struct_1(arg_0.a.a, global2.b), global2.b.x, arg_0.a).a).d), arg_0.a.b.x, 1u != _wgslsmith_sub_u32(~44006u, arg_0.c.x), any(vec2<bool>(select(var_0.b.x, false, true), func_3(Struct_2(Struct_1(45755i, var_1.a.b), arg_0.b, vec3<u32>(global0[_wgslsmith_index_u32(arg_0.c.x, 20u)], arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec2<bool>(arg_0.a.b.x, global2.b.x)), false, var_0)))));
    return Struct_2(func_1(vec3<i32>(~(-1i), var_1.a.a ^ var_1.a.a, global1.a ^ 1i) << (vec3<u32>(abs(0u), 4294967295u, _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(arg_1, 20u)])) % vec3<u32>(32u)), var_1.a, 69824i > (~var_1.a.a >> (arg_1 % 32u)), Struct_1(func_1(vec3<i32>(-20124i, arg_0.a.a, 1i), var_1.a, false, Struct_1(u_input.a, vec4<bool>(false, true, false, false))).a.a << (69747u % 32u), select(func_1(vec3<i32>(u_input.a, u_input.e, -10995i), arg_0.a, arg_0.d.x, var_2).a.b, vec4<bool>(false, false, var_2.b.x, var_2.b.x), global1.b.x))).a, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.zx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -1000f)) - arg_0.b)), vec2<f32>(-637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), arg_0.c, vec2<bool>(var_2.b.x, (~var_0.a < _wgslsmith_add_i32(2147483647i, u_input.a)) & ((arg_2.x == -273f) & true)));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> i32 {
    global1 = Struct_1(-14358i, vec4<bool>(arg_0.d.x, false, (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) < min(1u, 45315u)) | true, global1.b.x));
    var var_0 = arg_0.b;
    global1 = func_5(arg_0, ~global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(arg_0.c.x, ~4294967295u, u_input.b.x)), 20u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * vec4<f32>(var_0.x, -1000f, -612f, -200f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_0.b.x, arg_1, -661f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2227f, arg_0.b.x, var_0.x, arg_1))))))).a;
    let var_1 = !arg_0.d.x;
    global0 = array<u32, 20>();
    return func_1(~_wgslsmith_add_vec3_i32(-vec3<i32>(66596i, global1.a, global2.a), vec3<i32>(2147483647i, u_input.e, 2147483647i) >> (arg_0.c % vec3<u32>(32u))) & -abs(vec3<i32>(-1i, -94895i, global1.a)), Struct_1(-2147483647i, !global1.b), !all(!global2.b) | any(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(35079i, -6990i, global1.a), vec3<i32>(-1i, u_input.e, global2.a)), arg_0.a, all(vec4<bool>(true, var_1, global1.b.x, false)), arg_0.a).d), func_1(firstLeadingBit(_wgslsmith_div_vec3_i32(min(vec3<i32>(2147483647i, 36897i, 64468i), vec3<i32>(global2.a, 31714i, 46915i)), abs(vec3<i32>(-1i, 2147483647i, 1i)))), Struct_1(select(_wgslsmith_div_i32(u_input.e, -2147483647i), ~2147483647i, arg_0.a.b.x), func_5(func_1(vec3<i32>(global1.a, arg_0.a.a, 28585i), arg_0.a, false, Struct_1(u_input.e, arg_0.a.b)), ~global0[_wgslsmith_index_u32(u_input.d.x, 20u)], vec4<f32>(var_0.x, 475f, arg_1, 1278f)).a.b), !all(func_5(arg_0, 16944u, vec4<f32>(789f, 980f, 701f, 446f)).a.b.zy), Struct_1(2147483647i, vec4<bool>(all(vec4<bool>(var_1, var_1, false, arg_0.a.b.x)), 0u < u_input.b.x, global2.a != global1.a, all(vec4<bool>(true, true, true, true))))).a).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(-10486i), global2.b);
    let var_1 = _wgslsmith_sub_i32(abs(func_6(func_5(func_1(vec3<i32>(global2.a, u_input.e, 20261i), Struct_1(1i, global1.b), true, var_0), ~u_input.d.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, 325f, 1000f, -1000f))), 1f)), var_0.a);
    global0 = array<u32, 20>();
    var var_2 = _wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(~62169u, firstLeadingBit(0u), ~0u)), ~(global0[_wgslsmith_index_u32(~firstTrailingBit(56387u), 20u)] >> (reverseBits(~0u) % 32u)));
    let var_3 = ~vec2<u32>(u_input.d.x, 92325u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.b.x, 31821u), _wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a), 0i, _wgslsmith_sub_i32(0i, global1.a), ~abs(45661i)), abs(vec4<i32>(41305i, _wgslsmith_clamp_i32(global1.a, 0i, 1i), i32(-1i) * -1i, global1.a))), var_3, select(10226u, _wgslsmith_div_u32(10284u, 4294967295u), global2.b.x), _wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, -1i, _wgslsmith_add_i32(u_input.e, var_1), _wgslsmith_mult_i32(var_0.a, var_0.a)), vec4<i32>(global1.a, global1.a << (0u % 32u), -1i, global2.a & 17891i) >> (~(~u_input.d) % vec4<u32>(32u))));
}

