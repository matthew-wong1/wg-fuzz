struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(10639i, -1i, -1i, -1i), vec4<i32>(-9065i, 0i, 34581i, -1038i), vec4<i32>(-1i, 0i, -24647i, 20891i), vec4<i32>(-57217i, 4014i, -8326i, 0i), vec4<i32>(11260i, 1023i, i32(-2147483648), 55878i), vec4<i32>(2147483647i, i32(-2147483648), 85600i, 0i), vec4<i32>(1i, 2147483647i, -76654i, -40417i), vec4<i32>(i32(-2147483648), 0i, 41354i, 2147483647i), vec4<i32>(-37266i, 0i, -5363i, -1i), vec4<i32>(35605i, 17606i, -1i, -4425i), vec4<i32>(-29920i, -47292i, -1i, 54162i), vec4<i32>(1i, 2147483647i, -18945i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -10252i, -34305i), vec4<i32>(43933i, 2147483647i, -31378i, 1i), vec4<i32>(0i, 7549i, 67036i, 2147483647i), vec4<i32>(-1i, -41783i, -53939i, -45150i), vec4<i32>(0i, 0i, -14166i, 1i), vec4<i32>(-31290i, 9214i, 55439i, 1i), vec4<i32>(30621i, 2147483647i, -4135i, i32(-2147483648)));

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(788f, -978f, 466f), vec2<f32>(-1668f, 2500f));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-366f, -192f, -512f), vec2<f32>(-739f, -661f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global3.a))) + global2.a))), global3.a.zz);
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~(~0u), 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, arg_2), arg_2), 337u)), reverseBits(~(~4294967295u)) ^ arg_2);
    global2 = var_0;
    global0 = array<vec4<i32>, 19>();
    var var_2 = all(vec4<bool>(select(false, true, true), all(vec4<bool>(true, true, false, false)), false, true)) | ((_wgslsmith_mod_u32(reverseBits(23992u), 1431u) == _wgslsmith_mod_u32(var_1, var_1)) || false);
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(421f, global2.a.x)))), _wgslsmith_f_op_f32(-global3.a.x));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(max(-2029f, arg_0.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, -1070f))))), -1000f);
    var var_1 = 13382u;
    global0 = array<vec4<i32>, 19>();
    var var_2 = arg_0;
    var var_3 = Struct_1(vec3<f32>(1327f, _wgslsmith_f_op_vec2_f32(func_3(abs(i32(-1i) * -1i), -528f, firstTrailingBit(4294967295u))).x, -1286f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(arg_0.a.zx))))));
    return var_3.a.zy;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1212f, global2.b.x, -128f) + _wgslsmith_f_op_vec3_f32(floor(arg_0.a))), _wgslsmith_f_op_vec2_f32(func_3(-34372i, global2.b.x, abs(47357u)))))));
    global0 = array<vec4<i32>, 19>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1817f);
    var var_1 = Struct_1(global2.a, vec2<f32>(arg_0.a.x, var_0.a.x));
    let var_2 = arg_1;
    return var_0;
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 19>();
    var var_0 = 23154u;
    var_0 = 1958u;
    var var_1 = func_2(func_2(func_2(arg_2, arg_1), _wgslsmith_sub_vec3_i32(~arg_1, _wgslsmith_div_vec3_i32(max(vec3<i32>(1i, arg_1.x, 0i), vec3<i32>(arg_1.x, arg_1.x, -1i)), max(vec3<i32>(u_input.c.x, 2147483647i, -1i), vec3<i32>(-35686i, 2147483647i, 0i))))), min(vec3<i32>(-91768i, firstLeadingBit(u_input.c.x), 2147483647i), arg_1));
    let var_2 = arg_2;
    return var_2;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = -35968i;
    global0 = array<vec4<i32>, 19>();
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a)), func_5((u_input.b < -2147483647i) | true, _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(0i), u_input.b, -u_input.a.x), select(vec3<i32>(u_input.c.x, 0i, -32565i), _wgslsmith_mult_vec3_i32(vec3<i32>(-14759i, 25505i, u_input.b), vec3<i32>(u_input.b, u_input.c.x, 1i)), vec3<bool>(true, true, true))), func_5(false, min(~vec3<i32>(12126i, u_input.c.x, u_input.a.x), vec3<i32>(u_input.c.x, 1i, 1i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1517f, 355f)), _wgslsmith_f_op_vec2_f32(-global2.b)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-36950i, -47251i, -26985i, 0i), min(global0[_wgslsmith_index_u32(64293u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]))), _wgslsmith_mult_i32(abs(-18260i << (arg_0.x % 32u)), ~(~u_input.a.x))).a.zz);
    let var_1 = !(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), 0u > arg_0.x)));
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f * _wgslsmith_f_op_f32(floor(-1575f)))));
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(410f * func_2(Struct_1(arg_1.a, arg_1.a.xz), vec3<i32>(u_input.b, u_input.c.x, u_input.a.x)).a.x)), -863f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(arg_1.a, arg_1.b))).x)));
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_6(~vec4<u32>(16302u, 0u, 33992u, 61799u), func_5(false, vec3<i32>(arg_0, 23028i, arg_0), func_2(Struct_1(global2.a, global2.b), vec3<i32>(-40267i, 0i, -55051i)), arg_0))))), _wgslsmith_f_op_vec2_f32(ceil(global2.b)));
    var var_1 = -1026f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(exp2(global2.a.x))) - _wgslsmith_f_op_f32(-global2.b.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-592f * _wgslsmith_f_op_vec3_f32(func_6(vec4<u32>(86016u, 4294967295u, 4294967295u, 14962u), var_0)).x), func_2(func_5(true, vec3<i32>(2147483647i, arg_0, -1i), var_0, u_input.c.x), abs(-vec3<i32>(-39834i, u_input.c.x, u_input.a.x))).b.x));
    let var_2 = Struct_1(vec3<f32>(275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, 3217f)) - _wgslsmith_f_op_f32(-var_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.b.x) + -204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a.x))) + var_0.a.x)), _wgslsmith_f_op_vec2_f32(func_5(any(vec3<bool>(false, true, true)), vec3<i32>(~(-2147483647i), u_input.b & -42897i, firstLeadingBit(u_input.a.x)), var_0, ~min(68623i, -2147483647i)).a.yy + _wgslsmith_f_op_vec2_f32(abs(global3.a.zx))));
    var var_3 = var_0;
    return -302f;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = array<vec4<i32>, 19>();
    let var_0 = !select(select(vec2<bool>(true, all(vec3<bool>(true, false, true))), vec2<bool>(all(vec2<bool>(false, true)), u_input.a.x > -37203i), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), !vec2<bool>(true, all(vec4<bool>(false, true, false, true))));
    return func_5(var_0.x, -(~vec3<i32>(-u_input.a.x, reverseBits(u_input.c.x), ~53526i)), func_5(true, -vec3<i32>(min(1i, u_input.c.x), _wgslsmith_add_i32(18329i, u_input.c.x), -5812i), func_2(func_5(true, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -21658i), vec3<i32>(u_input.a.x, -40572i, u_input.c.x)), Struct_1(arg_1.a, global2.b), u_input.c.x << (4294967295u % 32u)), ~(~vec3<i32>(-2147483647i, 1i, 18316i))), -8209i), -(-u_input.b >> (79005u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    var var_1 = func_7(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.x))), _wgslsmith_div_f32(383f, _wgslsmith_f_op_f32(global3.a.x - global3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, global2.b.x) - -991f), _wgslsmith_f_op_f32(abs(global3.a.x))), vec4<f32>(847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x)) - _wgslsmith_f_op_f32(round(466f))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(global3.a, vec2<f32>(-1432f, 1000f)))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.a.x))))), func_5(true, vec3<i32>(max(1i, firstLeadingBit(1i)), 48106i | u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, u_input.a.x), vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.b, 57843i, u_input.c.x))), func_2(func_5(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.c.x), vec3<i32>(-53319i, 2147483647i, 507i), vec3<i32>(u_input.b, -62991i, 0i)), Struct_1(global3.a, vec2<f32>(global2.b.x, global2.a.x)), u_input.a.x), abs(~vec3<i32>(-1i, u_input.b, u_input.b))), ~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(-499f + global2.a.x)))));
    let var_2 = !any(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)) | (241f <= global3.a.x);
    global2 = func_7(vec4<f32>(var_1.a.x, 1029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(318f))), -206f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(589f, var_1.b.x, -1707f))))), _wgslsmith_f_op_vec2_f32(global3.b * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -134f), var_1.b.x))), global2.b.x);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -433f)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, global3.a.x, 245f, var_1.a.x)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, _wgslsmith_div_f32(-1468f, global2.b.x), _wgslsmith_f_op_f32(-var_1.b.x)))), ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(55588u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u))));
}

