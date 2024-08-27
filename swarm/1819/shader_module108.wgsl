struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<bool>, 21>;

var<private> global2: array<Struct_4, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = abs(vec4<u32>(~arg_1.c, arg_0.b, ~(~(~arg_1.c)), arg_0.b));
    var var_1 = Struct_3(-arg_1.d.x, -276f);
    var var_2 = ~var_0.x;
    var_2 = 1u;
    var var_3 = vec2<bool>(all(select(vec4<bool>(!arg_0.a.b, all(vec3<bool>(false, false, arg_0.a.b)), all(vec3<bool>(true, true, arg_0.a.b)), arg_0.a.b), vec4<bool>(true, !arg_1.b, false, arg_1.b), all(select(vec2<bool>(false, false), vec2<bool>(arg_1.b, true), vec2<bool>(false, false))))), any(vec3<bool>(false, arg_0.a.b, false)));
    return arg_1.a;
}

fn func_2(arg_0: Struct_4) -> bool {
    let var_0 = vec2<i32>(u_input.a, u_input.a & -11804i);
    let var_1 = global0.ww;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0.xyy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.xyx, _wgslsmith_f_op_vec3_f32(-global0.xzw)))))), arg_0.d, 4294967295u, vec3<i32>(firstTrailingBit(-_wgslsmith_clamp_i32(var_0.x, 13582i, -33431i)), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-26285i, 50129i, var_0.x, max(var_0.x, var_0.x)), ~vec4<i32>(u_input.a, 0i, u_input.a, 57679i))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -598f, -1550f)), _wgslsmith_f_op_vec3_f32(abs(global0.wwz))))), _wgslsmith_div_vec3_f32(global0.yzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_1(global0.zyz, false, 0u, vec3<i32>(48i, var_0.x, -2147483647i), global0.yyw), 4294967295u), Struct_1(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), true, 4294967295u, vec3<i32>(var_0.x, 99507i, u_input.a), global0.zwy))) + global0.xxw)), arg_0.c)));
    let var_3 = global1[_wgslsmith_index_u32(var_2.c, 21u)];
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), arg_0.a, arg_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(694f, -566f)), var_2.e.x, var_1.x)))), !var_3.x, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, var_2.c) >> (66549u % 32u), 0u)), reverseBits(var_2.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yxz)));
    return all(!select(!var_3.yww, !var_3.wyw, select(select(var_3.wyy, var_3.wyw, var_3.zww), var_3.xxx, var_3.wxz)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_1 {
    global0 = vec4<f32>(-1337f, _wgslsmith_div_f32(-186f, 648f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-420f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x)));
    let var_0 = Struct_2(_wgslsmith_mult_u32(~arg_2.x & firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.x, 24635u, arg_2.x), vec4<u32>(4294967295u, 0u, arg_2.x, arg_2.x))), ~(_wgslsmith_dot_vec2_u32(arg_2.xz, arg_2.zx) ^ 4294967295u)), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -915f, -838f) - vec3<f32>(738f, global0.x, 156f)) * _wgslsmith_f_op_vec3_f32(-global0.xxz)), func_2(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -470f), vec2<bool>(true, true), true, true, vec2<bool>(true, true))), arg_2.x, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.x, u_input.a), vec3<i32>(u_input.a, 2147483647i, arg_1.x)) << (~56303u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-29002i, 31157i), ~arg_1), i32(-1i) * -arg_1.x), global0.zyz));
    let var_1 = firstTrailingBit(var_0.c.d.xy);
    var var_2 = select(vec3<u32>(~(~var_0.c.c) >> (var_0.c.c % 32u), arg_2.x, 1173u), arg_2 >> (vec3<u32>(~firstTrailingBit(82954u), 52014u, 0u) % vec3<u32>(32u)), vec3<bool>(!all(vec3<bool>(var_0.b.x, false, var_0.b.x)), true, false));
    return var_0.c;
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(-select(-(~vec3<i32>(8181i, u_input.a, arg_0.d.x)), -abs(arg_0.d), true), -countOneBits(vec3<i32>(_wgslsmith_div_i32(-2147483647i, -4103i), ~u_input.a, arg_0.d.x)));
    global2 = array<Struct_4, 24>();
    let var_1 = 1000f;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2317f), _wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, -1402f)) * global0.zw), vec2<i32>(1i, 1i), ~(~vec3<u32>(1u, 4294967295u, 4608u))).a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.zz);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 21>();
    var var_0 = any(vec4<bool>(true, all(vec3<bool>(true, true, true)) && true, !(any(vec4<bool>(true, true, false, false)) || (-2147483647i < u_input.a)), func_4(func_1(global0.zw, vec2<i32>(u_input.a, u_input.a), vec3<u32>(1u, 1u, 1u)))));
    var var_1 = Struct_5(func_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) * _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 777f) + -949f)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -18869i), min(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 2147483647i)) >> (~vec2<u32>(4294967295u, 60703u) % vec2<u32>(32u))), ~vec3<u32>(1u, ~4294967295u, ~0u)), 4294967295u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.a.e))))), var_1.a.b, var_1.b, var_1.a.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a.x, -2012f, var_1.a.a.x) * var_1.a.e), _wgslsmith_f_op_vec3_f32(floor(global0.zwy)))) + var_1.a.e) - global0.xxy));
    let var_3 = -(~firstLeadingBit(-vec4<i32>(var_2.d.x, 1i, -30660i, var_2.d.x) & vec4<i32>(u_input.a, -1i, 1i, var_2.d.x)));
    let var_4 = 1f;
    var var_5 = _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, ~1u), firstLeadingBit(vec2<u32>(~var_2.c, ~55669u))) >> (vec2<u32>(~var_2.c, var_1.b) % vec2<u32>(32u));
    global2 = array<Struct_4, 24>();
    let var_6 = Struct_3(-max(_wgslsmith_mod_i32(1i, firstLeadingBit(var_1.a.d.x)), ~_wgslsmith_clamp_i32(-24650i, 1831i, var_2.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_2.a.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(307f, var_2.a.x)))), _wgslsmith_add_vec2_i32(abs(vec2<i32>(var_2.d.x, -2147483647i)), var_2.d.zz), min(~vec3<u32>(var_1.b, 1u, var_2.c), vec3<u32>(27874u, var_1.b, 1u))).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(var_2.e.xy, vec2<i32>(var_2.d.x, var_1.a.d.x), vec3<u32>(0u, 1u, 4294967295u)).a.x * var_4), var_2.a.x) - _wgslsmith_f_op_vec2_f32(abs(var_1.a.e.yy))), 697f, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_5(Struct_1(global0.wxw, var_2.b, 0u, var_2.d, vec3<f32>(-932f, 1000f, 1157f)), 31955u), var_1.a)).x + _wgslsmith_f_op_f32(-1000f - var_4)), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_2.e.x))))))));
}

