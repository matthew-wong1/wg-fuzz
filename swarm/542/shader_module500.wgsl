struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_1 = Struct_1(true, 1195i, vec3<bool>(false, true, false));

var<private> global2: array<f32, 9> = array<f32, 9>(-1647f, 322f, 1075f, 591f, 823f, 1059f, 1205f, -290f, -498f);

var<private> global3: vec2<f32> = vec2<f32>(-1558f, 1411f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    global0 = ~(firstLeadingBit(-arg_2.b) << (u_input.d % 32u)) ^ -arg_2.b;
    global2 = array<f32, 9>();
    var var_0 = abs(~(~firstLeadingBit(arg_0)) ^ _wgslsmith_mod_u32(arg_0, ~arg_0));
    var var_1 = arg_2;
    var var_2 = arg_2;
    return -786f;
}

fn func_3() -> vec3<u32> {
    return firstTrailingBit(vec3<u32>(58579u, 4294967295u, 68608u));
}

fn func_4(arg_0: vec3<u32>) -> vec4<i32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(567f, _wgslsmith_f_op_f32(-168f - global3.x))) <= 398f, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, global1.b), u_input.b.yw), _wgslsmith_add_vec2_i32(u_input.c, u_input.c)), vec2<i32>(-2147483647i << (0u % 32u), global1.b)), u_input.c.x), select(vec3<bool>(arg_0.x != max(u_input.a.x, arg_0.x), !global1.c.x, all(vec4<bool>(global1.c.x, true, false, global1.a)) && global1.a), select(global1.c, !global1.c, global1.c), all(!vec4<bool>(global1.c.x, global1.c.x, true, global1.a)) & !(u_input.a.x >= 27659u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(0u, 9u)], 770f, 759f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)])))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-299f, global3.x, -258f), vec3<f32>(global2[_wgslsmith_index_u32(19671u, 9u)], 953f, 388f), vec3<bool>(global1.a, false, true))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, 269f, -484f), vec3<f32>(global3.x, global3.x, global2[_wgslsmith_index_u32(30849u, 9u)]))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 221f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], -905f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(918f, 801f, -422f)), true)))));
    global0 = reverseBits(~0i);
    let var_1 = Struct_1(global1.a, ~((min(global1.b, u_input.c.x) >> (arg_0.x % 32u)) << (u_input.a.x % 32u)), vec3<bool>(all(vec4<bool>(global1.a, false, false, true)) || any(!vec2<bool>(false, global1.a)), global1.c.x || false, -1092f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.x, var_0.yz, Struct_1(global1.a, -31763i, global1.c), arg_0.x)) - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 9u)]))));
    global2 = array<f32, 9>();
    return countOneBits(firstLeadingBit(max(firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(40192i, var_1.b, global1.b, var_1.b))), _wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, -2147483647i, -1411i, u_input.c.x), vec4<i32>(35012i, 2147483647i, var_1.b, u_input.c.x)), u_input.b))));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, global3.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(4781u, vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], -2439f), Struct_1(false, global1.b, global1.c), 8866u))), _wgslsmith_f_op_f32(min(748f, _wgslsmith_f_op_f32(select(-111f, 1000f, global1.c.x))))))));
    global0 = u_input.c.x;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(39876u, 9u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1612f, -353f), global3.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1140f, _wgslsmith_f_op_f32(f32(-1f) * -679f)) + global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1146f * global2[_wgslsmith_index_u32(~41785u, 9u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.d, 9u)])) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 9u)] * 373f))) - -542f), _wgslsmith_f_op_f32(-global3.x));
    var var_1 = 526f;
    var var_2 = firstLeadingBit(u_input.a);
    return Struct_1(true, _wgslsmith_dot_vec4_i32(func_4(func_3()), u_input.b), vec3<bool>(any(!global1.c), global1.a, true));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = Struct_1(true, global1.b, func_1().c);
    var var_1 = arg_3.c.yx;
    var_0 = Struct_1(!(!all(vec3<bool>(false, arg_0.x, true))), func_4(vec3<u32>(0u, ~0u ^ firstTrailingBit(u_input.a.x), 20660u)).x, select(arg_2.wyz, !(!select(var_0.c, vec3<bool>(false, true, var_0.a), arg_2.zwz)), (all(vec3<bool>(false, true, true)) == true) | true));
    var var_2 = -2448f;
    return func_1();
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-1000f, -579f), _wgslsmith_f_op_f32(step(763f, 1007f))), _wgslsmith_div_vec2_f32(vec2<f32>(-505f, -503f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-756f, global2[_wgslsmith_index_u32(8871u, 9u)]))))) - vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_2(u_input.a.x, vec2<f32>(-1218f, -595f), Struct_1(arg_1.c.x, 1i, arg_2.c), _wgslsmith_sub_u32(33647u, 1u))))));
    return vec2<bool>(false, arg_1.c.x);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = arg_0;
    global0 = 0i;
    var var_1 = func_3().zx;
    var_0 = func_5(vec2<bool>((u_input.b.x & ~var_0.b) <= min(u_input.b.x, -1i), false), u_input.c, vec4<bool>(global3.x >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(u_input.d, vec2<f32>(202f, -304f), Struct_1(global1.a, 0i, vec3<bool>(false, arg_0.c.x, true)), 11979u)))), select(arg_1.x, false, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_1.x, 9u)], 802f)) >= _wgslsmith_f_op_f32(trunc(960f))), false, !any(!global1.c.zy)), func_1());
    var_1 = ~u_input.a;
    return StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -746f))), vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 9u)], _wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 9u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x & u_input.a.x, 9u)] + -1850f), _wgslsmith_f_op_f32(round(-694f)))), abs(vec2<i32>(func_5(arg_0.c.xy, u_input.c, select(vec4<bool>(true, var_0.c.x, true, global1.c.x), vec4<bool>(true, var_0.c.x, true, arg_2.x), arg_0.c.x), func_5(var_0.c.xx, vec2<i32>(-15946i, -9819i), vec4<bool>(false, global1.c.x, arg_0.a, arg_2.x), Struct_1(false, var_0.b, global1.c))).b, func_5(global1.c.xy, func_4(vec3<u32>(var_1.x, u_input.a.x, var_1.x)).wz, !vec4<bool>(arg_2.x, arg_1.x, true, false), arg_0).b)), _wgslsmith_f_op_f32(trunc(global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(Struct_1(_wgslsmith_f_op_f32(-global3.x) > _wgslsmith_f_op_f32(max(-1000f, -1890f)), i32(-1i) * -2147483647i, global1.c), global1.c, select(select(select(vec2<bool>(false, global1.a), vec2<bool>(global1.c.x, global1.c.x), !global1.c.x), vec2<bool>(!global1.c.x, global1.a || global1.a), !(!global1.c.x)), func_6(u_input.c.x, func_5(vec2<bool>(false, global1.c.x), u_input.c, !vec4<bool>(false, global1.c.x, global1.a, true), func_1()), Struct_1(global1.a & global1.c.x, -2147483647i, global1.c)), true));
}

