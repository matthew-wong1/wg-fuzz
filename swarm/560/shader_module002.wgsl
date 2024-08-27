struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    var var_0 = arg_0;
    var var_1 = arg_0.c.ywy;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -718f), _wgslsmith_f_op_f32(f32(-1f) * -968f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a))))) + var_0.a), var_0.b, _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, var_1.x, var_1.x, 81527u), select(vec4<u32>(4294967295u, var_0.c.x, arg_1, var_1.x), vec4<u32>(1247u, 9020u, 4294967295u, 9977u), true), true), arg_0.c) >> (max(~select(arg_0.c, arg_0.c, false), var_0.c) % vec4<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.a.wy ^ var_0.b.xy, vec2<i32>(var_0.d.x, u_input.a.x)));
    var var_2 = _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, ~(~u_input.a.x), 2147483647i), -1i));
    var_0 = Struct_1(arg_0.a, vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_add_i32(u_input.a.x, -select(var_0.b.x, 19471i, true))), arg_0.c, var_0.d);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1316f, -2428f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x * 202f))))) - vec3<f32>(900f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(abs(arg_0.a.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), 738f))), _wgslsmith_f_op_f32(796f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x))))));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(230f, _wgslsmith_div_f32(-206f, 1246f), 477f), _wgslsmith_mod_vec3_i32(u_input.a.xwy, u_input.a.ywx) ^ ~u_input.a.wzx, _wgslsmith_mod_vec4_u32(vec4<u32>(81090u, 18886u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.c, 0u, 48409u, 57322u) | vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 4294967295u)), abs(-u_input.a.yz)), _wgslsmith_mod_u32(u_input.c, u_input.c))), vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.a.xx & u_input.a.wx, max(u_input.a.yz, u_input.a.zx)), -countOneBits(-1i) << (~u_input.c % 32u), -2147483647i), vec4<u32>(abs(u_input.b.x << (~1u % 32u)), u_input.b.x, u_input.b.x, ~(~35051u)), u_input.a.zx);
    let var_1 = 1u;
    var var_2 = -2147483647i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(-712f, 871f)), _wgslsmith_f_op_f32(-393f + var_0.a.x)))), ~max(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, -26246i) | vec3<i32>(922i, var_0.d.x, 1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, var_0.d.x, u_input.a.x), vec3<i32>(-31819i, -18459i, -2147483647i), vec3<i32>(-1i, -13266i, u_input.a.x)) & u_input.a.wyx), ~vec4<u32>(abs(~59683u), var_1, _wgslsmith_add_u32(var_1, var_1) >> (~12139u % 32u), 1u), -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -11173i) >> ((var_0.c.xw << (var_0.c.yx % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.a.xy & vec2<i32>(1i, -7463i), ~vec2<i32>(u_input.a.x, 98i))));
    var_0 = var_3;
    return reverseBits(var_3.c.yz);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~min(func_2(), vec2<u32>(u_input.c, 1u)), vec2<u32>(u_input.b.x, u_input.c)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, func_2().x, u_input.c), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), 67806u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(407f, 1946f, 956f) + vec3<f32>(1219f, 175f, -272f)))))), -(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x) >> (u_input.b % vec3<u32>(32u)), vec3<i32>(2147483647i, 2147483647i, u_input.a.x))), _wgslsmith_add_vec4_u32(~min(vec4<u32>(u_input.c, u_input.c, 14677u, u_input.b.x), vec4<u32>(4294967295u, 9970u, var_0.x, u_input.c)) & max(vec4<u32>(0u, u_input.c, var_0.x, 4294967295u), vec4<u32>(1u, 4294967295u, 47979u, 41897u) & vec4<u32>(10620u, var_0.x, u_input.c, 57122u)), firstLeadingBit(select(~vec4<u32>(65285u, u_input.b.x, var_0.x, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.c, 5445u), vec4<u32>(u_input.b.x, u_input.c, 129292u, 20715u)), any(vec2<bool>(false, false))))), u_input.a.xz & vec2<i32>(u_input.a.x, 1i << (_wgslsmith_div_u32(1u, 81783u) % 32u)));
    var_0 = var_1.c.zxw | var_1.c.xxy;
    let var_2 = abs(u_input.c);
    var var_3 = select(select(vec4<bool>(true, true & (var_1.c.x < var_0.x), false, all(vec4<bool>(true, true, true, true))), vec4<bool>(_wgslsmith_clamp_i32(49457i, -2147483647i, u_input.a.x) > 1i, true, true, all(vec4<bool>(true, true, true, false))), !(countOneBits(u_input.a.x) <= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_1.b.x), vec4<i32>(var_1.d.x, -30845i, u_input.a.x, 24189i)))), vec4<bool>(any(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, false))), true, firstLeadingBit(u_input.a.x ^ u_input.a.x) <= 2620i, true), vec4<bool>(true, false, true, true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(var_1, var_1.c.x)).x), var_1.a.x))), vec3<i32>(~var_1.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.d.x, u_input.a.x) & u_input.a.x, var_1.b.x), -6381i), _wgslsmith_mult_vec4_u32(max(~_wgslsmith_mod_vec4_u32(var_1.c, var_1.c), firstTrailingBit(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(var_1.c.x, 1u, var_1.c.x, 72825u)))), ~(~var_1.c)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(max(var_1.b.x, var_1.d.x), -2147483647i), _wgslsmith_clamp_vec2_i32(var_1.b.yz, var_1.d, u_input.a.zy) >> (~vec2<u32>(var_1.c.x, 1u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(var_1.d, u_input.a.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(var_0.a, _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, _wgslsmith_mult_i32(var_0.d.x, -38937i) & -u_input.a.x), vec3<i32>(_wgslsmith_div_i32(-37461i << (u_input.b.x % 32u), 6143i), _wgslsmith_sub_i32(-13430i, var_0.b.x), 1i)), ~min(~vec4<u32>(5727u, 1u, 1u, 4294967295u), ~vec4<u32>(var_0.c.x, var_0.c.x, 46778u, 40499u)), _wgslsmith_sub_vec2_i32(var_0.d, vec2<i32>(-u_input.a.x, u_input.a.x)));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_0.a)), vec3<i32>(~(~(-9486i)), min(_wgslsmith_dot_vec3_i32(u_input.a.wxz << (vec3<u32>(var_1.c.x, 9373u, var_1.c.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(var_1.b, vec3<i32>(0i, var_1.b.x, 76673i))), -(var_1.b.x | 1i)), -_wgslsmith_sub_i32(~var_0.b.x, 0i >> (0u % 32u))), var_1.c, vec2<i32>(var_0.d.x, _wgslsmith_sub_i32(func_1().d.x, min(var_0.b.x, var_0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(603f - 1962f))), _wgslsmith_mod_u32(var_1.c.x, var_0.c.x), vec2<i32>(func_1().d.x, -(-12925i & u_input.a.x)) >> (var_0.c.zw % vec2<u32>(32u)), 1u);
}

