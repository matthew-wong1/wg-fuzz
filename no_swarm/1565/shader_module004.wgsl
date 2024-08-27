struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-2310f)), _wgslsmith_f_op_f32(f32(-1f) * -126f), true))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(125f + -156f))))))));
    let var_1 = false | !select(~4294967295u > u_input.a.x, true, select(true, true, true));
    var var_2 = vec4<f32>(-496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(1354f * -224f), 224f);
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), global0[_wgslsmith_index_u32(reverseBits(select(62658u << (u_input.a.x % 32u), u_input.a.x, true)), 15u)]);
    return vec4<bool>(all(!vec2<bool>(-320f >= var_0, var_1 | false)), var_1, true, !(!any(!vec2<bool>(var_1, false))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    var var_0 = 2726f;
    let var_1 = vec2<bool>(true, true);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-531f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-710f)), -337f)));
    global0 = array<vec2<u32>, 15>();
    return Struct_2(~(~1i), reverseBits(arg_1.b), select(vec3<bool>(false, any(!vec4<bool>(true, false, arg_0.b.x, arg_1.d)), all(select(arg_1.c, arg_1.c, arg_1.c))), arg_1.c, !all(vec3<bool>(true, false, true))), any(select(select(!vec4<bool>(true, var_1.x, arg_1.c.x, arg_0.b.x), !vec4<bool>(true, arg_2.b.x, arg_0.b.x, false), select(vec4<bool>(false, true, false, arg_0.b.x), vec4<bool>(arg_2.b.x, false, var_1.x, var_1.x), arg_0.b.x)), func_3(), select(select(vec4<bool>(var_1.x, true, var_1.x, arg_0.b.x), vec4<bool>(arg_1.d, true, false, true), false), vec4<bool>(arg_0.b.x, var_1.x, arg_0.b.x, var_1.x), false))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(2263f, 2607f));
    global0 = array<vec2<u32>, 15>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)));
    let var_2 = 1u;
    global0 = array<vec2<u32>, 15>();
    return -7216i;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    global0 = array<vec2<u32>, 15>();
    let var_0 = ~(~func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -652f, 937f)), func_2(Struct_1(-98585i, vec2<bool>(true, false), 2147483647i, vec4<i32>(-2147483647i, 2147483647i, -2383i, -1i)), Struct_2(-28680i, u_input.a, vec3<bool>(true, true, false), true), Struct_1(1i, vec2<bool>(true, false), 25859i, vec4<i32>(-1i, -2147483647i, 1i, -5242i)))) >> (u_input.a.x % 32u));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32((vec4<i32>(var_0, var_0, var_0, -33287i) & (vec4<i32>(var_0, var_0, var_0, var_0) << (vec4<u32>(0u, 95138u, 97979u, u_input.a.x) % vec4<u32>(32u)))) >> (_wgslsmith_add_vec4_u32(u_input.a, ~u_input.a) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 37303i, var_0, 0i), vec4<i32>(24555i, var_0, 11714i, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0, 27882i, var_0, var_0), vec4<i32>(var_0, var_0, -1i, var_0)))), !vec2<bool>(all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(step(237f, arg_0.x)) > _wgslsmith_div_f32(574f, 2308f)), var_0, vec4<i32>(~(~func_2(Struct_1(var_0, vec2<bool>(false, true), -2147483647i, vec4<i32>(0i, var_0, 0i, -59463i)), Struct_2(-1i, u_input.a, vec3<bool>(false, false, true), true), Struct_1(16893i, vec2<bool>(true, true), var_0, vec4<i32>(var_0, -2594i, var_0, 1i))).a), var_0, max(_wgslsmith_mod_i32(reverseBits(-5069i), var_0), -var_0 & 29937i), (i32(-1i) * -56076i) & firstTrailingBit(2147483647i)));
    return Struct_1(-2147483647i, !vec2<bool>(var_1.b.x, true), -28216i, vec4<i32>(-_wgslsmith_div_i32(i32(-1i) * -77378i, var_0), _wgslsmith_mult_i32(var_1.a, var_1.a), ~(~(-var_0)), var_0));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = func_2(Struct_1(arg_0.d.x, !func_2(func_1(vec4<f32>(124f, -213f, arg_2.x, -201f), u_input.a.ywz), Struct_2(-34582i, vec4<u32>(u_input.a.x, 1u, 69983u, u_input.a.x), vec3<bool>(true, false, arg_0.b.x), false), func_1(vec4<f32>(arg_2.x, arg_2.x, 243f, arg_2.x), vec3<u32>(u_input.a.x, u_input.a.x, 37479u))).c.xy, ~(-_wgslsmith_mod_i32(arg_3.x, -60467i)), select(~(arg_0.d ^ vec4<i32>(-1i, 1i, 0i, -40014i)), ~(-arg_0.d), vec4<bool>(func_2(arg_0, Struct_2(arg_3.x, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u), vec3<bool>(false, true, arg_1), false), arg_0).d, 20168u <= u_input.a.x, !arg_0.b.x, all(vec4<bool>(arg_0.b.x, arg_1, true, false))))), Struct_2(i32(-1i) * -_wgslsmith_div_i32(46742i, arg_0.a), u_input.a, vec3<bool>(all(vec2<bool>(arg_0.b.x, true)), false, any(!vec4<bool>(true, arg_1, arg_0.b.x, arg_0.b.x))), any(func_2(func_1(vec4<f32>(arg_2.x, -209f, arg_2.x, arg_2.x), u_input.a.wyz), func_2(arg_0, Struct_2(arg_3.x, u_input.a, vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.x), arg_0), func_1(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, 373f), vec3<u32>(u_input.a.x, 0u, u_input.a.x))).c)), arg_0);
    let var_1 = func_2(arg_0, func_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))), var_0.b.xyx), Struct_2(arg_3.x, vec4<u32>(_wgslsmith_mult_u32(41228u, 103418u), ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 63770u, var_0.b.x), u_input.a.xzz), u_input.a.x), vec3<bool>(all(vec3<bool>(var_0.c.x, arg_0.b.x, false)), false | arg_0.b.x, func_2(Struct_1(-38599i, vec2<bool>(false, false), -20371i, arg_0.d), Struct_2(-1i, u_input.a, var_0.c, false), arg_0).c.x), !arg_0.b.x), arg_0), arg_0);
    var_0 = var_1;
    global0 = array<vec2<u32>, 15>();
    var var_2 = vec2<bool>(false, all(var_0.c.xx));
    return ~var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(u_input.a.x, func_5(func_1(vec4<f32>(-905f, -821f, 305f, -1516f), u_input.a.ywx), select(false, true, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1139f, -598f)), vec2<i32>(-19583i, 0i)))), 15u)];
    var var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-458f * -570f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1568f, -1532f))), ~max(u_input.a.wyw, u_input.a.wxw));
    var var_2 = Struct_2(abs(func_1(vec4<f32>(1934f, -256f, 1440f, 839f), vec3<u32>(2483u, var_0.x, 0u)).a >> (var_0.x % 32u)) | _wgslsmith_mult_i32(i32(-1i) * -10523i, _wgslsmith_clamp_i32(68055i, -2147483647i, i32(-1i) * -2147483647i)), min(vec4<u32>(~(~u_input.a.x), abs(_wgslsmith_add_u32(55779u, var_0.x)), 79557u, _wgslsmith_div_u32(var_0.x, _wgslsmith_mult_u32(0u, var_0.x))), u_input.a), !select(select(vec3<bool>(var_1.b.x, var_1.b.x, false), func_2(Struct_1(var_1.d.x, var_1.b, var_1.c, var_1.d), Struct_2(-1i, u_input.a, vec3<bool>(var_1.b.x, true, var_1.b.x), false), Struct_1(var_1.a, var_1.b, var_1.d.x, vec4<i32>(-1i, var_1.c, var_1.d.x, 26716i))).c, any(vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x))), vec3<bool>(true, true, true), !(!vec3<bool>(var_1.b.x, false, true))), 1i < var_1.c);
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2357f)) * 1f) - -456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1772f)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1108f, -298f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(floor(-822f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(~1i, -46120i), vec2<i32>(var_2.a, var_2.a)));
}

