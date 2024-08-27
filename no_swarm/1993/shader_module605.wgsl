struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = abs(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, arg_0) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(31291u, u_input.a), vec2<u32>(u_input.b, 26340u)) % vec2<u32>(32u)), min(vec2<i32>(28814i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -7835i), vec2<i32>(arg_0, u_input.c)))), _wgslsmith_mult_vec2_i32(~(vec2<i32>(2147483647i, -2147483647i) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(1i, u_input.c)), vec2<i32>(arg_0, arg_0) & vec2<i32>(2147483647i, u_input.c)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f + -388f)) + _wgslsmith_f_op_f32(floor(998f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1691f)) + _wgslsmith_f_op_f32(-1308f * -428f)))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -804f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, 103f, var_1.x), vec4<f32>(-2072f, -194f, var_1.x, 2865f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -244f), 435f, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -546f) - _wgslsmith_f_op_f32(var_1.x * -1121f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * _wgslsmith_f_op_f32(1000f - 965f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-208f - 1100f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -2026f, var_1.x)))), !vec3<bool>(true, true, var_1.x >= var_1.x))));
    var var_3 = Struct_1(var_2.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.x + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -346f)), -1029f, var_1.x) + vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x)), _wgslsmith_f_op_f32(-1f))));
    let var_4 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)))));
}

fn func_2() -> vec3<u32> {
    var var_0 = u_input.a;
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-3427f, -359f)) + 1171f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f - 1408f) * _wgslsmith_f_op_f32(func_3(-1i))), -687f, _wgslsmith_f_op_f32(f32(-1f) * -1266f)), vec4<f32>(_wgslsmith_f_op_f32(select(-235f, _wgslsmith_f_op_f32(abs(998f)), true)), 777f, 1059f, -1913f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-1620f + -1643f), -1837f))));
    let var_3 = all(vec2<bool>(true & all(vec2<bool>(true, true)), countOneBits(_wgslsmith_sub_i32(39954i, u_input.c)) == _wgslsmith_mod_i32(-u_input.c, u_input.c & 3889i)));
    var_0 = 1u;
    return ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, max(~15800u, _wgslsmith_div_u32(u_input.a, u_input.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(23783u, u_input.a, u_input.a, 99114u), vec4<u32>(31980u, 4294967295u, u_input.b, u_input.a), vec4<u32>(u_input.b, u_input.a, 1u, u_input.a)))), vec3<u32>(1u, firstTrailingBit(22960u & u_input.a), 50057u));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(531f, _wgslsmith_f_op_f32(-arg_0.a.a.x)), -1811f, 1614f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(432f * 305f), -726f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, arg_0.b.x, 112f, arg_0.b.x), arg_0.a.b, vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.a.b), _wgslsmith_f_op_vec4_f32(-arg_0.a.a), vec4<bool>(true, true, true, true)))))));
    let var_2 = !(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false), any(vec3<bool>(false, false, true))), vec4<bool>(false, all(vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, true, false)), true)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(628f - -1090f))))), _wgslsmith_dot_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(u_input.c, 0i, u_input.c, 41288i)), abs(vec4<i32>(1i, 1i, 1i, 1i)) >> (~(vec4<u32>(u_input.b, 14416u, 4294967295u, 4294967295u) & vec4<u32>(7530u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))), vec3<u32>(~abs(var_0.x), max(62621u, _wgslsmith_sub_u32(var_0.x, ~1u)), ~(~u_input.a & max(u_input.a, var_0.x))), var_0.x);
    var_0 = vec3<u32>(~(~abs(_wgslsmith_add_u32(var_0.x, 0u))), func_2().x, var_0.x);
    return Struct_2(-1046f, u_input.c, ~_wgslsmith_mult_vec3_u32(countOneBits(var_3.c), var_3.c), ~(~1u));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1597f, arg_0, func_1(Struct_3(Struct_1(vec4<f32>(2942f, arg_1.a, -276f, 1032f), vec4<f32>(1000f, -684f, arg_1.a, -1250f)), vec3<f32>(arg_0, arg_1.a, -1000f))).a, _wgslsmith_f_op_f32(ceil(arg_1.a))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(567f, arg_1.a, -1454f, -1140f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1485f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * arg_1.a))), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(-arg_1.a)), -1664f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-417f, 1305f, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_0, 198f) - vec3<f32>(arg_1.a, arg_1.a, 2374f)), all(vec4<bool>(false, false, false, false))))))));
    var var_1 = max(~arg_1.b, -41663i);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b, _wgslsmith_mult_i32(1i, 1i)), firstLeadingBit(reverseBits(vec2<i32>(arg_1.b, -1i))), select(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.b, arg_1.b, u_input.c, u_input.c), vec4<i32>(25993i, 2147483647i, -1i, u_input.c) ^ vec4<i32>(2147483647i, arg_1.b, -1293i, 0i)), _wgslsmith_sub_i32(arg_1.b ^ arg_1.b, 1i)), vec2<i32>(_wgslsmith_sub_i32(arg_1.b, _wgslsmith_mult_i32(-2147483647i, 1i)), 2147483647i), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec2<bool>(true, false)))));
    var var_3 = true;
    var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_2.x), -vec2<i32>(u_input.c, -1i), vec2<i32>(-1i) * -vec2<i32>(67277i, -10063i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-29042i, -13293i), vec2<i32>(-21988i, arg_1.b) >> (arg_1.c.zy % vec2<u32>(32u)), -vec2<i32>(var_2.x, -65202i)) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, arg_1.b), vec2<i32>(arg_1.b, -2147483647i)), countOneBits(vec2<i32>(-27032i, -1963i)))) | -reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, var_2.x), ~vec2<i32>(19867i, -8364i)));
    return func_1(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 662f, var_0.b.x, arg_0)), vec4<f32>(arg_1.a, -404f, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a.b)) * _wgslsmith_f_op_vec4_f32(select(var_0.a.b, vec4<f32>(arg_1.a, arg_0, var_0.b.x, 778f), false)))), var_0.a.a.xzx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c << (0u % 32u);
    let var_1 = ~_wgslsmith_sub_u32(1u, u_input.b);
    let var_2 = func_4(_wgslsmith_div_f32(-1868f, -130f), func_1(Struct_3(Struct_1(vec4<f32>(-273f, 938f, -1000f, -1205f), vec4<f32>(225f, 934f, -2154f, 1911f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1899f, 556f, -563f)), vec3<f32>(-452f, -980f, -1036f)))));
    var var_3 = func_1(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-859f, 1367f, 436f, 665f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-104f, 557f, var_2.a, 852f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, 2058f, var_2.a, var_2.a)))), vec3<f32>(_wgslsmith_f_op_f32(select(-896f, -319f, false)), func_1(Struct_3(Struct_1(vec4<f32>(-410f, var_2.a, var_2.a, -851f), vec4<f32>(-1171f, 1056f, 1151f, var_2.a)), vec3<f32>(var_2.a, 895f, -1170f))).a, var_2.a)));
    let var_4 = ~(~vec4<i32>(-var_2.b, u_input.c, 0i, -2147483647i));
    var_3 = func_1(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1525f, var_3.a, -445f, -1458f), vec4<f32>(var_3.a, var_2.a, 1095f, var_2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-270f, 593f, 752f, 337f) - vec4<f32>(var_3.a, -122f, var_2.a, -988f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, 258f, var_2.a, var_2.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.a, 317f, -781f, var_3.a))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-836f, var_2.a)) - var_3.a), 287f, _wgslsmith_f_op_f32(-var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.c.x)), var_3.b);
}

