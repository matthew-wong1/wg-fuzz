struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(false, false, false, false, false, true, true, true, true, true, true, false, true, false, true, true, false, true, true, false, false, true, false, true, true, false, false, false, true, true);

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true));

var<private> global2: bool = true;

var<private> global3: array<i32, 14> = array<i32, 14>(-11713i, 2147483647i, -16178i, 23913i, -46633i, -1i, i32(-2147483648), 15750i, -71189i, -7254i, -47190i, -16374i, 13229i, -1i);

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = array<vec4<bool>, 18>();
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(~33204u, 14u)], _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.d, 44424u), 0u)) >> (3643u % 32u), u_input.b | ~(-select(vec4<i32>(-2147483647i, -5902i, global3[_wgslsmith_index_u32(arg_1.c, 14u)], -1i), vec4<i32>(-28205i, u_input.a, 0i, -1i), global1[_wgslsmith_index_u32(1u, 18u)])));
    global4 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, global0[_wgslsmith_index_u32(~arg_2.a.d, 30u)], arg_2.a.a.x > -780f), !select(vec3<bool>(true, false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_1.c, 30u)], global0[_wgslsmith_index_u32(arg_2.a.d, 30u)]), vec3<bool>(true, true, true))), select(vec3<bool>(all(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.a.c, 30u)], global0[_wgslsmith_index_u32(var_0.b, 30u)], global0[_wgslsmith_index_u32(1u, 30u)])), !arg_0, any(vec4<bool>(global0[_wgslsmith_index_u32(16074u, 30u)], true, false, global0[_wgslsmith_index_u32(0u, 30u)]))), vec3<bool>(false, all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, global0[_wgslsmith_index_u32(arg_1.d, 30u)])), 0u > var_0.b), !(!vec3<bool>(arg_0, arg_0, false))), select(select(!vec3<bool>(arg_0, true, true), select(vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(arg_1.c, 30u)]), vec3<bool>(false, arg_0, true), true), !vec3<bool>(arg_0, global0[_wgslsmith_index_u32(arg_1.c, 30u)], arg_0)), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.c, 30u)], false), vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(30898u, 30u)], false), vec3<bool>(true, true, false)), arg_0)));
    let var_1 = Struct_2(arg_1, arg_2.a.b.wwz);
    var var_2 = select(select(select(select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(0u, 30u)], false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_1.a.c, 30u)]), any(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 30u)], true, true))), select(!vec3<bool>(false, arg_0, global0[_wgslsmith_index_u32(1u, 30u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 30u)], arg_0), !vec3<bool>(arg_0, true, global0[_wgslsmith_index_u32(1u, 30u)])), false), !vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.c, 30u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(44315u, var_0.b), 30u)], var_1.b.x <= var_1.a.b.x), vec3<bool>(false, _wgslsmith_f_op_f32(sign(var_1.b.x)) >= -1000f, !(arg_0 & true))), vec3<bool>(!(true || any(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.d, 30u)], false, global0[_wgslsmith_index_u32(28310u, 30u)]))), global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(65651u, 45093u), countOneBits(var_0.b)), 30u)] | (!arg_0 == true), true), select(!vec3<bool>(arg_1.a.x > -2956f, arg_0, any(global1[_wgslsmith_index_u32(arg_1.c, 18u)])), select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(29094u, 30u)], true), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(var_1.a.d, 37593u), 1u), 30u)]), select(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)], arg_0)), !vec3<bool>(false, arg_0, arg_0), arg_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))) * 302f);
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(-1435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) * _wgslsmith_f_op_f32(func_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -340f) - vec2<f32>(738f, -417f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1452f, -580f, -478f, -1000f) + vec4<f32>(-124f, -1916f, 1759f, -421f)), ~4294967295u, _wgslsmith_clamp_u32(0u, 88618u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(134f, 580f), vec4<f32>(1000f, 413f, -1372f, 108f), 7067u, 6319u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2194f, 387f, 303f)))))));
    global0 = array<bool, 30>();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(6416u, 45912u << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8318u, 1u), vec3<u32>(31128u, 56947u, 1u))) % 32u)), 14u)], 63119u, vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, i32(-1i) * -global3[_wgslsmith_index_u32(4294967295u, 14u)]), 1i, u_input.b.x, 0i));
    var var_2 = vec3<u32>(var_1.b, 4294967295u, var_1.b) >> (_wgslsmith_sub_vec3_u32(~select(select(vec3<u32>(var_1.b, var_1.b, var_1.b), vec3<u32>(var_1.b, var_1.b, var_1.b), true), vec3<u32>(var_1.b, 1u, 4294967295u) | vec3<u32>(1421u, 16221u, 15639u), select(vec3<bool>(arg_0, arg_0, arg_1), vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_1.b, 30u)], arg_0), true)), ~reverseBits(vec3<u32>(49889u, 4294967295u, 85811u)) & select(~vec3<u32>(1u, var_1.b, 0u), vec3<u32>(var_1.b, var_1.b, var_1.b), arg_0)) % vec3<u32>(32u));
    var var_3 = countOneBits(_wgslsmith_sub_vec4_i32(var_1.c, vec4<i32>(1i, var_1.c.x, -4802i, -54157i)));
    return 11912u;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32) -> vec2<u32> {
    global1 = array<vec4<bool>, 18>();
    global4 = false | !(arg_2 != ~1u);
    var var_0 = ~vec4<u32>(countOneBits(arg_2), arg_2, firstTrailingBit(~(0u >> (0u % 32u))), 28382u);
    var var_1 = global0[_wgslsmith_index_u32(min(~abs(arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2) & vec2<u32>(59760u, var_0.x), ~var_0.yz) & 39337u), 30u)];
    var_0 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_2, func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 71850u, 47036u), vec3<u32>(5977u, 86871u, 0u)), 30u)], true), 0u), 0u), select(_wgslsmith_clamp_u32(max(~arg_2, 24468u), var_0.x, abs(arg_2)), arg_2, true), ~(~24230u), arg_2);
    return ~(~select(vec2<u32>(0u, var_0.x) >> ((var_0.zz | var_0.zy) % vec2<u32>(32u)), ~(~vec2<u32>(arg_2, 4294967295u)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(11860u, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], false), any(vec3<bool>(global0[_wgslsmith_index_u32(78952u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(21451u, 0u), ~vec2<u32>(1u, 34539u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), 30u)]), vec2<u32>(1u, 1u)) ^ _wgslsmith_dot_vec2_u32(firstTrailingBit(func_1(-37311i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), u_input.b.yyz), countOneBits(5704u))), ~reverseBits(reverseBits(vec2<u32>(4294967295u, 31665u)))), 30u)];
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(15485u, 0u), ~8277u), ~(~0u)), 14u)], 1u, u_input.b);
    var var_1 = !any(vec2<bool>(any(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true, false)), false));
    let var_2 = select(select(select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(6515u, 30u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(var_0.b, 30u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(506u, 30u)]), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 30u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(69627u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_0.b, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(var_0.b, 30u)])), global0[_wgslsmith_index_u32(2967u, 30u)]), false), select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(67045u, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 30u)], global0[_wgslsmith_index_u32(5716u, 30u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.b, 30u)], global0[_wgslsmith_index_u32(59644u, 30u)])), vec2<bool>(global0[_wgslsmith_index_u32(94810u, 30u)] && global0[_wgslsmith_index_u32(var_0.b, 30u)], 1473i == global3[_wgslsmith_index_u32(var_0.b, 14u)]), true), -var_0.c.x == -global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.b, var_0.b, var_0.b), 14u)]), vec2<bool>(-2147483647i <= ((u_input.b.x | u_input.b.x) >> (var_0.b % 32u)), global0[_wgslsmith_index_u32(abs(var_0.b), 30u)]), vec2<bool>(any(global1[_wgslsmith_index_u32(0u, 18u)]), global0[_wgslsmith_index_u32(func_2(any(vec3<bool>(false, true, false)), true), 30u)]));
    let var_3 = var_0.c.zx;
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(781f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(142f, 177f, 421f, 243f) * vec4<f32>(-755f, 439f, -1000f, 1365f)), _wgslsmith_div_vec4_f32(vec4<f32>(-707f, 1210f, -593f, 1806f), vec4<f32>(1487f, -197f, -1693f, -782f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1097f, 799f, -517f, -825f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, -1000f, 812f, -535f))))), 53629u, reverseBits(~4294967295u));
    global4 = any(select(select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x), vec2<bool>(global0[_wgslsmith_index_u32(var_4.d, 30u)], false)), select(var_2, select(vec2<bool>(false, global0[_wgslsmith_index_u32(33898u, 30u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(var_0.b, 30u)]), vec2<bool>(var_2.x, var_2.x)), var_2.x && var_2.x)) && !any(global1[_wgslsmith_index_u32(var_0.b, 18u)]);
    let var_5 = var_2;
    var_1 = all(!vec4<bool>(_wgslsmith_div_f32(-147f, var_4.b.x) >= var_4.b.x, any(vec3<bool>(false, false, true)), all(global1[_wgslsmith_index_u32(func_1(28608i, -3416i, var_0.b).x, 18u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-824f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1218f + _wgslsmith_f_op_f32(trunc(-1016f))))), var_4.a.x);
}

