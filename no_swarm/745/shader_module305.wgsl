struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(abs(1i), u_input.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(421f, 1007f), vec2<f32>(730f, 724f)))))), !arg_2.x, ~_wgslsmith_add_vec2_i32(vec2<i32>(-20001i, u_input.a.x) | u_input.a.zz, u_input.a.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-691f - -320f), _wgslsmith_f_op_f32(trunc(-239f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) + _wgslsmith_f_op_f32(floor(2232f))))), Struct_1(vec2<i32>(1i, 0i), vec2<f32>(_wgslsmith_f_op_f32(sign(-844f)), 1000f), all(vec2<bool>(arg_2.x, true || arg_2.x)), vec2<i32>(u_input.a.x, 10649i) | vec2<i32>(-2147483647i, u_input.a.x >> (0u % 32u)), -1558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1462f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-778f)) + _wgslsmith_f_op_f32(step(-247f, 468f))))), Struct_1(u_input.a.xy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), 173f), !(all(vec4<bool>(arg_2.x, false, true, false)) | !arg_2.x), -(~(-u_input.a.zz)), _wgslsmith_f_op_f32(step(-1597f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(812f))))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-254f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.d.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.e))))), -148f);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - 788f))), _wgslsmith_f_op_f32(-1713f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x - 1872f))), -1157f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.b.e, _wgslsmith_f_op_f32(2240f * -105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(178f, -532f)))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, 247f, var_1.x, var_0.a.e))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1488f, 450f, 1583f, var_2.d.e), vec4<f32>(var_2.c, -1000f, 469f, var_0.d.e))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2437f, var_0.b.e, var_0.d.e, 933f) - vec4<f32>(-1000f, var_2.a.e, -1508f, var_1.x)))))));
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(-325f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-170f, var_2.a.e))) - var_0.b.b.x))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_i32(abs(~vec2<i32>(min(0i, 2147483647i), _wgslsmith_sub_i32(18519i, u_input.a.x))), select(~u_input.a.yy | abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx)), firstLeadingBit(u_input.a.xy), !(!(arg_1.a.c || arg_2.x))));
    let var_1 = Struct_2(arg_1.d, arg_1.d, arg_1.d.e, Struct_1(-(firstLeadingBit(u_input.a.zz) ^ vec2<i32>(var_0.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2372f, arg_1.d.e))), u_input.a.x == _wgslsmith_dot_vec2_i32(~var_0, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.d.d.x, arg_1.b.d.x), arg_1.b.d, var_0)), ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2298f)))));
    let var_2 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(max(u_input.a.x, -2147483647i), 2147483647i & var_1.b.d.x), ~firstTrailingBit(-2147483647i), select(-5849i, -1i, !var_1.d.c)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.d.x >> (arg_0 % 32u), -2147483647i, var_1.a.d.x | var_1.b.d.x, -2147483647i), vec4<i32>(-1i) * -vec4<i32>(var_0.x, 43769i, arg_1.a.d.x, arg_1.b.d.x))));
    let var_3 = Struct_2(arg_1.d, var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1954f)), Struct_1(select(vec2<i32>(-9154i, u_input.a.x) | vec2<i32>(var_0.x, var_1.b.a.x), vec2<i32>(3653i, var_0.x), vec2<bool>(true, true)) << (abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(46608u, arg_0))) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.b.x)) - _wgslsmith_f_op_f32(func_3(arg_0, vec3<u32>(arg_0, arg_0, 4294967295u), arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f))), all(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, var_1.a.c), vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(false, arg_1.d.c, var_1.a.c, false))), vec2<i32>(0i << (arg_0 % 32u), ~var_2.x) | countOneBits(vec2<i32>(var_0.x, 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -384f))))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(227f, var_1.c))), 1000f);
    return Struct_1(vec2<i32>(var_2.x, 9933i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-812f - var_4.x)) * _wgslsmith_f_op_f32(-759f - var_1.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1536f, var_3.a.b.x)) * arg_1.b.e)))), !all(select(vec3<bool>(var_1.d.c, false, true), vec3<bool>(true, arg_1.a.c, var_1.a.c), vec3<bool>(var_3.b.c, false, true))) && var_1.b.c, vec2<i32>(0i, -var_1.b.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(step(var_4.x, -605f))) * var_1.b.e))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = false;
    let var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -1838f, -1484f, var_1.a.b.x)));
    var var_3 = select(vec3<bool>(false, select(arg_3.d.c, arg_3.a.c, select(false, true, true) || arg_2.b.c), !(arg_3.d.c | !arg_2.d.c)), !(!vec3<bool>(arg_1.c | var_1.d.c, all(vec2<bool>(var_0, false)), var_0)), (-u_input.a.x <= arg_2.d.d.x) & arg_1.c);
    var var_4 = Struct_1(vec2<i32>(firstLeadingBit(arg_2.a.d.x >> (arg_0.x % 32u)) ^ _wgslsmith_add_i32(~var_1.a.d.x, u_input.a.x), -2147483647i), _wgslsmith_f_op_vec2_f32(-var_1.a.b), false, func_2(9417u, Struct_2(Struct_1(countOneBits(u_input.a.yz), _wgslsmith_f_op_vec2_f32(var_1.b.b + arg_3.d.b), !arg_3.a.c, arg_1.d, 1000f), Struct_1(min(vec2<i32>(u_input.a.x, var_1.a.d.x), vec2<i32>(30563i, -1i)), _wgslsmith_f_op_vec2_f32(abs(var_2.ww)), true, u_input.a.yy, _wgslsmith_f_op_f32(arg_1.b.x + arg_2.a.b.x)), _wgslsmith_f_op_f32(-func_2(arg_0.x, arg_3, var_3.zx).e), func_2(_wgslsmith_mod_u32(arg_0.x, arg_0.x), var_1, select(vec2<bool>(arg_1.c, false), var_3.xx, var_3.zy))), select(var_3.xx, !var_3.xy, select(var_3.yy, var_3.zy, select(vec2<bool>(false, false), vec2<bool>(arg_3.b.c, true), false)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2733f - _wgslsmith_div_f32(arg_1.e, arg_2.c)))));
    return _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(_wgslsmith_clamp_i32(1i, firstTrailingBit(-29942i), ~var_4.a.x), -21609i, arg_2.d.a.x >> (~32853u % 32u), (i32(-1i) * -32691i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 42039u, arg_0.x), vec3<u32>(4294967295u, 2365u, arg_0.x)) % 32u))), min(firstLeadingBit(vec4<i32>(countOneBits(-71897i), 9300i, arg_2.d.a.x ^ arg_1.d.x, -1i)), reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, var_1.a.a.x, 0i, -2147483647i), reverseBits(vec4<i32>(1i, 0i, -1731i, -22100i))))), vec4<i32>(-max(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.x, 2147483647i), vec2<i32>(u_input.a.x, arg_2.b.d.x))), 22478i, 54803i, ~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.d.x, 0i), u_input.a.x ^ arg_1.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> bool {
    let var_0 = arg_2;
    var var_1 = arg_0;
    let var_2 = vec4<i32>(-1i) * -func_4(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 35067u), select(vec2<u32>(10276u, 51830u), vec2<u32>(4294967295u, 47082u), vec2<bool>(true, false))), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(10223u, 22717u, 45564u, 33317u), vec4<u32>(91309u, 52095u, 59323u, 4294967295u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -23163i), vec2<f32>(1000f, arg_1), true, vec2<i32>(arg_0.b.a.x, u_input.a.x), arg_1), var_1.b, 986f, arg_0.a), arg_2.yy), arg_0, arg_0);
    let var_3 = _wgslsmith_mult_u32(6187u, firstTrailingBit(1u));
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_1, -488f)), _wgslsmith_f_op_f32(abs(253f)))))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_add_i32(~_wgslsmith_mod_i32(-27693i, func_4(vec2<u32>(33603u, 22108u), Struct_1(vec2<i32>(-53865i, -2147483647i), vec2<f32>(1808f, arg_1.b.x), arg_0, vec2<i32>(-11371i, 2147483647i), arg_1.b.x), Struct_2(Struct_1(arg_2.b.d, vec2<f32>(202f, arg_2.c), true, vec2<i32>(-16627i, arg_1.d.x), arg_1.b.x), arg_2.d, arg_2.d.b.x, Struct_1(vec2<i32>(-1i, -11458i), vec2<f32>(-694f, -155f), false, vec2<i32>(u_input.a.x, u_input.a.x), 116f)), Struct_2(arg_2.a, Struct_1(vec2<i32>(arg_2.d.a.x, 1i), arg_1.b, false, arg_1.d, arg_1.b.x), arg_1.b.x, arg_2.d)).x), ~arg_1.d.x) <= (arg_2.d.d.x << (~1u % 32u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.e + arg_1.e))), arg_1.e);
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-517f, arg_1.b.x))) <= arg_1.e;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~12482u, 1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(33504u, 0u)), firstTrailingBit(vec2<u32>(1u, 1u))), ~max(~0u, 18524u >> (0u % 32u))), _wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(2777u, 61081u, 0u, 4294967295u)), abs(vec4<u32>(1u, 1495u, 63515u, 48936u))), vec4<u32>(~(~99861u), 28140u, min(0u, ~23981u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 79461u, 0u), vec3<u32>(8598u, 1u, 0u)) << (1u % 32u))));
    var var_3 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(44229u, var_2, 0u), vec3<u32>(var_2, var_2, 0u))) << (~(~vec2<u32>(var_2, var_2)) % vec2<u32>(32u)), vec2<u32>(var_2 << (_wgslsmith_dot_vec4_u32(vec4<u32>(45963u, 61572u, var_2, 3777u), vec4<u32>(var_2, 26335u, var_2, 4294967295u)) % 32u), ~var_2), vec2<bool>(arg_2.a.c, arg_1.b.x >= _wgslsmith_f_op_f32(567f - 883f))), vec2<u32>(1u, ~(~1u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(3926u, var_2), vec2<u32>(54546u, var_2))), ~vec2<u32>(4294967295u, var_2)), abs(~vec2<u32>(var_2, 3243u))));
    return _wgslsmith_mod_i32(1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    var_0 = firstLeadingBit(~(-66869i & ~u_input.a.x) & (_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, 30043i), ~u_input.a.x) | func_5(func_1(Struct_2(Struct_1(u_input.a.zx, vec2<f32>(-820f, -345f), true, vec2<i32>(u_input.a.x, 1i), -478f), Struct_1(u_input.a.xz, vec2<f32>(-276f, -854f), false, vec2<i32>(u_input.a.x, u_input.a.x), 1617f), -443f, Struct_1(u_input.a.xz, vec2<f32>(1000f, 740f), true, u_input.a.yy, -929f)), -1317f, vec4<bool>(false, false, false, true)), Struct_1(u_input.a.xx, vec2<f32>(267f, -617f), false, vec2<i32>(-18052i, u_input.a.x), -934f), Struct_2(Struct_1(vec2<i32>(u_input.a.x, -2147483647i), vec2<f32>(938f, -1000f), true, u_input.a.xx, -1000f), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), vec2<f32>(273f, 108f), false, vec2<i32>(16233i, 22585i), -1000f), -1797f, Struct_1(vec2<i32>(0i, u_input.a.x), vec2<f32>(1076f, 1000f), false, vec2<i32>(-1i, u_input.a.x), -617f)))));
    var_0 = abs(_wgslsmith_mult_i32(u_input.a.x, 1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-107f, -306f, -628f, 110f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, 2282f, -599f, 544f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 364f, 1405f, -1555f)))))));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(0i | ((u_input.a.x << (58508u % 32u)) & 1i), _wgslsmith_sub_i32(12956i, _wgslsmith_mult_i32(2147483647i >> (0u % 32u), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(-2674i, ~u_input.a.x)) & u_input.a);
    var_0 = -3376i;
    var_0 = -(u_input.a.x | countOneBits(u_input.a.x));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 6830u), reverseBits(vec3<u32>(17093u, 0u, 1u))), 1u), ~max(firstTrailingBit(16741u), abs(0u)), _wgslsmith_sub_u32(28168u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(54541u, 4294967295u), vec2<u32>(23054u, 1u)))), ~select(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 34995u), vec3<u32>(0u, 23584u, 28201u), vec3<u32>(20312u, 1u, 11204u)), ~vec3<u32>(0u, 0u, 0u)), ~vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, 148206u);
}

