struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, 1339f, arg_0.x), vec3<bool>(false, false, false)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 642f, arg_0.x) + vec3<f32>(arg_0.x, -656f, arg_0.x)), vec3<f32>(arg_0.x, 216f, arg_0.x))))), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -967f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1266f, 1040f) - -2093f), -1754f)));
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1476f, 310f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1396f, arg_0.x, -1532f)))), -134f, _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -322f)), _wgslsmith_f_op_f32(f32(-1f) * -605f))));
    var var_1 = Struct_4(Struct_2(_wgslsmith_div_vec4_i32(~_wgslsmith_mult_vec4_i32(arg_1, arg_1), -vec4<i32>(13539i, arg_1.x, arg_1.x, arg_1.x)), true, countOneBits(vec3<u32>(u_input.c, u_input.b, 12909u) | ~vec3<u32>(u_input.b, 81555u, 4294967295u)), vec2<i32>(_wgslsmith_dot_vec4_i32(arg_1, arg_1), abs(1i))), vec2<i32>(arg_1.x, arg_1.x) << (u_input.a % vec2<u32>(32u)), ~min(select(vec3<u32>(62823u, 0u, 1u), vec3<u32>(4206u, u_input.b, u_input.b), vec3<bool>(false, false, true)) & ~vec3<u32>(u_input.c, u_input.c, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b, 6890u), vec3<u32>(u_input.c, u_input.b, u_input.b) | vec3<u32>(0u, 4294967295u, 0u))), Struct_2(abs(arg_1), true, select(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(26978u, u_input.b, u_input.a.x), vec3<u32>(31207u, u_input.b, u_input.b), vec3<u32>(21315u, u_input.b, u_input.c)), vec3<u32>(0u, 4294967295u, 0u)), vec3<u32>(~u_input.c, abs(u_input.b), ~83831u), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(select(arg_1.ww, vec2<i32>(arg_1.x, arg_1.x), false), arg_1.zw), -(~arg_1.yx))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, var_1.b.x << (_wgslsmith_dot_vec2_u32(var_1.c.xz, var_1.c.yx) % 32u)), firstTrailingBit(vec2<i32>(-(~2069i), var_1.a.d.x | -1i)));
    var var_3 = var_1.a.c;
    return abs(arg_1.x) >> ((37530u >> (1u % 32u)) % 32u);
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(~firstLeadingBit(countOneBits(-2147483647i)), 1i, func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2016f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f - -1260f) + 1000f)), vec4<i32>(-2147483647i, 17780i, -firstLeadingBit(-2147483647i), ~(-4676i))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1733f - _wgslsmith_f_op_f32(-666f + -710f)), 266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f * -1311f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1805f - 1416f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(trunc(187f))) - -1000f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1075f, _wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(119f + 731f)))))));
    var var_2 = Struct_3(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f - var_1.a.x))) * var_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a, var_1.a)));
    var_2 = var_1;
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, var_1.a.x, 752f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_1.b, var_2.a.x) - var_2.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * var_1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -236f), _wgslsmith_div_f32(var_1.b, 518f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.c), vec3<f32>(var_2.a.x, 1360f, -667f))))), var_1.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(721f, var_1.b, 121f) + var_1.a) - var_1.a) - _wgslsmith_f_op_vec3_f32(-var_2.a)));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = vec4<i32>(reverseBits(-22298i) << (~4294967295u % 32u), 1i, firstLeadingBit(countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(1i, -43192i), 1i))), 1i);
    var_0 = vec4<i32>(var_0.x, abs(func_3(arg_0.a.zz, vec4<i32>(20626i, 31244i, -11937i, -2147483647i))), _wgslsmith_div_i32(~(var_0.x ^ var_0.x), firstTrailingBit(1i)), var_0.x) ^ (~countOneBits(~vec4<i32>(35880i, var_0.x, var_0.x, var_0.x)) & min(~vec4<i32>(-42539i, var_0.x, var_0.x, -52446i) & (vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(u_input.c, 1u, 55556u, u_input.b) % vec4<u32>(32u))), vec4<i32>(1i, ~var_0.x, func_3(arg_0.c.zx, vec4<i32>(-1i, -5763i, var_0.x, 5867i)), var_0.x)));
    let var_1 = func_2();
    let var_2 = firstTrailingBit(vec3<i32>(var_0.x, _wgslsmith_clamp_i32(-2147483647i, var_0.x, ~(-17707i)), -var_0.x) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, u_input.c, 7116u), firstTrailingBit(vec3<u32>(0u, 15626u, u_input.a.x))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), arg_0.a.x))), vec2<f32>(-896f, arg_0.c.x));
    return Struct_4(Struct_2(-min(vec4<i32>(2147483647i, var_2.x, -24031i, -1i) & vec4<i32>(var_2.x, var_2.x, var_2.x, 70338i), -vec4<i32>(28679i, 0i, var_2.x, var_2.x)), true, vec3<u32>(abs(48446u), u_input.b, _wgslsmith_mult_u32(countOneBits(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), vec2<i32>(countOneBits(5773i), 19003i) | ~var_2.xx), var_0.yx, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 49032u), vec3<u32>(u_input.c, u_input.a.x, u_input.b)), ~vec3<u32>(1u, 1u, u_input.a.x)) ^ (~vec3<u32>(11004u, 1u, 119677u) >> (~vec3<u32>(u_input.a.x, 0u, 70312u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(abs(~vec3<u32>(1u, 1u, u_input.b)), ~select(vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(u_input.b, 8381u, 33611u), vec3<bool>(false, arg_1.x, arg_1.x)))), Struct_2(vec4<i32>(var_0.x, -1i, -var_2.x, max(func_3(var_1.c.zx, vec4<i32>(-2147483647i, var_2.x, -25453i, var_2.x)), _wgslsmith_sub_i32(-1i, var_0.x))), any(arg_1), ~abs(vec3<u32>(u_input.a.x, u_input.b, u_input.b)), var_2.zx));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = 4294967295u;
    return vec2<u32>(arg_1.b << (~reverseBits(u_input.a.x) % 32u), max(0u, 0u));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec3<bool>) -> i32 {
    var var_0 = func_5(func_4(func_2(), vec3<bool>(any(!arg_2.zx), arg_2.x, arg_2.x)), Struct_1(all(!select(vec4<bool>(true, true, arg_2.x, arg_1.a.a.b), vec4<bool>(arg_2.x, false, arg_2.x, arg_1.a.a.b), vec4<bool>(arg_2.x, false, false, true))), ~arg_1.a.c.x, arg_1.a.d.a, u_input.c));
    var_0 = abs(~u_input.a);
    var var_1 = Struct_2(~(abs(~vec4<i32>(0i, arg_0.x, arg_0.x, -1i)) ^ vec4<i32>(24920i, -arg_1.a.b.x, -42102i, countOneBits(arg_1.a.d.d.x))), arg_1.a.a.b, arg_1.a.a.c, ~arg_1.a.d.d);
    var var_2 = arg_2.x;
    var var_3 = arg_1.a;
    return ~_wgslsmith_mod_i32(var_1.d.x, var_1.d.x);
}

fn func_6(arg_0: i32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_5(Struct_4(Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, -2147483647i, 3840i, -14673i), vec4<i32>(-26676i, -1i, arg_0, 1i)) << (vec4<u32>(0u, u_input.c, u_input.b, 66587u) % vec4<u32>(32u)), all(!arg_1), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.a.x, u_input.c, 57927u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 113232u, 0u), vec3<u32>(u_input.b, u_input.a.x, 74531u))), -vec2<i32>(-1i, -13532i)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, arg_0), -vec2<i32>(arg_0, 1i), vec2<i32>(arg_0, arg_0)), min(vec2<i32>(73617i, arg_0) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(arg_0, arg_0))), vec3<u32>(u_input.c, ~4294967295u, ~abs(u_input.b)), Struct_2(max(-vec4<i32>(arg_0, 2147483647i, arg_0, -21306i), -vec4<i32>(-19606i, -46281i, arg_0, 0i)), false || (false | arg_1.x), select(~vec3<u32>(35710u, u_input.c, 0u), reverseBits(vec3<u32>(0u, u_input.a.x, 4294967295u)), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), false)), -(~vec2<i32>(arg_0, 0i)))));
    let var_1 = func_2();
    var_0 = Struct_5(var_0.a);
    var_0 = Struct_5(Struct_4(func_4(func_2(), select(!vec3<bool>(arg_1.x, var_0.a.d.b, var_0.a.a.b), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, var_0.a.d.b, true), true), var_0.a.d.b != arg_1.x)).d, var_0.a.d.d, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.a.d.c.x, var_0.a.d.c.x, 66112u), ~_wgslsmith_sub_vec3_u32(var_0.a.c, vec3<u32>(u_input.b, 0u, var_0.a.c.x))), func_4(func_2(), !select(vec3<bool>(arg_1.x, arg_1.x, true), vec3<bool>(true, var_0.a.d.b, arg_1.x), vec3<bool>(false, var_0.a.a.b, false))).d));
    var var_2 = Struct_5(Struct_4(func_4(func_2(), !select(vec3<bool>(false, true, arg_1.x), vec3<bool>(false, false, arg_1.x), var_0.a.d.b)).a, vec2<i32>(1i, -1i), ~firstLeadingBit(var_0.a.d.c), Struct_2(var_0.a.d.a & ~var_0.a.d.a, ~var_0.a.d.a.x >= 1i, _wgslsmith_sub_vec3_u32(var_0.a.d.c << (vec3<u32>(66330u, var_0.a.d.c.x, 51577u) % vec3<u32>(32u)), var_0.a.a.c ^ vec3<u32>(var_0.a.a.c.x, u_input.a.x, u_input.b)), ~vec2<i32>(arg_0, 0i) & -var_0.a.a.a.xy)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~(_wgslsmith_dot_vec4_i32(-vec4<i32>(-6426i, 24305i, -1i, 13948i), max(vec4<i32>(-25485i, 2147483647i, -17834i, -31810i), vec4<i32>(0i, 2147483647i, 55549i, -9257i))) ^ _wgslsmith_add_i32(func_1(vec3<i32>(-30634i, 74466i, 0i), Struct_5(Struct_4(Struct_2(vec4<i32>(-1i, 0i, 13973i, -2147483647i), true, vec3<u32>(u_input.a.x, u_input.a.x, 81749u), vec2<i32>(-49111i, 17125i)), vec2<i32>(-40259i, -12374i), vec3<u32>(6926u, 4294967295u, 0u), Struct_2(vec4<i32>(1i, -17244i, 1i, 17304i), true, vec3<u32>(32294u, u_input.b, u_input.b), vec2<i32>(-2147483647i, 29670i)))), vec3<bool>(true, true, false)), _wgslsmith_mod_i32(957i, 32017i))), vec2<bool>(false, !func_4(func_2(), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)).a.b));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(-vec4<i32>(-35128i, 1i, -45359i, 2505i), reverseBits(vec4<i32>(19074i, 2026i, -6694i, 2147483647i)))), _wgslsmith_add_i32(0i, 0i)) & select(-2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, 1i), 1i), any(vec2<bool>(false, true)));
    var_1 = 2147483647i;
    var_1 = abs(4672i);
    var var_2 = -1i;
    var_1 = _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(1i, 1i)), ~vec2<i32>(max(2147483647i, -1299i), i32(-1i) * -2724i)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1074f);
    let var_4 = Struct_2(vec4<i32>(0i, -func_1(firstLeadingBit(vec3<i32>(-8442i, 28164i, 0i)), Struct_5(Struct_4(Struct_2(vec4<i32>(30394i, 34515i, 82464i, 1i), true, vec3<u32>(17816u, 27531u, 4294967295u), vec2<i32>(20841i, 20582i)), vec2<i32>(-1i, 10386i), vec3<u32>(u_input.c, u_input.b, u_input.b), Struct_2(vec4<i32>(-29667i, 31234i, 8447i, 71615i), false, vec3<u32>(u_input.b, 51362u, u_input.b), vec2<i32>(-23454i, -27356i)))), vec3<bool>(false, true, false)), -6249i, -(~(~(-1i)))), 21265u <= select(~(~u_input.b), _wgslsmith_sub_u32(firstLeadingBit(u_input.c), 1u ^ u_input.b), true), firstLeadingBit(vec3<u32>(u_input.c, u_input.b, 4294967295u)), vec2<i32>(abs(_wgslsmith_div_i32(~(-50266i), abs(-38359i))), ~(-abs(-23044i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(-var_0.b)), func_2().b, -634f, var_0.b)), ~min(var_4.c, select(vec3<u32>(34061u, 8153u, 53298u), ~vec3<u32>(var_4.c.x, u_input.c, u_input.c), select(vec3<bool>(var_4.b, var_4.b, true), vec3<bool>(true, var_4.b, false), vec3<bool>(var_4.b, false, true)))));
}

