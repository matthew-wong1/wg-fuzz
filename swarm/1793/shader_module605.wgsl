struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: u32 = 9408u;

var<private> global2: vec3<f32>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec2<u32>(29621u, 1u)), 316u, Struct_1(vec2<u32>(4294967295u, 32797u)), -175f);

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<i32>(-20399i, 0i, -9237i), false, Struct_1(vec2<u32>(35049u, 4294967295u))), Struct_2(vec3<i32>(-72170i, -40479i, 1i), true, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec3<i32>(2147483647i, -9749i, -11511i), false, Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(vec3<i32>(i32(-2147483648), 28633i, -1i), true, Struct_1(vec2<u32>(29291u, 0u))), Struct_2(vec3<i32>(i32(-2147483648), 1i, 0i), true, Struct_1(vec2<u32>(58117u, 44981u))), Struct_2(vec3<i32>(1i, -15502i, -43447i), true, Struct_1(vec2<u32>(0u, 1u))), Struct_2(vec3<i32>(5786i, i32(-2147483648), 8581i), true, Struct_1(vec2<u32>(39249u, 22802u))), Struct_2(vec3<i32>(0i, 28020i, -1i), false, Struct_1(vec2<u32>(4294967295u, 35673u))), Struct_2(vec3<i32>(46633i, 26875i, 1i), false, Struct_1(vec2<u32>(1u, 1u))), Struct_2(vec3<i32>(-40198i, -29645i, -4650i), false, Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(vec3<i32>(-3018i, 2147483647i, 57451i), true, Struct_1(vec2<u32>(47258u, 4294967295u))), Struct_2(vec3<i32>(i32(-2147483648), 49403i, 0i), false, Struct_1(vec2<u32>(64612u, 1u))), Struct_2(vec3<i32>(1i, 1i, -21227i), false, Struct_1(vec2<u32>(0u, 37421u))), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), true, Struct_1(vec2<u32>(39162u, 1u))), Struct_2(vec3<i32>(-58497i, i32(-2147483648), -1i), true, Struct_1(vec2<u32>(80120u, 37484u))), Struct_2(vec3<i32>(1i, 35317i, 0i), false, Struct_1(vec2<u32>(1u, 0u))), Struct_2(vec3<i32>(2147483647i, 2147483647i, 7910i), true, Struct_1(vec2<u32>(57944u, 4294967295u))), Struct_2(vec3<i32>(-5470i, -9230i, -11346i), true, Struct_1(vec2<u32>(2336u, 19945u))), Struct_2(vec3<i32>(-4290i, 61879i, -13417i), true, Struct_1(vec2<u32>(4294967295u, 61144u))), Struct_2(vec3<i32>(0i, 29250i, 0i), false, Struct_1(vec2<u32>(3127u, 25103u))), Struct_2(vec3<i32>(54532i, 17787i, -22261i), true, Struct_1(vec2<u32>(31604u, 4294967295u))), Struct_2(vec3<i32>(32744i, 1i, 1i), true, Struct_1(vec2<u32>(8043u, 10731u))), Struct_2(vec3<i32>(-19793i, 2147483647i, i32(-2147483648)), true, Struct_1(vec2<u32>(33372u, 29329u))), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 6789i), true, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec3<i32>(-1242i, -40492i, -5610i), true, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec3<i32>(-3001i, -44441i, -40249i), true, Struct_1(vec2<u32>(14298u, 36427u))), Struct_2(vec3<i32>(-32579i, 14272i, 2147483647i), false, Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(vec3<i32>(i32(-2147483648), -44181i, i32(-2147483648)), false, Struct_1(vec2<u32>(17553u, 29729u))), Struct_2(vec3<i32>(34738i, 0i, -5048i), true, Struct_1(vec2<u32>(50163u, 4294967295u))), Struct_2(vec3<i32>(-48713i, 0i, 2147483647i), true, Struct_1(vec2<u32>(58979u, 4294967295u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> vec2<i32> {
    return u_input.b.yx;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = vec3<u32>(countOneBits(~u_input.a.x), 0u, ~global3.a.a.x);
    var var_1 = ~max(u_input.e, func_3(-500f, vec4<bool>(false, false, false, false), 1i, all(vec3<bool>(true, true, false)))) & _wgslsmith_mult_vec2_i32(u_input.c.zw, firstLeadingBit(-vec2<i32>(-2147483647i, arg_0)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.b, 3u)] * global3.d), -448f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global3.b, 3u)], global3.d, -262f), vec3<f32>(global2.x, 396f, global2.x))))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global3.d)), 1100f, _wgslsmith_f_op_f32(-536f * 1594f)) - vec3<f32>(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.x, 3u)], 626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d * global3.d) - _wgslsmith_f_op_f32(-437f - 915f)))));
    let var_2 = Struct_2(~abs(_wgslsmith_div_vec3_i32(u_input.b & vec3<i32>(0i, u_input.d, -2147483647i), firstTrailingBit(u_input.b))), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true), ~global3.a.a.x > ~global3.b)), Struct_1(_wgslsmith_clamp_vec2_u32(select(firstTrailingBit(global3.a.a), ~global3.c.a, true), ~abs(u_input.a), countOneBits(vec2<u32>(u_input.a.x, 27351u)))));
    let var_3 = ~(-51495i);
    return Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global3.a.a.x, var_0.x), var_2.c.a.x | 4294967295u), ~_wgslsmith_mult_vec2_u32(var_2.c.a, vec2<u32>(33277u, 85938u)))), var_2.c.a.x, Struct_1(~(~(~u_input.a))), global0[_wgslsmith_index_u32(var_0.x, 3u)]);
}

fn func_1() -> Struct_1 {
    global3 = Struct_3(Struct_1(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 38812u), 20153u)), 4294967295u, global3.a, global3.d);
    let var_0 = 348f;
    var var_1 = func_2(-1i);
    global1 = _wgslsmith_clamp_u32(global3.b, func_2(0i).a.a.x, ~(4294967295u << (var_1.a.a.x % 32u)));
    let var_2 = global4[_wgslsmith_index_u32(70410u, 30u)];
    return func_2(countOneBits(~_wgslsmith_clamp_i32(-2147483647i, var_2.a.x, func_3(-832f, vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), -16279i, var_2.b).x))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-458f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) - global0[_wgslsmith_index_u32(4294967295u, 3u)])))));
    global3 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_add_u32(~global3.b, global3.b), min(_wgslsmith_div_u32(0u, global3.b), 0u))), ~1u, func_1(), _wgslsmith_f_op_f32(-global3.d));
    let var_0 = vec3<i32>(_wgslsmith_add_i32(2147483647i, ~1i), u_input.b.x, -u_input.c.x);
    let var_1 = abs(-30055i);
    global4 = array<Struct_2, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -261f), global3.d)) - global3.d), _wgslsmith_f_op_f32(round(1957f)), global0[_wgslsmith_index_u32(u_input.a.x | ((global3.c.a.x >> (1u % 32u)) ^ _wgslsmith_sub_u32(58749u, global3.c.a.x)), 3u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1765f, 912f) * vec3<f32>(-1094f, global2.x, global3.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, -1000f, -565f) + vec3<f32>(-618f, global2.x, -1578f)))))));
}

