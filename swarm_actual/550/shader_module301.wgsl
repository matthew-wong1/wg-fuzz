struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-410f, 911f, 267f, -1663f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-367f, -2036f, 852f, 644f))), all(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1857f, 872f, -1100f, 933f), vec4<f32>(-1000f, -871f, 1457f, -306f))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(625f, -683f, -245f, -1000f) + vec4<f32>(617f, -213f, -1723f, 1371f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-605f, 1241f, 1000f, 1000f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(717f, -1000f, 113f, 1559f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-291f, 260f, -483f, -252f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1339f, 1104f, 354f, 1067f) + vec4<f32>(810f, 222f, 387f, 1107f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-162f, 334f, 1631f, 934f) - vec4<f32>(244f, 413f, -323f, -938f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-140f, -1846f, -523f, 296f), vec4<f32>(617f, 1137f, -284f, -291f), true)))))));
    var var_1 = Struct_3(Struct_2(Struct_1(i32(-1i) * -1i, vec2<u32>(28504u, ~u_input.a.x), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_clamp_i32(~(-41811i), _wgslsmith_div_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), 114i), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a.x, 76637u), ~vec2<u32>(u_input.a.x, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(max(countOneBits(4294967295u), countOneBits(1u)), 12u)], countOneBits(vec2<u32>(18517u, 19629u)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)), Struct_1(global0[_wgslsmith_index_u32(~(~11715u), 12u)], u_input.a.zx, vec4<bool>(true, true, true, true)), var_0.zx));
    var var_2 = -33345i == select(_wgslsmith_mult_i32(~(~var_1.a.b.a), ~_wgslsmith_sub_i32(-3705i, global0[_wgslsmith_index_u32(6066u, 12u)])), _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(-10698i, var_1.b.b.a)), 1i), false);
    global0 = array<i32, 12>();
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -309f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-477f)), -1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.c.x))))));
    return vec2<i32>(-global0[_wgslsmith_index_u32(45361u, 12u)], var_1.a.b.a);
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = arg_0.d.zx;
    var_0 = abs(abs(func_3()));
    let var_1 = Struct_2(Struct_1(func_3().x, _wgslsmith_sub_vec2_u32(u_input.a.xx, ~arg_0.c.zw ^ (u_input.a.yy & vec2<u32>(arg_0.b, u_input.a.x))), !select(select(vec4<bool>(false, arg_0.a, false, true), vec4<bool>(arg_0.a, arg_0.a, false, false), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.a, arg_0.a, true, true), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), arg_0.a))), Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], arg_0.d.x), ~vec2<i32>(var_0.x, arg_0.d.x))), u_input.a.xx, select(select(vec4<bool>(arg_0.a, false, false, arg_0.a), select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, false), arg_0.a), !vec4<bool>(true, false, false, arg_0.a)), select(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), !vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, true, false)), vec4<bool>(true, arg_0.a == arg_0.a, arg_0.a, false & arg_0.a))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1413f, 1477f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, -171f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 263f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1243f, 1191f) * vec2<f32>(-1653f, 564f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 3137f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1283f, -221f))), vec2<bool>(true, true))))));
    let var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -656f));
    global0 = array<i32, 12>();
    return vec2<bool>(select(!var_1.a.c.x, any(select(select(var_1.b.c.yw, vec2<bool>(false, true), arg_0.a), vec2<bool>(false, var_1.a.c.x), vec2<bool>(arg_0.a, false))), !select(true, global0[_wgslsmith_index_u32(arg_0.c.x, 12u)] != arg_0.d.x, any(vec3<bool>(var_1.b.c.x, true, false)))), var_1.b.c.x);
}

fn func_1() -> f32 {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(true, all(vec2<bool>(true, true))), select(func_2(Struct_4(true, u_input.a.x, vec4<u32>(36874u, u_input.a.x, 2147u, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(29226u, 12u)], 42152i, 0i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 10790i))), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(func_2(Struct_4(true, 0u, vec4<u32>(27050u, 54442u, 84260u, 25576u), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(49391u, 12u)], global0[_wgslsmith_index_u32(12389u, 12u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], -26694i))), vec2<bool>(true, true), true)), true && ((_wgslsmith_f_op_f32(round(206f)) < -2031f) | true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-506f, _wgslsmith_f_op_f32(f32(-1f) * -472f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 957f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1393f))))));
    let var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a.x, 1u), 12u)], 1i), -2147483647i & firstLeadingBit(var_2), _wgslsmith_mod_u32(8459u, ~firstLeadingBit(firstLeadingBit(4294967295u))), max(countOneBits(~_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], var_2), vec2<i32>(-57i, var_2))), vec2<i32>(~(~global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), _wgslsmith_dot_vec2_i32(~vec2<i32>(-16193i, var_2), vec2<i32>(global0[_wgslsmith_index_u32(25894u, 12u)], var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
}

