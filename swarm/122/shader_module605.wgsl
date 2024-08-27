struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_5;

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: array<f32, 19> = array<f32, 19>(-1000f, 420f, -855f, 642f, 658f, -725f, -677f, 1173f, -629f, 1860f, 647f, -340f, -393f, -1811f, -847f, 1812f, 1776f, -1000f, 112f);

var<private> global4: u32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> f32 {
    global0 = u_input.a;
    let var_0 = !(!vec3<bool>(true, arg_1.a.a.x, all(select(arg_1.b, vec3<bool>(false, global1.b.c.x, true), true))));
    var var_1 = arg_1.a.d.a;
    var_1 = global0.x;
    global4 = ~abs(select(~_wgslsmith_add_u32(u_input.d, 51321u), _wgslsmith_sub_u32(~u_input.d, 8617u), any(!global1.b.c.wz)));
    return global3[_wgslsmith_index_u32(72894u, 19u)];
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    global1 = Struct_5(i32(-1i) * -12507i, arg_2.b, global1.c);
    let var_0 = _wgslsmith_mod_u32(~max(u_input.a.x, max(~u_input.a.x, ~arg_2.c.x)), ~17214u);
    global4 = 1u;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(11305u, 1u, 4294967295u, 62380u))), 19u)])));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-974f, -767f, 1874f, global3[_wgslsmith_index_u32(var_0, 19u)]) * vec4<f32>(1524f, 940f, global3[_wgslsmith_index_u32(global1.c.x, 19u)], global3[_wgslsmith_index_u32(51391u, 19u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3[_wgslsmith_index_u32(35666u, 19u)], global3[_wgslsmith_index_u32(12937u, 19u)], -667f, global3[_wgslsmith_index_u32(1u, 19u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-480f, global3[_wgslsmith_index_u32(7027u, 19u)], -1000f, global3[_wgslsmith_index_u32(global0.x, 19u)]), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], -1064f, 253f, global3[_wgslsmith_index_u32(global0.x, 19u)]))), arg_0.x | false)), !(!arg_2.b.c.x)))) + vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(5105u, 19u)], -307f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_sub_u32(_wgslsmith_div_u32(global1.b.b.a, 4294967295u), ~global0.x), Struct_4(Struct_2(vec2<bool>(global1.b.c.x, true), Struct_1(arg_2.b.b.a), u_input.a.x, global1.b.b, global3[_wgslsmith_index_u32(u_input.d, 19u)]), vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.d, reverseBits(34011u)), 19u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(4294967295u), 19u)])));
    return Struct_5(_wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -34274i, ~(-20151i), arg_2.a, arg_2.a), -(~vec4<i32>(global1.b.a.x, 0i, 2147483647i, -1i)) & -(~vec4<i32>(-6705i, -13763i, arg_2.b.a.x, arg_3))), global1.b, countOneBits(u_input.a));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec3<f32>, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = global1.b.b;
    var var_1 = func_2(select(select(arg_1.b.c.yyz, !func_2(vec3<bool>(arg_3.a.a.x, true, global1.b.c.x), arg_1.b.c.x, Struct_5(-27497i, Struct_3(arg_1.b.a, arg_1.b.b, global1.b.c), vec4<u32>(arg_1.b.b.a, var_0.a, global1.c.x, 0u)), -2147483647i).b.c.xyy, vec3<bool>(true, true, !arg_1.b.c.x)), vec3<bool>(select(global1.b.c.x, true, !arg_3.b.x), func_2(func_2(arg_3.b, true, arg_1, u_input.e).b.c.wzz, global1.b.c.x, Struct_5(0i, arg_1.b, arg_1.c), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 4068i), vec2<i32>(arg_1.a, global1.a))).b.c.x, global0.x >= _wgslsmith_sub_u32(98308u, 4210u)), !arg_1.b.c.x), arg_0 < ~(~(-51290i) ^ (u_input.c.x >> (arg_3.a.c % 32u))), arg_1, 1i).b.c.xz;
    var var_2 = 4294967295u;
    global2 = array<vec2<f32>, 13>();
    var var_3 = ~70640u;
    return select(func_2(global1.b.c.xzy, global1.b.c.x, arg_1, ~1i).b.c.wz, !(!vec2<bool>(true, arg_3.a.a.x)), vec2<bool>(arg_1.b.c.x, false || func_2(!vec3<bool>(global1.b.c.x, global1.b.c.x, var_1.x), !var_1.x, Struct_5(-26814i, arg_1.b, vec4<u32>(27037u, var_0.a, u_input.d, global1.c.x)), ~(-31443i)).b.c.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    global2 = array<vec2<f32>, 13>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.c.x), global1.c.xw & vec2<u32>(22771u, 16670u)), 19u)] * _wgslsmith_div_f32(1179f, _wgslsmith_f_op_f32(ceil(-1013f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(97456i, _wgslsmith_sub_i32(global1.a, u_input.e)), vec2<i32>(~(-2147483647i), -global1.a & global1.a));
    return Struct_2(!select(!arg_0.xz, func_4(0i, func_2(vec3<bool>(arg_0.x, false, true), false, Struct_5(57396i, global1.b, u_input.a), 1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, global3[_wgslsmith_index_u32(u_input.d, 19u)], arg_1)), Struct_4(Struct_2(arg_0.yy, Struct_1(22622u), global1.c.x, global1.b.b, arg_1), arg_0)), any(global1.b.c.ww)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global1.c.x), vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(56289u, global1.b.b.a) << (global1.c.wy % vec2<u32>(32u)), vec2<u32>(1u, global1.c.x)))), max(max(u_input.d, 1u), ~func_2(global1.b.c.xxx, false, Struct_5(u_input.e, Struct_3(global1.b.a, Struct_1(global1.c.x), global1.b.c), global1.c), u_input.c.x).c.x) >> (_wgslsmith_div_u32(global1.b.b.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.b.b.a, 0u, u_input.d, 21848u), vec4<u32>(global1.c.x, 4294967295u, global0.x, 0u))) % 32u), Struct_1(18787u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1008f) * var_0), var_0))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    global4 = 13537u;
    global2 = array<vec2<f32>, 13>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7991u, 19u)] + _wgslsmith_f_op_f32(arg_1.a.e - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 19u)], -1379f)))), 243f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1721f))))));
    global4 = 41541u;
    return 35728u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(global1.b.c.yz);
    let var_1 = func_5(~(~(abs(vec3<i32>(-55509i, -42762i, -2147483647i)) & vec3<i32>(-2147483647i, u_input.b, -1i))), Struct_4(func_1(global1.b.c.xwy, _wgslsmith_f_op_f32(2138f * _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(59175u, 19u)])))), select(func_2(!global1.b.c.wwy, var_0, Struct_5(global1.b.a.x, global1.b, vec4<u32>(global1.c.x, 1u, global0.x, global0.x)), reverseBits(1i)).b.c.zyz, vec3<bool>(any(vec2<bool>(global1.b.c.x, var_0)), false || global1.b.c.x, all(global1.b.c.wxx)), false)), Struct_1(2188u));
    global1 = Struct_5(firstLeadingBit(u_input.b), func_2(!global1.b.c.zyx, select(!all(global1.b.c), any(!vec4<bool>(false, global1.b.c.x, true, var_0)), false), func_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_0, var_0), var_0), true, func_2(vec3<bool>(false, global1.b.c.x, false), any(vec4<bool>(false, global1.b.c.x, false, true)), Struct_5(global1.b.a.x, Struct_3(u_input.c.zy, Struct_1(71708u), global1.b.c), u_input.a), global1.a), countOneBits(u_input.b)), _wgslsmith_mod_i32(~min(-39269i, global1.a), ~_wgslsmith_mod_i32(-2147483647i, -8483i))).b, _wgslsmith_mod_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(13037u, global1.c.x, 0u, 4294967295u), vec4<u32>(global1.b.b.a, 53704u, 1u, 30520u)), u_input.a), vec4<u32>(max(51942u, global1.b.b.a), var_1, var_1, ~global0.x)) << (select(global1.c, ~(~vec4<u32>(1u, u_input.d, 1u, 6032u)), false) % vec4<u32>(32u)));
    global4 = global1.b.b.a;
    let var_2 = false;
    global4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(-vec3<i32>(global1.a, u_input.c.x, u_input.b), u_input.c));
}

