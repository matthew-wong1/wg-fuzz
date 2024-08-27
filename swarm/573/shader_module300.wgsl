struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global1: array<Struct_2, 12>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_1 = Struct_1(1858f, vec2<f32>(154f, -538f), vec3<f32>(-1005f, -316f, 598f), vec3<bool>(true, true, false));

var<private> global4: array<Struct_3, 31>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> f32 {
    global1 = array<Struct_2, 12>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(step(global2.x, arg_1.c.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-726f)) - global2.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d.a, global2.x)), global2.xzy, select(select(vec3<bool>(true, false, false), arg_3.d.d, arg_3.b.d.x), vec3<bool>(arg_1.a.d.d.x, arg_1.c.b.d.x, true), !arg_3.d.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, 925f, 688f, 180f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.c) + vec4<f32>(212f, 2451f, arg_1.a.d.c.x, -676f))), Struct_1(390f, global3.b, global2.wyw, select(vec3<bool>(arg_3.d.d.x, false, arg_3.b.d.x), vec3<bool>(arg_2, arg_1.c.d.d.x, arg_3.d.d.x), arg_3.b.d.x))), arg_1.c.d, Struct_2(-390f, arg_3.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1357f, _wgslsmith_f_op_f32(1000f + global3.c.x), _wgslsmith_f_op_f32(-372f + -736f), _wgslsmith_f_op_f32(369f + global3.c.x)), arg_3.c, vec4<bool>(arg_3.d.b.x < -1000f, arg_1.c.b.a < arg_1.b.c.x, any(arg_1.c.b.d), false))), arg_1.b), -(~(-35998i)));
    let var_1 = arg_1.c.c;
    var var_2 = vec2<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(16558u, 63078u, 4294967295u, 1u))), 1u)], _wgslsmith_dot_vec3_i32(vec3<i32>((i32(-1i) * -1i) & var_0.d, arg_1.d, _wgslsmith_sub_i32(2147483647i, min(2147483647i, u_input.a))), countOneBits(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a, arg_0), vec3<i32>(-1i, -1i, u_input.a), vec3<i32>(var_0.d, 853i, u_input.a)))));
    let var_3 = any(!vec2<bool>(arg_2, arg_1.c.b.d.x));
    return -481f;
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(1i, Struct_3(global1[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(arg_0, global3.c.zy, vec3<f32>(-1000f, 1245f, global3.a), vec3<bool>(false, global3.d.x, true)), Struct_2(-845f, Struct_1(global2.x, vec2<f32>(global3.a, global3.b.x), global3.c, vec3<bool>(false, false, false)), vec4<f32>(global3.a, global3.b.x, arg_0, 456f), Struct_1(arg_0, global2.wy, global3.c, vec3<bool>(global3.d.x, global3.d.x, false))), arg_1), true, global1[_wgslsmith_index_u32(69152u, 12u)])), _wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(global2.x * arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1262f, arg_0, -1231f) * vec4<f32>(275f, global3.a, arg_0, arg_0))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(round(-301f)))), _wgslsmith_f_op_f32(-1537f * global2.x), global3.c.x));
}

fn func_1(arg_0: i32) -> i32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global2.x, global0[_wgslsmith_index_u32(85593u, 1u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.b.x, global3.b.x, 180f))))));
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(556f, global2.x))))), vec2<f32>(885f, _wgslsmith_f_op_f32(f32(-1f) * -1626f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(global2.xwz, global3.c, !(!global3.d.x))))), !select(select(!global3.d, global3.d, true), !select(vec3<bool>(global3.d.x, true, global3.d.x), global3.d, global3.d), global3.d.x));
    let var_1 = -358f;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(var_1)), Struct_1(616f, vec2<f32>(var_1, 508f), vec3<f32>(323f, global2.x, -773f), vec3<bool>(true, global3.d.x, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2947f, 1107f, global2.x, 495f))), vec4<f32>(var_0.a, global3.a, var_1, _wgslsmith_f_op_f32(exp2(global2.x))), global3.d.x & (global0[_wgslsmith_index_u32(85407u, 1u)] < 73152i))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-871f, global2.x, global2.x, var_1) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-186f, var_1, -622f, var_0.c.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2225f, var_0.a, -356f, var_1)))), Struct_1(1176f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1067f, -136f), vec2<f32>(1000f, var_0.a), vec2<bool>(var_0.d.x, global3.d.x))), global3.d.yx)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(1391f + global2.x), _wgslsmith_f_op_f32(var_1 - var_0.b.x))), vec3<bool>(true, false, select(global3.d.x, true, true) & true)));
    let var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(~4294967295u, max(6643u, 4294967295u), abs(4294967295u))), vec3<u32>(abs(7278u), 17010u, ~4294967295u) & ~select(vec3<u32>(8839u, 1u, 42607u), vec3<u32>(4294967295u, 1u, 2389u), vec3<bool>(false, var_0.d.x, true))) > 24275u;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    global0 = array<i32, 1>();
    let var_1 = var_0;
    let var_2 = ~(vec3<i32>(-max(2147483647i, -2147483647i), func_1(~global0[_wgslsmith_index_u32(102539u, 1u)]), 1i) << (~(~vec3<u32>(16663u, 1u, 4294967295u)) % vec3<u32>(32u)));
    let var_3 = 494f;
    var var_4 = Struct_1(global2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2048f)) * _wgslsmith_f_op_f32(func_3(-39861i, Struct_3(Struct_2(-735f, Struct_1(573f, global2.xx, global3.c, global3.d), vec4<f32>(var_3, global3.c.x, global2.x, -122f), Struct_1(global3.a, global2.zx, global2.zwy, vec3<bool>(global3.d.x, global3.d.x, global3.d.x))), Struct_1(710f, global3.b, global3.c, vec3<bool>(global3.d.x, false, true)), global1[_wgslsmith_index_u32(13355u, 12u)], 0i), false, global1[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(f32(-1f) * -274f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1857f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1266f)) - 1366f) + -600f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 + global2.x), _wgslsmith_div_f32(var_3, 1000f))))), vec3<bool>(any(global3.d), !global3.d.x, any(select(!global3.d, global3.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -221f), var_4.b.x)), _wgslsmith_f_op_f32(-var_3), any(select(var_4.d.zy, global3.d.zy, var_4.d.xz))))), firstTrailingBit(~32494u), vec2<u32>(1u, 1u));
}

