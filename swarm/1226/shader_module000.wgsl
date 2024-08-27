struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(43061u, vec4<f32>(1022f, -752f, -1457f, -1359f), vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec3<bool>(false, true, false));

var<private> global1: Struct_2;

var<private> global2: array<i32, 14> = array<i32, 14>(2147483647i, 64089i, 2147483647i, i32(-2147483648), i32(-2147483648), 1i, 0i, 0i, 0i, -57140i, -18263i, -30154i, 0i, -51205i);

var<private> global3: Struct_5;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>) -> f32 {
    global2 = array<i32, 14>();
    var var_0 = select(select(-(~_wgslsmith_clamp_vec2_i32(global1.d.zy, vec2<i32>(global1.d.x, global1.d.x), vec2<i32>(0i, 1i))), global1.d.xz, global1.e.d.xy), select(vec2<i32>(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-18843i, -2707i, global3.d), vec3<i32>(75537i, global2[_wgslsmith_index_u32(0u, 14u)], u_input.a))), _wgslsmith_mod_vec2_i32(~(global1.d.zz ^ global1.d.xz), ~global1.d.xx), select(vec2<bool>(all(global1.e.e.zx), u_input.b >= 4294967295u), vec2<bool>(global1.b.d.x, true), (global0.e.x | true) && (-264f > global3.a.x))), !vec2<bool>((u_input.a != -28027i) & global1.e.c.x, global0.e.x));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -506i, -1i, global2[_wgslsmith_index_u32(var_1.x, 14u)], 1i), vec4<i32>(var_0.x, u_input.a, var_0.x, ~var_0.x));
    var var_3 = !vec3<bool>(_wgslsmith_f_op_f32(abs(723f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1548f))), true, true);
    return global3.a.x;
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = global1.e.b.zxx;
    global0 = global1.b;
    let var_1 = arg_0;
    var var_2 = false;
    global3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(424f, -545f)), max(_wgslsmith_mult_vec3_u32(u_input.c.zxy, ~u_input.c.zzy), vec3<u32>(global0.a, global1.b.a, 1u)))) - _wgslsmith_f_op_f32(1668f * _wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: u32) -> Struct_1 {
    var var_0 = !vec4<bool>(false != (24163i < firstTrailingBit(arg_2.d)), global0.d.x || all(vec2<bool>(arg_1.x, false)), true, true);
    let var_1 = global1.b.c;
    let var_2 = ~(~select(~vec3<u32>(2601u, 88921u, global0.a), u_input.c.yxw, true)) >> (vec3<u32>(0u, 42420u, 33799u) % vec3<u32>(32u));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.a, vec3<f32>(global0.b.x, 383f, 1055f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, _wgslsmith_div_f32(1319f, global3.a.x), _wgslsmith_f_op_f32(-global0.b.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.b.b.ww, arg_2.a.yy)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 665f))))))), global3.b.x, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(-56163i, global1.d.x) << (vec2<u32>(1u, var_2.x) % vec2<u32>(32u)), ~global1.d.zy)), global1.d.zx));
    let var_4 = global0.b.x;
    return Struct_1(abs(_wgslsmith_mod_u32(arg_3, _wgslsmith_dot_vec3_u32(u_input.c.xzx, var_2))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_5(vec3<f32>(-1724f, var_3.b.x, global3.c), vec2<f32>(672f, global0.b.x), -1000f, var_3.d)))), _wgslsmith_f_op_f32(ceil(510f)), global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1097f, -232f) * 151f) - _wgslsmith_div_f32(-1539f, _wgslsmith_f_op_f32(arg_2.a.x - 1016f)))), global0.e, vec4<bool>(all(select(!vec2<bool>(global0.d.x, global0.d.x), !var_0.wy, !vec2<bool>(arg_1.x, true))), var_0.x || any(var_0.yyy), global1.e.c.x, false), !(!select(select(global1.b.c, arg_1, var_1.x), vec3<bool>(global0.e.x, global0.c.x, arg_1.x), var_0.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> bool {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -389f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec3<bool>(false, arg_0.b.d.x, global1.e.c.x)), arg_3.x, !global0.d.x), arg_3, global1.e.c.x && false), false), Struct_5(global3.a, _wgslsmith_f_op_vec2_f32(-global0.b.yy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1.b.b.x, ~u_input.c.xyz)), global1.a.x), global1.d.x), 40737u).d;
    global2 = array<i32, 14>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -244f));
    global3 = Struct_5(global0.b.zwx, global0.b.yz, -855f, arg_0.d.x);
    let var_2 = 29499u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec3<bool>(global0.c.x, global0.e.x, any(!vec3<bool>(global0.d.x, true, true)))), all(vec2<bool>(true, global1.e.d.x)), select(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(round(global1.e.b.zwx)), Struct_1(global1.e.a, vec4<f32>(global0.b.x, global0.b.x, 1793f, -677f), global1.e.e, vec4<bool>(global0.c.x, global1.b.c.x, false, global0.e.x), global0.d.wyw), _wgslsmith_f_op_f32(max(global1.b.b.x, 1613f)), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 24556i, global1.d.x), global1.d), func_1(vec2<f32>(global1.c, -396f), global1.b.d.wwz, Struct_5(global3.a, vec2<f32>(314f, global1.a.x), 637f, global1.d.x), u_input.b)), !global0.e.zz, _wgslsmith_mod_vec3_u32(u_input.c.zww, ~u_input.c.yxy), !global0.e), global1.e.d.x, any(!vec3<bool>(global1.e.d.x, global1.e.e.x, global1.e.e.x))));
    let var_1 = !select(global1.b.c, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1173f, global0.b.x))), var_0, Struct_5(func_1(global1.a.zy, vec3<bool>(true, global0.d.x, global1.b.d.x), Struct_5(vec3<f32>(2523f, -1787f, global1.a.x), vec2<f32>(-112f, global1.c), global3.c, 2147483647i), 4294967295u).b.wwy, _wgslsmith_f_op_vec2_f32(-global0.b.yz), 1367f, global1.d.x), 0u).d.xxy, vec3<bool>(false, !(var_0.x & global1.e.d.x), global0.c.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global0.b, global1.b.b, !global1.b.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.b.b))))))));
    var var_3 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(max(u_input.c.x, ~abs(_wgslsmith_clamp_u32(0u, global0.a, global1.e.a))), 14u)], _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-1i, -26102i, u_input.a, 0i)), min(vec4<i32>(global1.d.x, 44755i, global1.d.x, global1.d.x), vec4<i32>(0i, global1.d.x, 25728i, global2[_wgslsmith_index_u32(34708u, 14u)]) | vec4<i32>(global1.d.x, 1i, 85786i, -24539i))) >> (0u % 32u));
    let var_4 = global1.d.xz;
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f), global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)) - global1.e.b.x), func_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1460f, var_2.x))), var_0, Struct_5(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.x, global3.c, var_2.x))), _wgslsmith_f_op_vec2_f32(-global0.b.wz), var_2.x, reverseBits(var_4.x)), min(~global0.a, reverseBits(u_input.b))).b.x) * vec4<f32>(_wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1236f, -981f, global1.e.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.b.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(1371f, 966f), _wgslsmith_f_op_f32(global3.a.x - global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-255f))), global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-802f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1133f, _wgslsmith_f_op_f32(-var_5.x))), 890f));
}

