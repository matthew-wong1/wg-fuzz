struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    var var_0 = _wgslsmith_add_i32(arg_1.a.b.b.x, (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.e.x, -1i, arg_1.d.x, 0i) | vec4<i32>(-2147483647i, u_input.c.x, arg_1.a.b.e.x, 59470i), vec4<i32>(-611i, arg_0.b.e.x, u_input.c.x, -28909i)) << (u_input.d.x % 32u)) ^ 0i);
    var_0 = u_input.c.x;
    let var_1 = u_input.d;
    let var_2 = arg_0.b.b.x;
    var_0 = firstLeadingBit(32142i);
    return -(~countOneBits(arg_0.b.a)) == -u_input.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.d.x, -473f, arg_0.b.d.x), arg_2.wzy))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.d.x * 561f), _wgslsmith_f_op_f32(arg_2.x - arg_0.b.d.x), _wgslsmith_f_op_f32(-779f + arg_0.b.d.x))))));
    let var_2 = ((u_input.c.x | (i32(-1i) * -15854i)) | (arg_0.b.e.x >> (_wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.yy) % 32u))) <= u_input.c.x;
    var_0 = !(!((false & var_2) != (arg_0.b.c & arg_1)) || arg_0.b.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -494f)), 2363f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.b.d.x)), 115f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 630f, arg_2.x) - arg_0.b.d.zzw) + var_1))), select(!(!vec3<bool>(false, var_2, arg_0.b.c)), vec3<bool>(true, false, u_input.c.x > u_input.c.x), vec3<bool>(true, !arg_0.b.c, func_3(Struct_2(arg_3, Struct_1(arg_0.b.a, vec4<i32>(-65037i, arg_0.b.e.x, u_input.c.x, arg_0.b.b.x), false, vec4<f32>(arg_0.b.d.x, arg_0.b.d.x, arg_0.b.d.x, 1000f), vec3<i32>(0i, 13881i, -1i))), Struct_3(Struct_2(70861u, Struct_1(-2147483647i, vec4<i32>(arg_0.b.e.x, 2147483647i, 0i, u_input.c.x), true, vec4<f32>(arg_0.b.d.x, arg_2.x, var_1.x, arg_2.x), vec3<i32>(23892i, u_input.c.x, 16854i))), Struct_1(u_input.c.x, vec4<i32>(1323i, 18181i, u_input.c.x, -10443i), true, vec4<f32>(var_1.x, -434f, 500f, arg_2.x), u_input.c), 344f, vec4<i32>(arg_0.b.a, -50668i, arg_0.b.a, -15874i))))))));
    return all(vec3<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_3.x)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.d.x) * var_3.x), func_3(Struct_2(64229u, arg_0.b), Struct_3(Struct_2(0u, Struct_1(arg_0.b.b.x, vec4<i32>(-2147483647i, -18742i, 25388i, -9253i), false, vec4<f32>(arg_2.x, var_1.x, arg_0.b.d.x, arg_2.x), arg_0.b.b.xwx)), Struct_1(arg_0.b.e.x, arg_0.b.b, true, arg_2, u_input.c), _wgslsmith_f_op_f32(-var_3.x), arg_0.b.b)), true));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_2(arg_2.a.a, Struct_1(-59469i, ~vec4<i32>(i32(-1i) * -1i, -4379i, 1i, u_input.c.x), true, arg_2.b.d, arg_0.ywz));
    var var_1 = func_4(Struct_2(abs(var_0.a), var_0.b), false, var_0.b.d, ~select(70945u, ~4294967295u, func_3(Struct_2(var_0.a, Struct_1(14587i, vec4<i32>(arg_2.a.b.e.x, -2147483647i, -2147483647i, arg_2.d.x), var_0.b.c, arg_2.a.b.d, arg_0.zxz)), arg_2)));
    var var_2 = Struct_1(arg_2.a.b.a, vec4<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(-22203i, arg_0.x), vec2<i32>(arg_2.d.x, -1i)), 14053i, _wgslsmith_add_i32(~(~arg_2.d.x), arg_0.x << (~arg_2.a.a % 32u)), var_0.b.e.x ^ ~_wgslsmith_mod_i32(-19833i, arg_2.a.b.a)), false, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-464f)) + _wgslsmith_div_f32(708f, var_0.b.d.x)), arg_2.a.b.d.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1497f + var_0.b.d.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(268f, -1000f, var_0.b.d.x, var_0.b.d.x), vec4<f32>(var_0.b.d.x, 708f, 1005f, var_0.b.d.x)))))), !(any(vec3<bool>(true, arg_1.x, arg_2.a.b.c)) | (u_input.c.x != -30024i)))), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(var_0.b.b.yyx, max(vec3<i32>(7815i, arg_0.x, var_0.b.a), var_0.b.e)), _wgslsmith_add_vec3_i32(arg_2.d.xzx, arg_0.wzw)));
    let var_3 = _wgslsmith_f_op_f32(-var_0.b.d.x);
    var var_4 = arg_2;
    return -1i;
}

fn func_1() -> i32 {
    return -_wgslsmith_dot_vec4_i32(-vec4<i32>(8558i, 0i, u_input.c.x, 1i), vec4<i32>(~u_input.c.x, -1i, func_2(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -1i), vec3<bool>(false, false, true), Struct_3(Struct_2(u_input.a, Struct_1(u_input.c.x, vec4<i32>(u_input.c.x, u_input.c.x, 10393i, 10436i), true, vec4<f32>(1096f, 145f, 405f, -2116f), u_input.c)), Struct_1(u_input.c.x, vec4<i32>(-12690i, u_input.c.x, u_input.c.x, u_input.c.x), true, vec4<f32>(807f, 1236f, 275f, -240f), u_input.c), -439f, vec4<i32>(u_input.c.x, u_input.c.x, 24855i, u_input.c.x))), u_input.c.x)) << (_wgslsmith_dot_vec3_u32(u_input.d, ~firstTrailingBit(~u_input.d)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(abs(u_input.c) >> (u_input.d % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(u_input.c.x), -29318i, func_1()));
    let var_1 = Struct_3(Struct_2(~_wgslsmith_dot_vec2_u32(u_input.d.xz, u_input.d.xx), Struct_1(max(abs(u_input.c.x), ~1i), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, 1i, -4191i, var_0.x), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -27781i)), ~vec4<i32>(-23807i, 2147483647i, var_0.x, -16597i)), true || func_3(Struct_2(1u, Struct_1(125094i, vec4<i32>(var_0.x, u_input.c.x, -1i, u_input.c.x), false, vec4<f32>(534f, -1283f, 256f, -523f), vec3<i32>(1i, var_0.x, 2147483647i))), Struct_3(Struct_2(52184u, Struct_1(u_input.c.x, vec4<i32>(var_0.x, -14960i, 28073i, -2147483647i), false, vec4<f32>(756f, 388f, 669f, 165f), vec3<i32>(var_0.x, 2147483647i, 0i))), Struct_1(u_input.c.x, vec4<i32>(-32601i, u_input.c.x, -1i, var_0.x), true, vec4<f32>(798f, 657f, 1070f, -790f), u_input.c), 547f, vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), -876f, _wgslsmith_f_op_f32(-1264f + -1177f), _wgslsmith_f_op_f32(f32(-1f) * -675f)), (vec3<i32>(2147483647i, -7862i, u_input.c.x) << (u_input.d % vec3<u32>(32u))) & abs(u_input.c))), Struct_1(_wgslsmith_dot_vec2_i32(-u_input.c.zz, firstLeadingBit(var_0.xz >> (vec2<u32>(u_input.b, u_input.d.x) % vec2<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, -4190i), u_input.c.x, min(var_0.x, ~u_input.c.x), -9259i), false, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1147f * -683f), -465f), _wgslsmith_f_op_f32(f32(-1f) * -2525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-932f + 1121f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-352f, 125f), _wgslsmith_f_op_f32(f32(-1f) * -631f)))), reverseBits(u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-358f, _wgslsmith_f_op_f32(max(-1079f, 425f)))) * 765f)), _wgslsmith_mod_vec4_i32(~(select(vec4<i32>(-1i, 2147483647i, -1i, -1i), vec4<i32>(var_0.x, var_0.x, -1i, u_input.c.x), vec4<bool>(false, false, false, true)) << (select(vec4<u32>(4294967295u, u_input.b, u_input.b, 1u), vec4<u32>(18546u, 32499u, u_input.b, 32074u), false) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(var_0.x, 53941i, -12660i, -2147483647i)), vec4<i32>(u_input.c.x, var_0.x, 31197i, 14873i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -2147483647i, 2147483647i, 1861i), vec4<i32>(1i, var_0.x, -29812i, u_input.c.x), vec4<i32>(var_0.x, -41519i, 0i, u_input.c.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.x, var_0.x, -2147483647i, -85170i), vec4<i32>(4783i, -14831i, -4604i, 3889i)))));
    let var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(u_input.c.x, -28459i)), var_0.x ^ (-(-5749i & u_input.c.x) ^ _wgslsmith_div_i32(-1i, var_0.x ^ -15364i)), ~_wgslsmith_mult_i32(~u_input.c.x, max(var_0.x, var_0.x)));
    let var_3 = vec2<i32>(var_2.x, func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.b.e.x, u_input.c.x, var_2.x, var_2.x) ^ var_1.a.b.b, ~vec4<i32>(6994i, -46021i, -28013i, 2147483647i)), -var_1.b.b), select(vec3<bool>(func_4(Struct_2(28626u, var_1.a.b), false, vec4<f32>(1000f, var_1.a.b.d.x, var_1.c, 556f), u_input.d.x), var_1.b.c, true), !select(vec3<bool>(var_1.b.c, var_1.b.c, false), vec3<bool>(true, var_1.b.c, var_1.b.c), var_1.a.b.c), var_1.b.c), var_1));
    let var_4 = -46504i | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_2.x, var_3.x), ~min(vec3<i32>(u_input.c.x, u_input.c.x, var_0.x), u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-var_4, var_1.a.b.a, 6298u, select(vec3<i32>(~_wgslsmith_add_i32(-2147483647i, var_4), -6477i, var_3.x), abs(vec3<i32>(var_2.x & var_1.d.x, abs(var_4), ~3477i)), true), max(-var_2.yx ^ max(_wgslsmith_div_vec2_i32(var_0.zy, var_1.d.yx), vec2<i32>(var_4, 1i) >> (vec2<u32>(var_1.a.a, var_1.a.a) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(var_1.a.b.a, firstTrailingBit(0i)), -15606i)));
}

