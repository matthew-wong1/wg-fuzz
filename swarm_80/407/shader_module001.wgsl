struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = !vec2<bool>(arg_0, !arg_0);
    var_1 = select(vec2<bool>(arg_0, true), select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, false), vec2<bool>(11416i <= arg_2.c.x, all(vec2<bool>(arg_0, arg_0))), !var_1.x), !select(select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), true), select(vec2<bool>(arg_0, false), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)), select(false, false, false))), true);
    var_1 = !select(select(select(select(vec2<bool>(var_1.x, arg_0), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(var_1.x, true), !var_1.x), select(!vec2<bool>(arg_0, true), !vec2<bool>(var_1.x, arg_0), !arg_0), var_1.x), vec2<bool>(true, false), select(vec2<bool>(all(vec3<bool>(var_1.x, arg_0, false)), true), vec2<bool>(false, !arg_0), !arg_0));
    var var_2 = _wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1397f + 670f) * _wgslsmith_f_op_f32(f32(-1f) * -980f)))) + _wgslsmith_f_op_f32(min(-547f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(670f, 1730f))))))));
    return arg_2.c.x;
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1608f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 1000f))))), arg_0.x);
    var var_1 = Struct_1(vec3<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, 1i) | ~(-2147483647i), u_input.a.x), (1i & firstLeadingBit(u_input.a.x)) << (min(1u, _wgslsmith_add_u32(47439u, 730u)) % 32u)), u_input.a, vec3<i32>(func_3(false, Struct_1(vec3<i32>(-2147483647i, 13970i, -6690i), u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(u_input.a.ywx, vec4<i32>(-2147483647i, u_input.a.x, -2147483647i, 1i), u_input.a.yzz), Struct_1(u_input.a.wzx, vec4<i32>(-55524i, -29811i, u_input.a.x, 0i), u_input.a.xxx)) | 14319i, _wgslsmith_mod_i32(u_input.a.x, 1i), 37239i) >> (vec3<u32>(~1u, select(1u, 1u, true) >> (1u % 32u), ~24630u) % vec3<u32>(32u)));
    var_1 = Struct_1(u_input.a.yzw, var_1.b, u_input.a.wxw);
    var var_2 = reverseBits(_wgslsmith_mod_i32(0i, ~(var_1.a.x << (20736u % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -23613i), max(vec2<i32>(var_1.a.x, var_1.a.x), var_1.c.yy))));
    var_2 = ~(_wgslsmith_add_i32(var_1.b.x, var_1.c.x & -37391i) >> (54401u % 32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -2354f);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -898f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(776f, -442f) + _wgslsmith_f_op_f32(f32(-1f) * -1320f)))) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1249f, 308f))), vec2<f32>(927f, -355f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1003f, -585f))))))));
    var var_1 = vec4<i32>(-(~(_wgslsmith_div_i32(-2147483647i, u_input.a.x) | firstTrailingBit(0i))), ~u_input.a.x >> (23595u % 32u), ~u_input.a.x, max(_wgslsmith_div_i32(firstTrailingBit(-11502i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, -2284i)), _wgslsmith_sub_i32(-2147483647i, -10534i))), 8078i ^ _wgslsmith_mod_i32(-u_input.a.x, u_input.a.x)));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, firstTrailingBit(1u), _wgslsmith_sub_u32(4294967295u, 10502u), 0u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(reverseBits(36082u), _wgslsmith_mult_u32(32871u, 1u), firstLeadingBit(1u), _wgslsmith_mod_u32(85478u, 36495u))), firstTrailingBit(5358u) << (650u % 32u), reverseBits(~(~4294967295u) ^ firstTrailingBit(~43663u)));
    var var_3 = Struct_1(u_input.a.zxy, -u_input.a, select(var_1.xzy, var_1.zww, select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)));
    var var_4 = 0i;
    return Struct_1(var_1.xzw << (vec3<u32>(0u, 7550u, 1u ^ var_2.x) % vec3<u32>(32u)), vec4<i32>(1i, 22777i, -countOneBits(var_3.c.x), (min(var_3.a.x, -1i) ^ 1i) & var_1.x), ~u_input.a.xxw);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + -488f), _wgslsmith_f_op_f32(f32(-1f) * -626f)))), _wgslsmith_f_op_f32(round(arg_1.x))) + 609f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(605f, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3001f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x)))) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(279f * var_0))))), arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(487f, var_0))))) + -833f);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(933f, _wgslsmith_f_op_f32(var_1.x * 1172f))) - -1902f), var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(arg_1.x * var_0))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x)))));
    let var_4 = arg_0;
    return _wgslsmith_div_i32(arg_0.a.x, 0i);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = 0i;
    var_0 = Struct_1(~(~(arg_0 ^ vec3<i32>(2147483647i, -12538i, var_1)) | (vec3<i32>(0i, u_input.a.x, -2147483647i) & _wgslsmith_sub_vec3_i32(var_0.a, vec3<i32>(var_1, 19859i, u_input.a.x)))), -func_1().b, select(var_0.c, ~(~_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(50160i, 26573i, -2147483647i))), true));
    var_0 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1, var_1, arg_0.x), vec3<i32>(var_1, -u_input.a.x, var_1)), vec3<i32>(u_input.a.x, ~arg_0.x >> (_wgslsmith_clamp_u32(470u, 18296u, 0u) % 32u), arg_0.x)), ~reverseBits(select(-vec4<i32>(2147483647i, var_1, arg_0.x, 2147483647i), select(vec4<i32>(u_input.a.x, 23716i, var_1, 0i), var_0.b, true), arg_1.x)), ~vec3<i32>(0i, _wgslsmith_clamp_i32(var_1 & -9704i, _wgslsmith_sub_i32(-28636i, 33847i), ~1i), -var_0.c.x));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(-1i, -68936i);
    var var_1 = ~(-(~firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(2147483647i, var_0)))));
    let var_2 = func_5(vec3<i32>(reverseBits(var_1.x) | -18253i, func_4(func_1(), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), 592f, 249f), true, ~min(u_input.a.yx, u_input.a.xy)), ~_wgslsmith_add_i32(var_1.x, 1i)), !select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, true)));
    var var_3 = _wgslsmith_f_op_f32(max(3036f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1201f, -548f))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(168f * -1000f))) - 1000f), true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-538f, -788f, false)) + _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2170f, -157f))))), _wgslsmith_f_op_f32(1479f * -2069f), _wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1607f) - _wgslsmith_div_f32(354f, -1125f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1550f, -618f))), _wgslsmith_f_op_f32(abs(-137f)))), _wgslsmith_f_op_f32(-2092f - _wgslsmith_f_op_f32(abs(-504f)))), -2272f, _wgslsmith_f_op_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(1000f * -1874f), -402f))), -1441f), !any(vec3<bool>(u_input.a.x > -1i, true, true))));
    var var_5 = vec4<f32>(var_4.x, _wgslsmith_f_op_f32(round(var_4.x)), _wgslsmith_f_op_f32(ceil(-548f)), _wgslsmith_f_op_f32(round(1576f)));
    var var_6 = reverseBits(4294967295u);
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(-var_1.x, -var_1.x)) >> (vec2<u32>(~1u, 1u) % vec2<u32>(32u)), -430f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), 1000f, 1f), vec4<f32>(-1016f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_5.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5.x))), 1050f), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)))), ~_wgslsmith_dot_vec3_u32(min(max(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 58386u, 1u)), ~vec3<u32>(61710u, 51742u, 5695u)), vec3<u32>(1u, 1u, 1u)), 0u);
}

