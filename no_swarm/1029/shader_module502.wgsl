struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-411f, 390f, -877f), vec3<f32>(-129f, -248f, -669f), vec3<f32>(1172f, -1183f, -316f), vec3<f32>(-1016f, 1057f, 823f), vec3<f32>(1528f, -1241f, -1545f), vec3<f32>(253f, -235f, -1981f), vec3<f32>(541f, -1357f, 138f), vec3<f32>(-678f, -478f, -471f), vec3<f32>(442f, -1099f, -1263f), vec3<f32>(121f, 204f, -2027f), vec3<f32>(-1380f, -1826f, -991f), vec3<f32>(-1706f, -610f, -1621f), vec3<f32>(1000f, 795f, -1216f), vec3<f32>(-497f, 1245f, 106f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = array<f32, 29>();
    global1 = array<vec3<f32>, 14>();
    global1 = array<vec3<f32>, 14>();
    var var_0 = Struct_1(-1i, !(!select(vec4<bool>(arg_2.b.x, true, arg_2.b.x, true), !vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, arg_2.b.x), arg_2.a < arg_2.a)), global0[_wgslsmith_index_u32(arg_2.d, 29u)], 4418u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1369f)))) - arg_2.c), _wgslsmith_f_op_f32(-1090f * arg_2.e.x)));
    let var_1 = Struct_1(max(arg_0.x, -(-44050i ^ abs(arg_2.a))), vec4<bool>(any(vec4<bool>(any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, arg_2.b.x)), !arg_2.b.x, true, !arg_2.b.x)), select(!var_0.b.x, all(select(vec4<bool>(false, arg_2.b.x, false, var_0.b.x), arg_2.b, true)), arg_2.b.x), any(!vec3<bool>(false, false, arg_2.b.x)), arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -498f), 0u, var_0.e);
    return _wgslsmith_dot_vec2_u32(~((vec2<u32>(4294967295u, arg_1) << (vec2<u32>(arg_1, arg_2.d) % vec2<u32>(32u))) >> (~vec2<u32>(var_1.d, 4294967295u) % vec2<u32>(32u))) & (abs(_wgslsmith_add_vec2_u32(vec2<u32>(8478u, 37972u), vec2<u32>(var_0.d, 20186u))) >> (((vec2<u32>(var_1.d, 1u) >> (vec2<u32>(arg_1, var_0.d) % vec2<u32>(32u))) << (vec2<u32>(arg_1, var_1.d) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(1u, 4294967295u));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(arg_0.d, _wgslsmith_div_u32(0u, arg_0.d));
    let var_1 = vec3<bool>(arg_0.b.x, true, true);
    let var_2 = arg_0;
    global0 = array<f32, 29>();
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(-vec4<i32>(14301i, var_2.a, 27078i, u_input.a), 9281u | var_0.x, Struct_1(var_2.a, var_2.b, var_2.c, 1u, vec2<f32>(304f, var_2.c))), 0u) >> ((~abs(vec2<u32>(var_2.d, 48021u)) | _wgslsmith_clamp_vec2_u32(~var_0, var_0, ~vec2<u32>(1u, var_2.d))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_0, firstLeadingBit(vec2<u32>(var_0.x, ~26668u))));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    global1 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_f_op_f32(min(1133f, arg_2.c));
    var var_1 = all(arg_1);
    var_1 = true;
    global1 = array<vec3<f32>, 14>();
    return ~((vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(98148u, 48570u, 37099u), vec3<u32>(arg_2.d, 9339u, 4294967295u)), _wgslsmith_mult_u32(29540u, 30559u)) >> (abs(~vec2<u32>(4294967295u, 96790u)) % vec2<u32>(32u))) | vec2<u32>(1u, arg_2.d));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(765f, global0[_wgslsmith_index_u32(1u, 29u)], -1427f, global0[_wgslsmith_index_u32(4294967295u, 29u)]) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], -1646f, -256f, 115f)), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 893f, global0[_wgslsmith_index_u32(arg_1.x, 29u)], -1115f), vec4<bool>(false, arg_2.x, arg_2.x, true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)], -221f, -686f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(42780u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)], -390f) - vec4<f32>(912f, global0[_wgslsmith_index_u32(54077u, 29u)], 109f, global0[_wgslsmith_index_u32(4294967295u, 29u)])))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-974f, 454f))) * -942f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-628f)), _wgslsmith_f_op_f32(min(-1000f, 356f)))) * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_1.x, 29u)], _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(arg_1.x, 29u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1236f))), func_2(func_2(func_2(Struct_1(61024i, vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(arg_1.x, 29u)], arg_1.x, vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(9704u, 29u)]))))).e.x));
    let var_1 = arg_3;
    let var_2 = ~abs(u_input.a);
    let var_3 = Struct_1(u_input.a, select(func_2(Struct_1(~19551i, select(vec4<bool>(false, arg_3, var_1, var_1), vec4<bool>(arg_3, true, arg_2.x, false), vec4<bool>(false, true, var_1, false)), _wgslsmith_f_op_f32(exp2(var_0.x)), ~arg_1.x, _wgslsmith_f_op_vec2_f32(-var_0.ww))).b, func_2(Struct_1(~arg_0.x, !vec4<bool>(true, arg_2.x, var_1, true), -130f, arg_1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global0[_wgslsmith_index_u32(arg_1.x, 29u)]) * vec2<f32>(var_0.x, 1000f)))).b, !all(!vec4<bool>(var_1, arg_2.x, var_1, true))), 1986f, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xw)));
    global1 = array<vec3<f32>, 14>();
    return func_2(var_3);
}

fn func_1() -> Struct_1 {
    var var_0 = func_5((firstLeadingBit(vec2<i32>(u_input.a, u_input.a)) << (func_4(firstTrailingBit(u_input.a), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), func_2(Struct_1(-2147483647i, vec4<bool>(true, false, true, false), -1933f, 47309u, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)])))) % vec2<u32>(32u))) << (abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), ~min(vec3<u32>(4294967295u, 19420u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, 1u, 1u)), func_2(func_2(Struct_1(53666i ^ u_input.a, vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(69001u, 0u), vec2<u32>(0u, 4294967295u)), 29u)], 53387u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1107f, -808f), vec2<f32>(-850f, global0[_wgslsmith_index_u32(56749u, 29u)])))))).b.wz, func_2(Struct_1(-u_input.a, vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(-740f + global0[_wgslsmith_index_u32(0u, 29u)]), ~1u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec2<f32>(global0[_wgslsmith_index_u32(23128u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<bool>(false, true))))).b.x || true);
    return func_5(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-(~vec2<i32>(-16321i, -51759i)), ~(vec2<i32>(u_input.a, var_0.a) ^ vec2<i32>(-5023i, var_0.a))), vec2<i32>(u_input.a, ~(-20131i))), abs(~(~vec3<u32>(var_0.d, 8711u, var_0.d)) ^ select(vec3<u32>(var_0.d, var_0.d, var_0.d) & vec3<u32>(1u, var_0.d, 26180u), abs(vec3<u32>(4294967295u, 0u, 4294967295u)), var_0.b.wzy)), func_2(Struct_1(u_input.a, !(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x)), 226f, countOneBits(_wgslsmith_clamp_u32(0u, var_0.d, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(573f, 1464f) + var_0.e) + _wgslsmith_f_op_vec2_f32(vec2<f32>(253f, -682f) + var_0.e)))).b.wz, func_5(vec2<i32>(-2115i, 0i), vec3<u32>(var_0.d, ~func_4(var_0.a, var_0.b, Struct_1(-59140i, vec4<bool>(false, true, var_0.b.x, false), 461f, 8425u, vec2<f32>(var_0.c, var_0.e.x))).x, var_0.d), vec2<bool>(true, select(select(var_0.b.x, true, false), select(false, var_0.b.x, var_0.b.x), true)), var_0.b.x).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 14>();
    var var_0 = func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - 1000f)) - -910f)), var_0.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_add_u32(20882u, func_2(Struct_1(var_0.a, vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), -414f, var_0.d, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]))).d), 29u)]), -1543f);
    let var_2 = global0[_wgslsmith_index_u32(~(~(~(~(~0u)))), 29u)];
    let var_3 = ~vec4<u32>(~4294967295u, 1u, abs(11732u << (1u % 32u)), 10552u);
    var var_4 = vec3<bool>(true, func_2(Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 40209i), vec2<i32>(u_input.a, -2147483647i)), vec4<bool>(true, true, var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(min(-220f, 769f))), _wgslsmith_add_u32(~var_0.d, 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-687f, 765f))) + vec2<f32>(2550f, -946f)))).b.x, select(((var_0.b.x & false) && true) && !func_1().b.x, true, true));
    let var_5 = func_2(func_5(min(-(vec2<i32>(-31692i, 2147483647i) & vec2<i32>(var_0.a, 12045i)), ~select(vec2<i32>(u_input.a, var_0.a), vec2<i32>(-2147483647i, 8922i), true)), vec3<u32>(var_3.x, var_0.d, ~var_0.d), !func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, 14433i), vec2<i32>(u_input.a, 29322i)), vec3<u32>(var_3.x, 0u, 21535u), vec2<bool>(false, true), !var_0.b.x).b.yx, true));
    global1 = array<vec3<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.zxy), countOneBits(reverseBits(var_3.xzy)), var_3.x, max(select(func_4(var_0.a, vec4<bool>(var_4.x, false, var_4.x, true), var_5) << (vec2<u32>(var_0.d, var_0.d) % vec2<u32>(32u)), vec2<u32>(func_2(Struct_1(26850i, vec4<bool>(false, var_4.x, var_4.x, true), var_1.x, 54699u, var_5.e)).d, var_0.d), func_1().b.xx), vec2<u32>(~reverseBits(var_3.x), max(~0u, 1u))));
}

