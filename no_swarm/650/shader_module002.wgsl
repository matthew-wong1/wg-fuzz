struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 17> = array<f32, 17>(1598f, 1336f, -1302f, -2456f, 844f, -1000f, 265f, -791f, 1046f, -608f, -277f, -1305f, 1288f, -505f, -356f, -984f, 1109f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    let var_0 = -countOneBits(vec2<i32>(_wgslsmith_clamp_i32(-14073i, u_input.b, -4393i), -11115i));
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.b.x, arg_1.b.x)))), 402f, 117f)));
    global1 = array<f32, 17>();
    global1 = array<f32, 17>();
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, -500f, -1672f, arg_0) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-477f, global1[_wgslsmith_index_u32(0u, 17u)], arg_2.b.x, var_2.b.x), var_2.a.b))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-257f, -214f)) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 17u)], -1494f)), 391f, -490f))));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -838f)), Struct_3(Struct_1(true, vec4<f32>(-505f, 1000f, -1287f, global1[_wgslsmith_index_u32(0u, 17u)]), false, 0u), vec4<f32>(global1[_wgslsmith_index_u32(4756u, 17u)], global1[_wgslsmith_index_u32(94942u, 17u)], 1448f, global1[_wgslsmith_index_u32(u_input.c, 17u)]), Struct_1(false, vec4<f32>(global1[_wgslsmith_index_u32(u_input.c, 17u)], -1490f, -899f, -763f), true, u_input.d.x)), Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1444f, 1493f, 799f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)])), true, 1u & u_input.d.x), _wgslsmith_clamp_u32(~u_input.d.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.c))))), true, select(u_input.d.x << (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u), 20266u, true != any(vec4<bool>(false, true, false, true)))), 1527i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 828f) + vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], 267f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 17u)])))), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(sign(-982f)), 997f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(4294967295u, u_input.c, false), 17u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18433u, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 17u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 17u)] * -656f))), 56249i < max(u_input.b, -45133i), ~(1u << (countOneBits(u_input.c) % 32u))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    global1 = array<f32, 17>();
    var var_2 = u_input.d.x;
    var_0 = Struct_2(Struct_1(all(vec4<bool>(true, true, any(vec4<bool>(var_0.a.c, var_0.a.c, var_0.d.a, var_0.a.a)), var_0.d.a)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1596f), -420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(130352u, 17u)]))), _wgslsmith_f_op_f32(-1592f * global1[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_f_op_f32(trunc(var_0.a.b.x))), var_0.d.c, ~1u), 88837i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.d.b.yx))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_3(-1091f, Struct_3(var_0.d, var_0.a.b, var_0.d), var_0.d, u_input.d.x)).xx))), var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), 838f, any(vec4<bool>(true, var_0.d.a, var_0.a.c, var_0.d.c)) || !var_0.a.c)))) * _wgslsmith_f_op_f32(-1000f * var_0.d.b.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = true;
    var var_1 = Struct_3(Struct_1(arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1065f * global1[_wgslsmith_index_u32(u_input.a, 17u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 17u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2085f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 17u)])), -1385f), arg_1.x, select(u_input.c, (u_input.c << (u_input.c % 32u)) & ~u_input.d.x, !all(vec3<bool>(false, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-3157f - -296f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1150f, arg_0.x)))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 17u)] * _wgslsmith_f_op_f32(1250f - 235f)))), Struct_1(arg_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], -319f, global1[_wgslsmith_index_u32(4294967295u, 17u)]) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(432f, 742f, arg_0.x, 1314f)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1000f, -1000f, global1[_wgslsmith_index_u32(~u_input.d.x, 17u)])), arg_1.x, select(0u, firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c)), any(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))));
    var var_2 = Struct_3(var_1.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + global1[_wgslsmith_index_u32(var_1.c.d, 17u)]) + var_1.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), var_1.c.b.x))), Struct_1(any(select(vec4<bool>(false, false, var_1.a.c, arg_1.x), vec4<bool>(true, arg_1.x, var_1.a.c, var_1.c.c), true)), var_1.a.b, true, u_input.d.x));
    let var_3 = ~vec4<u32>(11367u, _wgslsmith_dot_vec2_u32(~u_input.d, u_input.d & vec2<u32>(u_input.d.x, 4294967295u)), ~(3920u ^ var_2.a.d), firstLeadingBit(~32799u)) | vec4<u32>(firstTrailingBit(34326u), var_1.c.d | _wgslsmith_clamp_u32(39356u, ~u_input.d.x, 17239u), ~4294967295u ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(var_2.a.d, var_1.a.d)), u_input.d | vec2<u32>(var_1.c.d, var_1.a.d)), firstLeadingBit(_wgslsmith_add_u32(~4294967295u, 36597u)));
    return Struct_2(Struct_1(!(all(arg_1) & (u_input.d.x <= 10289u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) + _wgslsmith_div_vec4_f32(vec4<f32>(146f, arg_0.x, -198f, 1392f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 302f, var_1.c.b.x, 1429f) - vec4<f32>(arg_0.x, var_1.c.b.x, -579f, -2828f)))), all(select(!vec4<bool>(var_2.c.c, arg_1.x, var_2.a.a, true), !vec4<bool>(true, true, false, var_1.a.c), all(vec3<bool>(var_2.c.c, var_1.a.c, arg_1.x)))), ~var_1.c.d >> ((~var_3.x & 25807u) % 32u)), firstTrailingBit(firstTrailingBit(u_input.e) << ((select(var_1.a.d, var_1.c.d, var_2.c.a) & 39675u) % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1528f, var_1.b.x), vec2<f32>(var_1.a.b.x, var_1.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.a.b.x) + vec2<f32>(-2298f, global1[_wgslsmith_index_u32(var_1.c.d, 17u)])), u_input.d.x < 68374u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c.b.xw * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_2.a.b.x))))), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !((1u & ~_wgslsmith_mult_u32(u_input.a, 4294967295u)) < 60327u);
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 175f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, -598f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1247f, 1341f))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false)) == true));
    let var_1 = ~var_0.d.d;
    let var_2 = -(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(var_0.b, 2147483647i)), ~vec2<i32>(u_input.e, -44706i) ^ ~vec2<i32>(var_0.b, u_input.e)) & (vec2<i32>(max(var_0.b, u_input.e), var_0.b) | ~_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, 31213i), vec2<i32>(23963i, var_0.b))));
    let var_3 = !(!vec3<bool>(true, var_0.a.c, !(var_0.a.d < var_0.a.d)));
    var var_4 = var_3.x;
    var var_5 = !select(var_0.d.c, var_3.x, any(select(!vec4<bool>(false, var_3.x, var_3.x, var_3.x), !vec4<bool>(true, var_0.a.c, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(min(~(~vec3<i32>(-17605i, 27077i, 42463i)), reverseBits(~vec3<i32>(-1i, var_0.b, 46330i))), min(~vec3<i32>(1i, -8562i, var_2.x), select(vec3<i32>(var_2.x, var_0.b, -2147483647i), vec3<i32>(-2147483647i, var_0.b, 33201i), var_3)) | -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, var_2.x, var_0.b), vec3<i32>(0i, -8071i, 2147483647i), vec3<i32>(var_0.b, 29421i, var_0.b))), _wgslsmith_sub_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1, u_input.a, 4294967295u, 40482u) << (vec4<u32>(var_0.d.d, 1u, var_1, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_0.a.d, 34843u, var_1, var_1) & vec4<u32>(var_0.d.d, var_0.a.d, u_input.d.x, 81814u))), vec4<u32>(~(11326u & var_1), var_1, var_1, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1005f), -952f);
}

