struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<vec2<u32>, 13>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(685f, vec4<i32>(36836i, 1i, -1i, i32(-2147483648)), -32686i), Struct_1(-750f, vec4<i32>(0i, 72543i, 13422i, -5400i), -7857i), Struct_1(282f, vec4<i32>(87304i, 1i, 23197i, 1i), 15737i), Struct_1(139f, vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), i32(-2147483648)), Struct_1(142f, vec4<i32>(1i, -3343i, 0i, 1i), -13011i), Struct_1(1388f, vec4<i32>(0i, 31982i, 33235i, -25784i), 2147483647i), Struct_1(-403f, vec4<i32>(-23708i, 55864i, 45715i, 18912i), -11038i), Struct_1(-1396f, vec4<i32>(i32(-2147483648), 32464i, i32(-2147483648), 1i), -10331i), Struct_1(2259f, vec4<i32>(3985i, 0i, 3196i, i32(-2147483648)), -45317i), Struct_1(-577f, vec4<i32>(53202i, 2139i, 16118i, -34534i), -12868i), Struct_1(270f, vec4<i32>(-26254i, -61676i, -6142i, 2147483647i), 22190i), Struct_1(156f, vec4<i32>(-31749i, 40896i, -26492i, -25572i), -50949i), Struct_1(-870f, vec4<i32>(-28952i, i32(-2147483648), -35920i, 9675i), -2876i), Struct_1(-877f, vec4<i32>(i32(-2147483648), 0i, 0i, -35726i), 6615i), Struct_1(-467f, vec4<i32>(-18764i, 61269i, 0i, i32(-2147483648)), 1i), Struct_1(-671f, vec4<i32>(0i, i32(-2147483648), 1478i, 0i), i32(-2147483648)), Struct_1(-408f, vec4<i32>(1i, 56429i, i32(-2147483648), -16024i), 1i), Struct_1(433f, vec4<i32>(-13967i, -26547i, -1i, -5072i), 2147483647i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 18u)];
    global0 = array<vec2<u32>, 13>();
    var var_1 = vec4<i32>(-7926i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.b.x, -1i << (u_input.a.x % 32u)), arg_1.x), arg_1.x), -2147483647i, _wgslsmith_sub_i32(1859i, var_0.c));
    return ~1i;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-717f, _wgslsmith_div_f32(-1519f, 342f)) - 229f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-673f + _wgslsmith_f_op_f32(f32(-1f) * -2605f))))));
    global0 = array<vec2<u32>, 13>();
    let var_1 = firstTrailingBit(45471u);
    var var_2 = vec4<f32>(-1519f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) - 957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-414f, -1048f)) - _wgslsmith_f_op_f32(floor(146f)))) + -389f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1579f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(957f + -442f)))), 1f));
    let var_3 = _wgslsmith_add_vec3_u32(abs(~(~vec3<u32>(var_1, var_1, u_input.a.x))) >> (~(~(u_input.a & u_input.a)) % vec3<u32>(32u)), u_input.a | (select(vec3<u32>(4294967295u, var_1, 0u), u_input.a, true) | vec3<u32>(u_input.a.x, ~u_input.a.x, 17563u)));
    return Struct_1(var_2.x, -(_wgslsmith_div_vec4_i32(select(vec4<i32>(39869i, 23399i, -1i, -2761i), vec4<i32>(9531i, 17752i, -30151i, -15038i), vec4<bool>(true, false, true, false)), abs(vec4<i32>(-20562i, 17502i, -25659i, -1i))) << (~vec4<u32>(var_1, var_3.x, 34552u, 4294967295u) % vec4<u32>(32u))), i32(-1i) * -func_3(global1[_wgslsmith_index_u32(var_3.x, 18u)], -vec2<i32>(-64736i, -24665i), vec3<i32>(-2147483647i, 95565i, -64463i) << (vec3<u32>(16241u, var_1, var_1) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_0.a)))));
    let var_1 = ~105591u;
    global0 = array<vec2<u32>, 13>();
    var var_2 = arg_1;
    var var_3 = ~u_input.a.yx;
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 18>();
    let var_0 = func_1(func_2(), arg_1);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1171f, -824f, _wgslsmith_f_op_f32(arg_1.a * arg_0), arg_1.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, var_0.a, arg_0, -698f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1166f, -707f, var_0.a, -1000f), vec4<f32>(-304f, -1588f, 1119f, -1461f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(1669f)), _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.xy)) * vec2<f32>(var_1.x, 2198f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.ww - var_1.ww))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1292f + _wgslsmith_f_op_f32(-func_2().a))));
    return Struct_1(933f, vec4<i32>(-1i) * -(vec4<i32>(-1i, var_0.b.x, arg_1.c, -25779i) << (_wgslsmith_sub_vec4_u32(vec4<u32>(53252u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) % vec4<u32>(32u))), arg_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(arg_1.a, arg_0.b, -_wgslsmith_dot_vec4_i32(select(firstTrailingBit(arg_0.b), firstTrailingBit(arg_1.b), all(arg_2)), -(~vec4<i32>(arg_1.c, -1i, arg_1.b.x, arg_0.c))));
    let var_1 = ~func_2().b.x;
    global0 = array<vec2<u32>, 13>();
    let var_2 = vec2<u32>(~reverseBits(u_input.a.x), u_input.a.x);
    global0 = array<vec2<u32>, 13>();
    return countOneBits(arg_0.b.xx) | vec2<i32>(~arg_0.b.x, reverseBits(-func_1(arg_1, Struct_1(-1360f, vec4<i32>(-20246i, var_1, var_0.b.x, -1i), arg_0.b.x)).c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 13>();
    global0 = array<vec2<u32>, 13>();
    global0 = array<vec2<u32>, 13>();
    var var_0 = _wgslsmith_mod_vec2_i32(func_5(global1[_wgslsmith_index_u32(~1u, 18u)], func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(692f - 176f)), func_1(Struct_1(-214f, vec4<i32>(2147483647i, -2147483647i, 19623i, -1i), 0i), global1[_wgslsmith_index_u32(firstTrailingBit(35035u), 18u)])), vec2<bool>(all(vec4<bool>(true, true, false, false)) && true, !any(vec2<bool>(true, false)))), vec2<i32>(i32(-1i) * -min(-2147483647i, 4621i), _wgslsmith_div_i32(_wgslsmith_div_i32(func_3(Struct_1(417f, vec4<i32>(-15098i, 0i, 56144i, -2147483647i), -281i), vec2<i32>(1i, 1i), vec3<i32>(1i, 0i, 0i)), -53997i), ~(-2147483647i))));
    let var_1 = any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)) & any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    let var_2 = !(!(!(!var_1)));
    let var_3 = i32(-1i) * -2147483647i;
    var var_4 = !(!select(!select(vec3<bool>(true, false, true), vec3<bool>(var_2, false, var_2), vec3<bool>(true, true, var_2)), !(!vec3<bool>(var_1, true, var_1)), select(select(vec3<bool>(true, true, true), vec3<bool>(var_2, true, false), vec3<bool>(false, var_1, false)), !vec3<bool>(false, false, var_2), select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_1, var_2, var_1), false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.x, 2147483647i) | _wgslsmith_add_i32(-4194i, var_0.x), func_3(Struct_1(-1000f, vec4<i32>(-13499i, var_0.x, var_3, 33290i), var_0.x), select(vec2<i32>(0i, var_3), vec2<i32>(var_0.x, 25422i), false), vec3<i32>(-669i, -7801i, 26485i) & vec3<i32>(-29733i, var_3, var_0.x)), func_5(func_4(-740f, global1[_wgslsmith_index_u32(4294967295u, 18u)]), Struct_1(2028f, vec4<i32>(var_0.x, 0i, 2360i, var_0.x), var_0.x), !vec2<bool>(var_2, false)).x), var_3 & func_4(_wgslsmith_f_op_f32(-239f - -1000f), global1[_wgslsmith_index_u32(0u, 18u)]).c));
}

