struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(Struct_2(true, 0u, -70236i, Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 22250u, 8687u, 40868u), vec4<u32>(1u, u_input.a.x, 0u, 4294967295u)), _wgslsmith_f_op_f32(-478f - 188f)), Struct_1(vec4<u32>(4294967295u, u_input.a.x, 450u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 47454u, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(vec4<u32>(46572u, u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(~vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(12377u, u_input.a.x, 4294967295u)), abs(1u), ~u_input.a.x), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-621f, 1000f, 1000f, 214f)), vec4<f32>(_wgslsmith_f_op_f32(abs(977f)), -1457f, -235f, -1000f), select(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], true)), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 10u)])), global0[_wgslsmith_index_u32(~u_input.a.x, 10u)])))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d.x + var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, global0[_wgslsmith_index_u32(1u, 10u)])))))), -1413f));
    return var_0.b.a.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, _wgslsmith_mod_u32(64887u, u_input.a.x), _wgslsmith_mod_i32(0i, -1i), Struct_1(vec4<u32>(func_3(), 86222u << (u_input.a.x % 32u), 85057u, ~reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-230f + -237f))))), Struct_1(vec4<u32>(~45467u, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~1u, u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1057f + 1771f), -977f)));
    global0 = array<bool, 10>();
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_3(), ~var_0.e.a.x), 10u)], 4294967295u, 30529i, var_0.e, var_0.e);
    let var_2 = true;
    let var_3 = any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_2, var_2, var_2, var_1.a), vec4<bool>(var_1.a, true, true, true), global0[_wgslsmith_index_u32(var_1.e.a.x, 10u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(119949u, 10u)], true), var_2 & false), true)) || true;
    return var_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_0.a.d.b, _wgslsmith_f_op_f32(f32(-1f) * -274f)), arg_0.d.x, arg_0.a.d.b);
    var var_1 = abs(~(-(vec4<i32>(-38901i, 0i, 2147483647i, 2092i) | vec4<i32>(-32047i, u_input.c, u_input.c, 2147483647i)))) ^ abs(vec4<i32>(-1i ^ ~u_input.c, ~(-arg_0.a.c), -_wgslsmith_mult_i32(arg_0.a.c, u_input.c), min(~arg_1.x, u_input.b)));
    var var_2 = 289f;
    let var_3 = 22815i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(0u, arg_0.b.a.x, arg_0.c.a.x), u_input.a.x << (arg_0.b.a.x % 32u), u_input.a.x, ~7343u), ~select(~vec4<u32>(26478u, 55976u, u_input.a.x, 2310u), arg_0.c.a, true)) % 32u);
    var_2 = arg_0.b.b;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-arg_0.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), var_0.x));
}

fn func_1() -> i32 {
    var var_0 = ~u_input.a.x;
    var var_1 = i32(-1i) * -33134i;
    var var_2 = !(!select(vec3<bool>(u_input.d != -2147483647i, global0[_wgslsmith_index_u32(80653u, 10u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(59602u, 10u)], false))), vec3<bool>(false, true, false), true));
    var var_3 = countOneBits(~vec3<u32>(1u, ~u_input.a.x << (~0u % 32u), 1u));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(555f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-179f)), _wgslsmith_f_op_f32(f32(-1f) * -493f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(true, u_input.a.x, u_input.b, Struct_1(vec4<u32>(3868u, u_input.a.x, var_3.x, 53151u), -409f), Struct_1(vec4<u32>(var_3.x, 4294967295u, 4294967295u, var_3.x), 1962f)), Struct_1(vec4<u32>(1u, 1u, var_3.x, 13691u), -163f), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1143f, 1208f, -1113f, 263f))), -_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, u_input.e.x, -6284i), vec4<i32>(u_input.e.x, u_input.c, -2147483647i, 33268i)))) + -123f), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(all(var_2.zx), func_2().a.x, countOneBits(u_input.e.x), func_2(), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, var_3.x, 40336u), -851f)), func_2(), Struct_1(vec4<u32>(u_input.a.x, 0u, 77614u, 45266u) >> (vec4<u32>(var_3.x, var_3.x, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(695f, 1261f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, -1000f, 957f, -874f)) - vec4<f32>(-2152f, -436f, 314f, -2583f))), -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -2147483647i, 26033i, u_input.e.x)), vec4<i32>(26974i, 1i, 28890i, u_input.e.x) | vec4<i32>(u_input.b, u_input.b, u_input.d, 3327i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(true, u_input.a.x, -27800i, Struct_1(vec4<u32>(46019u, 51976u, 4294967295u, 37895u), 1112f), Struct_1(vec4<u32>(var_3.x, 15039u, var_3.x, var_3.x), 315f)), Struct_1(vec4<u32>(var_3.x, u_input.a.x, var_3.x, 4294967295u), -1185f), Struct_1(vec4<u32>(1u, 22076u, 17501u, u_input.a.x), 248f), vec4<f32>(-3110f, -1000f, -546f, -474f)), abs(vec4<i32>(-2147483647i, u_input.b, 22477i, u_input.d)))))), 1f));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, func_1(), -713i, countOneBits(-2147483647i)), ~vec4<i32>(2147483647i, -2147483647i, ~u_input.d, u_input.d)) << (func_2().a.x % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1206f, -399f, 661f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, 785f, 953f, -1295f)), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 10u)])))), _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, 582f, _wgslsmith_div_f32(897f, 795f), 1187f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, -159f, -1881f, -448f))), select(any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 10u)])) | false, (u_input.a.x < u_input.a.x) || true, true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1110f, 141f, _wgslsmith_f_op_f32(892f - 366f), -491f), vec4<f32>(_wgslsmith_f_op_f32(select(-557f, 482f, true)), -1424f, -1052f, _wgslsmith_f_op_f32(floor(852f))), 17428u == select(u_input.a.x, 1449u, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 379f, 1156f, -940f)))));
    var var_2 = vec4<i32>(-u_input.c, _wgslsmith_add_i32(u_input.b, 0i), -abs(u_input.c), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.c, var_0, var_0)), abs(_wgslsmith_mod_vec3_i32(u_input.e, u_input.e)))) ^ (~vec4<i32>(firstLeadingBit(-48197i), u_input.e.x & var_0, var_0 >> (u_input.a.x % 32u), var_0) | _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(var_0, -2049i, 0i, u_input.e.x), vec4<i32>(var_0, var_0, u_input.c, var_0), false), vec4<i32>(1i, 54418i, 18342i, var_0)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, var_0, 0i, 1i), vec4<i32>(-9935i, u_input.e.x, -1i, -2470i)), _wgslsmith_mult_vec4_i32(vec4<i32>(10937i, var_0, var_0, 13708i), vec4<i32>(var_0, var_0, u_input.d, var_0)))));
    var var_3 = Struct_2(false, 4294967295u, _wgslsmith_dot_vec2_i32(countOneBits(min(u_input.e.xy, _wgslsmith_div_vec2_i32(vec2<i32>(var_2.x, var_0), vec2<i32>(u_input.e.x, u_input.b)))), vec2<i32>(var_2.x, ~u_input.c ^ _wgslsmith_mod_i32(0i, var_2.x))), func_2(), Struct_1(vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~(u_input.a.x >> (100266u % 32u)), ~(~u_input.a.x), ~u_input.a.x | (0u >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1198f - -292f) * _wgslsmith_f_op_f32(-602f - 366f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-602f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(788f, -1321f)) + 879f), var_1.x)));
}

