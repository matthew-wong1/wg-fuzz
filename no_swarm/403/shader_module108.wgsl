struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(i32(-2147483648), 2147483647i, 20734i), vec3<i32>(1i, -21879i, -1i), vec3<i32>(-12283i, 2147483647i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, -41858i), vec3<i32>(-1i, 34049i, -41374i), vec3<i32>(16028i, -49312i, -25675i), vec3<i32>(1i, 21240i, -11153i));

var<private> global1: vec2<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global4: array<vec2<bool>, 18>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(arg_0.b.x, 45615u), u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a)));
    let var_2 = arg_0.a;
    var var_3 = arg_0;
    global4 = array<vec2<bool>, 18>();
    return arg_0;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), ~u_input.a.yx, ~(~abs(arg_1.c)) << (~vec4<u32>(15869u, min(u_input.a.x, arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 1u), vec4<u32>(u_input.b, u_input.a.x, 23942u, u_input.a.x)), _wgslsmith_sub_u32(arg_1.c.x, u_input.b)) % vec4<u32>(32u)), func_1(func_1(Struct_1(138f, u_input.a.zz, arg_1.c, !global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-476f))), min(2147483647i, 0i)), Struct_1(arg_1.a, arg_1.c.wz | ~arg_1.b, arg_1.c, vec2<bool>(global1.x, any(vec4<bool>(global1.x, global1.x, true, arg_1.d.x)))), -958f, u_input.d ^ (global2.x ^ max(63850i, arg_2))).d);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1796f, var_1.a))))))), !(any(global3[_wgslsmith_index_u32(~22791u, 19u)]) | false)));
    var var_3 = arg_1;
    global2 = countOneBits(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(arg_2, -63315i), _wgslsmith_sub_i32(-1712i, ~arg_2 & u_input.c.x), arg_3.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1028f)))))))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = func_1(func_1(arg_0, func_1(arg_0, arg_0, _wgslsmith_f_op_f32(-arg_0.a), u_input.d), _wgslsmith_f_op_f32(func_3(arg_0.a, arg_0, -4870i, vec3<i32>(u_input.d, 15561i, select(global2.x, global2.x, arg_0.d.x)))), 0i), Struct_1(_wgslsmith_f_op_f32(-315f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(208f, -1000f)))), ~(~vec2<u32>(40520u, arg_0.b.x)), vec4<u32>(select(~arg_0.b.x, arg_0.c.x | u_input.a.x, select(true, arg_0.d.x, true)), u_input.a.x, _wgslsmith_mod_u32(~89223u, arg_0.b.x), 43020u), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -638f), arg_0.c.wz >> (arg_0.b % vec2<u32>(32u)), vec4<u32>(arg_0.b.x, u_input.a.x, arg_0.b.x, 4294967295u), global4[_wgslsmith_index_u32(~27183u, 18u)]), func_1(Struct_1(arg_0.a, vec2<u32>(arg_0.b.x, u_input.a.x), vec4<u32>(1u, 1u, 11930u, arg_0.c.x), global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), Struct_1(arg_0.a, u_input.a.zy, vec4<u32>(u_input.b, 0u, arg_0.c.x, u_input.b), vec2<bool>(global1.x, global1.x)), -2056f, u_input.d ^ u_input.d), 923f, u_input.c.x).d), _wgslsmith_f_op_f32(func_3(-289f, arg_0, global2.x, select(vec3<i32>(u_input.c.x, 8647i, u_input.d), abs(vec3<i32>(u_input.d, 56968i, -37608i)), vec3<bool>(u_input.d > -18048i, any(vec3<bool>(false, true, true)), select(arg_0.d.x, false, false))))), -global2.x);
    let var_1 = abs(vec2<i32>(-2147483647i | u_input.d, u_input.c.x));
    let var_2 = 0i;
    global2 = abs(vec4<i32>(var_1.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d & -2147483647i, abs(28905i), ~(-1i)), vec3<i32>(var_1.x, _wgslsmith_mult_i32(var_2, var_1.x), -50403i)), 62580i));
    var var_3 = 4175i;
    return var_0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> vec4<u32> {
    global4 = array<vec2<bool>, 18>();
    global1 = func_1(arg_1, func_1(Struct_1(1344f, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 18498u) << (vec2<u32>(0u, arg_1.b.x) % vec2<u32>(32u)), select(vec2<u32>(u_input.b, 71947u), vec2<u32>(arg_1.c.x, 10895u), false)), firstLeadingBit(~vec4<u32>(20875u, 71747u, u_input.b, 123114u)), select(!vec2<bool>(arg_1.d.x, true), !vec2<bool>(global1.x, false), false)), Struct_1(1000f, arg_1.b, select(~vec4<u32>(4294967295u, 4294967295u, arg_1.b.x, arg_1.b.x), arg_1.c, vec4<bool>(arg_1.d.x, arg_1.d.x, true, false)), !(!global3[_wgslsmith_index_u32(u_input.a.x, 19u)])), 324f, _wgslsmith_add_i32(u_input.d, global2.x)), func_1(func_1(func_1(arg_1, Struct_1(arg_1.a, vec2<u32>(u_input.b, 20736u), arg_1.c, arg_1.d), _wgslsmith_f_op_f32(arg_0.x * 729f), ~u_input.d), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2348f - arg_0.x)), ~0i), func_1(Struct_1(_wgslsmith_f_op_f32(173f - 679f), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u)), vec4<u32>(1u, u_input.b, u_input.a.x, arg_1.b.x), !global3[_wgslsmith_index_u32(u_input.b, 19u)]), func_1(arg_1, arg_1, 2330f, global2.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_1.a)), max(u_input.d, 12996i)), arg_0.x, min(-33395i, -27961i)).a, -21325i).d;
    var var_0 = ~(~select(~(~u_input.a.yx), ~u_input.a.zz ^ ~arg_1.c.wx, false));
    global0 = array<vec3<i32>, 8>();
    global1 = !global4[_wgslsmith_index_u32(u_input.a.x, 18u)];
    return firstTrailingBit(arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1547f, vec2<u32>(~_wgslsmith_add_u32(1u, ~u_input.a.x), u_input.a.x >> (u_input.b % 32u)), func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(335f * 1000f), -404f), _wgslsmith_f_op_f32(func_2(func_1(Struct_1(-196f, vec2<u32>(54066u, u_input.a.x), vec4<u32>(u_input.b, 0u, 1u, 38466u), global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_1(1144f, vec2<u32>(0u, 54355u), vec4<u32>(u_input.b, 49501u, 72116u, u_input.a.x), global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), 312f, -1i)))), func_1(Struct_1(_wgslsmith_f_op_f32(select(-208f, 116f, true)), countOneBits(u_input.a.xy), vec4<u32>(15216u, 1u, 14343u, u_input.a.x), select(global4[_wgslsmith_index_u32(u_input.b, 18u)], vec2<bool>(false, false), global3[_wgslsmith_index_u32(30872u, 19u)])), Struct_1(_wgslsmith_f_op_f32(352f - -611f), ~u_input.a.yz, ~vec4<u32>(4294967295u, u_input.b, 81410u, 4294967295u), func_1(Struct_1(1818f, vec2<u32>(0u, u_input.b), vec4<u32>(u_input.a.x, 51410u, 17570u, u_input.a.x), vec2<bool>(global1.x, true)), Struct_1(1659f, vec2<u32>(u_input.b, u_input.b), vec4<u32>(37922u, 1u, u_input.b, u_input.a.x), vec2<bool>(false, global1.x)), -748f, -4869i).d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + 1080f)), 4827i)), !global4[_wgslsmith_index_u32(13487u, 18u)]);
    let var_1 = global1.x && global1.x;
    global3 = array<vec2<bool>, 19>();
    var var_2 = var_0;
    global2 = vec4<i32>(~u_input.c.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_0.c.x, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(45914u, u_input.b, 1u), var_2.c.zxw)), 64902u) % 32u), 1i, global2.x, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(abs(global2.xwx), global0[_wgslsmith_index_u32(func_4(vec2<f32>(var_2.a, 1252f), var_0).x, 8u)]), countOneBits(countOneBits(abs(global2.ywx)))));
    var_2 = func_1(var_0, var_0, var_2.a, firstLeadingBit(-1i));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a))))), select(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, var_0.b), _wgslsmith_mod_u32(4294967295u, ~0u)), _wgslsmith_sub_vec2_u32(abs(select(vec2<u32>(var_0.b.x, var_0.c.x), var_0.b, vec2<bool>(true, var_0.d.x))), firstTrailingBit(u_input.a.zx)), var_0.d), _wgslsmith_sub_vec4_u32(vec4<u32>(39118u, 0u, _wgslsmith_add_u32(var_0.c.x, var_2.c.x), var_2.c.x) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 30115u, var_2.b.x, var_2.b.x), var_0.c)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(var_2.c, func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, 785f))), Struct_1(var_0.a, vec2<u32>(u_input.a.x, u_input.b), vec4<u32>(32891u, 0u, u_input.a.x, u_input.b), vec2<bool>(false, var_2.d.x))))), global4[_wgslsmith_index_u32(var_2.c.x, 18u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.a, var_0, u_input.d, global0[_wgslsmith_index_u32(var_2.b.x, 8u)])) * -1912f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(-934f, var_2.a, false)), func_1(Struct_1(938f, var_2.c.wx, var_2.c, global4[_wgslsmith_index_u32(var_0.b.x, 18u)]), var_3, 592f, -1i), -global2.x, vec3<i32>(2147483647i, 2147483647i, 1i)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-121f * -406f), _wgslsmith_f_op_f32(sign(var_0.a)), var_0.a, -610f))));
}

