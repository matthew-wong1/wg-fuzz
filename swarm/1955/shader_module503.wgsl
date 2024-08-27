struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    return arg_0.c.x;
}

fn func_3() -> f32 {
    var var_0 = ~(i32(-1i) * -min(-36071i, -2147483647i)) & ~_wgslsmith_add_i32(0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 8739u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 55779u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), select(vec2<i32>(17189i, 4284i), vec2<i32>(-1i, 2147483647i), false)));
    var_0 = ~abs(~1i);
    var_0 = _wgslsmith_div_i32(0i, abs(reverseBits(60733i)));
    var_0 = -_wgslsmith_mod_i32(-22286i, 1i);
    return 1f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(20696i, 1i ^ _wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, 25413i, -2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, -34902i), vec3<i32>(-2147483647i, 1i, -17283i)))));
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(var_0, var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, 187f, -206f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-930f, 548f, 839f), vec3<f32>(-1522f, -1000f, -233f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-466f)), _wgslsmith_f_op_f32(f32(-1f) * -791f), -351f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-588f, 1719f, -1451f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(159f, -471f, 669f)))), false));
    let var_3 = ~(~1u);
    let var_4 = u_input.a.yy;
    return Struct_3(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1574f, var_2.x) - _wgslsmith_f_op_f32(step(var_2.x, 593f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(2506f + var_2.x)), true | select(true, false, true))), var_2.x), Struct_2(Struct_1(_wgslsmith_add_u32(var_3, u_input.a.x) >= _wgslsmith_add_u32(2793u, u_input.a.x), ~var_1.x, ~(u_input.a.yy >> (var_4 % vec2<u32>(32u))), any(vec2<bool>(true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-346f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec3_f32(var_2 * vec3<f32>(var_2.x, -166f, var_2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_2 - vec3<f32>(-487f, var_2.x, var_2.x))))), Struct_1(true, firstTrailingBit(_wgslsmith_add_i32(28588i, 31884i)), ~max(u_input.a.xz, var_4), false, _wgslsmith_f_op_f32(-var_2.x) < var_2.x), ~(~firstLeadingBit(vec4<u32>(4294967295u, var_4.x, u_input.a.x, var_3))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 2147483647i, 2147483647i), vec3<i32>(var_1.x, 3264i, var_0), vec3<i32>(106953i, 19412i, 12244i)), countOneBits(vec3<i32>(var_1.x, 17531i, var_1.x)), vec3<i32>(-23957i, 1i, 11587i)) | vec3<i32>(_wgslsmith_mult_i32(1854i, -54042i), 1161i << (var_4.x % 32u), countOneBits(var_1.x))), Struct_2(Struct_1(_wgslsmith_mod_i32(var_0, -2147483647i) >= var_0, select(-1i, ~var_0, any(vec3<bool>(false, false, false))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(48089u, var_4.x), var_4, var_4)), true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x)), Struct_1(true, -1i, _wgslsmith_mult_vec2_u32(min(var_4, var_4), ~vec2<u32>(33216u, var_3)), false, any(vec4<bool>(true, true, true, true)) && true), vec4<u32>(~32950u, 34448u, ~_wgslsmith_mod_u32(var_3, 0u), var_3), abs(~(vec3<i32>(var_0, 5224i, var_0) ^ vec3<i32>(var_0, var_1.x, 2147483647i)))), firstLeadingBit(-2147483647i) | _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_1.x, -2147483647i), vec3<i32>(2147483647i, var_0, var_1.x)), vec3<i32>(var_1.x, var_0, -24529i) | vec3<i32>(var_0, var_0, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-46652i, 0i, var_1.x), vec3<i32>(0i, 2147483647i, 1i))), false);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.zz)) * arg_0.xx);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f * -214f)))), _wgslsmith_f_op_f32(arg_1.c.b.x - 673f), _wgslsmith_f_op_f32(1605f * _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.b.x, var_0.x), var_0.x)));
    var var_2 = abs(u_input.a.x);
    var_1 = arg_1.a;
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a))))))));
    return abs((~abs(u_input.a.xz) & arg_1.c.d.xy) | ~arg_1.b.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) - -2137f) * _wgslsmith_f_op_f32(min(-2707f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1632f, -2419f)))))));
    var var_1 = vec2<u32>(reverseBits(func_1(Struct_1(false, 0i, u_input.a.yz, true, true), true) << (max(4294967295u, 1u << (1u % 32u)) % 32u)), ~max(_wgslsmith_add_u32(u_input.a.x, 60912u), 1u) >> (u_input.a.x % 32u));
    var_0 = -773f;
    var_1 = ~func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(723f, -1000f, 134f) * vec3<f32>(226f, -629f, -647f))) - vec3<f32>(2148f, -1436f, _wgslsmith_f_op_f32(-1000f - -464f))), func_2(), max(-36173i, 1i));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2().a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-751f, -1000f, true)), _wgslsmith_f_op_f32(floor(620f)))), _wgslsmith_f_op_f32(min(1911f, -329f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-943f, -1803f, 1512f) + vec3<f32>(-2014f, 700f, 533f)), vec3<f32>(269f, 1065f, -1528f)))))));
    let var_3 = _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zy)) ^ ~4294967295u;
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-23617i, ~1i);
}

