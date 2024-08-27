struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: u32;

var<private> global2: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> vec4<bool> {
    global1 = 0u;
    let var_0 = !vec4<bool>(true, all(select(select(vec4<bool>(arg_3.x, arg_1.a, false, arg_1.b.b), vec4<bool>(arg_1.a, false, false, arg_0), false), !vec4<bool>(true, arg_1.b.b, true, true), !vec4<bool>(arg_0, true, arg_0, arg_1.b.b))), false, true);
    var var_1 = ~(-(~_wgslsmith_dot_vec3_i32(arg_1.b.d, ~vec3<i32>(arg_1.b.d.x, u_input.d, arg_1.b.d.x))));
    var var_2 = 0u;
    var var_3 = Struct_3(arg_3.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1955f - -563f) * _wgslsmith_f_op_f32(-global2.x)), -239f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(u_input.e), 25u)]), _wgslsmith_f_op_f32(-global2.x)), arg_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-707f + global2.x))), arg_1.b.d));
    return vec4<bool>(true, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-30673i, 28893i), _wgslsmith_sub_i32(u_input.d, -64491i)), u_input.d) > _wgslsmith_mod_i32(arg_1.b.d.x, i32(-1i) * -var_3.b.d.x), !arg_1.a & (var_3.b.b && !var_3.b.b), true);
}

fn func_2() -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-516f, _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(max(-1000f, global2.x))))), _wgslsmith_div_f32(1114f, global0[_wgslsmith_index_u32(7053u, 25u)]), 181f), vec4<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b ^ u_input.c.x, u_input.c.x), 25u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f))), _wgslsmith_f_op_f32(880f * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] - -1735f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 25u)] + global0[_wgslsmith_index_u32(93333u, 25u)]))))));
    let var_0 = global2.wx;
    let var_1 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), true), func_3(!(var_0.x == var_0.x), Struct_3(false, Struct_1(vec4<f32>(2532f, global2.x, -1033f, -1000f), true, -150f, vec3<i32>(u_input.d, u_input.d, u_input.d))), -854f, select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false))), any(vec4<bool>(true, u_input.b >= 2697u, any(vec4<bool>(false, true, false, false)), true)));
    var var_2 = !(var_1.x & var_1.x);
    global1 = _wgslsmith_mult_u32(~(~u_input.e) >> (~_wgslsmith_mult_u32(~u_input.e, u_input.b) % 32u), 17212u);
    return var_1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    global1 = 4294967295u;
    var var_0 = (27639i << (0u % 32u)) ^ (select(0i, i32(-1i) * -14486i, true) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(select(1i, 27546i, arg_0.x), -2147483647i >> (u_input.a % 32u)), 2147483647i));
    global0 = array<f32, 25>();
    let var_1 = vec4<i32>(3712i, -(~(-1i)) << (~min(_wgslsmith_mult_u32(4294967295u, u_input.a), ~u_input.b) % 32u), u_input.d | -1i, countOneBits(-62693i));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 25u)], global0[_wgslsmith_index_u32(u_input.e, 25u)], 407f, global2.x) - vec4<f32>(1141f, -1111f, global0[_wgslsmith_index_u32(16773u, 25u)], 1669f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1372f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 25u)])), global2.x, -154f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, 942f, 386f, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 275f, -686f, global0[_wgslsmith_index_u32(u_input.a, 25u)]), vec4<f32>(-673f, 458f, global0[_wgslsmith_index_u32(1u, 25u)], global2.x))))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_div_f32(-553f, global0[_wgslsmith_index_u32(1u, 25u)])) + global2.x))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 25u)])));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, global0[_wgslsmith_index_u32(47642u, 25u)], 1325f)))), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_2())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 25u)], global2.x) * _wgslsmith_f_op_f32(-global2.x))))), -(~firstLeadingBit(vec3<i32>(20847i, -14285i, u_input.d))));
    let var_1 = max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, min(_wgslsmith_clamp_u32(u_input.b, 1u, 1u), ~u_input.c.x), _wgslsmith_mod_u32(0u, u_input.c.x) << (_wgslsmith_mult_u32(u_input.e, 0u) % 32u)), _wgslsmith_add_vec3_u32(vec3<u32>(~50986u, ~u_input.e, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.e), vec3<u32>(33268u, u_input.c.x, 22538u), vec3<u32>(u_input.b, u_input.e, u_input.b)))), firstTrailingBit(_wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.c.x, u_input.e, u_input.c.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 55078u, 24485u), vec3<u32>(u_input.a, u_input.e, u_input.a)), any(vec3<bool>(true, var_0.b, true))), ~(vec3<u32>(0u, u_input.b, 0u) | vec3<u32>(u_input.c.x, 4294967295u, u_input.e)))));
    let var_2 = vec4<i32>(u_input.d, select(_wgslsmith_dot_vec3_i32(-(vec3<i32>(806i, u_input.d, 1i) | vec3<i32>(-1i, -1i, 12330i)), var_0.d), -22798i, true), max(abs(_wgslsmith_add_i32(u_input.d, -u_input.d)), ~_wgslsmith_div_i32(countOneBits(var_0.d.x), -var_0.d.x)), select(reverseBits(~u_input.d), u_input.d, !var_0.b));
    var var_3 = Struct_2(~vec3<i32>(var_0.d.x, reverseBits(var_0.d.x), u_input.d) ^ countOneBits(var_0.d), -905f != _wgslsmith_div_f32(-2209f, global2.x), !any(select(!vec3<bool>(false, var_0.b, var_0.b), !vec3<bool>(var_0.b, false, true), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), vec3<i32>(firstTrailingBit(1i), abs(-56341i & var_2.x), 15284i)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, 1074f, 145f, 1000f))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.d.a + vec4<f32>(-526f, 219f, var_0.c, global2.x)), _wgslsmith_f_op_vec4_f32(abs(var_3.d.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.a), vec4<f32>(global0[_wgslsmith_index_u32(49891u, 25u)], 1087f, 1462f, -1705f)))))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + _wgslsmith_f_op_f32(step(var_3.d.a.x, var_3.d.c)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-784f)))), var_3.a ^ _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(var_2.x), var_0.d.x, 1i), -vec3<i32>(-23972i, 0i, var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.b;
    var var_2 = Struct_4(countOneBits(var_0.d.x), Struct_2(vec3<i32>(-1i) * -var_0.d, var_0.b, true || var_0.b, func_1()), _wgslsmith_add_vec2_u32(select(~min(vec2<u32>(0u, u_input.a), u_input.c), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 35347u, 7912u), vec3<u32>(2736u, u_input.b, 4294967295u)), ~u_input.a), all(vec3<bool>(true, false, true))), vec2<u32>(~(~3263u), u_input.b)));
    var_2 = Struct_4(1i, var_2.b, var_2.c);
    var_0 = func_1();
    let var_3 = Struct_4(u_input.d, Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(var_2.b.a, abs(vec3<i32>(u_input.d, -1i, u_input.d)), func_1().d), firstLeadingBit(vec3<i32>(var_0.d.x, -2395i, 22029i))), func_2(), any(vec3<bool>(!var_0.b, var_0.b, var_0.b | var_2.b.d.b)), func_1()), var_2.c);
    var var_4 = (~(~firstLeadingBit(u_input.c)) | vec2<u32>(min(var_2.c.x & var_3.c.x, 7033u), 4294967295u)) & vec2<u32>(countOneBits(~(var_3.c.x ^ var_3.c.x)), 104028u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1312f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + global0[_wgslsmith_index_u32(1u, 25u)]), var_3.b.d.c)))), ~vec4<u32>(var_2.c.x, ~min(var_2.c.x, var_3.c.x), _wgslsmith_div_u32(var_4.x, var_2.c.x), _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.e, var_2.c.x), vec2<u32>(var_4.x, 1u)), var_3.c)));
}

