struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_4,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, global1.a.x) * global1.a.x), global1.a.x)), global1.a.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1023f, global1.a.x))) - _wgslsmith_f_op_vec2_f32(floor(global1.c.wy)))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a.x, 749f), global1.a.x, u_input.a.x > u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x))), abs(global1.b), _wgslsmith_f_op_vec4_f32(max(global1.c, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(-1566f, -470f, -315f, global1.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, -632f, global1.c.x, global1.a.x) - vec4<f32>(global1.c.x, 301f, -1628f, -549f)))))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(193f))), 700f), _wgslsmith_sub_i32(1i, -1i) >> (~(u_input.c.x & u_input.c.x) % 32u), vec4<f32>(global1.c.x, -480f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-642f * -837f), -262f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.x))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(721f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(338f))))), _wgslsmith_f_op_f32(abs(var_1.c.x))));
    var_2 = Struct_1(global1.a, 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_2.c.x, _wgslsmith_f_op_f32(-243f + global1.c.x), var_1.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.c.x, -924f)), var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(-global1.a.x)))));
    return var_2.a.x;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec2<f32> {
    let var_0 = select(vec2<bool>(!arg_0, !(abs(-1i) > (59148i | global1.b))), vec2<bool>(true, true), all(!arg_2.xyz));
    let var_1 = arg_2.yzx;
    global1 = Struct_1(global1.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i) << (vec2<u32>(15994u, u_input.b) % vec2<u32>(32u)), -(~vec2<i32>(global1.b, 7423i))), -firstTrailingBit(vec2<i32>(global1.b, 1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(349f, -232f, -969f, 126f))), vec4<f32>(-1012f, global1.c.x, -186f, arg_1.x), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 233f, arg_1.x, 2419f)))));
    var var_2 = -236f;
    let var_3 = global0[_wgslsmith_index_u32(81973u, 30u)];
    return arg_1;
}

fn func_1() -> vec3<f32> {
    let var_0 = global1.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.b, true)) + _wgslsmith_f_op_f32(var_0.x * global1.c.x)), global1.a.x, 1823f, -757f))));
    global0 = array<Struct_3, 30>();
    var var_2 = u_input.c.x;
    var var_3 = Struct_5(~1i ^ abs(~(-global1.b)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, -28046i, -global1.b) << (~min(u_input.a.x, 39141u) % 32u), global1.b), Struct_4(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 1i, global1.b), vec4<i32>(global1.b, -1i, global1.b, -2147483647i)) & (global1.b >> (u_input.c.x % 32u)), 1i), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(select(false, true, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(344f, 1247f) - global1.a), vec4<bool>(true, true, true, true))), 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global1.c, var_1)) - vec4<f32>(global1.c.x, var_0.x, -1103f, var_0.x))), global1.b), max(firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, global1.b, global1.b), vec3<i32>(global1.b, -2147483647i, -10324i))), -vec3<i32>(2147483647i, -3545i, global1.b) | -(vec3<i32>(global1.b, -2147483647i, 22928i) ^ vec3<i32>(-2135i, global1.b, global1.b))));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.b.a.x, 724f, -130f) + vec3<f32>(552f, _wgslsmith_f_op_f32(func_2(global1.b, var_0.x <= 200f)), global1.c.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> bool {
    var var_0 = ~47191i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-759f, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, arg_0.x, -1025f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - -430f) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * 510f)), arg_0.x)) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_f32(891f + -737f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1259f, _wgslsmith_f_op_f32(arg_0.x * -115f))))));
    var var_2 = Struct_4(_wgslsmith_mod_vec3_i32(-arg_2.yxy, arg_2.zzw), Struct_1(var_1.xz, global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(ceil(775f)), 1581f, _wgslsmith_f_op_f32(-arg_0.x)))), global1.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, arg_1.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, var_2.b.a.x, global1.a.x) - vec3<f32>(var_2.b.a.x, 1000f, -215f)), _wgslsmith_div_vec3_f32(var_2.b.c.xyw, var_2.b.c.xzy), true))))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, false, false)), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(all(vec3<bool>(true, true, true)), select(false, false, true), all(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), vec3<bool>(true, true, (global1.a.x <= 889f) || false))));
    global1 = var_2.b;
    return all(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -3595i;
    var var_1 = select(vec4<bool>(false, any(vec4<bool>(true, true, true, true)), true, false), !select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), func_4(_wgslsmith_f_op_vec3_f32(func_1()), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-760f, global1.a.x, 1637f), vec3<f32>(-1156f, global1.a.x, global1.c.x), vec3<bool>(false, true, false))), vec4<i32>(28670i, 2147483647i, global1.b, global1.b))), !(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), false), true)));
    let var_2 = Struct_1(global1.c.wx, firstTrailingBit(0i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(global1.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(global1.c)))), true)), global1.c)));
    let var_3 = -1473f;
    var_1 = select(select(select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), !select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, true, true), true), true), vec4<bool>(false, any(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yyx, var_1.wxx)), !var_1.x, true), vec4<bool>((119987u | u_input.a.x) < reverseBits(u_input.c.x), any(select(var_1.wy, vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x))), !(1u != u_input.c.x), any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), vec4<bool>(var_1.x, var_1.x, !func_4(_wgslsmith_f_op_vec3_f32(trunc(global1.c.xxy)), _wgslsmith_f_op_vec3_f32(global1.c.xwy - global1.c.zzw), abs(vec4<i32>(-1i, 2147483647i, var_0, 18908i))), select(any(select(vec3<bool>(true, var_1.x, var_1.x), var_1.xzw, vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(floor(var_3)) <= _wgslsmith_f_op_f32(f32(-1f) * -888f), var_1.x)), var_1.x);
    var var_4 = _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(f32(-1f) * -1191f));
    var var_5 = vec2<i32>((firstTrailingBit(var_2.b) ^ (i32(-1i) * -global1.b)) >> (40719u % 32u), 0i);
    global1 = var_2;
    let var_6 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.c))))), global1.c)), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(49271u, 5515u, 0u), u_input.c.zyz)) >> (u_input.b % 32u), firstLeadingBit(-(-vec3<i32>(global1.b, -9907i, 5174i) | vec3<i32>(var_5.x, 1i, 0i))));
}

