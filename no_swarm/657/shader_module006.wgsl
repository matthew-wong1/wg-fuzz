struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    var var_0 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1091f, -312f)) + -1875f), arg_3, 391f) - arg_1.yyz);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_3, _wgslsmith_f_op_vec3_f32(func_2(Struct_5(Struct_2(Struct_1(false, vec2<u32>(u_input.a.x, u_input.a.x), arg_2.c, true, vec2<bool>(arg_1, false))), arg_0, vec3<i32>(2147483647i, arg_2.b, 21834i), vec4<f32>(arg_0.x, arg_3, -448f, arg_3), Struct_2(Struct_1(arg_1, vec2<u32>(54009u, arg_2.a.x), arg_2.c, arg_1, vec2<bool>(arg_2.c, arg_2.c)))), vec4<f32>(471f, arg_0.x, -1000f, arg_0.x), Struct_1(arg_1, arg_2.a.wx, true, arg_2.c, vec2<bool>(arg_1, true)), _wgslsmith_f_op_f32(select(1507f, 1000f, false)))).x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1346f, arg_3, arg_0.x)), arg_0, true)))));
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(324f, _wgslsmith_f_op_f32(-1595f * -403f), _wgslsmith_div_f32(-514f, -1367f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1314f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-arg_0))) * _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(arg_0)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-356f, 394f, arg_0.x))) - vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(global0.x + -356f), _wgslsmith_f_op_f32(global0.x + arg_3))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -804f), _wgslsmith_f_op_f32(arg_3 * 225f), _wgslsmith_f_op_f32(round(1181f))))))));
    let var_0 = ~arg_2.b | _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_2.b, arg_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-8503i, arg_2.b, -46438i, arg_2.b), vec4<i32>(14881i, arg_2.b, arg_2.b, 1i))), vec2<i32>(-1906i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, -2147483647i), vec3<i32>(0i, 1i, arg_2.b)))), -abs(arg_2.b));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * global0.x) * -334f) - _wgslsmith_f_op_f32(min(global0.x, 1256f))));
    var var_2 = true;
    return -806f;
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_5(Struct_2(Struct_1(false, u_input.a.zx, true, false, vec2<bool>(true, true))), vec3<f32>(608f, 328f, global0.x), vec3<i32>(-13860i, 1i, 0i), vec4<f32>(-208f, global0.x, -659f, global0.x), Struct_2(Struct_1(false, vec2<u32>(4294967295u, 29232u), false, true, vec2<bool>(false, false)))), vec4<f32>(global0.x, -449f, -433f, global0.x), Struct_1(false, vec2<u32>(8576u, 1u), true, true, vec2<bool>(true, true)), -1017f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(146f, global0.x, -1543f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(460f, global0.x, -179f) - vec3<f32>(921f, global0.x, 1813f)) + vec3<f32>(-590f, -823f, 1296f))), vec3<f32>(-1389f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(671f, global0.x, -135f)), true, Struct_3(vec4<u32>(0u, 3122u, u_input.b.x, u_input.b.x), -20169i, false), global0.x)), -815f)), vec3<f32>(-1389f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1630f, global0.x, global0.x))), false, Struct_3(vec4<u32>(78427u, u_input.a.x, u_input.b.x, u_input.a.x), -1i, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(209f + global0.x))));
    let var_0 = Struct_3(_wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(0u, u_input.b.x, u_input.b.x, 2094u) >> (~u_input.b % vec4<u32>(32u)))), firstTrailingBit(min(_wgslsmith_dot_vec3_i32(min(vec3<i32>(1769i, 1i, 33590i), vec3<i32>(12017i, -1i, 829i)), vec3<i32>(-1354i, -2147483647i, -1i)), 1i)), select(true, all(vec2<bool>(true, true)), all(vec3<bool>(true, true, true))) & true);
    let var_1 = !all(!select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, true), vec4<bool>(var_0.c, true, false, false), var_0.c), !vec4<bool>(var_0.c, true, var_0.c, true), !var_0.c));
    var var_2 = 2147483647i;
    var_2 = var_0.b;
    return Struct_5(Struct_2(Struct_1(!(!var_0.c), ~min(var_0.a.xx, u_input.b.wz), any(!vec4<bool>(var_0.c, true, true, false)), select(var_0.b > -1i, !var_0.c, true), select(!vec2<bool>(var_1, true), select(vec2<bool>(var_0.c, true), vec2<bool>(var_1, true), false), false))), vec3<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-891f - 1627f))), _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(select(-781f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1596f, global0.x)) - global0.x), var_0.c))), ~_wgslsmith_mod_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, 1i, -33179i), vec3<i32>(2147483647i, -1i, -39710i), vec3<i32>(var_0.b, var_0.b, 1i)), select(vec3<i32>(2147483647i, var_0.b, -3003i), vec3<i32>(-1i, var_0.b, var_0.b), false)), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b, 0i, 0i), vec3<i32>(-7999i, var_0.b, -20142i))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1692f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(global0.x))))))), Struct_2(Struct_1(var_0.c, u_input.b.yy, var_1, !any(vec3<bool>(var_1, false, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(var_0.c, var_1), vec2<bool>(var_0.c, true), vec2<bool>(false, var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(-select(vec2<i32>(2147483647i, -6286i), vec2<i32>(1i, 1i), select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1048f, 2303f, _wgslsmith_f_op_f32(trunc(global0.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2337f, -1064f, 1000f), vec3<f32>(-258f, 149f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1603f)), _wgslsmith_f_op_f32(1f * -1428f), 1000f))));
    let var_1 = func_1();
    var_0 = vec2<i32>(_wgslsmith_div_i32(var_1.c.x, var_1.c.x), ~var_1.c.x);
    var var_2 = ~(select(vec4<u32>(var_1.a.a.b.x >> (19591u % 32u), _wgslsmith_clamp_u32(51975u, u_input.b.x, u_input.b.x), 0u >> (u_input.b.x % 32u), ~86712u), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.a.a.b.x, u_input.b.x, u_input.a.x, 1u), u_input.b), false) << (u_input.b % vec4<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(var_1, vec4<f32>(global0.x, global0.x, var_1.d.x, -403f), Struct_1(var_1.e.a.e.x, vec2<u32>(79921u, var_1.e.a.b.x), var_1.a.a.e.x, var_1.e.a.e.x, vec2<bool>(true, var_1.e.a.c)), var_1.d.x)).x + global0.x))));
    let var_4 = Struct_3(~(vec4<u32>(reverseBits(1u), ~var_1.a.a.b.x, ~var_2.x, 40743u) >> (u_input.b % vec4<u32>(32u))), var_0.x, (var_1.c.x < max(-var_0.x, ~(-20319i))) == var_1.e.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 22896u) & vec2<u32>(var_1.a.a.b.x, u_input.a.x), vec2<u32>(1u, var_1.a.a.b.x)), ~(~0u), !var_4.c && (-237f != var_1.b.x)), 0u, 0u), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(u_input.b.wx, var_4.a.zy)), vec2<u32>(var_2.x, 1u)));
}

