struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2 = Struct_2(-638f, vec4<bool>(true, false, false, false));

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 10>;

var<private> global4: i32 = -16221i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(!select(vec4<bool>(true, global1.b.x, global1.b.x, true), select(!vec4<bool>(false, global1.b.x, global1.b.x, true), vec4<bool>(false, false, global1.b.x, false), select(vec4<bool>(true, false, global1.b.x, false), global1.b, global1.b)), vec4<bool>(all(global1.b), global1.b.x & global1.b.x, true, all(vec2<bool>(global1.b.x, false)))), -36983i, firstTrailingBit(global0.yx), !global1.b.yww);
    global4 = ~(var_0.c.x | global0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a))), global1.a, _wgslsmith_f_op_f32(-global1.a), global1.a), vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-global1.a)), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, 818f, 2160f), vec4<f32>(1362f, 1000f, -1000f, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1698f, -445f, global1.a))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, global1.a, global1.a, global1.a) * vec4<f32>(-2295f, -538f, 2229f, global1.a))))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -317f), var_0.a);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)));
    return select(select(!(!global1.b), vec4<bool>(all(global1.b) || (var_2.b.x & false), !(u_input.e != arg_0.x), true, !all(vec3<bool>(var_0.d.x, false, true))), select(all(vec3<bool>(var_0.d.x, var_2.b.x, false)), true, true)), !select(select(!var_2.b, select(vec4<bool>(true, var_0.d.x, global1.b.x, var_0.d.x), vec4<bool>(var_2.b.x, var_0.a.x, global1.b.x, true), global1.b), select(var_2.b, var_2.b, vec4<bool>(global1.b.x, false, var_2.b.x, var_2.b.x))), select(var_2.b, !global1.b, var_2.b.x), vec4<bool>(!global1.b.x, any(var_2.b.zz), var_0.d.x, true)), global1.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<u32> {
    global2 = global1.a;
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(~(~0u), ~0u), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.d, 6144u, u_input.a.x), u_input.c)), 1u, _wgslsmith_clamp_u32(abs(u_input.a.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) | ~u_input.d, ~_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.a.x), ~(~u_input.a.x)));
    global3 = array<vec2<u32>, 10>();
    let var_1 = !(!global1.b.x);
    global0 = arg_1.zyz;
    return abs(u_input.a);
}

fn func_2() -> i32 {
    global3 = array<vec2<u32>, 10>();
    let var_0 = func_4(Struct_1(func_3(u_input.b), u_input.e, select(firstLeadingBit(-u_input.b), firstLeadingBit(~global0.yy), false), global1.b.xwx), vec4<i32>(u_input.e, global0.x, min(-12416i, global0.x) ^ _wgslsmith_mod_i32(_wgslsmith_div_i32(-15449i, 37235i), -1i), 1i));
    global4 = -1i;
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(-583f)), !global1.b);
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1960f - global1.a))) * global1.a), vec4<bool>(!(!any(global1.b)), max(52705u, 18715u) == _wgslsmith_mult_u32(70867u, var_0.x), !any(global1.b.zw) | (global1.b.x || (false || global1.b.x)), true));
    return -(~(-1i & abs(u_input.b.x)));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: f32) -> u32 {
    global1 = Struct_2(-119f, vec4<bool>(!global1.b.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, 4294967295u, 1u, u_input.d), vec4<u32>(87637u, 39765u, u_input.c, 76602u)), abs(vec4<u32>(16087u, 1u, 1u, u_input.a.x))) > firstLeadingBit(func_4(Struct_1(global1.b, arg_1, vec2<i32>(1i, 0i), vec3<bool>(global1.b.x, true, global1.b.x)), vec4<i32>(arg_0, -23370i, global0.x, arg_0)).x), ~u_input.a.x >= 36094u, any(select(select(vec2<bool>(true, true), global1.b.wx, false), global1.b.yw, global1.b.zz))));
    let var_0 = Struct_1(!vec4<bool>(u_input.d <= u_input.a.x, !global1.b.x, global1.b.x, true), 0i, select(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, arg_1), global0.xx, vec2<i32>(2147483647i, arg_1))), _wgslsmith_clamp_vec2_i32(u_input.b, global0.yz, vec2<i32>(arg_0, 1i)) | ~global0.xy, global1.b.x) ^ ~vec2<i32>(arg_0, arg_0), global1.b.wzy);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1.a, arg_2)), _wgslsmith_f_op_f32(arg_2 + 1245f)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a + global1.a)))))), vec4<bool>(false, true, all(!(!vec4<bool>(true, false, global1.b.x, true))), false));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a, var_2.a, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(-global1.a), -2043f, _wgslsmith_f_op_f32(trunc(1169f)))))));
    return _wgslsmith_dot_vec3_u32(~u_input.a, ~(~vec3<u32>(max(u_input.c, 0u), ~4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -968f);
    global3 = array<vec2<u32>, 10>();
    global1 = Struct_2(_wgslsmith_f_op_f32(round(1131f)), vec4<bool>(global1.b.x | (-589f < global1.a), true, all(global1.b), global1.b.x));
    let var_0 = max(func_5(func_2(), _wgslsmith_div_i32(u_input.e, 0i), -1852f), u_input.c);
    global3 = array<vec2<u32>, 10>();
    return ~vec2<u32>(_wgslsmith_div_u32(min(4294967295u & u_input.d, var_0), 0u ^ _wgslsmith_clamp_u32(arg_0.x, var_0, 13127u)), max(func_5(global0.x, abs(2147483647i), 1f), _wgslsmith_dot_vec3_u32(max(u_input.a, vec3<u32>(39594u, arg_0.x, u_input.d)), vec3<u32>(51090u, u_input.d, 6660u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.d, u_input.a.x, any(!global1.b.www)) >= reverseBits(u_input.c);
    let var_1 = u_input.a;
    var var_2 = Struct_1(select(global1.b, global1.b, global1.b), -1i, vec2<i32>(10818i << (var_1.x % 32u), -11035i) >> (_wgslsmith_mod_vec2_u32(var_1.yy, global3[_wgslsmith_index_u32(reverseBits(u_input.c), 10u)]) % vec2<u32>(32u)), global1.b.zww);
    let var_3 = reverseBits(vec2<u32>(u_input.d, ~u_input.d) | func_1(u_input.a));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), global1.a, global1.a, _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(982f, global1.a, 343f, 108f), vec4<f32>(-1297f, global1.a, 1846f, -422f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 1483f, global1.a, -1034f) - vec4<f32>(1481f, global1.a, global1.a, global1.a))))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-522f + global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) * global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(select(-1004f, global1.a, var_0))), 174f))));
    var_2 = Struct_1(global1.b, reverseBits(-2147483647i), global0.zx, vec3<bool>(var_0, global1.b.x, !global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~1u, 75969u, 1u));
}

