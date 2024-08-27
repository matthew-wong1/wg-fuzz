struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<u32, 17>;

var<private> global2: array<u32, 11>;

var<private> global3: array<u32, 26> = array<u32, 26>(4294967295u, 4294967295u, 72333u, 30834u, 14501u, 4294967295u, 54204u, 0u, 15933u, 1u, 24387u, 8567u, 0u, 4294967295u, 46802u, 4294967295u, 0u, 95492u, 14542u, 4294967295u, 0u, 44022u, 1u, 4294967295u, 1u, 0u);

var<private> global4: i32 = -11653i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(-528f, _wgslsmith_f_op_f32(f32(-1f) * -1664f)), Struct_1(1889f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(-875f - -1574f)))));
    let var_1 = any(vec2<bool>(all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43058u, 17u)], 14u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 14u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(58034u, 26u)], 26u)], 26u)], 11u)], 14u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24027u, 26u)], 14u)], false, global0[_wgslsmith_index_u32(4294967295u, 14u)]))), any(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 14u)], true, true))));
    let var_2 = vec3<bool>(!all(!select(vec3<bool>(var_1, var_1, false), vec3<bool>(var_1, var_1, false), true)), var_1, any(select(!vec3<bool>(var_1, var_1, var_1), !(!vec3<bool>(true, var_1, true)), !vec3<bool>(var_1, var_1, false))));
    var var_3 = Struct_2(var_0.b, Struct_1(-1112f, _wgslsmith_f_op_f32(-1f)));
    let var_4 = ~reverseBits(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(1u, 17u)], 42004u), vec3<u32>(31881u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 26u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52749u, 17u)], 26u)])), vec3<u32>(u_input.b, 1u, u_input.b), ~vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32326u, 11u)], 26u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 17u)])));
    return var_0.a.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_2.c.x, arg_2.c.x), 1000f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * arg_2.c.x), -703f)), _wgslsmith_f_op_f32(f32(-1f) * -1596f)));
    var var_1 = Struct_1(var_0.a.b, _wgslsmith_f_op_f32(func_3(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(80950i, 6052i, u_input.c.x, u_input.a.x), arg_2.b, vec4<i32>(35348i, -1i, arg_2.e, arg_2.e)))));
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_1.x), select(arg_0.x, 54779u, global0[_wgslsmith_index_u32(u_input.b, 14u)])), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 23981u), arg_1.xx) ^ reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(40852u, 11u)], 4294967295u))), _wgslsmith_sub_u32(~55564u << (select(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26003u, true) % 32u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 26u)], 26u)]), arg_2.d.x, _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(1u, 11u)], 35883u) ^ (~2063u & ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56197u, 17u)], 11u)])));
    let var_3 = 2147483647i;
    var var_4 = global0[_wgslsmith_index_u32(abs(20866u) << ((global3[_wgslsmith_index_u32(arg_0.x, 26u)] | ((global3[_wgslsmith_index_u32(arg_2.d.x, 26u)] << (27260u % 32u)) | reverseBits(_wgslsmith_dot_vec2_u32(arg_0, arg_0)))) % 32u), 14u)];
    return !select(select(select(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], global0[_wgslsmith_index_u32(var_2.x, 14u)], global0[_wgslsmith_index_u32(7274u, 14u)], global0[_wgslsmith_index_u32(var_2.x, 14u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(37842u, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(6260u, 14u)]), !global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 14u)] && global0[_wgslsmith_index_u32(1836u, 14u)], all(vec2<bool>(false, false)), 2147483647i <= arg_2.e, all(vec2<bool>(global0[_wgslsmith_index_u32(21306u, 14u)], false))), 1u >= _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_2.x, 11u)], 64632u)), vec4<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(38169u, 14u)], global0[_wgslsmith_index_u32(arg_2.a, 14u)]), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(54209u, 14u)], false))), global0[_wgslsmith_index_u32(4294967295u, 14u)], 31526u == global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(arg_2.a, 17u)], arg_2.d.x), 11u)], true), false);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = vec4<bool>(all(func_2(~vec2<u32>(4294967295u, arg_1.a) & _wgslsmith_add_vec2_u32(arg_1.d.xy, vec2<u32>(arg_2.d.x, 4294967295u)), select(arg_2.d.wxw, arg_1.d.yzw, vec3<bool>(global0[_wgslsmith_index_u32(25958u, 14u)], global0[_wgslsmith_index_u32(arg_1.d.x, 14u)], true)), arg_1)), all(vec2<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.a, 17u)], 14u)], true, true)), false)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(~55654u, 11u)]), 14u)], true || !(!global0[_wgslsmith_index_u32(u_input.b, 14u)] && global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 11u)], 11u)], 26u)]), 14u)]));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, arg_1.e, u_input.c.x)), u_input.c));
    global1 = array<u32, 17>();
    global2 = array<u32, 11>();
    let var_2 = ~u_input.a;
    return arg_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 11>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, -1682f, -938f, -741f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(1293f)), _wgslsmith_f_op_f32(trunc(1901f)), -1000f, _wgslsmith_f_op_f32(floor(393f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(887f * -1039f), -1705f, -1833f, _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(304f, 1203f), Struct_1(132f, -1000f)), Struct_3(1u, vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), vec2<f32>(-1655f, -988f), vec4<u32>(4294967295u, 1u, 18985u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 26u)], 11u)]), u_input.c.x), Struct_3(global3[_wgslsmith_index_u32(1u, 26u)], vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, 0i), vec2<f32>(712f, 147f), vec4<u32>(global2[_wgslsmith_index_u32(u_input.b, 11u)], global1[_wgslsmith_index_u32(48906u, 17u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 11u)], 26u)], u_input.b), 5992i)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, 1000f, -364f, 497f)), vec4<f32>(-511f, 2224f, -149f, -1369f), func_2(vec2<u32>(u_input.b, 4294967295u), vec3<u32>(0u, u_input.b, u_input.b), Struct_3(1u, vec4<i32>(u_input.c.x, 21956i, -23555i, -9620i), vec2<f32>(-501f, 1371f), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(17872u, 26u)], global2[_wgslsmith_index_u32(23821u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38737u, 11u)], 11u)]), u_input.a.x)))))));
    var var_1 = vec3<bool>(true, global0[_wgslsmith_index_u32(~(~u_input.b), 14u)], !(!(u_input.c.x != u_input.c.x)));
    let var_2 = true & select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f + 593f) * -442f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * var_0.x))), select(all(!vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], true)), global0[_wgslsmith_index_u32(0u ^ (u_input.b ^ 25592u), 14u)], !(11577u < global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 11u)], 26u)])));
    var var_3 = var_0.x;
    let var_4 = !select(func_2(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(424u, 17u)])), vec2<u32>(721u, 33260u)), abs(~vec3<u32>(global1[_wgslsmith_index_u32(84680u, 17u)], global1[_wgslsmith_index_u32(92387u, 17u)], 0u)), Struct_3(global1[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 26u)], 11u)], 26u)]), 17u)], vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -1i) >> (vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 17u)], 0u, global2[_wgslsmith_index_u32(u_input.b, 11u)]) % vec4<u32>(32u)), var_0.xz, _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 17u)], 11u)], 10795u, global2[_wgslsmith_index_u32(0u, 11u)], 56736u), vec4<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 17u)], u_input.b, 74325u, 5001u)), 32467i ^ u_input.c.x)), select(func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(43835u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]), vec2<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 11u)], u_input.b), vec2<u32>(u_input.b, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 17u)], 26u)])), ~vec3<u32>(0u, 32693u, 1u), Struct_3(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 26u)], vec4<i32>(u_input.c.x, -1i, 1i, 34894i), vec2<f32>(var_0.x, var_0.x), vec4<u32>(u_input.b, 1281u, u_input.b, 33719u), u_input.c.x)), func_2(vec2<u32>(24006u, global3[_wgslsmith_index_u32(4294967295u, 26u)]) << (vec2<u32>(39710u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 26u)], 17u)]) % vec2<u32>(32u)), ~vec3<u32>(0u, u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 26u)]), Struct_3(5297u, vec4<i32>(u_input.c.x, -1i, u_input.a.x, -1i), vec2<f32>(761f, var_0.x), vec4<u32>(0u, global3[_wgslsmith_index_u32(u_input.b, 26u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5700u, 26u)], 11u)], 26u)], u_input.b), u_input.a.x)), true), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstLeadingBit(vec4<i32>(u_input.a.x, -(-1i << (global2[_wgslsmith_index_u32(37516u, 11u)] % 32u)), reverseBits(_wgslsmith_clamp_i32(-13826i, -20287i, u_input.c.x)), 1i)), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(firstTrailingBit(1u), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(59589u, 0u, global1[_wgslsmith_index_u32(10585u, 17u)], 8264u), vec4<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 17u)], 26u)], 26u)])), 17u)], 17u)], 26u)])), 17u)], 26u)], _wgslsmith_f_op_vec4_f32(abs(var_0)));
}

