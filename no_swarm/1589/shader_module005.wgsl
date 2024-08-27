struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = Struct_4(vec4<bool>(all(vec4<bool>(false, false, true, false)) && true, !(true || (arg_1 != 2147483647i)), all(vec2<bool>(false, true)), true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1014f, _wgslsmith_f_op_f32(min(1893f, 1000f)))))), select(select(vec4<bool>(false, true, true, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, select(false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, select(true, false, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true))), u_input.b);
    var var_1 = Struct_5(517u, _wgslsmith_add_u32(u_input.b, u_input.c), min(vec3<i32>(-1i) * -(vec3<i32>(-2147483647i, arg_0, arg_0) << (vec3<u32>(u_input.d.x, 22580u, var_0.d) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(arg_0, arg_1, -1i)) & ~vec3<i32>(arg_0, u_input.a.x, arg_1), vec3<i32>(arg_0, arg_0, 12664i) ^ vec3<i32>(u_input.a.x, arg_1, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))), abs(-vec3<i32>(-u_input.a.x, _wgslsmith_clamp_i32(49379i, arg_0, arg_1), 1i)));
    var_0 = Struct_4(vec4<bool>(!all(var_0.c.zw), var_0.c.x, true, false), vec2<f32>(_wgslsmith_f_op_f32(356f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-274f, -914f)), _wgslsmith_f_op_f32(min(var_1.d, var_1.d)))), -1103f), !vec4<bool>(var_0.a.x, true, true, !var_0.a.x), abs(_wgslsmith_sub_u32(var_0.d, var_1.a)));
    var var_2 = ~firstLeadingBit(4294967295u);
    var_2 = 0u;
    return u_input.e;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = 1i;
    let var_1 = func_3(-1i, var_0);
    let var_2 = Struct_5(u_input.d.x, arg_2, ~((vec3<i32>(var_0, -2147483647i, var_1) & abs(vec3<i32>(69726i, var_0, 41828i))) ^ ~(~vec3<i32>(var_1, var_0, 30271i))), _wgslsmith_f_op_f32(153f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f), -776f) + _wgslsmith_div_f32(-1262f, _wgslsmith_f_op_f32(f32(-1f) * -462f)))), _wgslsmith_mult_vec3_i32(reverseBits(abs(~vec3<i32>(-2147483647i, var_0, var_0))), vec3<i32>(select(1i, 2147483647i, true) >> (~u_input.d.x % 32u), (u_input.a.x ^ var_0) & func_3(-2147483647i, -22900i), _wgslsmith_mult_i32(var_0, countOneBits(2147483647i)))));
    let var_3 = true | any(arg_1);
    let var_4 = var_2;
    return Struct_1(select(!arg_1.zx, !(!vec2<bool>(var_3, false)), var_3));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b.x);
    let var_1 = select(arg_0.d.x, arg_1 ^ u_input.a.x, !arg_2.a.x);
    let var_2 = vec2<u32>(arg_2.d << (_wgslsmith_dot_vec3_u32(u_input.d.xxx, ~(vec3<u32>(u_input.d.x, arg_2.d, 1u) | vec3<u32>(u_input.d.x, u_input.d.x, arg_2.d))) % 32u), ~_wgslsmith_add_u32(u_input.c, arg_2.d));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f - 494f))));
    let var_3 = func_2(max(arg_1, ~arg_0.d.x ^ -arg_0.d.x) > arg_1, !vec3<bool>(!(!arg_0.b.a.x), arg_0.e.a.x, func_2(all(arg_2.c), select(arg_0.a, vec3<bool>(false, false, arg_2.c.x), true), var_2.x).a.x), 22249u);
    return vec3<i32>(0i, ~arg_1, 0i >> (~(~1u) % 32u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = ~(vec3<i32>(_wgslsmith_mod_i32(~(-1i), ~(-2147483647i)), 0i, ~abs(6306i)) ^ ~_wgslsmith_mod_vec3_i32(~vec3<i32>(20887i, u_input.e, 4852i), vec3<i32>(71786i, u_input.a.x, 0i)));
    var_0 = abs(func_4(Struct_2(vec3<bool>(-27345i != var_0.x, -3672i <= var_0.x, false), Struct_1(select(vec2<bool>(arg_2.x, true), arg_0.yz, vec2<bool>(true, false))), true, _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, -79986i, u_input.e, -27004i), vec4<i32>(u_input.a.x, 1i, var_0.x, 0i)), func_2(var_0.x < var_0.x, vec3<bool>(arg_2.x, arg_0.x, arg_2.x), 1u)), ~(-select(u_input.a.x, 7284i, arg_0.x)), Struct_4(select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_2.x), select(arg_2, arg_2, arg_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, -1000f))), arg_2, u_input.b ^ 52848u)));
    var_0 = firstTrailingBit(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(-2147483647i, var_0.x, 40128i)) >> (firstLeadingBit(u_input.d.zwy) % vec3<u32>(32u)), ~select(vec3<i32>(31094i, u_input.a.x, u_input.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 2147483647i, -27008i), vec3<i32>(32045i, u_input.e, u_input.a.x)), select(vec3<bool>(false, true, false), arg_2.zyx, arg_2.yyx))));
    var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x) >> (firstLeadingBit(u_input.b) % 32u), -47426i, 85557i) ^ _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, var_0.x, var_0.x), vec3<i32>(2147483647i, var_0.x, u_input.a.x))), countOneBits(vec3<i32>(var_0.x, 1i, var_0.x))), vec3<i32>(_wgslsmith_clamp_i32(func_4(Struct_2(arg_0, Struct_1(arg_2.zy), arg_2.x, vec4<i32>(-17189i, var_0.x, var_0.x, -1i), Struct_1(vec2<bool>(true, arg_1.x))), func_4(Struct_2(arg_0, Struct_1(vec2<bool>(arg_2.x, arg_2.x)), true, vec4<i32>(u_input.a.x, u_input.a.x, 37335i, var_0.x), Struct_1(vec2<bool>(false, arg_2.x))), u_input.a.x, Struct_4(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec2<f32>(arg_3, 1122f), vec4<bool>(true, true, arg_0.x, arg_2.x), u_input.c)).x, Struct_4(arg_2, vec2<f32>(arg_3, arg_3), arg_2, u_input.c)).x, u_input.e, -36538i), ~(~_wgslsmith_mod_i32(2147483647i, -1032i)), var_0.x));
    let var_1 = !((41489u < ((u_input.b ^ u_input.d.x) << (16454u % 32u))) | arg_2.x);
    return _wgslsmith_f_op_f32(step(arg_3, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~u_input.c, ~u_input.d.x, _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(u_input.a.x, -47745i, u_input.a.x)), vec3<i32>(u_input.e, -1i, u_input.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec4<bool>(true, true, true, true), -328f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1612f * -624f) + -1000f)), 1168f)), _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(-1i, 1i, u_input.e) & countOneBits(vec3<i32>(-2147483647i, u_input.a.x, -1i))), func_4(Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, false)), 2147483647i >= u_input.a.x, vec4<i32>(-9909i, u_input.e, u_input.e, -74960i) ^ vec4<i32>(u_input.a.x, u_input.e, 0i, 0i), func_2(false, vec3<bool>(false, false, true), 0u)), 29779i, Struct_4(vec4<bool>(false, false, false, true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(394f, -1000f))), vec4<bool>(true, false, true, false), ~1u))));
    var var_1 = u_input.a.x;
    var var_2 = min(max(func_4(Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<bool>(true, false)), false, ~vec4<i32>(2147483647i, -2147483647i, -1i, 2147483647i), func_2(true, vec3<bool>(true, true, true), var_0.b)), firstTrailingBit(~u_input.e), Struct_4(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec2<f32>(var_0.d, var_0.d), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), 88233u)), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.e.x, u_input.e, 35512i), vec4<i32>(-4616i, var_0.e.x, u_input.e, 1i)), u_input.e, ~2390i))), vec3<i32>(-1i, -(~var_0.e.x), ((u_input.e & -4317i) ^ u_input.a.x) >> (_wgslsmith_dot_vec2_u32(max(vec2<u32>(47301u, 22620u), u_input.d.xy), ~vec2<u32>(u_input.b, var_0.a)) % 32u)));
    var_2 = max(var_0.e, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-7451i, var_2.x, -14433i) >> (u_input.d.wzy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(-46583i, 16171i, -2147483647i), vec3<i32>(var_0.c.x, var_0.e.x, -81145i))), var_0.c), ~0i, select(-var_2.x, -45371i, true)));
    let var_3 = -vec4<i32>(-var_0.e.x, -4067i, ~reverseBits(abs(2147483647i)), ~u_input.e | firstLeadingBit(var_0.c.x));
    let var_4 = var_0.b;
    var_1 = var_3.x;
    var_2 = ~(abs(var_0.c) >> (firstLeadingBit(u_input.d.wwx) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-144f)), firstLeadingBit(var_3));
}

