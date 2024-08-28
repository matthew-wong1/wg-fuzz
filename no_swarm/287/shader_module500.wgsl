struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32) -> vec2<u32> {
    var var_0 = true;
    let var_1 = Struct_3(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(3824u, min(u_input.a, 52622u), arg_1, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 26855u) >> ((vec4<u32>(0u, u_input.a, u_input.a, arg_1) << (vec4<u32>(11853u, u_input.a, u_input.a, 24060u) % vec4<u32>(32u))) % vec4<u32>(32u))), -584f, vec3<u32>(countOneBits(14761u), arg_1, ~22408u | (0u << (u_input.a % 32u)))));
    var_0 = false;
    var var_2 = ~abs(vec3<u32>(~_wgslsmith_dot_vec3_u32(var_1.a.a.zyw, vec3<u32>(4294967295u, u_input.a, 3714u)), ~65281u, u_input.a));
    var_0 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    return var_2.zz;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> i32 {
    var var_0 = Struct_5(Struct_3(Struct_2(abs(vec4<u32>(arg_2, arg_2, 20912u, 61181u)), -440f, _wgslsmith_clamp_vec3_u32(vec3<u32>(80191u, u_input.a, 0u) >> (vec3<u32>(4294967295u, 55473u, 192u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(arg_0.a.c, vec3<u32>(0u, arg_2, arg_0.a.c.x)), ~arg_0.a.a.www))));
    var var_1 = vec2<bool>(true, all(select(vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), true)));
    let var_2 = ~u_input.d.wzz;
    var var_3 = false;
    let var_4 = Struct_4(var_0.a.a.a.xwz, ~(-(arg_1 >> ((arg_2 | var_0.a.a.a.x) % 32u))), vec3<bool>(var_1.x, (var_2.x ^ 16562i) <= -var_2.x, 15135i >= var_2.x), select(select(u_input.d, _wgslsmith_add_vec4_i32(u_input.d, u_input.d), all(vec2<bool>(var_1.x, true))) & vec4<i32>(-21306i, var_2.x, -2147483647i, 25109i), -vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, var_2.x), var_2.x, _wgslsmith_div_i32(u_input.b, arg_1), -21990i), vec4<bool>(true, true, true, var_2.x >= ~2147483647i)), Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(arg_1, arg_1, 2147483647i, arg_1)), u_input.d.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, arg_1), -u_input.d)), select(select(vec3<i32>(-2147483647i, var_2.x, 1i), u_input.d.yzw, vec3<bool>(var_1.x, var_1.x, var_1.x)), -u_input.d.xzy, vec3<bool>(true, false, true)) | ~countOneBits(u_input.d.yzw), countOneBits(var_2.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, arg_1), var_2) & firstLeadingBit(var_2)));
    return firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, u_input.d.x, 2147483647i), reverseBits(vec3<i32>(2147483647i, -2892i, 0i)), ~vec3<i32>(-50331i, -1i, var_2.x)), vec3<i32>(-1i) * -vec3<i32>(u_input.c, u_input.d.x, var_4.b)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 20975i)), vec2<i32>(40785i, 1i))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = ~(~(~(~vec2<u32>(4294967295u, 0u)) & (~arg_0.c.zx >> (func_2(arg_0.b, u_input.a, -6100i) % vec2<u32>(32u)))));
    let var_1 = ~1i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.b)))), -1216f), _wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(_wgslsmith_div_f32(arg_3.x, -152f), _wgslsmith_f_op_f32(-arg_0.b)))));
    var var_3 = arg_2.a;
    var_3 = arg_0;
    return Struct_1(u_input.d.xy, -1i, _wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1 << (0u % 32u), var_1, 10084i)), vec3<i32>(-66507i, 47384i, 11438i)), func_3(arg_2, -1i, _wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_0.c.x, u_input.a), ~_wgslsmith_div_u32(var_3.a.x, u_input.a))), -max(~u_input.d.xyz, countOneBits(vec3<i32>(var_1, -36766i, 53698i))) | u_input.d.wyy);
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_4(vec3<u32>(_wgslsmith_div_u32(4294967295u, 19566u), ~_wgslsmith_dot_vec3_u32(arg_0.a & var_0.a, vec3<u32>(1u, u_input.a, var_0.a.x)), _wgslsmith_sub_u32(u_input.a, 50113u)), 0i, vec3<bool>(_wgslsmith_mult_u32(arg_0.a.x, var_0.a.x) > ~(~1u), !(!any(arg_0.c.yy)), !all(!vec2<bool>(arg_0.c.x, true))), firstLeadingBit(-countOneBits(vec4<i32>(1i, 1i, 1i, 1i))), func_1(Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0.a.x, 0u, 0u), vec4<u32>(u_input.a, 6248u, 0u, 40231u)), firstTrailingBit(vec4<u32>(0u, 0u, 4294967295u, 4294967295u))), _wgslsmith_f_op_f32(ceil(1584f)), vec3<u32>(arg_0.a.x, _wgslsmith_mod_u32(var_0.a.x, u_input.a), var_0.a.x >> (u_input.a % 32u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-335f, -464f)))))), Struct_3(Struct_2(abs(vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 61238u)), _wgslsmith_f_op_f32(-110f - -569f), ~arg_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -2100f), _wgslsmith_f_op_f32(f32(-1f) * -971f), -1000f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1114f, 693f), vec3<f32>(555f, -740f, -966f), arg_0.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-194f, 287f, -321f)))))));
    var_0 = Struct_4(~(~(~(~arg_0.a))), ~firstLeadingBit(countOneBits(-13664i)), vec3<bool>(any(!select(vec2<bool>(arg_0.c.x, arg_0.c.x), vec2<bool>(var_0.c.x, arg_0.c.x), arg_0.c.xz)), all(select(vec2<bool>(var_0.c.x, false), vec2<bool>(arg_0.c.x, var_0.c.x), arg_0.c.x)) & var_0.c.x, !any(arg_0.c)), select(_wgslsmith_mod_vec4_i32(~(-var_0.d), var_0.d), _wgslsmith_mod_vec4_i32(countOneBits(var_0.d), vec4<i32>(var_0.e.c.x, var_0.e.a.x, 1i, 30157i) | vec4<i32>(var_0.e.d, 2147483647i, 0i, 1i)), vec4<bool>(var_0.c.x, arg_0.a.x >= ~11825u, any(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x)) && true, arg_0.c.x)), Struct_1(reverseBits(vec2<i32>(0i, ~(-4612i))), countOneBits(-6674i), countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-13991i, arg_0.d.x, var_0.b), arg_0.e.c) & vec3<i32>(var_0.e.b, -2147483647i, u_input.d.x)), func_3(Struct_3(Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, u_input.a, arg_0.a.x), -1537f, vec3<u32>(1578u, arg_0.a.x, 1u))), select(i32(-1i) * -2147483647i, u_input.d.x | u_input.b, true), countOneBits(abs(73664u))), vec3<i32>(abs(-var_0.b), min(~(-24537i), firstTrailingBit(u_input.c)), ~2147483647i)));
    var_0 = Struct_4(arg_0.a, _wgslsmith_add_i32(arg_0.b & (_wgslsmith_add_i32(72564i, arg_0.b) >> (_wgslsmith_dot_vec2_u32(arg_0.a.zy, arg_0.a.zy) % 32u)), countOneBits(i32(-1i) * -46870i)), !vec3<bool>(false, all(vec3<bool>(var_0.c.x, var_0.c.x, arg_0.c.x)), var_0.c.x), abs(vec4<i32>(2147483647i, var_0.e.d, ~(-1i | u_input.b), _wgslsmith_sub_i32(18511i, 1i))), var_0.e);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(103f, 328f, -317f))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(-2621f)), _wgslsmith_f_op_f32(trunc(-1669f)), _wgslsmith_f_op_f32(144f * 1000f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(var_1.x))), var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x)), arg_0.c.x || all(!vec4<bool>(false, var_0.c.x, var_0.c.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 33356u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<u32>(u_input.a ^ 4294967295u, u_input.a, ~u_input.a), u_input.b, vec3<bool>(true, true, true), _wgslsmith_sub_vec4_i32(u_input.d, u_input.d), func_1(Struct_2(vec4<u32>(u_input.a, 16053u, u_input.a, u_input.a), 235f, vec3<u32>(15051u, 59028u, 1u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-862f, -499f), vec2<f32>(1184f, -2459f), vec2<bool>(true, false))), Struct_3(Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), -2004f, vec3<u32>(7633u, 4294967295u, u_input.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, -867f, -130f)))))) + _wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 436f)) * _wgslsmith_f_op_f32(f32(-1f) * -723f)))));
    var var_2 = vec3<i32>(u_input.b, u_input.d.x, -max(-select(36224i, u_input.b, false), -(u_input.c >> (u_input.a % 32u))));
    let var_3 = Struct_2(reverseBits(vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.a, u_input.a)), firstLeadingBit(~1u), abs(u_input.a), abs(~4228u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1453f, var_1)), _wgslsmith_f_op_f32(select(1930f, var_1, false)), all(vec3<bool>(true, true, false)))))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(94065u, 20370u, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(93585u, 0u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1178u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))), abs(~countOneBits(vec3<u32>(0u, 13928u, u_input.a)))));
    let var_4 = _wgslsmith_add_u32(var_3.a.x, 1u);
    var_0 = 4294967295u;
    var_2 = vec3<i32>(abs(-(~abs(var_2.x))), 0i, _wgslsmith_dot_vec4_i32(~u_input.d, _wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, ~u_input.b, u_input.c, var_2.x), u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(~vec2<u32>(49140u, var_3.c.x)), reverseBits(abs(vec2<u32>(u_input.a, var_4))), var_3.c.xy), ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_3.c.xy, var_3.a.zz), var_3.a.xz), select(firstTrailingBit(var_3.c.zz) >> (~vec2<u32>(61054u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(4294967295u, var_4), true)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), var_1), (vec4<u32>(35977u, firstLeadingBit(u_input.a), var_4, ~4294967295u) & (vec4<u32>(u_input.a, var_3.a.x, var_4, 4294967295u) ^ _wgslsmith_sub_vec4_u32(var_3.a, vec4<u32>(7282u, var_4, var_3.a.x, u_input.a)))) ^ select(~abs(vec4<u32>(var_3.c.x, 0u, 36653u, 0u)), firstLeadingBit(vec4<u32>(var_4, 4294967295u, 1u, var_4)), true), ~_wgslsmith_div_vec3_u32(~(~var_3.a.wzy), var_3.a.zyz));
}

