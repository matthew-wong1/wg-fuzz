struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1770f, 866f), 123f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.a, arg_2.b.d.a)))) + vec2<f32>(_wgslsmith_f_op_f32(-1146f - _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(ceil(global1.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -820f)), _wgslsmith_f_op_f32(floor(global1.b)));
    let var_1 = Struct_2(arg_2.b.a, select(arg_2.b.b, vec4<bool>(true, all(vec3<bool>(true, true, arg_2.b.b.x)), false, arg_2.b.b.x), any(!select(vec4<bool>(false, arg_2.b.b.x, false, true), vec4<bool>(true, true, true, false), arg_2.b.b.x))), ~vec4<u32>(76119u ^ u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_2.b.e.x, 33783u), vec3<u32>(arg_2.a.c.x, 39065u, arg_2.a.c.x)), 45685u) | arg_2.b.c, arg_2.b.d, ~_wgslsmith_add_vec3_u32(u_input.b.wwz, u_input.b.zwz));
    var_0 = Struct_1(arg_2.b.d.a, 1102f);
    return select(vec4<bool>(var_1.b.x, _wgslsmith_add_u32(var_1.e.x, ~u_input.b.x) >= firstLeadingBit(22705u), var_1.b.x, select(any(select(vec4<bool>(true, false, false, var_1.b.x), var_1.b, var_1.b.x)), !any(vec2<bool>(var_1.b.x, true)), var_1.b.x)), arg_2.a.b, all(vec3<bool>(~2147483647i <= var_1.a.x, true, all(select(arg_2.b.b, vec4<bool>(false, arg_2.a.b.x, var_1.b.x, var_1.b.x), arg_2.a.b)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> vec4<u32> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1.a, global1.a, arg_0.x)) - vec2<f32>(-226f, global1.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1517f, -1018f))) - vec2<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.x)) - -1332f))), _wgslsmith_div_f32(639f, -1561f));
    return ~(~vec4<u32>(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), u_input.b.yw), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, 0u, 0u), u_input.b.yyy)), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), abs(u_input.b.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -2535f) * global1.a), _wgslsmith_f_op_f32(-global1.b));
    var var_1 = select(func_4(func_3(vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.d.x), ~u_input.d.x), vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-111f * -1342f), _wgslsmith_f_op_f32(step(-359f, global1.b))), Struct_3(Struct_2(vec3<i32>(1i, -1i, u_input.a), vec4<bool>(false, false, true, false), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), Struct_1(vec2<f32>(var_0.b, var_0.a.x), -998f), u_input.b.wwx), Struct_2(vec3<i32>(0i, u_input.c.x, -17912i), vec4<bool>(false, false, true, true), u_input.b, var_0, u_input.b.wwx), var_0), u_input.b.x), -2246i), ~firstTrailingBit(min(~u_input.b, ~u_input.b)), 68676i == ~firstLeadingBit(u_input.a));
    let var_2 = true;
    global0 = u_input.c.x;
    var var_3 = Struct_2(vec3<i32>(~(-u_input.c.x), -1i, u_input.a), select(vec4<bool>(true, any(select(vec4<bool>(var_2, var_2, true, false), vec4<bool>(var_2, var_2, var_2, var_2), var_2)), !var_2, all(vec2<bool>(var_2, true)) || (true & var_2)), vec4<bool>(true, true, all(vec2<bool>(true, true)), all(vec3<bool>(var_2, var_2, true)) & true), true), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f * -635f))), u_input.b.ywx);
    return Struct_1(_wgslsmith_div_vec2_f32(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.d.a) + vec2<f32>(1362f, global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1047f * global1.b)) - var_3.d.a.x)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    global1 = func_2();
    var var_0 = _wgslsmith_div_f32(global1.a.x, 270f);
    let var_1 = u_input.c;
    let var_2 = countOneBits(u_input.b);
    global0 = 2147483647i;
    return arg_0.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global0 = u_input.c.x;
    var var_0 = Struct_3(func_1(Struct_3(Struct_2(arg_1.a, select(arg_1.b, vec4<bool>(arg_1.b.x, false, true, arg_1.b.x), true), ~vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x), arg_2, reverseBits(arg_1.e)), func_1(Struct_3(Struct_2(arg_1.a, arg_1.b, vec4<u32>(17009u, arg_1.e.x, u_input.b.x, 24894u), Struct_1(arg_1.d.a, 191f), vec3<u32>(8986u, arg_1.e.x, 4512u)), arg_1, Struct_1(global1.a, arg_0.x)), vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.c, Struct_1(vec2<f32>(arg_0.x, arg_2.a.x), 141f)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(arg_0.wy)), _wgslsmith_f_op_f32(abs(1707f)))), !(!vec2<bool>(arg_1.b.x, arg_1.b.x)), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.b, -500f)) - _wgslsmith_f_op_vec2_f32(-global1.a)), _wgslsmith_f_op_f32(-func_2().a.x))), Struct_2(_wgslsmith_add_vec3_i32(arg_1.a, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 32747i, arg_1.a.x), arg_1.a), arg_1.a)), vec4<bool>(true, true, true, true), u_input.b, func_1(Struct_3(arg_1, Struct_2(arg_1.a, arg_1.b, vec4<u32>(17798u, 12408u, arg_1.c.x, arg_1.c.x), arg_2, u_input.b.ywz), Struct_1(vec2<f32>(-932f, 1270f), global1.a.x)), arg_1.b.ww, vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.c.yz, vec2<u32>(u_input.d.x, 79995u)), u_input.b.x, u_input.b.x, ~24697u), func_1(Struct_3(arg_1, arg_1, arg_2), select(arg_1.b.zw, arg_1.b.zz, false), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.e.x, 86002u), vec4<u32>(arg_1.e.x, 16091u, 1u, 0u)), Struct_1(arg_2.a, 452f)).d).d, vec3<u32>(~(4294967295u | arg_1.c.x), abs(u_input.b.x), countOneBits(arg_1.c.x))), Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_div_f32(1502f, -537f))));
    let var_1 = ~var_0.a.a.xx;
    var var_2 = vec3<f32>(arg_2.b, arg_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d.b))));
    return func_2();
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    global1 = func_1(Struct_3(func_1(Struct_3(Struct_2(vec3<i32>(65773i, u_input.c.x, u_input.c.x), vec4<bool>(false, false, false, true), u_input.b, Struct_1(arg_0.a, -858f), u_input.b.xyx), Struct_2(vec3<i32>(1i, -2147483647i, u_input.a), vec4<bool>(false, true, true, true), u_input.b, Struct_1(vec2<f32>(global1.b, global1.a.x), global1.b), u_input.b.zzw), func_2()), vec2<bool>(true, true), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), vec4<u32>(u_input.b.x, 5415u, 0u, u_input.d.x)), func_1(Struct_3(Struct_2(vec3<i32>(-42852i, u_input.c.x, u_input.a), vec4<bool>(true, false, false, false), vec4<u32>(0u, 75250u, u_input.d.x, u_input.b.x), arg_0, u_input.b.yzw), Struct_2(vec3<i32>(u_input.a, u_input.c.x, 28606i), vec4<bool>(true, true, false, false), u_input.b, arg_0, u_input.b.zxx), arg_0), vec2<bool>(true, true), u_input.b, Struct_1(vec2<f32>(arg_0.a.x, arg_0.a.x), global1.a.x)).d), Struct_2(max(-vec3<i32>(u_input.a, -10763i, u_input.a), vec3<i32>(15726i, u_input.a, u_input.c.x)), vec4<bool>(true, true, true, true), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), ~vec4<u32>(33172u, 0u, 0u, u_input.b.x)), arg_0, abs(~u_input.b.wxw)), arg_0), func_3(u_input.b.zxz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(649f, 1896f)), arg_0.a.x, 1804f)), Struct_3(Struct_2(-vec3<i32>(u_input.a, 49523i, u_input.a), vec4<bool>(true, true, true, true), ~vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.b.x), func_2(), u_input.b.zzw), func_1(Struct_3(Struct_2(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, 9338u, u_input.b.x, u_input.d.x), arg_0, u_input.b.wwx), Struct_2(vec3<i32>(u_input.a, -2147483647i, u_input.c.x), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, u_input.d.x), arg_0, u_input.b.xyx), arg_0), vec2<bool>(true, true), ~u_input.b, func_1(Struct_3(Struct_2(vec3<i32>(u_input.c.x, u_input.a, u_input.a), vec4<bool>(false, false, true, true), vec4<u32>(14119u, u_input.d.x, 0u, 11784u), Struct_1(arg_0.a, arg_0.a.x), u_input.b.yxw), Struct_2(vec3<i32>(2147483647i, 0i, u_input.c.x), vec4<bool>(false, true, true, false), u_input.b, arg_0, u_input.b.xyy), arg_0), vec2<bool>(false, true), vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, u_input.b.x), arg_0).d), Struct_1(vec2<f32>(global1.a.x, 1147f), global1.b)), func_1(Struct_3(func_1(Struct_3(Struct_2(vec3<i32>(2147483647i, u_input.c.x, 3874i), vec4<bool>(true, false, false, false), vec4<u32>(65868u, 77012u, 26705u, u_input.b.x), arg_0, vec3<u32>(u_input.b.x, 4294967295u, u_input.d.x)), Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.c.x), vec4<bool>(false, false, true, false), vec4<u32>(u_input.b.x, 4294967295u, 15847u, u_input.b.x), Struct_1(arg_0.a, arg_0.b), u_input.b.xwy), arg_0), vec2<bool>(false, true), vec4<u32>(13107u, u_input.b.x, 89758u, u_input.d.x), arg_0), func_1(Struct_3(Struct_2(vec3<i32>(0i, u_input.c.x, -1i), vec4<bool>(true, false, false, true), u_input.b, arg_0, vec3<u32>(4294967295u, u_input.b.x, u_input.d.x)), Struct_2(vec3<i32>(-1i, u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true), u_input.b, Struct_1(vec2<f32>(global1.b, 1073f), 446f), vec3<u32>(1u, u_input.d.x, 38985u)), arg_0), vec2<bool>(true, false), u_input.b, arg_0), Struct_1(arg_0.a, arg_0.a.x)), vec2<bool>(true, true), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(5579u, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b), arg_0).c.x).yz, u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_0.a, global1.a, true)), -288f)).d;
    global0 = -1i;
    var var_0 = ~0i;
    let var_1 = u_input.c;
    var var_2 = Struct_2(abs(~max(vec3<i32>(-2147483647i, -36164i, -29172i) & vec3<i32>(1i, var_1.x, 0i), firstTrailingBit(vec3<i32>(var_1.x, u_input.a, 2147483647i)))), select(vec4<bool>(true, !select(false, false, false), 37909u == u_input.d.x, any(vec4<bool>(true, true, true, true))), func_1(Struct_3(Struct_2(vec3<i32>(-1i, u_input.c.x, 22024i), vec4<bool>(false, false, false, true), u_input.b, Struct_1(arg_0.a, global1.a.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.d.x)), Struct_2(vec3<i32>(-1i, 1i, 2147483647i), vec4<bool>(false, true, true, true), u_input.b, Struct_1(arg_0.a, 905f), vec3<u32>(0u, u_input.b.x, 31285u)), Struct_1(arg_0.a, 614f)), vec2<bool>(true, false), vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wx, vec2<u32>(0u, u_input.d.x)), ~14238u, 22481u & u_input.d.x), arg_0).b, !(~4294967295u >= (u_input.b.x << (0u % 32u)))), u_input.b, Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-809f)))), _wgslsmith_div_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_add_u32(u_input.b.x, 46511u)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 16826u), u_input.d)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(1u, u_input.b.x, u_input.b.x))) ^ u_input.b.wzx));
    return Struct_2(var_2.a ^ -var_2.a, select(select(!func_3(u_input.b.yxz, vec3<f32>(-197f, 590f, 396f), Struct_3(Struct_2(vec3<i32>(var_1.x, 45660i, var_1.x), vec4<bool>(true, var_2.b.x, false, var_2.b.x), u_input.b, Struct_1(var_2.d.a, var_2.d.a.x), vec3<u32>(u_input.d.x, 85570u, u_input.b.x)), Struct_2(var_2.a, var_2.b, u_input.b, var_2.d, vec3<u32>(u_input.b.x, 4294967295u, var_2.c.x)), Struct_1(vec2<f32>(global1.a.x, -1166f), 1345f)), var_2.e.x), vec4<bool>(true, true, !var_2.b.x, func_3(vec3<u32>(50136u, u_input.d.x, u_input.b.x), vec3<f32>(arg_0.b, var_2.d.b, var_2.d.b), Struct_3(Struct_2(var_2.a, var_2.b, vec4<u32>(20960u, 46812u, var_2.e.x, u_input.b.x), var_2.d, var_2.e), Struct_2(var_2.a, vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.b.x), vec4<u32>(50150u, 0u, u_input.b.x, 42679u), var_2.d, u_input.b.zww), var_2.d), 0u).x), true), var_2.b, vec4<bool>(!all(var_2.b), true, all(func_3(var_2.e, vec3<f32>(908f, 134f, -286f), Struct_3(Struct_2(vec3<i32>(u_input.a, 28524i, var_2.a.x), vec4<bool>(var_2.b.x, true, var_2.b.x, var_2.b.x), var_2.c, var_2.d, var_2.e), Struct_2(vec3<i32>(u_input.a, var_2.a.x, 0i), vec4<bool>(true, true, var_2.b.x, true), var_2.c, arg_0, vec3<u32>(4294967295u, var_2.e.x, u_input.d.x)), arg_0), var_2.e.x).yw), var_2.b.x)), ~_wgslsmith_mult_vec4_u32(u_input.b, select(min(var_2.c, vec4<u32>(59606u, u_input.d.x, var_2.e.x, var_2.e.x)), vec4<u32>(u_input.d.x, 1u, 0u, u_input.b.x), !vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x))), arg_0, vec3<u32>(firstLeadingBit(~1u), reverseBits(_wgslsmith_div_u32(firstTrailingBit(u_input.d.x), ~var_2.c.x)), u_input.d.x));
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> f32 {
    global0 = u_input.a;
    let var_0 = ~(~_wgslsmith_div_vec2_u32(~u_input.b.yy, arg_2.c.ww) >> (~vec2<u32>(10582u, ~115571u) % vec2<u32>(32u)));
    global1 = Struct_1(_wgslsmith_div_vec2_f32(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.a))), _wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.d.b, -355f))))));
    var var_1 = arg_2.d;
    let var_2 = vec4<bool>(func_3(_wgslsmith_add_vec3_u32(~max(arg_2.e, arg_2.c.zwx), ~(~vec3<u32>(83463u, u_input.b.x, var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(106f, 618f, -730f))))))), Struct_3(Struct_2(select(vec3<i32>(u_input.a, arg_1, arg_1), arg_2.a, vec3<bool>(true, arg_2.b.x, true)), !arg_2.b, firstTrailingBit(arg_2.c), arg_2.d, vec3<u32>(8190u, var_0.x, arg_2.c.x)), arg_2, arg_2.d), (_wgslsmith_div_u32(82752u, u_input.d.x) >> (var_0.x % 32u)) | arg_2.c.x).x, !(!(abs(-1i) <= -arg_1)), arg_2.b.x, true);
    return _wgslsmith_f_op_f32(arg_2.d.b - _wgslsmith_div_f32(-359f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(ceil(arg_2.d.b))), -2554f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a + global1.a) - global1.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-538f - global1.a.x), _wgslsmith_f_op_f32(-1405f + -142f)))), -359f);
    var var_0 = _wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(func_7(_wgslsmith_div_u32(u_input.d.x, u_input.b.x), u_input.a, func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.b, global1.b, 443f) + vec4<f32>(global1.b, 1271f, global1.a.x, global1.a.x)), func_1(Struct_3(Struct_2(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), vec4<bool>(false, false, false, true), u_input.b, Struct_1(global1.a, global1.a.x), vec3<u32>(1u, 4294967295u, u_input.d.x)), Struct_2(vec3<i32>(-38874i, u_input.a, u_input.c.x), vec4<bool>(false, true, true, false), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), Struct_1(vec2<f32>(1447f, -295f), -992f), u_input.b.yww), Struct_1(vec2<f32>(global1.b, global1.b), global1.b)), vec2<bool>(false, true), vec4<u32>(u_input.d.x, 14046u, 1u, u_input.b.x), Struct_1(vec2<f32>(global1.b, 1298f), global1.b)), Struct_1(vec2<f32>(global1.b, global1.a.x), -1200f)))))));
    var var_1 = select(!vec4<bool>(true, true, true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true))), select(vec4<bool>(true, select(false, true, true), false, true), vec4<bool>(false, any(vec3<bool>(true, true, true)), func_1(Struct_3(Struct_2(vec3<i32>(1i, u_input.c.x, 0i), vec4<bool>(true, false, false, true), vec4<u32>(u_input.d.x, u_input.d.x, 52751u, u_input.b.x), Struct_1(vec2<f32>(global1.a.x, global1.b), -1624f), vec3<u32>(28197u, u_input.d.x, u_input.b.x)), Struct_2(vec3<i32>(-26162i, u_input.a, 0i), vec4<bool>(true, true, true, false), vec4<u32>(78065u, u_input.b.x, u_input.b.x, 4294967295u), Struct_1(global1.a, global1.b), u_input.b.yxz), Struct_1(vec2<f32>(192f, global1.a.x), global1.b)), vec2<bool>(true, false), u_input.b, Struct_1(global1.a, 180f)).b.x, false), !vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true)), true);
    let var_2 = true;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.x * -226f), _wgslsmith_f_op_f32(f32(-1f) * -997f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - func_1(Struct_3(Struct_2(vec3<i32>(u_input.c.x, 0i, u_input.c.x), vec4<bool>(var_2, false, var_2, true), vec4<u32>(u_input.d.x, 15335u, 40272u, u_input.d.x), Struct_1(vec2<f32>(-1140f, 1001f), global1.b), vec3<u32>(1u, u_input.b.x, 4294967295u)), Struct_2(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec4<bool>(var_2, true, var_2, true), u_input.b, Struct_1(vec2<f32>(-693f, global1.a.x), global1.b), u_input.b.yzw), Struct_1(vec2<f32>(-1538f, -554f), -698f)), vec2<bool>(false, true), vec4<u32>(u_input.b.x, 50260u, u_input.d.x, u_input.b.x), Struct_1(global1.a, 272f)).d.b))), global1.b);
    let var_4 = reverseBits(select(u_input.b, min(~(u_input.b & u_input.b), u_input.b), any(vec2<bool>(true, true)) & any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))));
    global0 = 1i;
    let var_5 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, 1074f, -590f, var_3.b) + vec4<f32>(-838f, -291f, var_3.b, -450f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 516f, -2117f, 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-816f - var_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + global1.b)), -1199f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_7(1u, u_input.a, Struct_2(vec3<i32>(u_input.c.x, -2147483647i, 21560i), vec4<bool>(var_2, var_2, var_1.x, true), var_4, Struct_1(global1.a, var_3.b), u_input.b.zyw))), -755f)))))));
    var var_6 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.x, global1.b) * vec2<f32>(var_3.b, global1.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, var_5.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a.x, var_3.a.x)))))), max(var_6.x, u_input.c.x), ~vec2<u32>(u_input.b.x, ~var_4.x));
}

