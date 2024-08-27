struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 207f;

var<private> global1: array<f32, 10>;

var<private> global2: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.d, global2.e.x, global2.d), vec4<i32>(-7805i, -2147483647i, arg_0.e.x, arg_0.e.x)), ~vec4<i32>(arg_0.e.x, arg_0.d, arg_0.d, arg_0.e.x), vec4<i32>(-2147483647i, 56518i, arg_0.d, 42225i)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(14769i, global2.e.x, global2.e.x, global2.d), vec4<i32>(7225i, arg_0.d, -35873i, arg_0.e.x)))) == -(firstLeadingBit(global2.d) | (arg_0.d << (u_input.a.x % 32u))), vec2<u32>(global2.b.x, ~(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(16180u, 4294967295u, arg_0.c.a, 56867u)) & (arg_0.b.x >> (37627u % 32u)))), arg_0.c, global2.d, arg_0.e);
    global0 = global1[_wgslsmith_index_u32(~u_input.a.x, 10u)];
    var var_1 = select(var_0.b, _wgslsmith_mod_vec2_u32(~(~vec2<u32>(arg_0.b.x, 0u) << (vec2<u32>(arg_0.b.x, u_input.a.x) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global2.b.x, 32849u, global2.b.x, 58299u)), global2.b.x | 1u), firstLeadingBit(~1u))), !arg_1);
    let var_2 = -1i;
    var var_3 = var_0;
    return var_3.e.x > ~1i;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = arg_0.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1904f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 10u)] * 142f)))) - -474f));
    let var_1 = -global2.e.x;
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-(var_1 & var_1)), -41864i >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(1i), 377i), -abs(global2.e.zx))), vec3<i32>(_wgslsmith_mod_i32(countOneBits(countOneBits(global2.e.x)), var_1 << (~var_0 % 32u)), countOneBits(-1i), ~global2.e.x));
    let var_3 = abs(~(~_wgslsmith_clamp_u32(25759u, 0u, global2.b.x) | _wgslsmith_dot_vec2_u32(u_input.a.wx, ~u_input.a.xy)));
    return ~min(u_input.a.ww, global2.b);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    global2 = Struct_3(!(global2.c.a > _wgslsmith_mult_u32(abs(4294967295u), arg_2.a | 1u)), _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.yz)), func_4(max(_wgslsmith_div_vec3_u32(u_input.a.wwy, u_input.a.yxz), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.b.x, global2.c.a), vec3<u32>(34401u, 26295u, 85365u), vec3<u32>(36775u, 27152u, u_input.a.x))), arg_1, vec4<bool>(false, global2.d < 16186i, true, func_3(Struct_3(arg_1, vec2<u32>(1u, 0u), arg_2, global2.d, vec3<i32>(-2147483647i, 0i, global2.d)), vec2<bool>(true, arg_0), false)), !vec2<bool>(arg_0, arg_0))), global2.c, global2.d, global2.e);
    global1 = array<f32, 10>();
    var var_0 = global1[_wgslsmith_index_u32(global2.b.x, 10u)];
    global2 = Struct_3(arg_1, vec2<u32>(reverseBits(func_4(vec3<u32>(arg_2.a, 0u, global2.c.a), false, !vec4<bool>(arg_1, global2.a, true, true), vec2<bool>(true, true)).x), 0u), arg_2, abs(1i), vec3<i32>(abs(firstLeadingBit(-1i)), -35409i, -17434i));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(770f, 318f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(0u & u_input.a.x), 10u)] + _wgslsmith_f_op_f32(-1105f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 10u)] + 1342f))), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(abs(global2.c.a), 10u)]))));
    return Struct_3(all(select(select(!vec4<bool>(true, arg_0, arg_0, false), !vec4<bool>(false, true, true, arg_1), true), vec4<bool>(false, arg_0, arg_1, !arg_1), global2.d == -1i)), firstLeadingBit(~min(vec2<u32>(u_input.a.x, arg_2.a) << (vec2<u32>(7237u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(0u, 0u))), global2.c, (global2.e.x ^ ~min(global2.e.x, global2.e.x)) | _wgslsmith_sub_i32(global2.e.x, global2.d), global2.e);
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> bool {
    global1 = array<f32, 10>();
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -853f);
    var var_0 = vec4<bool>(!(!arg_0.a), arg_0.a, !(!all(vec4<bool>(global2.a, true, false, true))) && select(global2.a, true, arg_0.a), _wgslsmith_mod_i32(12548i, ~min(arg_0.d, arg_0.e.x)) == (-63238i & (abs(global2.d) & _wgslsmith_sub_i32(11829i, -55227i))));
    var_0 = select(select(!(!select(vec4<bool>(true, false, var_0.x, arg_0.a), vec4<bool>(true, false, true, false), vec4<bool>(true, global2.a, false, false))), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, false, global2.a)), arg_0.a, true, any(vec3<bool>(false, false, false))), !select(!vec4<bool>(arg_0.a, var_0.x, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, true, true, true), var_0.x), any(vec2<bool>(false, global2.a)))), select(select(select(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, global2.a, var_0.x, true), var_0.x), vec4<bool>(arg_0.a, var_0.x, false, global2.a), all(vec2<bool>(var_0.x, arg_0.a))), vec4<bool>(u_input.a.x <= u_input.a.x, !var_0.x, true, !global2.a), select(!vec4<bool>(arg_0.a, global2.a, false, false), vec4<bool>(false, false, false, var_0.x), !vec4<bool>(true, true, arg_0.a, var_0.x))), vec4<bool>(true, true | !arg_0.a, any(!var_0.xwx), true), !select(select(vec4<bool>(global2.a, false, var_0.x, true), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), false), vec4<bool>(var_0.x, true, arg_0.a, arg_0.a), !arg_0.a)), var_0.x);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(global2.e.x, arg_0.d, -15230i, -1i), vec4<i32>(global2.e.x, 2147483647i, arg_0.e.x, -23807i)) | (select(vec4<i32>(1i, 59652i, 15089i, arg_0.e.x), vec4<i32>(-2147483647i, -42171i, arg_0.e.x, 2147483647i), vec4<bool>(arg_0.a, arg_0.a, false, true)) & (vec4<i32>(2147483647i, arg_0.e.x, -1i, global2.d) ^ vec4<i32>(-1i, arg_0.e.x, global2.e.x, -29179i))), firstLeadingBit(_wgslsmith_div_vec4_i32(max(vec4<i32>(global2.d, 1i, arg_0.e.x, arg_0.e.x), vec4<i32>(arg_0.d, -35303i, arg_0.d, -18569i)), vec4<i32>(1i, arg_0.e.x, -2147483647i, -33134i) >> (u_input.a % vec4<u32>(32u))))), -(~21101i), 2147483647i);
    return !(!var_0.x);
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global2.b.x, global2.b.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, global2.b.x, 8133u)), 10u)] - global1[_wgslsmith_index_u32(u_input.a.x, 10u)]), -960f, func_5(func_2(global2.a, false, global2.c), _wgslsmith_f_op_f32(f32(-1f) * -1943f))))) + global1[_wgslsmith_index_u32(global2.c.a & _wgslsmith_clamp_u32(~u_input.a.x, ~(~21969u), ~u_input.a.x >> (15773u % 32u)), 10u)]);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.b.x, 10u)] * 554f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1761f))) + 1158f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(49566u, global2.b.x), 10u)])) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 10u)] * global1[_wgslsmith_index_u32(0u, 10u)]) * global1[_wgslsmith_index_u32(global2.b.x, 10u)]))), global2.a);
    var var_1 = func_2(true, false, Struct_2(_wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_sub_u32(global2.b.x, 3046u)))).c;
    global1 = array<f32, 10>();
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 10u)])) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1052f * global1[_wgslsmith_index_u32(global2.c.a, 10u)]), _wgslsmith_div_f32(-955f, -735f))))), true);
    return Struct_2(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(all(select(vec4<bool>(all(vec2<bool>(true, true)), false, global2.a != global2.a, global2.a), !vec4<bool>(global2.a, true, true, global2.a), vec4<bool>(all(vec2<bool>(false, true)), global2.a || true, false, !global2.a))), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(min(global2.c.a, 45045u) >> (50100u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, global2.c.a, 19074u), u_input.a.yzy) >> (u_input.a.x % 32u))), func_1(), global2.d, vec3<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.e.x, -2147483647i, 2147483647i), vec4<i32>(global2.e.x, 30765i, 59805i, 2147483647i))), -2147483647i, func_2(func_5(func_2(true, false, global2.c), _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global2.c.a, 10u)]))), all(vec3<bool>(global2.a, false, global2.a)), global2.c).e.x));
    global0 = global1[_wgslsmith_index_u32(~0u, 10u)];
    let var_0 = global2.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(var_0.a, 10u)], global1[_wgslsmith_index_u32(var_0.a, 10u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_0.a, 10u)], global1[_wgslsmith_index_u32(1u, 10u)]))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-2289f)), _wgslsmith_f_op_f32(abs(1500f))))), vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyy, vec3<u32>(17911u, u_input.a.x, 4294967295u) & u_input.a.ywx), 10u)] * global1[_wgslsmith_index_u32(var_0.a, 10u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~u_input.a.x), 10u)]))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), any(!vec3<bool>(select(true, true, global2.a), global2.a, !global2.a)));
    global1 = array<f32, 10>();
    var var_3 = select(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global2.e.x, 2147483647i, -1i, 1i), abs(vec4<i32>(global2.e.x, global2.e.x, global2.d, global2.d)))), ~(~vec4<i32>(0i, global2.d, -33550i, global2.e.x) >> (vec4<u32>(var_0.a, var_0.a, 65653u, 4294967295u) % vec4<u32>(32u)))), -1i, !any(!(!vec3<bool>(global2.a, true, false))));
    var_3 = -16048i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1, vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(var_1))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(633f, var_2.a, -2078f) - vec3<f32>(565f, global1[_wgslsmith_index_u32(28491u, 10u)], -393f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1360f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], 2583f), vec3<f32>(243f, 661f, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(80211u, 10u)]), global1[_wgslsmith_index_u32(~34751u, 10u)], _wgslsmith_f_op_f32(var_2.a - var_2.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.b.x, 10u)], 1000f, 309f))))));
}

