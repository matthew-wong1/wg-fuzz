struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(23062u, 1u, 30700u, 1271u, 65377u, 46525u, 1u, 4294967295u, 1u, 4294967295u, 4294967295u, 8819u, 0u, 0u, 68206u, 4294967295u, 0u, 0u, 26686u, 0u, 1u, 44706u, 24561u, 4294967295u, 0u, 28094u);

var<private> global1: array<bool, 18> = array<bool, 18>(true, true, true, true, false, false, true, true, false, false, false, false, false, true, true, true, false, false);

var<private> global2: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(-498f, 1762f, 503f), vec3<f32>(1121f, 1145f, 368f), vec3<f32>(-294f, 215f, 364f), vec3<f32>(1226f, 1600f, -456f), vec3<f32>(908f, 123f, 555f), vec3<f32>(-1000f, 670f, -1484f), vec3<f32>(-1410f, -396f, 758f), vec3<f32>(-1494f, -860f, -486f), vec3<f32>(1000f, -2503f, -730f), vec3<f32>(176f, -110f, 1307f), vec3<f32>(-1052f, 100f, -1717f), vec3<f32>(319f, -862f, -1469f));

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(0u, 60603u), vec2<u32>(54081u, 43111u));

var<private> global4: f32 = 106f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(!(!arg_0.a), ~arg_0.c, select(max(countOneBits(arg_0.b), vec2<u32>(arg_0.b.x, ~global3.b.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(arg_0.c), ~vec2<u32>(0u, 47970u)), 60715u), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(global3.b.x), 26u)], 18u)], !(true || global1[_wgslsmith_index_u32(0u, 18u)]))));
    global0 = array<u32, 26>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(551f, -259f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -727f) - -388f)), _wgslsmith_f_op_f32(f32(-1f) * -1786f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1200f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-572f * 1027f), _wgslsmith_f_op_f32(ceil(-549f)), !global3.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(145f)))) * 1812f))));
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x));
    return !(~u_input.a >= _wgslsmith_clamp_i32((u_input.a ^ u_input.a) << (~0u % 32u), u_input.a | 2147483647i, u_input.a));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(158f)))), -1883f))));
    var var_0 = arg_2;
    let var_1 = vec3<u32>(reverseBits(1u), _wgslsmith_sub_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(min(abs(95444u), 0u >> (1u % 32u)), 26u)], countOneBits(_wgslsmith_clamp_u32(37119u, arg_1.c.x, 13756u))), firstTrailingBit(var_0.b.x)), 1u);
    let var_2 = arg_1;
    var var_3 = Struct_1(select(!select(select(global3.a, vec4<bool>(false, var_0.a.x, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(arg_1.a.x, global3.a.x, global3.a.x, arg_2.a.x), true), !(!(!arg_2.a)), !(!var_2.a)), arg_1.c, ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6316u, 98703u, 16120u), vec3<u32>(6055u, 45143u, global0[_wgslsmith_index_u32(var_2.c.x, 26u)])), arg_3), firstTrailingBit(vec2<u32>(global3.c.x, 1912u))));
    return (firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a) << ((var_1 ^ var_1) % vec3<u32>(32u))) >> (vec3<u32>(max(arg_2.b.x, arg_2.b.x ^ global3.b.x), 4294967295u, _wgslsmith_mult_u32(1u, 0u)) % vec3<u32>(32u))) >> ((~_wgslsmith_div_vec3_u32(~vec3<u32>(18069u, 155133u, global0[_wgslsmith_index_u32(arg_1.b.x, 26u)]), countOneBits(var_1)) | var_1) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    global2 = array<vec3<f32>, 12>();
    let var_0 = 1u;
    global1 = array<bool, 18>();
    let var_1 = _wgslsmith_f_op_f32(513f * _wgslsmith_f_op_f32(-arg_1));
    let var_2 = func_4(arg_2.x, Struct_1(!vec4<bool>(true, arg_2.x, 130f <= arg_1, var_0 < 48196u), vec2<u32>(global3.c.x, 32971u), global3.b), Struct_1(select(vec4<bool>(global3.a.x, global1[_wgslsmith_index_u32(51451u, 18u)] || false, global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b.x, 26u)], 26u)]), 18u)], var_1 != -400f), vec4<bool>(true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(global3.b.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], false)), func_3(Struct_1(global3.a, global3.c, vec2<u32>(1u, 4294967295u))), global1[_wgslsmith_index_u32(~global3.c.x, 18u)]), global3.a), min(global3.b, vec2<u32>(reverseBits(global0[_wgslsmith_index_u32(global3.c.x, 26u)]), 4294967295u & global0[_wgslsmith_index_u32(var_0, 26u)])), global3.c), ~(~_wgslsmith_mod_u32(~global3.b.x, var_0)));
    return min(~0u, _wgslsmith_clamp_u32(4294967295u, max(global3.c.x, 1u), global0[_wgslsmith_index_u32(abs(32866u & _wgslsmith_add_u32(global3.b.x, var_0)), 26u)]));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-472f + 846f) * -463f), -833f, select(any(global3.a.wxz) != global1[_wgslsmith_index_u32(func_2(vec2<i32>(1i, u_input.a), 683f, global3.a.xw), 18u)], true, select(all(global3.a), false, !global1[_wgslsmith_index_u32(global3.c.x, 18u)])))));
    let var_1 = Struct_1(select(select(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33373u, 26u)], 18u)] == false, true, global1[_wgslsmith_index_u32(abs(global3.c.x), 18u)], global3.a.x), !global3.a, select(global3.a, vec4<bool>(false, global3.a.x, true, global3.a.x), global3.a)), vec4<bool>(!(u_input.a <= 2147483647i), global3.a.x, global1[_wgslsmith_index_u32(41041u, 18u)], any(global3.a)), true), ~global3.b, reverseBits(reverseBits(reverseBits(global3.b ^ vec2<u32>(4294967295u, global3.c.x)))));
    var var_2 = reverseBits(firstTrailingBit(max(vec3<i32>(u_input.a, u_input.a, u_input.a), countOneBits(vec3<i32>(u_input.a, u_input.a, -28737i)))) ^ vec3<i32>(u_input.a, u_input.a, -_wgslsmith_add_i32(2147483647i, -33524i)));
    let var_3 = var_1;
    global0 = array<u32, 26>();
    return Struct_1(vec4<bool>(any(select(select(vec3<bool>(true, true, true), var_1.a.zww, true), vec3<bool>(true, false, false), var_3.a.x)), reverseBits(~var_1.b.x) != ~(~var_1.c.x), !var_3.a.x, true), abs(abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(var_1.c.x, var_1.b.x)))), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1062f, -1804f, global1[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f + -392f)))), 1069f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1031f);
    var var_2 = max(countOneBits(~vec4<i32>(u_input.a, -u_input.a, _wgslsmith_mod_i32(u_input.a, -29427i), u_input.a)), ~(-select(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-24448i, u_input.a, 2147483647i, -33132i)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(global3.c.x, 18u)], false))));
    var var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) - _wgslsmith_f_op_f32(floor(137f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-122f, -983f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f * 1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-622f, -746f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f + -143f))))));
    var var_5 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1534f, var_4)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * _wgslsmith_f_op_f32(sign(var_4))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 - var_4)), var_4)))));
    var var_6 = var_3.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wy, _wgslsmith_clamp_i32(~firstTrailingBit(_wgslsmith_mod_i32(var_2.x, 12524i)), ~var_2.x, -29919i), 29626u);
}

