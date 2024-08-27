struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = u_input.a;
    let var_1 = Struct_2(select((_wgslsmith_f_op_f32(f32(-1f) * -914f) > _wgslsmith_f_op_f32(select(525f, -460f, true))) | true, true, all(vec3<bool>(true, true, true)) & true));
    global0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1076i, u_input.c.x), _wgslsmith_add_i32(~(u_input.c.x << (var_0.x % 32u)), 2147483647i)), ~(u_input.c.x | 32013i), _wgslsmith_mod_i32(1i & abs(u_input.c.x), _wgslsmith_dot_vec4_i32(countOneBits(u_input.c), ~abs(vec4<i32>(-36855i, global0.x, -1i, u_input.c.x)))), global0.x);
    let var_2 = true;
    let var_3 = 4294967295u | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.a.x)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(70804u, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, 4294967295u, u_input.b, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), ~vec4<u32>(0u, 1u, u_input.d, 44192u)), true));
    return firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.xz, global0.xw)) | (global0.x ^ ~(~global0.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    global0 = -(~vec4<i32>(func_3(), _wgslsmith_sub_i32(4008i, 24761i), -1i, 0i));
    global0 = firstTrailingBit(-vec4<i32>(u_input.c.x, u_input.c.x, -1i, 0i));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)));
    let var_1 = 34438u;
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(func_3() << (((u_input.b & 4294967295u) << (28945u % 32u)) % 32u), u_input.c.x, 15581i, u_input.c.x), -(~vec4<i32>(-37152i, ~global0.x, 0i, -36851i >> (var_1 % 32u))));
    return arg_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_add_vec2_u32(~(vec2<u32>(reverseBits(4294967295u), 9596u) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 15953u), u_input.a)), vec2<u32>(u_input.b, 24764u));
    var var_1 = firstLeadingBit(~u_input.a);
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 36408u, var_0.x, u_input.d) ^ vec4<u32>(u_input.a.x, var_1.x, 0u, 50940u), vec4<u32>(8113u, 8854u, 1u, 41086u) << (vec4<u32>(6072u, 4294967295u, 0u, var_1.x) % vec4<u32>(32u))), ~(~vec4<u32>(35145u, 35733u, u_input.d, var_1.x)))));
    let var_3 = Struct_3(var_2.a);
    let var_4 = Struct_1(var_3.a.a);
    return Struct_4(arg_2.a, 1214f);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = func_4(vec4<bool>(true, !(-146f > _wgslsmith_f_op_f32(func_2(vec3<f32>(528f, 687f, 1423f), vec3<f32>(-2162f, 912f, -705f), Struct_3(Struct_1(vec4<u32>(u_input.a.x, u_input.d, u_input.d, u_input.a.x)))))), _wgslsmith_f_op_f32(-597f + _wgslsmith_f_op_f32(f32(-1f) * -1155f)) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(round(-1465f)), false)), true), vec4<i32>(abs(-22141i), 2147483647i, global0.x, _wgslsmith_sub_i32(-1i, -35531i)) >> ((~firstLeadingBit(vec4<u32>(16649u, 36362u, 4294967295u, 10683u)) | _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.a.x)), ~vec4<u32>(u_input.a.x, 77067u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u)), Struct_2(-7402i != arg_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(-782f, 2758f, -552f), vec3<f32>(-2058f, 676f, -456f), Struct_3(Struct_1(vec4<u32>(u_input.d, 26061u, u_input.a.x, u_input.b)))))), -150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f + 349f))))));
    var var_1 = Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 18793u, 0u, u_input.d), vec4<u32>(u_input.a.x, u_input.d, 30730u, 4294967295u)), vec4<u32>(4294967295u, 43929u, 97211u, u_input.d)), abs(vec4<u32>(1u, 6231u, u_input.b, u_input.a.x))));
    var var_2 = 1350f;
    let var_3 = !vec4<bool>(_wgslsmith_f_op_f32(round(-546f)) != 1436f, true, true, true && var_0.a);
    var var_4 = vec4<bool>(false, true, true, any(select(var_3.zy, var_3.zw, var_3.yz)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f))))));
}

fn func_5(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(select(vec4<u32>(48084u, ~(~1u), 1u, u_input.d), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), firstTrailingBit(~vec4<u32>(u_input.b, u_input.a.x, 5893u, 1u)), vec4<u32>(u_input.a.x << (44766u % 32u), ~65649u, abs(32690u), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))));
    var var_1 = max(countOneBits(-vec4<i32>(u_input.c.x, global0.x, 0i, global0.x)), u_input.c) << (var_0.a % vec4<u32>(32u));
    let var_2 = ~u_input.c;
    global0 = firstLeadingBit(firstLeadingBit(vec4<i32>(global0.x, firstTrailingBit(~(-1i)), func_3(), _wgslsmith_mod_i32(global0.x, ~1i))));
    let var_3 = func_4(vec4<bool>(true, all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), true)), !all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))), u_input.c, Struct_2(true), vec4<f32>(-2574f, 137f, 1154f, 559f));
    return _wgslsmith_sub_u32(~(~reverseBits(u_input.d)), 53284u) << (u_input.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-(~((-17016i << (u_input.a.x % 32u)) >> (abs(0u) % 32u))), 0i, 2147483647i, 1i);
    let var_0 = Struct_1(vec4<u32>(~_wgslsmith_clamp_u32(~u_input.b, u_input.a.x << (u_input.d % 32u), select(u_input.b, 29300u, false)), _wgslsmith_sub_u32(~(~26018u), func_5(_wgslsmith_f_op_f32(func_1(u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -450f))), firstLeadingBit(u_input.a.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a) % 32u), 1u));
    let var_1 = Struct_4(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -777f))))));
    let var_2 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(trunc(var_1.b)));
    var var_3 = vec4<i32>(-11365i, ~(~min(abs(u_input.c.x), ~u_input.c.x)), u_input.c.x, global0.x);
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, var_1.b, var_1.b) + vec3<f32>(-1510f, 264f, var_2.x))))), firstTrailingBit(_wgslsmith_clamp_i32(1i, var_3.x, global0.x | (global0.x >> (4294967295u % 32u)))), 54578u);
}

