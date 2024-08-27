struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(~countOneBits(firstLeadingBit(u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_mod_vec2_u32(max(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), arg_1.a.yw), _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(4294967295u, u_input.c))), u_input.b));
    var var_1 = min(u_input.b.x, 35984u);
    var var_2 = arg_1;
    let var_3 = var_0;
    var var_4 = var_0;
    return _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x);
}

fn func_2() -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a & vec2<i32>(u_input.a.x, 0i), u_input.a), ~(~u_input.a.x), u_input.a.x, 41404i), -_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, -27598i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(12757i, -36330i, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, -11294i, 43444i, u_input.a.x))));
    var_0 = firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, 1i, 22650i, i32(-1i) * -1i)));
    var_0 = ~(~(-(firstLeadingBit(vec4<i32>(-32555i, -1632i, u_input.a.x, var_0.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.c)) % vec4<u32>(32u)))));
    var_0 = vec4<i32>(_wgslsmith_add_i32(var_0.x, ~func_3(1u, Struct_2(vec4<u32>(u_input.c, 1u, u_input.c, u_input.b.x), vec4<i32>(-2147483647i, var_0.x, -13791i, var_0.x), vec3<u32>(1u, u_input.c, u_input.c)))), _wgslsmith_mod_i32(-4917i, select(abs(50330i), 1i, true)), min(-34676i, i32(-1i) * -31359i), 1i);
    let var_1 = Struct_1(firstTrailingBit(abs(1u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1246f, -1643f, 483f, -1191f)))))), ~vec2<u32>(_wgslsmith_div_u32(u_input.c, 15581u) << (u_input.b.x % 32u), _wgslsmith_mod_u32(1u, ~74605u)));
    return Struct_2(max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, var_1.c.x, var_1.c.x, var_1.a), vec4<u32>(0u, var_1.a, var_1.c.x, 0u))), abs(vec4<u32>(~1u, ~48863u, 34536u, abs(4294967295u)))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.yzy, var_0.wxz), var_0.x, min(u_input.a.x, -20784i), firstLeadingBit(u_input.a.x))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(var_0.x, u_input.a.x, var_0.x, -2147483647i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, var_1.c.x, var_1.a, 4294967295u), vec4<u32>(37067u, 47266u, u_input.b.x, var_1.c.x)) % vec4<u32>(32u)))), _wgslsmith_div_vec3_u32(~(~firstTrailingBit(vec3<u32>(0u, 63510u, 0u))), vec3<u32>(0u, ~_wgslsmith_dot_vec2_u32(var_1.c, u_input.b), reverseBits(_wgslsmith_mod_u32(1u, 4294967295u)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = vec2<bool>(select(!(!select(false, false, true)), !select(true, true, false) || true, all(vec4<bool>(select(true, false, false), any(vec4<bool>(true, false, true, true)), select(true, false, false), true))), true);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(abs(u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(arg_1.c.x), ~arg_2), arg_1.a.yx)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1005f - arg_0.x)), _wgslsmith_f_op_f32(arg_0.x * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * _wgslsmith_f_op_f32(min(arg_0.x, 1745f)))))), _wgslsmith_mod_vec2_u32(firstTrailingBit(~(~vec2<u32>(u_input.c, arg_2))), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2, arg_2) << (arg_1.c.yx % vec2<u32>(32u)), arg_1.c.yx >> (select(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_2, 1u), vec2<bool>(false, var_0.x)) % vec2<u32>(32u)))));
    let var_2 = Struct_2(arg_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -4718i, 1i, select(_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), -13130i, !var_0.x), -1i), min(arg_1.b, arg_1.b)), arg_1.a.wwz);
    var_1 = Struct_1(~(~_wgslsmith_div_u32(~var_1.c.x, var_2.c.x >> (4294967295u % 32u))), var_1.b, u_input.b);
    let var_3 = _wgslsmith_clamp_vec4_i32(-(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(0i, var_2.b.x, -16572i, arg_1.b.x))), arg_1.b, vec4<i32>(-var_2.b.x, _wgslsmith_dot_vec2_i32(~(~arg_1.b.xx), vec2<i32>(u_input.a.x, arg_1.b.x) ^ func_2().b.zy), abs(-21791i), var_2.b.x));
    return 1u;
}

fn func_1(arg_0: Struct_4) -> f32 {
    let var_0 = arg_0.b.b.x;
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(-(firstLeadingBit(u_input.a.x) << (~0u % 32u)), _wgslsmith_sub_i32(arg_0.c.x, -(1i >> (u_input.b.x % 32u)))), vec2<i32>(54609i, 11962i));
    let var_2 = Struct_1(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.a, 5746u, u_input.b.x, 21599u), vec4<u32>(78027u, arg_0.b.a, arg_0.b.c.x, 58571u)), ~vec4<u32>(1u, u_input.b.x, arg_0.b.c.x, 38720u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, arg_0.b.b.x), _wgslsmith_f_op_f32(trunc(-777f))))), var_0, var_0, _wgslsmith_f_op_f32(-1786f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(989f))))), (vec2<u32>(0u, 0u) << (~firstTrailingBit(u_input.b) % vec2<u32>(32u))) | vec2<u32>(_wgslsmith_mod_u32(select(89695u, arg_0.b.c.x, true), arg_0.b.c.x), 101851u));
    var var_3 = func_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) - arg_0.b.b.x) - arg_0.b.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1049f)))), func_2(), ~_wgslsmith_clamp_u32(max(0u, 2925u), var_2.c.x, ~arg_0.b.c.x));
    var var_4 = Struct_4(any(!vec4<bool>(select(arg_0.a, arg_0.a, false), arg_0.b.b.x <= 1000f, any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), var_2.b.x != -112f)), var_2, abs(-(arg_0.c & vec4<i32>(28628i, u_input.a.x, var_1.x, var_1.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2514f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.b.x, -320f)) + _wgslsmith_f_op_f32(abs(var_2.b.x))), var_4.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_4(true, Struct_1(u_input.c, vec4<f32>(2140f, -196f, 797f, -1000f), vec2<u32>(49828u, u_input.b.x)), vec4<i32>(-2147483647i, -45365i, 24110i, 0i)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1201f * 1912f)))), 227f));
    var_0 = -1000f;
    var_0 = 775f;
    var var_1 = ~max(~u_input.b, u_input.b);
    let var_2 = func_2();
    var_1 = vec2<u32>(1u, var_1.x);
    var var_3 = 0u;
    let var_4 = _wgslsmith_mult_vec4_u32(vec4<u32>(~abs(_wgslsmith_div_u32(var_2.a.x, u_input.b.x)), var_2.c.x, 0u, ~15441u), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_div_i32(-65427i, u_input.a.x), 5909i, -1i, ~var_2.b.x << (~var_1.x % 32u)));
}

