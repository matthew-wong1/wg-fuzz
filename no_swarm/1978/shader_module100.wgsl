struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26>;

var<private> global1: f32 = 304f;

var<private> global2: array<Struct_4, 32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<i32>) -> bool {
    return !any(vec4<bool>(true, true, false, false));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = abs(-9490i);
    let var_1 = (~select(arg_1, 0i, true) | (countOneBits(-15042i) << (u_input.b.x % 32u))) ^ -firstLeadingBit(min(countOneBits(arg_1), -12692i));
    var var_2 = Struct_4(Struct_3(~(~4763i)), arg_3, select(!select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(false, false, true), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x)), select(vec3<bool>(arg_2.x | false, u_input.b.x > 1u, all(arg_2)), vec3<bool>(arg_2.x, true, false), all(vec2<bool>(arg_2.x, arg_2.x))), any(vec3<bool>(!arg_2.x, all(vec4<bool>(arg_2.x, true, true, false)), true))));
    var_2 = global2[_wgslsmith_index_u32(abs(43666u), 32u)];
    global2 = array<Struct_4, 32>();
    return reverseBits(vec4<u32>(u_input.b.x, ~u_input.b.x, u_input.b.x, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    var var_0 = -vec2<i32>(firstTrailingBit(arg_2.d.e << (arg_1.d.x % 32u)), _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(arg_0.e, -2147483647i))) & arg_2.c.yx;
    let var_1 = _wgslsmith_add_vec2_i32(select(u_input.a.wy, _wgslsmith_sub_vec2_i32(~min(u_input.a.yy, u_input.a.xw), select(_wgslsmith_div_vec2_i32(arg_2.c.zx, u_input.a.yw), vec2<i32>(var_0.x, arg_1.e), arg_0.b)), any(vec3<bool>(false, arg_1.b, 52502u == arg_0.d.x))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), firstLeadingBit(vec2<i32>(-2147483647i, 5529i))) & arg_2.c.xz);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1f, arg_0.a)))), arg_2.b.a), arg_2.a));
    var var_3 = 7071u;
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-979f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), -1684f))), arg_1.a, any(vec3<bool>(true, all(vec4<bool>(false, arg_1.b, arg_0.b, arg_2.b.b)), !arg_0.b))))));
    return arg_0;
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -505f), false, ~vec4<u32>(1u, 4294967295u, 4294967295u, select(1u, u_input.b.x, true)), reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xx, u_input.b.yx), ~vec2<u32>(42333u, 13290u))), 1i), Struct_1(_wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(-546f + -1662f)), true | select(func_2(u_input.a.xw, Struct_1(-773f, false, vec4<u32>(u_input.b.x, 0u, 21859u, 1u), global0[_wgslsmith_index_u32(1u, 26u)], u_input.e), vec3<bool>(false, false, false), u_input.a.zzy), false, all(vec2<bool>(false, false))), func_3(_wgslsmith_f_op_f32(trunc(1000f)), -61955i, vec2<bool>(true, true), Struct_3(1i)), vec2<u32>(~(u_input.b.x >> (u_input.b.x % 32u)), u_input.b.x), abs(max(12631i, -u_input.d))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1117f), Struct_1(_wgslsmith_f_op_f32(-672f - 1068f), all(vec3<bool>(false, false, false)), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.b.x), u_input.e), _wgslsmith_mult_vec3_i32(u_input.a.zyx, ~select(vec3<i32>(0i, -2147483647i, u_input.c), vec3<i32>(0i, 14829i, u_input.d), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_f32(-1266f, _wgslsmith_f_op_f32(-1439f - -563f)), func_2(~u_input.a.zz, Struct_1(595f, true, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 18189u), vec2<u32>(0u, u_input.b.x), -2147483647i), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), u_input.a.xyx), vec4<u32>(75658u, u_input.b.x, 4294967295u, 1u) ^ (vec4<u32>(u_input.b.x, 15797u, u_input.b.x, 0u) ^ vec4<u32>(4294967295u, u_input.b.x, 78231u, 1u)), _wgslsmith_mod_vec2_u32(reverseBits(u_input.b.zy), ~u_input.b.xz), -u_input.e)), u_input.a.x);
    global0 = array<vec2<u32>, 26>();
    global0 = array<vec2<u32>, 26>();
    var var_1 = Struct_2(var_0.a, func_4(Struct_1(_wgslsmith_f_op_f32(1618f - _wgslsmith_f_op_f32(-1119f * -528f)), !any(vec4<bool>(false, var_0.b, true, var_0.b)), abs(_wgslsmith_mod_vec4_u32(var_0.c, var_0.c)), select(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.d.x), vec2<u32>(1u, var_0.d.x)), vec2<u32>(0u, var_0.c.x), u_input.e != -4905i), abs(0i)), func_4(func_4(var_0, var_0, Struct_2(var_0.a, var_0, vec3<i32>(var_0.e, -702i, -2147483647i), Struct_1(335f, var_0.b, vec4<u32>(0u, 0u, u_input.b.x, var_0.d.x), vec2<u32>(u_input.b.x, var_0.d.x), 12217i)), reverseBits(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -769f), true, ~vec4<u32>(u_input.b.x, 4294967295u, var_0.c.x, u_input.b.x), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.d.x, 26u)]), abs(u_input.c)), Struct_2(var_0.a, var_0, vec3<i32>(u_input.a.x, -1i, u_input.d), var_0), -1795i), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * -1046f))), Struct_1(_wgslsmith_f_op_f32(-1550f + -961f), !var_0.b, var_0.c, vec2<u32>(27328u, u_input.b.x), -1i), ~u_input.a.yxz, func_4(Struct_1(var_0.a, false, vec4<u32>(1u, 32608u, 31488u, u_input.b.x), vec2<u32>(var_0.c.x, 57195u), u_input.c), var_0, Struct_2(-744f, var_0, u_input.a.yxz, var_0), var_0.e)), 1i), -_wgslsmith_add_vec3_i32(-(~vec3<i32>(4919i, -1i, u_input.e)), ~(-u_input.a.yxx)), Struct_1(-2095f, !all(vec2<bool>(true, true)), max(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 28938u, var_0.d.x, 4294967295u), var_0.c), vec4<u32>(35201u, 16923u, 68455u, u_input.b.x)), vec4<u32>(1u, u_input.b.x, u_input.b.x, var_0.d.x & var_0.d.x)), _wgslsmith_mult_vec2_u32(~vec2<u32>(69137u, 50892u), ~_wgslsmith_div_vec2_u32(u_input.b.xz, global0[_wgslsmith_index_u32(var_0.d.x, 26u)])), -7723i));
    var_1 = Struct_2(var_1.a, func_4(var_0, func_4(func_4(Struct_1(-839f, var_0.b, vec4<u32>(28547u, 1u, var_0.c.x, var_1.b.d.x), vec2<u32>(u_input.b.x, 17642u), 1i), func_4(Struct_1(1000f, var_0.b, var_1.b.c, global0[_wgslsmith_index_u32(var_1.d.c.x, 26u)], var_0.e), var_0, Struct_2(-2361f, Struct_1(var_0.a, false, var_0.c, var_1.b.d, -43903i), var_1.c, var_0), u_input.e), Struct_2(var_1.d.a, var_0, u_input.a.wzw, Struct_1(var_1.b.a, var_0.b, vec4<u32>(var_1.b.d.x, 27611u, var_1.d.d.x, 20337u), u_input.b.xx, 0i)), var_0.e), var_0, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1039f), var_1.d, vec3<i32>(-2147483647i, 27545i, var_1.c.x) | vec3<i32>(26280i, u_input.d, var_0.e), Struct_1(-1000f, var_0.b, var_0.c, var_0.d, var_1.d.e)), _wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(82589i, 2812i, 51672i))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2499f + -378f))), func_4(Struct_1(var_0.a, false, var_0.c, u_input.b.xz, u_input.e), func_4(Struct_1(-552f, var_1.d.b, var_0.c, vec2<u32>(4294967295u, var_0.c.x), 16107i), Struct_1(-750f, var_0.b, var_0.c, vec2<u32>(0u, u_input.b.x), var_0.e), Struct_2(-896f, var_1.d, var_1.c, var_0), var_0.e), Struct_2(var_0.a, Struct_1(1199f, var_0.b, var_0.c, var_1.b.d, var_1.b.e), vec3<i32>(29203i, 0i, -31002i), Struct_1(2013f, var_0.b, vec4<u32>(var_0.c.x, var_0.d.x, 1u, var_1.b.c.x), var_0.d, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, 3869i, 2147483647i), vec3<i32>(-2147483647i, 63872i, var_1.d.e))), select(u_input.a.xwx, vec3<i32>(58835i, -13012i, var_1.d.e), var_0.b), Struct_1(-203f, true, var_0.c, select(vec2<u32>(var_1.b.d.x, var_0.d.x), vec2<u32>(u_input.b.x, var_1.d.d.x), var_0.b), 2147483647i << (0u % 32u))), func_4(func_4(Struct_1(var_0.a, var_1.d.b, var_0.c, vec2<u32>(var_0.d.x, 4294967295u), -1i), func_4(var_1.d, Struct_1(var_0.a, var_0.b, var_0.c, global0[_wgslsmith_index_u32(var_0.c.x, 26u)], var_1.b.e), Struct_2(-411f, Struct_1(196f, false, var_1.d.c, u_input.b.yz, var_1.b.e), vec3<i32>(0i, var_1.d.e, var_1.d.e), Struct_1(var_0.a, var_1.d.b, vec4<u32>(var_0.d.x, var_1.b.c.x, 36625u, var_0.c.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.c)), var_0.e), Struct_2(1000f, Struct_1(-1146f, var_1.d.b, var_0.c, u_input.b.zz, 58387i), vec3<i32>(-2147483647i, var_0.e, u_input.a.x), var_1.b), abs(1i)), Struct_1(_wgslsmith_f_op_f32(ceil(var_1.b.a)), true, vec4<u32>(var_0.c.x, u_input.b.x, u_input.b.x, var_0.d.x), global0[_wgslsmith_index_u32(var_0.c.x, 26u)], _wgslsmith_add_i32(-32243i, 1i)), Struct_2(_wgslsmith_f_op_f32(-var_0.a), var_0, var_1.c, Struct_1(var_1.a, false, vec4<u32>(72761u, var_1.b.c.x, var_0.d.x, u_input.b.x), vec2<u32>(var_1.b.d.x, var_0.d.x), var_0.e)), 29636i).e), select(reverseBits(u_input.a.yxw), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, -13904i), -_wgslsmith_clamp_i32(-2147483647i, -4626i, var_0.e), select(u_input.c, abs(1i), var_1.b.b)), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -320f)), !var_0.b, ~(~max(var_1.b.c, vec4<u32>(15015u, var_0.d.x, u_input.b.x, var_0.c.x))), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(1u, var_0.d.x, 113889u)), 4294967295u), abs(_wgslsmith_add_i32(var_0.e, -40265i))));
    return Struct_4(Struct_3(((-24893i << (1u % 32u)) ^ _wgslsmith_mult_i32(u_input.e, var_1.d.e)) ^ func_4(var_0, func_4(var_0, Struct_1(914f, var_1.d.b, var_1.d.c, vec2<u32>(4294967295u, u_input.b.x), var_0.e), Struct_2(1000f, var_0, vec3<i32>(1i, -2147483647i, var_0.e), Struct_1(-1742f, var_1.d.b, var_1.b.c, vec2<u32>(37083u, u_input.b.x), u_input.e)), u_input.e), Struct_2(var_0.a, var_1.d, vec3<i32>(var_0.e, -2147483647i, var_0.e), var_0), var_0.e).e), Struct_3(0i), select(!(!vec3<bool>(true, var_0.b, true)), vec3<bool>(false || !var_1.d.b, false, false), vec3<bool>(_wgslsmith_add_u32(0u, 12843u) != _wgslsmith_add_u32(var_0.c.x, 4294967295u), var_1.b.b, var_0.b)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_4, 32>();
    var var_0 = global2[_wgslsmith_index_u32(arg_2.c.x, 32u)];
    var_0 = Struct_4(arg_1.a, Struct_3(-arg_2.e), select(vec3<bool>(true, arg_2.c.x >= ~arg_2.c.x, !(-2147483647i >= u_input.e)), vec3<bool>(false, any(arg_3.c), (-502f >= arg_2.a) == true), all(vec2<bool>(arg_1.c.x, arg_1.c.x))));
    let var_1 = arg_1.c;
    let var_2 = !(!vec4<bool>(arg_3.c.x, true, true, false));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), 300f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(func_5(-(u_input.a.yyx << ((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(0u, u_input.b.x, 1u)) & u_input.b) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(countOneBits(~38080u), 32u)], Struct_1(1f, select(u_input.c, 19632i, true) == 0i, vec4<u32>(41961u, ~28733u, u_input.b.x, 51604u), ~u_input.b.yx, u_input.d), func_1()));
    let var_0 = Struct_2(-1000f, func_4(func_4(func_4(Struct_1(-1000f, false, vec4<u32>(90711u, 41455u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -35784i), func_4(Struct_1(-1091f, true, vec4<u32>(0u, 29608u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 26u)], 30165i), Struct_1(-743f, false, vec4<u32>(16846u, 36741u, u_input.b.x, 0u), vec2<u32>(28284u, 0u), -43293i), Struct_2(240f, Struct_1(-332f, true, vec4<u32>(1u, 72794u, u_input.b.x, 1u), u_input.b.xx, u_input.c), u_input.a.xzw, Struct_1(664f, true, vec4<u32>(u_input.b.x, u_input.b.x, 43795u, 44863u), vec2<u32>(4294967295u, u_input.b.x), 22381i)), u_input.a.x), Struct_2(-435f, Struct_1(-1231f, true, vec4<u32>(67301u, 102494u, u_input.b.x, 1u), vec2<u32>(u_input.b.x, u_input.b.x), -1i), u_input.a.yxz, Struct_1(1694f, false, vec4<u32>(1u, 55161u, 49528u, 27824u), vec2<u32>(u_input.b.x, 4294967295u), u_input.d)), u_input.e), Struct_1(_wgslsmith_f_op_f32(-2245f * 1102f), true, _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 12449u)), vec2<u32>(109426u, u_input.b.x) ^ vec2<u32>(u_input.b.x, 6090u), 1i), Struct_2(_wgslsmith_div_f32(607f, 348f), Struct_1(-252f, true, vec4<u32>(39422u, 71236u, 39324u, 33804u), u_input.b.xz, 4175i), u_input.a.yzy, func_4(Struct_1(-1671f, false, vec4<u32>(0u, 33215u, u_input.b.x, u_input.b.x), vec2<u32>(42372u, u_input.b.x), u_input.e), Struct_1(-1000f, true, vec4<u32>(u_input.b.x, 1u, 4294967295u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.a.x), Struct_2(816f, Struct_1(-821f, true, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -6388i), u_input.a.xzz, Struct_1(1135f, false, vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.e)), -1i)), ~abs(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(1391f + _wgslsmith_f_op_f32(f32(-1f) * -112f)), true, ~vec4<u32>(41326u, 32363u, 0u, 38577u) << (vec4<u32>(15568u, 4294967295u, 101306u, u_input.b.x) % vec4<u32>(32u)), select(u_input.b.xx, abs(u_input.b.yy), vec2<bool>(true, false)), u_input.c), Struct_2(-2291f, Struct_1(_wgslsmith_f_op_f32(max(-1206f, -364f)), true, ~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), ~u_input.b.yy, -43639i), u_input.a.yyz, func_4(Struct_1(933f, false, vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), vec2<u32>(80077u, 31191u), -52318i), Struct_1(1006f, true, vec4<u32>(u_input.b.x, 38351u, u_input.b.x, u_input.b.x), vec2<u32>(12144u, u_input.b.x), u_input.d), Struct_2(163f, Struct_1(-1599f, false, vec4<u32>(u_input.b.x, 29578u, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 1i), vec3<i32>(3430i, u_input.a.x, u_input.c), Struct_1(1416f, true, vec4<u32>(78216u, 19370u, 0u, 4294967295u), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], 2220i)), ~13364i)), u_input.e), vec3<i32>(-func_4(Struct_1(-1318f, true, vec4<u32>(0u, 50257u, 1u, 0u), u_input.b.yx, 20275i), func_4(Struct_1(380f, false, vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u), vec2<u32>(1941u, u_input.b.x), 14753i), Struct_1(-967f, true, vec4<u32>(0u, 4294967295u, u_input.b.x, 48817u), global0[_wgslsmith_index_u32(4201u, 26u)], u_input.d), Struct_2(-323f, Struct_1(1228f, true, vec4<u32>(24840u, u_input.b.x, 39676u, 27528u), global0[_wgslsmith_index_u32(80766u, 26u)], 22672i), vec3<i32>(-2147483647i, -27106i, 1i), Struct_1(617f, false, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 11633u), vec2<u32>(u_input.b.x, u_input.b.x), u_input.c)), 1i), Struct_2(-1610f, Struct_1(-826f, true, vec4<u32>(u_input.b.x, u_input.b.x, 1u, 74297u), vec2<u32>(u_input.b.x, u_input.b.x), 0i), u_input.a.wxz, Struct_1(-201f, true, vec4<u32>(u_input.b.x, 7601u, u_input.b.x, 4294967295u), global0[_wgslsmith_index_u32(u_input.b.x, 26u)], u_input.d)), ~0i).e, -2147483647i, func_1().b.a), Struct_1(_wgslsmith_f_op_f32(-349f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -887f))), true, vec4<u32>(abs(_wgslsmith_div_u32(u_input.b.x, 0u)), ~u_input.b.x, 1u, ~(~u_input.b.x)), vec2<u32>(countOneBits(u_input.b.x) >> (u_input.b.x % 32u), ~_wgslsmith_div_u32(0u, u_input.b.x)), -8381i));
    var var_1 = abs(abs(u_input.a));
    var var_2 = func_4(var_0.b, var_0.b, var_0, _wgslsmith_dot_vec4_i32(u_input.a, (abs(vec4<i32>(u_input.d, var_0.c.x, var_0.b.e, 11928i)) ^ vec4<i32>(var_1.x, u_input.a.x, -1i, -14707i)) & vec4<i32>(-2147483647i, _wgslsmith_mult_i32(44571i, 41040i), 17907i, var_0.b.e))).e;
    var_1 = _wgslsmith_sub_vec4_i32(abs(-(u_input.a | countOneBits(u_input.a))), vec4<i32>(~var_0.d.e, -(~var_0.d.e), 44238i, _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(2147483647i), -(2147483647i | var_1.x))));
    var var_3 = -14401i;
    global1 = 1674f;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(125f + 2593f) + _wgslsmith_f_op_f32(var_0.d.a * _wgslsmith_f_op_f32(var_0.b.a - var_0.a)))) + -168f);
    let x = u_input.a;
    s_output = StorageBuffer((global0[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 26u)] & u_input.b.xz) | u_input.b.zy, -abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, var_1.x, -40867i, u_input.e), -vec4<i32>(-51369i, u_input.a.x, var_0.d.e, -29666i))), max(~83678u, 0u));
}

