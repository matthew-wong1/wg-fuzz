struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    return _wgslsmith_f_op_f32(arg_1 * arg_1);
}

fn func_2() -> Struct_1 {
    var var_0 = select(!(!(-u_input.b <= 7965i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1924f * 1571f))) + -213f) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(151f, 1045f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-614f)) * _wgslsmith_f_op_f32(f32(-1f) * -667f)))), any(vec4<bool>(select(true, true, false) || true, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<f32>(-723f, -435f, 611f), vec3<f32>(-1000f, 1100f, 901f), false), Struct_1(vec3<f32>(1000f, 795f, 285f), vec3<f32>(794f, -681f, 1000f), false)), 460f, vec4<u32>(30819u, u_input.a.x, u_input.a.x, 0u))) != _wgslsmith_f_op_f32(select(876f, 523f, false)), true, true)));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-349f, _wgslsmith_f_op_f32(ceil(-1059f)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(195f * -1461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-852f - 1372f), _wgslsmith_f_op_f32(ceil(-1966f))))))), 1126f, true));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_1, -883f)), var_1, _wgslsmith_f_op_f32(var_1 + var_1)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, -675f, var_1))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, var_1)))))), vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), var_1)), true));
    var_0 = var_2.a.c;
    var var_3 = u_input.b;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.b.x + var_2.a.b.x), -1209f)), var_1, -493f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2.a.a.x)), 234f, _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(-1112f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1429f + -1583f)))), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_5 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(reverseBits(min(vec3<u32>(~u_input.a.x, 16867u, 4294967295u), ~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.a.a), vec3<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(1458f + arg_2.b.x), _wgslsmith_f_op_f32(-arg_2.a.x)), all(!vec3<bool>(arg_2.c, true, arg_1.a.c))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, -880f, -769f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2297f, 806f, arg_1.a.b.x)), _wgslsmith_f_op_vec3_f32(-arg_1.a.a)), !select(arg_1.b.c, arg_2.c, arg_2.c))), firstLeadingBit(~abs(vec3<u32>(0u, u_input.a.x, 21597u))) >> ((~(~vec3<u32>(u_input.a.x, 43859u, 1u)) & (~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) & vec3<u32>(u_input.a.x, 118315u, 1u))) % vec3<u32>(32u)), select(select(vec2<bool>(!arg_1.b.c, u_input.a.x != u_input.a.x), select(select(vec2<bool>(arg_1.b.c, false), vec2<bool>(false, true), vec2<bool>(arg_1.b.c, arg_2.c)), vec2<bool>(arg_1.b.c, arg_1.b.c), arg_1.a.c || arg_1.b.c), arg_2.c), select(select(select(vec2<bool>(false, arg_1.a.c), vec2<bool>(false, arg_1.a.c), arg_1.a.c), vec2<bool>(arg_1.b.c, false), select(vec2<bool>(true, arg_2.c), vec2<bool>(arg_2.c, true), true)), !select(vec2<bool>(arg_2.c, false), vec2<bool>(false, true), vec2<bool>(true, arg_1.b.c)), select(true, arg_1.b.c, true)), true));
    let var_2 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_1.a.x, ~min(u_input.a.x, var_1.c.x)), 28710u);
    let var_3 = u_input.b != -abs(0i);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2098f, _wgslsmith_f_op_f32(f32(-1f) * -1574f), -453f, _wgslsmith_div_f32(-1095f, -872f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.a.x, -903f, var_1.b.b.b.x, -471f)), select(vec4<bool>(true, arg_1.a.c, var_1.d.x, var_3), select(vec4<bool>(true, var_1.b.b.c, arg_1.b.c, var_1.d.x), vec4<bool>(var_3, var_1.d.x, arg_2.c, var_3), vec4<bool>(false, false, false, false)), var_1.d.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, arg_2.b.x, 711f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - arg_2.b.x), -1000f))), select(select(!vec4<bool>(true, false, var_3, var_3), vec4<bool>(select(arg_2.c, true, true), arg_1.a.c, false, 4294967295u < var_1.c.x), !vec4<bool>(arg_1.b.c, arg_2.c, arg_1.a.c, true)), !(!(!vec4<bool>(var_3, arg_2.c, false, false))), (_wgslsmith_mult_i32(-1i, arg_0.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.c.x), u_input.a) % 32u)) != 7581i)));
    return Struct_5(var_1, reverseBits(var_1.a.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = !arg_1;
    var var_1 = var_0.x;
    var_0 = arg_1;
    var_1 = (((var_0.x || !var_0.x) && ((arg_1.x | true) | var_0.x)) | !(abs(u_input.a.x) <= 1u)) & false;
    let var_2 = func_4(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(40084u, 0u, 54226u, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(68223i, 1i, 3588i, -10319i))), Struct_2(func_2(), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, -2292f) - vec3<f32>(arg_2, 909f, arg_2)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, -251f, arg_2)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -957f, arg_2), vec3<f32>(arg_2, -454f, arg_2)))), var_0.x)), func_2());
    return vec3<u32>(63212u, ~1u, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(u_input.a.x, 6817u, u_input.a.x)), ~func_1(vec3<u32>(56716u, 0u, 0u), vec2<bool>(false, true), 1971f)), vec3<u32>(~countOneBits(u_input.a.x), 0u, ~(u_input.a.x >> (u_input.a.x % 32u)))), ~vec3<u32>(40699u, _wgslsmith_div_u32(~u_input.a.x, max(36605u, 0u)), select(u_input.a.x, ~u_input.a.x, true)));
    let var_1 = !(_wgslsmith_div_f32(-131f, 807f) < func_4(~select(vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), vec4<i32>(u_input.b, -10839i, -26465i, -28115i), vec4<bool>(true, true, false, true)), Struct_2(func_4(vec4<i32>(-22307i, 0i, 16886i, -25729i), Struct_2(Struct_1(vec3<f32>(910f, -439f, 513f), vec3<f32>(1507f, 1406f, 3130f), false), Struct_1(vec3<f32>(626f, -1846f, -783f), vec3<f32>(-144f, -1054f, -685f), true)), Struct_1(vec3<f32>(-738f, 2753f, -388f), vec3<f32>(1285f, -1310f, -675f), true)).a.b.a, func_4(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), Struct_2(Struct_1(vec3<f32>(981f, 1786f, 263f), vec3<f32>(-1000f, -1143f, -470f), false), Struct_1(vec3<f32>(-696f, -215f, -1229f), vec3<f32>(-284f, -1386f, -131f), false)), Struct_1(vec3<f32>(-1141f, -173f, -828f), vec3<f32>(-571f, -229f, 511f), true)).a.b.a), Struct_1(vec3<f32>(-126f, -1498f, -322f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 272f, 285f)), true)).a.b.b.b.x);
    let var_2 = vec4<i32>(select(1i, firstTrailingBit(~(~(-3653i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))) < _wgslsmith_f_op_f32(floor(-2591f))), _wgslsmith_mod_i32(~_wgslsmith_add_i32(~0i, 1i), _wgslsmith_div_i32(~u_input.b, u_input.b)), u_input.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 10788i), vec4<i32>(u_input.b, -1i, -2147483647i, u_input.b)), -vec4<i32>(8190i, -78081i, 65320i, 1i))), firstTrailingBit(~0i) ^ u_input.b));
    var_0 = _wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(u_input.a.x, 1u, 0u) << (select(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 0u), false) % vec3<u32>(32u))), vec3<u32>(reverseBits(u_input.a.x), ~u_input.a.x, ~40234u));
    var var_3 = !vec2<bool>(!func_2().c, true);
    var_0 = 120660u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) - _wgslsmith_f_op_f32(f32(-1f) * -217f)), -240f), 731f));
}

