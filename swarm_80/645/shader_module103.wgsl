struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(0u, 4294967295u, 0u)), Struct_2(vec3<u32>(4294967295u, 55786u, 4294967295u)), Struct_2(vec3<u32>(1u, 4294967295u, 0u)), Struct_2(vec3<u32>(25752u, 49164u, 4048u)), Struct_2(vec3<u32>(134737u, 4294967295u, 4294967295u)), Struct_2(vec3<u32>(19388u, 4294967295u, 1u)), Struct_2(vec3<u32>(0u, 50080u, 30076u)), Struct_2(vec3<u32>(1u, 20393u, 4370u)), Struct_2(vec3<u32>(1u, 27968u, 89670u)), Struct_2(vec3<u32>(15033u, 68552u, 41662u)), Struct_2(vec3<u32>(1u, 14781u, 1u)), Struct_2(vec3<u32>(15646u, 4294967295u, 7482u)), Struct_2(vec3<u32>(4294967295u, 68826u, 20177u)), Struct_2(vec3<u32>(1u, 4294967295u, 0u)), Struct_2(vec3<u32>(3689u, 83744u, 0u)), Struct_2(vec3<u32>(59185u, 8673u, 1u)), Struct_2(vec3<u32>(63603u, 14869u, 4294967295u)), Struct_2(vec3<u32>(27394u, 0u, 0u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 59718u)), Struct_2(vec3<u32>(14571u, 48387u, 4294967295u)));

var<private> global1: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(4294967295u, 21597u), vec2<u32>(0u, 3712u), vec2<u32>(12433u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1960u, 4294967295u), vec2<u32>(29470u, 13032u), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(18497u, 0u), vec2<u32>(19439u, 19969u), vec2<u32>(17149u, 120863u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 44359u), vec2<u32>(1u, 23660u), vec2<u32>(11272u, 41609u), vec2<u32>(51672u, 0u), vec2<u32>(66010u, 0u), vec2<u32>(2586u, 4294967295u), vec2<u32>(35813u, 2495u), vec2<u32>(24894u, 1u));

var<private> global2: u32;

var<private> global3: f32 = -928f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(-arg_0.xz))) * _wgslsmith_f_op_vec2_f32(arg_0.wz - vec2<f32>(_wgslsmith_f_op_f32(abs(-1087f)), _wgslsmith_f_op_f32(1099f + 430f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.wz)));
    var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.zw);
    var var_1 = arg_2;
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    return arg_1.wxx;
}

fn func_2() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d, 44360u), 20u)];
    let var_1 = var_0.a.x;
    let var_2 = !select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), func_3(vec4<f32>(1780f, -1654f, 1000f, -1493f), vec4<bool>(true, true, false, false), -2610f), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(true, true, true, false)), true, u_input.a.x < -2147483647i));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-457f, 2498f, 437f, 677f), vec4<f32>(576f, 856f, -302f, -826f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, -1427f, 378f, 874f)) * vec4<f32>(1483f, 1000f, -1734f, -127f))) * vec4<f32>(-1843f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-402f)), _wgslsmith_f_op_f32(abs(-1652f))), -217f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1172f, 1158f), _wgslsmith_f_op_f32(round(304f)), true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1285f, -2613f, -1141f, -1000f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1178f, -1201f, 895f, 1232f), vec4<f32>(-1448f, -251f, 198f, 595f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -172f, -132f, -384f), vec4<f32>(-1000f, -484f, 1587f, -538f), vec4<bool>(var_3, false, var_3, var_3))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1771f, -1239f, 1000f, -938f) * vec4<f32>(-999f, -300f, 963f, 1000f)))))));
    return !vec4<bool>(any(!(!vec4<bool>(true, false, true, var_3))), true && all(func_3(var_4, vec4<bool>(var_3, true, var_3, false), var_4.x)), false, -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) != max(_wgslsmith_mod_i32(-26885i, u_input.c), u_input.b));
}

fn func_1() -> Struct_2 {
    let var_0 = !(!func_2());
    let var_1 = vec4<bool>(!var_0.x, false | var_0.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.c, u_input.b, u_input.b), u_input.a) > u_input.c, true);
    global2 = _wgslsmith_add_u32(~u_input.d, _wgslsmith_mult_u32(firstLeadingBit(7740u), 0u));
    global2 = u_input.d;
    global1 = array<vec2<u32>, 21>();
    return global0[_wgslsmith_index_u32(19659u >> (~_wgslsmith_mod_u32(10785u, ~min(u_input.d, 1u)) % 32u), 20u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> StorageBuffer {
    let var_0 = countOneBits((global1[_wgslsmith_index_u32(73808u, 21u)] ^ ~abs(arg_1.zy)) >> (vec2<u32>(36514u, _wgslsmith_add_u32(10907u, ~35100u)) % vec2<u32>(32u)));
    global2 = 3123u;
    let var_1 = u_input.a;
    let var_2 = arg_0;
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1021f)));
    return StorageBuffer(~vec3<u32>(var_2.a.x, select(u_input.d ^ var_2.a.x, ~var_0.x, false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(18757u, arg_0.a.x, var_2.a.x, var_2.a.x), vec4<u32>(var_0.x, 0u, arg_1.x, 9516u))), abs(i32(-1i) * -var_1.x), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), countOneBits(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(1u, u_input.d, u_input.d)), ~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, 15360u), vec4<u32>(u_input.d, 31176u, u_input.d, u_input.d)), vec4<u32>(u_input.d, u_input.d, u_input.d, 67590u)), _wgslsmith_mult_u32(1u, 1u))), (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-579f)), 1643f)) < _wgslsmith_f_op_f32(max(-166f, 1136f))) & any(vec2<bool>(18091u != u_input.d, 1i >= u_input.c)));
}

