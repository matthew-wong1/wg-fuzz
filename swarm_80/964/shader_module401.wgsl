struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 61020u;

var<private> global1: vec4<f32> = vec4<f32>(939f, -133f, 804f, -672f);

var<private> global2: vec4<u32>;

var<private> global3: Struct_5 = Struct_5(vec3<f32>(1440f, 3464f, -1000f), Struct_2(vec3<f32>(1900f, 619f, -147f), 379f, vec2<f32>(2443f, -971f), vec4<f32>(-1261f, -285f, -1589f, -206f)), vec4<u32>(0u, 4294967295u, 0u, 25057u), Struct_2(vec3<f32>(1164f, 1000f, -449f), 145f, vec2<f32>(899f, 1288f), vec4<f32>(1150f, 3737f, -2210f, 1029f)));

var<private> global4: u32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    global0 = _wgslsmith_mod_u32(31688u, _wgslsmith_add_u32(1u, max(~0u, select(~global2.x, abs(global2.x), true))));
    let var_0 = Struct_1(firstLeadingBit(vec3<u32>(19394u, ~51819u, ~global3.c.x) & global2.yyw), _wgslsmith_f_op_f32(arg_3.x * 1171f));
    global2 = global3.c;
    global1 = _wgslsmith_f_op_vec4_f32(-global3.d.d);
    var var_1 = firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(arg_1, arg_0.x ^ 4302i), u_input.a, -_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -1998i), arg_0.zz)));
    return _wgslsmith_mod_u32(~global2.x, global3.c.x);
}

fn func_2() -> vec4<u32> {
    global4 = _wgslsmith_mult_u32(~global2.x, _wgslsmith_clamp_u32(global3.c.x, func_3(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), -u_input.a, global3.a.x, vec2<f32>(261f, -1234f)), ~_wgslsmith_mult_u32(1u, global3.c.x))) << (firstLeadingBit(4294967295u) % 32u);
    var var_0 = Struct_4(Struct_1(~vec3<u32>(1u, _wgslsmith_mult_u32(global3.c.x, global2.x), ~global3.c.x), _wgslsmith_f_op_f32(-1282f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.x, global3.d.a.x)), _wgslsmith_f_op_f32(-811f - 579f))))));
    let var_1 = _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(4294967295u, var_0.a.a.x) | vec2<u32>(var_0.a.a.x, global2.x)) << (global3.c.xx % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(global3.c.x, var_0.a.a.x) ^ global3.c.ww, select(countOneBits(global2.wx) & ~global2.yz, abs(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.a.x, 12146u), global2.ww)), !(global1.x > global3.d.d.x))));
    var var_2 = abs(select(~(~abs(0u)), global3.c.x, all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))));
    return global3.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    global3 = Struct_5(_wgslsmith_f_op_vec3_f32(max(global3.b.d.yzw, global3.d.a)), Struct_2(_wgslsmith_div_vec3_f32(global3.d.a, vec3<f32>(_wgslsmith_f_op_f32(global3.b.c.x - -638f), _wgslsmith_f_op_f32(ceil(326f)), arg_1.b)), -1000f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(2154f - arg_1.b), _wgslsmith_div_f32(arg_1.b, global1.x)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.b, arg_1.b), _wgslsmith_f_op_f32(global1.x * -183f), 180f, -1000f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global3.b.d + vec4<f32>(arg_1.b, -1000f, 1550f, 359f)), global3.d.d)))), ~_wgslsmith_mult_vec4_u32(global3.c, abs(~arg_0)), global3.d);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.b.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(893f, global1.x, 753f, _wgslsmith_f_op_f32(101f + arg_1.b)) * vec4<f32>(-816f, _wgslsmith_f_op_f32(f32(-1f) * -883f), _wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(sign(-594f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global3.b.d)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b.d))));
    let var_1 = i32(-1i) * -27705i;
    let var_2 = vec2<i32>(~u_input.a, abs(2147483647i));
    return global3.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> Struct_1 {
    global3 = Struct_5(_wgslsmith_f_op_vec3_f32(-global3.b.d.yww), func_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(50358u, global3.c.x, global3.c.x, global2.x), func_2()), Struct_1(global3.c.yzx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(737f + -301f)))), ~vec4<u32>(global2.x & reverseBits(47531u), abs(~global3.c.x), global3.c.x, abs(4294967295u & global3.c.x)), global3.b);
    global2 = global3.c;
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(func_4(global3.c, Struct_1(global3.c.yww, -410f)).d.x * global3.b.b))), -1277f)), -1000f));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global1.xx, _wgslsmith_div_vec2_f32(global3.d.c, vec2<f32>(global1.x, _wgslsmith_f_op_f32(select(global1.x, arg_0.x, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(abs(global1.wz))));
    let var_2 = Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~4294967295u), func_2().x), global3.c.yy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -829f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-682f + global1.x) - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(297f)))))));
    return Struct_1(global3.c.zzz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1134f)) - -468f));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, arg_2.b, -703f), arg_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, -182f, global3.a.x) - global1.yyy), true)), _wgslsmith_div_vec3_f32(global3.b.d.xxz, _wgslsmith_f_op_vec3_f32(floor(global3.b.d.xzw))))));
    global4 = _wgslsmith_clamp_u32(4294967295u, select(0u, arg_2.a.x, true), ~1u) ^ global2.x;
    let var_1 = _wgslsmith_sub_i32(-u_input.a, _wgslsmith_div_i32(~1791i, _wgslsmith_mod_i32(~_wgslsmith_mod_i32(u_input.a, -1i), -u_input.a)));
    global0 = 4294967295u;
    return select(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false))), all(vec3<bool>(false, true, all(vec2<bool>(true, false)))), 27062u == (max(62596u, global3.c.x) >> (arg_1.a.x % 32u))), select(vec3<bool>(false, abs(17126i) <= u_input.a, min(arg_2.a.x, 0u) > max(arg_2.a.x, global3.c.x)), select(vec3<bool>(any(vec2<bool>(true, false)), true, any(vec2<bool>(true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), any(vec4<bool>(true, true, true, true))), true), true);
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = global3.c.x;
    global0 = abs(~arg_0);
    global0 = arg_0;
    let var_0 = ~(~(~(_wgslsmith_div_vec2_u32(global3.c.xx, global3.c.zw) >> (min(global3.c.yx, global2.xy) % vec2<u32>(32u)))));
    var var_1 = 0u;
    return (all(arg_1) == arg_1.x) && true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(min(_wgslsmith_add_i32(_wgslsmith_mod_i32(~u_input.a, -u_input.a), countOneBits(u_input.a)), 0i), u_input.a);
    let var_1 = vec3<bool>((217f < global1.x) & any(vec4<bool>(true, true, true, true)), func_6(~global3.c.x, func_5(select(vec2<i32>(-35470i, 2147483647i) ^ vec2<i32>(-50475i, var_0.x), ~vec2<i32>(0i, 2147483647i), vec2<bool>(false, true)), Struct_3(_wgslsmith_sub_vec2_u32(global2.xw, global3.c.wy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, global1.x, -1149f))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(217f, 212f, 1000f, 846f)), vec3<i32>(var_0.x, var_0.x, 29948i), vec3<i32>(-12239i, 23651i, var_0.x))), global3.d, u_input.a), any(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_1(vec4<f32>(-1898f, -369f, global1.x, global1.x), vec3<i32>(0i, 20692i, var_0.x), vec3<i32>(var_0.x, u_input.a, 36653i) & vec3<i32>(-1i, -3493i, -17392i)).b), _wgslsmith_f_op_f32(max(global1.x, global3.d.d.x))));
    global4 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.xx, min(vec2<u32>(global2.x, 0u), global3.c.ww) >> (vec2<u32>(21959u, 69933u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(~global2.yx, global3.c.xy)) ^ (firstLeadingBit(global2.x << (func_2().x % 32u)) & (global2.x | ~(105u << (global3.c.x % 32u))));
    let var_3 = Struct_1(func_1(_wgslsmith_f_op_vec4_f32(-func_4(vec4<u32>(global2.x, global3.c.x, 13090u, 18714u), func_1(global3.d.d, vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(37823i, 1i, var_0.x))).d), max(vec3<i32>(var_0.x, firstLeadingBit(u_input.a), ~u_input.a), ~vec3<i32>(var_0.x, -44444i, 1i)), vec3<i32>(-2147483647i, u_input.a, _wgslsmith_div_i32(-38121i, 31855i)) << (global3.c.wzx % vec3<u32>(32u))).a, global1.x);
    var var_4 = Struct_1(global2.zzw, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(global2.yxw << (~_wgslsmith_clamp_vec3_u32(var_3.a, vec3<u32>(var_4.a.x, 40466u, 4294967295u), vec3<u32>(24806u, var_3.a.x, 70173u)) % vec3<u32>(32u))));
}

