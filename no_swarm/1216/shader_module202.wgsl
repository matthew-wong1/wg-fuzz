struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-1002f, -1000f, -1062f), vec4<u32>(4294967295u, 1u, 37390u, 1u));

var<private> global1: array<Struct_3, 22>;

var<private> global2: vec2<f32>;

var<private> global3: Struct_1;

var<private> global4: array<bool, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    let var_0 = global0.b.x;
    var var_1 = Struct_2(true, !(!global4[_wgslsmith_index_u32(global3.b.x, 4u)]));
    var var_2 = global1[_wgslsmith_index_u32(76921u, 22u)];
    var_1 = var_2.b;
    global1 = array<Struct_3, 22>();
    return 1i;
}

fn func_3() -> u32 {
    let var_0 = firstTrailingBit(vec4<i32>(1i << (global3.b.x % 32u), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(-1i, 0i)))), 35991i, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-39261i, -1i), vec2<i32>(45966i, 0i)), abs(vec2<i32>(9771i, 1i))))));
    global2 = global0.a.yz;
    let var_1 = var_0.x;
    var var_2 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, global4[_wgslsmith_index_u32(40254u, 4u)]), global4[_wgslsmith_index_u32(global0.b.x, 4u)]), vec2<bool>(global4[_wgslsmith_index_u32(5524u, 4u)], true), vec2<bool>(global4[_wgslsmith_index_u32(5478u, 4u)], true)), vec2<bool>(true, !(global4[_wgslsmith_index_u32(u_input.a.x, 4u)] != false)), all(!vec3<bool>(global4[_wgslsmith_index_u32(883u, 4u)], true, true))), vec2<bool>(!(!any(vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 4u)], global4[_wgslsmith_index_u32(1u, 4u)], false))), select(global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a.x, global0.b.x, 4740u), 4u)], any(select(vec4<bool>(true, global4[_wgslsmith_index_u32(69991u, 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(4294967295u, 4u)]), vec4<bool>(false, false, global4[_wgslsmith_index_u32(global0.b.x, 4u)], global4[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(false, true, global4[_wgslsmith_index_u32(32044u, 4u)], true))), 3750i > var_0.x)), true);
    var var_3 = vec3<i32>(firstLeadingBit(-(~var_0.x)), -79492i, ~(~var_1)) << ((vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global3.b.x, global0.b.x, global0.b.x)), 118u) << (u_input.b % vec3<u32>(32u))) % vec3<u32>(32u));
    return 75810u;
}

fn func_1(arg_0: bool) -> vec4<f32> {
    let var_0 = func_2();
    global2 = global3.a.xx;
    var var_1 = global1[_wgslsmith_index_u32(1u, 22u)];
    let var_2 = Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(16756i, var_0), vec2<i32>(-1i, var_0)), i32(-1i) * -1i, -7314i) & vec3<i32>(var_0, ~min(19029i, var_0), reverseBits(var_0) ^ -56029i), ~func_3(), var_1.b, u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.a.a.x, _wgslsmith_f_op_f32(trunc(global2.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1370f, -741f)), _wgslsmith_f_op_f32(-var_1.a.a.x))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -1000f, global0.a.x, -2015f))), vec4<f32>(_wgslsmith_f_op_f32(round(621f)), -1646f, -723f, -359f), vec4<bool>(true, select(true, false, arg_0), select(false, true, var_1.b.a), false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(892f, -222f, var_1.a.a.x, 2443f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.x, var_1.a.a.x, global0.a.x, 456f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1079f, -1176f, var_1.a.a.x, var_1.a.a.x) - vec4<f32>(-1253f, -760f, global3.a.x, var_1.a.a.x)), vec4<f32>(global2.x, global0.a.x, global3.a.x, global2.x))), select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(80635u, 4u)], false, global4[_wgslsmith_index_u32(87217u, 4u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(8445u, 4u)], true, var_2.c.a), vec4<bool>(true, var_1.b.b, var_2.c.b, global4[_wgslsmith_index_u32(1u, 4u)])), vec4<bool>(arg_0, false, var_1.b.a, global4[_wgslsmith_index_u32(42270u, 4u)]), vec4<bool>(var_2.c.a, true, true, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, -545f, var_1.a.a.x, var_3.x) * vec4<f32>(-1001f, 969f, -1126f, global2.x))) - vec4<f32>(_wgslsmith_div_f32(var_3.x, 300f), _wgslsmith_f_op_f32(min(496f, -505f)), _wgslsmith_f_op_f32(-561f * 408f), global3.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u << (~u_input.a.x % 32u), global3.b.x), 10403u), 22u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global0.a.x)))) + var_1.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(~4294967295u, var_1.d.x, 1u, ~(~global3.b.x)), vec4<u32>(_wgslsmith_mod_u32(min(0u, 0u), u_input.a.x), ~abs(u_input.b.x), _wgslsmith_mult_u32(global3.b.x ^ 1u, min(1u, 1u)), ~global0.b.x), !any(vec3<bool>(true, var_1.c.x, global4[_wgslsmith_index_u32(global3.b.x, 4u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 31300i, _wgslsmith_sub_i32(-2147483647i, -1i), -1i), ~(-vec4<i32>(-35846i, -22869i, 42849i, -20140i))), _wgslsmith_f_op_vec4_f32(func_1(!(1u >= u_input.a.x))), 2147483647i);
}

