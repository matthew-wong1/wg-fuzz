struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = Struct_5(vec4<u32>(arg_0.x, ~(36998u << (arg_0.x % 32u)) ^ arg_0.x, ~firstLeadingBit(arg_0.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.zx), ~arg_0.yz) ^ ~(~arg_0.x)), Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(-13755i, i32(-1i) * -5504i, ~u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zz, arg_1.xz) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.x, 906f)))), 7071u, 2139f), vec3<i32>(-42490i, u_input.a, 1i), firstTrailingBit(max(arg_0, min(arg_0, arg_0))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~14718i, -u_input.a), u_input.b.x & -u_input.a)), Struct_4(Struct_2(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), Struct_1(u_input.b, arg_1.zy, _wgslsmith_add_u32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1781f)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, u_input.b), u_input.b), arg_0, ~u_input.a), reverseBits(vec4<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(1u, 1u, 28602u, arg_0.x)), arg_0.x, arg_0.x)), Struct_3(vec4<bool>(true, true, true, true)), Struct_3(vec4<bool>(true, true, true, true)), -1151f), arg_1.x);
    let var_1 = var_0.b;
    var var_2 = (vec2<i32>(-1i) * -(~(~vec2<i32>(-1i, u_input.a)))) | vec2<i32>(var_0.c.a.e, 2189i);
    var_2 = var_1.c.xx;
    var_2 = var_1.c.yx;
    return ~vec4<u32>(~_wgslsmith_mod_u32(arg_0.x, ~var_1.b.c), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_1.d, var_1.d), arg_0 ^ var_1.d), vec4<u32>(0u, _wgslsmith_mod_u32(var_0.c.a.b.c, var_0.b.d.x), arg_0.x, arg_0.x | var_1.d.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(var_0.c.b, vec4<u32>(29693u, var_0.b.d.x, 719u, 58891u)), 75781u), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.x, var_0.c.b.x), arg_0.x)), ~(_wgslsmith_clamp_u32(var_0.b.b.c, 4294967295u, 53671u) << (~arg_0.x % 32u)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_4 {
    var var_0 = ~((_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c, arg_2.c, 0u, arg_2.c), vec4<u32>(0u, 4355u, 0u, 33319u)), firstLeadingBit(vec4<u32>(arg_2.c, 0u, 0u, arg_2.c)), func_3(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec3<f32>(arg_0, -505f, arg_0))) | ((vec4<u32>(arg_2.c, 0u, 9134u, arg_2.c) << (vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c) % vec4<u32>(32u))) | vec4<u32>(arg_2.c, arg_2.c, 18445u, arg_2.c))) << ((~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, arg_2.c, arg_2.c), vec4<u32>(0u, 5983u, 0u, arg_2.c)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(174589u, 1053u, arg_2.c, 0u), vec4<u32>(30178u, 113189u, 39541u, 28630u)) << (vec4<u32>(0u, 47552u, 56921u, arg_2.c) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var_0 = vec4<u32>(var_0.x, firstTrailingBit(0u), var_0.x, ~18483u);
    let var_1 = Struct_5(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.x, 1u, 0u), ~vec4<u32>(arg_2.c, var_0.x, var_0.x, 11516u))) | vec4<u32>(arg_2.c, arg_2.c, ~(~4201u), _wgslsmith_clamp_u32(~arg_2.c, arg_2.c, ~var_0.x)), Struct_2(select(arg_1.xy, select(arg_1.xw, select(vec2<bool>(true, false), arg_1.zw, arg_1.x), select(arg_1.yy, vec2<bool>(true, arg_1.x), arg_1.x)), arg_1.zx), arg_2, vec3<i32>(1i, arg_2.a.x, arg_2.a.x), func_3(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.c, var_0.x, var_0.x, arg_2.c), vec4<u32>(4294967295u, var_0.x, 0u, 0u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, 387f, arg_2.b.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(595f, 958f, arg_0))), true))), -2147483647i & reverseBits(u_input.b.x)), Struct_4(Struct_2(arg_1.wy, Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.b.x)), ~var_0.x, _wgslsmith_f_op_f32(1196f * 1948f)), abs(~u_input.b), ~(~vec4<u32>(var_0.x, 54015u, 4294967295u, 55602u)), arg_2.a.x), vec4<u32>(arg_2.c, ~firstLeadingBit(0u), _wgslsmith_add_u32(arg_2.c, arg_2.c) ^ var_0.x, 54163u), Struct_3(select(select(arg_1, arg_1, true), select(arg_1, vec4<bool>(arg_1.x, true, arg_1.x, true), arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, false, false))), Struct_3(vec4<bool>(false, !arg_1.x, !arg_1.x, arg_2.d != 1000f)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b.x * arg_0))) * -508f));
    var var_2 = _wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(var_1.d - arg_0));
    var var_3 = var_1.b.d.yz;
    return var_1.c;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -174f))), 331f);
    let var_1 = arg_0.a.b.a.zy;
    var var_2 = Struct_5(arg_0.a.d, arg_0.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2206f - _wgslsmith_f_op_f32(round(-1816f)))), arg_3.a, func_2(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), arg_1, Struct_1(~u_input.b, vec2<f32>(arg_0.e, -321f), 4294967295u, _wgslsmith_f_op_f32(trunc(arg_0.a.b.b.x)))).a.b), _wgslsmith_f_op_f32(f32(-1f) * -1316f));
    let var_3 = func_2(_wgslsmith_f_op_f32(floor(var_2.b.b.d)), !arg_1, Struct_1(~(vec3<i32>(0i, arg_2, 33008i) & vec3<i32>(1i, 1i, 1i)) ^ _wgslsmith_sub_vec3_i32(u_input.b | arg_0.a.b.a, select(vec3<i32>(2147483647i, arg_2, 17180i), vec3<i32>(var_1.x, 1i, 8106i), vec3<bool>(false, arg_0.a.a.x, true))), _wgslsmith_f_op_vec2_f32(trunc(arg_0.a.b.b)), countOneBits(1u), var_2.b.b.b.x)).a.b;
    var_2 = Struct_5(vec4<u32>(firstTrailingBit(~39234u), 9934u, var_3.c, var_3.c), Struct_2(vec2<bool>(reverseBits(var_2.c.a.d.x) > var_3.c, arg_3.a.x), Struct_1(u_input.b, var_2.c.a.b.b, abs(_wgslsmith_sub_u32(var_3.c, 4294967295u)), arg_0.e), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2524f * 200f)), arg_1, func_2(360f, func_2(299f, vec4<bool>(false, true, arg_3.a.x, arg_3.a.x), Struct_1(arg_0.a.c, vec2<f32>(var_0.x, var_2.b.b.b.x), 0u, -242f)).c.a, Struct_1(var_2.b.c, vec2<f32>(var_3.b.x, arg_0.e), var_2.c.b.x, 201f)).a.b).a.b.a, firstTrailingBit(firstLeadingBit(vec4<u32>(0u, 0u, 77884u, 14164u))), ~countOneBits(1i)), Struct_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2.c.a.b.b.x) - _wgslsmith_f_op_f32(-var_2.b.b.b.x)), select(select(vec4<bool>(arg_1.x, var_2.c.c.a.x, arg_3.a.x, false), arg_3.a, arg_1), vec4<bool>(false, true, true, arg_0.c.a.x), arg_0.c.a), func_2(var_2.b.b.d, select(var_2.c.d.a, arg_0.c.a, arg_3.a.x), arg_0.a.b).a.b).a, ~(vec4<u32>(56184u, var_3.c, 1u, arg_0.b.x) << (_wgslsmith_add_vec4_u32(arg_0.a.d, var_2.a) % vec4<u32>(32u))), arg_3, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e * -467f) - _wgslsmith_f_op_f32(step(1000f, 1035f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    return func_2(1583f, vec4<bool>(var_2.c.a.d.x <= 76063u, arg_0.a.a.x, arg_3.a.x, 104361u < _wgslsmith_mult_u32(arg_0.a.d.x & var_2.c.a.b.c, firstTrailingBit(var_2.b.b.c))), var_3).a.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_0.b.x;
    var var_1 = Struct_4(func_2(-1546f, select(arg_1.c.c.a, !arg_1.c.d.a, vec4<bool>(any(arg_1.c.d.a), true, !arg_1.b.a.x, true)), Struct_1(~(-u_input.b), func_2(_wgslsmith_f_op_f32(min(-1039f, arg_1.c.a.b.b.x)), arg_1.c.d.a, Struct_1(vec3<i32>(26592i, 2147483647i, u_input.a), vec2<f32>(arg_2.d, 911f), 4294967295u, arg_1.c.e)).a.b.b, firstLeadingBit(12810u), -1519f)).a, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.a.x, _wgslsmith_div_u32(~arg_1.a.x, countOneBits(1u)), 1u), ~(~(~vec4<u32>(0u, 32839u, arg_0.c, arg_3.c)))), Struct_3(vec4<bool>(!(arg_3.b.x < arg_1.d), !arg_1.c.c.a.x | !arg_1.b.a.x, any(arg_1.c.c.a.yzw), true)), Struct_3(select(!arg_1.c.d.a, !func_2(arg_0.b.x, vec4<bool>(false, true, true, true), arg_3).c.a, select(select(vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, false, arg_1.b.a.x), arg_1.c.d.a, vec4<bool>(true, true, false, arg_1.c.c.a.x)), arg_1.c.c.a, true))), _wgslsmith_f_op_f32(max(-1000f, 1181f)));
    var_1 = func_2(-986f, select(vec4<bool>(-1231f <= arg_1.c.e, arg_0.c >= arg_2.c, true, any(vec2<bool>(true, true))), arg_1.c.c.a, select(!vec4<bool>(var_1.c.a.x, arg_1.c.d.a.x, true, true), func_2(-1493f, vec4<bool>(arg_1.c.a.a.x, true, true, arg_1.b.a.x), Struct_1(var_1.a.b.a, arg_1.b.b.b, 4294967295u, arg_0.b.x)).c.a, any(!vec3<bool>(var_1.d.a.x, arg_1.b.a.x, true)))), func_4(func_2(_wgslsmith_f_op_f32(-arg_2.d), vec4<bool>(var_1.c.a.x, select(false, false, var_1.d.a.x), false & arg_1.c.d.a.x, var_1.d.a.x), Struct_1(arg_3.a, _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, 1733f), vec2<f32>(arg_2.d, 155f)), _wgslsmith_dot_vec3_u32(var_1.b.xyy, arg_1.a.xzw), _wgslsmith_f_op_f32(ceil(var_1.e)))), !select(select(arg_1.c.c.a, vec4<bool>(false, false, arg_1.c.c.a.x, arg_1.c.d.a.x), false), select(var_1.d.a, vec4<bool>(true, var_1.d.a.x, arg_1.c.d.a.x, true), var_1.a.a.x), func_2(arg_0.b.x, vec4<bool>(true, arg_1.b.a.x, var_1.c.a.x, true), Struct_1(arg_2.a, arg_3.b, 32668u, -249f)).d.a), firstLeadingBit(arg_2.a.x), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1351f), func_2(_wgslsmith_div_f32(arg_0.d, arg_0.d), var_1.c.a, Struct_1(vec3<i32>(-30418i, 4909i, arg_1.c.a.b.a.x), arg_1.c.a.b.b, arg_1.c.b.x, -134f)).d.a, arg_1.b.b).d));
    var var_2 = arg_1;
    let var_3 = Struct_4(Struct_2(vec2<bool>(true, _wgslsmith_mod_u32(arg_0.c, arg_2.c) >= _wgslsmith_sub_u32(arg_0.c, arg_3.c)), arg_1.c.a.b, _wgslsmith_div_vec3_i32(vec3<i32>(var_1.a.c.x, -1i, u_input.a), vec3<i32>(1i, var_1.a.e, arg_1.c.a.c.x)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(14000u, 36454u, arg_3.c, var_1.b.x), max(vec4<u32>(arg_2.c, 39885u, 4294967295u, 63674u), var_2.b.d))), ~firstLeadingBit(9700i)), vec4<u32>(~(~1u), ~(~arg_2.c), _wgslsmith_sub_u32(~(~arg_3.c), countOneBits(arg_1.b.d.x)), func_4(var_2.c, vec4<bool>(var_2.c.c.a.x, true, var_2.c.d.a.x || false, arg_1.c.a.a.x), -arg_0.a.x, var_1.d).c), Struct_3(arg_1.c.c.a), var_1.c, var_1.a.b.b.x);
    return ~abs(abs(var_2.c.a.b.a.yz));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_mult_vec2_u32(func_3(vec4<u32>(arg_2, _wgslsmith_mod_u32(~4294967295u, 35508u), 14435u, ~1u), vec3<f32>(1f, 1f, 1f)).yy, func_3(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_2, 4294967295u), abs(0u), 0u | arg_2, 13113u), vec4<u32>(_wgslsmith_div_u32(64254u, 79726u), arg_2, ~21618u, arg_2)), vec3<f32>(1f, 1f, 1f)).yy);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_f32(floor(782f)), vec4<bool>(false, false, true, false), func_4(Struct_4(Struct_2(vec2<bool>(false, false), Struct_1(u_input.b, vec2<f32>(946f, 2621f), 70699u, 257f), vec3<i32>(-1i, arg_3.x, 0i), vec4<u32>(7866u, arg_2, var_0.x, 111381u), arg_1.x), vec4<u32>(57079u, 3033u, 0u, arg_2), Struct_3(vec4<bool>(false, true, true, false)), Struct_3(vec4<bool>(true, true, false, true)), -507f), vec4<bool>(true, true, true, true), -1i, Struct_3(vec4<bool>(true, false, false, true)))).a.b.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1352f + 996f), _wgslsmith_f_op_f32(f32(-1f) * -2720f)))), vec2<f32>(func_4(Struct_4(Struct_2(vec2<bool>(true, true), Struct_1(arg_3, vec2<f32>(-1153f, 422f), var_0.x, 1219f), vec3<i32>(u_input.b.x, -18463i, arg_1.x), vec4<u32>(0u, var_0.x, arg_2, 0u), 1i), ~vec4<u32>(var_0.x, var_0.x, 0u, 20985u), func_2(245f, vec4<bool>(true, false, true, false), Struct_1(u_input.b, vec2<f32>(-610f, -979f), arg_2, -1731f)).c, func_2(-1135f, vec4<bool>(true, true, true, false), Struct_1(vec3<i32>(1i, -5053i, arg_3.x), vec2<f32>(506f, 575f), var_0.x, 1039f)).d, _wgslsmith_f_op_f32(f32(-1f) * -456f)), !func_2(380f, vec4<bool>(false, false, false, false), Struct_1(vec3<i32>(-2147483647i, arg_1.x, -17109i), vec2<f32>(-1897f, 181f), var_0.x, -441f)).c.a, abs(-1i), func_2(_wgslsmith_f_op_f32(trunc(1012f)), vec4<bool>(true, true, true, true), func_2(1754f, vec4<bool>(true, false, true, false), Struct_1(u_input.b, vec2<f32>(-336f, -1271f), 14574u, -519f)).a.b).c).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f * 654f))), !select(vec2<bool>(true, false), vec2<bool>(true, true), select(true, true, true))));
    var var_2 = ~((reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 0u, 66381u, 25303u), vec4<u32>(arg_2, 20160u, 4294967295u, var_0.x))) | ~vec4<u32>(0u, 1u, arg_2, 1u)) >> (vec4<u32>(4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0), arg_2, 1u, 4294967295u) % vec4<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_mult_vec3_i32(u_input.b & (arg_3 >> (var_2.xyw % vec3<u32>(32u))), -u_input.b), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, false)) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-908f, var_1.x))), var_2.x ^ _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(~arg_2, max(var_0.x, 4294967295u))), var_1.x);
    let var_4 = countOneBits(vec4<i32>(-arg_3.x, 1i, -11457i, u_input.b.x) & (((vec4<i32>(var_3.a.x, arg_1.x, arg_1.x, var_3.a.x) ^ vec4<i32>(arg_3.x, arg_3.x, arg_3.x, 858i)) ^ ~vec4<i32>(arg_3.x, arg_0.x, -1i, -1i)) & vec4<i32>(-var_3.a.x, max(arg_3.x, -2147483647i), func_4(Struct_4(Struct_2(vec2<bool>(false, false), Struct_1(arg_3, vec2<f32>(var_1.x, var_1.x), var_3.c, 772f), vec3<i32>(u_input.a, 0i, -1145i), vec4<u32>(var_2.x, var_2.x, 4294967295u, arg_2), arg_1.x), vec4<u32>(var_3.c, var_2.x, 0u, arg_2), Struct_3(vec4<bool>(true, false, false, true)), Struct_3(vec4<bool>(false, true, false, false)), var_1.x), vec4<bool>(true, false, false, false), u_input.b.x, Struct_3(vec4<bool>(false, false, true, false))).a.x, _wgslsmith_mod_i32(-4024i, -38306i))));
    return Struct_5(~(~vec4<u32>(4294967295u, 4294967295u, var_2.x, var_2.x) >> (~vec4<u32>(var_0.x, 0u, 0u, var_3.c) % vec4<u32>(32u))), func_2(_wgslsmith_f_op_f32(floor(var_1.x)), vec4<bool>(-44545i < ~arg_0.x, select(all(vec3<bool>(true, false, false)), 0u >= var_3.c, true), true, countOneBits(arg_1.x) >= ~(-1i)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1429f), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, func_2(2812f, vec4<bool>(false, true, true, true), var_3).d.a.x), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(var_4.x, 22619i, var_4.x), u_input.b), vec2<f32>(716f, var_3.d), min(74301u, 23379u), 3328f)).a.b).a, func_2(-2291f, vec4<bool>(select(true, all(vec4<bool>(false, true, true, true)), all(vec3<bool>(false, false, false))), true, all(vec2<bool>(true, true)), true), var_3), -424f);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<i32> {
    var var_0 = func_6(-func_5(func_4(func_2(939f, vec4<bool>(true, true, true, true), Struct_1(u_input.b, vec2<f32>(arg_0, arg_1), 0u, -2268f)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), max(u_input.b.x, u_input.a), Struct_3(vec4<bool>(false, true, false, true))), Struct_5(~vec4<u32>(4294967295u, 94462u, 101555u, 4231u), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(u_input.b.x, -9817i, -1i), vec2<f32>(arg_1, arg_0), 20782u, arg_1), vec3<i32>(-6963i, -46159i, u_input.b.x), vec4<u32>(28301u, 1u, 1u, 10833u), u_input.b.x), func_2(arg_1, vec4<bool>(true, false, true, true), Struct_1(u_input.b, vec2<f32>(389f, 1094f), 1u, arg_1)), _wgslsmith_f_op_f32(ceil(arg_1))), Struct_1(vec3<i32>(0i, -34640i, -1i), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(444f, -624f))), ~0u, _wgslsmith_f_op_f32(-arg_0)), func_2(_wgslsmith_f_op_f32(step(arg_1, arg_1)), func_2(arg_0, vec4<bool>(true, true, true, true), Struct_1(u_input.b, vec2<f32>(-102f, arg_1), 1u, 1299f)).d.a, func_4(Struct_4(Struct_2(vec2<bool>(true, false), Struct_1(u_input.b, vec2<f32>(-811f, 818f), 0u, arg_0), u_input.b, vec4<u32>(57508u, 39543u, 0u, 0u), 17981i), vec4<u32>(0u, 1u, 30733u, 1u), Struct_3(vec4<bool>(true, false, true, true)), Struct_3(vec4<bool>(false, true, false, false)), arg_0), vec4<bool>(false, false, false, false), 2147483647i, Struct_3(vec4<bool>(true, true, false, true)))).a.b), max(reverseBits(select(vec2<i32>(-1i, u_input.a), vec2<i32>(-12428i, -2147483647i), true)), u_input.b.xy >> (vec2<u32>(max(78869u, 56309u), 1u) % vec2<u32>(32u))), _wgslsmith_add_u32(1u, 1u), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(min(u_input.a, -1i), 4045i), u_input.a, ~u_input.b.x << (26051u % 32u)), u_input.b, ~_wgslsmith_sub_vec3_i32(-u_input.b, ~u_input.b)));
    var_0 = Struct_5(var_0.a, var_0.c.a, var_0.c, _wgslsmith_f_op_f32(-var_0.d));
    return vec3<i32>(reverseBits(select(func_5(Struct_1(u_input.b, var_0.c.a.b.b, var_0.a.x, arg_1), func_6(vec2<i32>(u_input.b.x, var_0.b.c.x), vec2<i32>(-45640i, u_input.b.x), var_0.c.b.x, vec3<i32>(2976i, var_0.b.b.a.x, -10061i)), var_0.b.b, func_2(1295f, var_0.c.d.a, var_0.c.a.b).a.b).x, var_0.c.a.c.x, var_0.b.a.x)), func_6(u_input.b.zx, ~vec2<i32>(var_0.b.c.x, ~18918i), 4294967295u, _wgslsmith_div_vec3_i32(-u_input.b & (u_input.b << (vec3<u32>(var_0.b.b.c, 1u, var_0.c.a.b.c) % vec3<u32>(32u))), ~select(var_0.b.b.a, vec3<i32>(u_input.b.x, 2147483647i, -23499i), var_0.c.c.a.yyy))).b.c.x, var_0.b.e);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    var var_0 = !(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-16861i, 7362i), 0i, u_input.a)) > -1i);
    var var_1 = func_6(func_6(_wgslsmith_clamp_vec2_i32(u_input.b.xx, vec2<i32>(_wgslsmith_mod_i32(0i, arg_0.a.x), ~(-12992i)), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_0.a.x), arg_0.a.yy) << (~arg_1.yx % vec2<u32>(32u))), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-39133i, -1i), vec2<i32>(u_input.b.x, -2147483647i)), ~u_input.b.zx)), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), vec4<u32>(arg_1.x, arg_1.x, 33254u, 43325u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, arg_0.b.x, 1088f))).x & ~arg_0.c, min(_wgslsmith_mult_vec3_i32(vec3<i32>(48245i, -2147483647i, 22101i), vec3<i32>(-5437i, u_input.b.x, arg_0.a.x)) << (~arg_1 % vec3<u32>(32u)), u_input.b)).b.c.zx, select(arg_0.a.xx, vec2<i32>(select(_wgslsmith_clamp_i32(-2147483647i, -4755i, u_input.a), 2147483647i, true), abs(u_input.a)), true), 0u, u_input.b).c.c;
    let var_2 = Struct_1(-firstLeadingBit(_wgslsmith_mod_vec3_i32(select(u_input.b, arg_0.a, vec3<bool>(true, true, true)), arg_0.a)), arg_0.b, ~arg_1.x, _wgslsmith_f_op_f32(-arg_2));
    var_0 = any(select(var_1.a.zy, var_1.a.wx, select(var_1.a.zy, var_1.a.zx, func_6(func_4(Struct_4(Struct_2(vec2<bool>(var_1.a.x, true), Struct_1(vec3<i32>(var_2.a.x, 1i, u_input.a), var_2.b, 16742u, arg_0.d), arg_0.a, vec4<u32>(64650u, arg_1.x, 0u, arg_1.x), var_2.a.x), vec4<u32>(1u, 6895u, 11538u, var_2.c), Struct_3(vec4<bool>(false, var_1.a.x, var_1.a.x, true)), Struct_3(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), -938f), vec4<bool>(false, var_1.a.x, false, true), var_2.a.x, Struct_3(vec4<bool>(var_1.a.x, true, var_1.a.x, true))).a.xy, select(u_input.b.yx, var_2.a.xy, var_1.a.x), var_2.c, vec3<i32>(-3942i, -33916i, -1i)).c.a.a)));
    let var_3 = var_1.a;
    return Struct_1(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, -56115i, arg_0.a.x) | vec3<i32>(u_input.b.x, 0i, 1i), ~vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_add_i32(max(31850i, u_input.b.x), -62263i), (-63350i & var_2.a.x) | 73515i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.b.x, 2134f), arg_0.b)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(round(arg_0.d))))), reverseBits(var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1073f, 834f) - arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_1(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 16343i), u_input.b & u_input.b, func_1(294f, -302f)), u_input.b, func_6(u_input.b.zy ^ vec2<i32>(u_input.b.x, 2147483647i), func_2(-683f, vec4<bool>(true, true, false, false), Struct_1(vec3<i32>(-17933i, 2147483647i, u_input.b.x), vec2<f32>(1174f, 1068f), 45015u, 1000f)).a.b.a.xy, ~42931u, _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, -10668i, u_input.b.x))).c.d.a.wzy), _wgslsmith_f_op_vec2_f32(trunc(func_2(func_2(229f, vec4<bool>(true, true, true, false), Struct_1(u_input.b, vec2<f32>(-1242f, 526f), 0u, 340f)).e, func_6(u_input.b.xz, vec2<i32>(u_input.b.x, -1i), 1u, vec3<i32>(u_input.b.x, u_input.a, 59567i)).c.d.a, func_4(Struct_4(Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(-1i, 2147483647i, u_input.a), vec2<f32>(-231f, -869f), 0u, 374f), vec3<i32>(u_input.b.x, u_input.a, u_input.a), vec4<u32>(1u, 15045u, 4294967295u, 24689u), 16440i), vec4<u32>(15056u, 53343u, 49633u, 1u), Struct_3(vec4<bool>(false, true, false, true)), Struct_3(vec4<bool>(false, false, false, false)), -322f), vec4<bool>(true, true, false, false), u_input.b.x, Struct_3(vec4<bool>(true, false, false, true)))).a.b.b)), func_4(Struct_4(func_6(u_input.b.yz, u_input.b.xy, 0u, vec3<i32>(u_input.a, 0i, 4284i)).c.a, ~vec4<u32>(1u, 3193u, 13198u, 1u), Struct_3(vec4<bool>(true, true, true, false)), func_6(u_input.b.zz, vec2<i32>(u_input.b.x, u_input.a), 1u, u_input.b).c.d, _wgslsmith_f_op_f32(round(-1206f))), vec4<bool>(false, any(vec2<bool>(true, true)), false, true), -18880i | u_input.a, func_6(func_4(Struct_4(Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(u_input.a, -74454i, u_input.a), vec2<f32>(-876f, 1793f), 31254u, -742f), u_input.b, vec4<u32>(14862u, 0u, 0u, 35014u), u_input.b.x), vec4<u32>(57838u, 20767u, 0u, 46719u), Struct_3(vec4<bool>(false, false, false, false)), Struct_3(vec4<bool>(false, false, true, false)), -625f), vec4<bool>(false, false, true, false), u_input.a, Struct_3(vec4<bool>(true, false, true, false))).a.yx, vec2<i32>(u_input.a, -15711i), func_3(vec4<u32>(1u, 1u, 47541u, 1u), vec3<f32>(524f, -1205f, 1095f)).x, reverseBits(vec3<i32>(22703i, u_input.b.x, u_input.b.x))).c.c).c, 1f), func_3(~vec4<u32>(52167u, _wgslsmith_sub_u32(4294967295u, 20485u), select(1u, 8073u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, 61172u), vec4<u32>(1u, 29575u, 4294967295u, 36033u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1244f, 447f, 862f)))).zzw, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_6(_wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(0i, u_input.b.x)), _wgslsmith_clamp_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(1i, u_input.b.x)), 1u, u_input.b).b.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(582f)) * -508f))));
    var var_1 = select(-vec4<i32>(~(var_0.a.x | var_0.a.x), _wgslsmith_dot_vec3_i32(var_0.a, -u_input.b), ~(-37146i), u_input.b.x), max(vec4<i32>(~_wgslsmith_div_i32(var_0.a.x, var_0.a.x), 1i, countOneBits(func_6(vec2<i32>(var_0.a.x, u_input.b.x), vec2<i32>(u_input.b.x, 0i), var_0.c, u_input.b).c.a.c.x), func_2(-1000f, vec4<bool>(true, true, true, true), Struct_1(var_0.a, vec2<f32>(var_0.b.x, var_0.b.x), var_0.c, -1042f)).a.b.a.x), _wgslsmith_add_vec4_i32(firstTrailingBit(firstLeadingBit(vec4<i32>(var_0.a.x, 2147483647i, u_input.a, -35007i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, u_input.b.x, var_0.a.x, var_0.a.x), vec4<i32>(1i, var_0.a.x, var_0.a.x, 12500i)), u_input.a, 2147483647i, ~var_0.a.x))), !(!(!all(vec4<bool>(true, true, false, true)))));
    let var_2 = true;
    var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, func_2(-300f, !vec4<bool>(var_2, var_2, var_2, false), func_6(u_input.b.xz, vec2<i32>(var_1.x, var_0.a.x), var_0.c, u_input.b).c.a.b).a.b.a.x, 0i), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, var_0.a), -var_1.xxw, vec3<i32>(15488i, 0i, var_1.x)), u_input.b, ~(-vec3<i32>(-1i, 1i, 5231i)))), vec2<f32>(-613f, func_2(_wgslsmith_f_op_f32(f32(-1f) * -756f), func_2(_wgslsmith_f_op_f32(-var_0.b.x), select(vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2), false), func_2(var_0.b.x, vec4<bool>(var_2, true, var_2, var_2), Struct_1(u_input.b, vec2<f32>(458f, -299f), 13729u, 343f)).a.b).c.a, Struct_1(func_1(var_0.d, var_0.d), vec2<f32>(-264f, var_0.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(45320u, 93439u, 4294967295u, 1u), vec4<u32>(10631u, 1u, 749u, var_0.c)), _wgslsmith_f_op_f32(239f + var_0.b.x))).a.b.b.x), 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))) * var_0.d))));
    var_0 = func_6(var_1.zx, vec2<i32>(28192i, func_5(Struct_1(vec3<i32>(5330i, 9586i, -28344i), var_0.b, ~43650u, _wgslsmith_f_op_f32(-var_0.d)), Struct_5(abs(vec4<u32>(var_0.c, 0u, 49710u, 1596u)), func_2(var_0.d, vec4<bool>(false, true, false, false), Struct_1(var_1.zyz, vec2<f32>(614f, 1345f), 0u, 1065f)).a, Struct_4(Struct_2(vec2<bool>(var_2, false), Struct_1(var_0.a, var_0.b, var_0.c, -1137f), u_input.b, vec4<u32>(73185u, 10248u, 1u, 1u), u_input.b.x), vec4<u32>(4294967295u, 4294967295u, 0u, 38907u), Struct_3(vec4<bool>(var_2, true, var_2, true)), Struct_3(vec4<bool>(var_2, false, true, true)), -494f), _wgslsmith_f_op_f32(floor(1094f))), Struct_1(var_0.a, vec2<f32>(var_0.d, 945f), _wgslsmith_mult_u32(var_0.c, var_0.c), func_2(1197f, vec4<bool>(var_2, var_2, false, false), Struct_1(var_0.a, var_0.b, 4294967295u, 677f)).a.b.b.x), func_7(func_2(var_0.b.x, vec4<bool>(var_2, true, var_2, false), Struct_1(var_0.a, vec2<f32>(var_0.d, var_0.b.x), var_0.c, -664f)).a.b, _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c, var_0.c, 4294967295u), vec3<u32>(var_0.c, 50527u, 4294967295u)), 1239f)).x), 0u, var_1.wxx).c.a.b;
    var var_3 = Struct_5(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.c, 30822u, var_0.c, var_0.c), func_3(vec4<u32>(var_0.c, var_0.c, var_0.c, 39921u), vec3<f32>(632f, var_0.d, var_0.d)), select(vec4<bool>(var_2, false, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(true, var_2, false, var_2))) ^ ~(~vec4<u32>(119351u, var_0.c, 0u, 1u)), ~countOneBits(~vec4<u32>(68952u, var_0.c, var_0.c, 31082u))), func_6(-vec2<i32>(var_1.x, _wgslsmith_add_i32(0i, 0i)), var_0.a.zx, _wgslsmith_mod_u32(var_0.c, func_2(_wgslsmith_f_op_f32(select(var_0.d, var_0.d, var_2)), !vec4<bool>(var_2, false, var_2, true), Struct_1(var_1.zzw, var_0.b, var_0.c, var_0.d)).b.x), -(~(var_1.ywx << (vec3<u32>(var_0.c, var_0.c, 18098u) % vec3<u32>(32u))))).c.a, func_2(481f, !vec4<bool>(var_2, true, var_2, true), func_6(vec2<i32>(min(2147483647i, var_1.x), ~(-1i)), ~var_0.a.xy | var_1.zy, ~0u, abs(_wgslsmith_sub_vec3_i32(var_1.zzx, vec3<i32>(u_input.a, u_input.a, u_input.b.x)))).c.a.b), -1479f);
    let var_4 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(func_4(func_2(-1256f, vec4<bool>(false, var_3.c.a.a.x, false, false), Struct_1(vec3<i32>(37884i, u_input.a, 2147483647i), var_3.c.a.b.b, var_0.c, 795f)), !vec4<bool>(false, true, var_3.c.d.a.x, var_3.b.a.x), u_input.b.x, Struct_3(var_3.c.d.a)).a, u_input.b), abs(-var_3.b.c.x), -2147483647i), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c.a.e, -9118i, 2147483647i, func_5(var_3.c.a.b, Struct_5(vec4<u32>(0u, var_0.c, 4294967295u, var_0.c), Struct_2(vec2<bool>(false, var_2), var_3.b.b, u_input.b, var_3.c.a.d, var_3.b.e), var_3.c, 1000f), Struct_1(vec3<i32>(-20339i, -78036i, var_1.x), var_0.b, var_3.c.b.x, var_3.b.b.d), Struct_1(vec3<i32>(var_1.x, var_1.x, u_input.b.x), var_0.b, 0u, var_3.d)).x), ~_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.x, 2147483647i, -34204i, var_0.a.x), vec4<i32>(u_input.b.x, -43315i, var_0.a.x, -2147483647i)), vec4<i32>(var_3.b.e, 28343i, 2147483647i, 2147483647i) << (vec4<u32>(var_3.c.b.x, var_3.a.x, 4294967295u, 1u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, abs(1u));
}

