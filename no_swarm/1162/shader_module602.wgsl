struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 12> = array<u32, 12>(29565u, 0u, 117542u, 0u, 4294967295u, 4294967295u, 40630u, 6199u, 45231u, 23671u, 15092u, 33440u);

var<private> global2: vec3<u32>;

var<private> global3: Struct_4;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    var var_0 = global3.c.b.e.wy;
    let var_1 = Struct_1(~(-arg_1.d.b.a), select(select(global3.b, vec4<bool>(global3.c.b.b.x, true, any(vec2<bool>(true, true)), any(vec2<bool>(global3.b.x, global3.b.x))), true), arg_1.a.b, !any(vec4<bool>(true, false, false, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -14839i | var_0.x), abs(arg_1.d.b.a & arg_1.d.b.a) ^ vec2<i32>(var_0.x, arg_1.a.e.x ^ u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~(~global2.x), global1[_wgslsmith_index_u32(select(~global2.x, 0u, -272f < global3.d.x), 12u)], 16559u, ~_wgslsmith_div_u32(arg_1.c, 4294967295u)), select(~(~global3.c.b.d), ~(vec4<u32>(16731u, arg_1.c, u_input.e, 97788u) & vec4<u32>(global3.c.b.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], u_input.c, 1u)), !(!vec4<bool>(arg_1.d.b.b.x, false, global3.c.b.b.x, global3.c.b.b.x))), ~_wgslsmith_div_vec4_u32(abs(arg_1.d.b.d), firstTrailingBit(vec4<u32>(35642u, 43966u, 4294967295u, 49688u)))), global3.c.b.e);
    let var_2 = arg_1.a;
    let var_3 = Struct_2(countOneBits(_wgslsmith_add_i32(arg_1.d.b.c, -_wgslsmith_add_i32(var_1.c, u_input.a.x))), Struct_1(min(-global3.c.b.e.xz & arg_1.a.a, vec2<i32>(max(var_0.x, -2147483647i), firstLeadingBit(2147483647i))), vec4<bool>(global3.c.b.b.x, any(select(var_1.b, global3.c.b.b, global3.c.b.b.x)), false, true), (i32(-1i) * -var_2.e.x) ^ _wgslsmith_mult_i32(~global3.c.a, -2147483647i & var_0.x), ~vec4<u32>(arg_1.c << (0u % 32u), reverseBits(global1[_wgslsmith_index_u32(global2.x, 12u)]), global2.x << (0u % 32u), 0u), ~var_1.e), _wgslsmith_f_op_vec4_f32(max(global3.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, arg_1.d.c.x, arg_0, global3.d.x), global3.c.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1387f, -194f, global3.c.d.x, arg_1.d.c.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.d.c.yw) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.d.x, global3.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, arg_1.d.c.x)), var_2.b.wy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3.d.yz, vec2<f32>(272f, arg_0))), _wgslsmith_f_op_vec2_f32(sign(global3.d.zy))) + arg_1.d.d)), ((1u ^ u_input.b) ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 34684u), var_1.d.xw) ^ max(u_input.b, 25510u))) >> (51816u % 32u));
    var var_4 = Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(reverseBits(firstTrailingBit(vec2<i32>(var_0.x, 1i)))), vec2<i32>(-37680i, 1i)), select(vec4<bool>(!var_1.b.x, all(select(arg_1.a.b.zw, vec2<bool>(false, true), vec2<bool>(true, true))), false, all(var_1.b)), vec4<bool>(any(vec4<bool>(var_3.b.b.x, false, global3.b.x, var_3.b.b.x)), !(!arg_1.a.b.x), var_2.b.x, (global3.c.b.b.x & true) && all(arg_1.a.b.zw)), any(arg_1.d.b.b)), countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(7459i, -6046i, -34265i, -22269i) << (vec4<u32>(34279u, 1u, arg_1.d.e, global1[_wgslsmith_index_u32(42151u, 12u)]) % vec4<u32>(32u)), arg_1.d.b.e >> (vec4<u32>(4294967295u, global3.c.e, global3.c.b.d.x, 4316u) % vec4<u32>(32u)), true), global3.c.b.e)), ~vec4<u32>(global1[_wgslsmith_index_u32(72599u, 12u)], ~(~1u), max(~var_2.d.x, 4294967295u), _wgslsmith_mult_u32(global3.c.e, 1u) >> (firstTrailingBit(4294967295u) % 32u)), arg_1.a.e);
    return var_3.c.x;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> u32 {
    global1 = array<u32, 12>();
    let var_0 = Struct_3(Struct_1(countOneBits(vec2<i32>(abs(-2147483647i), firstLeadingBit(u_input.d))), !select(!global3.c.b.b, arg_1.c.b.b, 2428f < arg_1.d.x), u_input.a.x ^ global3.a.x, (vec4<u32>(1u, 5133u, arg_1.c.b.d.x, 11620u) ^ min(vec4<u32>(17599u, global1[_wgslsmith_index_u32(global2.x, 12u)], 4294967295u, u_input.b), vec4<u32>(1u, 0u, arg_1.c.e, 4294967295u))) ^ ~vec4<u32>(arg_1.c.e, global1[_wgslsmith_index_u32(1u, 12u)], global2.x, 1u), countOneBits(select(vec4<i32>(0i, 28408i, u_input.a.x, 14135i) << (vec4<u32>(0u, global3.c.b.d.x, 22143u, global1[_wgslsmith_index_u32(global3.c.e, 12u)]) % vec4<u32>(32u)), global3.c.b.e, select(global3.b, global3.b, global3.c.b.b)))), global3.c.b.b.x, arg_1.c.e, Struct_2(abs(_wgslsmith_mult_i32(arg_1.a.x | global3.a.x, -u_input.a.x)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, global3.a.x), max(global3.c.b.e.zw, arg_1.c.b.a), arg_1.a.zy), arg_1.b, ~1i, ~vec4<u32>(u_input.b, 1u, global3.c.b.d.x, global1[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<i32>(global3.c.a, arg_1.c.a, ~2147483647i, _wgslsmith_dot_vec3_i32(arg_1.c.b.e.zzz, arg_1.c.b.e.zyx))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -316f) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(global3.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1398f)), _wgslsmith_f_op_f32(arg_0 * -613f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-747f, 1275f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.xx))), arg_1.c.e));
    let var_1 = vec4<bool>(all(!vec4<bool>(var_0.d.b.b.x, arg_1.c.b.b.x, true, true)), global3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) > -1099f, false);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.d, var_0.d.c.wyx, select(vec3<bool>(global3.b.x != global3.b.x, !var_0.a.b.x, false), !vec3<bool>(true, false, global3.b.x), select(!var_1.yxx, select(vec3<bool>(arg_1.b.x, true, false), arg_1.b.wxx, global3.c.b.b.x), select(arg_1.b.yzz, vec3<bool>(arg_1.c.b.b.x, false, global3.b.x), var_0.a.b.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-138f, arg_0, var_0.d.c.x) * _wgslsmith_div_vec3_f32(vec3<f32>(global3.d.x, global3.c.c.x, 318f), _wgslsmith_f_op_vec3_f32(-var_0.d.c.zzy))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_1.d - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.x, -726f, 2228f) - vec3<f32>(-1139f, -1257f, arg_0)))))));
    return ~(~firstTrailingBit(firstLeadingBit(_wgslsmith_mult_u32(arg_1.c.b.d.x, global3.c.b.d.x))));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    global0 = _wgslsmith_clamp_u32(~abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(6492u, 1u, global1[_wgslsmith_index_u32(26393u, 12u)], global1[_wgslsmith_index_u32(arg_0.x, 12u)]) | global3.c.b.d, ~global3.c.b.d), 12u)]), 1u, 4294967295u);
    global3 = Struct_4(global3.a, !global3.b, Struct_2(i32(-1i) * -1i, global3.c.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(394f, 718f, global3.d.x, global3.d.x), global3.c.c)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3.d.x, global3.d.x), _wgslsmith_f_op_f32(-global3.d.x))), global1[_wgslsmith_index_u32(0u, 12u)]), vec3<f32>(global3.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.c.c.x), _wgslsmith_f_op_f32(round(-1421f)), true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(190f, global3.c.c.x))))), _wgslsmith_div_f32(global3.c.c.x, -222f)));
    var var_0 = global3.c.b;
    global1 = array<u32, 12>();
    var var_1 = vec4<u32>(abs(_wgslsmith_mod_u32(global2.x, ~(global1[_wgslsmith_index_u32(43722u, 12u)] ^ 122109u))), select(arg_0.x, global2.x, any(!select(vec2<bool>(false, false), global3.c.b.b.wz, false))), 54155u, func_4(_wgslsmith_f_op_f32(-853f + _wgslsmith_f_op_f32(-602f * _wgslsmith_f_op_f32(func_3(global3.c.c.x, Struct_3(Struct_1(global3.a.zz, vec4<bool>(global3.c.b.b.x, false, var_0.b.x, true), u_input.a.x, var_0.d, global3.c.b.e), true, arg_0.x, Struct_2(15185i, global3.c.b, vec4<f32>(global3.c.c.x, global3.c.d.x, 126f, global3.c.c.x), vec2<f32>(-662f, global3.c.d.x), 0u)))))), Struct_4(vec3<i32>(_wgslsmith_clamp_i32(-1i, -2147483647i, -2147483647i), i32(-1i) * -28763i, 9674i), select(select(var_0.b, var_0.b, vec4<bool>(global3.b.x, true, global3.c.b.b.x, global3.c.b.b.x)), var_0.b, var_0.b), global3.c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.d.x, 1000f, global3.c.c.x))))));
    return true;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    let var_0 = vec3<bool>(func_2(global3.c.b.d.zx), !any(global3.b), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1111f, -648f, global3.c.c.x, _wgslsmith_f_op_f32(global3.d.x * global3.d.x))) * global3.c.c));
    let var_2 = Struct_4(global3.c.b.e.yzw, vec4<bool>(global3.b.x, var_0.x, global3.c.b.b.x, any(var_0)), Struct_2(select(-26032i, u_input.a.x, var_0.x), Struct_1(-u_input.a, select(global3.c.b.b, global3.c.b.b, select(vec4<bool>(global3.b.x, false, var_0.x, global3.b.x), vec4<bool>(false, global3.c.b.b.x, var_0.x, false), vec4<bool>(global3.c.b.b.x, false, true, false))), abs(51511i), min(select(vec4<u32>(u_input.b, 4294967295u, 1u, 4294967295u), global3.c.b.d, vec4<bool>(true, global3.b.x, false, false)), countOneBits(vec4<u32>(26087u, 1u, 0u, global2.x))), vec4<i32>(_wgslsmith_mult_i32(-14520i, u_input.a.x), arg_0.x, _wgslsmith_sub_i32(1i, global3.c.a), abs(0i))), var_1, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * 106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.c.x) - global3.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.c.d.x))))));
    let var_3 = var_2.c;
    global2 = vec3<u32>(var_2.c.b.d.x, countOneBits(~1u), 1u);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~vec3<u32>(u_input.b, ~(~global3.c.e), 26761u);
    let var_0 = u_input.a;
    global3 = func_1(vec2<i32>(0i, global3.c.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1242f, global3.c.d.x)))), global3.a.yz, -911f, ~global3.c.b.d.zzy, ~28569u);
}

