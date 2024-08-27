struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    let var_0 = vec2<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-352f * -2588f))))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(30479i, -14511i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, u_input.a, u_input.d, u_input.a)) | (vec4<i32>(u_input.a, u_input.a, -2147483647i, 0i) >> (~vec4<u32>(4294967295u, u_input.e.x, 55463u, u_input.e.x) % vec4<u32>(32u))), vec4<i32>(max(-2147483647i, -44290i), select(~u_input.d, 1i, any(vec3<bool>(false, true, false))), -(~u_input.a), ~abs(u_input.d))), u_input.d);
    var var_2 = Struct_1(var_1, var_1.x > firstLeadingBit(u_input.d), u_input.b, select(true, !any(vec4<bool>(false, true, true, true)) & false, (countOneBits(u_input.d) ^ _wgslsmith_div_i32(u_input.d, -6237i)) >= -_wgslsmith_dot_vec4_i32(vec4<i32>(-59194i, u_input.a, var_1.x, var_1.x), vec4<i32>(var_1.x, 9469i, u_input.d, var_1.x))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * vec4<f32>(var_0.x, -484f, var_0.x, arg_0.x)), arg_0, !(var_2.d == false))))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_0.x), arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = false;
    var var_1 = arg_2.d;
    var_1 = any(vec3<bool>(!(u_input.c.x == 1u) || !var_0, arg_2.d, false));
    var var_2 = vec4<bool>(true, (_wgslsmith_f_op_f32(-arg_3.x) == 1568f) || var_0, all(!vec2<bool>(false, !arg_1.d)), !arg_2.d && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) * 1377f) < _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(floor(-618f)))));
    var var_3 = ~u_input.c.x;
    return firstTrailingBit(min(firstLeadingBit(vec4<u32>(abs(7028u), _wgslsmith_mod_u32(4294967295u, 26368u), 8102u, reverseBits(38990u))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.e.x, 0u, 15932u, u_input.e.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.e.x, 34029u, u_input.c.x, u_input.e.x), ~vec4<u32>(1u, 72009u, 16617u, u_input.c.x)), ~(vec4<u32>(22604u, u_input.c.x, u_input.c.x, u_input.e.x) >> (vec4<u32>(u_input.c.x, u_input.e.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x ^ u_input.e.x), ~max(u_input.c, vec2<u32>(22502u, u_input.c.x)), abs(vec2<u32>(4294967295u, u_input.c.x))), u_input.c);
    var var_1 = select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, var_0.x, 7293u, var_0.x), vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.e.x))), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(27425u, u_input.c.x, var_0.x, 52352u), vec4<u32>(u_input.c.x, u_input.c.x, 135731u, 9625u)), ~(~vec4<u32>(u_input.c.x, 1u, 0u, 4294967295u))), 4294967295u == _wgslsmith_dot_vec2_u32(vec2<u32>(49163u, 26498u), u_input.e.xy)) >> (func_4(arg_0.c.d, Struct_1(countOneBits(-u_input.b), true, -vec2<i32>(2147483647i, u_input.d), any(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_3.b))), Struct_1(vec2<i32>(_wgslsmith_sub_i32(17458i, 2147483647i), ~1i), arg_2.a.x, vec2<i32>(-u_input.b.x, -2147483647i), true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, -1229f, 595f, -764f)), _wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(785f, -286f, -637f, -727f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 216f, 1222f, -588f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-145f, 449f, -908f, -1000f)), arg_2.a.x)), false))) % vec4<u32>(32u));
    var_0 = reverseBits(~(~vec2<u32>(66303u, _wgslsmith_div_u32(58329u, var_1.x))));
    var_1 = ~(firstLeadingBit(vec4<u32>(var_0.x, 1u, var_1.x << (u_input.c.x % 32u), u_input.c.x | 0u)) >> (~vec4<u32>(countOneBits(var_1.x), 4294967295u & u_input.e.x, u_input.c.x, ~var_0.x) % vec4<u32>(32u)));
    let var_2 = Struct_2(arg_0.a, Struct_1(vec2<i32>(_wgslsmith_clamp_i32(~(-2147483647i), arg_3.c.x << (var_1.x % 32u), ~u_input.a), -28724i), arg_0.b.d, arg_1.zx, false), Struct_1(-min(u_input.b, vec2<i32>(4720i, arg_3.c.x)) ^ (reverseBits(vec2<i32>(-6408i, 2147483647i)) ^ abs(arg_0.c.c)), select(~0i, abs(0i), any(vec3<bool>(arg_0.c.b, arg_3.b, false))) >= arg_0.b.c.x, vec2<i32>(~select(-4547i, 2147483647i, true), arg_0.b.c.x), true));
    return _wgslsmith_f_op_f32(1492f + _wgslsmith_f_op_f32(-1f));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(634f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1420f + -317f)));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f - 238f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(384f, 680f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(vec4<f32>(-970f, -1000f, -1228f, 968f))).x))))));
    var_0 = 370f;
    let var_1 = min(~(-vec2<i32>(~u_input.b.x, arg_1.c.x)), arg_1.a);
    var var_2 = Struct_3(select(vec2<bool>(arg_0.a.b, all(vec2<bool>(true, arg_1.b))), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(arg_0.b.b, true), !vec2<bool>(arg_1.b, false))));
    return Struct_3(var_2.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = func_5(Struct_2(Struct_1(u_input.b, arg_1.a.x, -(~vec2<i32>(u_input.a, u_input.b.x)), _wgslsmith_mult_u32(0u, u_input.e.x) < 1u), Struct_1(countOneBits(-u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -588f) >= _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(u_input.b, true, vec2<i32>(u_input.b.x, u_input.d), arg_1.a.x), Struct_1(u_input.b, arg_1.a.x, vec2<i32>(u_input.b.x, u_input.d), false), Struct_1(vec2<i32>(u_input.b.x, 0i), arg_1.a.x, u_input.b, true)), vec4<i32>(u_input.a, u_input.d, -45616i, u_input.b.x), Struct_3(arg_1.a), Struct_1(vec2<i32>(13788i, u_input.b.x), arg_1.a.x, vec2<i32>(u_input.d, 2147483647i), arg_1.a.x))), abs(vec2<i32>(u_input.a, u_input.d)) << (u_input.e.xx % vec2<u32>(32u)), any(vec3<bool>(true, arg_1.a.x, arg_1.a.x)) || (u_input.b.x > u_input.d)), Struct_1(-(vec2<i32>(-2147483647i, u_input.d) ^ u_input.b), any(select(vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(false, arg_1.a.x, false), arg_1.a.x)), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.d, -39550i), u_input.b), -1000f < _wgslsmith_div_f32(-1547f, arg_2))), Struct_1(u_input.b, true, firstLeadingBit(vec2<i32>(1i, _wgslsmith_mod_i32(-2147483647i, -3658i))), true == all(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false))));
    var var_1 = Struct_1(abs(u_input.b), true, ~u_input.b, var_0.a.x);
    var_1 = Struct_1(_wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 1i), u_input.b)) << (countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(12175u, 0u)), 27190u)) % vec2<u32>(32u)), var_0.a.x, u_input.b, func_5(Struct_2(Struct_1(var_1.a, var_1.d, vec2<i32>(var_1.c.x, var_1.a.x), arg_1.a.x), Struct_1(vec2<i32>(20877i, 32584i), var_1.d, u_input.b, var_1.d), Struct_1(vec2<i32>(u_input.b.x, 50842i), false, u_input.b, arg_1.a.x)), Struct_1(~var_1.a, false, var_1.a, !var_1.d)).a.x && any(select(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_1.b), vec4<bool>(false, var_0.a.x, true, false), var_1.b), !vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(true, false, true, var_0.a.x))));
    let var_2 = -273f;
    var var_3 = Struct_1(var_1.a, true, u_input.b, any(select(vec4<bool>(var_0.a.x, u_input.d < var_1.a.x, true, false), select(!vec4<bool>(var_1.b, arg_1.a.x, var_1.b, var_0.a.x), !vec4<bool>(var_0.a.x, false, var_1.b, var_1.d), var_0.a.x != var_1.b), vec4<bool>(select(arg_1.a.x, false, true), select(true, var_1.b, var_1.b), true, !arg_1.a.x))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -399f), -2159f))))), -331f));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = Struct_1(abs(countOneBits(vec2<i32>(-1i) * -arg_2.wx)), false, reverseBits(vec2<i32>(-14685i, -reverseBits(23609i))), all(vec4<bool>(true, true, true, true)));
    let var_1 = func_5(Struct_2(Struct_1(var_0.a, (var_0.d & true) == true, ~firstLeadingBit(vec2<i32>(arg_3.x, -38017i)), any(!vec4<bool>(var_0.d, true, true, true))), Struct_1(countOneBits(~var_0.a), abs(82396u) > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.c.x), vec2<u32>(33055u, 33112u)), firstTrailingBit(-u_input.b), var_0.b), Struct_1(abs(u_input.b), true, u_input.b, var_0.b)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, 1i << (1u % 32u)), ~(var_0.a << (vec2<u32>(u_input.c.x, 22397u) % vec2<u32>(32u)))), true, select(max(arg_2.wy, arg_2.xx), vec2<i32>(var_0.c.x, -4160i), var_0.b) >> (u_input.e.zz % vec2<u32>(32u)), var_0.d));
    var var_2 = Struct_1(vec2<i32>(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, arg_2.x, arg_3.x), arg_2.wxw)), arg_3.x), true, ~vec2<i32>(i32(-1i) * -1i, ~u_input.d & (i32(-1i) * -13765i)), any(var_1.a));
    let var_3 = (u_input.c.x & ~(~reverseBits(u_input.c.x))) & u_input.e.x;
    let var_4 = Struct_2(Struct_1(-countOneBits(-vec2<i32>(1i, arg_1.x)), var_3 > countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 3275u, var_3, 7438u), vec4<u32>(1u, 4294967295u, 1u, 0u))), _wgslsmith_mult_vec2_i32(vec2<i32>(54255i, 2147483647i), _wgslsmith_add_vec2_i32(countOneBits(var_2.a), _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.x, arg_2.x), arg_3))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(exp2(arg_0.x))) <= -1094f), Struct_1(vec2<i32>(-1i) * -countOneBits(u_input.b), false, min(vec2<i32>(arg_1.x >> (var_3 % 32u), _wgslsmith_dot_vec3_i32(arg_1.wyy, vec3<i32>(arg_2.x, u_input.b.x, arg_2.x))), arg_1.xw), true), Struct_1(~var_0.c, var_2.d, _wgslsmith_sub_vec2_i32(-reverseBits(vec2<i32>(4969i, 1i)), arg_3), false));
    return StorageBuffer(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(168f, 547f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1654f, -1091f), _wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.e.x), Struct_3(vec2<bool>(true, false)), 168f)), true)), 1000f), vec4<f32>(-422f, _wgslsmith_f_op_f32(f32(-1f) * -1899f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1539f + -925f))), _wgslsmith_f_op_f32(-1512f * _wgslsmith_f_op_f32(451f + -798f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-114f)))) <= 833f)), ~max(-vec4<i32>(-52788i, 30420i, u_input.d, u_input.b.x) >> (vec4<u32>(5091u, 4294967295u, 1u, 39378u) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 24678i, -2147483647i, u_input.b.x)), ~vec4<i32>(-u_input.b.x, u_input.a, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(20268i, u_input.d)) >> (~u_input.e.x % 32u), 0i), ~(-(vec2<i32>(u_input.d, 1i) ^ u_input.b)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(1i, u_input.d), u_input.b)), -vec2<i32>(23674i, 1i)));
}

