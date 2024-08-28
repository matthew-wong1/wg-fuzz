struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> vec3<bool> {
    var var_0 = ~1u;
    let var_1 = Struct_2(Struct_1(select(select(arg_2.wxx, vec3<bool>(false, arg_2.x, false), true), select(!arg_2.zzx, select(vec3<bool>(false, arg_2.x, arg_0.x), vec3<bool>(false, arg_2.x, true), vec3<bool>(true, true, arg_2.x)), arg_0), arg_2.wyy), all(select(arg_2, !vec4<bool>(false, arg_2.x, false, false), arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, arg_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 521f), vec2<f32>(arg_1, -538f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(448f, 1415f) * vec2<f32>(-352f, arg_1)))), ~vec2<u32>(arg_3, 29055u) ^ ~(vec2<u32>(arg_3, arg_3) & vec2<u32>(arg_3, 4294967295u))), ~min(_wgslsmith_sub_vec4_u32(vec4<u32>(4586u, arg_3, arg_3, arg_3), vec4<u32>(arg_3, arg_3, 105849u, 1u)) ^ select(vec4<u32>(arg_3, 4294967295u, arg_3, 55751u), vec4<u32>(0u, 4294967295u, arg_3, arg_3), true), ~vec4<u32>(0u, arg_3, 0u, 1u)));
    var_0 = _wgslsmith_clamp_u32(~reverseBits(arg_3), ~(~(var_1.b.x | 4294967295u)) ^ 4294967295u, 18686u);
    let var_2 = Struct_1(vec3<bool>(arg_0.x, all(select(vec4<bool>(arg_2.x, true, false, false), vec4<bool>(arg_2.x, var_1.a.b, false, arg_2.x), false)) != ((var_1.a.d.x != arg_3) & var_1.a.a.x), select(arg_2.x, true, all(select(arg_2, vec4<bool>(arg_2.x, arg_2.x, arg_0.x, true), vec4<bool>(true, arg_0.x, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -847f)))) < -1040f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1971f)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(16342u, 9603u), countOneBits(var_1.b.yy)), var_1.a.d), select(vec2<u32>(0u, _wgslsmith_add_u32(var_1.b.x, 39390u)), select(abs(vec2<u32>(var_1.a.d.x, var_1.a.d.x)), max(var_1.b.zz, var_1.b.xw), !vec2<bool>(var_1.a.a.x, true)), false), vec2<u32>(max(_wgslsmith_mod_u32(13962u, arg_3), arg_3 ^ 4294967295u), _wgslsmith_mult_u32(var_1.b.x, 4294967295u >> (arg_3 % 32u)))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(910f * var_2.c.x))), _wgslsmith_f_op_f32(exp2(var_2.c.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(arg_1 + var_2.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.c.x), var_1.a.c.x))), true))));
    return vec3<bool>(true, false, arg_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(!func_3(select(arg_0.a, arg_0.a, arg_1.yyx), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1679f, -662f)), vec4<bool>(-192f >= arg_0.c.x, arg_1.x, arg_0.a.x, arg_1.x), _wgslsmith_dot_vec2_u32(arg_0.d ^ vec2<u32>(4294967295u, arg_0.d.x), vec2<u32>(20971u, 4294967295u))), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, 1315f) - arg_0.c))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c), func_3(arg_0.a, _wgslsmith_f_op_f32(-arg_0.c.x), vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), 0u).xx))), arg_0.d);
    let var_1 = Struct_2(Struct_1(vec3<bool>(!arg_0.a.x, any(select(arg_1, arg_1, arg_1)), arg_0.a.x), arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(293f + arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f * 354f))), vec2<u32>(var_0.d.x ^ arg_0.d.x, 51393u) >> (~vec2<u32>(arg_0.d.x, arg_0.d.x) % vec2<u32>(32u))), ~min(vec4<u32>(var_0.d.x, reverseBits(arg_0.d.x), arg_0.d.x, 4294967295u), firstTrailingBit(~vec4<u32>(arg_0.d.x, 47549u, 1u, arg_0.d.x))));
    var var_2 = var_1;
    let var_3 = var_0;
    var_2 = Struct_2(var_0, vec4<u32>(select(~var_3.d.x, 29769u, true), ~(~min(var_3.d.x, var_0.d.x)), arg_0.d.x, var_0.d.x));
    return var_2.a;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(Struct_1(vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(681f, -1109f)))), _wgslsmith_mult_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 28921u), vec2<u32>(12862u, 14222u), vec2<u32>(357u, 14711u)), vec2<u32>(4294967295u, 62738u)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 1u), 55548u))), !(!vec4<bool>(false, true, all(vec4<bool>(true, false, false, false)), true)));
    var var_1 = 1796f;
    var_0 = Struct_1(!(!var_0.a), (var_0.a.x | func_2(func_2(Struct_1(vec3<bool>(var_0.a.x, true, var_0.b), var_0.a.x, var_0.c, vec2<u32>(36669u, var_0.d.x)), vec4<bool>(true, var_0.b, var_0.b, true)), vec4<bool>(var_0.b, true, true, var_0.a.x)).a.x) && select(true, var_0.b, !(!var_0.b)), var_0.c, max(abs(vec2<u32>(var_0.d.x, var_0.d.x)), ~(~var_0.d)) << (max(firstTrailingBit(vec2<u32>(18705u, 4294967295u)), vec2<u32>(39066u, var_0.d.x)) % vec2<u32>(32u)));
    var_1 = -527f;
    var var_2 = vec2<bool>(any(var_0.a), var_0.a.x);
    return select(vec2<bool>(var_2.x, (_wgslsmith_sub_i32(30880i, 2147483647i) > ~u_input.a.x) || all(vec2<bool>(var_2.x, var_2.x))), var_0.a.yz, !all(vec4<bool>(true, true, var_0.b, var_2.x)));
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    let var_0 = -2418f;
    var var_1 = Struct_1(vec3<bool>(!(!(arg_0.x || false)), arg_0.x, true), func_3(vec3<bool>(func_2(func_2(Struct_1(vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x, vec2<f32>(var_0, 658f), vec2<u32>(21138u, 0u)), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), arg_0.x)).a.x, !(arg_0.x || true), false), var_0, vec4<bool>(!arg_0.x, any(vec3<bool>(false, arg_0.x, arg_0.x)) || true, false, arg_0.x), 68841u).x, vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -782f)), vec2<u32>(~35706u, 1u));
    var_1 = Struct_1(var_1.a, true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_1.c, var_1.c))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)))), !(!(var_1.d.x >= var_1.d.x)))), vec2<u32>(var_1.d.x, var_1.d.x));
    var var_2 = var_1.d.x;
    var var_3 = _wgslsmith_dot_vec2_u32(~abs(var_1.d), _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, var_1.d.x)), var_1.d, firstLeadingBit(firstLeadingBit(select(vec2<u32>(0u, 1u), var_1.d, var_1.a.zx)))));
    return _wgslsmith_mult_u32(var_1.d.x, countOneBits(1u));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = func_2(func_2(Struct_1(func_2(func_2(Struct_1(vec3<bool>(false, arg_3, false), false, vec2<f32>(1218f, arg_0.x), vec2<u32>(arg_1, 0u)), vec4<bool>(false, arg_3, arg_3, arg_3)), !vec4<bool>(false, false, true, arg_3)).a, arg_3, _wgslsmith_f_op_vec2_f32(trunc(arg_0)), firstLeadingBit(vec2<u32>(0u, 1u)) & (vec2<u32>(0u, 56153u) ^ vec2<u32>(54444u, arg_1))), !vec4<bool>(false, false, func_1().x, false || arg_3)), select(!(!vec4<bool>(arg_3, true, false, true)), vec4<bool>(arg_3, arg_3 | true, all(select(vec3<bool>(false, arg_3, true), vec3<bool>(false, true, true), vec3<bool>(false, arg_3, arg_3))), any(vec2<bool>(false, false))), !(!(!vec4<bool>(arg_3, arg_3, arg_3, false)))));
    let var_1 = Struct_2(Struct_1(!var_0.a, !(!func_3(var_0.a, 108f, vec4<bool>(false, true, var_0.a.x, arg_3), 4294967295u).x), _wgslsmith_f_op_vec2_f32(step(arg_0, _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-379f, var_0.c.x))))), ~vec2<u32>(select(17467u, 4294967295u, false), _wgslsmith_div_u32(0u, 4294967295u))), vec4<u32>(0u, func_4(var_0.a.zx), 74761u, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(112330u, var_0.d.x, arg_1), 1u)));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-1i, u_input.a.x);
    var_0 = ~reverseBits(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -44009i, u_input.b, u_input.b)), vec4<i32>(u_input.a.x, u_input.b, -37556i, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-1895f * -1000f);
    let var_2 = vec4<i32>(u_input.b, func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -381f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(612f, -344f) - vec2<f32>(1000f, 2921f))), func_4(func_1()), -51559i, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), countOneBits(abs(u_input.b)) & 61967i, max(-3192i, max(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b ^ u_input.a.x)) ^ ~abs(_wgslsmith_mod_i32(28906i, -1i)));
    var_0 = 2147483647i;
    var_1 = _wgslsmith_f_op_f32(326f * -1108f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_2.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, 5114i), var_2.wx, vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(~var_2.wx, -vec2<i32>(var_2.x, -2147483647i)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1213f))))));
}

