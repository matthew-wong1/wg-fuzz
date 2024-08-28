struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-719f, 320f), vec2<f32>(1273f, -507f), vec2<f32>(-1000f, 415f), vec2<f32>(-1684f, -842f), vec2<f32>(981f, 1502f), vec2<f32>(-138f, 762f), vec2<f32>(-1077f, 1217f), vec2<f32>(848f, -475f), vec2<f32>(-955f, 1110f), vec2<f32>(-438f, 892f), vec2<f32>(544f, -548f), vec2<f32>(-1416f, 1433f));

var<private> global1: array<Struct_2, 3>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.x, 4294967295u, reverseBits(18247u)), vec3<u32>(arg_1, ~(~16671u), ~1u)), _wgslsmith_add_vec3_u32(~countOneBits(vec3<u32>(u_input.a.x, 36423u, 28060u)), vec3<u32>(arg_1, _wgslsmith_dot_vec2_u32(u_input.a, arg_2.zy), ~14828u)) >> (abs(~vec3<u32>(1u, arg_2.x, 69334u)) % vec3<u32>(32u)));
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    return !(!(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> u32 {
    global3 = array<Struct_2, 22>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a))))), global2.a, 771f);
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    global2 = Struct_1(global2.a, -global2.b, 12160u, vec3<i32>(firstLeadingBit(-u_input.b.x), ~34219i, global2.b));
    return select(u_input.a.x, ((u_input.a.x & 27965u) << (~countOneBits(29916u) % 32u)) << (~(max(global2.c, 0u) ^ _wgslsmith_sub_u32(global2.c, 40293u)) % 32u), true);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<f32> {
    let var_0 = arg_2.c;
    let var_1 = func_4(vec4<bool>(all(!select(vec4<bool>(true, arg_2.b.x, arg_2.b.x, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, arg_0, arg_2.b.x))), !arg_0, !arg_0, func_3(firstLeadingBit(i32(-1i) * -5221i), reverseBits(global2.c), ~vec3<u32>(22690u, 16244u, arg_2.c.c))), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(6163i, 45229i, global2.d.x, u_input.b.x), vec4<i32>(1i, _wgslsmith_div_i32(2147483647i, global2.d.x), reverseBits(36047i), global2.b), arg_2.b.x), vec4<i32>(-u_input.b.x, ~(-u_input.b.x), u_input.b.x, global2.b)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(850f, arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(902f, arg_2.a.x, 245f, arg_1.x) * vec4<f32>(787f, 1273f, -1598f, arg_2.a.x)))))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<f32>) -> i32 {
    global1 = array<Struct_2, 3>();
    global0 = array<vec2<f32>, 12>();
    let var_0 = vec3<u32>(~_wgslsmith_div_u32(~0u, global2.c), 12017u, global2.c | _wgslsmith_div_u32(firstTrailingBit(0u), 28317u));
    let var_1 = -2342f;
    var var_2 = max(-global2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_add_i32(global2.d.x, u_input.b.x)), _wgslsmith_clamp_i32(abs(53265i), ~14709i, -global2.b)), -u_input.b.yy));
    return 0i;
}

fn func_1() -> vec2<bool> {
    global3 = array<Struct_2, 22>();
    var var_0 = Struct_1(global2.a, _wgslsmith_dot_vec3_i32(u_input.b.zyy, u_input.b.zxw), select(abs(u_input.a.x), 0u, true), vec3<i32>(global2.d.x, -(~(-global2.b)), func_5(false, ~3244u ^ global2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a), 137f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(true, vec3<f32>(global2.a, global2.a, global2.a), Struct_2(vec3<f32>(1318f, 628f, global2.a), vec3<bool>(true, true, false), Struct_1(global2.a, u_input.b.x, 62010u, vec3<i32>(-4747i, -230i, u_input.b.x))))) * vec4<f32>(global2.a, 2203f, -1235f, 319f)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) * _wgslsmith_f_op_f32(-var_0.a))))), i32(-1i) * -2147483647i, global2.c, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(global2.d, ~(~var_0.d)), firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.b, u_input.b.x, var_0.b), vec3<i32>(269i, var_0.b, u_input.b.x), u_input.b.zyz))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2060f, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 667f, 553f) * vec3<f32>(1865f, var_0.a, -1692f))), 4959i < firstLeadingBit(var_0.b))) + vec3<f32>(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(var_0.a * global2.a), true)), -389f, _wgslsmith_f_op_f32(var_0.a - global2.a))), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, 803f)) + global2.a), 2147483647i, ~max(_wgslsmith_add_u32(4294967295u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(326u, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, 94174u, global2.c))), (vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, -1i, var_0.b)) >> (max(vec3<u32>(var_0.c, 68676u, u_input.a.x) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(2644u, u_input.a.x, 19042u))) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-648f, 1037f, 1493f, var_0.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, -768f, global2.a, 818f)))))), vec4<f32>(-542f, -1279f, 1705f, -338f));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a;
    let var_1 = select(!vec2<bool>(any(vec3<bool>(true, true, true)), true && (-1i != global2.b)), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), func_1()), vec2<bool>(true, true), all(vec2<bool>(true, true))), !(-select(-10997i, 27628i, true) <= global2.d.x));
    var var_2 = all(var_1);
    var var_3 = ~u_input.b.x;
    var_2 = true;
    global1 = array<Struct_2, 3>();
    let var_4 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(142f);
}

