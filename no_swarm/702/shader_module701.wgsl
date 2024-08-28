struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3 = Struct_3(Struct_1(-1i, vec3<f32>(1427f, -1009f, -1505f), vec3<u32>(1u, 23718u, 26930u), -1000f), Struct_1(-71884i, vec3<f32>(768f, 2085f, -348f), vec3<u32>(4294967295u, 60895u, 4294967295u), -1222f));

var<private> global2: array<u32, 7>;

var<private> global3: vec2<f32> = vec2<f32>(1162f, -1630f);

var<private> global4: Struct_1 = Struct_1(2147483647i, vec3<f32>(-160f, 1020f, -947f), vec3<u32>(1247u, 1u, 1u), 1190f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.a.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(212f, global1.a.d, -199f) * vec3<f32>(global3.x, 1002f, global1.b.d))))))));
    global1 = Struct_3(Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(step(global4.d, var_0.x)), global4.d, 1f))), _wgslsmith_add_vec3_u32(global1.b.c, global4.c), -1000f), global1.a);
    var var_1 = global4.c.yx;
    let var_2 = ~(~u_input.a.zy);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(576f)))) + -330f);
    return -1442f;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = countOneBits(-6736i);
    global2 = array<u32, 7>();
    let var_1 = Struct_2(arg_3, global1.a, global1.a, Struct_1(abs(-30134i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(158f, 507f), arg_1.d, _wgslsmith_f_op_f32(step(global1.a.b.x, arg_3))) + global1.a.b), abs(~vec3<u32>(u_input.c, 12252u, global4.c.x)), _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(step(-499f, global1.b.b.x)))), vec3<u32>(1u, arg_2, arg_0.x));
    let var_2 = Struct_3(arg_1, arg_1);
    var var_3 = global1.b;
    return _wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f + -1129f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    global3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.b.b.yz))) * _wgslsmith_f_op_vec2_f32(global1.b.b.xx * arg_2.a.b.xz)))), arg_3.b.yx);
    global4 = Struct_1(~_wgslsmith_dot_vec3_i32(u_input.d, ~firstLeadingBit(u_input.d)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1301f, _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(global1.a.a, vec3<f32>(global3.x, -417f, 1004f), global4.c, 682f), arg_3))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec3<u32>(52036u, global2[_wgslsmith_index_u32(global1.b.c.x, 7u)], 55965u), global1.b, arg_3.c.x, 1000f)), global1.b.b.x))))), _wgslsmith_mod_vec3_u32(global4.c, vec3<u32>(~global1.a.c.x, u_input.c, global1.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.b.x + global3.x))) + -661f) * 692f));
    let var_0 = u_input.d;
    return select(select(select(!select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false)), !vec4<bool>(arg_0.x, true, true, arg_0.x)), select(select(vec4<bool>(true, false, arg_0.x, arg_0.x), !vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), true), vec4<bool>(arg_0.x, 1i > var_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, global1.a.b.x <= -1436f, any(vec4<bool>(false, arg_0.x, false, arg_0.x)))), select(!select(vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, false, false, false)), select(vec4<bool>(arg_0.x, true, false, true), !vec4<bool>(true, arg_0.x, arg_0.x, false), true), !(!vec4<bool>(false, arg_0.x, arg_0.x, false)))), vec4<bool>(!(!any(vec4<bool>(false, arg_0.x, arg_0.x, false))), false, arg_0.x, false), any(!vec3<bool>(arg_0.x != false, arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, true, false)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: f32, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_2(global3.x, Struct_1(arg_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-157f, 1302f, -686f)))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(min(vec3<u32>(6019u, 4294967295u, global1.a.c.x), global1.a.c), global4.c), _wgslsmith_add_vec3_u32(~global1.a.c, vec3<u32>(global4.c.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80515u, 7u)], 7u)]) | vec3<u32>(1u, 30316u, global2[_wgslsmith_index_u32(14828u, 7u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.x - global4.d), global4.d)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(global1.b.a, vec3<f32>(global4.d, global3.x, arg_2), global1.b.c, arg_3), global1.a))))))), Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.x, -1000f, -934f) + _wgslsmith_f_op_vec3_f32(exp2(global4.b))) - global4.b), vec3<u32>(~u_input.c, ~0u | _wgslsmith_div_u32(0u, global2[_wgslsmith_index_u32(17441u, 7u)]), 24708u), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(arg_3 - -146f))), global1.b, ~(~countOneBits(max(u_input.a, vec3<u32>(global2[_wgslsmith_index_u32(1u, 7u)], global4.c.x, global1.a.c.x)))));
    let var_1 = Struct_2(arg_3, var_0.c, var_0.d, var_0.b, select(~global1.a.c, countOneBits(global1.b.c), select(func_1(vec2<bool>(true, arg_1.x), ~119376u, Struct_3(Struct_1(arg_0.x, vec3<f32>(global1.a.d, 219f, global1.a.d), vec3<u32>(94989u, u_input.a.x, 10554u), arg_2), Struct_1(u_input.b.x, var_0.c.b, vec3<u32>(global1.a.c.x, 11136u, u_input.a.x), global3.x)), Struct_1(-16432i, var_0.b.b, vec3<u32>(42044u, 59166u, global4.c.x), 806f)).yyy, !(!vec3<bool>(arg_1.x, false, false)), select(arg_1.x, true, select(true, false, false)))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(global4.b.x * arg_2)), Struct_1(-var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.b - vec3<f32>(global3.x, arg_2, var_1.a)), _wgslsmith_f_op_vec3_f32(var_0.b.b + vec3<f32>(-391f, 1188f, -910f))) - global4.b), ~_wgslsmith_sub_vec3_u32(~var_0.e, ~vec3<u32>(global2[_wgslsmith_index_u32(1u, 7u)], 4294967295u, var_0.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(firstTrailingBit(global1.b.c), global1.b, ~1u, -463f)) * var_0.a)), Struct_1(global1.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(global1.b.b, vec3<f32>(var_0.b.d, -902f, 282f)))) + _wgslsmith_f_op_vec3_f32(step(global4.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, global1.a.b.x, var_1.a))))), global1.b.c, _wgslsmith_f_op_f32(step(global4.b.x, 463f))), Struct_1(global1.a.a, global1.a.b, firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b.c.x, global4.c.x, 4294967295u), vec3<u32>(global4.c.x, 40794u, global1.a.c.x), firstTrailingBit(u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.d + var_0.b.b.x))))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(89314u, 4294967295u, 0u, 4294967295u), vec4<u32>(71885u, 31862u, global1.b.c.x, 48198u)), 1u), vec4<u32>(~1u, var_1.c.c.x << (1152u % 32u), _wgslsmith_mod_u32(0u, 4294967295u), 50081u)), max(_wgslsmith_div_u32(~u_input.c, 4145u), 8903u), ~global1.a.c.x));
    global2 = array<u32, 7>();
    var var_3 = Struct_1(u_input.d.x, vec3<f32>(var_1.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, global1.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -423f)), min(~vec3<u32>(0u, global4.c.x, _wgslsmith_div_u32(global1.b.c.x, global2[_wgslsmith_index_u32(1u, 7u)])), global4.c & ~vec3<u32>(4294967295u, global1.a.c.x, var_2.e.x)), -1300f);
    return Struct_3(var_0.c, Struct_1(global1.b.a, vec3<f32>(_wgslsmith_f_op_f32(abs(-2506f)), _wgslsmith_f_op_f32(global1.b.d * _wgslsmith_f_op_f32(var_2.c.b.x - var_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c.d)))), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_3.c.x, 25185u), var_0.c.c & u_input.a)), -398f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 7>();
    var var_0 = global1.b;
    var var_1 = _wgslsmith_f_op_f32(-global4.b.x);
    var var_2 = var_0.b.x;
    let var_3 = reverseBits(0i);
    global2 = array<u32, 7>();
    let var_4 = Struct_1(_wgslsmith_mod_i32(select(-1i >> (0u % 32u), ~(~global1.b.a), min(1i, global4.a) != 0i), ~countOneBits(_wgslsmith_add_i32(u_input.d.x, global4.a))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(global4.b, vec3<f32>(1000f, var_0.b.x, -373f), vec3<bool>(true, true, true))), global1.a.b))))), firstTrailingBit(~vec3<u32>(global2[_wgslsmith_index_u32(~33627u, 7u)], ~1u, 0u)), global4.b.x);
    global1 = func_4(u_input.d >> (max(vec3<u32>(var_0.c.x, ~5908u, _wgslsmith_clamp_u32(0u, global2[_wgslsmith_index_u32(global1.a.c.x, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), u_input.a) % vec3<u32>(32u)), vec2<bool>(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), func_1(vec2<bool>(false, true), 49329u, Struct_3(Struct_1(24432i, vec3<f32>(-461f, -300f, -1194f), global4.c, 1000f), Struct_1(global4.a, vec3<f32>(1163f, -1279f, -517f), vec3<u32>(37531u, 0u, 0u), global4.d)), var_4))), select(u_input.b.x == -var_3, true, !all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1057f, 144f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2115f - global3.x), 379f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1074f, 1190f, 1080f)) * vec3<f32>(var_0.b.x, global4.d, -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.b + var_4.b)))), ~global4.c.x);
}

