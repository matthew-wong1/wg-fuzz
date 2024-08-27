struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = select(u_input.a.x, u_input.a.x, !(!(!any(vec4<bool>(true, global2.b, arg_0, true)))));
    global1 = false;
    global1 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(557f)), -787f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), -324f)))) + vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1694f, 104f)))), 661f)));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(global2.a.x | u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~global2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(23987u, u_input.c, 134076u), vec3<u32>(global2.a.x, 61333u, global2.a.x)), 30518u), global2.a.wyz), global2.a.x), vec3<u32>(global2.a.x & 1u, u_input.c, _wgslsmith_mult_u32(~u_input.d.x, 0u)) << (u_input.d.zww % vec3<u32>(32u)));
    return _wgslsmith_mod_i32(u_input.a.x & -var_0, ~19511i);
}

fn func_2() -> Struct_3 {
    global1 = u_input.a.x < func_3(true);
    global1 = any(select(!(!(!vec3<bool>(global2.b, global2.b, global2.b))), !vec3<bool>(true, all(vec4<bool>(true, global2.b, global2.b, true)), global2.b), _wgslsmith_sub_i32(u_input.a.x, 56877i) > _wgslsmith_mod_i32(u_input.a.x, -u_input.a.x)));
    var var_0 = -13964i;
    let var_1 = select(vec4<bool>(global2.b, true, any(!vec3<bool>(false, false, global2.b)), all(vec4<bool>(global2.b, true, true, all(vec2<bool>(true, global2.b))))), vec4<bool>(global2.b, all(select(vec3<bool>(global2.b, global2.b, true), !vec3<bool>(global2.b, true, false), vec3<bool>(global2.b, global2.b, global2.b))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1302f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-898f - -1022f), _wgslsmith_f_op_f32(round(-2106f)))), !all(vec3<bool>(global2.b | global2.b, any(vec3<bool>(false, true, global2.b)), any(vec3<bool>(true, false, false)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 926f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1300f, -876f) * vec2<f32>(1206f, 201f))))), vec2<f32>(2317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f - 571f))), global2.b))));
    return Struct_3(32037i);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3, arg_3: i32) -> bool {
    var var_0 = reverseBits(min(-39138i, ~_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, 18796i, -2147483647i), u_input.a), -u_input.a.x)));
    var var_1 = !(!vec3<bool>(all(!vec4<bool>(global2.b, global2.b, global2.b, false)), global2.b, -arg_3 > _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, arg_0.x), vec2<i32>(arg_3, arg_0.x))));
    let var_2 = Struct_1(vec4<u32>(1u, ~68575u, 4294967295u, 98339u), true);
    global0 = 2147483647i;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-179f)), -111f)))), _wgslsmith_div_f32(-2839f, _wgslsmith_f_op_f32(max(-1593f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f + 1000f))))), -1016f);
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = ~(-3056i ^ _wgslsmith_sub_i32(-arg_3 >> (44539u % 32u), reverseBits(~(-1i))));
    var var_1 = ~((_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 0u, arg_0.x), reverseBits(arg_0)) | (u_input.d.xxx | reverseBits(arg_0))) << (arg_0 % vec3<u32>(32u)));
    let var_2 = any(vec4<bool>(true, false, true, !func_4(_wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_3), u_input.a.yz), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 67013u), u_input.d.xzw), func_2(), func_2().a)));
    let var_3 = -u_input.a.x;
    global1 = global2.b;
    return Struct_1(_wgslsmith_sub_vec4_u32(min(global2.a, u_input.d) | u_input.d, vec4<u32>(min(39175u, 4294967295u), 9715u ^ arg_0.x, 59662u, select(14216u, u_input.d.x, global2.b))) ^ global2.a, all(select(!select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), vec2<bool>(false, true)), select(!vec2<bool>(global2.b, var_2), select(vec2<bool>(false, var_2), vec2<bool>(true, global2.b), vec2<bool>(var_2, var_2)), var_3 <= -1i), any(select(vec4<bool>(false, global2.b, global2.b, global2.b), vec4<bool>(false, true, true, global2.b), vec4<bool>(var_2, global2.b, var_2, false))))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global1 = arg_1 < _wgslsmith_f_op_f32(-arg_1);
    var var_0 = arg_0;
    var var_1 = select(vec2<u32>(~19276u & u_input.b, var_0.a.x), ~(select(arg_0.a.zw, ~arg_0.a.wy, true) >> (global2.a.yw % vec2<u32>(32u))), select(!select(!vec2<bool>(true, global2.b), !vec2<bool>(global2.b, var_0.b), !vec2<bool>(false, global2.b)), vec2<bool>(select(false, func_1(arg_0.a.yxy, vec4<f32>(-953f, 418f, -532f, arg_1), var_0.a.xw, 7762i).b, true), !global2.b), max(~36308u, u_input.b) == 11070u));
    var_1 = vec2<u32>(70842u, 0u);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f * arg_1)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * 1098f)))), 810f, _wgslsmith_f_op_f32(-1f))));
    return StorageBuffer(firstLeadingBit(abs(u_input.a)), var_0.a, vec4<i32>(i32(-1i) * -13274i, abs(u_input.a.x >> (arg_0.a.x % 32u)), -28012i, 2147483647i) << ((arg_0.a ^ vec4<u32>(~var_1.x, 73414u, ~var_1.x, ~global2.a.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = abs(global2.a.x);
    global0 = _wgslsmith_dot_vec3_i32(~u_input.a.yxy, vec3<i32>(~(-48676i), u_input.a.x, u_input.a.x));
    var var_2 = !vec3<bool>(true, true, !(!select(global2.b, global2.b, global2.b)));
    let x = u_input.a;
    s_output = func_5(func_1(~(~vec3<u32>(u_input.b, u_input.c, global2.a.x) << ((u_input.d.wzx << (vec3<u32>(1u, global2.a.x, global2.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-789f, -527f, 1307f, 240f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(328f, -881f, 159f, 217f), vec4<f32>(-1000f, 759f, 573f, -1123f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, -929f, 786f, 167f)))), reverseBits(vec2<u32>(countOneBits(4294967295u), 0u)), ~(~var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-864f - -735f))), -365f, false)));
}

