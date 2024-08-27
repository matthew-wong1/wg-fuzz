struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(34478i, 19455i);

var<private> global1: array<Struct_1, 3>;

var<private> global2: vec3<f32> = vec3<f32>(-1356f, -309f, 1691f);

var<private> global3: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec4<bool> {
    global3 = array<vec3<bool>, 30>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -442f))));
    let var_1 = vec3<u32>(~1u, u_input.a.x, _wgslsmith_add_u32(0u, 54281u));
    var var_2 = -1341f;
    var var_3 = vec2<i32>(~global0.x, ~(_wgslsmith_mod_i32(i32(-1i) * -48822i, global0.x) << (22569u % 32u)));
    return !select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!(global2.x >= global2.x), _wgslsmith_f_op_f32(696f * 273f) != _wgslsmith_f_op_f32(min(global2.x, 260f)), false, (4294967295u > var_1.x) && (-43180i <= global0.x)), !any(vec4<bool>(true, false, false, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.x), func_3());
    let var_1 = Struct_2(firstLeadingBit(~(-9389i)), ~u_input.a | firstLeadingBit(vec2<u32>(0u, u_input.a.x) >> (firstTrailingBit(u_input.a) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1121f), vec4<bool>(!(u_input.b == 45179u), func_3().x, var_0.b.x, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 671f)) * -1421f), vec4<bool>(true, select(true, true, var_0.b.x), true, var_0.b.x)));
    global1 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(~48138i, i32(-1i) * -18415i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, var_1.a), vec2<i32>(var_1.a, 0i)) >> ((var_1.b.x >> (var_1.b.x % 32u)) % 32u))), 28365i);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1925f * 877f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - -973f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1573f * -164f))))), global2.x);
    return Struct_1(_wgslsmith_f_op_f32(1f + global2.x), vec4<bool>(var_1.d.b.x, true, false, any(!vec3<bool>(true, var_0.b.x, var_1.c.b.x))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    global3 = array<vec3<bool>, 30>();
    var var_1 = Struct_2(select(~arg_0, 31685i, all(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 86748u), 30u)]) && false), _wgslsmith_div_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(20291u, 0u), u_input.a, vec2<u32>(u_input.a.x, 31498u))), u_input.a), Struct_1(_wgslsmith_f_op_f32(549f + arg_2.a), !arg_3.b), func_2());
    var_1 = Struct_2(-1i, u_input.a, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(reverseBits(~(~reverseBits(1u))), 3u)]);
    return Struct_2(-(~0i), ~reverseBits(vec2<u32>(444u, 30976u)), func_2(), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -600f), !vec4<bool>(true, any(arg_3.b), arg_2.b.x, arg_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> vec4<i32> {
    let var_0 = arg_0;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-221f - _wgslsmith_div_f32(-603f, 1852f)), -377f, -165f)));
    global0 = -(~(abs(-vec2<i32>(arg_0.a, var_0.a)) >> (((arg_0.b & u_input.a) ^ arg_0.b) % vec2<u32>(32u))));
    var var_1 = ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~var_0.b.x), var_0.b.x);
    global2 = vec3<f32>(_wgslsmith_div_f32(func_2().a, _wgslsmith_f_op_f32(-105f - 332f)), arg_0.c.a, -1000f);
    return _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -19679i, 1099i, global0.x | -2147483647i), -vec4<i32>(-80942i, var_0.a, -10853i, global0.x)), -18675i, var_0.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0.a, -2147483647i, global0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_0.a, arg_0.a), vec3<i32>(arg_0.a, -35626i, -14154i)), func_2().b.x), abs(vec3<i32>(var_0.a, 0i, 0i)) | ~vec3<i32>(var_0.a, 2147483647i, var_0.a))), vec4<i32>(countOneBits(-(i32(-1i) * -37111i)), global0.x, global0.x >> (select(select(var_1.x, arg_0.b.x, arg_1), 4294967295u, arg_1) % 32u), countOneBits(-17774i)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(4695u, 3u)];
    global3 = array<vec3<bool>, 30>();
    var var_1 = -func_5(func_4(global0.x, select(vec3<bool>(true, arg_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, true, arg_0.b.x), var_0.b.x), func_2(), Struct_1(108f, var_0.b)), true) & vec4<i32>(-72634i, ~_wgslsmith_mult_i32(func_4(global0.x, vec3<bool>(arg_1, var_0.b.x, arg_1), arg_0, global1[_wgslsmith_index_u32(1u, 3u)]).a, -global0.x), global0.x, -(~_wgslsmith_mult_i32(global0.x, global0.x)));
    var var_2 = var_1.xw;
    var var_3 = _wgslsmith_f_op_f32(ceil(func_2().a));
    return arg_0;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = !func_2().b.x;
    global0 = max(arg_3, ~firstLeadingBit(firstTrailingBit(~arg_3)));
    let var_1 = vec4<bool>(all(vec2<bool>(true, any(!vec3<bool>(arg_1.b.x, false, arg_1.b.x)))), func_2().b.x, true, !(true && arg_1.b.x));
    global3 = array<vec3<bool>, 30>();
    var var_2 = func_4(16920i, !func_3().zzz, Struct_1(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~1u, 3u)], true).a + global2.x), vec4<bool>(false, false & var_1.x, !select(arg_1.b.x, arg_1.b.x, false), true)), global1[_wgslsmith_index_u32(42539u, 3u)]);
    return Struct_1(_wgslsmith_f_op_f32(func_2().a + global2.x), vec4<bool>(true & func_2().b.x, var_1.x, !(var_2.c.a == _wgslsmith_f_op_f32(-364f * arg_1.a)), any(!arg_1.b.ww)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 30>();
    let var_0 = func_6(u_input.a.x, func_1(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true), ~0i, ~vec2<i32>(~global0.x, ~(-1i)));
    let var_1 = Struct_2(-global0.x, max(vec2<u32>(4294967295u, u_input.a.x), select(vec2<u32>(_wgslsmith_mult_u32(34806u, u_input.b), firstLeadingBit(u_input.b)), max(u_input.a, vec2<u32>(u_input.a.x, u_input.b)), vec2<bool>(false, true))), func_6(firstLeadingBit(1u << (u_input.a.x % 32u)) << (_wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, u_input.b) % 32u), func_2(), global0.x, ~vec2<i32>(global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, global0.x, 28139i), vec4<i32>(-26058i, 2147483647i, 16418i, 24079i)))), func_6(~(~1844u), func_1(Struct_1(1f, vec4<bool>(var_0.b.x, false, var_0.b.x, true)), var_0.b.x), _wgslsmith_mod_i32(~global0.x, ~0i), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 1i), ~vec2<i32>(38303i, global0.x)) | -_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, global0.x))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -218f, var_0.a), vec3<f32>(-335f, -1218f, global2.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1078f, var_1.d.a, var_0.a))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-409f, 1208f, 1000f) - vec3<f32>(var_0.a, -1033f, var_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(152f, 126f, var_1.c.a) + vec3<f32>(1000f, 849f, var_0.a)))))));
    let var_2 = func_4(2147483647i | -_wgslsmith_dot_vec2_i32(~vec2<i32>(var_1.a, 1i), vec2<i32>(-1122i, 8793i)), global3[_wgslsmith_index_u32(~71365u, 30u)], Struct_1(-910f, var_0.b), var_1.c).d;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(-1844f - var_1.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    var var_3 = ~(~4294967295u >> (var_1.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(15094u, vec4<i32>(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.a), vec2<i32>(var_1.a, var_1.a))), min(var_1.a << (_wgslsmith_mult_u32(1u, var_1.b.x) % 32u), abs(_wgslsmith_clamp_i32(global0.x, 25959i, global0.x))), (~var_1.a >> (1u % 32u)) >> (_wgslsmith_div_u32(abs(u_input.b), 3370u) % 32u), 1i), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, ~(~u_input.b), 1u), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_1.b.x, u_input.a.x, var_1.b.x), abs(vec3<u32>(77715u, u_input.b, 15668u)))));
}

