struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-21702i, 0u, 2147483647i, vec3<bool>(true, true, false), 47274u), Struct_1(-37440i, 51636u, 41899i, vec3<bool>(false, true, false), 9717u), Struct_1(i32(-2147483648), 1u, 29546i, vec3<bool>(true, true, false), 155017u), Struct_1(41210i, 1u, 2147483647i, vec3<bool>(true, true, true), 72681u), Struct_1(-48569i, 0u, -16338i, vec3<bool>(true, false, false), 0u), Struct_1(-1i, 4294967295u, 0i, vec3<bool>(false, false, false), 1u), Struct_1(14892i, 0u, 29693i, vec3<bool>(true, true, true), 4378u), Struct_1(1i, 4294967295u, -28222i, vec3<bool>(false, false, true), 72264u), Struct_1(1i, 10482u, 2147483647i, vec3<bool>(false, true, false), 15415u), Struct_1(35288i, 1u, -1i, vec3<bool>(false, true, false), 56022u), Struct_1(i32(-2147483648), 1293u, i32(-2147483648), vec3<bool>(false, true, true), 1u), Struct_1(0i, 83802u, -1i, vec3<bool>(true, true, true), 50797u), Struct_1(-32995i, 1u, 38198i, vec3<bool>(true, false, false), 29831u), Struct_1(-13939i, 0u, 2147483647i, vec3<bool>(true, true, true), 8623u), Struct_1(0i, 0u, 39248i, vec3<bool>(true, true, false), 1u), Struct_1(-40467i, 28116u, -8296i, vec3<bool>(true, true, false), 4294967295u), Struct_1(-1i, 16828u, i32(-2147483648), vec3<bool>(false, true, true), 4294967295u), Struct_1(60491i, 21434u, 48498i, vec3<bool>(false, false, true), 13172u), Struct_1(i32(-2147483648), 4294967295u, 1i, vec3<bool>(false, true, true), 75111u), Struct_1(-4147i, 4294967295u, 58559i, vec3<bool>(true, false, true), 13264u), Struct_1(-42737i, 4294967295u, 8952i, vec3<bool>(true, false, true), 1u), Struct_1(0i, 4294967295u, 15344i, vec3<bool>(false, false, false), 4294967295u), Struct_1(2147483647i, 4294967295u, -1i, vec3<bool>(false, false, true), 45354u), Struct_1(-29825i, 1u, 6234i, vec3<bool>(true, true, true), 11464u), Struct_1(30067i, 3930u, 2147483647i, vec3<bool>(true, false, false), 1u), Struct_1(-23895i, 4294967295u, -22819i, vec3<bool>(true, true, true), 4294967295u), Struct_1(1i, 0u, i32(-2147483648), vec3<bool>(false, false, false), 55346u), Struct_1(20266i, 0u, i32(-2147483648), vec3<bool>(false, true, true), 1u), Struct_1(2147483647i, 21418u, -51321i, vec3<bool>(true, true, true), 34147u), Struct_1(-1i, 4235u, 6919i, vec3<bool>(false, false, false), 3686u));

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    global2 = array<Struct_1, 30>();
    global0 = all(vec3<bool>(!(!all(vec4<bool>(false, global3.x, false, true))), all(select(vec2<bool>(false, arg_1.a.d.x), arg_0.d.yy, all(vec4<bool>(false, false, true, arg_0.d.x)))), global3.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1080f, global1.c.x), _wgslsmith_f_op_f32(min(global1.c.x, -1210f)), -174f) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global1.c.wwz, vec3<f32>(global1.c.x, global1.c.x, 207f)), vec3<f32>(global1.c.x, -1504f, global1.c.x))))), vec3<f32>(global1.c.x, global1.c.x, _wgslsmith_f_op_f32(-907f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(min(-2503f, global1.c.x)))))));
    var var_1 = vec4<u32>(abs(abs(~4729u)), 25738u, ~(74025u >> (_wgslsmith_dot_vec2_u32(arg_1.b.wy, arg_1.b.yw) % 32u)), 4294967295u) & vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30954u, 0u), vec2<u32>(21796u, arg_0.e)) << (select(vec2<u32>(1u, 1u), arg_1.b.wz, arg_1.a.d.yx) % vec2<u32>(32u)), vec2<u32>(21895u, 4294967295u)), min(arg_0.e, arg_0.e), min(arg_1.b.x, arg_0.b), arg_0.b);
    let var_2 = vec4<i32>(~(-(-88682i << (arg_1.a.b % 32u)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(11816u, 38867u), vec2<u32>(1u, 56664u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b.x, var_1.x), arg_1.b.zw)) % 32u)), (i32(-1i) * -1i) | -select(~arg_0.a, -14380i, false || global3.x), -arg_0.c, -1i);
    return select(firstTrailingBit(var_2.x), 2147483647i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, global1.c.x, arg_1.a.d.x))))) >= global1.c.x);
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_1, 30>();
    let var_0 = Struct_4(global1.a, true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(-global1.c.x), global1.c.x, global1.c.x) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(294f - -218f), _wgslsmith_f_op_f32(global1.c.x - global1.c.x), global1.c.x, global1.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.x, -294f, 956f, global1.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -2072f, global1.c.x, global1.c.x)))))));
    global3 = vec4<bool>(false, true, (-func_3(global2[_wgslsmith_index_u32(1u, 30u)], Struct_2(Struct_1(u_input.a, 0u, u_input.a, global3.wxz, 4294967295u), vec4<u32>(0u, 43524u, 0u, 39170u))) > _wgslsmith_sub_i32(78496i, 1i)) != global1.b, global3.x);
    var var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(81414u, 21482u)), vec2<u32>(1u, 1u)), 1u), 30u)], _wgslsmith_mod_vec4_u32(~max(vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(69415u, 0u, 1u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~4294967295u, 1u, 1u, 26152u))));
    var var_2 = abs(1u);
    return Struct_4(Struct_3(true), global3.x, _wgslsmith_f_op_vec4_f32(-global1.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_3 {
    global2 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(step(arg_0.c.x, global1.c.x))), _wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(-748f * var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - var_0) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-816f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.c.x - arg_0.c.x), _wgslsmith_f_op_f32(-global1.c.x), arg_1.a == arg_2.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(240f, -715f)) * var_0)))));
    global0 = global1.b;
    return func_2().a;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = -u_input.b.wzy;
    global1 = Struct_4(Struct_3(true), any(!global3.xxy), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(trunc(224f)), global1.c.x, global1.c.x));
    global1 = Struct_4(func_4(func_2(), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u), firstLeadingBit(18798u)), 30u)], u_input.b.xzz, firstTrailingBit(vec4<u32>(~35614u, firstLeadingBit(0u), 4294967295u, ~4294967295u))), (1u <= _wgslsmith_clamp_u32(_wgslsmith_add_u32(31944u, 0u), _wgslsmith_mod_u32(44780u, 5271u), select(0u, 0u, true))) & false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -186f), global1.c.x, -940f, _wgslsmith_f_op_f32(sign(-1120f)))));
    let var_1 = global1.c.x;
    let var_2 = 12190u;
    return -10054i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!(!vec4<bool>(global3.x, !global3.x, true, false)));
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_clamp_i32(func_1(vec2<bool>(global3.x, false)), u_input.a | 23293i, _wgslsmith_clamp_i32(u_input.b.x, u_input.a, 2147483647i))));
}

