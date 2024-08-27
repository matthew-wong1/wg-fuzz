struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1377f * -530f), 1579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), -486f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-513f)) + _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1930f - -1303f))), select(any(vec2<bool>(true, true)), all(vec2<bool>(true, false)), true)))));
    var var_2 = 65912u < _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, ~1u), 1u);
    var_2 = true && (true & (true & any(vec2<bool>(true, true))));
    var var_3 = Struct_2(-(reverseBits(vec3<i32>(-1i, u_input.c, -28392i) >> (vec3<u32>(u_input.b, u_input.a.x, 60163u) % vec3<u32>(32u))) >> (min(select(u_input.a, vec3<u32>(4294967295u, u_input.a.x, u_input.b), true), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)) % vec3<u32>(32u))), ~abs(u_input.a.x & _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(169f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(-680f - 449f))), select(reverseBits(0i), _wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(0i, u_input.c), -u_input.c), all(vec4<bool>(true, true, true, true)))));
    return !select(vec3<bool>(true, true, true), vec3<bool>(true, 0i < firstLeadingBit(u_input.c), true), any(select(select(vec3<bool>(var_3.c, true, false), vec3<bool>(var_3.c, false, var_3.c), vec3<bool>(var_3.c, false, var_3.c)), select(vec3<bool>(true, var_3.c, var_3.c), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(var_3.c, true, var_3.c), vec3<bool>(var_3.c, true, var_3.c), vec3<bool>(var_3.c, false, false)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    return Struct_2(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32((vec3<i32>(32118i, u_input.c, 1i) ^ vec3<i32>(u_input.c, 2147483647i, 2147483647i)) >> (~u_input.a % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -25104i, u_input.c), vec3<i32>(14908i, 2147483647i, -1i)), ~vec3<i32>(u_input.c, 22854i, 57601i))), select(~select(vec3<i32>(u_input.c, 39741i, u_input.c), vec3<i32>(-1i, u_input.c, -63626i), arg_0), vec3<i32>(0i, 1978i, 1765i), !func_3())), _wgslsmith_add_u32(~0u, firstTrailingBit(abs(9048u) ^ _wgslsmith_div_u32(u_input.b, 27365u))), (true & arg_0) && any(select(func_3(), vec3<bool>(false, arg_0, arg_0), true)), Struct_1(u_input.c, -119f, ~(i32(-1i) * -u_input.c)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    var var_1 = var_0.d;
    let var_2 = u_input.c;
    var_1 = Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), (i32(-1i) * -firstLeadingBit(var_2)) | -(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, -45335i, 2147483647i, -2147483647i), vec4<i32>(-17865i, -2147483647i, 0i, 7566i)) >> (1u % 32u)));
    return 31929u;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_2(vec3<i32>(-min(1i, u_input.c << (arg_2 % 32u)), u_input.c, u_input.c), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1311f) + vec2<f32>(-228f, arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))), !select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_0))), func_2(true)), -1613f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1006f)) + _wgslsmith_f_op_f32(max(558f, arg_3)))), func_2(func_2(!any(vec4<bool>(true, false, arg_0, arg_0))).c).d);
    var_0 = func_2(!(!(!all(vec4<bool>(arg_0, true, false, true)))));
    let var_1 = vec3<bool>(var_0.d.a != ~(-1i), !arg_0, false);
    var var_2 = _wgslsmith_div_vec4_i32(select(~vec4<i32>(-21390i, var_0.a.x, var_0.d.c, u_input.c), vec4<i32>(-42963i, select(1i, u_input.c, false), var_0.d.a, max(-47169i, 1i)), select(!vec4<bool>(arg_0, var_1.x, var_1.x, true), select(vec4<bool>(var_0.c, var_1.x, arg_0, true), vec4<bool>(arg_0, arg_0, var_0.c, false), true), vec4<bool>(false, false, false, true))) << (vec4<u32>(32821u, 1u, 40094u, ~var_0.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(select(~vec4<i32>(var_0.a.x, 2147483647i, var_0.d.a, 0i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 12339u, arg_2), vec4<u32>(arg_2, var_0.b, arg_2, 1u)) % vec4<u32>(32u)), -abs(vec4<i32>(var_0.a.x, -42560i, 1i, u_input.c)), all(select(var_1.yz, var_1.yy, true))), ~reverseBits(countOneBits(vec4<i32>(-4290i, 31417i, var_0.a.x, var_0.d.c)))));
    let var_3 = var_0.d;
    return vec4<i32>(0i, firstLeadingBit(2147483647i) ^ var_3.a, ~2147483647i, 57720i ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c, var_0.d.c, 17035i, u_input.c), vec4<i32>(var_0.a.x, 1934i, u_input.c, 2147483647i)), -vec4<i32>(0i, -1i, var_2.x, var_0.d.a))) & abs(vec4<i32>(-var_3.a, var_0.d.c << (55739u % 32u), -1902i, ~u_input.c) | vec4<i32>(countOneBits(var_0.d.a), _wgslsmith_sub_i32(-19504i, var_0.a.x), abs(var_3.a), ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~(-7630i), select(11020i, -2147483647i, 1u <= ~(u_input.b & 14119u)), 2147483647i);
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(max(-vec4<i32>(var_0.x, 42159i, 9790i, var_0.x), _wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, var_0.x, -45389i, var_0.x), vec4<i32>(u_input.c, var_0.x, -2147483647i, 9128i) | vec4<i32>(u_input.c, -8151i, 51654i, u_input.c))), _wgslsmith_mod_vec4_i32(vec4<i32>(3331i, _wgslsmith_clamp_i32(var_0.x, 18941i, -40223i), 2147483647i, u_input.c << (0u % 32u)), vec4<i32>(0i, -var_0.x, _wgslsmith_mod_i32(var_0.x, 4511i), var_0.x))), func_1(true, _wgslsmith_add_vec2_u32(u_input.a.xz << (vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u)), max(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.b))), ~0u, _wgslsmith_f_op_f32(224f + _wgslsmith_f_op_f32(1246f - 692f))) & select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-14430i, -5200i, 1i, -35602i)), vec4<i32>(-57046i, u_input.c, u_input.c, u_input.c), vec4<i32>(var_0.x, 2147483647i, var_0.x, u_input.c) ^ vec4<i32>(57753i, var_0.x, -33650i, 20047i)), countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, 9183i)), true), _wgslsmith_add_vec4_i32(vec4<i32>(func_1(all(vec3<bool>(false, false, true)), u_input.a.zy | u_input.a.xx, u_input.b | u_input.a.x, _wgslsmith_f_op_f32(max(240f, -2711f))).x, -2344i, 19883i, -2147483647i), vec4<i32>(u_input.c << (u_input.a.x % 32u), 36364i, var_0.x >> (u_input.b % 32u), 6859i)));
    let var_2 = 955u;
    var var_3 = func_2(!((_wgslsmith_add_i32(-41123i, var_1.x) >= abs(-52836i)) & any(vec3<bool>(true, true, true)))).d;
    let var_4 = -var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(var_3.b * -1032f))) - var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -1739f)), _wgslsmith_div_i32(reverseBits(var_1.x), var_1.x), vec2<f32>(_wgslsmith_f_op_f32(-var_3.b), 1699f), 48762u);
}

