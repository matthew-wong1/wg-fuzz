struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(1285u, vec4<bool>(false, false, false, true), false, -652f), Struct_1(31148u, vec4<bool>(true, true, false, true), false, -199f), Struct_1(4294967295u, vec4<bool>(true, false, true, true), true, -487f), Struct_1(107827u, vec4<bool>(true, false, false, true), false, 1332f), Struct_1(93024u, vec4<bool>(true, true, false, false), true, -2033f), Struct_1(1u, vec4<bool>(true, true, true, true), false, 175f), Struct_1(0u, vec4<bool>(true, true, true, true), true, 1000f), Struct_1(19042u, vec4<bool>(true, false, true, true), false, 639f), Struct_1(37943u, vec4<bool>(false, false, false, false), true, 1000f), Struct_1(1u, vec4<bool>(false, true, false, true), true, -1000f), Struct_1(43889u, vec4<bool>(false, false, false, true), true, 372f));

var<private> global1: bool;

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, false, false, true, true, true, false, false, true, true, false, false, true, true, true, true, false, false, true, true, false, true, true, false, false, false, true, true, true, true, true);

var<private> global3: i32;

var<private> global4: array<vec4<f32>, 28>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global4 = array<vec4<f32>, 28>();
    let var_0 = arg_3;
    global4 = array<vec4<f32>, 28>();
    var var_1 = global4[_wgslsmith_index_u32(arg_2.a, 28u)];
    let var_2 = arg_3;
    return countOneBits(arg_3.a) ^ ~(~u_input.b);
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = countOneBits(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b, 86246u), vec2<u32>(u_input.b, arg_0), global2[_wgslsmith_index_u32(4294967295u, 32u)]), countOneBits(vec2<u32>(4294967295u, arg_0)) | max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 4294967295u)))) | 1u;
    global1 = true;
    global1 = false;
    var var_1 = vec4<u32>(65045u, 52018u, ~58132u << (u_input.b % 32u), arg_0);
    var_0 = _wgslsmith_div_u32(var_1.x, u_input.b) >> ((select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), ~vec2<u32>(1u, 0u)), arg_0, true) << (_wgslsmith_mult_u32(func_3(Struct_1(u_input.b, vec4<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 32u)], false, global2[_wgslsmith_index_u32(0u, 32u)]), global2[_wgslsmith_index_u32(arg_0, 32u)], -973f), vec3<f32>(1000f, 577f, 884f), global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)]), ~(~13193u)) % 32u)) % 32u);
    return any(!select(select(vec3<bool>(true, true, true), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(78418u, 32u)], global2[_wgslsmith_index_u32(arg_0, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(arg_0, 32u)], true)), vec3<bool>(false, true, !global2[_wgslsmith_index_u32(arg_0, 32u)]), !select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], true, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1876f, global2[_wgslsmith_index_u32(countOneBits(u_input.b), 32u)])), _wgslsmith_f_op_f32(floor(1195f)), _wgslsmith_f_op_f32(f32(-1f) * -891f), 1172f)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, u_input.b) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), ~vec2<u32>(~0u, 21549u)), !vec4<bool>(countOneBits(u_input.c.x) >= u_input.c.x, select(global2[_wgslsmith_index_u32(u_input.b, 32u)] | false, func_2(u_input.b), false && global2[_wgslsmith_index_u32(u_input.b, 32u)]), false | (-1299f >= var_0.x), any(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 32u)], false))), any(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], false)), vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -965f)))));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(5689u), u_input.b), 11u)];
    global1 = true;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -956f) - -1035f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) - var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -203f), false))), -1000f, _wgslsmith_f_op_f32(step(-810f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-676f, _wgslsmith_f_op_f32(sign(-1000f))) + _wgslsmith_f_op_f32(-var_1.d)))));
    return global0[_wgslsmith_index_u32(~(~46659u), 11u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = ~vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, ~u_input.a.x, ~u_input.a.x, countOneBits(-10162i)), vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, 9813i)));
    global3 = -2147483647i;
    global2 = array<bool, 32>();
    var var_1 = -_wgslsmith_div_vec2_i32(u_input.c, u_input.c);
    var var_2 = Struct_1(select(_wgslsmith_div_u32(arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(17696u, arg_0.a, 4294967295u, 0u) >> (vec4<u32>(89479u, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(arg_0.a, 42320u, arg_1.a, 1u))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.a, arg_0.a, 66732u) | vec3<u32>(arg_1.a, arg_1.a, u_input.b), vec3<u32>(97076u, 0u, 4294967295u), true), ~(~vec3<u32>(arg_1.a, arg_1.a, 50796u))), true), !select(vec4<bool>(arg_0.b.x | true, true, true, !arg_1.c), select(!vec4<bool>(arg_2.c, arg_0.c, true, arg_1.b.x), arg_0.b, !arg_1.c), select(arg_2.b, select(vec4<bool>(false, arg_1.c, false, arg_2.b.x), arg_2.b, arg_2.c), !arg_2.b)), -select(-1i << (u_input.b % 32u), 1i ^ var_0.x, false) != u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1240f + 593f) * 2134f))));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(156f, arg_2.d) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d * 1041f)))), _wgslsmith_f_op_f32(arg_2.d + 455f), _wgslsmith_f_op_f32(max(136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1226f)) - _wgslsmith_f_op_f32(-arg_0.d)))), arg_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 32>();
    let var_0 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xy, u_input.c), abs(vec2<i32>(0i, 68802i))) | ~(max(vec2<i32>(-51316i, u_input.a.x), reverseBits(vec2<i32>(-23323i, -2147483647i))) >> ((select(vec2<u32>(u_input.b, 91325u), vec2<u32>(u_input.b, u_input.b), global2[_wgslsmith_index_u32(4294967295u, 32u)]) >> (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = false;
    global3 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-623f + 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(507f))), _wgslsmith_f_op_f32(round(1000f)))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(413f, 230f) + _wgslsmith_f_op_f32(abs(780f))))) - _wgslsmith_f_op_vec4_f32(func_4(Struct_1(0u, !select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 32u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 32u)], true, true), vec4<bool>(var_1, false, var_1, global2[_wgslsmith_index_u32(6774u, 32u)])), _wgslsmith_f_op_f32(trunc(1183f)) > 672f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(296f, -130f))), Struct_1(45293u, vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, false)), global2[_wgslsmith_index_u32(33677u, 32u)], var_1, true), true, _wgslsmith_f_op_f32(f32(-1f) * -1296f)), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(-734f, ~u_input.b, countOneBits(-1i), ~1u);
}

