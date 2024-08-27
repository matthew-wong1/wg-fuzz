struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -385f);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 16380i), vec2<i32>(u_input.b, 2147483647i)), -vec2<i32>(u_input.b, 1i))), firstTrailingBit(~vec4<i32>(u_input.b >> (u_input.a.x % 32u), -910i, -1i, _wgslsmith_mult_i32(u_input.b, u_input.b))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0, var_0), -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 346f), vec2<f32>(-342f, 415f)))))));
    let var_3 = vec3<i32>(u_input.b, u_input.b, _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-21244i, 13681i, u_input.b) | vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(-25003i, 1i, 0i) | ~vec3<i32>(u_input.b, u_input.b, -51585i)), u_input.b));
    var var_4 = _wgslsmith_f_op_f32(sign(var_0));
    return vec4<u32>(min(u_input.a.x, ~(~u_input.a.x)) & _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a.x, 3468u), min(31601u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), u_input.a.x, ~18709u, _wgslsmith_add_u32(u_input.a.x, ~41835u) >> (_wgslsmith_add_u32(abs(firstLeadingBit(4294967295u)), u_input.a.x) % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(arg_0.a.b.xy, func_3());
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) + 1404f))), 563f));
    let var_2 = Struct_3(var_0.b.yx, var_0.b);
    var_1 = -926f;
    var_0 = Struct_3(_wgslsmith_sub_vec2_u32(~(~(~u_input.a.ww)), vec2<u32>(func_3().x, ~arg_0.a.b.x) ^ (var_0.a >> ((vec2<u32>(u_input.a.x, var_0.a.x) >> (u_input.a.yx % vec2<u32>(32u))) % vec2<u32>(32u)))), var_2.b & ~vec4<u32>(26715u, 1u, ~18482u, max(arg_0.a.b.x, 3449u)));
    return Struct_2(Struct_1(arg_0.a.a, func_3().zxz, firstLeadingBit(vec4<u32>(var_0.b.x, var_2.b.x, ~52080u, var_0.a.x << (4294967295u % 32u))), arg_0.c.d, arg_0.a.e), true, Struct_1(_wgslsmith_sub_vec4_i32(~(arg_0.c.a << (vec4<u32>(arg_0.c.c.x, var_2.b.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, arg_0.a.a.x, 0i), _wgslsmith_div_vec4_i32(arg_0.c.a, arg_0.a.a))), _wgslsmith_div_vec3_u32(vec3<u32>(select(1u, 1u, false), ~var_2.b.x, func_3().x), ~arg_0.a.b | _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, var_2.a.x), vec3<u32>(arg_0.a.e.x, u_input.a.x, 0u), vec3<u32>(var_0.a.x, u_input.a.x, 1u))), vec4<u32>(~firstLeadingBit(var_2.a.x), u_input.a.x, ~arg_0.c.e.x, func_3().x), 0u != _wgslsmith_add_u32(arg_0.c.c.x, ~0u), firstTrailingBit(arg_0.a.c.zw)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = abs(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, u_input.a.x, 20278u, 8302u)), vec4<u32>(68150u | firstTrailingBit(u_input.a.x), min(u_input.a.x, arg_0.a.e.x), u_input.a.x, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, u_input.a.x)), min(vec2<u32>(u_input.a.x, arg_0.a.c.x), arg_0.a.c.zz)))));
    var_0 = ~arg_0.c.c;
    var var_1 = arg_0;
    var var_2 = reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(-10941i, u_input.b, -1i), _wgslsmith_clamp_vec3_i32(-abs(vec3<i32>(1i, u_input.b, arg_0.a.a.x)), (vec3<i32>(u_input.b, 0i, u_input.b) | vec3<i32>(2149i, arg_0.c.a.x, arg_0.c.a.x)) >> (~arg_0.c.c.ywy % vec3<u32>(32u)), vec3<i32>(-var_1.a.a.x, u_input.b, u_input.b))));
    let var_3 = func_2(func_2(Struct_2(func_2(func_2(Struct_2(var_1.c, false, arg_0.a), vec2<f32>(-278f, 3137f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1095f, -520f), vec2<f32>(-533f, 1510f)))).c, (var_1.c.e.x << (0u % 32u)) != ~4294967295u, func_2(arg_0, vec2<f32>(-757f, -263f)).c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(744f, 612f))) + vec2<f32>(_wgslsmith_f_op_f32(805f + -1000f), -1000f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1365f))), _wgslsmith_f_op_f32(round(-935f))))));
    return -1091f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_3(firstTrailingBit(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(15161u, arg_1.b.x) | u_input.a.xw), arg_2.a.e, ~(vec2<u32>(arg_3.x, 47139u) & u_input.a.ww))), vec4<u32>(arg_1.e.x, 14987u, ~(~(1u >> (0u % 32u))), 27285u));
    let var_1 = vec4<bool>(false, arg_1.d, arg_0 != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -771f))), any(vec4<bool>(arg_1.d, arg_0 == arg_0, true, true)));
    var var_2 = arg_2;
    var var_3 = 250f;
    var var_4 = _wgslsmith_mult_i32(1i, 0i) ^ firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(arg_1.a.x), -24850i));
    return !(!vec4<bool>(true, true, !(2147483647i == arg_2.c.a.x), true));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_2(Struct_1(vec4<i32>(30131i, -1i, 13558i, 1i), vec3<u32>(9661u, 28474u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true, vec2<u32>(u_input.a.x, u_input.a.x)), false, Struct_1(vec4<i32>(u_input.b, u_input.b, 69677i, u_input.b), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), false, vec2<u32>(1u, 55471u))), vec2<f32>(2721f, 398f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(106f, -395f)))), func_2(Struct_2(Struct_1(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 69250u, 1u), u_input.a.ywx), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 44114u), false, u_input.a.xz), select(false, all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false))), Struct_1(-vec4<i32>(16090i, u_input.b, 1i, -1i), u_input.a.zzz, ~vec4<u32>(23506u, u_input.a.x, u_input.a.x, 4294967295u), true, ~vec2<u32>(u_input.a.x, 11616u))), vec2<f32>(1f, 1f)).a, Struct_2(Struct_1(select(vec4<i32>(-12031i, u_input.b, 11365i, 46609i), -vec4<i32>(-25967i, u_input.b, u_input.b, u_input.b), true), func_2(func_2(Struct_2(Struct_1(vec4<i32>(u_input.b, 1538i, 0i, -5426i), vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec4<u32>(22973u, 120128u, u_input.a.x, 1u), true, vec2<u32>(14757u, u_input.a.x)), false, Struct_1(vec4<i32>(62591i, -2147483647i, u_input.b, 31319i), u_input.a.xyw, u_input.a, false, u_input.a.zz)), vec2<f32>(520f, -384f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-605f, -313f))).a.b, firstLeadingBit(vec4<u32>(78365u, u_input.a.x, u_input.a.x, u_input.a.x)), false, ~vec2<u32>(u_input.a.x, 1u)), true, Struct_1(vec4<i32>(-1i) * -vec4<i32>(-82566i, u_input.b, 1i, 2147483647i), u_input.a.wyy, u_input.a, all(vec3<bool>(true, true, true)), vec2<u32>(u_input.a.x >> (71945u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))))), (u_input.a.xx >> ((u_input.a.yz | vec2<u32>(u_input.a.x, 83355u)) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), (vec2<u32>(0u, 54524u) ^ vec2<u32>(u_input.a.x, u_input.a.x)) << ((u_input.a.ww | vec2<u32>(10981u, 17385u)) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.a.x) >> ((u_input.a.xx << (u_input.a.wy % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = u_input.b;
    var var_2 = Struct_3(vec2<u32>(u_input.a.x, 4294967295u), ~(select(vec4<u32>(1u, u_input.a.x, u_input.a.x, 15047u) ^ vec4<u32>(1u, 72848u, 0u, u_input.a.x), select(vec4<u32>(2526u, 126494u, u_input.a.x, 4294967295u), u_input.a, vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true) >> (func_2(Struct_2(Struct_1(vec4<i32>(var_1, var_1, var_1, -21578i), u_input.a.zxw, u_input.a, false, vec2<u32>(u_input.a.x, u_input.a.x)), var_0.x, Struct_1(vec4<i32>(var_1, -2147483647i, -93289i, u_input.b), u_input.a.zwz, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), var_0.x, u_input.a.xz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1371f, -768f) * vec2<f32>(-1345f, -306f))).c.c % vec4<u32>(32u))));
    var_0 = !vec4<bool>(func_2(func_2(Struct_2(Struct_1(vec4<i32>(var_1, u_input.b, 1i, u_input.b), vec3<u32>(38672u, 4294967295u, 4294967295u), u_input.a, false, u_input.a.zz), var_0.x, Struct_1(vec4<i32>(u_input.b, var_1, var_1, 14133i), vec3<u32>(2938u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, var_2.b.x, u_input.a.x), var_0.x, var_2.b.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, -235f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1363f), 2616f)).b, true, min(reverseBits(4294967295u), var_2.b.x & 0u) > u_input.a.x, var_0.x);
    var var_3 = u_input.b;
    return vec2<u32>(_wgslsmith_mod_u32(37373u, min(~_wgslsmith_mult_u32(42343u, 0u), var_2.a.x)), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f - -1398f) + 274f) - 203f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-905f, 1756f) + _wgslsmith_f_op_f32(floor(-1685f)))))), 688f);
    let var_2 = all(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(var_1.x != var_1.x, true, all(vec4<bool>(true, true, false, true)), false)), vec4<bool>(all(vec2<bool>(true, true)), true, false, func_2(func_2(Struct_2(Struct_1(vec4<i32>(-46425i, u_input.b, u_input.b, u_input.b), u_input.a.yzy, u_input.a, false, vec2<u32>(u_input.a.x, u_input.a.x)), false, Struct_1(vec4<i32>(2147483647i, u_input.b, 1696i, 30881i), vec3<u32>(u_input.a.x, var_0.x, u_input.a.x), vec4<u32>(var_0.x, 27199u, 0u, var_0.x), false, vec2<u32>(var_0.x, var_0.x))), var_1), vec2<f32>(-998f, 513f)).b), all(func_5(_wgslsmith_f_op_f32(sign(-1504f)), func_2(Struct_2(Struct_1(vec4<i32>(-13762i, u_input.b, -55524i, u_input.b), u_input.a.xwx, u_input.a, false, u_input.a.wy), false, Struct_1(vec4<i32>(u_input.b, u_input.b, 11405i, 1i), vec3<u32>(0u, 14398u, 0u), vec4<u32>(var_0.x, 35683u, 1u, u_input.a.x), true, u_input.a.ww)), vec2<f32>(var_1.x, var_1.x)).a, func_2(Struct_2(Struct_1(vec4<i32>(u_input.b, u_input.b, 10463i, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, var_0.x), u_input.a, true, u_input.a.wy), false, Struct_1(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec3<u32>(var_0.x, u_input.a.x, 4797u), u_input.a, true, u_input.a.xw)), var_1), vec2<u32>(3706u, var_0.x)))));
    var_0 = vec2<u32>(~abs(0u), ~u_input.a.x >> (var_0.x % 32u));
    var_0 = vec2<u32>(1u, 92936u);
    var_0 = u_input.a.xy;
    let var_3 = firstTrailingBit(~((func_2(Struct_2(Struct_1(vec4<i32>(u_input.b, -11518i, -30395i, u_input.b), vec3<u32>(var_0.x, 17640u, u_input.a.x), vec4<u32>(var_0.x, 0u, u_input.a.x, 105156u), true, u_input.a.wx), true, Struct_1(vec4<i32>(1i, -2147483647i, 2147483647i, -2147483647i), vec3<u32>(var_0.x, var_0.x, 86640u), u_input.a, var_2, u_input.a.wx)), vec2<f32>(var_1.x, 884f)).c.b.x << (~63167u % 32u)) | ~u_input.a.x));
    var var_4 = ~var_0.x;
    let var_5 = _wgslsmith_div_u32(u_input.a.x, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(-9879i | abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 25456i), vec4<i32>(u_input.b, u_input.b, -22393i, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(1082f + var_1.x), -430f), -1966f);
}

