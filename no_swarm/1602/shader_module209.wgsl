struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, true, true, false, false, true, false, false, true, true, false, true, false, true, true, false, false, true, true, false, true, true, true);

var<private> global1: array<vec3<u32>, 7>;

var<private> global2: array<f32, 27> = array<f32, 27>(-744f, 550f, -659f, 378f, -272f, -1315f, -175f, 279f, 1012f, 733f, 961f, 775f, -534f, 1000f, 251f, 844f, -424f, 949f, -520f, -1182f, -882f, -414f, -1000f, -501f, 1464f, -1044f, 3089f);

var<private> global3: array<f32, 31> = array<f32, 31>(-583f, -312f, -229f, 1177f, 972f, -194f, -613f, 503f, 1803f, 899f, 506f, 1019f, 3391f, -2944f, -273f, -2050f, -294f, -812f, -515f, 1000f, 878f, -1515f, -121f, -968f, 778f, 190f, -1427f, 1255f, -472f, -1000f, -1000f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = -1481f;
    var var_1 = vec4<bool>(true, true, true, 1u == arg_2.x);
    global2 = array<f32, 27>();
    let var_2 = abs(_wgslsmith_add_vec4_u32(countOneBits(reverseBits(abs(arg_2))), ~arg_0.b));
    let var_3 = Struct_3(Struct_1(u_input.a));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(680f, -1180f, global3[_wgslsmith_index_u32(24338u, 31u)]))))))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(4294967295u, 31u)])) * 136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(93072u, 27u)] + global2[_wgslsmith_index_u32(arg_2.x, 27u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-179f * global2[_wgslsmith_index_u32(arg_2.x, 27u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(63038u, 31u)], -621f, 1467f) + vec3<f32>(global3[_wgslsmith_index_u32(75094u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], 1588f, -1000f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-249f, global3[_wgslsmith_index_u32(var_2.x, 31u)], 275f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-439f, -1009f, 1589f))))))));
}

fn func_2() -> vec3<bool> {
    var var_0 = ~1u;
    let var_1 = u_input.a;
    global1 = array<vec3<u32>, 7>();
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(-2147483647i, vec4<u32>(var_1, var_1, u_input.a, 2694u), vec3<bool>(global0[_wgslsmith_index_u32(29810u, 25u)], false, false)), vec3<bool>(global0[_wgslsmith_index_u32(60732u, 25u)], global0[_wgslsmith_index_u32(30272u, 25u)], false), vec4<u32>(4432u, u_input.a, var_1, 61402u), vec3<bool>(false, global0[_wgslsmith_index_u32(var_1, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]))))))))));
    global3 = array<f32, 31>();
    return !(!select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 25u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 25u)], true, global0[_wgslsmith_index_u32(1u, 25u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_1, 25u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(9052u, 25u)]), vec3<bool>(false, true, false)), !global0[_wgslsmith_index_u32(u_input.a, 25u)] | !global0[_wgslsmith_index_u32(4294967295u, 25u)]));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    var var_0 = 19535i;
    global2 = array<f32, 27>();
    let var_1 = vec2<bool>(false, !all(select(select(vec3<bool>(true, true, true), arg_2.c, true), arg_2.c, select(vec3<bool>(arg_2.c.x, arg_3.c.x, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], arg_2.c.x, arg_2.c.x), global0[_wgslsmith_index_u32(arg_3.b.x, 25u)]))));
    var var_2 = select(arg_3.c, vec3<bool>(any(arg_2.c), true, false), select(func_2(), !select(func_2(), func_2(), func_2()), all(!(!arg_2.c.yy))));
    let var_3 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(~arg_3.a, firstTrailingBit(arg_2.a), -6934i), vec3<i32>(arg_3.a, 0i, -2147483647i)), vec4<u32>(4294967295u, _wgslsmith_mod_u32(min(arg_3.b.x, arg_3.b.x) >> (abs(66742u) % 32u), _wgslsmith_div_u32(arg_3.b.x & 4294967295u, ~u_input.a)), ~29415u, arg_1.b.x), vec3<bool>(var_1.x, -306f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1775f, arg_0.x, arg_3.c.x)))), var_2.x));
    return var_2.x & var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~countOneBits(u_input.a)), ~(u_input.a & ~(u_input.a ^ u_input.a)), 86521u);
    global2 = array<f32, 27>();
    let var_1 = select(!select(vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(~1u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)] & global0[_wgslsmith_index_u32(69612u, 25u)]), select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], true, false, global0[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(6153u, 25u)]), true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], true), all(vec3<bool>(true, true, false))), vec4<bool>(global0[_wgslsmith_index_u32(~4294967295u, 25u)], any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], true, true)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)])), global0[_wgslsmith_index_u32(var_0.x, 25u)])), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(75271u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], true), vec4<bool>(false, u_input.a <= var_0.x, !global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(9749u, 20985u), 25u)]), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 25u)], func_1(vec4<f32>(-1046f, 1000f, global2[_wgslsmith_index_u32(var_0.x, 27u)], global3[_wgslsmith_index_u32(u_input.a, 31u)]), Struct_4(4294967295u, vec3<u32>(0u, u_input.a, 0u)), Struct_2(0i, vec4<u32>(u_input.a, 14197u, var_0.x, 4294967295u), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, true)), Struct_2(2147483647i, vec4<u32>(282u, 1299u, 16806u, 0u), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], true))), global0[_wgslsmith_index_u32(var_0.x, 25u)] == false, true)), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 25u)], false, global0[_wgslsmith_index_u32(10867u, 25u)])), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(60939u, 25u)], true, global0[_wgslsmith_index_u32(26665u, 25u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1642u, 25u)], false, false, false)), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 25u)], true, true, true), true), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], false, false, global0[_wgslsmith_index_u32(18331u, 25u)]), !vec4<bool>(global0[_wgslsmith_index_u32(40910u, 25u)], false, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)]), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(15867u, 25u)])), false), vec4<bool>(all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.a, 25u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(37643u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], false), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], false))), select(true, 4294967295u <= var_0.x, func_2().x), true, any(vec3<bool>(false, true, false)))));
    global3 = array<f32, 31>();
    let var_2 = 570f;
    let var_3 = -(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 20853i, 1i, 2147483647i), vec4<i32>(-2147483647i, 28496i, -2147483647i, 2147483647i)))) << (vec4<u32>(var_0.x, ~17967u, _wgslsmith_add_u32(~var_0.x, _wgslsmith_div_u32(var_0.x, ~u_input.a)), 12941u) % vec4<u32>(32u));
    global3 = array<f32, 31>();
    var var_4 = Struct_1(var_0.x);
    let var_5 = global1[_wgslsmith_index_u32(reverseBits(0u), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~1u, 31u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(75052u, 31u)])), 544f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * -347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16646u, 31u)])))), select(~(~(~vec3<u32>(71505u, 0u, 1u))), ~global1[_wgslsmith_index_u32(~(~4294967295u), 7u)], global3[_wgslsmith_index_u32(11128u, 31u)] < -357f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, global3[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_4.a, 27u)], -1000f) - vec2<f32>(var_2, global3[_wgslsmith_index_u32(4294967295u, 31u)])), vec2<bool>(true, var_1.x)))))));
}

