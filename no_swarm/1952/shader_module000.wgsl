struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(409f, 932f, 277f, 1152f, -589f, -664f, -3391f, -161f, -353f, 252f, -503f, 245f, 703f, -668f, 143f, 273f, 421f, 714f, 1386f, -1000f, 1000f, -219f, -597f, -1209f, -503f, -2011f, -752f, -191f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true, vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<f32>(-752f, -2070f, 566f), vec2<u32>(20453u, 20230u), vec4<i32>(-19564i, -39882i, 0i, 34108i)), Struct_1(false, vec4<u32>(4294967295u, 1u, 1u, 20990u), vec3<f32>(-977f, 1000f, -629f), vec2<u32>(4294967295u, 34944u), vec4<i32>(17188i, -5998i, 0i, -61839i)), Struct_1(false, vec4<u32>(4294967295u, 15932u, 29426u, 1u), vec3<f32>(1430f, 1234f, -1278f), vec2<u32>(0u, 57503u), vec4<i32>(2147483647i, -34869i, -1i, 16830i)), Struct_1(true, vec4<u32>(0u, 37593u, 7250u, 0u), vec3<f32>(-1452f, 397f, -1335f), vec2<u32>(19878u, 0u), vec4<i32>(22308i, 15365i, -69079i, -20636i)), Struct_1(true, vec4<u32>(107705u, 1u, 1u, 0u), vec3<f32>(-1000f, -1118f, 183f), vec2<u32>(7498u, 4294967295u), vec4<i32>(0i, -15334i, 2147483647i, 10746i)), Struct_1(true, vec4<u32>(1u, 29725u, 8724u, 0u), vec3<f32>(241f, 351f, 185f), vec2<u32>(49145u, 1u), vec4<i32>(-9065i, -1i, 2016i, 2147483647i)), Struct_1(true, vec4<u32>(33453u, 21747u, 4294967295u, 4117u), vec3<f32>(3246f, -816f, -1178f), vec2<u32>(1u, 1u), vec4<i32>(-1i, -8632i, 22297i, -3281i)), Struct_1(true, vec4<u32>(66889u, 0u, 102870u, 4294967295u), vec3<f32>(473f, -511f, 203f), vec2<u32>(4294967295u, 86890u), vec4<i32>(1i, 0i, 0i, 35410i)), Struct_1(false, vec4<u32>(69989u, 28187u, 5795u, 112347u), vec3<f32>(-402f, 483f, -1316f), vec2<u32>(37031u, 0u), vec4<i32>(15359i, -1i, 78365i, i32(-2147483648))));

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = abs(~u_input.a.x);
    var var_1 = global1[_wgslsmith_index_u32(~arg_0.b.x ^ 0u, 9u)];
    var var_2 = arg_1;
    let var_3 = -_wgslsmith_dot_vec2_i32(var_1.e.zx, firstLeadingBit(arg_1.e.xw));
    global1 = array<Struct_1, 9>();
    return var_1.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(all(vec3<bool>(true, true, true)), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(7942u, 4294967295u, u_input.d.x, u_input.d.x))), u_input.d.x & 0u, 7256u, func_3(Struct_1(false, u_input.b, vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], -219f, -1204f), vec2<u32>(0u, u_input.b.x), vec4<i32>(2147483647i, u_input.a.x, 1i, -28011i)), global1[_wgslsmith_index_u32(~u_input.b.x, 9u)])) | ~vec4<u32>(u_input.d.x, ~u_input.b.x, abs(u_input.c), ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-415f, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-502f, global0[_wgslsmith_index_u32(0u, 28u)], 248f), vec3<f32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)]))))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -716f, 512f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(32978u, 28u)], 1540f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(564f, global0[_wgslsmith_index_u32(76473u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)])))))), min(~vec2<u32>(firstTrailingBit(13969u), 0u), vec2<u32>(~(~61953u), _wgslsmith_clamp_u32(u_input.b.x | u_input.b.x, u_input.d.x, 17635u))), vec4<i32>(-1i, ~(u_input.a.x & u_input.a.x), -1i, u_input.a.x));
    let var_1 = Struct_1(select(var_0.a, (u_input.d.x >> (16046u % 32u)) == countOneBits(u_input.b.x), var_0.a) != true, _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, ~_wgslsmith_sub_vec4_u32(vec4<u32>(69251u, 25467u, 4294967295u, 18542u), u_input.b)), var_0.c, select(_wgslsmith_clamp_vec2_u32(var_0.d, var_0.b.wy, vec2<u32>(40796u, var_0.d.x)) >> (reverseBits(~var_0.d) % vec2<u32>(32u)), var_0.d & ~var_0.b.wz, true), var_0.e);
    var var_2 = var_0;
    global0 = array<f32, 28>();
    var var_3 = vec2<bool>(true, false);
    return var_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = func_2();
    let var_1 = firstTrailingBit(~(~(~4387u))) << (~(4294967295u ^ min(var_0.b.x, ~32227u)) % 32u);
    global0 = array<f32, 28>();
    var var_2 = min((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 56096u, 55777u), firstTrailingBit(arg_0.wxx), u_input.b.yyy) << ((vec3<u32>(var_0.b.x, var_0.d.x, var_0.d.x) & _wgslsmith_div_vec3_u32(var_0.b.yww, vec3<u32>(4294967295u, 0u, arg_0.x))) % vec3<u32>(32u))) >> (u_input.b.zxy % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(var_1, firstTrailingBit(arg_1.b.x)), ~_wgslsmith_dot_vec2_u32(arg_1.b.wy, vec2<u32>(9571u, var_1)), ~(~arg_0.x)) & ~(~(~arg_1.b.zyy)));
    let var_3 = min(4294967295u >> (func_2().d.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, arg_1.b.x)), vec2<u32>(var_0.d.x, arg_1.d.x) << (arg_1.b.wx % vec2<u32>(32u))), ~u_input.c) >> (2491u % 32u));
    return _wgslsmith_f_op_vec3_f32(-arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    global2 = 826i;
    var var_1 = u_input.b.xzw;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1263f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), arg_0.c.x, false)), _wgslsmith_div_f32(-364f, 264f)))) + 520f);
    return func_2();
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    global2 = -55144i;
    global0 = array<f32, 28>();
    let var_0 = arg_2;
    var var_1 = false;
    global1 = array<Struct_1, 9>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec4<i32>(-firstTrailingBit(27559i), u_input.a.x, ~(u_input.a.x ^ u_input.a.x), max(-2147483647i, 36873i) << (_wgslsmith_div_u32(0u, u_input.c) % 32u)), _wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(0i, -2147483647i, -42083i, u_input.a.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), !(258f >= _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(15498u, 28u)] + -346f))), func_4(Struct_1(any(vec4<bool>(true, false, true, true)), u_input.b | u_input.b, _wgslsmith_f_op_vec3_f32(func_1(u_input.b, Struct_1(false, u_input.b, vec3<f32>(1187f, -250f, 331f), vec2<u32>(1u, 26874u), vec4<i32>(-13592i, 11042i, u_input.a.x, u_input.a.x)))), ~(~vec2<u32>(59464u, 1u)), -abs(vec4<i32>(u_input.a.x, 0i, -34211i, u_input.a.x))), func_2(), _wgslsmith_mult_i32(1i, -14979i), u_input.a.x), Struct_1(all(vec3<bool>(-33620i < u_input.a.x, true, false)), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(20525u, 28u)], 350f), vec3<f32>(global0[_wgslsmith_index_u32(45520u, 28u)], 778f, 1498f)))), ~firstTrailingBit(countOneBits(u_input.b.xw)), ~min(select(vec4<i32>(19352i, u_input.a.x, -2147483647i, -6376i), vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x), true), select(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 8565i, u_input.a.x, 6385i), vec4<bool>(true, true, true, false)))), _wgslsmith_mult_vec2_u32(u_input.d, ~((vec2<u32>(5289u, u_input.c) ^ vec2<u32>(u_input.d.x, 13355u)) | ~vec2<u32>(u_input.d.x, 1u))));
    global2 = 0i;
    let var_1 = Struct_1(func_4(Struct_1(_wgslsmith_f_op_f32(step(1257f, global0[_wgslsmith_index_u32(u_input.d.x, 28u)])) < global0[_wgslsmith_index_u32(104626u, 28u)], u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)]), global0[_wgslsmith_index_u32(var_0, 28u)], -1402f), u_input.d, vec4<i32>(func_4(Struct_1(true, vec4<u32>(0u, 56768u, 5532u, 0u), vec3<f32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], -589f), u_input.b.xx, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(false, vec4<u32>(u_input.c, 0u, var_0, 4294967295u), vec3<f32>(1000f, global0[_wgslsmith_index_u32(107838u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), u_input.b.xx, vec4<i32>(42868i, -44141i, u_input.a.x, 8307i)), u_input.a.x, -1i).e.x, u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), global1[_wgslsmith_index_u32(~func_5(abs(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 28646i)), func_2(), global1[_wgslsmith_index_u32(42761u, 9u)], ~vec2<u32>(u_input.b.x, 0u)), 9u)], -2147483647i, u_input.a.x).a, _wgslsmith_add_vec4_u32(vec4<u32>(22656u, 0u, 54146u, countOneBits(var_0)), vec4<u32>(firstLeadingBit(14240u), 41383u, 1u, 61507u >> (u_input.b.x % 32u)) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(10726u, 28u)], 216f, global0[_wgslsmith_index_u32(1u, 28u)]) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(455f, 1740f, global0[_wgslsmith_index_u32(var_0, 28u)])))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-972f, global0[_wgslsmith_index_u32(u_input.c, 28u)], -1515f)), vec3<f32>(global0[_wgslsmith_index_u32(var_0, 28u)], 1000f, -880f))))), ~(~(~u_input.d)), vec4<i32>(2147483647i, 74245i, u_input.a.x | ~(-1i), u_input.a.x));
    let var_2 = func_2().c.x;
    var var_3 = !(!(max(select(var_0, 61101u, var_1.a), _wgslsmith_mult_u32(var_0, u_input.c)) != ~u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_1.c.zz * _wgslsmith_f_op_vec2_f32(-var_1.c.yy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(430f, _wgslsmith_f_op_f32(1000f + var_2), var_1.c.x, -444f)))), var_1.c.x, var_1.c);
}

