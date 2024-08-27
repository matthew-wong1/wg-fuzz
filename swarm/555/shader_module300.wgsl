struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> vec3<u32> {
    global0 = array<i32, 20>();
    global0 = array<i32, 20>();
    let var_0 = _wgslsmith_f_op_f32(-1f);
    let var_1 = firstLeadingBit(u_input.c);
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_f32(-var_0), arg_1.x, arg_3));
    return ~select(vec3<u32>(~(~29103u), _wgslsmith_add_u32(0u, 6675u), ~u_input.a), ~(~vec3<u32>(u_input.a, 44519u, u_input.a) & (vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, 4294967295u, u_input.a))), vec3<bool>(true, !select(true, true, true), _wgslsmith_sub_u32(1u, u_input.a) <= reverseBits(1u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(4294967295u, 4294967295u, 40411u)) >> ((vec3<u32>(u_input.a, 4940u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 36638u) % vec3<u32>(32u))) % vec3<u32>(32u)), select(abs(vec3<u32>(1u, u_input.a, 1u)), vec3<u32>(14316u, u_input.a, u_input.a), true)), ~firstTrailingBit(vec3<u32>(67327u, 25u, u_input.a)) & func_3(arg_2, vec3<f32>(-659f, arg_3.x, arg_3.x), -u_input.c.x, 266f));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_3.xwz), _wgslsmith_div_f32(469f, arg_2.a.x), _wgslsmith_f_op_vec3_f32(arg_3.zzw - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1162f, -556f, -2245f))) * _wgslsmith_f_op_vec3_f32(-arg_3.wyw))), arg_3.x, ~vec4<u32>(u_input.a | 91454u, u_input.a, ~reverseBits(u_input.a), 4294967295u));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - 1230f)), _wgslsmith_div_f32(arg_2.a.x, var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - var_1.c.x)))), _wgslsmith_f_op_f32(ceil(-462f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(-950f, 560f, 1037f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.x, -2259f, -1000f), _wgslsmith_f_op_vec3_f32(step(var_1.c, var_1.c)))))), arg_3.wyz), 350f, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a >> (_wgslsmith_mod_u32(u_input.a, var_1.e.x) % 32u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 1u), var_1.e.x, var_1.e.x), _wgslsmith_div_u32(~37850u, ~0u)), ~((vec4<u32>(1u, 1u, 13375u, var_1.e.x) ^ var_1.e) >> (var_1.e % vec4<u32>(32u)))));
    var_0 = 16752u;
    var_0 = _wgslsmith_sub_u32(firstLeadingBit(~u_input.a), ~_wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(var_1.e.xxw, var_1.e.xwy), 13482u), ~countOneBits(var_1.e.x)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.a)) + _wgslsmith_f_op_vec3_f32(-var_1.a)), _wgslsmith_f_op_f32(round(1026f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(954f, _wgslsmith_f_op_f32(select(arg_2.a.x, -835f, true)), -2468f) - vec3<f32>(arg_2.a.x, -1106f, _wgslsmith_f_op_f32(min(arg_2.a.x, -777f)))), _wgslsmith_f_op_vec3_f32(-var_1.a), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(max(arg_2.a.x, -915f))))))), ~vec4<u32>(reverseBits(0u) | (4294967295u << (u_input.a % 32u)), select(u_input.a, var_1.e.x, true) << (u_input.a % 32u), var_1.e.x, 6895u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = vec4<i32>(-_wgslsmith_mod_i32(2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 3632u, 24821u), arg_1.e), ~4294967295u), 20u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~22522u) & select(1u, max(arg_1.e.x, 85457u), true), func_2(true, global0[_wgslsmith_index_u32(arg_0.x, 20u)], Struct_2(vec4<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 1078f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.x, 969f, arg_1.b, 220f)))).e.x << (arg_0.x % 32u)), 20u)], u_input.c.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.xz), -u_input.c.x, _wgslsmith_div_i32(-18221i, 25746i)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1323u, 20u)], global0[_wgslsmith_index_u32(42326u, 20u)], u_input.d, 39371i), vec4<i32>(u_input.c.x, -2355i, global0[_wgslsmith_index_u32(6460u, 20u)], global0[_wgslsmith_index_u32(arg_0.x, 20u)])))), abs(-(-global0[_wgslsmith_index_u32(arg_0.x, 20u)] & u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.c);
    let var_2 = any(select(vec2<bool>(!(-519f < var_1.x), !any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 20u)] >= u_input.d)), true || all(vec2<bool>(true, true))));
    var var_3 = var_0.zx;
    var_3 = vec2<i32>(_wgslsmith_div_i32(-min(0i, 48614i) >> (1u % 32u), 11075i), global0[_wgslsmith_index_u32(arg_1.e.x, 20u)]);
    return any(!(!(!select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, false), var_2))));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global0 = array<i32, 20>();
    let var_0 = vec4<bool>(true, func_4(~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 40822u))), func_2(true, _wgslsmith_mod_i32(i32(-1i) * -53117i, _wgslsmith_sub_i32(2147483647i, 0i)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(arg_1.a))), arg_1.a)), any(vec4<bool>(func_4(~vec4<u32>(u_input.a, 0u, 1u, 0u), Struct_1(vec3<f32>(arg_1.a.x, 1281f, 1900f), 380f, vec3<f32>(-673f, -393f, arg_1.a.x), arg_1.a.x, vec4<u32>(30439u, u_input.a, u_input.a, 46758u))), any(vec3<bool>(true, true, true)), false, true)), arg_1.a.x < -1101f);
    let var_1 = arg_1.a.yzz;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 + vec3<f32>(_wgslsmith_div_f32(-856f, 1622f), arg_1.a.x, _wgslsmith_f_op_f32(step(var_1.x, -2149f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1), arg_1.a.zyw))), _wgslsmith_f_op_f32(round(1141f)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(57330u, u_input.a, 47279u, 3801u), firstLeadingBit(vec4<u32>(42307u, 45423u, 1u, u_input.a))), vec4<u32>(_wgslsmith_sub_u32(u_input.a, 14523u), ~51825u, u_input.a, 1u)) & vec4<u32>(u_input.a, 48125u, countOneBits(22524u), _wgslsmith_mod_u32(abs(u_input.a), u_input.a)));
    let var_3 = 17267u & var_2.e.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)));
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> vec4<f32> {
    global0 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(arg_3.a, arg_3.a), vec4<f32>(-1000f, arg_2, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(-1069f))), select(arg_1, select(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), select(arg_1, arg_1, true), arg_1.x), arg_1, ~global0[_wgslsmith_index_u32(78544u, 20u)] < firstTrailingBit(0i)), arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)));
    var var_2 = vec2<u32>(_wgslsmith_div_u32(u_input.a << (_wgslsmith_dot_vec4_u32(~vec4<u32>(28962u, 3235u, u_input.a, 0u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % 32u), 45587u), u_input.a);
    global0 = array<i32, 20>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_3.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(595f + arg_3.a.x)))) * vec4<f32>(_wgslsmith_f_op_f32(arg_2 * -135f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1, var_0.x)), arg_3.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1061f, 336f)))), 774f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-678f))));
    var var_1 = !(!vec2<bool>(select(true, true, false) & true, select(any(vec2<bool>(false, false)), true, u_input.a < u_input.a)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_div_f32(-902f, -685f), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_0, func_1(-2147483647i, Struct_2(vec4<f32>(var_0, -2116f, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(-func_1(8225i, Struct_2(vec4<f32>(var_0, var_0, var_0, 353f))).a))));
    let var_3 = Struct_2(vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - -1206f) + _wgslsmith_f_op_f32(633f * var_2.a.x)) * -1045f), _wgslsmith_f_op_f32(-714f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2102f - 139f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-669f + var_0) * -3028f))));
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, -303f)) + var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * var_0) * _wgslsmith_f_op_f32(floor(var_2.a.x))), !var_1.x))), 408f, !all(!select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x))));
    let var_5 = func_2(true, _wgslsmith_mult_i32(2628i, reverseBits(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 20u)], ~global0[_wgslsmith_index_u32(u_input.a, 20u)]))), func_1(3727i, func_1(-max(1i, 0i), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_4, var_2.a.x, var_4) * vec4<f32>(778f, 1641f, var_3.a.x, var_0))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_2.a.x, var_0, -535f)));
    let var_6 = Struct_1(var_3.a.wzy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1151f - _wgslsmith_f_op_f32(sign(1611f))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(376f * var_0)))), var_2.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(var_4 - var_3.a.x), 1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4, 1008f, var_3.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, -2551f, var_5.d)) * vec3<f32>(var_5.b, var_5.d, var_0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(507f, func_2(all(vec4<bool>(var_1.x, true, false, true)), -2147483647i, func_1(-2147483647i, Struct_2(vec4<f32>(-133f, 1662f, var_5.c.x, -875f))), vec4<f32>(1000f, var_5.a.x, var_5.c.x, 658f)).a.x))), ~vec4<u32>(0u, 0u, var_5.e.x, ~u_input.a) & var_5.e);
    var var_7 = select(true || all(vec4<bool>(43465u < u_input.a, !var_1.x, global0[_wgslsmith_index_u32(var_5.e.x, 20u)] != u_input.c.x, func_4(var_6.e, Struct_1(vec3<f32>(var_6.d, var_3.a.x, -1475f), var_5.c.x, var_5.c, var_3.a.x, vec4<u32>(u_input.a, var_5.e.x, 1u, u_input.a))))), u_input.a <= ~(~10218u), var_1.x | false);
    let var_8 = vec4<bool>(var_1.x, false, true, var_1.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.zy, vec4<u32>(1u, 120449u, u_input.a, firstLeadingBit(1u)), var_6.e.ww, var_6.e.x, 1i);
}

