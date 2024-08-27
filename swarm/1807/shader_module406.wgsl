struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(-1161f)), arg_0.b, !(!(!(!vec3<bool>(arg_0.c.x, true, true)))), abs(~arg_0.b) << (~41865u % 32u));
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_1(arg_0.a, 1i, vec3<bool>((~u_input.a | var_0.d) >= (abs(arg_0.d) & (i32(-1i) * -1i)), true, true), 1i);
    let var_1 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a * -524f))), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(sign(1f))), Struct_1(arg_0.a, _wgslsmith_clamp_i32(39410i, u_input.a, var_0.d), select(select(vec3<bool>(arg_0.c.x, false, true), vec3<bool>(var_0.c.x, arg_0.c.x, var_0.c.x), arg_0.c), vec3<bool>(true, arg_0.c.x, true), any(vec4<bool>(var_0.c.x, false, false, false))), -21608i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(241f, arg_0.a, -677f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(485f, -162f, -410f))) * vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(-var_0.a), arg_0.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(754f, var_0.a) + _wgslsmith_f_op_f32(select(arg_0.a, -185f, arg_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-619f))), _wgslsmith_f_op_f32(exp2(var_0.a)))), max(var_0.d, 2147483647i));
    return vec3<bool>(3203u < u_input.b.x, all(select(!(!vec4<bool>(false, true, arg_0.c.x, var_0.c.x)), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, var_1.a.b.c.x, var_0.c.x)) || var_1.a.b.c.x)), !arg_0.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = arg_2;
    let var_1 = !arg_0.c.xz;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, 979f, var_0.a, arg_0.a), vec4<f32>(var_0.a, var_0.a, var_0.a, arg_0.a), !vec4<bool>(true, arg_0.c.x, false, true)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1336f, -258f, var_0.a, -730f))), vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(var_0.a, 366f), _wgslsmith_f_op_f32(sign(arg_0.a)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(171f, -u_input.a, func_3(arg_0), _wgslsmith_add_i32(arg_0.b, arg_1)), ~firstLeadingBit(4294967295u), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2046f, var_0.a, var_0.a, -224f))), Struct_1(var_0.a, -2147483647i, vec3<bool>(false, var_0.c.x, arg_0.c.x), 4688i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) + vec2<f32>(arg_0.a, arg_0.a))))))));
    var_0 = arg_0;
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1067f), -39346i, !vec3<bool>(true, ~0u <= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 36074u, 23052u), vec4<u32>(21204u, 19931u, 16361u, 0u)), _wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_0.a, arg_1, vec3<bool>(arg_0.c.x, true, arg_0.c.x), arg_1), u_input.b.x, Struct_2(var_1, Struct_1(-1000f, var_0.d, var_0.c, 2147483647i)), var_1.zy)).x <= -496f), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, _wgslsmith_mult_i32(arg_1, _wgslsmith_add_i32(-19638i, 37332i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(arg_0.b, var_0.b)), firstTrailingBit(arg_1) ^ _wgslsmith_clamp_i32(arg_1, var_0.d, u_input.a)), -abs(vec4<i32>(1i, var_0.d, u_input.a, var_0.b)) >> (~abs(vec4<u32>(230u, 35615u, u_input.b.x, 55471u)) % vec4<u32>(32u))));
    var var_2 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)), arg_0);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_mult_u32(~(26484u | u_input.b.x), arg_2) ^ 28698u;
    let var_1 = arg_0.a.b;
    let var_2 = _wgslsmith_mult_i32(u_input.a << (1u % 32u), 10837i);
    let var_3 = 16853u;
    let var_4 = _wgslsmith_f_op_f32(-1000f * var_1.a);
    return false;
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = ~vec4<u32>(0u & (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 46102u, u_input.b.x, u_input.b.x), vec4<u32>(38589u, 94236u, 1u, arg_1)) ^ min(arg_1, 37503u)), arg_1, arg_1, arg_1);
    var var_1 = Struct_3(arg_2, arg_2.a.wxy, -abs(~(-1i >> (u_input.b.x % 32u))));
    var var_2 = false;
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a), _wgslsmith_f_op_vec4_f32(-var_1.a.a))), var_1.a.b), _wgslsmith_f_op_vec3_f32(arg_2.a.yyw + _wgslsmith_f_op_vec3_f32(-arg_2.a.yww)), 23496i);
    let var_3 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_1, 4294967295u, 62409u, u_input.b.x)), vec4<u32>(_wgslsmith_mod_u32(arg_1, var_0.x), arg_1 >> (arg_1 % 32u), 4294967295u, var_0.x)), ~(~(vec4<u32>(1u, arg_1, u_input.b.x, arg_1) << (vec4<u32>(64742u, var_0.x, var_0.x, arg_1) % vec4<u32>(32u)))));
    return Struct_1(407f, var_1.c, func_3(var_1.a.b), i32(-1i) * -14601i);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(~(i32(-1i) * -50772i) >> (u_input.b.x % 32u), ~(u_input.a >> ((u_input.b.x << (firstLeadingBit(u_input.b.x) % 32u)) % 32u)));
    var var_1 = func_6(!func_5(Struct_3(func_2(Struct_1(759f, 1i, vec3<bool>(false, false, true), var_0), 47394i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1139f, -1000f, 845f))), 6317i), _wgslsmith_div_u32(1u, 1u) >= ~u_input.b.x, abs(u_input.b.x ^ u_input.b.x)), ~u_input.b.x, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(477f * 997f), _wgslsmith_f_op_f32(1141f - 306f), 634f, _wgslsmith_f_op_f32(round(-1413f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, 222f, 1046f, -127f) - vec4<f32>(320f, -1318f, -957f, -544f)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(f32(-1f) * -254f))), select(u_input.a, -1i, u_input.b.x == u_input.b.x), func_3(Struct_1(1299f, u_input.a, vec3<bool>(false, true, false), var_0)), u_input.a)), _wgslsmith_sub_i32(1i, ~firstLeadingBit(_wgslsmith_clamp_i32(-29109i, 1i, u_input.a))));
    let var_2 = func_2(func_2(func_6(!any(vec4<bool>(false, var_1.c.x, true, true)), select(u_input.b.x, u_input.b.x, all(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_1.a, 1000f)), func_6(false, 441u, Struct_2(vec4<f32>(var_1.a, 109f, -1336f, -1000f), Struct_1(var_1.a, -1i, vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), var_0)), 0i)), 1i), ~(-(~(-80432i)))).b, -2147483647i).b;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_4(func_6(923f < var_2.a, ~23550u, Struct_2(vec4<f32>(var_2.a, 1709f, 100f, -758f), Struct_1(-377f, 1i, var_1.c, 1i)), 32657i ^ var_0), 422u, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, -307f, -600f, var_1.a)), var_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) * vec2<f32>(1780f, var_1.a)) + vec2<f32>(179f, var_2.a)))).x)), var_2.a));
    var var_4 = u_input.a;
    return Struct_3(func_2(Struct_1(var_3, var_2.d, func_3(func_2(var_2, 29075i).b), 1i), -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(-1000f, 491f, var_2.c.x))), _wgslsmith_f_op_vec4_f32(func_4(func_2(var_2, var_0).b, u_input.b.x, func_2(Struct_1(var_3, u_input.a, var_2.c, var_0), -41335i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, 995f), vec2<f32>(-104f, var_3), var_1.c.x)))).x, -2003f)), abs(-u_input.a | var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(644f, 521f))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1606f, _wgslsmith_div_f32(-1175f, 1597f))))), i32(-1i) * -func_6(func_5(var_0, var_0.a.b.c.x, 4294967295u), u_input.b.x, func_2(var_0.a.b, var_0.a.b.b), func_2(Struct_1(365f, 49498i, vec3<bool>(var_0.a.b.c.x, false, true), var_0.a.b.d), var_0.a.b.b).b.d).b, !(!vec3<bool>(true, true, all(var_0.a.b.c.zz))), u_input.a);
    var_1 = var_0.a.b;
    var_1 = var_0.a.b;
    let var_2 = true;
    var_1 = Struct_1(490f, _wgslsmith_mult_i32(9594i, max(2147483647i, u_input.a & 3617i)), !vec3<bool>(true || (u_input.b.x <= 40192u), var_2, true), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(all(var_1.c), _wgslsmith_sub_u32(0u, u_input.b.x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, var_0.b.x, var_0.a.b.a)), func_1().a.b), 1i).d);
}

