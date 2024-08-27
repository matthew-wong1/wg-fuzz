struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(26022i, 1i, -4918i, -9201i);

var<private> global1: vec4<f32> = vec4<f32>(-254f, 1048f, 740f, -457f);

var<private> global2: Struct_2;

var<private> global3: f32 = -1102f;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = -106f;
    let var_1 = !(!((~arg_1.a >> (_wgslsmith_clamp_u32(global2.b.x, 84098u, 103728u) % 32u)) > u_input.a.x));
    var_0 = -1009f;
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b.x - arg_0.x), _wgslsmith_f_op_f32(exp2(global1.x)))), global1.x)), global2.b, ~_wgslsmith_add_vec2_u32(global2.c, ~(global2.c >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)))));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(50717u, 27683u, u_input.c)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.c, 29708u, 28875u), ~vec3<u32>(global2.c.x, u_input.c, u_input.c), select(vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_1, true), var_1)), vec3<u32>(u_input.c, firstTrailingBit(1u), min(global2.c.x, 0u)))), u_input.c);
    return var_1;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, global2.a, -486f, global1.x), vec4<f32>(-1000f, global1.x, 2314f, global1.x), arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -550f, -1000f, 1109f) + vec4<f32>(arg_1.a, global2.a, 1689f, arg_1.a))), vec4<f32>(global2.a, _wgslsmith_f_op_f32(ceil(global1.x)), -1000f, 277f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1472f, 201f, global2.a, 104f) - vec4<f32>(-911f, global2.a, arg_1.a, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, 453f, arg_1.a, 236f))))))), vec4<f32>(-143f, -514f, 542f, global1.x), !vec4<bool>(all(arg_2.xz), any(arg_2), arg_2.x, any(vec4<bool>(false, arg_2.x, false, true)))));
    let var_0 = ~vec3<u32>(_wgslsmith_sub_u32(u_input.c | arg_1.c.x, ~72703u), 55673u, abs(~arg_1.c.x)) << (vec3<u32>(1u, _wgslsmith_add_u32(global2.b.x, firstTrailingBit(0u)), ~(~_wgslsmith_mod_u32(79743u, arg_1.c.x))) % vec3<u32>(32u));
    var var_1 = vec4<u32>(max(~(~var_0.x), global2.b.x), countOneBits(0u), arg_1.c.x, u_input.c);
    var var_2 = -(abs(-(~vec4<i32>(u_input.b, u_input.b, -1i, 0i))) >> (abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(60007u, 0u, 25136u, 1u), firstLeadingBit(vec4<u32>(var_0.x, 1u, var_1.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(3005u, u_input.c, global2.b.x, var_0.x), vec4<u32>(50047u, 825u, arg_1.c.x, var_1.x)))) % vec4<u32>(32u)));
    global0 = vec4<i32>(var_2.x, global0.x, _wgslsmith_mod_i32(abs(35652i), max(u_input.a.x | 0i, var_2.x)) | (~u_input.a.x & -2147483647i), var_2.x);
    return var_0;
}

fn func_2() -> Struct_2 {
    var var_0 = func_4(vec3<bool>(true, any(vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true)), true), Struct_2(_wgslsmith_div_f32(553f, _wgslsmith_div_f32(723f, 469f)), vec2<u32>(0u, 38293u), global2.b), !vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true, func_3(vec4<f32>(global2.a, global2.a, -1561f, 268f), Struct_1(u_input.a.x, global1.yzy), vec3<i32>(-17251i, global0.x, -2147483647i))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(global2.a, -3143f)), _wgslsmith_f_op_f32(global2.a - global1.x), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(global1.x + 1671f))))));
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), vec2<u32>(~global2.c.x, ~29506u) & ~(~var_0.xx), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(var_0.zz, vec2<u32>(53918u, var_0.x))), _wgslsmith_mult_vec2_u32(var_0.yz, ~vec2<u32>(1u, global2.b.x)))), Struct_1(u_input.b, global1.wyy), _wgslsmith_f_op_vec3_f32(global1.yxz - _wgslsmith_f_op_vec3_f32(-global1.zxw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-940f, 257f), global1.wy, vec2<bool>(true, 4294967295u < var_0.x))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, global1.x)) * -1000f), global2.a)), -318f);
    global0 = abs(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(0i, u_input.b, 0i, -50346i), vec4<i32>(16625i, var_1.b.a, u_input.a.x, var_1.b.a)), vec4<i32>(var_1.b.a, var_1.b.a, var_1.b.a, 5581i) ^ vec4<i32>(var_1.b.a, u_input.a.x, -2147483647i, u_input.a.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(11326u, 33001u, 1u, func_4(vec3<bool>(true, true, true), Struct_2(global2.a, vec2<u32>(var_1.a.c.x, var_1.a.c.x), vec2<u32>(u_input.c, global2.c.x)), vec4<bool>(true, false, false, false)).x), vec4<u32>(14559u, 17831u, _wgslsmith_dot_vec3_u32(vec3<u32>(25170u, global2.c.x, 7434u), vec3<u32>(u_input.c, var_0.x, 19326u)), 4294967295u)) % vec4<u32>(32u)));
    var var_2 = global1.x;
    return var_1.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_5, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.b.x, -207f, true)) + _wgslsmith_div_f32(432f, -750f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1054f, global2.a))))))));
    var var_1 = Struct_4(_wgslsmith_add_vec4_i32(min(vec4<i32>(-2147483647i, global0.x, 0i, arg_2.b.a), vec4<i32>(0i, -91086i, 35053i, arg_2.b.a)), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -43489i, u_input.a.x, 0i), vec4<i32>(-75495i, 81727i, 30726i, 2147483647i), vec4<i32>(u_input.a.x, u_input.b, 1i, arg_2.b.a)))) & (vec4<i32>(arg_2.b.a, arg_1.b.a, arg_3, countOneBits(-27334i)) ^ select(_wgslsmith_clamp_vec4_i32(vec4<i32>(5774i, u_input.b, arg_3, -22911i), vec4<i32>(arg_2.b.a, u_input.a.x, u_input.b, -69408i), vec4<i32>(42308i, arg_2.b.a, 31787i, -2147483647i)), select(vec4<i32>(arg_3, -1i, global0.x, 0i), vec4<i32>(48053i, global0.x, arg_3, 2147483647i), true), vec4<bool>(false, true, false, true))), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), 16084i <= arg_3), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))), vec2<bool>(false, false));
    let var_2 = _wgslsmith_div_vec2_i32(var_1.a.xz, u_input.a.yx);
    let var_3 = -firstLeadingBit(abs(vec2<i32>(i32(-1i) * -2147483647i, ~u_input.a.x)));
    let var_4 = vec3<u32>(1u, min(4294967295u, func_4(select(var_1.b, var_1.b, !vec3<bool>(false, var_1.b.x, true)), func_2(), vec4<bool>(!var_1.c.x, var_1.b.x, var_1.b.x && false, func_3(vec4<f32>(-1381f, -747f, 1715f, global2.a), arg_1.b, vec3<i32>(0i, 3435i, -2147483647i)))).x), _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(u_input.c, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c, 1u, 43297u, arg_2.a.c.x), vec4<bool>(true, var_1.b.x, var_1.c.x, true))), countOneBits(select(vec4<u32>(1u, 9822u, arg_2.a.b.x, global2.b.x), vec4<u32>(u_input.c, 30843u, 39072u, arg_0.x), vec4<bool>(var_1.c.x, false, true, var_1.b.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1148u, arg_2.a.b.x, global2.c.x), vec4<u32>(0u, 0u, arg_0.x, arg_2.a.b.x)))));
    return var_3.x;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = u_input.c;
    var var_1 = Struct_1(func_5(vec3<u32>(_wgslsmith_mod_u32(1u, u_input.c) ^ _wgslsmith_add_u32(11685u, arg_0), _wgslsmith_add_u32(19631u, _wgslsmith_add_u32(24124u, global2.b.x)), 0u), Struct_5(Struct_2(_wgslsmith_f_op_f32(1422f - 474f), max(global2.b, global2.c), global2.b >> (global2.b % vec2<u32>(32u))), Struct_1(-1i, _wgslsmith_f_op_vec3_f32(global1.wxz - global1.yzz)), _wgslsmith_f_op_vec3_f32(-global1.xww), vec2<f32>(345f, _wgslsmith_f_op_f32(-480f + global1.x)), global1.x), Struct_5(func_2(), Struct_1(66397i, vec3<f32>(global2.a, global1.x, global2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global1.wyx, global1.xxy))), global1.wz, _wgslsmith_f_op_f32(min(578f, -540f))), 2147483647i), global1.zzy);
    var var_2 = arg_2;
    let var_3 = global2.a;
    let var_4 = vec3<i32>(global0.x, var_2.a.x, u_input.b);
    return vec4<u32>(global2.c.x, _wgslsmith_dot_vec4_u32(~min(~vec4<u32>(u_input.c, 0u, global2.c.x, arg_0), abs(vec4<u32>(30362u, 0u, u_input.c, arg_0))), min(select(vec4<u32>(arg_0, 38944u, arg_0, arg_0), vec4<u32>(u_input.c, u_input.c, arg_0, arg_0), var_2.c.x) >> (min(vec4<u32>(36829u, arg_0, global2.b.x, 52972u), vec4<u32>(arg_0, u_input.c, u_input.c, 13265u)) % vec4<u32>(32u)), select(~vec4<u32>(0u, 17506u, arg_0, 4294967295u), vec4<u32>(u_input.c, 40862u, u_input.c, u_input.c), vec4<bool>(true, true, true, true)))), ~global2.c.x, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.b, global0.x, min(~1i, global0.x)), u_input.a), -vec3<i32>(_wgslsmith_mod_i32(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -10596i, global0.x, -2147483647i), vec4<i32>(-51016i, u_input.b, global0.x, u_input.a.x))), -57774i, (u_input.a.x << (u_input.c % 32u)) | 9412i));
    let var_1 = abs(_wgslsmith_mod_vec4_u32(func_1(u_input.c, vec2<bool>(true, true), Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(-29467i, 23889i, global0.x, -7154i), vec4<i32>(var_0.x, var_0.x, var_0.x, global0.x)), vec3<bool>(true, true, true), vec2<bool>(true, true))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, global2.b.x, 4294967295u), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(53672u, 68949u, 1u), vec3<u32>(14855u, u_input.c, u_input.c)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_4(vec4<i32>(global0.x, u_input.b, var_0.x, -2147483647i), vec3<bool>(true, true, true), vec2<bool>(true, true))))));
    var var_2 = ~var_0.x << (~func_1(_wgslsmith_div_u32(~1u, ~var_1.x), vec2<bool>(any(vec2<bool>(false, true)), false), Struct_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -2147483647i, 1i), vec4<i32>(var_0.x, global0.x, var_0.x, -2147483647i), vec4<i32>(2147483647i, 1i, u_input.a.x, global0.x)), vec3<bool>(false, true, false), vec2<bool>(true, true))).x % 32u);
    var var_3 = Struct_2(-780f, global2.c, ~(~(vec2<u32>(22394u, 0u) >> (vec2<u32>(u_input.c, var_1.x) % vec2<u32>(32u)))));
    let var_4 = Struct_5(func_2(), Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.zwz) * _wgslsmith_f_op_vec3_f32(select(global1.zwz, _wgslsmith_f_op_vec3_f32(-global1.wzx), true)))), _wgslsmith_div_vec3_f32(global1.xwx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-3063f))), _wgslsmith_div_f32(-638f, 353f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.xw, global1.yy, vec2<bool>(true, false))), global1.wz), vec2<f32>(-1094f, -1300f))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_3.a, 380f)))), 1017f)), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(func_1(~(~34088u), vec2<bool>(true, false), Struct_4(vec4<i32>(var_4.b.a, -2147483647i, 1i, 1i) | vec4<i32>(-28854i, 17646i, -2147483647i, u_input.a.x), vec3<bool>(false, true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), ~var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1199f, var_3.a)))), 1000f);
}

