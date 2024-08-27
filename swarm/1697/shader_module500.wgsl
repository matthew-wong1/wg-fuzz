struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec2<u32>(4294967295u, select(~_wgslsmith_add_u32(6060u, abs(u_input.d)), 12442u & _wgslsmith_div_u32(u_input.d, 4111u << (u_input.a.x % 32u)), true));
    let var_1 = Struct_1(_wgslsmith_div_u32(62976u, abs(u_input.d)), max(_wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(-1i), -2147483647i, countOneBits(39613i)), vec3<i32>(-u_input.c.x, 2147483647i, min(0i, 35821i))), -vec3<i32>(~7052i, u_input.c.x, -8298i)), ~(~vec4<u32>(abs(var_0.x), 1u, 1u, u_input.a.x & var_0.x)), u_input.c.yyw);
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.b.yx, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(var_1.d.x, 0i), u_input.b.xw), vec2<i32>(-2147483647i, -53140i)));
    var_2 = ~(-abs(-3457i << (var_1.c.x % 32u))) >> (~0u % 32u);
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_1.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.b.x, 0i), vec3<i32>(-23030i, -123200i, u_input.b.x)), min(0i, 2147483647i)), u_input.b.zyz);
    return u_input.d;
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(func_3(1f), _wgslsmith_mod_vec3_i32(u_input.c.yzw, u_input.b.zwx >> (vec3<u32>(1u, ~1u, 0u) % vec3<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, select(u_input.d, u_input.a.x, false), u_input.a.x, ~u_input.a.x), ~vec4<u32>(0u, 1u, u_input.d, 46944u)), ~(vec4<u32>(u_input.a.x, u_input.d, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.d, u_input.d, u_input.a.x, u_input.d)) >> ((~vec4<u32>(1u, 4294967295u, u_input.a.x, 14937u) & ~vec4<u32>(u_input.d, u_input.d, 0u, u_input.d)) % vec4<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.c.x | (u_input.b.x >> (u_input.a.x % 32u))), ~u_input.b.x, 16382i));
    let var_1 = ~u_input.a.x ^ 3459u;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(800f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1638f, 232f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f - 1560f) + -145f) - _wgslsmith_f_op_f32(trunc(-1000f))), true));
    var var_4 = Struct_1(u_input.a.x, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(7454i, 31318i, u_input.b.x, var_0.d.x), vec4<i32>(16377i, -16605i, u_input.b.x, 0i)), u_input.c, vec4<i32>(-3900i, -1i, u_input.c.x, -25889i)), (vec4<i32>(-40820i, -2147483647i, u_input.c.x, u_input.b.x) | vec4<i32>(1i, var_0.d.x, -16141i, u_input.b.x)) & (u_input.c ^ u_input.c)), min(var_0.b.x, -var_0.d.x), _wgslsmith_mult_i32(var_0.b.x, -30521i)), abs(_wgslsmith_add_vec4_u32(firstLeadingBit(reverseBits(var_0.c)), vec4<u32>(u_input.a.x, ~38726u, 0u >> (var_0.a % 32u), 78436u))), ~var_0.d);
    return vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_sub_i32(var_0.d.x, 17707i) & select(var_0.b.x, var_4.b.x, true), i32(-1i) * -11323i, -43892i, select(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.d.x, 1i, 2367i), u_input.b), var_2))), var_4.d.x);
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec2<bool>(true, true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_3.a.c.x == u_input.d), true)), true);
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) + -1163f), _wgslsmith_f_op_f32(exp2(arg_3.c.x)))));
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(select(7324u, arg_2.a, true)), _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(73568u, arg_2.a), arg_2.a), _wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(94751u, arg_2.a, arg_3.a.c.x, arg_2.c.x), vec4<u32>(25421u, arg_2.a, arg_2.c.x, u_input.a.x)))), 25228u), arg_2.c.wxw ^ _wgslsmith_add_vec3_u32(select(arg_3.a.c.xxy, vec3<u32>(arg_3.a.c.x, u_input.a.x, arg_3.a.a) ^ arg_2.c.zyw, var_0.x || var_0.x), arg_2.c.zyx));
    var_2 = _wgslsmith_f_op_vec3_f32(-arg_3.c.yzx);
    return Struct_1(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1259f))))), vec3<i32>(arg_3.b.x, -2147483647i, arg_3.d), vec4<u32>(~(~u_input.a.x << (_wgslsmith_div_u32(arg_3.a.c.x, 39080u) % 32u)), 86575u, 73619u, ~abs(1u)), _wgslsmith_div_vec3_i32(min(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.ywx, arg_2.d, arg_3.a.b), vec3<i32>(1i, 46316i, var_1)), max(firstTrailingBit(vec3<i32>(-52910i, 36708i, arg_3.d)), ~vec3<i32>(0i, arg_1.x, u_input.c.x))), vec3<i32>(-2147483647i, abs(17244i), -1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    var var_0 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(false, true, false)))), false), vec2<bool>(all(vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec3<bool>(false, false, true)), true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), true);
    var var_1 = select(arg_1.c, vec4<u32>(38553u, 1u, ~((22669u & arg_1.a) | ~1u), arg_1.a), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x | var_0.x), select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(true, var_0.x, true, !var_0.x), select(vec4<bool>(false, false, false, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true), false)), all(!(!vec4<bool>(var_0.x, var_0.x, false, false)))));
    var var_2 = select(!select(select(!vec2<bool>(true, var_0.x), !vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true)), select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, false)), true | var_0.x), vec2<bool>(all(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, false))), _wgslsmith_mult_i32(-4897i, ~arg_1.b.x) != (-23555i >> (min(u_input.a.x, 8988u) % 32u))), var_0.x);
    return all(select(vec4<bool>(false, false, all(vec4<bool>(var_0.x, var_2.x, var_2.x, true)) | var_0.x, arg_1.b.x >= (u_input.c.x << (0u % 32u))), !select(select(vec4<bool>(true, var_0.x, true, var_2.x), vec4<bool>(false, var_0.x, var_0.x, false), true), select(vec4<bool>(var_0.x, var_0.x, var_2.x, var_0.x), vec4<bool>(true, var_2.x, true, var_0.x), var_0.x), any(vec4<bool>(false, true, false, var_2.x))), !(!(!vec4<bool>(true, var_0.x, false, var_0.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1383f, 1397f) + _wgslsmith_f_op_f32(max(-2541f, -433f)))), func_4(~_wgslsmith_mult_i32(u_input.c.x, u_input.b.x), func_2(), Struct_1(~u_input.a.x, abs(u_input.c.xxz), vec4<u32>(u_input.d, u_input.a.x, u_input.d, 0u), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.b.x, 35996i), vec3<i32>(u_input.c.x, -9670i, -14487i))), Struct_2(Struct_1(u_input.d, u_input.b.xwy, vec4<u32>(24979u, 2414u, u_input.d, 1u), vec3<i32>(-33091i, 1i, u_input.b.x)), reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, -1234i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(286f, 1229f, 931f, 475f))), _wgslsmith_add_i32(2147483647i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-710f, 1550f) * vec2<f32>(-402f, -1249f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1138f), vec2<f32>(-453f, -999f)))))) != true;
    var var_1 = any(vec2<bool>(var_0, !all(vec2<bool>(var_0, var_0))));
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-226f, _wgslsmith_f_op_f32(-747f + _wgslsmith_f_op_f32(f32(-1f) * -551f))), _wgslsmith_f_op_f32(max(1309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) + _wgslsmith_f_op_f32(step(689f, -266f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-523f, -507f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f - -454f)) + 1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-543f, 1232f, 787f, -247f)))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 462f));
    return Struct_2(Struct_1(~21622u, vec3<i32>(func_2().x, -2147483647i, u_input.b.x), firstTrailingBit(~(~vec4<u32>(19060u, 1u, 4294967295u, 12207u))), vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.c.x), ~u_input.c.x), ~(-13704i) >> (u_input.d % 32u), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), u_input.b.wyw, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f * _wgslsmith_f_op_f32(select(355f, 567f, var_0))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(403f - -669f), _wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + 1214f) * -452f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(1417f * 364f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)), true)), var_3), select(countOneBits(u_input.b.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.c.x, -35656i), -firstTrailingBit(vec3<i32>(21977i, u_input.b.x, u_input.b.x))), !(u_input.a.x == u_input.d) && var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = vec2<f32>(var_0.c.x, -1000f);
    var var_2 = var_0.a.c.wz;
    let var_3 = -604i;
    var var_4 = func_4(14157i, ~(~u_input.b.yw), func_4(12030i, u_input.c.ww, var_0.a, func_1()), func_1());
    let var_5 = ~(~var_4.d.x);
    let var_6 = vec2<i32>(_wgslsmith_sub_i32(1i, -2147483647i | u_input.c.x), _wgslsmith_sub_i32(firstLeadingBit(var_5), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_5, -39559i, 2147483647i, -16367i), vec4<i32>(var_3, -3982i, var_4.b.x, var_4.d.x)))) | (var_3 >> (max(var_2.x, ~4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_div_u32(u_input.d, 0u), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(~74059u, 38186u ^ u_input.d, 9535u))), -vec3<i32>(~0i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_5, var_0.a.d.x, u_input.c.x, var_3)), countOneBits(vec4<i32>(var_6.x, -19829i, var_3, var_4.d.x))), 2147483647i), ~(~(-(var_4.d.x | var_0.a.d.x))));
}

