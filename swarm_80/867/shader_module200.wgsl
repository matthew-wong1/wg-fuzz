struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = 142f;

var<private> global2: vec4<u32> = vec4<u32>(2787u, 1u, 1148u, 0u);

var<private> global3: vec4<f32>;

var<private> global4: array<Struct_2, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(~u_input.c.ww), vec2<u32>(global2.x, 1u) | global2.wy), u_input.c.x) <= ~(~(~global2.x));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(~(~0u), countOneBits(~4294967295u), _wgslsmith_add_u32(~0u, global2.x << (u_input.d.x % 32u)), firstTrailingBit(reverseBits(28614u)))), _wgslsmith_mult_u32(~(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), u_input.d.x));
    var var_2 = -12635i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))) == global3.x;
    var var_4 = Struct_1(u_input.d.x, _wgslsmith_add_i32(global0.x, -u_input.b.x), -(i32(-1i) * -24442i), -(~countOneBits(0i)), vec3<bool>(!(!(!var_0)), var_0, all(!select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)))));
    return vec4<bool>(true, true, var_0, true);
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = Struct_4(select(func_3(), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true)), false, true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    var var_1 = global4[_wgslsmith_index_u32(u_input.d.x, 10u)];
    var var_2 = u_input.a;
    let var_3 = global0.x;
    global1 = 769f;
    return Struct_3(_wgslsmith_f_op_f32(floor(455f)) != _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global3.x))))), ~(~var_1.b.xxx), global4[_wgslsmith_index_u32(1u, 10u)], Struct_1(~(~(~5450u)), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), -(var_2.yz >> (vec2<u32>(u_input.c.x, global2.x) % vec2<u32>(32u)))), ~6262i, -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e, 0i), u_input.a.zy), u_input.a.x), vec3<bool>(var_0.a.x, global2.x >= 1u, !var_1.c.x)), ~(var_1.e << (~select(1682u, var_1.a.x, var_0.a.x) % 32u)));
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec4<u32>(0u, u_input.c.x, 4294967295u, ~1u);
    var var_1 = false;
    global2 = ~firstLeadingBit(u_input.c) >> (u_input.c % vec4<u32>(32u));
    global0 = u_input.b;
    let var_2 = select(!vec4<bool>(true, arg_0, false, _wgslsmith_mod_i32(37726i, arg_3.c.e) >= (global0.x << (arg_3.d.a % 32u))), select(vec4<bool>(false, false, any(arg_3.d.e.xy) && any(vec3<bool>(true, arg_3.a, false)), arg_0 & (arg_3.c.c.x && false)), func_2(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(select(global3.x, 1043f, arg_3.a)), global3.x, _wgslsmith_f_op_f32(-1075f * -444f))).c.c, !arg_3.c.c), select(vec4<bool>(arg_3.d.e.x, false, func_3().x, arg_0), vec4<bool>(!any(vec3<bool>(false, arg_0, true)), false, true, arg_3.d.e.x), (!arg_3.c.c.x | any(vec2<bool>(arg_0, arg_0))) || true));
    return arg_3.d;
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = -12778i;
    let var_1 = func_4(false, (global2.zz | (~vec2<u32>(u_input.c.x, u_input.d.x) >> (_wgslsmith_clamp_vec2_u32(u_input.d.xx, u_input.d.zx, vec2<u32>(725u, global2.x)) % vec2<u32>(32u)))) << (~(~select(vec2<u32>(6700u, 29631u), u_input.d.zy, true)) % vec2<u32>(32u)), global3.yw, func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-433f + global3.x), -821f, 1604f)))));
    global2 = vec4<u32>(_wgslsmith_clamp_u32(9408u, func_4(select(true, !var_1.e.x, true), vec2<u32>(0u, ~u_input.d.x), vec2<f32>(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(831f + 1264f)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global3.x, global3.x, arg_0)))).a, ~_wgslsmith_mult_u32(4294967295u, ~4294967295u)), _wgslsmith_div_u32(u_input.c.x, 1u), var_1.a, u_input.d.x);
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(928f * -819f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-170f, global3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(sign(global3.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1061f))), 1789f));
    global1 = _wgslsmith_f_op_f32(sign(-851f));
    return _wgslsmith_add_u32(13674u, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(global2.x, ~func_1(_wgslsmith_f_op_f32(f32(-1f) * -791f), 1i), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-167f, 949f, 868f, 1771f), vec4<f32>(global3.x, global3.x, global3.x, global3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(342f)), _wgslsmith_f_op_f32(global3.x + -707f), _wgslsmith_f_op_f32(global3.x - global3.x), 221f))).b.x, u_input.d.x);
    global0 = u_input.b;
    var var_0 = 36656u;
    var var_1 = Struct_1(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global2.x, u_input.d.x), _wgslsmith_add_u32(4294967295u, u_input.c.x))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2323f, 237f, global3.x, global3.x) + vec4<f32>(global3.x, global3.x, global3.x, global3.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(202f, global3.x, global3.x, -657f), vec4<f32>(global3.x, 1773f, global3.x, 1659f)))).c.b.x), i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, global0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-6885i, -15754i, -27600i), global0.x), u_input.b.x | max(1i, u_input.a.x), _wgslsmith_add_i32(func_2(vec4<f32>(-1937f, 2384f, 386f, 437f)).c.e, -global0.x), min(global0.x, global0.x) >> (_wgslsmith_add_u32(global2.x, global2.x) % 32u)), -(vec4<i32>(global0.x, u_input.a.x, global0.x, -19745i) << (abs(vec4<u32>(4294967295u, u_input.c.x, u_input.d.x, global2.x)) % vec4<u32>(32u)))), ~firstTrailingBit(firstTrailingBit(~66351i)), !func_2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-333f, -1020f, global3.x, 1510f), vec4<f32>(global3.x, global3.x, global3.x, global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-548f, global3.x, global3.x, 1000f) * vec4<f32>(486f, 705f, global3.x, global3.x)))).d.e);
    var var_2 = func_2(vec4<f32>(global3.x, global3.x, -167f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))).b.x < (u_input.d.x >> (func_4(true, _wgslsmith_mod_vec2_u32(~u_input.c.yy, select(vec2<u32>(4091u, 1u), vec2<u32>(var_1.a, u_input.c.x), false)), global3.xw, func_2(vec4<f32>(global3.x, 795f, global3.x, global3.x))).a % 32u));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(min(global3.x, -395f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(34439i, ~(1i >> (u_input.c.x % 32u)), reverseBits(-2147483647i)), var_1.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), 1000f, _wgslsmith_div_f32(218f, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 118f)))), u_input.a.x);
}

