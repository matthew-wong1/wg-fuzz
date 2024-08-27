struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(select(172f, 2149f, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 611f) * vec2<f32>(-766f, -2669f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1604f, 651f)), vec2<f32>(875f, 665f)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = vec2<bool>(true, false);
    var var_1 = Struct_1(vec4<bool>(var_0.x, var_0.x, true, var_0.x), ~(_wgslsmith_div_i32(-2147483647i, -3805i) ^ min(arg_1.c.x, -1i)) >= arg_1.c.x, countOneBits(~u_input.a.yzx));
    var_1 = arg_1;
    var_0 = vec2<bool>(all(arg_1.a.wzw), arg_1.a.x);
    var_1 = arg_1;
    return !(!(!var_1.a));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = false;
    let var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, _wgslsmith_mult_i32(u_input.a.x, 20434i), min(1i, -2147483647i)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.d.x), ~vec3<u32>(arg_0, 42862u, 8364u)) % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(-20371i, -1i)), ~u_input.a.x, u_input.b));
    return Struct_1(!func_3(1f, Struct_1(select(vec4<bool>(false, arg_1, false, true), vec4<bool>(false, true, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_1, true)), true, _wgslsmith_div_vec3_i32(vec3<i32>(21i, u_input.e.x, -2147483647i), vec3<i32>(-54513i, -16404i, u_input.a.x))), u_input.d.yww >> (u_input.d.wxz % vec3<u32>(32u))), !func_3(_wgslsmith_f_op_f32(f32(-1f) * -298f), Struct_1(func_3(609f, Struct_1(vec4<bool>(arg_1, true, true, var_0), arg_2.x, var_1), vec3<u32>(10199u, 1u, u_input.d.x)), select(true, true, true), var_1 >> (u_input.d.yzz % vec3<u32>(32u))), firstLeadingBit(u_input.d.zzw)).x, _wgslsmith_clamp_vec3_i32(u_input.a.wzy, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 1i), var_1) >> (arg_3 % 32u), u_input.b, -1i), min(countOneBits(firstTrailingBit(u_input.e)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.x, u_input.e.x), -vec3<i32>(36477i, 26842i, u_input.e.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(~1u, true || arg_0.a.x, vec2<bool>(true, true), abs(u_input.d.x));
    let var_1 = u_input.d.xy;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1499f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-262f)))), _wgslsmith_f_op_f32(-2555f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-825f + 1727f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1624f, _wgslsmith_f_op_f32(round(650f))))));
    var var_3 = ~_wgslsmith_div_vec3_i32(select(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, 2147483647i), vec3<i32>(13240i, 43043i, 0i)), -(~arg_0.c), all(!vec4<bool>(arg_0.b, arg_0.b, true, false))), -vec3<i32>(-var_0.c.x, 21275i, -25182i));
    var_3 = vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(-(u_input.e & u_input.a.wyx), var_0.c), ~1i);
    return Struct_1(vec4<bool>(!(var_1.x == firstLeadingBit(1u)), true, !(!func_2(35069u, arg_0.b, arg_0.a.ww, u_input.c.x).a.x), arg_0.a.x), !any(vec3<bool>(arg_1.a.x, var_0.b, arg_0.a.x)), vec3<i32>(max(2147483647i, ~_wgslsmith_add_i32(arg_0.c.x, arg_0.c.x)), ~_wgslsmith_add_i32(-arg_1.c.x, u_input.b), -32392i));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.d.zxy;
    let var_1 = arg_1;
    var_0 = ~firstLeadingBit(u_input.d.xyx);
    var var_2 = !(!vec4<bool>(true, all(select(arg_1.a.yxz, var_1.a.yxz, vec3<bool>(arg_1.b, arg_1.b, var_1.a.x))), var_1.a.x, true));
    var_0 = min(select(vec3<u32>(1u, u_input.d.x, u_input.d.x), firstLeadingBit(u_input.d.wyw), select(vec3<bool>(all(arg_1.a), true, var_2.x), func_4(func_2(u_input.d.x, false, arg_1.a.zy, arg_0), arg_1).a.xyz, true)), _wgslsmith_mod_vec3_u32(~u_input.d.wzz, select(select(~vec3<u32>(1u, 4294967295u, var_0.x), u_input.d.wyy, true), reverseBits(~u_input.d.xwx), func_2(~0u, false, select(var_2.ww, var_1.a.xw, var_1.a.zy), _wgslsmith_clamp_u32(arg_0, var_0.x, u_input.c.x)).a.xyx)));
    return func_4(arg_1, Struct_1(vec4<bool>(true, !var_1.b && all(var_1.a.wxz), func_4(arg_1, var_1).a.x && !arg_1.b, true), false || (~var_0.x != firstLeadingBit(84825u)), vec3<i32>(26348i, -16866i, ~arg_1.c.x << (4294967295u % 32u))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(select(func_5(4294967295u, Struct_1(vec4<bool>(false, arg_2.b, true, arg_2.a.x), true, select(arg_1.c, vec3<i32>(-2147483647i, u_input.b, arg_1.c.x), arg_0.a.xwx))).a, vec4<bool>(false, func_2(1u, false && arg_2.a.x, vec2<bool>(true, arg_0.a.x), ~u_input.d.x).a.x, true, false), arg_1.a.x), arg_0.b, max(~vec3<i32>(u_input.b, arg_1.c.x, _wgslsmith_add_i32(-7198i, arg_0.c.x)), vec3<i32>(-2147483647i, -34434i, _wgslsmith_dot_vec2_i32(vec2<i32>(-22533i, 1i) & vec2<i32>(2147483647i, arg_0.c.x), func_2(u_input.d.x, arg_0.a.x, vec2<bool>(true, false), 8098u).c.zz))));
    let var_1 = Struct_1(!arg_1.a, var_0.a.x, ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.c.x, arg_0.c.x, -4124i), vec3<i32>(arg_0.c.x, 1i, var_0.c.x)) | max(vec3<i32>(u_input.a.x, u_input.e.x, arg_2.c.x), vec3<i32>(-5089i, arg_2.c.x, u_input.e.x)), select(vec3<i32>(arg_0.c.x, u_input.b, arg_2.c.x), ~arg_2.c, !vec3<bool>(var_0.b, var_0.a.x, false))));
    let var_2 = func_2(countOneBits(select(0u, _wgslsmith_clamp_u32(4448u, 42721u, countOneBits(u_input.d.x)), false)), func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -118f))), -632f)), arg_0, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c.x & u_input.d.x, u_input.c.x ^ 70687u), ~vec3<u32>(u_input.c.x, u_input.d.x, u_input.c.x) | ~u_input.d.yzx)).x, func_4(var_0, func_4(Struct_1(func_4(Struct_1(arg_0.a, arg_0.b, vec3<i32>(u_input.b, 0i, 1596i)), Struct_1(vec4<bool>(arg_1.a.x, arg_2.a.x, true, false), false, var_0.c)).a, u_input.d.x > u_input.c.x, vec3<i32>(0i, arg_1.c.x, arg_0.c.x)), func_4(Struct_1(vec4<bool>(true, var_0.a.x, false, arg_1.b), arg_0.b, var_1.c), Struct_1(arg_0.a, var_0.b, u_input.a.xyx)))).a.yw, _wgslsmith_dot_vec2_u32(u_input.d.xy, ~vec2<u32>(firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d))));
    let var_3 = var_1;
    var var_4 = vec3<i32>(u_input.e.x, ~(-28413i), -arg_1.c.x);
    return var_4.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.xyy;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(151f, 1011f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(var_1, false, var_1), var_0.x, Struct_1(vec4<bool>(var_1, true, false, var_1), true, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), Struct_1(vec4<bool>(true, false, true, var_1), var_1, u_input.e))), vec2<f32>(118f, 1137f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1644f, 234f)), _wgslsmith_f_op_f32(445f + -1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(960f - _wgslsmith_f_op_f32(f32(-1f) * -936f)), _wgslsmith_f_op_f32(f32(-1f) * -747f)));
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + vec2<f32>(-460f, -577f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1223f, 1383f)))))));
    let var_3 = ~var_0.x ^ 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec2_u32(~u_input.c, var_0.xy) << (_wgslsmith_sub_vec2_u32(vec2<u32>(25039u, 61904u), abs(var_0.zx)) % vec2<u32>(32u))), 15944u, func_6(func_5(0u | var_0.x, func_4(Struct_1(vec4<bool>(var_1, var_1, var_1, true), var_1, u_input.a.wwz), func_2(u_input.c.x, true, vec2<bool>(true, false), 0u))), func_4(func_4(func_4(Struct_1(vec4<bool>(var_1, var_1, false, false), false, vec3<i32>(u_input.e.x, u_input.b, 46904i)), Struct_1(vec4<bool>(true, false, var_1, var_1), false, vec3<i32>(u_input.b, u_input.a.x, u_input.a.x))), func_5(45067u, Struct_1(vec4<bool>(var_1, var_1, var_1, var_1), var_1, vec3<i32>(u_input.b, u_input.b, u_input.b)))), func_5(0u, func_2(var_0.x, false, vec2<bool>(true, true), 4294967295u))), func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 17793u), vec2<u32>(var_3, var_0.x), vec2<u32>(var_0.x, 3589u)), vec2<u32>(9606u, var_0.x)), true, select(func_2(36953u, true, vec2<bool>(var_1, false), 1u).a.zx, vec2<bool>(true, true), vec2<bool>(var_1, var_1)), firstTrailingBit(~var_3))), abs(u_input.d.xyw));
}

