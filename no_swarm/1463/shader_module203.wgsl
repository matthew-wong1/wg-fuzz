struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true));

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<vec3<bool>, 16>;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1095f - 1680f))))));
    var_0 = _wgslsmith_f_op_f32(1452f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-652f))))) - 1100f));
    var var_1 = Struct_2(u_input.b.x, Struct_1(true), Struct_1(true));
    var var_2 = min(~firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_1.a, 7564u, 198u), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x))) | vec4<u32>(u_input.b.x, var_1.a, ~_wgslsmith_add_u32(var_1.a, 4294967295u), u_input.b.x), vec4<u32>(1u ^ select(11507u, var_1.a, true), 10906u, u_input.b.x, _wgslsmith_mult_u32(76203u, ~var_1.a)) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b.x, var_1.a, u_input.b.x, u_input.b.x)), ~abs(vec4<u32>(4294967295u, var_1.a, 863u, 0u))) % vec4<u32>(32u)));
    var var_3 = Struct_1(global4.a);
    return -u_input.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = reverseBits(func_3());
    let var_1 = Struct_2(abs(66113u), global1[_wgslsmith_index_u32(5634u, 4u)], Struct_1(global4.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(520f)), 1657f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))) + vec3<f32>(_wgslsmith_f_op_f32(830f + 126f), _wgslsmith_f_op_f32(step(-1311f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(800f * -1522f), _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 1104f) - -460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1899f * -880f)), global4.a))));
    global1 = array<Struct_1, 4>();
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, var_2.x), vec3<f32>(arg_1, arg_1, 938f), vec3<bool>(var_1.c.a, global4.a, global4.a)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(454f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-309f, var_2.x, arg_1), vec3<f32>(arg_1, var_2.x, arg_1))) * vec3<f32>(-439f, 884f, var_2.x)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(-255f, _wgslsmith_f_op_f32(var_2.x * arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x))))));
    return Struct_2(1u, global1[_wgslsmith_index_u32(var_1.a << (_wgslsmith_add_u32(_wgslsmith_sub_u32(2162u, var_1.a), ~1u) % 32u), 4u)], global1[_wgslsmith_index_u32(1204u, 4u)]);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(u_input.b.x, global2[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(((1u >> (firstTrailingBit(0u) % 32u)) | 1u) & (65291u ^ u_input.b.x), 4u)]);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(849f, -1218f), select(any(vec2<bool>(true, global4.a)), true, global4.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f) - _wgslsmith_f_op_f32(581f + -131f)) - _wgslsmith_f_op_f32(select(-1662f, 252f, var_0.c.a))))));
    global0 = u_input.a;
    var_0 = func_2(~(~vec4<i32>(15328i, -u_input.c, _wgslsmith_div_i32(2147483647i, u_input.c), u_input.c)), -830f, vec4<i32>(u_input.d, 1i, ~u_input.a, -u_input.a), max(u_input.c, max(u_input.d, u_input.a)));
    global1 = array<Struct_1, 4>();
    return Struct_2(var_0.a, Struct_1(all(select(vec4<bool>(false, false, true, false), vec4<bool>(var_0.b.a, true, true, global4.a), global4.a)) & false), global2[_wgslsmith_index_u32(~(~var_0.a), 26u)]);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1290f, 334f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, 1104f, -605f))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-851f)) + -1286f), _wgslsmith_f_op_f32(max(-1134f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(492f + 1115f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1053f, 910f, true)), _wgslsmith_f_op_f32(min(-129f, -790f)))))));
    global2 = array<Struct_1, 26>();
    global2 = array<Struct_1, 26>();
    var var_1 = (arg_3 ^ 80771u) >> (abs(~select(~arg_2.a, abs(10859u), true)) % 32u);
    var var_2 = abs(35019u);
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(firstLeadingBit(reverseBits(vec2<i32>(u_input.d, -2147483647i) >> (vec2<u32>(0u, 98622u) % vec2<u32>(32u)))), 69892u, func_1(), _wgslsmith_add_u32(~_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 90412u)))));
    let var_1 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(32972u, _wgslsmith_mult_u32(u_input.b.x, 7330u))), 16u)];
    var var_2 = func_1();
    let var_3 = var_1.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(450f - -538f)))));
    var var_5 = 13177u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2147483647i), ~abs(firstTrailingBit(var_2.a)) >> (~1u % 32u));
}

