struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-1442i, -1i, -1i, -9154i, -1i, 0i, 2147483647i, 1i, 2147483647i, 1i, -21189i, i32(-2147483648), -1i, 1i, 2147483647i, -29300i, -1i);

var<private> global1: f32 = 1313f;

var<private> global2: array<i32, 26> = array<i32, 26>(2147483647i, -16372i, 1i, i32(-2147483648), -72179i, -21306i, -28046i, -1i, 0i, 1i, 19113i, 3222i, -28926i, 12488i, -29422i, -1i, i32(-2147483648), 23077i, 0i, -5243i, -1i, 0i, i32(-2147483648), 38463i, -31317i, 15664i);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(1i, 1i, i32(-2147483648), 45988i), 41008u), Struct_1(vec4<i32>(-12348i, 35760i, -2768i, 46535i), 1u), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -6173i), 0u), Struct_1(vec4<i32>(2472i, -1i, -4113i, 2147483647i), 14238u), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, 1i), 0u), Struct_1(vec4<i32>(i32(-2147483648), -31661i, -23907i, -1i), 43936u), Struct_1(vec4<i32>(-1961i, 4501i, 41712i, 2147483647i), 1u), Struct_1(vec4<i32>(-1i, 57581i, -1172i, -50680i), 4294967295u), Struct_1(vec4<i32>(22551i, 0i, i32(-2147483648), -1i), 0u), Struct_1(vec4<i32>(-7228i, -10863i, 15536i, 2147483647i), 13164u), Struct_1(vec4<i32>(1i, 2147483647i, 1i, -37336i), 283u), Struct_1(vec4<i32>(25813i, 64288i, 0i, -34561i), 4294967295u), Struct_1(vec4<i32>(32517i, 2147483647i, 12895i, 1i), 1u), Struct_1(vec4<i32>(-64436i, -24328i, -1672i, 1i), 4364u), Struct_1(vec4<i32>(1i, 18245i, 0i, 2147483647i), 28433u), Struct_1(vec4<i32>(-1i, 1i, -30878i, 2147483647i), 55470u), Struct_1(vec4<i32>(750i, -20691i, -21330i, -1i), 1126u), Struct_1(vec4<i32>(-17930i, 24800i, 2147483647i, 2147483647i), 0u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 3247i), 0u), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -15725i), 4294967295u), Struct_1(vec4<i32>(0i, -1i, i32(-2147483648), i32(-2147483648)), 1u), Struct_1(vec4<i32>(-1i, 0i, -30865i, i32(-2147483648)), 4294967295u), Struct_1(vec4<i32>(-16125i, -10285i, 1i, -21521i), 43685u), Struct_1(vec4<i32>(-42375i, i32(-2147483648), 7723i, -1i), 75045u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> f32 {
    global1 = 853f;
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(47309u, u_input.a, 67197u), vec3<u32>(arg_0.a.d.b, 4294967295u, 1u)), ~vec3<u32>(0u, 51498u, u_input.a))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~65907u, _wgslsmith_sub_u32(1u, u_input.a), 0u), ~(~vec3<u32>(u_input.a, u_input.a, arg_0.a.c.b)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, arg_0.a.d.b, 22466u), vec3<u32>(arg_0.a.e.b, arg_0.a.a.d.b, arg_0.a.e.b)), ~vec3<u32>(1u, arg_0.a.a.d.b, u_input.a)))), ~4294967295u, u_input.a);
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.b.x);
    global0 = array<i32, 17>();
    return -1000f;
}

fn func_2() -> i32 {
    global1 = _wgslsmith_f_op_f32(step(-1362f, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), vec3<f32>(-151f, 619f, 132f), -1i, global4[_wgslsmith_index_u32(u_input.a, 24u)], vec4<i32>(-26976i, -3486i, 10934i, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2575f), global4[_wgslsmith_index_u32(72284u, 24u)], Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(0u, 17u)], -29099i, global2[_wgslsmith_index_u32(125264u, 26u)], 2147483647i), 80563u), global4[_wgslsmith_index_u32(66552u, 24u)]), select(false, global3.x, false) & (global3.x & false), -2147483647i), ~vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 17u)]), -29417i ^ global0[_wgslsmith_index_u32(u_input.a, 17u)])))));
    var var_0 = !vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -903f) > _wgslsmith_f_op_f32(floor(172f))), any(select(select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global3.x, true)), !global3.x)));
    global1 = 1390f;
    let var_1 = Struct_2(!select(select(vec2<bool>(global3.x, global3.x), select(vec2<bool>(false, var_0.x), vec2<bool>(global3.x, false), vec2<bool>(true, false)), global3.x), select(vec2<bool>(var_0.x, global3.x), !vec2<bool>(true, global3.x), select(vec2<bool>(false, global3.x), vec2<bool>(false, global3.x), var_0.x)), !(!vec2<bool>(global3.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), (global0[_wgslsmith_index_u32(0u, 17u)] & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(3808u, 33915u)), min(vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 4294967295u))), 26u)]) >> (1u % 32u), global4[_wgslsmith_index_u32(reverseBits(~0u), 24u)], vec4<i32>(min(-_wgslsmith_sub_i32(u_input.b.x, 42691i), -(-2147483647i & u_input.b.x)), select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(60838u, 17u)], u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 17u)], -1i), vec4<i32>(0i, -24230i, u_input.b.x, 57424i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], -31752i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 17u)])), vec4<i32>(-66320i, -1i, 1i, global0[_wgslsmith_index_u32(1u, 17u)])), firstLeadingBit(u_input.b.x), all(!vec3<bool>(var_0.x, false, global3.x))), 26684i, 1i));
    var var_2 = Struct_4(Struct_3(var_1, _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(var_1, var_1.b.x, var_1.d, Struct_1(vec4<i32>(-1i, var_1.d.a.x, 0i, 2147483647i), u_input.a), var_1.d), !var_1.a.x, _wgslsmith_mult_i32(-16789i, global2[_wgslsmith_index_u32(0u, 26u)])), -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(global0[_wgslsmith_index_u32(var_1.d.b, 17u)], 2147483647i)))), var_1.d, Struct_1(-(~var_1.e), 13522u), Struct_1(var_1.e, ~_wgslsmith_add_u32(u_input.a, u_input.a))), true, ~abs(var_1.c));
    return ~max(-(~(~global2[_wgslsmith_index_u32(4294967295u, 26u)])), abs(var_1.d.a.x));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> vec3<f32> {
    var var_0 = ~reverseBits(_wgslsmith_clamp_i32(380i, u_input.b.x, 78480i));
    var var_1 = func_2();
    let var_2 = 0i;
    var var_3 = Struct_4(arg_0.a, global3.x, ~(-28898i << (1u % 32u)));
    var var_4 = arg_0.a;
    return _wgslsmith_f_op_vec3_f32(var_4.a.b - vec3<f32>(_wgslsmith_div_f32(315f, -887f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(217f, _wgslsmith_f_op_f32(f32(-1f) * -1067f)) * arg_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(427f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1656f)), -442f))) * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-917f - 1326f)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0);
    global4 = array<Struct_1, 24>();
    var var_1 = any(vec2<bool>(false, !global3.x));
    var var_2 = Struct_2(vec2<bool>(!((var_0 > 1000f) || false), any(select(vec4<bool>(global3.x, global3.x, global3.x, false), !vec4<bool>(false, false, global3.x, global3.x), global3.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_3(Struct_2(vec2<bool>(global3.x, true), vec3<f32>(491f, 1521f, -219f), global2[_wgslsmith_index_u32(u_input.a, 26u)], Struct_1(vec4<i32>(-50103i, global0[_wgslsmith_index_u32(u_input.a, 17u)], 1i, global2[_wgslsmith_index_u32(4294967295u, 26u)]), 4294967295u), vec4<i32>(2147483647i, -2147483647i, -24419i, -1i)), var_0, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(20746u, 17u)], -39305i), 1u), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], 30322i, -2272i, u_input.b.x), u_input.a), Struct_1(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], u_input.b.x), u_input.a)), global3.x, global0[_wgslsmith_index_u32(1u, 17u)]), 31233i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -344f, -1183f) * vec3<f32>(931f, 721f, var_0))), true)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1873f, var_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-354f, var_0, -856f)))))), global0[_wgslsmith_index_u32(u_input.a, 17u)], Struct_1(vec4<i32>(_wgslsmith_mod_i32(1i, min(global2[_wgslsmith_index_u32(1u, 26u)], -55803i)), u_input.b.x, ~1i, u_input.b.x), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(28908u, u_input.a), ~0u)), vec4<i32>(-1i) * -abs(vec4<i32>(32774i, 4404i, 13659i, 1i) | vec4<i32>(-9054i, 2147483647i, u_input.b.x, global2[_wgslsmith_index_u32(8388u, 26u)])));
    global0 = array<i32, 17>();
    let var_3 = Struct_3(Struct_2(vec2<bool>(var_2.a.x, false), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(898f - var_0)))), _wgslsmith_dot_vec2_i32(u_input.b.zx, var_2.d.a.xz & abs(u_input.b.zz)), var_2.d, countOneBits(abs(var_2.d.a))), var_2.b.x, Struct_1(vec4<i32>(-firstTrailingBit(u_input.b.x), u_input.b.x, -global2[_wgslsmith_index_u32(~u_input.a, 26u)], var_2.c), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.a, 6192u, u_input.a, u_input.a) | vec4<u32>(0u, var_2.d.b, var_2.d.b, 0u)), vec4<u32>(4294967295u & var_2.d.b, _wgslsmith_div_u32(var_2.d.b, u_input.a), _wgslsmith_add_u32(u_input.a, 69060u), var_2.d.b))), var_2.d, global4[_wgslsmith_index_u32(var_2.d.b, 24u)]);
    var var_4 = Struct_4(Struct_3(Struct_2(var_3.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1029f, 183f, -987f)))), -reverseBits(global0[_wgslsmith_index_u32(u_input.a, 17u)]), var_2.d, var_3.a.e), _wgslsmith_f_op_f32(481f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * 2048f))), Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(20705u, 17u)], u_input.b.x, -60432i, 1i) ^ vec4<i32>(-34573i, u_input.b.x, var_2.d.a.x, -2147483647i), abs(32497u << (u_input.a % 32u))), global4[_wgslsmith_index_u32(max(var_3.c.b, _wgslsmith_div_u32(5395u, var_2.d.b)) ^ ~0u, 24u)], Struct_1(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(var_3.d.a.x, global2[_wgslsmith_index_u32(var_3.e.b, 26u)], u_input.b.x, -2147483647i)), var_2.d.a, max(vec4<i32>(var_2.e.x, -36064i, -1835i, -68368i), var_3.a.e)), ~var_2.d.b)), true, ~select(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_2.e, vec4<i32>(-60878i, var_2.d.a.x, var_3.e.a.x, -1i)), 1i), ~global0[_wgslsmith_index_u32(49429u, 17u)], !any(var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a.e, _wgslsmith_add_i32(-44162i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(35557u, _wgslsmith_mod_u32(13235u, var_2.d.b)), 17u)]));
}

