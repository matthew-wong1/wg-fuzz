struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1561f, i32(-2147483648), false, vec3<bool>(false, true, false)), Struct_1(1182f, -21639i, false, vec3<bool>(true, false, false)), Struct_1(543f, -1i, true, vec3<bool>(false, true, false)), Struct_1(-165f, i32(-2147483648), true, vec3<bool>(false, true, false)), Struct_1(2309f, 25198i, false, vec3<bool>(false, false, false)), Struct_1(-1354f, -29731i, true, vec3<bool>(false, false, true)), Struct_1(572f, i32(-2147483648), true, vec3<bool>(false, false, true)), Struct_1(-1368f, -51997i, true, vec3<bool>(true, false, false)), Struct_1(-679f, -1i, false, vec3<bool>(false, true, true)), Struct_1(-983f, -54520i, true, vec3<bool>(false, false, true)), Struct_1(228f, 12494i, true, vec3<bool>(true, false, false)), Struct_1(1000f, -23057i, false, vec3<bool>(false, false, false)), Struct_1(663f, 1568i, true, vec3<bool>(true, true, false)), Struct_1(-424f, -23807i, true, vec3<bool>(true, true, false)), Struct_1(1302f, i32(-2147483648), true, vec3<bool>(true, false, true)), Struct_1(-330f, -83387i, false, vec3<bool>(false, true, false)), Struct_1(-1000f, 0i, false, vec3<bool>(true, true, false)), Struct_1(-466f, 2147483647i, true, vec3<bool>(false, true, true)), Struct_1(-329f, -35317i, true, vec3<bool>(false, true, false)), Struct_1(208f, i32(-2147483648), true, vec3<bool>(false, true, false)));

var<private> global1: vec2<u32> = vec2<u32>(19704u, 0u);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -634f) - 1000f)))), 319f, -1145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = 0i > u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - vec4<f32>(-921f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f - 1000f)), -166f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(386f - 710f), _wgslsmith_f_op_f32(min(-226f, -1148f))))) - vec4<f32>(210f, _wgslsmith_f_op_f32(f32(-1f) * -243f), -1449f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-490f)), 2914f)))));
    global0 = array<Struct_1, 20>();
    var var_2 = Struct_2(u_input.c.www, Struct_1(_wgslsmith_f_op_f32(trunc(var_1.x)), 34100i, false, select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), false)), global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x), vec4<f32>(2761f, var_1.x, var_1.x, 218f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -508f, var_1.x) * vec4<f32>(var_1.x, -229f, 228f, -238f)))))), true && ((select(false, false, false) & false) | all(vec4<bool>(true, true, true, true))));
    global1 = vec2<u32>(~39096u, max(global1.x, u_input.e.x));
    return firstTrailingBit(u_input.c.x);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 23633u, 29357u, global1.x), vec4<u32>(10075u, 0u, ~global1.x, ~4294967295u)), 1u) >> (abs(~_wgslsmith_sub_vec2_u32(~u_input.b.yz, _wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(global1.x, 0u)))) % vec2<u32>(32u));
    global1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(reverseBits(abs(u_input.b.xy))), u_input.e);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -630f))) - 1398f)), abs(_wgslsmith_add_i32(-_wgslsmith_add_i32(-1i, arg_2.b), abs(_wgslsmith_mult_i32(37303i, 0i)))), true, arg_2.d);
    return vec4<bool>(var_0.c, !(1i <= _wgslsmith_dot_vec3_i32(-vec3<i32>(-7388i, var_0.b, 8205i), u_input.c.xxz)), any(var_0.d.yz), true);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = !(!vec3<bool>(any(!vec2<bool>(arg_2.e, arg_0.x)), all(vec2<bool>(arg_0.x, true)), false));
    var var_1 = arg_2.c;
    let var_2 = Struct_1(arg_2.c.a, _wgslsmith_clamp_i32(var_1.b << (_wgslsmith_clamp_u32(global1.x, global1.x >> (24700u % 32u), global1.x) % 32u), var_1.b, 3812i), false, vec3<bool>((-3777i != firstLeadingBit(u_input.c.x)) || all(vec4<bool>(false, var_0.x, true, false)), true, ~(~global1.x) == (max(4294967295u, 4294967295u) & (u_input.b.x << (global1.x % 32u)))));
    global0 = array<Struct_1, 20>();
    var var_3 = Struct_1(1f, 18080i, true, func_4(var_1.b, Struct_2(-vec3<i32>(11209i, arg_1.x, arg_2.a.x), global0[_wgslsmith_index_u32(global1.x, 20u)], Struct_1(_wgslsmith_f_op_f32(-arg_2.d.x), var_1.b, any(arg_0), vec3<bool>(true, false, arg_0.x)), arg_2.d, true), Struct_1(-1116f, -1i, all(arg_2.c.d), vec3<bool>(true, var_1.d.x, !arg_0.x))).wwx);
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec3<f32> {
    global2 = 0u;
    global0 = array<Struct_1, 20>();
    global2 = func_5(func_4(func_2(reverseBits(4294967295u)), arg_1, Struct_1(arg_1.c.a, firstLeadingBit(1i), arg_1.c.d.x, select(arg_1.b.d, vec3<bool>(false, false, arg_1.e), true))), -(arg_1.a ^ vec3<i32>(21269i, 10915i, -1i)) | vec3<i32>(-38069i, ~arg_0, ~arg_1.c.b), Struct_2(vec3<i32>(-1i) * -vec3<i32>(3110i, -11637i, arg_0), arg_1.c, global0[_wgslsmith_index_u32(0u, 20u)], arg_1.d, any(!arg_1.b.d.yx))) ^ arg_2;
    var var_0 = true | arg_1.b.d.x;
    var var_1 = arg_1.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(1935f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d.x), -580f)), var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.a, var_1.x, -1096f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(arg_1.d.wxx)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_1.b.a), 1633f) * arg_1.d.yzw), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(618f)) - _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-866f, -834f))))), all(!vec4<bool>(arg_1.e, true, false, true)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = 60046u;
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a.yxz, _wgslsmith_sub_vec3_u32(countOneBits(u_input.b), u_input.a.xwx)));
    var var_2 = arg_0.b;
    let var_3 = vec4<bool>(!arg_2.c.c, arg_2.c.d.x, true, any(arg_0.b.d));
    var var_4 = arg_0.c;
    return Struct_2(-_wgslsmith_sub_vec3_i32(countOneBits(~arg_2.a), max(_wgslsmith_mult_vec3_i32(arg_0.a, u_input.c.zyy), vec3<i32>(arg_0.b.b, var_4.b, arg_0.a.x))), arg_2.b, arg_2.c, arg_0.d, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(vec3<i32>(-u_input.c.x, _wgslsmith_div_i32(u_input.d.x, u_input.d.x), u_input.c.x), Struct_1(1f, _wgslsmith_dot_vec2_i32(u_input.d.zx, countOneBits(u_input.d.zx)), (u_input.c.x >= u_input.c.x) & true, vec3<bool>(true, true, false)), Struct_1(1f, _wgslsmith_div_i32(53128i, u_input.d.x), u_input.c.x > 12362i, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(835f, -1000f, -1080f, -2132f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(684f, -768f, -592f, 331f), vec4<f32>(544f, 951f, -917f, 584f), vec4<bool>(true, true, false, true)))))), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 131f, 1913f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1953f, 703f, -1074f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(1i, Struct_2(vec3<i32>(0i, 2147483647i, u_input.d.x), global0[_wgslsmith_index_u32(global1.x, 20u)], Struct_1(122f, 2147483647i, false, vec3<bool>(false, true, true)), vec4<f32>(-1256f, 123f, -688f, 416f), false), 0u)), vec3<f32>(-1517f, -2165f, 1000f))))), Struct_2(u_input.c.ywz, Struct_1(_wgslsmith_f_op_f32(-1943f - _wgslsmith_f_op_f32(step(1346f, 609f))), 1i, false, select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-140f, 579f, false)) + -1202f), u_input.d.x, true, vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()))), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))), u_input.e.x);
    var var_1 = Struct_1(var_0.b.a, var_0.b.b, func_6(Struct_2(firstLeadingBit(_wgslsmith_sub_vec3_i32(var_0.a, u_input.c.wyy)), var_0.b, Struct_1(-1956f, -u_input.d.x, !var_0.b.d.x, !var_0.c.d), vec4<f32>(_wgslsmith_f_op_f32(step(-1080f, var_0.d.x)), _wgslsmith_f_op_f32(step(1000f, var_0.b.a)), _wgslsmith_f_op_f32(sign(var_0.c.a)), -286f), func_6(Struct_2(vec3<i32>(-1i, 9425i, var_0.c.b), Struct_1(2161f, u_input.d.x, var_0.e, var_0.b.d), var_0.c, vec4<f32>(var_0.c.a, -935f, var_0.d.x, -1000f), var_0.c.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.a, -1000f, -292f))), func_6(Struct_2(u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<f32>(var_0.d.x, -635f, -1408f, var_0.b.a), false), var_0.d.xyx, Struct_2(u_input.d, global0[_wgslsmith_index_u32(global1.x, 20u)], Struct_1(-490f, var_0.b.b, var_0.b.c, var_0.b.d), vec4<f32>(2458f, -663f, var_0.b.a, -102f), var_0.e), global1.x), global1.x).c.d.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) - _wgslsmith_f_op_f32(step(-321f, var_0.b.a))), func_6(func_6(Struct_2(u_input.c.yzx, Struct_1(-1142f, u_input.d.x, var_0.e, vec3<bool>(false, true, var_0.c.c)), Struct_1(1041f, -43784i, true, vec3<bool>(var_0.b.c, true, var_0.b.c)), vec4<f32>(-411f, -670f, -1197f, 522f), var_0.b.d.x), var_0.d.zwz, Struct_2(vec3<i32>(-2147483647i, var_0.c.b, u_input.c.x), global0[_wgslsmith_index_u32(1u, 20u)], Struct_1(var_0.d.x, 46865i, false, var_0.b.d), var_0.d, false), u_input.e.x), _wgslsmith_div_vec3_f32(vec3<f32>(-253f, var_0.c.a, var_0.d.x), var_0.d.zxw), Struct_2(u_input.c.wxz, var_0.b, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.d, var_0.c.c), ~1777u).b.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.x)))), Struct_2(reverseBits(max(vec3<i32>(u_input.c.x, 10996i, u_input.d.x), vec3<i32>(u_input.d.x, -35244i, var_0.c.b))), func_6(func_6(Struct_2(vec3<i32>(var_0.c.b, var_0.a.x, -44067i), Struct_1(1000f, -1i, false, vec3<bool>(true, false, false)), Struct_1(var_0.c.a, 1i, true, var_0.b.d), var_0.d, var_0.e), var_0.d.yxy, Struct_2(var_0.a, Struct_1(var_0.d.x, 1i, var_0.c.c, vec3<bool>(var_0.b.d.x, true, true)), Struct_1(var_0.d.x, u_input.d.x, true, vec3<bool>(var_0.c.d.x, true, var_0.c.d.x)), vec4<f32>(-575f, 1580f, var_0.c.a, var_0.d.x), var_0.c.d.x), u_input.b.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.c.a, -142f, 1969f))), func_6(Struct_2(var_0.a, global0[_wgslsmith_index_u32(28771u, 20u)], var_0.b, var_0.d, var_0.b.d.x), vec3<f32>(1564f, var_0.d.x, var_0.d.x), Struct_2(vec3<i32>(0i, -1i, -3257i), var_0.b, Struct_1(-915f, 1i, var_0.b.d.x, var_0.b.d), var_0.d, var_0.c.c), u_input.a.x), u_input.e.x ^ u_input.a.x).c, Struct_1(-1000f, ~u_input.d.x, all(vec4<bool>(false, var_0.c.c, true, var_0.e)), var_0.b.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)), false), 96007u).b.c, vec3<bool>(all(func_4(2147483647i, func_6(Struct_2(var_0.a, Struct_1(var_0.b.a, u_input.d.x, var_0.e, vec3<bool>(true, true, var_0.c.d.x)), Struct_1(-865f, var_0.c.b, var_0.c.d.x, var_0.c.d), vec4<f32>(-1014f, var_0.c.a, -2085f, -879f), var_0.c.d.x), vec3<f32>(1000f, var_0.b.a, var_0.b.a), Struct_2(vec3<i32>(u_input.c.x, var_0.c.b, u_input.c.x), var_0.c, Struct_1(1000f, 0i, var_0.e, var_0.c.d), vec4<f32>(-959f, -1641f, var_0.c.a, -2236f), false), 0u), global0[_wgslsmith_index_u32(~1687u, 20u)])), any(func_4(-36803i, Struct_2(u_input.d, var_0.c, Struct_1(1000f, u_input.d.x, false, var_0.c.d), var_0.d, true), global0[_wgslsmith_index_u32(0u, 20u)])) & true, false));
    var var_2 = Struct_2(firstLeadingBit(var_0.a), Struct_1(530f, var_1.b, any(vec4<bool>(all(vec4<bool>(var_0.b.d.x, true, true, true)), true, var_0.b.d.x, true)), select(!(!vec3<bool>(var_1.d.x, var_0.e, var_0.b.c)), func_6(Struct_2(u_input.c.wzz, Struct_1(-978f, -2147483647i, var_0.c.c, vec3<bool>(true, var_1.c, true)), Struct_1(362f, -39010i, true, vec3<bool>(var_1.c, true, false)), vec4<f32>(var_0.d.x, var_0.b.a, 296f, var_0.d.x), var_0.b.d.x), var_0.d.wzx, func_6(Struct_2(vec3<i32>(-2238i, u_input.c.x, 3237i), var_0.b, Struct_1(333f, var_1.b, true, vec3<bool>(true, false, var_0.c.d.x)), vec4<f32>(1000f, var_0.b.a, var_1.a, var_0.b.a), var_1.c), vec3<f32>(var_1.a, var_0.d.x, -503f), Struct_2(vec3<i32>(u_input.c.x, var_0.c.b, 2147483647i), global0[_wgslsmith_index_u32(u_input.e.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], var_0.d, var_0.b.d.x), 4294967295u), ~1u).c.d, func_6(Struct_2(vec3<i32>(22622i, var_0.c.b, 1i), Struct_1(-1986f, 1i, var_1.d.x, vec3<bool>(false, var_0.b.c, var_1.d.x)), Struct_1(1000f, u_input.c.x, var_1.c, var_0.b.d), vec4<f32>(var_1.a, -916f, var_1.a, var_1.a), var_0.b.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-310f, var_1.a, 398f) - var_0.d.zww), Struct_2(var_0.a, Struct_1(-627f, 6816i, var_0.b.d.x, var_0.c.d), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], var_0.d, var_0.e), global1.x).c.d)), Struct_1(_wgslsmith_f_op_f32(exp2(var_1.a)), -(~(~u_input.c.x)), _wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(round(var_0.d.x))) == var_0.b.a, !(!var_0.c.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_0.d))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.d.x, 1752f, var_1.a)) * _wgslsmith_f_op_vec4_f32(-var_0.d)))), func_4(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-2147483647i, var_1.b), firstLeadingBit(0i)), Struct_2(vec3<i32>(-1i, 0i, 0i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.x, global1.x, u_input.e.x), 20u)], var_0.b, vec4<f32>(var_1.a, var_1.a, -1294f, var_1.a), u_input.b.x >= 4294967295u), Struct_1(var_1.a, firstTrailingBit(var_1.b), true, var_0.c.d)))), var_1.c);
    var_2 = Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(13141i), _wgslsmith_div_i32(1i, var_1.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.d.x, var_0.b.b, var_1.b, -52822i)), -vec4<i32>(var_0.a.x, u_input.d.x, var_2.c.b, 20718i))), firstTrailingBit(select(vec3<i32>(-18048i, u_input.c.x, var_1.b), select(vec3<i32>(var_1.b, 0i, var_1.b), vec3<i32>(-20494i, var_2.c.b, var_2.a.x), true), !var_2.c.d)), vec3<i32>(-max(u_input.d.x, 44095i), 4556i, _wgslsmith_mod_i32(var_0.c.b, -11994i) << (_wgslsmith_add_u32(global1.x, 42355u) % 32u))), var_2.b, Struct_1(_wgslsmith_div_f32(1f, var_1.a), 2147483647i, true || var_1.d.x, func_4(firstLeadingBit(-1i), Struct_2(~u_input.c.wzz, Struct_1(var_1.a, -2147483647i, true, var_2.c.d), Struct_1(var_2.d.x, 2507i, false, var_2.c.d), var_2.d, true), func_6(Struct_2(vec3<i32>(0i, 1i, var_1.b), Struct_1(361f, var_0.b.b, var_1.c, var_0.b.d), global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.d, var_2.b.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(647f, 166f, var_1.a) * vec3<f32>(-1000f, var_1.a, var_0.c.a)), func_6(Struct_2(var_0.a, var_2.c, Struct_1(var_1.a, 2147483647i, true, vec3<bool>(var_0.e, var_2.c.c, var_2.e)), vec4<f32>(var_2.d.x, var_1.a, -280f, var_2.c.a), true), vec3<f32>(-928f, -1000f, -740f), Struct_2(u_input.c.xxw, var_0.c, global0[_wgslsmith_index_u32(0u, 20u)], vec4<f32>(-1000f, 637f, var_1.a, var_1.a), true), u_input.a.x), u_input.e.x).c).zwx), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(ceil(619f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f * var_0.b.a)), -124f), true);
    var_2 = func_6(func_6(func_6(Struct_2(vec3<i32>(u_input.c.x, 40166i, var_1.b), func_6(Struct_2(vec3<i32>(var_2.b.b, -2147483647i, u_input.d.x), Struct_1(872f, var_0.a.x, false, vec3<bool>(var_1.c, false, true)), var_2.c, var_0.d, var_2.b.d.x), var_0.d.xyy, Struct_2(vec3<i32>(-15860i, u_input.c.x, -2147483647i), Struct_1(var_0.b.a, var_2.b.b, true, vec3<bool>(false, var_0.b.c, true)), var_2.c, vec4<f32>(var_1.a, var_2.d.x, var_0.b.a, var_2.b.a), var_2.c.c), global1.x).b, Struct_1(var_0.d.x, var_0.c.b, false, vec3<bool>(var_2.e, var_1.d.x, var_2.b.d.x)), _wgslsmith_f_op_vec4_f32(var_2.d * vec4<f32>(var_0.d.x, 1422f, var_0.d.x, -722f)), all(vec4<bool>(var_1.c, var_1.c, false, true))), vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x - var_1.a), _wgslsmith_f_op_f32(exp2(var_1.a)), 1967f), func_6(func_6(Struct_2(vec3<i32>(31430i, var_2.c.b, 1i), Struct_1(var_1.a, var_0.c.b, var_0.b.c, vec3<bool>(false, var_1.d.x, var_1.d.x)), Struct_1(-974f, 5838i, var_0.c.d.x, vec3<bool>(var_0.c.d.x, true, var_0.e)), vec4<f32>(265f, -740f, -334f, 963f), var_0.c.c), vec3<f32>(1579f, 314f, var_0.b.a), Struct_2(u_input.c.xxx, Struct_1(-131f, 2497i, var_0.b.c, var_1.d), var_2.b, var_2.d, var_1.c), 25315u), _wgslsmith_f_op_vec3_f32(var_2.d.yww * vec3<f32>(-649f, -2135f, 161f)), Struct_2(var_2.a, Struct_1(var_0.c.a, var_0.b.b, false, vec3<bool>(true, false, var_0.c.c)), var_2.c, vec4<f32>(2038f, 1000f, 1087f, var_0.b.a), true), 4294967295u), max(reverseBits(4294967295u), ~9548u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(1019f - var_1.a)), _wgslsmith_f_op_vec3_f32(step(var_2.d.zzw, _wgslsmith_f_op_vec3_f32(-var_0.d.zzx))))), func_6(func_6(Struct_2(var_2.a, var_2.b, var_2.c, vec4<f32>(-810f, -1883f, 1276f, var_2.b.a), var_0.b.d.x), _wgslsmith_f_op_vec4_f32(func_3()).ywx, func_6(Struct_2(vec3<i32>(-1i, -57986i, var_0.b.b), Struct_1(var_2.b.a, 7746i, var_1.c, var_2.c.d), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], vec4<f32>(var_2.d.x, var_2.d.x, -246f, -1000f), true), var_2.d.xxz, Struct_2(vec3<i32>(-7973i, u_input.d.x, var_1.b), Struct_1(844f, -15788i, false, vec3<bool>(var_0.e, true, var_2.c.c)), Struct_1(-1514f, var_0.b.b, var_2.b.c, vec3<bool>(var_2.c.c, true, true)), vec4<f32>(var_0.b.a, var_0.d.x, var_1.a, var_1.a), false), global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 15623u, global1.x), vec4<u32>(global1.x, global1.x, 24868u, 4294967295u))), var_2.d.yyz, Struct_2(func_6(Struct_2(vec3<i32>(var_2.b.b, 0i, -2147483647i), Struct_1(var_1.a, var_1.b, true, var_0.b.d), global0[_wgslsmith_index_u32(0u, 20u)], var_2.d, true), vec3<f32>(var_0.d.x, var_2.c.a, var_1.a), Struct_2(vec3<i32>(2147483647i, 1588i, 1i), Struct_1(608f, -1i, var_0.b.c, vec3<bool>(true, var_2.b.c, var_0.b.c)), var_0.c, var_2.d, var_0.c.c), global1.x).a, Struct_1(-1200f, -1i, false, var_2.b.d), global0[_wgslsmith_index_u32(global1.x ^ 1u, 20u)], vec4<f32>(492f, var_1.a, -512f, var_2.d.x), var_0.b.d.x), ~u_input.e.x & _wgslsmith_mult_u32(4294967295u, 0u)), _wgslsmith_add_u32(~43110u, u_input.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.d.yww, vec3<f32>(_wgslsmith_f_op_f32(-606f * var_2.c.a), var_1.a, _wgslsmith_f_op_f32(-1000f * var_2.b.a)))), func_6(func_6(Struct_2(_wgslsmith_mult_vec3_i32(var_2.a, u_input.d), var_0.c, var_2.b, _wgslsmith_f_op_vec4_f32(-var_0.d), any(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(-var_0.d.zzw), func_6(func_6(Struct_2(vec3<i32>(var_2.c.b, var_0.b.b, var_2.c.b), global0[_wgslsmith_index_u32(u_input.e.x, 20u)], var_0.b, var_2.d, var_0.b.c), var_0.d.wwz, Struct_2(vec3<i32>(2995i, 2147483647i, var_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 20u)], Struct_1(var_1.a, 2147483647i, var_1.c, var_0.c.d), vec4<f32>(486f, 124f, -1243f, var_2.d.x), var_2.b.c), global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, 2153f, 288f)), func_6(Struct_2(var_0.a, var_0.c, global0[_wgslsmith_index_u32(global1.x, 20u)], vec4<f32>(var_2.d.x, var_1.a, 885f, var_0.c.a), true), vec3<f32>(var_0.c.a, 522f, -1608f), Struct_2(vec3<i32>(var_1.b, -2147483647i, -47756i), var_2.b, Struct_1(var_2.c.a, -6568i, var_1.c, vec3<bool>(true, true, var_2.c.c)), var_0.d, var_0.e), 1u), u_input.b.x), reverseBits(select(global1.x, global1.x, true))), _wgslsmith_f_op_vec3_f32(sign(func_6(Struct_2(var_2.a, var_0.c, Struct_1(var_1.a, -19765i, var_0.e, var_2.c.d), vec4<f32>(699f, var_0.b.a, var_0.d.x, -2328f), var_0.b.c), vec3<f32>(var_0.d.x, -1591f, -1243f), Struct_2(vec3<i32>(var_0.a.x, -55540i, -29202i), var_0.c, Struct_1(var_0.c.a, 20835i, var_1.c, var_0.b.d), vec4<f32>(var_2.d.x, -1398f, 1389f, -634f), true), u_input.b.x | global1.x).d.xzx)), func_6(func_6(func_6(Struct_2(vec3<i32>(var_2.c.b, var_2.b.b, 0i), Struct_1(318f, -10802i, var_2.c.d.x, vec3<bool>(var_0.e, var_0.e, var_0.b.d.x)), Struct_1(var_0.b.a, var_1.b, var_0.c.d.x, var_0.b.d), vec4<f32>(-1453f, 364f, var_1.a, var_2.c.a), false), vec3<f32>(-1076f, var_0.d.x, var_1.a), Struct_2(var_2.a, var_0.c, var_2.c, var_0.d, var_2.b.c), global1.x), _wgslsmith_f_op_vec3_f32(exp2(var_0.d.yxz)), func_6(Struct_2(var_0.a, var_2.b, Struct_1(var_2.d.x, 28103i, false, vec3<bool>(var_2.e, var_0.e, var_2.e)), vec4<f32>(var_0.d.x, 205f, -661f, -206f), true), var_0.d.yxx, Struct_2(u_input.c.xwy, global0[_wgslsmith_index_u32(global1.x, 20u)], Struct_1(118f, 0i, var_0.b.d.x, var_0.b.d), var_0.d, false), u_input.e.x), ~39192u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a, -1508f, var_2.d.x) * _wgslsmith_f_op_vec3_f32(step(var_2.d.wxy, vec3<f32>(var_0.d.x, 2307f, var_2.d.x)))), Struct_2(firstTrailingBit(vec3<i32>(0i, 7357i, 10443i)), func_6(Struct_2(var_2.a, Struct_1(var_0.d.x, var_1.b, true, var_0.c.d), Struct_1(var_0.d.x, 2147483647i, var_2.e, var_2.b.d), var_2.d, var_2.c.d.x), vec3<f32>(var_2.d.x, var_0.b.a, 290f), Struct_2(var_0.a, Struct_1(814f, u_input.d.x, false, var_2.b.d), var_0.b, vec4<f32>(var_0.b.a, var_2.b.a, -1783f, -1086f), true), global1.x).c, global0[_wgslsmith_index_u32(global1.x, 20u)], var_0.d, func_4(0i, Struct_2(vec3<i32>(1i, 0i, -10066i), var_2.b, var_0.c, var_0.d, var_0.b.d.x), var_0.b).x), ~global1.x), ~abs(4294967295u)), ~global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.d.zy, var_2.d.wz)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, var_2.b.a) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, -1589f)) - vec2<f32>(var_0.c.a, var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(-var_0.d)))));
}

