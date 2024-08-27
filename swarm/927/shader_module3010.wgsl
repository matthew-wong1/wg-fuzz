struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(190f, -397f, 911f, 2426f);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 16>;

var<private> global3: array<f32, 18> = array<f32, 18>(-219f, 1239f, 1284f, -1338f, 1106f, -276f, 163f, 107f, 1355f, -1187f, -1610f, -407f, -179f, 263f, -1204f, -655f, -682f, -597f);

var<private> global4: array<bool, 14> = array<bool, 14>(true, false, false, false, true, false, true, false, true, true, true, false, false, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(any(select(!vec2<bool>(arg_0.d, global4[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec2<bool>(false, arg_0.d), !arg_1.c.b)), !global4[_wgslsmith_index_u32(~max(u_input.c.x, u_input.c.x), 14u)]), !vec2<bool>(!any(vec2<bool>(arg_0.b, arg_1.a.b)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(global0.xy));
    var var_2 = reverseBits(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(59586u, 1u, 9558u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 69226u, 14701u, u_input.c.x)))));
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(45674u, countOneBits(~u_input.c.x), max(u_input.c.x, u_input.c.x)), select(abs(abs(vec3<u32>(u_input.c.x, 0u, u_input.c.x))), ~vec3<u32>(4294967295u, 0u, u_input.c.x), !(1u < u_input.c.x))) << (~(~((u_input.c.x | u_input.c.x) ^ ~17269u)) % 32u);
    let var_3 = vec2<i32>(~(-firstTrailingBit(u_input.a ^ 1929i)), arg_1.b);
    return u_input.c.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-22211i, u_input.a, u_input.a))), _wgslsmith_sub_i32(-1i, 0i), abs(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.b.xx) >> (0u % 32u)), all(vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.c.x, 14u)] & true)), vec3<f32>(-1000f, -920f, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(49503u, u_input.c.x), 18u)]), false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], 279f, -642f)), vec4<f32>(global3[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(31088u, 18u)]), _wgslsmith_f_op_f32(ceil(arg_0.x)), -616f)))), u_input.a ^ (i32(-1i) * -25053i), Struct_1(vec4<i32>(13016i, u_input.a, 0i, u_input.b.x), u_input.b.x > ~u_input.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(u_input.c.x, 18u)]), true)))), global0.wzx)), any(vec4<bool>(true, global4[_wgslsmith_index_u32(8171u, 14u)] || arg_1, arg_1 & false, all(vec2<bool>(arg_1, false)))), vec4<f32>(-1716f, _wgslsmith_f_op_f32(-arg_0.x), 1456f, _wgslsmith_f_op_f32(-775f + 345f))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(5650u, 86045u), 16u)];
    let var_2 = var_0.c;
    var var_3 = Struct_1(~(~(vec4<i32>(-2147483647i, 1i, u_input.b.x, 2147483647i) | vec4<i32>(-47520i, var_1.a.x, 7109i, var_0.a.a.x))), ~(~abs(0i)) != firstLeadingBit((var_1.a.x & var_2.a.x) | var_0.a.a.x), var_1.e.wwx, var_2.d, vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-1f), var_1.c.x));
    let var_4 = any(select(vec3<bool>(true, arg_1, any(select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], false, true), vec3<bool>(false, true, true), vec3<bool>(true, var_3.d, true)))), vec3<bool>(arg_1, var_1.d, false && var_2.d), select(!vec3<bool>(var_0.a.b, false, true), vec3<bool>(var_3.b & true, false, any(vec2<bool>(true, false))), vec3<bool>(arg_1, var_3.d, !var_1.b))));
    return !select(select(vec4<bool>(arg_0.x >= var_1.c.x, true, u_input.c.x != u_input.c.x, var_2.d), !(!vec4<bool>(false, arg_1, var_4, false)), select(!vec4<bool>(var_4, arg_1, arg_1, var_2.d), select(vec4<bool>(var_3.d, true, var_1.b, var_1.d), vec4<bool>(false, var_2.b, var_3.b, false), true), true)), !select(vec4<bool>(true, false, var_3.d, false), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], var_1.d, var_4, false), vec4<bool>(true, var_4, true, var_2.d), global4[_wgslsmith_index_u32(u_input.c.x, 14u)]), !vec4<bool>(false, true, global4[_wgslsmith_index_u32(u_input.c.x, 14u)], var_3.d)), var_2.b);
}

fn func_2() -> u32 {
    global1 = u_input.c.x;
    let var_0 = func_4(global0.wxx, !(_wgslsmith_div_u32(u_input.c.x, func_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, -34875i, u_input.a), global4[_wgslsmith_index_u32(u_input.c.x, 14u)], vec3<f32>(1143f, 247f, -394f), true, vec4<f32>(-1032f, 404f, 1000f, 126f)), -89672i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec4<f32>(global0.x, global0.x, 551f, global3[_wgslsmith_index_u32(0u, 18u)]))) < ~abs(0u)));
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1031f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.c.x, 18u)])))), -189f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, -813f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 18u)] + -710f), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.c.x, 18u)])), -992f) + vec4<f32>(global3[_wgslsmith_index_u32(abs(u_input.c.x), 18u)], _wgslsmith_f_op_f32(global0.x * 971f), -1569f, -1910f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(global0.yx));
    let var_2 = global0.x;
    return u_input.c.x >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u << (~u_input.c.x % 32u), u_input.c.x, ~12496u >> (u_input.c.x % 32u)), _wgslsmith_mult_u32(~u_input.c.x, 8478u)) % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_2.x;
    var var_1 = vec4<bool>(false, true, arg_1.d, !(!arg_0.b));
    global1 = u_input.c.x;
    global4 = array<bool, 14>();
    let var_2 = Struct_2(arg_0, u_input.b.x, arg_1);
    return var_2;
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = ~vec2<u32>(~reverseBits(~17988u), 1u);
    let var_1 = _wgslsmith_add_vec2_u32(countOneBits(firstTrailingBit(select(select(var_0, u_input.c, vec2<bool>(false, true)), arg_0.yy, arg_1.c.d))), abs(~abs(min(var_0, var_0))));
    var var_2 = global0.xzw;
    let var_3 = ~arg_0.x;
    global1 = u_input.c.x;
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<u32>) -> vec4<f32> {
    global3 = array<f32, 18>();
    let var_0 = func_6(~vec3<u32>(firstLeadingBit(4294967295u), u_input.c.x, ~u_input.c.x), func_5(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, ~func_2(), 81738u ^ ~arg_2.x), 16u)], Struct_1(vec4<i32>(1i, u_input.b.x, 7683i, 2147483647i >> (arg_2.x % 32u)), any(vec2<bool>(true, true)), global0.wzy, global4[_wgslsmith_index_u32(u_input.c.x | ~arg_2.x, 14u)], vec4<f32>(_wgslsmith_f_op_f32(abs(-1046f)), 351f, 1106f, global3[_wgslsmith_index_u32(~arg_2.x, 18u)])), vec3<bool>(global4[_wgslsmith_index_u32(~arg_3.x, 14u)], any(vec3<bool>(global4[_wgslsmith_index_u32(68533u, 14u)], global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.c.x, 14u)])), true & (false || global4[_wgslsmith_index_u32(50083u, 14u)])), global2[_wgslsmith_index_u32(min(u_input.c.x, 41681u), 16u)]), -vec4<i32>(u_input.b.x, firstLeadingBit(-2147483647i) >> (u_input.c.x % 32u), 2147483647i, _wgslsmith_add_i32(1i, countOneBits(u_input.a))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(877f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(966f, -739f)), -506f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(592f * _wgslsmith_f_op_f32(ceil(290f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.e.x, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global4[_wgslsmith_index_u32(u_input.c.x, 14u)])), -1797f)), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-741f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 18u)] * global0.x), var_0.a.c.x, global3[_wgslsmith_index_u32(~arg_3.x, 18u)]))), vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 14u)], true, var_0.a.b)));
    var var_1 = var_0.a;
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.zxz, ~firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(3487u, 0u, 4294967295u), max(arg_2.x, arg_3.x), arg_3.x))), 16u)];
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - 1733f), -143f)), func_6(abs(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.x, arg_3.x, u_input.c.x), vec3<u32>(arg_2.x, u_input.c.x, arg_2.x)), countOneBits(arg_3.wzw))), func_5(Struct_1(countOneBits(var_1.a), select(var_0.c.d, true, true), vec3<f32>(1869f, global3[_wgslsmith_index_u32(1u, 18u)], 545f), var_0.c.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.c.x, 258f, var_2.e.x, global3[_wgslsmith_index_u32(arg_2.x, 18u)]) + vec4<f32>(-680f, global0.x, arg_1, global0.x))), func_5(var_0.c, var_0.c, func_4(var_0.c.c, false).xxx, global2[_wgslsmith_index_u32(arg_2.x, 16u)]).c, select(vec3<bool>(var_0.a.d, false, true), select(vec3<bool>(true, true, var_1.b), vec3<bool>(false, global4[_wgslsmith_index_u32(25498u, 14u)], var_1.d), vec3<bool>(true, global4[_wgslsmith_index_u32(arg_2.x, 14u)], true)), var_1.b), var_0.c), var_2.a).a.c.x, global0.x, _wgslsmith_f_op_f32(max(648f, var_2.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-vec4<i32>(u_input.b.x | u_input.b.x, firstTrailingBit(u_input.b.x), 0i, -31521i), !global4[_wgslsmith_index_u32(u_input.c.x, 14u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(499f, -2308f, global3[_wgslsmith_index_u32(u_input.c.x, 18u)]) - vec3<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global0.x, -1560f)) * vec3<f32>(154f, -1000f, -1461f)))), all(vec2<bool>(true, global4[_wgslsmith_index_u32(~0u, 14u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(u_input.a, u_input.a, u_input.b.x), 2410f, u_input.c, vec4<u32>(44233u, u_input.c.x, 0u, 4294967295u))) + _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 18u)], global0.x, -1000f, 1000f), vec4<f32>(global0.x, -807f, -186f, 1565f))))), u_input.a, Struct_1(~(~abs(vec4<i32>(-1i, u_input.b.x, u_input.a, u_input.a))), any(func_4(_wgslsmith_f_op_vec3_f32(global0.zyw - vec3<f32>(1744f, -125f, 358f)), global4[_wgslsmith_index_u32(5798u, 14u)] || global4[_wgslsmith_index_u32(4294967295u, 14u)]).zxw), _wgslsmith_f_op_vec3_f32(-global0.zyz), global4[_wgslsmith_index_u32(u_input.c.x ^ func_3(global2[_wgslsmith_index_u32(9232u, 16u)], Struct_2(Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), global4[_wgslsmith_index_u32(4294967295u, 14u)], global0.wwy, true, vec4<f32>(global3[_wgslsmith_index_u32(0u, 18u)], -796f, 246f, 348f)), -29803i, Struct_1(vec4<i32>(29844i, -23487i, -6962i, 1i), global4[_wgslsmith_index_u32(6063u, 14u)], vec3<f32>(780f, global3[_wgslsmith_index_u32(u_input.c.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), false, vec4<f32>(1000f, -1200f, -509f, global3[_wgslsmith_index_u32(95707u, 18u)]))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, 336f, 773f), vec4<f32>(1578f, -671f, global0.x, global0.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 14u)], global4[_wgslsmith_index_u32(4298u, 14u)], global4[_wgslsmith_index_u32(652u, 14u)], true)))), 14u)], vec4<f32>(global3[_wgslsmith_index_u32(u_input.c.x, 18u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), 1194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f * global3[_wgslsmith_index_u32(1u, 18u)]) - 362f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f + 1578f) + _wgslsmith_f_op_f32(max(331f, 756f))))));
    global4 = array<bool, 14>();
    global3 = array<f32, 18>();
    let var_1 = Struct_2(Struct_1(-vec4<i32>(var_0.c.a.x, var_0.c.a.x, ~var_0.b, ~var_0.b), true, _wgslsmith_f_op_vec3_f32(-global0.wxz), all(!select(vec4<bool>(false, true, true, var_0.c.d), vec4<bool>(false, false, global4[_wgslsmith_index_u32(26629u, 14u)], var_0.a.d), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(5148u, 14u)], true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.c.e * vec4<f32>(-280f, -704f, -724f, global3[_wgslsmith_index_u32(38748u, 18u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.e - var_0.c.e) - _wgslsmith_f_op_vec4_f32(select(var_0.a.e, var_0.a.e, var_0.c.b))))), countOneBits(_wgslsmith_mod_i32(65411i, abs(~u_input.a))), var_0.c);
    var var_2 = ~(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x & u_input.c.x, u_input.c.x), u_input.c.x, ~20193u, u_input.c.x & select(u_input.c.x, 53062u, var_0.a.b)) ^ (select(vec4<u32>(30930u, 20888u, 1u, 1u), vec4<u32>(u_input.c.x, 53994u, u_input.c.x, u_input.c.x), !vec4<bool>(var_1.a.b, false, false, var_0.c.b)) << (vec4<u32>(u_input.c.x, u_input.c.x, 11987u, u_input.c.x) % vec4<u32>(32u))));
    global3 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, -67571i), -1i, 8584u, u_input.c.x, var_1.c.c);
}

