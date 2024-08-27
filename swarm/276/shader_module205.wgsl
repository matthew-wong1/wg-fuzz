struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec4<bool>(true, true, true, true));

var<private> global1: array<u32, 17> = array<u32, 17>(36336u, 7743u, 4294967295u, 46044u, 0u, 48249u, 4294967295u, 22588u, 22781u, 60282u, 1u, 21445u, 4294967295u, 32331u, 0u, 20357u, 6574u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-831f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f - -615f) * _wgslsmith_f_op_f32(f32(-1f) * -579f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1863f, _wgslsmith_div_f32(1294f, 1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(690f * -665f), -694f), _wgslsmith_f_op_f32(f32(-1f) * -174f), all(select(global0.b, global0.b, global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) * _wgslsmith_f_op_f32(f32(-1f) * -373f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1522f, _wgslsmith_div_f32(-752f, -391f)), -1000f));
    global0 = Struct_1((1i << ((_wgslsmith_mod_u32(u_input.c, global1[_wgslsmith_index_u32(44715u, 17u)]) << (_wgslsmith_add_u32(1u, global1[_wgslsmith_index_u32(7775u, 17u)]) % 32u)) % 32u)) != _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(1i, 1i)), vec4<bool>(global0.b.x | (true | all(global0.b.yy)), !all(vec2<bool>(global0.a, false)), true, !any(global0.b.xyy)));
    global0 = Struct_1(any(global0.b), !vec4<bool>(_wgslsmith_f_op_f32(abs(706f)) <= var_0.x, true, global0.b.x, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1409f, var_0.x) + vec3<f32>(1095f, -447f, 645f))))));
    let var_2 = true;
    return !global0.b.zww;
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global1 = array<u32, 17>();
    global0 = Struct_1(global0.a, select(vec4<bool>(!global0.a, true, true, any(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x))), !global0.b, any(func_3())));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(691f, 810f, global0.a))))), -855f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-727f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -188f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1279f, -972f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(822f, 1000f, 829f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1187f, -443f, 140f) - vec3<f32>(-1332f, 1000f, -1618f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2290f, -1901f, 1202f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2248f, 1400f, -580f))), select(vec3<bool>(global0.a, global0.a, true), global0.b.wyz, true))))))));
    global0 = Struct_1(all(vec3<bool>(all(select(vec4<bool>(true, global0.b.x, false, global0.a), vec4<bool>(false, global0.b.x, true, false), vec4<bool>(true, true, global0.b.x, true))), false, true)), vec4<bool>(all(global0.b), !global0.a, any(!func_3()), global0.b.x));
    let var_1 = Struct_1(true, !select(select(vec4<bool>(global0.b.x, true, false, true), vec4<bool>(global0.a, global0.b.x, true, global0.b.x), !vec4<bool>(global0.a, global0.b.x, false, global0.b.x)), !(!vec4<bool>(global0.a, false, global0.b.x, false)), vec4<bool>(all(global0.b.wx), false, true, global0.a == false)));
    return 1i;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = any(!vec3<bool>(true || all(global0.b), !(global1[_wgslsmith_index_u32(51944u, 17u)] > u_input.a), true));
    let var_1 = _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(1i, ~2147483647i), ~func_2(vec3<u32>(u_input.c, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 17u)], 17u)], 17u)], 17u)], 17u)])))), ~vec2<i32>(-2147483647i, 2147483647i));
    var var_2 = -297f;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!(all(vec2<bool>(global0.b.x, true)) | global0.a) == global0.a, vec4<bool>(any(!global0.b.xz), !global0.b.x, any(!global0.b), !(global0.a | true)));
    var var_0 = vec3<bool>((~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -40891i, -8813i, 53153i), vec4<i32>(-2147483647i, 2147483647i, -13637i, -42876i)) ^ 1i) >= ((~13758i ^ func_1(16608i)) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b, u_input.c), 17u)], 17u)] % 32u)), false, global0.b.x);
    let var_1 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36567u, 17u)], 17u)];
    var var_2 = ~abs(firstLeadingBit(~vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)])) ^ abs(vec3<u32>(0u, u_input.c, global1[_wgslsmith_index_u32(1u, 17u)])));
    var var_3 = Struct_1(all(func_3().yz), !(!global0.b));
    var var_4 = Struct_1(false, vec4<bool>(global0.a, false, !global0.b.x, true));
    var_0 = vec3<bool>(var_4.b.x, global0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2.zy, _wgslsmith_mod_vec2_u32(select(vec2<u32>(var_2.x, global1[_wgslsmith_index_u32(var_2.x, 17u)]), vec2<u32>(u_input.a, var_2.x) >> (var_2.xz % vec2<u32>(32u)), !global0.b.xz), max(var_2.xy, vec2<u32>(1u, 1u)))), global1[_wgslsmith_index_u32(1u, 17u)], vec2<f32>(1f, _wgslsmith_f_op_f32(min(1285f, _wgslsmith_f_op_f32(sign(1f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1795f, -169f, -998f) * vec3<f32>(-283f, -978f, -703f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(871f, -143f, 1756f) - vec3<f32>(-1399f, -377f, -1009f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-858f, 1109f, -501f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(242f + _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(250f, -362f, global0.a))))));
}

