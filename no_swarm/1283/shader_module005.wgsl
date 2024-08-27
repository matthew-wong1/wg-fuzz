struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = ~(~((vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, 4294967295u) << (vec4<u32>(4294967295u, 43071u, 4294967295u, 98958u) % vec4<u32>(32u))) & vec4<u32>(u_input.c, u_input.a.x, 34854u, 58958u))) | abs(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, 4294967295u), u_input.c, 36347u, _wgslsmith_sub_u32(u_input.a.x, 4294967295u)), vec4<u32>(~10270u, _wgslsmith_sub_u32(1u, u_input.b), ~u_input.b, 35590u)));
    var_0 = ~vec4<u32>(12586u, ~4294967295u, 853u, firstLeadingBit(var_0.x));
    var_0 = vec4<u32>(max(22660u, ~(~(~0u))), 69198u, _wgslsmith_add_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 33350u, 62178u, 0u), vec4<u32>(var_0.x, 4294967295u, 30161u, u_input.b))), 0u), 45678u);
    var_0 = vec4<u32>(9534u, 1u & ~(var_0.x << (max(70206u, 34460u) % 32u)), select(countOneBits(~(59713u << (u_input.b % 32u))), _wgslsmith_clamp_u32(countOneBits(u_input.c ^ u_input.b), var_0.x, var_0.x), all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), var_0.x);
    let var_1 = !(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false))));
    return firstLeadingBit(vec4<i32>(i32(-1i) * -82588i, u_input.d, 45209i, -49060i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-424f, 1334f, 1492f, -1342f), vec4<f32>(615f, 1000f, 106f, -569f)), vec4<f32>(-1427f, -1413f, 662f, 942f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1946f, -1000f, 570f, -1288f))))), vec4<bool>(true, true, true, true), ~_wgslsmith_clamp_vec4_i32(func_3(), select(select(vec4<i32>(9613i, u_input.d, u_input.d, -2147483647i), vec4<i32>(u_input.d, u_input.d, -2873i, u_input.d), vec4<bool>(true, false, false, false)), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.d, 19382i, u_input.d)), vec4<f32>(-576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(trunc(-762f))))), -264f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) * -387f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-701f - 1145f), _wgslsmith_f_op_f32(select(-388f, 836f, true)))))), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.d, u_input.d), ~u_input.d, -1i | u_input.d, countOneBits(u_input.d)), vec4<i32>(-1i) * -vec4<i32>(u_input.d, 42220i, 0i, u_input.d))));
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 36133u, u_input.c) << (vec3<u32>(53292u, u_input.c, 46007u) % vec3<u32>(32u)), ~u_input.a), ~(~52060u)) ^ ~u_input.a.xz);
    var var_2 = var_0.a.a.xwz;
    var var_3 = select(!vec3<bool>(any(vec3<bool>(false, var_0.b.x, var_0.b.x)), true, var_0.b.x), !var_0.b.zzz, all(var_0.b.xz));
    var var_4 = -var_0.e.wz;
    return var_0.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    var var_0 = 1399f;
    var var_1 = u_input.a.xy;
    var var_2 = func_2();
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(arg_1.a.a.x - -1113f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-720f))), 1468f, false)), _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(trunc(-737f))))));
    var_0 = -259f;
    return select(arg_0.b, !arg_1.b, arg_1.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_2(arg_2.a, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, _wgslsmith_f_op_f32(arg_1.a.x + arg_0.d.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_2.b.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.b.a - vec4<f32>(206f, arg_1.a.x, arg_0.a.a.x, -280f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d.a.x, _wgslsmith_f_op_f32(floor(arg_2.c)))))), arg_0.a, u_input.a);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1072f, arg_2.d.a.x)), _wgslsmith_f_op_f32(-132f * arg_2.b.a.x), !arg_0.b.x)))), -1179f, arg_1.a.x, _wgslsmith_f_op_f32(-1242f - -1048f)));
    var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_f32(-1311f + 167f);
    var var_3 = arg_0.b.xx;
    return Struct_3(func_2(), !(!(!(!vec4<bool>(var_3.x, false, var_3.x, var_3.x)))), ~(-arg_0.c), var_1.a, _wgslsmith_mult_vec4_i32(-max(arg_0.c | arg_0.c, vec4<i32>(-1i, -1i, arg_0.e.x, arg_0.c.x)), -vec4<i32>(u_input.d, arg_0.c.x, -1450i, _wgslsmith_div_i32(0i, 37193i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-234f, -2285f, 338f, -528f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1756f, 1364f, 272f, 1023f))))), !select(func_1(Struct_3(Struct_1(vec4<f32>(2468f, 1411f, -658f, 1000f)), vec4<bool>(true, false, true, false), vec4<i32>(u_input.d, u_input.d, 0i, -15250i), vec4<f32>(-325f, -168f, -1245f, -1053f), vec4<i32>(u_input.d, u_input.d, 29549i, u_input.d)), Struct_3(Struct_1(vec4<f32>(1000f, 169f, -731f, 1000f)), vec4<bool>(true, false, false, false), vec4<i32>(-1i, -59258i, u_input.d, 2147483647i), vec4<f32>(258f, 2031f, -602f, 742f), vec4<i32>(u_input.d, u_input.d, -1i, u_input.d)), u_input.c), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.d), _wgslsmith_clamp_i32(31062i, u_input.d, -5094i), 0i | u_input.d, u_input.d) << (vec4<u32>(~42878u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 60959u, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.c, 36569u)), ~u_input.c) % vec4<u32>(32u)), vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(-2439f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f), -101f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 171f)), vec4<i32>(i32(-1i) * -2147483647i, countOneBits(1i), abs(u_input.d) << (u_input.c % 32u), _wgslsmith_div_i32(u_input.d, 1i))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-714f, -2681f, -204f, -413f)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-639f, -1892f, -507f, 1335f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, 844f, 888f, -1305f)))))), Struct_2(func_2(), func_2(), -1027f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, 1650f, -574f, 1564f)))), abs(u_input.a)), _wgslsmith_dot_vec3_u32(~(~u_input.a), ~vec3<u32>(select(u_input.c, u_input.b, true), firstTrailingBit(u_input.b), firstLeadingBit(u_input.b))));
    var var_1 = u_input.b;
    var_1 = 61964u;
    var_1 = 58391u;
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)))), _wgslsmith_f_op_vec4_f32(var_0.a.a * vec4<f32>(_wgslsmith_f_op_f32(round(var_0.d.x)), var_0.a.a.x, var_0.a.a.x, _wgslsmith_f_op_f32(var_0.a.a.x * 642f)))));
    var_1 = ~max(27263u, 0u << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(firstLeadingBit(4294967295u), ~max(u_input.b, u_input.a.x)), ~u_input.a.xy, u_input.d, u_input.d);
}

