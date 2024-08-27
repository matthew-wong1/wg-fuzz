struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<f32, 22>;

var<private> global2: Struct_3 = Struct_3(11531i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global2 = Struct_3(_wgslsmith_mult_i32(global2.a & global2.a, -56861i));
    var var_0 = ((i32(-1i) * -global2.a) | ~(i32(-1i) * -15698i)) & (~(global2.a << (max(arg_0.x, u_input.b) % 32u)) << (arg_0.x % 32u));
    global0 = vec3<bool>(true, global0.x, !select(any(vec4<bool>(global0.x, global0.x, true, global0.x)) | (arg_0.x < 1u), (global2.a & global2.a) < ~global2.a, !(u_input.a != arg_0.x)));
    let var_1 = Struct_2(!global0.x, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1161f) * 1540f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-740f)) * _wgslsmith_div_f32(-1000f, -616f)), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(112299u, 22u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_0.x, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -388f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 523f, global1[_wgslsmith_index_u32(u_input.c.x, 22u)]) - vec3<f32>(-582f, global1[_wgslsmith_index_u32(36106u, 22u)], global1[_wgslsmith_index_u32(arg_0.x, 22u)])))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1114f + 553f)), -545f, global1[_wgslsmith_index_u32(~reverseBits(4294967295u), 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(527f, -1847f)) - global1[_wgslsmith_index_u32(arg_0.x, 22u)])), 2147483647i, -25042i, global0.x));
    let var_2 = _wgslsmith_f_op_f32(min(-2353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~9301u, ~arg_0.x), 22u)])))));
    return 360f;
}

fn func_2() -> bool {
    var var_0 = !(!vec4<bool>(!(global0.x == global0.x), false, false, any(select(global0.xz, global0.yy, global0.xx))));
    var var_1 = Struct_2(global0.x, !(!(!select(global0.yx, global0.xy, var_0.x))), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.c, _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 90253u, u_input.a)), u_input.c)), 22u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, 506f)))), global1[_wgslsmith_index_u32(0u, 22u)]), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(574f, -1385f, 400f, -1000f)) + vec4<f32>(-109f, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], 174f)))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global2.a), ~vec3<i32>(global2.a, global2.a, -20639i)), ~global2.a), _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, -global2.a), -(1929i | global2.a)), true && (global0.x && (true & global0.x))));
    var var_2 = _wgslsmith_mult_vec2_u32(min(select(vec2<u32>(1u, u_input.b), vec2<u32>(4294967295u, 4294967295u), global0.x != false), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.b, 0u), u_input.c.yy << (vec2<u32>(u_input.a, u_input.c.x) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.c.x, ~u_input.a), vec2<u32>(71763u, ~u_input.a))) ^ _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.c.yz, select(u_input.c.zy, u_input.c.yx, var_0.wy)), u_input.c.yz);
    global0 = !vec3<bool>(true, false, var_0.x);
    var var_3 = min(vec2<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(57269u, var_2.x, 62816u), min(var_2.x, countOneBits(42740u)))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(min(var_2.x, 0u), _wgslsmith_mod_u32(4294967295u, 57495u)), select(_wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(33340u, 98721u)), u_input.c.zx, var_1.b)), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(var_2.x, 79087u)), 86307u), _wgslsmith_mod_vec2_u32(~u_input.c.yy, _wgslsmith_clamp_vec2_u32(u_input.c.zy, vec2<u32>(0u, var_2.x), vec2<u32>(var_2.x, u_input.b))))));
    return (var_1.d.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(var_3.x, 65713u, 1u) >> (vec3<u32>(var_2.x, 20876u, 10116u) % vec3<u32>(32u)))) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 22u)]))) && !(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(var_1.d.a.x * var_1.c.x)) != var_1.c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_4 {
    global1 = array<f32, 22>();
    let var_0 = -vec2<i32>(-global2.a, 0i >> (0u % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 22u)], _wgslsmith_f_op_f32(round(369f)), global1[_wgslsmith_index_u32(u_input.b, 22u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)] - 152f)))), arg_1.a, max(~(_wgslsmith_mult_i32(1i, global2.a) & arg_1.a), 22712i ^ var_0.x), arg_0.x);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1391f - 446f), var_1.a.x, var_1.a.x, _wgslsmith_div_f32(var_1.a.x, var_1.a.x))))), _wgslsmith_dot_vec4_i32(vec4<i32>((var_0.x | 22589i) | (global2.a ^ arg_2), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2, -2147483647i, 2147483647i, global2.a), vec4<i32>(1i, 1i, var_0.x, arg_2)), vec4<i32>(var_0.x, -10340i, var_1.c, var_0.x)), _wgslsmith_mult_i32(abs(-90534i), max(-17449i, var_1.b)), -27431i), ~vec4<i32>(-13750i, 1i, 75269i, 1i)), max(firstTrailingBit(~arg_1.a) >> (u_input.a % 32u), ~(-2147483647i)), true);
    return Struct_4(arg_1, Struct_2(all(arg_0), select(select(select(vec2<bool>(true, var_1.d), vec2<bool>(arg_0.x, global0.x), var_1.d), arg_0.yz, global0.zy), global0.zy, arg_0.zx), _wgslsmith_div_vec3_f32(var_1.a.zxz, var_1.a.xyz), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -612f))), _wgslsmith_div_i32(firstLeadingBit(var_1.c), arg_2), var_1.b, all(!vec2<bool>(true, global0.x)))), arg_1, var_1.d);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4) -> Struct_3 {
    global1 = array<f32, 22>();
    var var_0 = Struct_3(global2.a);
    var_0 = Struct_3(countOneBits(~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, -1023i), vec2<i32>(-14306i, arg_1.a.a)), var_0.a)));
    var var_1 = u_input.c.xy;
    global1 = array<f32, 22>();
    return arg_1.a;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> bool {
    let var_0 = firstLeadingBit(~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(2147483647i, -1i, arg_0)), -vec3<i32>(0i, global2.a, 87068i)) & (-abs(vec3<i32>(-61716i, 2147483647i, 2147483647i)) ^ vec3<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -2147483647i), vec2<i32>(arg_0, global2.a)), -global2.a)));
    global1 = array<f32, 22>();
    global2 = func_5(select(!select(!vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), select(global0.x, global0.x, true)), !(!(!vec4<bool>(true, global0.x, global0.x, true))), !(!(!vec4<bool>(global0.x, true, true, global0.x)))), func_4(vec3<bool>(all(vec4<bool>(global0.x, global0.x, false, global0.x)), !global0.x, func_2()), Struct_3(abs(select(-1i, var_0.x, global0.x))), 96640i));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1.x));
    return global0.x | global0.x;
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = func_4(!(!vec3<bool>(16229u == u_input.a, !arg_0, arg_0)), arg_1, 20895i).b;
    var var_1 = !(!(!(!(!vec4<bool>(arg_0, var_0.b.x, false, arg_0)))));
    let var_2 = _wgslsmith_mod_i32(-2147483647i, ~8405i);
    let var_3 = 504f;
    return -525f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1985f;
    global1 = array<f32, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-642f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(func_1(global2.a, vec3<f32>(global1[_wgslsmith_index_u32(3540u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], var_0), u_input.c.zy), func_5(vec4<bool>(global0.x, false, global0.x, false), Struct_4(Struct_3(global2.a), Struct_2(global0.x, vec2<bool>(global0.x, false), vec3<f32>(-1365f, global1[_wgslsmith_index_u32(u_input.a, 22u)], var_0), Struct_1(vec4<f32>(-996f, 1832f, var_0, 233f), global2.a, global2.a, true)), Struct_3(global2.a), global0.x)), global0.x)) + _wgslsmith_f_op_f32(min(-110f, var_0))), _wgslsmith_div_f32(-507f, 499f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 22u)]), -1000f, func_4(vec3<bool>(global0.x, true, global0.x), Struct_3(global2.a), global2.a).b.d.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(131f, global1[_wgslsmith_index_u32(4294967295u, 22u)], var_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-383f, 977f, -1374f)))))), global0.x && global0.x));
    global2 = func_4(!(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, global0.x), select(true, true, global0.x))), func_5(select(!(!vec4<bool>(global0.x, true, global0.x, true)), vec4<bool>(global0.x | global0.x, !global0.x, false, true), vec4<bool>(func_2(), func_4(vec3<bool>(global0.x, false, true), Struct_3(global2.a), global2.a).d, true, global0.x)), Struct_4(func_5(!vec4<bool>(true, global0.x, global0.x, true), Struct_4(Struct_3(global2.a), Struct_2(global0.x, vec2<bool>(global0.x, global0.x), vec3<f32>(1639f, var_1.x, 1214f), Struct_1(vec4<f32>(192f, 321f, -620f, global1[_wgslsmith_index_u32(u_input.c.x, 22u)]), global2.a, -2147483647i, true)), Struct_3(10929i), false)), Struct_2(global0.x | global0.x, global0.xx, vec3<f32>(-632f, 328f, 583f), func_4(vec3<bool>(true, global0.x, global0.x), Struct_3(-22810i), global2.a).b.d), func_4(!vec3<bool>(global0.x, global0.x, true), func_5(vec4<bool>(global0.x, false, true, false), Struct_4(Struct_3(-8268i), Struct_2(true, global0.yx, vec3<f32>(-265f, var_0, 399f), Struct_1(vec4<f32>(-343f, 1406f, -810f, var_0), global2.a, global2.a, global0.x)), Struct_3(global2.a), true)), -2147483647i).c, global0.x)), -33591i).a;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_6(global0.x, func_5(select(!vec4<bool>(false, true, false, var_2), !vec4<bool>(true, false, global0.x, true), true || var_2), func_4(select(vec3<bool>(var_2, var_2, false), vec3<bool>(global0.x, false, global0.x), vec3<bool>(var_2, global0.x, global0.x)), func_4(vec3<bool>(global0.x, false, true), Struct_3(9436i), -1i).c, countOneBits(-1i))), true)), -(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(0i, global2.a)), ~vec2<i32>(global2.a, global2.a)) ^ -(~vec2<i32>(global2.a, global2.a))), select(vec4<u32>(~(26283u & u_input.a), ~55772u | (u_input.c.x >> (u_input.c.x % 32u)), u_input.a, _wgslsmith_dot_vec2_u32(u_input.c.zz | vec2<u32>(u_input.a, 1u), u_input.c.xx)), firstLeadingBit(vec4<u32>(~u_input.b, min(1u, 42935u), ~u_input.c.x, 0u)), u_input.c.x >= (~1u ^ ~u_input.b)), countOneBits(vec2<u32>(u_input.b, u_input.a)), select(max(-(~vec4<i32>(global2.a, global2.a, -22802i, -37257i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global2.a, 1i, global2.a), vec4<i32>(global2.a, global2.a, global2.a, 0i)) | vec4<i32>(global2.a, global2.a, global2.a, global2.a)), vec4<i32>(firstLeadingBit(countOneBits(73272i)), func_4(vec3<bool>(global0.x, true, global0.x), Struct_3(-33025i), 27805i).a.a, -24930i, global2.a | global2.a), var_2));
}

