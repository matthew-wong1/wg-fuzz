struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec2<f32> {
    var var_0 = vec2<u32>(~u_input.a, countOneBits(max(1u, (u_input.d >> (u_input.d % 32u)) & _wgslsmith_add_u32(1u, 107363u))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(272f)), _wgslsmith_f_op_f32(sign(-164f))))), _wgslsmith_f_op_f32(-628f - -150f), 2505f);
    return var_1.wz;
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i >> (1u % 32u), -1i, u_input.b.x, max(countOneBits(0i), _wgslsmith_mult_i32(1i, u_input.b.x))), firstLeadingBit(vec4<i32>(1i, abs(18707i), u_input.b.x, -2147483647i)), ~max(max(vec4<i32>(u_input.c, 12412i, 18144i, u_input.b.x), vec4<i32>(u_input.c, u_input.c, 2908i, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, u_input.b.x), vec4<i32>(-26631i, -8099i, u_input.b.x, u_input.c)))), ~_wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -46483i, -17018i, 2147483647i), vec4<i32>(-35388i, -1i, u_input.c, -2147483647i)), (vec4<i32>(-1i, -1i, u_input.b.x, u_input.c) << (vec4<u32>(u_input.a, 67410u, 4294967295u, 0u) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.d, u_input.d, 50460u, 30423u) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(553f * _wgslsmith_f_op_f32(trunc(-751f))), _wgslsmith_f_op_f32(f32(-1f) * -535f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_div_vec2_f32(vec2<f32>(-433f, 730f), vec2<f32>(1653f, 176f))))))));
    let var_2 = Struct_4(~(select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(32098u, u_input.d)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(0u, 84803u)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))) >> (vec2<u32>(~u_input.a, 27260u) % vec2<u32>(32u))), Struct_2(all(vec2<bool>(true, true))), Struct_1(select(_wgslsmith_add_i32(-var_0.x, 1i), var_0.x, all(vec2<bool>(true, true)))));
    var var_3 = var_2;
    var var_4 = var_2.c;
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), -621f)) - 1544f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -793f) - -800f));
}

fn func_1(arg_0: u32) -> Struct_4 {
    var var_0 = ~_wgslsmith_mult_i32(u_input.c, u_input.c ^ _wgslsmith_div_i32(u_input.b.x, u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())))) - _wgslsmith_f_op_vec2_f32(func_3()));
    var_0 = -29921i;
    var_0 = select(u_input.b.x, -26201i, true);
    var_0 = abs(42348i);
    return Struct_4(vec2<u32>(~arg_0, u_input.d), Struct_2(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), any(vec2<bool>(false, false))))), Struct_1(u_input.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> Struct_4 {
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.a, u_input.c, 0i, -u_input.b.x), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 34520i, u_input.b.x, -2147483647i) << (~vec4<u32>(arg_0.a.x, 18544u, 34653u, u_input.a) % vec4<u32>(32u)), vec4<i32>(func_1(1u).c.a, u_input.b.x, 52952i, var_0.a))));
    var_0 = arg_0.c;
    let var_2 = Struct_2(true);
    var var_3 = Struct_4(min(arg_0.a, _wgslsmith_clamp_vec2_u32(arg_0.a, min(arg_0.a, arg_0.a), arg_0.a >> (vec2<u32>(arg_0.a.x, 44828u) % vec2<u32>(32u))) >> (abs(vec2<u32>(u_input.a, arg_0.a.x) | vec2<u32>(6004u, 34836u)) % vec2<u32>(32u))), Struct_2(false), Struct_1(_wgslsmith_add_i32(-(u_input.b.x >> (0u % 32u)), _wgslsmith_sub_i32(firstTrailingBit(2147483647i), func_1(16400u).c.a))));
    return func_1(arg_0.a.x);
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(-282f <= arg_0), !select(!select(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.b.a, arg_1.b.a), vec4<bool>(false, false, false, arg_1.b.a), vec4<bool>(false, false, arg_1.b.a, arg_1.b.a)), vec4<bool>(true, u_input.a < u_input.d, arg_1.b.a, arg_1.b.a), select(select(vec4<bool>(false, arg_1.b.a, false, false), vec4<bool>(arg_1.b.a, false, false, false), vec4<bool>(arg_1.b.a, arg_1.b.a, true, true)), !vec4<bool>(false, arg_1.b.a, arg_1.b.a, true), arg_1.b.a)));
    var var_1 = ~firstLeadingBit(vec3<u32>(~4294967295u, _wgslsmith_mod_u32(1u, reverseBits(arg_1.a.x)), ~(u_input.a << (u_input.d % 32u))));
    var var_2 = func_1(~var_1.x).b;
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.x, 54986u), 1u, 0u) >> (~max(vec3<u32>(arg_1.a.x, arg_1.a.x, var_1.x), vec3<u32>(u_input.d, 1u, 4294967295u)) % vec3<u32>(32u)), countOneBits(max(abs(vec3<u32>(arg_1.a.x, var_1.x, 4294967295u) & vec3<u32>(var_1.x, 18282u, arg_1.a.x)), ~(vec3<u32>(4294967295u, 40307u, var_1.x) >> (vec3<u32>(1u, u_input.a, 4294967295u) % vec3<u32>(32u))))));
    var_0 = Struct_3(Struct_2(all(var_0.b.zw)), var_0.b);
    return func_4(func_4(func_1(~(~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), arg_0).b;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> f32 {
    return -1343f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1005f;
    var var_1 = u_input.b.xx;
    var var_2 = u_input.d;
    var_2 = 14453u;
    var_0 = _wgslsmith_f_op_f32(func_6(select(vec2<bool>(all(vec3<bool>(false, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))), vec2<bool>(false, false | any(vec4<bool>(false, true, true, true))), !(u_input.d > u_input.d)), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 1u, u_input.d, u_input.a)), ~vec4<u32>(u_input.d, 0u, 85230u, 1u)) >> (max(_wgslsmith_sub_u32(u_input.d, u_input.a), 1u) % 32u)), func_5(_wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(645f)) - -989f)), func_4(func_1(~0u), _wgslsmith_f_op_f32(242f * -134f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)) + 146f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -268f)) * -1394f));
    var var_3 = 60196i <= (u_input.b.x >> (55971u % 32u));
    var var_4 = Struct_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1798f, 111f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(480f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -287f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1685f), _wgslsmith_f_op_f32(min(-1465f, 332f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-114f, 580f) * 1000f)), _wgslsmith_f_op_vec2_f32(func_3()).x, 557f, _wgslsmith_f_op_vec2_f32(func_2()).x));
}

