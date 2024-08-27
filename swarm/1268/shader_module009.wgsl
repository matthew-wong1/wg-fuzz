struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(0i, 0i, 1i, -38447i, 68021i, -1i, 22148i, 17411i, -1i, -1i, -1i, 2147483647i, 67547i, 1i, 24550i, 1i, 21489i, -1i);

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, false, false, true, false, false, false, true, true, false, false, true, false, true, false, true, true, false, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = -1205f;
    let var_1 = u_input.a.xz;
    var var_2 = true;
    var var_3 = Struct_3((vec3<i32>(firstTrailingBit(2510i), var_1.x, u_input.d) | u_input.a) >> (vec3<u32>(~firstTrailingBit(u_input.e), ~u_input.b.x, 100198u) % vec3<u32>(32u)), abs(_wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1i, -10085i)), select(reverseBits(u_input.c), vec4<i32>(u_input.d, global0[_wgslsmith_index_u32(22584u, 18u)], u_input.c.x, u_input.a.x), true))), u_input.e);
    let var_4 = Struct_2(-vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(reverseBits(var_3.c), 18u)], i32(-1i) * -1i), vec3<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 2926u), min(u_input.b, vec4<u32>(var_3.c, u_input.b.x, 20897u, 64614u))), 18u)], select(-(~var_1.x), 0i, true), var_1.x), max(42039i, -_wgslsmith_div_i32(u_input.a.x, -2147483647i)), vec2<u32>(var_3.c, ~firstTrailingBit(1u)));
    return reverseBits(var_3.b);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = (u_input.c & _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-10758i, global0[_wgslsmith_index_u32(12345u, 18u)], -62438i, global0[_wgslsmith_index_u32(0u, 18u)]))), countOneBits(func_3()))) ^ vec4<i32>(~global0[_wgslsmith_index_u32(~select(u_input.e, 38070u, arg_2.x), 18u)], abs(_wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(60318i, 2147483647i))), -6724i, firstTrailingBit(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(var_0.x, 18u)])) | u_input.d);
    let var_2 = Struct_3(-vec3<i32>(-4427i, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.d, var_1.x))), abs(var_1.x) & _wgslsmith_mult_i32(30880i, 37311i)), min(u_input.c << (~firstTrailingBit(vec4<u32>(4294967295u, u_input.e, var_0.x, arg_0.x)) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, -44546i, -1i, 9686i), u_input.c))), 51896u);
    let var_3 = u_input.a & (var_2.b.wwz >> (~var_0.zwx % vec3<u32>(32u)));
    let var_4 = var_2;
    return Struct_2(_wgslsmith_add_vec3_i32(var_2.a, -vec3<i32>(i32(-1i) * -2147483647i, var_2.a.x, -var_2.b.x)), (vec3<i32>(-1i << (var_2.c % 32u), -2147483647i, i32(-1i) * -10581i) << ((abs(arg_0.yww) ^ ~arg_0.yyy) % vec3<u32>(32u))) & var_4.a, ~(~u_input.c.x), countOneBits(vec2<u32>(reverseBits(abs(var_4.c)), abs(56518u))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = abs(abs(arg_0.c));
    global1 = array<bool, 23>();
    let var_1 = arg_2;
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) * _wgslsmith_f_op_f32(f32(-1f) * -881f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(383f, 1000f))), ~(~u_input.b.yxw) & (max(u_input.b.xxz, u_input.b.xzx) & (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) << (u_input.b.xxx % vec3<u32>(32u))))), var_1.d.x, !select(vec4<bool>(true, any(vec2<bool>(false, true)), false, true), select(!vec4<bool>(false, arg_3, true, global1[_wgslsmith_index_u32(u_input.e, 23u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(38352u, 23u)], false, false), arg_3), any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], arg_3, global1[_wgslsmith_index_u32(u_input.e, 23u)], true)) && (u_input.b.x <= 27105u)));
    var var_3 = !(min(72259i, arg_2.a.x) == arg_2.b.x);
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 1i)), -vec2<i32>(var_1.a.x, global0[_wgslsmith_index_u32(arg_0.c, 18u)]));
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> vec2<f32> {
    var var_0 = Struct_4(Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 2147483647i, global0[_wgslsmith_index_u32(64489u, 18u)]), max(vec3<i32>(2035i, global0[_wgslsmith_index_u32(u_input.e, 18u)], -23390i), arg_1)) ^ vec3<i32>(u_input.c.x >> (62615u % 32u), global0[_wgslsmith_index_u32(~1u, 18u)], 2147483647i), u_input.c, _wgslsmith_sub_u32(_wgslsmith_div_u32(func_2(u_input.b, vec2<f32>(-292f, 228f), vec4<bool>(false, true, false, arg_2)).d.x, u_input.e), 8874u)), select(vec4<bool>(!arg_2, true, !(global1[_wgslsmith_index_u32(38263u, 23u)] && true), any(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), vec4<bool>(true, true, false, _wgslsmith_f_op_f32(1138f + 432f) > _wgslsmith_f_op_f32(round(1231f))), vec4<bool>(true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)])), true || !global1[_wgslsmith_index_u32(1u, 23u)], all(vec4<bool>(true, true, true, true)))), ~_wgslsmith_div_u32(u_input.e, u_input.b.x), (~1i << (reverseBits(4294967295u ^ u_input.e) % 32u)) >> (_wgslsmith_clamp_u32(u_input.e, 4294967295u, u_input.e) % 32u));
    var var_1 = _wgslsmith_div_f32(-676f, -1457f);
    var var_2 = select(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a.c, u_input.e)), ~u_input.b.zy), u_input.b.zw << (_wgslsmith_add_vec2_u32(max(u_input.b.wz, u_input.b.yw), ~vec2<u32>(var_0.a.c, 6348u)) % vec2<u32>(32u))), u_input.b.wy, var_0.b.zx);
    var_2 = select(~(~_wgslsmith_sub_vec2_u32(u_input.b.zy, u_input.b.xw) >> (_wgslsmith_div_vec2_u32(min(u_input.b.xy, vec2<u32>(0u, var_0.c)), vec2<u32>(21580u, 100371u)) % vec2<u32>(32u))), u_input.b.xy, vec2<bool>(arg_2, false));
    let var_3 = Struct_4(Struct_3(vec3<i32>(~(~u_input.d), 1i, _wgslsmith_mod_i32(~19258i, firstLeadingBit(global0[_wgslsmith_index_u32(1u, 18u)]))), ~vec4<i32>(12405i, var_0.d, -29839i, 18381i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_1.x, u_input.d, -1i) << (vec4<u32>(var_0.c, 1u, u_input.b.x, 3200u) % vec4<u32>(32u)), ~u_input.c, vec4<i32>(-1i, 21028i, arg_0, arg_0)), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), var_0.c)), !(!select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)], true, var_0.b.x), var_0.b, vec4<bool>(arg_2, false, true, true)), var_0.b, global1[_wgslsmith_index_u32(~6366u, 23u)])), 2776u, 4882i);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1310f, _wgslsmith_f_op_f32(f32(-1f) * -327f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(285f, 852f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-778f)) + _wgslsmith_f_op_f32(select(-1000f, 243f, false))), true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, -657f))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-2297f)), 419f)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(240f, -1254f)), -584f)));
}

fn func_1() -> vec4<f32> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(func_4(Struct_3(abs(u_input.c.yxx) >> (u_input.b.xww % vec3<u32>(32u)), u_input.c, max(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 6642u, u_input.b.x, u_input.b.x), u_input.b))), u_input.b.zw, func_2(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1304f, 454f), vec2<f32>(-3756f, -973f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(449f, -330f) - vec2<f32>(1000f, -717f))), !select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], true, true, global1[_wgslsmith_index_u32(u_input.e, 23u)]), false)), !global1[_wgslsmith_index_u32(~u_input.e, 23u)]), vec3<i32>(~(-1i), -_wgslsmith_dot_vec2_i32(u_input.a.xz ^ vec2<i32>(u_input.c.x, 0i), ~vec2<i32>(1i, -2147483647i)), u_input.c.x), all(vec2<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), false)), true))));
    let var_2 = ~vec2<u32>(1u, ~u_input.b.x);
    var var_3 = ~u_input.b.zzy;
    let var_4 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.e), 38362u), func_2(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, var_3.x, 20140u, var_3.x)), ~vec4<u32>(u_input.e, 18816u, 1u, 1u)), vec2<f32>(-539f, var_1.x), vec4<bool>(global1[_wgslsmith_index_u32(11574u, 23u)] | false, all(vec4<bool>(global1[_wgslsmith_index_u32(var_2.x, 23u)], false, false, false)), global1[_wgslsmith_index_u32(88343u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)])).d));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-596f, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 585f, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1000f, var_1.x), -396f, var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1399f, var_1.x, -826f, var_1.x))), !any(vec4<bool>(true, global1[_wgslsmith_index_u32(63861u, 23u)], true, global1[_wgslsmith_index_u32(var_4, 23u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_1());
    global0 = array<i32, 18>();
    global1 = array<bool, 23>();
    var var_1 = vec2<bool>(_wgslsmith_add_u32(select(u_input.e, _wgslsmith_sub_u32(52020u, u_input.e), global1[_wgslsmith_index_u32(1u, 23u)]), max(min(u_input.e, u_input.e), 1u)) >= 58575u, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]);
    var_1 = !select(select(!(!vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(u_input.e, 23u)])), select(vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(1u, 23u)]), !vec2<bool>(var_1.x, true), !vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 23u)])), false), !vec2<bool>(false, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], global1[_wgslsmith_index_u32(u_input.e, 23u)], true))), all(select(!vec3<bool>(true, var_1.x, var_1.x), !vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(true, false, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(-169f)), 21664u);
}

