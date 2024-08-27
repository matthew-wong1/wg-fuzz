struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(2147483647i), 2630i << (u_input.a.x % 32u), ~0i, abs(abs(12768i))), _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -7938i, -6835i, 1i, firstTrailingBit(-24911i)), vec4<i32>(1i, _wgslsmith_mod_i32(44194i, -21773i), i32(-1i) * -2147483647i, -2147483647i)), firstLeadingBit(firstLeadingBit(-vec4<i32>(2147483647i, 49670i, -2147483647i, 0i)))));
    var var_2 = vec3<bool>(true, true, arg_0);
    var var_3 = any(vec3<bool>(true, !(firstLeadingBit(0u) <= (u_input.a.x << (1u % 32u))), all(!select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, false, var_2.x, false), arg_0))));
    let var_4 = !arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f), -478f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1335f - -764f) + _wgslsmith_f_op_f32(1155f * -1743f)), true & (abs(u_input.a.x) > 94529u))) - _wgslsmith_f_op_f32(f32(-1f) * -433f));
}

fn func_2() -> vec4<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -742f) - 2161f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f + 315f))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f) - 1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(floor(-462f)))));
    var var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, ~(~4294967295u)), ~u_input.a.xy);
    let var_2 = vec2<u32>(var_1.x, u_input.a.x);
    var_1 = ~vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~var_2.x), var_2.x));
    let var_3 = Struct_1(vec4<i32>(-(firstTrailingBit(70114i) >> (~var_2.x % 32u)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(19619i, -35791i), ~49578i, _wgslsmith_mult_i32(0i, 35144i)) >> (~firstTrailingBit(1u) % 32u), 1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -2147483647i, 0i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -15291i, 0i), vec3<i32>(-4844i, -62328i, 1i)), select(vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(-10259i, 1i, -47241i), vec3<bool>(false, false, false))))));
    return vec4<i32>(firstLeadingBit(-29503i), -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_3.a >> (vec4<u32>(var_2.x, 19228u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), -var_3.a), _wgslsmith_div_vec4_i32(vec4<i32>(0i, var_3.a.x, var_3.a.x, var_3.a.x), -vec4<i32>(var_3.a.x, 39821i, 0i, -38119i))), var_3.a.x, -1i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(~arg_0.x, arg_0.x), firstLeadingBit(~arg_0.x), select(_wgslsmith_mod_i32(1i, -35281i), 17550i, true), -arg_0.x) | _wgslsmith_div_vec4_i32(~arg_0, arg_0));
    var var_1 = vec4<u32>(1u, 33863u, 0u, u_input.a.x);
    var_1 = vec4<u32>(var_1.x, 1u, 0u, 59841u);
    var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a.x, 0u, var_1.x)), ~(~vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, 0u))), ~vec4<u32>(var_1.x >> (1u % 32u), ~u_input.a.x, ~1u, u_input.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-403f, -1433f, _wgslsmith_f_op_f32(-239f - 190f), _wgslsmith_f_op_f32(select(920f, 1000f, true)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-589f)), _wgslsmith_f_op_f32(func_3(true)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2010f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) - -1503f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(786f - -1000f)))), vec4<bool>(_wgslsmith_f_op_f32(trunc(-655f)) >= -956f, any(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, true, true)), true))));
    return Struct_2(var_0, var_0.a.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_2.zw))));
}

fn func_1() -> i32 {
    var var_0 = func_4(min(min(select(func_2(), vec4<i32>(-17131i, 0i, -2147483647i, 0i), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(-vec4<i32>(46284i, 2147483647i, 52642i, 0i), max(vec4<i32>(-19927i, -31458i, -1i, 40509i), vec4<i32>(-11022i, -36491i, 1i, -2147483647i)))), (vec4<i32>(-1i) * -vec4<i32>(-4312i, -5768i, -4919i, 1i)) | func_2()));
    var_0 = Struct_2(var_0.a, _wgslsmith_mult_i32(~(-var_0.a.a.x) << (0u % 32u), -1i), vec2<f32>(1000f, var_0.c.x));
    var_0 = Struct_2(var_0.a, _wgslsmith_dot_vec3_i32(func_4(vec4<i32>(var_0.a.a.x | 50283i, _wgslsmith_mult_i32(var_0.b, -70924i), var_0.b, var_0.b)).a.a.zzw, vec3<i32>(1i, max(_wgslsmith_add_i32(var_0.a.a.x, 2147483647i), 1i), 1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(func_3(true))) - var_0.c));
    var_0 = func_4(countOneBits(~((vec4<i32>(1i, 1i, var_0.a.a.x, var_0.b) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (vec4<u32>(u_input.a.x, u_input.a.x, 39048u, u_input.a.x) % vec4<u32>(32u)))));
    var_0 = Struct_2(func_4(_wgslsmith_mod_vec4_i32(firstTrailingBit(-var_0.a.a), vec4<i32>(_wgslsmith_add_i32(36612i, -1i), func_4(var_0.a.a).b, ~var_0.b, var_0.a.a.x))).a, select(~var_0.a.a.x, ~firstTrailingBit(~2147483647i), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), vec2<f32>(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1140f))))));
    return 1i;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = func_4(arg_0.a);
    var var_2 = vec3<f32>(var_1.c.x, var_1.c.x, -469f);
    let var_3 = true;
    let var_4 = Struct_2(Struct_1(var_1.a.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-(~vec2<i32>(-2147483647i, var_1.a.a.x)), firstTrailingBit(vec2<i32>(0i, arg_0.a.x))), _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, arg_0.a.x), var_1.a.a.zw) ^ func_4(-vec4<i32>(-2181i, arg_2, 0i, 1657i)).b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(var_1.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_1.c.x) + vec2<f32>(var_2.x, var_1.c.x)))))), var_2.yy));
    return -arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = 1f;
    let var_2 = u_input.a.x;
    var var_3 = vec2<u32>(0u, 4294967295u);
    var var_4 = func_5(Struct_1(-vec4<i32>(~0i, _wgslsmith_mult_i32(0i, 15730i), i32(-1i) * -21000i, func_1())), select(!vec2<bool>(any(vec3<bool>(false, var_0, var_0)), true), !vec2<bool>(var_0, true), true), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, 1i), -countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(1i, 12863i)))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, select(vec2<i32>(1i, 1i), min(abs(vec2<i32>(-1i, -39868i)), vec2<i32>(-36176i, 17693i)), vec2<bool>(var_0, all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false))))));
}

