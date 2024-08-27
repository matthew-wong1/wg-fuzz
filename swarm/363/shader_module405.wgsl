struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(u_input.b.yxz);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec3<u32>(~arg_0.x, 13411u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, 0u, _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 1u)), ~vec4<u32>(u_input.b.x, 1u, 5590u, 0u))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(firstLeadingBit(1u), _wgslsmith_div_u32(arg_3.b.a.x, 0u), 19826u), arg_0.yzx)), arg_2, _wgslsmith_f_op_f32(-101f * -866f), arg_3.d);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.c * -242f)))))) < 834f;
    var_1 = Struct_2(Struct_1(var_1.b.a), Struct_1(abs(vec3<u32>(arg_2.a.x, var_0.a.x, u_input.b.x)) | arg_0.xyw), 1000f, !select(vec2<bool>(false, var_1.d.x), vec2<bool>(select(false, var_1.d.x, var_1.d.x), any(vec3<bool>(var_1.d.x, arg_3.d.x, arg_3.d.x))), !(!vec2<bool>(true, var_1.d.x))));
    let var_3 = _wgslsmith_f_op_f32(select(-1839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c + -229f) + _wgslsmith_f_op_f32(-arg_3.c))))), var_1.d.x));
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(abs(-182f));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.c - var_0.c), 1311f, _wgslsmith_div_f32(var_0.c, -662f), _wgslsmith_f_op_f32(select(var_0.c, arg_1.c, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1112f, -1663f, 591f, 1595f), vec4<f32>(arg_1.c, arg_0.c, 130f, arg_0.c)))), !(!arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(1292f, arg_0.c), -1041f, -893f, 1390f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1010f, -764f, var_0.c, 440f))))))));
    var_2 = vec4<f32>(-243f, _wgslsmith_f_op_f32(min(790f, 643f)), arg_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(301f * arg_0.c))))));
    return arg_0.a;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(~(~u_input.b.x), 1u, u_input.b.x)), func_4(func_3(u_input.b, u_input.c, func_2(_wgslsmith_f_op_f32(abs(-571f))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, u_input.b.x)), Struct_1(u_input.b.yxz), -488f, vec2<bool>(true, true))), func_3(_wgslsmith_mod_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)), max(vec4<i32>(-1i, -31975i, -20005i, u_input.a) & vec4<i32>(u_input.d.x, u_input.e.x, 1i, u_input.c.x), -vec4<i32>(u_input.c.x, -6458i, -9287i, u_input.c.x)), func_3(abs(u_input.b), select(vec4<i32>(24572i, u_input.e.x, u_input.e.x, u_input.d.x), vec4<i32>(-49110i, -13501i, 57073i, u_input.a), true), func_2(758f), func_3(vec4<u32>(1u, u_input.b.x, u_input.b.x, 42750u), vec4<i32>(2147483647i, 2147483647i, u_input.a, 4534i), Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.b.x)), Struct_2(Struct_1(u_input.b.zyy), Struct_1(vec3<u32>(4294967295u, 0u, u_input.b.x)), -243f, vec2<bool>(true, true)))).b, func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 4294967295u), u_input.b), vec4<i32>(-1i, u_input.d.x, u_input.c.x, -2147483647i), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(u_input.b.wwx), Struct_1(u_input.b.wzy), -1919f, vec2<bool>(false, true)))), 41577u, func_3(vec4<u32>(~0u, ~u_input.b.x, u_input.b.x, 1u), vec4<i32>(u_input.d.x, u_input.a, 1i, u_input.c.x), func_3(vec4<u32>(26467u, 8619u, u_input.b.x, 59359u), firstLeadingBit(u_input.c), func_3(vec4<u32>(u_input.b.x, 47806u, 4294967295u, 4294967295u), u_input.c, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), Struct_1(vec3<u32>(1u, 15233u, u_input.b.x)), -121f, vec2<bool>(false, true))).a, Struct_2(Struct_1(vec3<u32>(33602u, 14096u, 4294967295u)), Struct_1(u_input.b.wxz), 759f, vec2<bool>(true, false))).a, Struct_2(func_3(vec4<u32>(3972u, 4294967295u, u_input.b.x, u_input.b.x), u_input.c, Struct_1(u_input.b.yyy), Struct_2(Struct_1(u_input.b.ywz), Struct_1(vec3<u32>(u_input.b.x, 16179u, 1u)), 1558f, vec2<bool>(true, false))).a, func_2(-1028f), _wgslsmith_f_op_f32(2238f * -892f), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))).b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(983f)) * -1050f)))), !(!(!func_3(vec4<u32>(u_input.b.x, u_input.b.x, 16669u, u_input.b.x), vec4<i32>(-57838i, 7693i, 1i, u_input.c.x), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(u_input.b.wzw), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 637f, vec2<bool>(false, true))).d)));
    var_0 = Struct_2(func_3(vec4<u32>(1u, u_input.b.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, var_0.a.a.x), var_0.a.a), min(_wgslsmith_div_u32(var_0.b.a.x, 31603u), var_0.a.a.x), var_0.b.a.x >> (~u_input.b.x % 32u)), u_input.c, Struct_1(vec3<u32>(~u_input.b.x, firstLeadingBit(19579u), ~29267u)), func_3(~(~u_input.b), -(u_input.c << (u_input.b % vec4<u32>(32u))), Struct_1(~vec3<u32>(var_0.b.a.x, u_input.b.x, var_0.b.a.x)), func_3(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, var_0.a.a.x, u_input.b.x, 13776u)), vec4<i32>(u_input.c.x, u_input.c.x, 5376i, u_input.c.x), Struct_1(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), Struct_2(Struct_1(u_input.b.yxy), Struct_1(vec3<u32>(var_0.a.a.x, u_input.b.x, u_input.b.x)), 575f, vec2<bool>(var_0.d.x, var_0.d.x))))).a, func_3(select(~(~u_input.b), vec4<u32>(~96931u, _wgslsmith_clamp_u32(27880u, 68209u, 4294967295u), ~u_input.b.x, 1u >> (u_input.b.x % 32u)), !vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false)), u_input.c, var_0.b, Struct_2(var_0.a, Struct_1(var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2002f, var_0.c) + 609f), var_0.d)).a, _wgslsmith_f_op_f32(trunc(var_0.c)), vec2<bool>(var_0.d.x, all(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), true))));
    var_0 = func_3(u_input.b, vec4<i32>(16638i, -53671i, -33017i, u_input.e.x ^ _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 7742i, 0i, -2147483647i), vec4<i32>(u_input.d.x, u_input.e.x, 1i, u_input.c.x)), countOneBits(u_input.d.x))), Struct_1(~vec3<u32>(~u_input.b.x, 6383u, ~var_0.b.a.x)), func_3(u_input.b, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~u_input.c, abs(vec4<i32>(2147483647i, u_input.e.x, u_input.e.x, 2147483647i))), ~u_input.c), Struct_1(vec3<u32>(func_4(Struct_2(var_0.a, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), var_0.c, vec2<bool>(var_0.d.x, var_0.d.x)), Struct_2(var_0.b, var_0.a, 572f, vec2<bool>(var_0.d.x, true)), var_0.b.a.x, var_0.b).a.x, reverseBits(var_0.b.a.x), func_3(vec4<u32>(var_0.b.a.x, 12733u, u_input.b.x, var_0.a.a.x), vec4<i32>(u_input.d.x, 0i, -10412i, 20358i), Struct_1(vec3<u32>(var_0.b.a.x, 12729u, 18699u)), Struct_2(Struct_1(var_0.b.a), Struct_1(var_0.b.a), -1245f, vec2<bool>(var_0.d.x, false))).b.a.x)), func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_0.a.a.x, var_0.b.a.x, 43353u), abs(vec4<u32>(22011u, u_input.b.x, var_0.a.a.x, var_0.a.a.x)), select(vec4<u32>(u_input.b.x, var_0.a.a.x, u_input.b.x, 70308u), vec4<u32>(4294967295u, 4294967295u, var_0.b.a.x, u_input.b.x), var_0.d.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, u_input.c), vec4<i32>(-1i, u_input.c.x, u_input.e.x, u_input.c.x)), func_4(func_3(u_input.b, u_input.c, Struct_1(u_input.b.xxw), Struct_2(var_0.a, Struct_1(var_0.a.a), 829f, var_0.d)), Struct_2(Struct_1(vec3<u32>(14094u, var_0.b.a.x, var_0.a.a.x)), var_0.b, var_0.c, vec2<bool>(var_0.d.x, false)), 25584u, Struct_1(vec3<u32>(16693u, 4294967295u, u_input.b.x))), Struct_2(func_4(Struct_2(var_0.a, Struct_1(vec3<u32>(4294967295u, var_0.a.a.x, var_0.a.a.x)), var_0.c, var_0.d), Struct_2(Struct_1(var_0.a.a), Struct_1(var_0.a.a), -389f, vec2<bool>(false, var_0.d.x)), 37007u, var_0.a), func_4(Struct_2(var_0.b, var_0.a, var_0.c, vec2<bool>(var_0.d.x, true)), Struct_2(var_0.a, var_0.b, 749f, var_0.d), 8943u, Struct_1(vec3<u32>(var_0.a.a.x, var_0.b.a.x, 49881u))), _wgslsmith_div_f32(-823f, -1000f), !var_0.d))));
    let var_1 = ~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 70954u), _wgslsmith_div_vec3_u32(u_input.b.yzx, var_0.b.a >> (vec3<u32>(48871u, var_0.a.a.x, 12676u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.b.a.x, var_0.b.a.x, var_0.a.a.x) << (vec3<u32>(var_0.a.a.x, 3092u, 17411u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(var_0.a.a & var_0.b.a, ~var_0.a.a), select(var_0.b.a << (vec3<u32>(var_0.a.a.x, 1u, var_0.a.a.x) % vec3<u32>(32u)), var_0.a.a >> (var_0.b.a % vec3<u32>(32u)), !var_0.d.x)), !(!select(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, false, false), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))));
    var_0 = func_3(u_input.b, vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e.yx, ~u_input.e.xz), -select(vec2<i32>(21683i, 1i), u_input.d, false)), -1i, -countOneBits(max(u_input.a, u_input.a)), -9607i), func_3(u_input.b, reverseBits(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.e.x, 2147483647i, u_input.d.x, u_input.d.x)))), func_4(func_3(~u_input.b, _wgslsmith_div_vec4_i32(u_input.c, u_input.c), var_0.a, func_3(vec4<u32>(43321u, var_1.x, 45876u, var_1.x), vec4<i32>(-2147483647i, 0i, 45191i, u_input.c.x), var_0.b, Struct_2(var_0.a, Struct_1(vec3<u32>(52209u, var_1.x, 4294967295u)), 630f, vec2<bool>(false, false)))), func_3(max(vec4<u32>(var_0.a.a.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), -vec4<i32>(-7364i, u_input.a, u_input.d.x, u_input.e.x), Struct_1(var_0.b.a), Struct_2(var_0.a, var_0.b, var_0.c, var_0.d)), reverseBits(var_0.b.a.x), func_4(func_3(vec4<u32>(var_1.x, u_input.b.x, u_input.b.x, 12547u), vec4<i32>(14641i, -1i, -44903i, u_input.c.x), Struct_1(u_input.b.zwy), Struct_2(Struct_1(var_1), var_0.a, var_0.c, var_0.d)), Struct_2(Struct_1(vec3<u32>(var_0.a.a.x, var_1.x, var_0.a.a.x)), var_0.a, -1223f, vec2<bool>(false, true)), 4294967295u, Struct_1(vec3<u32>(var_1.x, var_0.b.a.x, 30264u)))), func_3(firstTrailingBit(vec4<u32>(u_input.b.x, 51198u, var_0.b.a.x, var_0.b.a.x) << (u_input.b % vec4<u32>(32u))), vec4<i32>(u_input.a | u_input.e.x, min(u_input.a, -1i), firstLeadingBit(u_input.c.x), u_input.c.x ^ 11861i), func_3(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(54582u, 7553u, 10569u, var_0.a.a.x)), abs(vec4<i32>(u_input.c.x, -34151i, 1861i, 4459i)), var_0.a, func_3(vec4<u32>(u_input.b.x, var_0.b.a.x, 87336u, 4294967295u), vec4<i32>(u_input.e.x, u_input.a, -19593i, u_input.e.x), var_0.a, Struct_2(var_0.b, var_0.a, var_0.c, vec2<bool>(false, var_0.d.x)))).a, Struct_2(func_2(var_0.c), func_3(u_input.b, u_input.c, Struct_1(var_0.b.a), Struct_2(Struct_1(var_0.a.a), Struct_1(vec3<u32>(var_0.a.a.x, 58049u, 4294967295u)), var_0.c, var_0.d)).a, -434f, vec2<bool>(false, false)))).b, Struct_2(Struct_1(func_3(u_input.b ^ vec4<u32>(0u, u_input.b.x, var_1.x, u_input.b.x), -vec4<i32>(-57247i, 7968i, 0i, u_input.c.x), var_0.b, func_3(vec4<u32>(25382u, 1u, var_0.a.a.x, var_0.b.a.x), vec4<i32>(u_input.e.x, u_input.d.x, -2147483647i, 2147483647i), Struct_1(vec3<u32>(var_1.x, 4294967295u, 4294967295u)), Struct_2(var_0.a, Struct_1(vec3<u32>(3056u, u_input.b.x, u_input.b.x)), var_0.c, vec2<bool>(true, var_0.d.x)))).b.a), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(22971u, var_1.x, 14458u), var_1) | _wgslsmith_div_vec3_u32(var_1, u_input.b.zxy)), _wgslsmith_f_op_f32(1336f + -1148f), vec2<bool>(var_0.d.x, all(vec2<bool>(true, true)))));
    return func_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b), u_input.b), ~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_0.b.a.x, u_input.b.x, var_0.b.a.x, 12368u)), _wgslsmith_mod_vec4_u32(select(max(vec4<u32>(var_0.b.a.x, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.b.x, var_1.x, 4294967295u, var_1.x)), u_input.b | vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 46380u), !var_0.d.x), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, 89447u), u_input.b)))), vec4<i32>(countOneBits(-min(-48882i, 2147483647i)), 45199i, _wgslsmith_sub_i32(u_input.a, 1i), -25528i), func_3(u_input.b, reverseBits(abs(u_input.c)), Struct_1(~(~var_1)), Struct_2(func_3(abs(u_input.b), u_input.c, Struct_1(u_input.b.wwz), Struct_2(var_0.b, var_0.b, var_0.c, vec2<bool>(var_0.d.x, false))).b, func_4(Struct_2(Struct_1(vec3<u32>(u_input.b.x, 6511u, var_1.x)), var_0.a, var_0.c, var_0.d), func_3(u_input.b, vec4<i32>(0i, u_input.c.x, -2147483647i, u_input.c.x), var_0.a, Struct_2(Struct_1(var_1), Struct_1(var_0.a.a), -585f, var_0.d)), var_1.x, func_3(vec4<u32>(21590u, 4294967295u, 0u, 1u), u_input.c, var_0.b, Struct_2(var_0.a, Struct_1(vec3<u32>(4294967295u, 91737u, u_input.b.x)), var_0.c, var_0.d)).b), 1792f, var_0.d)).a, Struct_2(func_4(func_3(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, var_0.a.a.x), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, var_0.a.a.x)), min(vec4<i32>(u_input.a, -2147483647i, u_input.d.x, u_input.e.x), vec4<i32>(-1i, u_input.a, u_input.e.x, u_input.d.x)), Struct_1(var_0.b.a), func_3(u_input.b, vec4<i32>(u_input.e.x, u_input.c.x, u_input.a, u_input.e.x), var_0.b, Struct_2(var_0.a, var_0.a, 218f, vec2<bool>(true, false)))), Struct_2(Struct_1(vec3<u32>(u_input.b.x, var_0.a.a.x, 0u)), var_0.b, var_0.c, !var_0.d), abs(0u), var_0.b), var_0.b, _wgslsmith_f_op_f32(ceil(883f)), var_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = ~var_0.a.a.x;
    var var_2 = 1356f;
    let var_3 = select(u_input.c.yx | (u_input.c.wx | abs(~vec2<i32>(u_input.c.x, u_input.d.x))), u_input.e.zy, select(var_0.d.x, true, 61091u < ~_wgslsmith_mult_u32(var_0.a.a.x, 80074u)));
    let var_4 = ~func_2(_wgslsmith_f_op_f32(1057f * _wgslsmith_f_op_f32(step(-225f, _wgslsmith_f_op_f32(floor(var_0.c)))))).a.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-932f * var_0.c))))));
}

