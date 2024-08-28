struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: Struct_2 = Struct_2(-1552f, Struct_1(vec3<f32>(-1506f, 2731f, 2393f), vec3<bool>(true, false, false), true, 4294967295u, vec2<i32>(0i, 2147483647i)));

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(119f, Struct_1(vec3<f32>(403f, 1391f, -505f), vec3<bool>(true, true, false), false, 74105u, vec2<i32>(6979i, 14596i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = select(select(vec4<bool>(false, -408f < _wgslsmith_f_op_f32(global3.a - 324f), false, any(select(vec2<bool>(global3.b.c, false), global2.b.b.zx, global1.b.c))), !select(vec4<bool>(global2.b.b.x, global3.b.c, true, global2.b.b.x), !vec4<bool>(global2.b.b.x, global3.b.c, global3.b.c, false), select(global2.b.c, global2.b.b.x, global2.b.c)), false), select(!(!select(vec4<bool>(global3.b.b.x, true, false, global2.b.b.x), vec4<bool>(false, false, global1.b.c, false), global2.b.c)), !(!select(vec4<bool>(global2.b.b.x, global2.b.b.x, global2.b.b.x, true), vec4<bool>(true, true, false, global3.b.c), vec4<bool>(true, global2.b.c, global1.b.c, false))), !(!global3.b.b.x)), false);
    var var_1 = Struct_2(global2.a, global3.b);
    global3 = Struct_2(global1.a, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(f32(-1f) * -418f)), global3.b.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -912f), global1.a))), var_0.yyy, global3.b.b.x, countOneBits(max(max(var_1.b.d, u_input.d), 51175u)), (vec2<i32>(-30362i, 47720i) ^ vec2<i32>(u_input.c.x, 2147483647i)) & _wgslsmith_mult_vec2_i32(firstTrailingBit(u_input.b.yz), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.b.e.x, global1.b.e.x), vec2<i32>(1i, 1i)))));
    let var_2 = -1407f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2316f, 995f, 906f, _wgslsmith_f_op_f32(round(var_1.b.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1264f, 1323f, var_2, -185f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1208f, -1000f, var_2, 103f), vec4<f32>(global3.a, 405f, var_1.b.a.x, -522f))), true)))));
    return !vec4<bool>(true, any(!select(var_0, var_0, var_1.b.c)), select(!(global1.b.c || global1.b.b.x), true, global3.b.b.x | (global2.b.b.x || var_0.x)), !any(!var_0.zxx));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> i32 {
    var var_0 = ~arg_0.xx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -488f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(178f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b.a - global3.b.a) * _wgslsmith_div_vec3_f32(vec3<f32>(-1010f, -1180f, global2.b.a.x), global1.b.a))))), vec3<bool>(!(!any(vec3<bool>(arg_2.x, true, false))), false, global1.b.b.x && any(select(vec2<bool>(arg_1.x, arg_2.x), vec2<bool>(true, true), arg_2.x))), (arg_2.x || false) & true, _wgslsmith_div_u32(_wgslsmith_clamp_u32(6759u ^ var_0.x, 1u, var_0.x) ^ 10664u, ~(~52344u >> ((global3.b.d >> (17361u % 32u)) % 32u))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, global3.b.e.x), global2.b.e.x) & _wgslsmith_clamp_i32(global3.b.e.x << (18475u % 32u), ~global3.b.e.x, ~(-33134i)), 0i));
    let var_2 = any(func_3(var_1.a.x));
    let var_3 = arg_1.zz;
    var_1 = global3.b;
    return -2147483647i;
}

fn func_1() -> Struct_2 {
    let var_0 = false;
    var var_1 = vec4<i32>(1i, -max(global1.b.e.x, global2.b.e.x), func_2(~select(abs(vec4<u32>(global1.b.d, u_input.d, global0[_wgslsmith_index_u32(1u, 30u)], global1.b.d)), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global2.b.d, 30u)], 4294967295u, global3.b.d, 36632u)), vec4<bool>(true, true, global3.b.c, global3.b.c)), global1.b.b, global2.b.b), reverseBits(countOneBits(countOneBits(9744i))));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)), global2.b);
    let var_2 = vec3<bool>(any(!vec4<bool>(true, global2.b.b.x, true, true)), all(select(!select(global3.b.b, global3.b.b, false), vec3<bool>(true, true, true), global2.b.b.x)), false);
    global2 = Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1440f, global2.b.a.x, 211f) - global3.b.a) + global2.b.a)), global3.b.b, true, abs(25541u) ^ _wgslsmith_mult_u32(30437u, 24696u << (global3.b.d % 32u)), _wgslsmith_div_vec2_i32(global1.b.e, u_input.b.yz)));
    return Struct_2(global2.b.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1085f, 401f, 232f) * _wgslsmith_f_op_vec3_f32(-global1.b.a))), var_2, global3.b.b.x, global3.b.d, countOneBits(max(-vec2<i32>(-15762i, u_input.b.x), vec2<i32>(global2.b.e.x, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = func_1();
    var var_0 = ~(~(~(~vec3<u32>(49687u, 654u, global2.b.d)))) ^ ~(firstLeadingBit(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(48750u, 30u)], 1u, global0[_wgslsmith_index_u32(4294967295u, 30u)]))) >> (vec3<u32>(countOneBits(35986u), _wgslsmith_div_u32(global1.b.d, 1u), ~107619u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(588f, global2.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-1000f + global2.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, global1.b.a.x, global2.b.a.x, 1706f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, 222f, global1.a, 676f) - vec4<f32>(-851f, -894f, global1.a, global3.a)))))))));
    let var_2 = Struct_2(var_1.x, global1.b);
    var var_3 = -global2.b.e.x;
    global3 = func_1();
    var var_4 = ~(~(_wgslsmith_div_u32(6328u, global0[_wgslsmith_index_u32(1u, 30u)]) << (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xz, _wgslsmith_add_vec2_u32(select(vec2<u32>(8402u, var_2.b.d) >> (var_0.zx % vec2<u32>(32u)), firstLeadingBit(var_0.yy), global1.b.b.x && global3.b.c), var_0.zx) << (vec2<u32>(1u, firstLeadingBit(_wgslsmith_add_u32(52115u, global2.b.d))) % vec2<u32>(32u)), vec3<u32>(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 1u, 4294967295u, 95034u), vec4<u32>(global1.b.d, 1u, 150862u, global3.b.d)), select(vec4<u32>(var_0.x, 15313u, 54305u, var_0.x), vec4<u32>(var_2.b.d, global1.b.d, u_input.d, global0[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(true, global2.b.c, var_2.b.c, true))), 1u, _wgslsmith_dot_vec2_u32(~var_0.xx, ~vec2<u32>(0u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a, var_1.x, global3.a, var_1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, global3.b.a.x, 954f, var_1.x), vec4<f32>(global1.b.a.x, 144f, -1593f, 774f), vec4<bool>(true, global3.b.b.x, var_2.b.b.x, false))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1.b.a.x, -758f, 1159f) - vec4<f32>(477f, global2.b.a.x, global1.a, 1516f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 999f, global2.b.a.x, global2.b.a.x) + vec4<f32>(-165f, var_2.b.a.x, global2.a, 1870f))) - vec4<f32>(_wgslsmith_f_op_f32(var_2.b.a.x - var_2.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2522f), _wgslsmith_f_op_f32(var_1.x - -213f), global3.b.a.x))), var_2.b.a);
}

