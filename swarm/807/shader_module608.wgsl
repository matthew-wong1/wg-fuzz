struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = true;
    var_0 = any(!vec3<bool>(_wgslsmith_f_op_f32(arg_1.d.a - arg_1.b.a) < _wgslsmith_f_op_f32(round(-423f)), select(true, true, true), true));
    var_0 = !all(vec3<bool>(false, select(false, false, true), select(true, true, false))) || (arg_2.a < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_2.a)), 1f));
    var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)))) != _wgslsmith_f_op_f32(-arg_1.d.a));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(1232f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2011f, _wgslsmith_f_op_f32(select(arg_1.d.a, 548f, true))))))));
    return u_input.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec3<u32>(20096u, 39385u, abs(4294967295u));
    let var_1 = Struct_5(arg_1.b, arg_1.d.a);
    let var_2 = var_1;
    var var_3 = Struct_3(Struct_1(var_1.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.d.a), arg_1.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.a, -911f)) - arg_1.d.a), arg_1.d.a)), ~vec2<i32>(_wgslsmith_div_i32(-arg_3.x, _wgslsmith_sub_i32(2147483647i, 1i)), arg_1.a.x), _wgslsmith_mod_i32(15007i, _wgslsmith_clamp_i32(2147483647i >> (func_3(-2147483647i, Struct_2(arg_3, Struct_1(-1111f), vec4<i32>(u_input.a, 1i, arg_3.x, 0i), arg_1.b), Struct_1(719f), arg_3.zz) % 32u), u_input.a, arg_3.x)));
    let var_4 = var_1.a;
    return -167f;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = ~u_input.a;
    let var_1 = countOneBits(vec3<i32>(_wgslsmith_mod_i32(-arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.x, u_input.a, -1i), vec4<i32>(arg_0.x, 1i, 2147483647i, 10973i))), ~(-2147483647i), arg_0.x)) << (u_input.b.wxw % vec3<u32>(32u));
    let var_2 = var_1.x;
    var var_3 = _wgslsmith_f_op_f32(-arg_2);
    var var_4 = _wgslsmith_f_op_f32(func_4(u_input.b.zw, Struct_2(var_1, Struct_1(_wgslsmith_f_op_f32(-1343f * _wgslsmith_f_op_f32(-1055f - arg_2))), ~vec4<i32>(arg_0.x, 0i, arg_0.x, arg_0.x ^ var_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), ~func_3(~var_1.x, Struct_2(vec3<i32>(u_input.a, var_2, arg_0.x), Struct_1(881f), ~vec4<i32>(1i, var_2, 0i, var_1.x), Struct_1(229f)), Struct_1(_wgslsmith_f_op_f32(981f - arg_2)), var_1.zx), (~(~arg_0) ^ vec3<i32>(-31260i, ~1i, var_2 | arg_0.x)) >> (~u_input.b.xzw % vec3<u32>(32u))));
    return Struct_3(Struct_1(_wgslsmith_div_f32(-660f, 494f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(625f * arg_2), _wgslsmith_f_op_f32(-arg_2)), vec4<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-1006f + -1809f), _wgslsmith_f_op_f32(min(arg_2, 349f)), _wgslsmith_f_op_f32(step(arg_2, arg_2)))))), vec2<i32>(u_input.a << (65473u % 32u), var_2), -41897i);
}

fn func_1(arg_0: f32) -> Struct_5 {
    let var_0 = func_2(firstLeadingBit(vec3<i32>(u_input.a, ~(-57291i), i32(-1i) * -2147483647i)) << (max(select(~u_input.b.zzx, u_input.b.wxy << (vec3<u32>(4294967295u, 6912u, u_input.b.x) % vec3<u32>(32u)), false), min(vec3<u32>(u_input.c, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 39841u)) & vec3<u32>(17834u, 30527u, 24310u)) % vec3<u32>(32u)), _wgslsmith_add_u32(~countOneBits(u_input.c), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, u_input.b.x), u_input.c & u_input.c, ~4294967295u)) << (u_input.b.x % 32u), 1f, 64008u);
    var var_1 = Struct_4(~_wgslsmith_div_i32(_wgslsmith_mult_i32(~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.d, var_0.d, -1i), vec4<i32>(13466i, var_0.c.x, u_input.a, 2147483647i))), 0i), !(var_0.d >= ~_wgslsmith_add_i32(29464i, 65180i)), -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, var_0.d), vec4<i32>(var_0.c.x, 35968i, u_input.a, var_0.d)), select(vec4<i32>(u_input.a, var_0.d, -1i, 15149i), vec4<i32>(0i, 1i, 7110i, var_0.d), true)) ^ vec4<i32>(1i, var_0.c.x, u_input.a, func_2(vec3<i32>(u_input.a, var_0.d, 57328i), u_input.b.x, -838f, u_input.c).c.x >> (_wgslsmith_div_u32(u_input.c, u_input.b.x) % 32u)), u_input.c | _wgslsmith_sub_u32(abs(u_input.b.x), 0u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(680f))), -336f), _wgslsmith_f_op_f32(func_4(u_input.b.ww, Struct_2(vec3<i32>(0i, u_input.a, u_input.a) & vec3<i32>(var_0.c.x, u_input.a, u_input.a), func_2(vec3<i32>(2147483647i, u_input.a, 60130i), u_input.b.x, arg_0, u_input.b.x).a, vec4<i32>(8728i, var_0.d, -50921i, u_input.a), func_2(vec3<i32>(var_0.c.x, var_0.d, u_input.a), 4294967295u, 2101f, 0u).a), u_input.c, ~vec3<i32>(-23003i, var_0.c.x, 8821i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1110f, _wgslsmith_f_op_f32(max(arg_0, 1579f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.a.a) - _wgslsmith_f_op_f32(808f + 898f)))), -237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - var_0.b);
    var var_3 = _wgslsmith_dot_vec2_i32(var_0.c, _wgslsmith_div_vec2_i32(-_wgslsmith_div_vec2_i32(var_0.c, vec2<i32>(-2147483647i, var_0.d)) | -vec2<i32>(0i, 2147483647i), var_1.c.yz));
    let var_4 = _wgslsmith_dot_vec2_i32(min(_wgslsmith_add_vec2_i32(var_1.c.xy, -_wgslsmith_add_vec2_i32(var_0.c, vec2<i32>(2147483647i, 47203i))), vec2<i32>(~var_0.d, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -14941i, 7939i, var_0.c.x), vec4<i32>(var_0.c.x, 0i, -13143i, var_0.c.x)), firstTrailingBit(var_1.c)))), max(~(_wgslsmith_add_vec2_i32(var_1.c.zx, vec2<i32>(var_1.c.x, 0i)) << (u_input.b.wy % vec2<u32>(32u))), vec2<i32>(max(u_input.a, var_1.a), func_2(var_1.c.zxy, var_1.d, var_0.b.x, var_1.d).d) << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.zw), ~vec2<u32>(u_input.b.x, 27918u)) % vec2<u32>(32u))));
    return Struct_5(Struct_1(-1290f), _wgslsmith_f_op_f32(trunc(-332f)));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5) -> vec2<i32> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - arg_2.b)), firstTrailingBit(~(~u_input.c)) == 31941u);
    var var_1 = var_0.x;
    var_0 = !(!vec2<bool>(!var_0.x, any(!vec3<bool>(var_0.x, var_0.x, false))));
    let var_2 = Struct_4(~select(-11544i, firstLeadingBit(~u_input.a), !var_0.x), !var_0.x, firstTrailingBit(~(~vec4<i32>(u_input.a, u_input.a, 36970i, 1998i))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1146f));
    var_0 = select(vec2<bool>(firstLeadingBit(arg_0) >= countOneBits(~u_input.c), var_0.x == !(var_2.c.x != -2147483647i)), select(vec2<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(true, var_2.b), true)), var_0.x), !select(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_2.b), vec2<bool>(var_2.b, var_2.b)), select(vec2<bool>(var_0.x, false), vec2<bool>(var_2.b, true), var_0.x), !vec2<bool>(false, var_2.b)), select(!vec2<bool>(var_0.x, false), !(!vec2<bool>(var_0.x, var_0.x)), select(!vec2<bool>(true, var_0.x), !vec2<bool>(var_2.b, false), var_2.d != 1u))), all(select(vec4<bool>(var_0.x, !var_0.x, false, var_0.x), !(!vec4<bool>(true, var_2.b, var_2.b, false)), !(!vec4<bool>(true, var_2.b, true, var_0.x)))));
    return -var_2.c.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(28134i, -2147483647i) ^ (vec2<i32>(-13024i, u_input.a) >> (u_input.b.ww % vec2<u32>(32u))), -vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(1i, u_input.a)), _wgslsmith_mult_vec2_i32(func_5(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), Struct_5(Struct_1(-1091f), -329f), func_1(808f)), ~vec2<i32>(u_input.a, 10159i))) & vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(-7301i, 1638i)));
    let var_1 = u_input.b.zx;
    let var_2 = Struct_4(-func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -2147483647i, u_input.a), vec3<i32>(1i, -22001i, u_input.a)), ~9806u, 1472f, u_input.b.x).c.x | (_wgslsmith_clamp_i32(~28583i, -11653i, var_0.x & var_0.x) & 8002i), true, _wgslsmith_mod_vec4_i32(-firstLeadingBit(~vec4<i32>(var_0.x, u_input.a, -40843i, 1i)), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, ~var_0.x), u_input.a, _wgslsmith_add_i32(-u_input.a, -2147483647i), 7679i)), ~0u, _wgslsmith_f_op_f32(-975f - -366f));
    let var_3 = Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.e)))).a, _wgslsmith_f_op_vec4_f32(-func_2(vec3<i32>(0i, ~(-1633i), ~61014i), abs(u_input.b.x & 48077u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(261f))), 0u).b), countOneBits(abs(max(var_0, var_2.c.wx))) << (vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.b.ww, var_1), ~u_input.b.x) % vec2<u32>(32u)), 1i);
    var var_4 = _wgslsmith_f_op_f32(trunc(-410f));
    var var_5 = var_3.b;
    var var_6 = firstLeadingBit(-var_2.c.xxz);
    var var_7 = _wgslsmith_f_op_f32(f32(-1f) * -2377f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.c, ~0u), abs(~(vec3<u32>(0u, u_input.c, 22894u) | vec3<u32>(21574u, u_input.b.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(-func_2(-(~var_2.c.wxz), u_input.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_5.x))), 1u).b), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_5.x))) * _wgslsmith_div_f32(-1000f, func_1(-1264f).b)), -558f));
}

