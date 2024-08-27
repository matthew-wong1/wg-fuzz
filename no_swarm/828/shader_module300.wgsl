struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    var var_0 = select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, false)) & true, all(vec3<bool>(true, false, true)) != true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true))), !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, !all(vec4<bool>(true, true, true, false)), any(vec3<bool>(any(vec3<bool>(true, true, true)), u_input.d.x > u_input.d.x, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(ceil(426f))))), 631f) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1380f + _wgslsmith_f_op_f32(f32(-1f) * -726f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1217f + 502f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f + -1069f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(743f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(sign(923f)))))));
    var var_2 = max(min(vec4<u32>(~(~27455u), firstLeadingBit(60685u), u_input.a, _wgslsmith_div_u32(1u, abs(u_input.b))), max(reverseBits(vec4<u32>(1u, u_input.b, 0u, 18909u) >> (vec4<u32>(1u, 0u, u_input.b, 8018u) % vec4<u32>(32u))), abs(vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 75014u) & vec4<u32>(20739u, u_input.c.x, u_input.b, u_input.c.x)))), vec4<u32>(u_input.c.x, ~(~u_input.b) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), u_input.c), ~(~abs(u_input.c.x)), _wgslsmith_mult_u32(u_input.c.x, ~70725u)));
    var var_3 = _wgslsmith_clamp_vec3_u32(~countOneBits(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, 18234u, var_2.x), var_2.yyy, var_0.wxy), var_2.zwx & var_2.wyw, reverseBits(var_2.xzw))), _wgslsmith_sub_vec3_u32(~max(countOneBits(var_2.xyz), firstLeadingBit(vec3<u32>(12169u, u_input.c.x, 4294967295u))), select(var_2.xxy, vec3<u32>(20059u, var_2.x, ~73898u), select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), vec3<bool>(false, var_0.x, false), any(vec2<bool>(true, var_0.x))))), vec3<u32>(~firstLeadingBit(var_2.x), var_2.x, var_2.x));
    var_2 = ~abs(vec4<u32>(~var_3.x, ~_wgslsmith_add_u32(u_input.b, 4158u), var_2.x, _wgslsmith_mult_u32(var_3.x << (1u % 32u), 4294967295u)));
    return select(u_input.d, vec3<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x), u_input.d.x), var_0.yxz);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_0 = arg_0;
    let var_1 = arg_0.d;
    global0 = array<vec4<i32>, 14>();
    return func_3();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> vec4<f32> {
    global0 = array<vec4<i32>, 14>();
    let var_0 = select(select(!vec3<bool>(all(vec3<bool>(true, arg_0.d, arg_0.d)), !arg_0.d, true), select(!vec3<bool>(arg_0.d, true, arg_0.d), select(vec3<bool>(false, arg_0.d, false), !vec3<bool>(false, arg_0.d, false), select(vec3<bool>(arg_0.d, true, false), vec3<bool>(arg_0.d, false, true), vec3<bool>(false, true, true))), select(!vec3<bool>(arg_0.d, arg_0.d, arg_0.d), select(vec3<bool>(arg_0.d, true, false), vec3<bool>(arg_0.d, false, arg_0.d), true), arg_0.d)), any(select(vec3<bool>(arg_0.d, arg_0.d, true), !vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(true, true, true)))), select(select(!select(vec3<bool>(arg_0.d, true, true), vec3<bool>(false, arg_0.d, false), vec3<bool>(arg_0.d, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d, arg_0.d, true), vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(false, arg_0.d, true)), select(vec3<bool>(true, arg_0.d, false), vec3<bool>(true, arg_0.d, arg_0.d), vec3<bool>(false, arg_0.d, arg_0.d))), !vec3<bool>(arg_0.d, true, arg_0.d)), vec3<bool>(!arg_0.d, any(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true), vec4<bool>(true, true, arg_0.d, true), true)), true), false), arg_0.d);
    global0 = array<vec4<i32>, 14>();
    let var_1 = arg_2;
    let var_2 = _wgslsmith_mod_vec3_i32(select(u_input.d, arg_0.a, (arg_0.b.x | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), u_input.d.xy)) == ~_wgslsmith_add_i32(43083i, arg_0.b.x)), _wgslsmith_clamp_vec3_i32(~u_input.d, ~_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(1i, 2147483647i, -7834i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.x, -11785i, 0i), vec3<i32>(u_input.d.x, arg_1.x, arg_1.x), vec3<i32>(24818i, u_input.d.x, u_input.d.x))), max(_wgslsmith_mult_vec3_i32(countOneBits(arg_1.wyy), arg_1.yzy), vec3<i32>(-33787i, -2147483647i, arg_1.x))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(956f, -873f, -528f, -1819f) + vec4<f32>(-1406f, -378f, 1230f, 349f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1561f, -435f, 1000f, 556f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, 857f, 2245f, -349f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f + -467f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1294f - 2098f))), -1659f, _wgslsmith_div_f32(-377f, -316f)), vec4<f32>(_wgslsmith_f_op_f32(select(-1311f, 1035f, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(187f + -695f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-969f, -905f)), _wgslsmith_f_op_f32(step(-1620f, -968f)), true)), _wgslsmith_f_op_f32(min(-726f, _wgslsmith_div_f32(119f, -495f)))), ~(i32(-1i) * -1i) >= u_input.d.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(177f, _wgslsmith_f_op_f32(round(-731f)), _wgslsmith_f_op_f32(step(-1701f, 1225f)), arg_2.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * _wgslsmith_f_op_vec4_f32(vec4<f32>(271f, arg_2.x, 2058f, arg_2.x) * vec4<f32>(-763f, -1376f, 241f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(func_2(Struct_1(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec2<i32>(-31944i, u_input.d.x), u_input.d.x, false), arg_2.x), -u_input.d.yx, -u_input.d.x, !arg_1), global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.b)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1290f, _wgslsmith_f_op_f32(step(arg_2.x, 268f)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x), -1187f)))));
    let var_1 = Struct_1(u_input.d, ~u_input.d.yz, u_input.d.x, true);
    global0 = array<vec4<i32>, 14>();
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, _wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    return Struct_1(var_1.a, ~(~(~vec2<i32>(-392i, u_input.d.x))), 0i, true);
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_clamp_u32(min(select(reverseBits(50811u), ~1u, func_1(u_input.c, arg_0.d, vec4<f32>(1000f, 1997f, 849f, -809f)).d), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14524u, u_input.b), vec3<u32>(u_input.b, u_input.c.x, 4294967295u)) >> (u_input.b % 32u)), ~u_input.b, ~u_input.c.x);
    global0 = array<vec4<i32>, 14>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(min(vec3<i32>(-u_input.d.x, firstLeadingBit(-49894i), abs(arg_0.a.x)), _wgslsmith_mult_vec3_i32(-u_input.d, ~arg_0.a)), u_input.d, abs((vec3<i32>(u_input.d.x, 1i, u_input.d.x) | u_input.d) ^ firstTrailingBit(u_input.d))), _wgslsmith_sub_vec2_i32(firstTrailingBit(arg_0.b), arg_0.a.xx), _wgslsmith_dot_vec3_i32(reverseBits(arg_0.a), vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(var_0, 14u)], vec4<i32>(2147483647i, arg_0.b.x, -23642i, arg_0.a.x)), select(32417i, -arg_0.a.x, arg_0.d | true), ~(-arg_0.a.x))), true);
    var var_2 = 0u;
    var_2 = _wgslsmith_mult_u32((~(~var_0) & ~(~4294967295u)) ^ ~(~4294967295u), var_0);
    return _wgslsmith_mod_u32(0u, 40137u);
}

fn func_6(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = func_1(vec2<u32>(~88813u, ~2748u), true, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-268f - 1764f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1)));
    let var_1 = var_0;
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_2 = !select(!(!select(vec3<bool>(var_0.d, var_1.d, false), vec3<bool>(false, false, var_0.d), false)), select(!vec3<bool>(var_0.d, var_0.d, false), !vec3<bool>(false, var_1.d, true), select(true || var_0.d, func_1(vec2<u32>(70740u, arg_0), var_0.d, vec4<f32>(arg_1, -999f, arg_1, -408f)).d, select(true, false, false))), select(all(vec2<bool>(true, true)), select(var_0.a.x, -31646i, var_1.d) == var_1.c, var_1.d));
    return max(var_1.a.x, -_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~abs(arg_0), 14u)], ~(~global0[_wgslsmith_index_u32(1u, 14u)])));
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(countOneBits(vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), -36097i, ~(-28061i)))), vec2<i32>(-_wgslsmith_add_i32(u_input.d.x, 1i), ~(i32(-1i) * -2147483647i)), u_input.d.x, select(_wgslsmith_mult_i32(-921i, u_input.d.x) != -1i, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    var var_1 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 13049u, u_input.a, 16550u), vec4<u32>(u_input.a, 1u, ~u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 28048u))) >> ((vec4<u32>(u_input.b ^ 0u, u_input.b, ~9552u, 1u & u_input.a) >> ((vec4<u32>(45281u, u_input.b, u_input.c.x, u_input.a) | abs(vec4<u32>(2181u, u_input.b, u_input.a, u_input.c.x))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = vec2<bool>(func_7(func_6(func_5(func_1(var_1.yw, false, vec4<f32>(107f, 1012f, 483f, -1101f))), -892f), Struct_1(u_input.d, u_input.d.yz, _wgslsmith_mod_i32(458i, var_0.c) ^ (var_0.a.x ^ -1i), var_0.d)), any(select(select(!vec3<bool>(false, var_0.d, false), !vec3<bool>(false, var_0.d, var_0.d), !vec3<bool>(var_0.d, var_0.d, true)), !vec3<bool>(false, var_0.d, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(var_0.d, true, var_0.d), var_0.d), vec3<bool>(var_0.d, var_0.d, true)))));
    var_1 = vec4<u32>(func_5(var_0), _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(u_input.a, 4294967295u)), ~(var_1.wy << (var_1.xx % vec2<u32>(32u))), var_0.d | true), var_1.xw), ~33226u, 88069u);
    let var_3 = Struct_1(reverseBits(vec3<i32>(select(var_0.a.x, -4039i, var_2.x) | u_input.d.x, ~1i, u_input.d.x)), vec2<i32>(func_2(var_0, -1127f).x, 1i), var_0.a.x, select(true, var_0.c == max(-var_0.b.x, u_input.d.x & -1i), ~(var_0.b.x >> (4294967295u % 32u)) > firstTrailingBit(_wgslsmith_mod_i32(-57493i, u_input.d.x))));
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_4 = func_1(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(~var_1.x, abs(u_input.a))), vec2<u32>(abs(9024u), max(var_1.x, ~9964u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(var_1.x, 294u), vec2<u32>(49413u, u_input.b), var_2.x), ~vec2<u32>(var_1.x, 0u)) >> (~_wgslsmith_clamp_vec2_u32(var_1.xw, vec2<u32>(15510u, var_1.x), u_input.c) % vec2<u32>(32u))), var_3.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-704f, 831f, -1000f, 398f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, _wgslsmith_f_op_f32(f32(-1f) * -571f), 227f, -413f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(448f, -828f, -215f, -543f) * vec4<f32>(1890f, 641f, -1439f, 1495f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(270f, -1080f, -710f, -1762f), vec4<f32>(724f, -259f, -1085f, 1422f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.a, ~0u, _wgslsmith_div_u32(~max(2948u, ~u_input.b), ~(~u_input.c.x) >> (~(~4609u) % 32u)));
}

