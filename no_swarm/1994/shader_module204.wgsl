struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(u_input.b.yzw, select(min(u_input.b.xww ^ ~vec3<u32>(u_input.c, u_input.a, u_input.b.x), ~vec3<u32>(54717u, u_input.b.x, 63121u) << (~vec3<u32>(u_input.b.x, 29610u, 56618u) % vec3<u32>(32u))), ~u_input.b.wyy, vec3<bool>(false, any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), all(vec3<bool>(true, false, false)) || true)));
    let var_1 = Struct_1(abs(-(vec3<i32>(arg_0, u_input.d, -1i) | vec3<i32>(u_input.d, 1i, arg_0)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0, 0u), _wgslsmith_mod_vec3_u32(u_input.b.xzx, u_input.b.xyy)) % vec3<u32>(32u))), reverseBits(select(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 2909i, arg_0), vec3<i32>(u_input.d, arg_0, u_input.d)), -vec3<i32>(-1i, arg_0, arg_0), vec3<bool>(true, true, true))) << (vec3<u32>(1u, u_input.b.x, _wgslsmith_sub_u32(73405u, select(var_0, var_0, false))) % vec3<u32>(32u)), abs(vec3<i32>(_wgslsmith_clamp_i32(arg_0, 1i, u_input.d), -arg_0, i32(-1i) * -8986i)) ^ _wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 0i, -77015i), vec3<i32>(2147483647i, 33270i, -55465i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1930i, -2147483647i, 5750i), ~vec3<i32>(u_input.d, arg_0, arg_0))), vec3<u32>(u_input.c, 4294967295u, ~1u));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1480f))) - _wgslsmith_f_op_f32(step(1526f, _wgslsmith_f_op_f32(-1850f * -1003f))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(667f, 405f)) + 999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1266f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -894f))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-2183f)), _wgslsmith_f_op_f32(f32(-1f) * -780f)))) * _wgslsmith_f_op_f32(step(var_3.x, 377f))));
    return ~(u_input.b.yww << (select(~u_input.b.xyy, var_1.d ^ vec3<u32>(var_1.d.x, u_input.a, u_input.b.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) % vec3<u32>(32u))) | u_input.b.xyy;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<i32> {
    let var_0 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.d), arg_1.b << (u_input.b.yyw % vec3<u32>(32u))), (select(u_input.d, arg_1.c.x, true) ^ ~arg_1.a.x) >> ((arg_1.d.x >> (_wgslsmith_div_u32(5422u, 4294967295u) % 32u)) % 32u), arg_1.c.x), arg_1.b, -vec3<i32>(max(_wgslsmith_div_i32(u_input.d, arg_1.c.x), -550i), ~u_input.d, arg_1.c.x), ~(vec3<u32>(86142u, arg_0.x, 0u) ^ vec3<u32>(3088u, arg_1.d.x, 4294967295u)) | func_3(_wgslsmith_div_i32(arg_1.a.x, _wgslsmith_div_i32(1i, 1i))));
    let var_1 = Struct_1(vec3<i32>(firstTrailingBit(-arg_1.a.x), 31911i, firstLeadingBit(~arg_1.a.x)), arg_1.b, firstTrailingBit(-arg_1.c), vec3<u32>(~54373u >> (firstTrailingBit(var_0.d.x) % 32u), 4294967295u, ~(arg_3 ^ 1u)) & _wgslsmith_sub_vec3_u32(~u_input.b.zyz, ~vec3<u32>(20585u, 10031u, arg_0.x)));
    var var_2 = arg_1;
    var var_3 = arg_2;
    let var_4 = var_0;
    return arg_1.c;
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = any(vec2<bool>(false, any(vec4<bool>(true, -37052i < u_input.d, true, any(vec2<bool>(true, false))))));
    var var_1 = abs(_wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u), u_input.b.x, u_input.c ^ 4294967295u), _wgslsmith_div_vec3_u32(func_3(u_input.d), vec3<u32>(u_input.b.x, u_input.b.x, u_input.c)), ~u_input.a >= reverseBits(0u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 21355u, u_input.b.x), vec3<u32>(43488u, 0u, 1u))) ^ u_input.b.zyz));
    var_1 = _wgslsmith_dot_vec4_u32(u_input.b | firstTrailingBit(~_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(54979u, u_input.a, u_input.b.x, 0u))), abs(~(~(~vec4<u32>(56430u, 85424u, 1u, u_input.a)))));
    var_1 = ~(~(~firstLeadingBit(u_input.c ^ 4294967295u)));
    var_1 = u_input.a;
    return Struct_1(vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, arg_0.x), arg_0.zz), -1i) & vec3<i32>(_wgslsmith_sub_i32(abs(2147483647i), 0i), select(-10670i, abs(arg_0.x), false), -41552i), vec3<i32>(u_input.d, countOneBits(u_input.d), arg_0.x), vec3<i32>(min(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_0.x, 26356i, -23960i), -14640i, u_input.d), _wgslsmith_dot_vec2_i32(arg_0.zz ^ arg_0.xz, vec2<i32>(-1i, -2147483647i) ^ vec2<i32>(u_input.d, -7121i))), arg_0.x, arg_0.x), u_input.b.xxz);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, -679i, -_wgslsmith_clamp_i32(func_2(vec3<u32>(0u, u_input.c, arg_1.d.x), arg_1, 1048f, 4294967295u).x, abs(-10212i), 18548i), -1i), _wgslsmith_div_vec4_i32(~(~vec4<i32>(arg_1.b.x, u_input.d, arg_1.c.x, arg_1.a.x)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -31127i, arg_1.c.x, -18560i), vec4<i32>(u_input.d, -53203i, arg_1.c.x, 0i))));
    var var_1 = select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, false), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, arg_0.x != 377f, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_0.x > _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), select(vec4<bool>(true, arg_0.x != arg_0.x, true, any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), true), all(vec2<bool>(true, true)))), !select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), true), vec4<bool>(false, select(true, false, false), any(vec3<bool>(false, true, false)), select(true, true, true)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), false)));
    var var_2 = select(var_1.zx, var_1.xx, all(vec4<bool>(true, false, var_1.x, var_1.x)));
    var var_3 = Struct_1(var_0.wzz, func_2(func_3(firstLeadingBit(u_input.d)) ^ func_3(-arg_1.c.x), func_4(var_0.zxx), _wgslsmith_f_op_f32(f32(-1f) * -443f), u_input.a & 39579u), arg_1.b | arg_1.b, ~(~min(vec3<u32>(u_input.b.x, arg_1.d.x, arg_1.d.x), _wgslsmith_sub_vec3_u32(u_input.b.zww, u_input.b.zzx))));
    var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1463f - arg_0.x) + arg_0.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2169f - _wgslsmith_f_op_f32(round(-193f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f))), !var_1.x);
    return func_4(vec3<i32>(_wgslsmith_add_i32(var_3.b.x & u_input.d, 37539i), 9447i, -_wgslsmith_dot_vec4_i32(vec4<i32>(30776i, u_input.d, 21286i, -26256i), var_0)) << (~(~u_input.b.yyy) % vec3<u32>(32u)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~firstTrailingBit(vec2<u32>(6722u, 2109u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-820f - -1197f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2220f, _wgslsmith_f_op_f32(sign(-655f)))) + _wgslsmith_f_op_f32(1013f + 382f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(880f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2263f, 1307f))))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), 220f, _wgslsmith_f_op_f32(-var_1.x), var_1.x);
    let var_2 = vec3<u32>(var_0.x, reverseBits(~(~u_input.c)), _wgslsmith_dot_vec3_u32(arg_0.d, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0.x, u_input.b.x, 13890u)), _wgslsmith_add_vec3_u32(vec3<u32>(40566u, 1u, u_input.a), arg_0.d)), arg_0.d)));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), 487f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * var_1.x)));
    return Struct_1(vec3<i32>(arg_0.c.x, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-23411i, 0i, u_input.d), 49367i), u_input.d), ~reverseBits(vec3<i32>(_wgslsmith_add_i32(u_input.d, arg_0.b.x), arg_0.c.x, countOneBits(2147483647i))), vec3<i32>(arg_0.c.x, reverseBits(-2147483647i), arg_0.a.x), vec3<u32>(0u, ~abs(arg_0.d.x), u_input.c));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = func_6(func_5(vec3<f32>(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(1f - -550f)), func_4(_wgslsmith_mod_vec3_i32(~arg_2.c, func_2(vec3<u32>(11564u, 1688u, 0u), Struct_1(vec3<i32>(arg_2.b.x, -45175i, -2147483647i), vec3<i32>(0i, u_input.d, -11452i), vec3<i32>(arg_2.c.x, 3467i, arg_1), vec3<u32>(30742u, 0u, 40805u)), 1006f, 33493u)))));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(arg_2.a ^ var_0.a, ~(vec3<i32>(arg_1, -2147483647i, u_input.d) << (arg_2.d % vec3<u32>(32u))), countOneBits(~vec3<i32>(-18008i, 34602i, -53178i))) | ~_wgslsmith_sub_vec3_i32(vec3<i32>(-33587i, u_input.d, -22938i), vec3<i32>(4537i, var_0.a.x, arg_1) | arg_2.b), vec3<i32>(1i, ~select(u_input.d, -arg_1, false), -1i), var_0.a, vec3<u32>(_wgslsmith_mod_u32(~arg_2.d.x, var_0.d.x), ~52360u, 0u));
    var var_2 = arg_0;
    let var_3 = 18478i;
    var var_4 = firstLeadingBit(~_wgslsmith_mod_i32(var_1.a.x, -2147483647i));
    return _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, u_input.d, 2147483647i, -59486i), -vec4<i32>(arg_2.b.x, -61400i, arg_2.b.x, u_input.d)), reverseBits(0i) & var_0.a.x, var_3, func_2(var_1.d, Struct_1(vec3<i32>(-332i, u_input.d, arg_2.b.x), vec3<i32>(arg_1, -2147483647i, 0i), vec3<i32>(2041i, arg_2.a.x, var_1.a.x), var_0.d), _wgslsmith_f_op_f32(var_2.x - -634f), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, var_0.d.x), var_0.d.yz)).x), vec4<i32>(var_0.c.x, var_1.c.x, 1i, abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~min(_wgslsmith_sub_u32(u_input.c, u_input.c), ~58220u) | countOneBits(42351u));
    var var_1 = _wgslsmith_dot_vec4_i32(-firstLeadingBit(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(543f, -204f), vec2<f32>(-1000f, 738f)), ~(-1i), Struct_1(vec3<i32>(u_input.d, 1i, -1i), vec3<i32>(u_input.d, u_input.d, 32366i), vec3<i32>(u_input.d, -23300i, -36379i), u_input.b.wxz))), -abs(vec4<i32>(19740i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.d, u_input.d), vec4<i32>(u_input.d, -1i, -1i, -29391i)), 1i, u_input.d)));
    var var_2 = abs(~u_input.d);
    let var_3 = Struct_1(-vec3<i32>(-u_input.d, max(_wgslsmith_div_i32(-1i, u_input.d), select(u_input.d, u_input.d, false)), _wgslsmith_mult_i32(~0i, i32(-1i) * -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, max(~(-2147483647i), _wgslsmith_sub_i32(u_input.d, u_input.d)), (i32(-1i) * -100103i) << (var_0 % 32u)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, -10713i, u_input.d), ~vec3<i32>(u_input.d, u_input.d, 42373i), firstTrailingBit(vec3<i32>(u_input.d, u_input.d, -2147483647i))))), vec3<i32>(func_6(func_5(vec3<f32>(-381f, -516f, -1000f), Struct_1(vec3<i32>(u_input.d, u_input.d, 52279i), vec3<i32>(-46731i, -1i, 2147483647i), vec3<i32>(-40762i, -16232i, -2147483647i), u_input.b.wzw))).c.x, ~u_input.d, 2147483647i), max(u_input.b.yxy, _wgslsmith_sub_vec3_u32(u_input.b.xww, vec3<u32>(var_0, _wgslsmith_mod_u32(24704u, 86979u), reverseBits(var_0)))));
    var_1 = max(u_input.d, ~(-2147483647i));
    var_1 = -2147483647i;
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2088f, -190f)))));
    let var_5 = func_4(vec3<i32>(func_4(-firstTrailingBit(var_3.b)).b.x, var_3.c.x, -var_3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-1i), var_5.c.x), _wgslsmith_sub_i32(var_3.b.x, -select(17823i, 41757i, true)), var_5.b.x), -(countOneBits(countOneBits(var_3.b.x)) | (~(-2147483647i) >> (_wgslsmith_add_u32(1u, u_input.a) % 32u))), _wgslsmith_f_op_f32(-138f + 1000f), -var_5.c.x, var_5.c);
}

