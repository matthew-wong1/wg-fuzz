struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> u32 {
    return reverseBits(u_input.e.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c.x && all(vec4<bool>(true, true, true, true));
    let var_1 = 777f >= _wgslsmith_f_op_f32(-2555f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-900f)))));
    var var_2 = Struct_1(func_3(all(arg_0.c.xz)), arg_0.a, arg_0.c, abs(min(-firstTrailingBit(u_input.b.x), 1i)));
    var var_3 = -668f;
    return Struct_1(u_input.d.x, 37313u, var_2.c, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -535f);
    let var_1 = ~(~_wgslsmith_div_u32(abs(_wgslsmith_div_u32(u_input.e.x, u_input.d.x)), ~arg_0.b));
    let var_2 = select(!(!vec2<bool>(true, u_input.e.x < 4294967295u)), vec2<bool>(func_2(Struct_1(1u, ~66847u, select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), arg_0.c.x), arg_1)).c.x, true), arg_0.c.xy);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-510f - 742f)))));
    let var_4 = u_input.e.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1124f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -617f), 2559f, any(vec2<bool>(false, true)))), select(true, true, true)))));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_2(func_2(Struct_1(5953u, 61387u, select(vec3<bool>(arg_2.x, arg_1, true), vec3<bool>(true, false, arg_2.x), vec3<bool>(true, false, false)), 2147483647i))), func_2(Struct_1(max(~u_input.e.x, ~u_input.e.x), countOneBits(u_input.e.x), select(func_2(Struct_1(u_input.d.x, 27466u, vec3<bool>(true, false, true), u_input.a.x)).c, !vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, arg_1, false), vec3<bool>(arg_2.x, arg_2.x, arg_1), vec3<bool>(arg_2.x, arg_2.x, arg_1))), _wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.b.zw) | u_input.b.x)).d, firstTrailingBit(firstLeadingBit(-u_input.b.x))));
    let var_1 = u_input.d.x;
    var var_2 = !arg_2;
    var var_3 = firstLeadingBit(func_3(func_2(Struct_1(~var_1, var_1, !vec3<bool>(var_2.x, arg_1, false), _wgslsmith_div_i32(2147483647i, 15074i))).c.x));
    var_3 = var_1;
    return arg_2.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.x))))) * _wgslsmith_f_op_f32(min(-1031f, arg_2.x))), arg_2.x, func_5(arg_2.x, _wgslsmith_f_op_f32(func_4(func_2(Struct_1(u_input.d.x, u_input.d.x, vec3<bool>(true, true, true), arg_0.x)), -2147483647i, func_2(Struct_1(u_input.d.x, 52855u, vec3<bool>(true, true, false), arg_3)).d)) <= arg_2.x, vec2<bool>(true, true))));
    let var_1 = func_2(Struct_1(1u, 1292u, vec3<bool>(true, !(0i < u_input.b.x), !all(vec2<bool>(true, true))), _wgslsmith_dot_vec3_i32(-(~arg_0), vec3<i32>(func_2(Struct_1(u_input.e.x, 0u, vec3<bool>(false, true, true), u_input.c.x)).d, 0i, 0i)))).c.x;
    let var_2 = _wgslsmith_f_op_f32(min(var_0, -1804f));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -392f)));
    var var_4 = 140f < arg_2.x;
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d.zyy, u_input.e), ~u_input.d.ywz), min(~(~23709u), u_input.e.x), select(vec3<bool>(select(true, var_1, var_1), select(false, true, var_1), var_1), !select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, var_1, false), true), vec3<bool>(false, true, var_1), arg_0.x <= arg_3), vec3<bool>(true, false, !select(var_1, true, var_1))), ~(4982i >> ((1u | u_input.d.x) % 32u)));
}

fn func_6(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = func_1(vec3<i32>(2147483647i, 9918i, _wgslsmith_dot_vec3_i32(u_input.a.yzy, reverseBits(vec3<i32>(u_input.c.x, u_input.b.x, -4646i)))), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(arg_0, 0i, 2147483647i)) + -208f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -242f))), _wgslsmith_f_op_f32(max(1304f, 1689f)))), 6168i);
    var_0 = func_1(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(-2147483647i, -2147483647i, arg_0.d) | u_input.a.ywy), vec3<i32>(1198i, _wgslsmith_dot_vec3_i32(abs(u_input.a.zxy), vec3<i32>(-2147483647i, var_0.d, u_input.c.x)), var_0.d)), ~_wgslsmith_sub_i32(arg_0.d, var_0.d << (u_input.d.x % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, -581f, -878f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1464f, 1780f, 194f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-478f, -295f, 164f), vec3<f32>(-941f, 699f, 355f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1087f, -1396f, 863f), vec3<f32>(841f, 1031f, 1000f), var_0.c.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1074f, -1167f, 442f) - vec3<f32>(792f, -625f, -462f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, 1000f, -3274f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, -1000f, -2246f))))), abs(-1i));
    let var_1 = 25501u;
    var_0 = func_1(abs(~(~(-u_input.a.xzw))), reverseBits(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.d, arg_0.d, u_input.c.x)), ~(vec3<i32>(var_0.d, var_0.d, -2147483647i) >> (vec3<u32>(1u, 507u, var_0.a) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1094f, _wgslsmith_f_op_f32(func_4(Struct_1(var_0.a, u_input.d.x, vec3<bool>(false, var_0.c.x, arg_0.c.x), var_0.d), u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(sign(972f)))))), ~abs(~(~(-1i))));
    var_0 = Struct_1(u_input.e.x, ~(~_wgslsmith_mod_u32(arg_0.a, var_0.b)) & ~arg_0.a, !(!vec3<bool>(true, var_0.c.x, var_0.c.x && var_0.c.x)), var_0.d);
    return u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u, u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 34395u, u_input.e.x, u_input.d.x), u_input.d), u_input.d.x, firstTrailingBit(u_input.d.x)) & max(1u, u_input.d.x));
    var var_1 = u_input.b.wwx >> ((abs(~var_0) ^ func_6(func_1(select(u_input.c.wxy, u_input.c.xxw, true), ~(-1i), vec3<f32>(-425f, -482f, 2521f), -u_input.b.x))) % vec3<u32>(32u));
    let var_2 = Struct_1(25855u, select(u_input.d.x, var_0.x & _wgslsmith_dot_vec2_u32(~var_0.zx, u_input.e.xy), true), func_2(func_1(vec3<i32>(-1i, -29787i, reverseBits(u_input.c.x)), ~(-var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1625f, -943f, -901f)), 1i)).c, reverseBits(_wgslsmith_sub_i32(0i, ~var_1.x)));
    var_1 = reverseBits(_wgslsmith_mult_vec3_i32(max(~vec3<i32>(-55806i, var_2.d, 41452i), vec3<i32>(i32(-1i) * -24120i, _wgslsmith_dot_vec2_i32(var_1.zz, u_input.a.xx), _wgslsmith_dot_vec3_i32(u_input.a.wzy, u_input.a.xxy))), vec3<i32>(1i, firstLeadingBit(var_2.d), ~u_input.b.x) & vec3<i32>(var_2.d, 1i, var_1.x)));
    var var_3 = vec2<bool>(var_2.c.x, var_2.c.x);
    var_3 = var_2.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_1(abs(u_input.b.zxw), _wgslsmith_dot_vec2_i32(var_1.xy, vec2<i32>(-49572i, var_2.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-607f, -371f, 1184f) * vec3<f32>(470f, 805f, -1224f)), _wgslsmith_add_i32(var_1.x, 2147483647i)).a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(487f, -1177f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(381f, -3714f)))))));
}

