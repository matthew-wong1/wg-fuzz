struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(30659i, -14141i), vec2<i32>(11525i, -72220i), vec2<i32>(-35412i, 0i), vec2<i32>(-15775i, 18703i), vec2<i32>(-7088i, -23484i), vec2<i32>(656i, i32(-2147483648)), vec2<i32>(0i, 1400i), vec2<i32>(i32(-2147483648), -7822i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(1i, -1i), vec2<i32>(23211i, 15092i), vec2<i32>(-26019i, -6781i), vec2<i32>(-55784i, 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 37053i), vec2<i32>(40938i, 3396i), vec2<i32>(0i, -1i), vec2<i32>(-647i, -3262i), vec2<i32>(-1309i, 45846i), vec2<i32>(9808i, 0i), vec2<i32>(1i, -1i), vec2<i32>(-6188i, 27499i), vec2<i32>(-1i, 16483i), vec2<i32>(14760i, -1i), vec2<i32>(-1i, -35336i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(29153i, 2147483647i), vec2<i32>(27404i, -50282i), vec2<i32>(29976i, 37219i), vec2<i32>(2147483647i, 58585i));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 1348f, -1725f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(global1.yy)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global1.yx)), global1.zy))), ~arg_1.c, arg_1.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(548f, -582f)), _wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(max(-799f, arg_1.a.x))) < -1000f);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_1.a.x, -535f)))));
    let var_2 = (var_0.b.x << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 1u, 35246u) >> (vec3<u32>(0u, 9862u, 57614u) % vec3<u32>(32u)), select(vec3<u32>(var_0.b.x, arg_1.c.x, 67369u), vec3<u32>(var_0.c.x, arg_1.c.x, u_input.a.x), vec3<bool>(arg_0.x, false, arg_0.x))), ~22717u, _wgslsmith_mult_u32(u_input.e >> (32966u % 32u), max(0u, u_input.e))) % 32u)) >> (~70752u % 32u);
    let var_3 = select(select(arg_0, select(!arg_0, !vec3<bool>(false, var_0.d, arg_1.d), vec3<bool>(any(vec2<bool>(false, arg_1.d)), true, true)), var_0.d), !arg_0, all(vec3<bool>((var_2 >> (var_0.c.x % 32u)) < ~var_0.c.x, 9428u < firstTrailingBit(u_input.b), false)));
    var var_4 = Struct_2(var_1.a);
    return vec3<bool>(select(any(select(vec2<bool>(true, true), !arg_0.yx, true)), select(_wgslsmith_div_i32(u_input.d, -1i) > _wgslsmith_dot_vec4_i32(vec4<i32>(6752i, arg_2, -58213i, -165i), vec4<i32>(0i, u_input.d, -2147483647i, arg_2)), false, ~(-9627i) == (arg_2 << (42774u % 32u))), var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(333f - arg_1.a.x))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-348f))), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(abs(333f));
    let var_1 = select(vec3<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), true, true), !func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), Struct_1(_wgslsmith_div_vec2_f32(global1.yy, global1.yz), vec3<u32>(u_input.a.x, 0u, arg_1) & vec3<u32>(4294967295u, 2924u, u_input.e), _wgslsmith_div_vec3_u32(arg_0.wzy, vec3<u32>(arg_1, 53610u, 4294967295u)), true), u_input.d), !select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), func_3(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), Struct_1(global1.xz, arg_0.wxz, arg_0.wzw, true), u_input.d), true));
    let var_2 = vec2<u32>((~(~1u) >> (_wgslsmith_add_u32(u_input.e, arg_1 << (0u % 32u)) % 32u)) << (arg_1 % 32u), ~10450u);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(546f - global1.x), global1.x, var_0), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-650f * global1.x)))))));
    let var_3 = true;
    return reverseBits(max(var_2.x, _wgslsmith_div_u32(u_input.b >> (4294967295u % 32u), ~1u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec3<bool>(true, false, true);
    var var_1 = -18686i;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2293f, -1134f, -968f) * vec3<f32>(global1.x, 496f, -419f)))))), _wgslsmith_f_op_vec3_f32(sign(arg_0.wxw)));
    var_0 = func_3(!(!func_3(vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_1(vec2<f32>(-981f, arg_3.c.a.x), arg_1, arg_1, var_0.x), u_input.d)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.a.a.xx - arg_3.a.a.zx)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -767f), vec2<bool>(any(vec4<bool>(false, true, var_0.x, var_0.x)), true))), arg_1, vec3<u32>(~(~arg_1.x), 73333u, _wgslsmith_mult_u32(abs(arg_1.x), _wgslsmith_mult_u32(98544u, u_input.a.x))), false), u_input.d);
    var_0 = !vec3<bool>(false, !var_0.x, select(min(arg_1.x, 1u), 57214u, arg_0.x < -1401f) == ~(~0u));
    return arg_3.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), global1.x, global1.x)))));
    var var_0 = -2192f;
    var var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-923f - 140f), global1.x, -947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), vec3<u32>(_wgslsmith_add_u32(4294967295u >> (1u % 32u), ~(~u_input.a.x)), select(arg_1, 0u, u_input.c == (0u & u_input.b)), arg_1 ^ func_2(~vec4<u32>(arg_1, 4294967295u, 46803u, 464u), _wgslsmith_div_u32(u_input.b, 1448u))), _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 31u)], abs(reverseBits(_wgslsmith_sub_vec2_i32(global0[_wgslsmith_index_u32(u_input.c, 31u)], vec2<i32>(10764i, -2147483647i))))), Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1111f, global1.x, -860f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1269f, global1.x, arg_0.a.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(step(arg_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, -792f)))))));
    var var_2 = max(u_input.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(94475u, 37814u), ~(u_input.a & vec2<u32>(4294967295u, 0u))));
    var var_3 = abs(~abs(57576u));
    return max(~4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, ~(~u_input.d)), ~((vec3<i32>(u_input.d, 0i, u_input.d) >> (vec3<u32>(47461u, u_input.b, 1u) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(-2147483647i, -2147483647i, u_input.d), vec3<i32>(-2147483647i, 33137i, -12208i)))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, ~func_1(Struct_2(vec3<f32>(262f, -482f, 392f)), u_input.e)), ~(vec3<u32>(u_input.b, u_input.c, u_input.a.x) & vec3<u32>(u_input.c, u_input.e, 4294967295u)) ^ vec3<u32>(u_input.b, 9703u, u_input.b)) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, -1070f))));
    let var_1 = !select(vec4<bool>(!func_3(vec3<bool>(false, true, false), Struct_1(global1.zx, vec3<u32>(u_input.e, 4294967295u, 36943u), vec3<u32>(1u, 5148u, u_input.b), true), -1i).x, false, !select(true, false, false), false), vec4<bool>(true, all(vec3<bool>(true, false, true)) != false, any(vec2<bool>(false, false)), true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-710f, global1.x)), global1.x, _wgslsmith_f_op_f32(ceil(global1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(round(global1.x))) - vec3<f32>(global1.x, _wgslsmith_div_f32(global1.x, 2032f), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - global1.x), 1388f, _wgslsmith_f_op_f32(global1.x - -1627f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, -1000f, global1.x))))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -205f, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -184f, global1.x, global1.x)))), vec3<u32>(37437u, ~u_input.e, u_input.b) >> (~(vec3<u32>(6028u, u_input.e, 53674u) & vec3<u32>(35664u, u_input.e, 1u)) % vec3<u32>(32u)), var_0.xx, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -665f, 691f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-736f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-610f, -455f, global1.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1646f))))));
    global0 = array<vec2<i32>, 31>();
    global0 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, u_input.d) >> (vec2<u32>(u_input.b, u_input.e) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, -1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(18944u, 43373u), 31u)])), ~var_0.yy ^ min(-global0[_wgslsmith_index_u32(u_input.c, 31u)], -vec2<i32>(var_0.x, 12291i))), abs(vec3<u32>(49399u, _wgslsmith_mult_u32(u_input.c, u_input.c) & ~1u, u_input.a.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.d, u_input.d << (u_input.a.x % 32u), ~(-38739i), -2147483647i), vec4<i32>(-1i) * -vec4<i32>(1896i, -35472i, u_input.d, -37596i)));
}

