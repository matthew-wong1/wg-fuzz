struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-7362i, -19335i, 6805i), vec3<u32>(6058u, 0u, 12543u), vec2<u32>(12640u, 0u));

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = abs(-(_wgslsmith_clamp_i32(select(2147483647i, 0i, global2.x), arg_0.a.x & 60746i, arg_0.a.x) & _wgslsmith_mod_i32(global0.a.x, 71663i)));
    global1 = array<Struct_1, 11>();
    var var_1 = Struct_1(~abs(~_wgslsmith_mult_vec3_i32(vec3<i32>(-12413i, 20122i, 28082i), vec3<i32>(-4086i, global0.a.x, var_0))), global3.b, ~vec2<u32>(_wgslsmith_add_u32(~global3.c.x, global0.c.x), 0u));
    global1 = array<Struct_1, 11>();
    let var_2 = global1[_wgslsmith_index_u32(~(abs(5000u) | u_input.b) & 106844u, 11u)];
    return global3.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> u32 {
    global0 = Struct_1(vec3<i32>(-23373i, 1i, arg_2.x), func_3(arg_0, vec2<f32>(-431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-455f, -1000f)) + _wgslsmith_f_op_f32(-1761f - 1077f)))), vec2<u32>(~7058u, 85344u));
    var var_0 = select(!global2.xx, select(select(vec2<bool>(!global2.x, true), vec2<bool>(true, !global2.x), true), select(!vec2<bool>(global2.x, true), !(!vec2<bool>(false, arg_3.x)), global2.x), arg_3.x), vec2<bool>(true, all(select(global2.zx, !global2.yz, select(vec2<bool>(global2.x, global2.x), global2.yx, arg_3.xx)))));
    global3 = global1[_wgslsmith_index_u32(global0.b.x, 11u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1100f, 303f, 2134f))))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1833f)), -2017f, _wgslsmith_f_op_f32(f32(-1f) * -1200f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, _wgslsmith_f_op_f32(f32(-1f) * -275f), _wgslsmith_f_op_f32(abs(-1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1221f, -1000f, -390f))), vec3<f32>(-634f, _wgslsmith_f_op_f32(630f - -348f), _wgslsmith_div_f32(813f, 1349f)))));
    var var_2 = Struct_1(global3.a, ~u_input.d, ~(~(_wgslsmith_mult_vec2_u32(u_input.d.zy, global0.c) ^ func_3(global1[_wgslsmith_index_u32(global3.c.x, 11u)], var_1.yy).zy)));
    return 75902u;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x << (44131u % 32u), _wgslsmith_mod_u32(u_input.c.x, 4294967295u), _wgslsmith_mod_u32(global0.b.x, global0.b.x), _wgslsmith_sub_u32(global3.b.x, arg_0.b.x)), u_input.c), min(u_input.c, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(global0.c.x, 17345u, global0.b.x, arg_0.b.x)), vec4<u32>(10021u, 1u, 30002u, global3.b.x)))));
    global1 = array<Struct_1, 11>();
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~(-22814i), (2147483647i >> (u_input.c.x % 32u)) << (arg_0.b.x % 32u), global0.a.x), global0.a), _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(21875u, firstTrailingBit(81161u), _wgslsmith_sub_u32(u_input.d.x, 7964u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 42312u, 0u) >> (global0.b % vec3<u32>(32u)), global0.b)), ~vec2<u32>(_wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(4454u, var_0.x)), 71031u));
    let var_3 = select(vec4<bool>(global2.x, !(!global2.x), !arg_1, !(any(global2.wzy) && any(vec2<bool>(true, global2.x)))), select(vec4<bool>(true, true, arg_1 && true, false), !vec4<bool>(global2.x, false, false, false), !vec4<bool>(true, global2.x, true, select(false, false, false))), vec4<bool>(arg_1 || true, _wgslsmith_f_op_f32(f32(-1f) * -1216f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(472f)), _wgslsmith_f_op_f32(trunc(1000f))), arg_1, !any(vec4<bool>(arg_1, false, true, global2.x))));
    return _wgslsmith_f_op_f32(-1f);
}

fn func_5(arg_0: f32) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(global0.c.x >> (global0.b.x % 32u), ~(~69082u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b.x, 0u, min(global0.c.x, global3.b.x) & (u_input.d.x & u_input.e), select(u_input.e, global0.b.x << (0u % 32u), select(false, global2.x, true))), abs(vec4<u32>(~u_input.b, _wgslsmith_mult_u32(u_input.b, 4294967295u), ~global3.b.x, abs(6855u)))), ~0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 256f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(251f - -518f)))));
    let var_2 = 1616f;
    global1 = array<Struct_1, 11>();
    var var_3 = -1824f;
    return any(vec4<bool>(false, global2.x, true, !(!all(global2.xzz))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-637f)))))));
    global1 = array<Struct_1, 11>();
    global0 = global1[_wgslsmith_index_u32(global3.c.x, 11u)];
    global2 = select(vec4<bool>(false, global2.x, global2.x | global2.x, true), !(!vec4<bool>(global2.x & true, global2.x != false, global0.b.x < u_input.e, true)), (global3.a.x ^ min(-21806i, max(13604i, u_input.a))) == _wgslsmith_add_i32(arg_1, i32(-1i) * -2147483647i));
    let var_1 = !func_5(_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(~func_2(Struct_1(vec3<i32>(-13634i, global3.a.x, global0.a.x), global3.b, vec2<u32>(global0.b.x, global0.b.x)), vec2<i32>(-1i, -25853i), vec3<i32>(27099i, -13062i, 0i), global2.xzx), 11u)], true)));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(vec3<i32>(-8727i, 0i, -2147483647i), func_1(~vec2<i32>(2147483647i, global0.a.x) & global0.a.zx, _wgslsmith_clamp_i32(global3.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, 23481i), vec2<i32>(1i, -1i)) | -u_input.a, ~global0.a.x)), ~((~u_input.c.wy << ((vec2<u32>(51250u, global3.b.x) & global3.b.yz) % vec2<u32>(32u))) ^ vec2<u32>(~global3.b.x, 0u)));
    let var_0 = Struct_1(_wgslsmith_mult_vec3_i32(global3.a, countOneBits(select(vec3<i32>(2785i, global3.a.x, u_input.a), global3.a, global2.zwx) | (vec3<i32>(global0.a.x, u_input.a, global0.a.x) << (vec3<u32>(global0.b.x, global3.c.x, global3.b.x) % vec3<u32>(32u))))), ~_wgslsmith_div_vec3_u32(vec3<u32>(76965u, reverseBits(59057u), reverseBits(58384u)), vec3<u32>(u_input.e ^ 4294967295u, min(4294967295u, global3.b.x), 105825u)), ~min(u_input.d.zx, vec2<u32>(_wgslsmith_mult_u32(global3.b.x, global3.b.x), 14711u)));
    let var_1 = Struct_1(global3.a, global3.b, ~global3.b.yx);
    global1 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~global0.b.yz, vec3<u32>(_wgslsmith_clamp_u32(abs(21476u), 1u, var_0.b.x | 91767u), ~1u, 23857u) & ~var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-540f))));
}

