struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(0i, 1i, 1i), vec3<i32>(13633i, -29516i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-26067i, 0i, -1i), vec3<i32>(-16454i, 2147483647i, 29518i), vec3<i32>(19509i, -8642i, -34332i), vec3<i32>(-14801i, -2130i, 1i), vec3<i32>(i32(-2147483648), 40415i, -2308i), vec3<i32>(0i, -1i, 16110i), vec3<i32>(46343i, 31478i, i32(-2147483648)), vec3<i32>(10766i, 19711i, -1i));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec3<i32>, 11>();
    let var_0 = Struct_1(654f, ~(vec3<u32>(_wgslsmith_sub_u32(0u, global1.b.x), ~global1.b.x, ~global1.b.x) >> (max(vec3<u32>(global1.b.x, 1u, u_input.a.x) & vec3<u32>(u_input.a.x, 4294967295u, 33904u), max(vec3<u32>(u_input.b.x, 4429u, u_input.b.x), vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u))) % vec3<u32>(32u))), -_wgslsmith_div_i32(1i, global1.e.x), firstTrailingBit(1i ^ u_input.c), ~select(-(vec4<i32>(-42473i, -95767i, 2147483647i, global1.e.x) << (u_input.b % vec4<u32>(32u))), global1.e, vec4<bool>(true, true, true, true)));
    global0 = array<vec3<i32>, 11>();
    global1 = var_0;
    global0 = array<vec3<i32>, 11>();
    return global1.b;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + global1.a)))) * _wgslsmith_f_op_f32(-global1.a)), func_3(), _wgslsmith_dot_vec4_i32(-min(~global1.e, _wgslsmith_mult_vec4_i32(global1.e, global1.e)), countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, reverseBits(-21202i)))), 1i, min(~(-vec4<i32>(22956i, -1i, global1.d, global1.e.x)), _wgslsmith_add_vec4_i32(global1.e ^ global1.e, global1.e)) >> (~vec4<u32>(firstTrailingBit(4751u), 4294967295u, reverseBits(47856u), 1u) % vec4<u32>(32u)));
    let var_0 = Struct_1(global1.a, vec3<u32>(u_input.a.x, 31169u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(27882u, 55406u, global1.b.x)), (vec3<u32>(38905u, 4294967295u, global1.b.x) | vec3<u32>(15744u, 20481u, arg_0)) & vec3<u32>(15046u, u_input.b.x, 19650u))), 0i, 1i, vec4<i32>(48309i, -51613i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, -25954i, -1i), global1.e), 2147483647i));
    let var_1 = reverseBits(_wgslsmith_clamp_vec2_i32(-global1.e.xy, -global1.e.xy ^ ~(var_0.e.xy & var_0.e.zy), abs(vec2<i32>(select(-5468i, u_input.c, true), countOneBits(-12034i)))));
    let var_2 = -1045f;
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(var_1.x, _wgslsmith_sub_i32(var_1.x, firstTrailingBit(countOneBits(var_0.d)))), ~u_input.c, _wgslsmith_mult_i32(0i, ~_wgslsmith_add_i32(-var_0.c, -1i)));
    return vec3<u32>(var_0.b.x, 4294967295u, func_3().x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec3<i32>, 11>();
    global1 = Struct_1(-1026f, func_2(1u), -378i, ~_wgslsmith_sub_i32(1i, 15465i) | _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(global1.c, arg_0.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_1.ywy, vec3<i32>(arg_1.x, -1i, -32759i)), arg_3.e.x)), abs(arg_3.e));
    global1 = Struct_1(arg_3.a, abs(u_input.b.wzy) << (~(~(vec3<u32>(u_input.b.x, 45548u, 7676u) >> (global1.b % vec3<u32>(32u)))) % vec3<u32>(32u)), ~firstLeadingBit(min(-u_input.c, max(global1.c, arg_1.x))), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, u_input.c, -27375i), firstLeadingBit(vec3<i32>(arg_1.x, arg_0.x, 38832i))) & -2147483647i, vec4<i32>(_wgslsmith_sub_i32(~arg_3.d, firstLeadingBit(-1462i)), 1i, -(~(~1i)), _wgslsmith_add_i32(-28183i, firstLeadingBit(38532i))));
    let var_0 = 788f;
    var var_1 = arg_3;
    return arg_3;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    global1 = func_1(vec2<i32>(global1.d, ~(~firstLeadingBit(u_input.c))), vec4<i32>(-(~0i), -2147483647i, 1i, _wgslsmith_mod_i32(u_input.c, min(abs(arg_1.e.x), max(global1.e.x, arg_1.e.x)))), u_input.a.wzx, func_1(global1.e.wz, ~(-abs(arg_1.e)), vec3<u32>(arg_1.b.x, u_input.b.x, abs(~45756u)), func_1(-firstLeadingBit(arg_1.e.yw), -(~vec4<i32>(global1.c, global1.e.x, 7425i, 0i)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.x, u_input.a.x, arg_1.b.x), arg_1.b ^ vec3<u32>(u_input.b.x, global1.b.x, 90554u), global1.b), arg_1)));
    global0 = array<vec3<i32>, 11>();
    var var_0 = _wgslsmith_add_u32(67284u, 10907u);
    var var_1 = Struct_1(-1269f, firstLeadingBit(arg_1.b), -2147483647i, _wgslsmith_dot_vec2_i32(global1.e.xx, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~global1.e.zw, global1.e.zw), arg_1.e.xz)), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-22493i, 2670i, 2147483647i), vec3<i32>(_wgslsmith_div_i32(49185i, 1504i), max(u_input.c, -1i), arg_1.e.x)), 1i, max(arg_1.c, ~0i), arg_1.d));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(712f)), 1f)), max(vec3<u32>(var_1.b.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.b.x, global1.b.x), arg_1.b.x), _wgslsmith_sub_u32(4294967295u, ~var_1.b.x)), _wgslsmith_mod_vec3_u32(~(vec3<u32>(28834u, var_1.b.x, global1.b.x) | vec3<u32>(1u, 4294967295u, global1.b.x)), firstLeadingBit(~u_input.a.yzz))), u_input.c, abs(~u_input.c), ~var_1.e);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<vec3<i32>, 11>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-413f * _wgslsmith_div_f32(-424f, global1.a)), -296f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(global1.a - arg_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -683f, global1.a, -166f), vec4<f32>(1005f, global1.a, global1.a, -219f)), _wgslsmith_div_vec4_f32(vec4<f32>(1745f, global1.a, 347f, -805f), vec4<f32>(global1.a, arg_1.a, -951f, arg_1.a))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a, 606f, -705f, -194f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(316f, global1.a, -1462f, -1780f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, -399f, global1.a, arg_1.a) - vec4<f32>(749f, global1.a, global1.a, global1.a))), arg_0))), !select(!select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(false, false, false, true), true), vec4<bool>(arg_2, all(vec2<bool>(arg_0, arg_0)), false, arg_0), all(vec4<bool>(false, true, arg_2, arg_0)))));
    let var_2 = Struct_1(1000f, arg_1.b, _wgslsmith_mod_i32(arg_1.c, ~(-(i32(-1i) * -1i))), -62747i, -func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_1.a, var_1.x, -603f) * vec4<f32>(global1.a, global1.a, global1.a, var_1.x))), arg_1).e);
    var_0 = arg_2;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2516f;
    global0 = array<vec3<i32>, 11>();
    let var_1 = global1.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(func_5(select(!any(vec2<bool>(true, true)), true, true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, -1053f, -895f), vec4<f32>(455f, global1.a, global1.a, global1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, 606f, -703f))), func_1(global1.e.zy, vec4<i32>(global1.c, 0i, global1.c, global1.e.x), min(vec3<u32>(global1.b.x, u_input.b.x, u_input.a.x), u_input.b.zzw), Struct_1(global1.a, vec3<u32>(29888u, 4294967295u, u_input.b.x), -69550i, u_input.c, global1.e))), select(~u_input.c < countOneBits(global1.d), true, all(vec2<bool>(true, true))))), ~u_input.b.zxy, i32(-1i) * -_wgslsmith_add_i32(~u_input.c, _wgslsmith_mod_i32(-19408i, u_input.c)), _wgslsmith_sub_i32(~(-u_input.c), countOneBits(global1.c)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-188f)), -1128f, _wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(global1.a + -394f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, global1.a, global1.a, -377f), vec4<f32>(global1.a, 550f, global1.a, -1022f), vec4<bool>(false, true, false, true))))), func_4(vec4<f32>(-557f, _wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_div_f32(-2341f, -1160f), _wgslsmith_f_op_f32(min(global1.a, global1.a))), func_1(~global1.e.wy, -vec4<i32>(u_input.c, u_input.c, u_input.c, global1.e.x), u_input.a.zwy, func_1(vec2<i32>(1i, 1i), vec4<i32>(u_input.c, -1i, 3844i, -16712i), vec3<u32>(1u, 13417u, 71499u), Struct_1(606f, vec3<u32>(0u, 4294967295u, 3146u), u_input.c, -2147483647i, vec4<i32>(-2147483647i, -2147483647i, global1.d, -25146i)))))).e);
    var var_2 = max(~(~_wgslsmith_mod_u32(72692u, u_input.b.x)) ^ (global1.b.x >> (func_4(vec4<f32>(global1.a, global1.a, 511f, 1268f), func_1(vec2<i32>(2147483647i, -1i), vec4<i32>(global1.e.x, 2147483647i, global1.e.x, u_input.c), vec3<u32>(19405u, u_input.b.x, global1.b.x), Struct_1(1964f, vec3<u32>(global1.b.x, 25356u, u_input.a.x), global1.d, -26698i, vec4<i32>(38912i, 0i, -2147483647i, 31355i)))).b.x % 32u)), ~u_input.a.x);
    let var_3 = 2147483647i;
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_add_vec3_u32(global1.b, u_input.a.xww), global1.d, ~(-(-u_input.c | 2147483647i)), countOneBits(_wgslsmith_div_vec4_i32(global1.e, global1.e)));
    global0 = array<vec3<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1882f)), 1040f, -867f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(step(global1.a, global1.a)), 967f, -1167f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1420f, global1.a, 1311f, global1.a))))), u_input.b.xz ^ vec2<u32>(~(global1.b.x ^ 1u), firstLeadingBit(11851u)), _wgslsmith_mod_vec4_u32(countOneBits(u_input.b), _wgslsmith_clamp_vec4_u32(~(~u_input.a), u_input.a, u_input.b)));
}

