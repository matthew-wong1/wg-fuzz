struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<f32>(-1000f, 594f), vec3<bool>(true, false, false), vec2<f32>(1962f, -1456f), vec4<i32>(13577i, 2147483647i, -21949i, -1i)), Struct_1(vec2<f32>(-573f, -1129f), vec3<bool>(true, false, true), vec2<f32>(1407f, -897f), vec4<i32>(18284i, 2958i, 2147483647i, -1i)), Struct_1(vec2<f32>(-1574f, 2261f), vec3<bool>(true, true, false), vec2<f32>(-1311f, -951f), vec4<i32>(-14642i, -1i, 1i, 0i)), Struct_1(vec2<f32>(633f, 610f), vec3<bool>(true, false, true), vec2<f32>(-1389f, -962f), vec4<i32>(-33527i, 1145i, 0i, -34070i)), Struct_1(vec2<f32>(1020f, 429f), vec3<bool>(false, true, false), vec2<f32>(1212f, -2649f), vec4<i32>(0i, 71819i, i32(-2147483648), 58074i)), Struct_1(vec2<f32>(-1389f, -647f), vec3<bool>(false, false, false), vec2<f32>(-808f, -2448f), vec4<i32>(-4876i, 2147483647i, 2147483647i, 40107i)));

var<private> global1: array<u32, 4> = array<u32, 4>(1u, 25476u, 0u, 12786u);

var<private> global2: array<u32, 20> = array<u32, 20>(55231u, 89414u, 4294967295u, 83132u, 56118u, 30180u, 36753u, 42084u, 4294967295u, 1u, 4294967295u, 57137u, 0u, 37612u, 4294967295u, 1018u, 4294967295u, 0u, 18527u, 1u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> bool {
    global1 = array<u32, 4>();
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_1, 6>();
    var var_0 = 0i;
    var var_1 = _wgslsmith_mod_vec3_i32(arg_1.d.xxy, vec3<i32>(0i, abs(arg_1.d.x), -1i));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(max(vec3<u32>(global2[_wgslsmith_index_u32(arg_2.x, 20u)], u_input.a.x, 0u), arg_2), vec3<u32>(1u, u_input.a.x, 4294967295u) ^ arg_2) ^ abs(min(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(54730u, 4u)], 0u), _wgslsmith_add_vec3_u32(u_input.a, arg_2))), ~vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u, 101018u) ^ firstTrailingBit(4294967295u), 13534u)), 6u)];
    var_1 = select(-vec3<i32>(arg_1.d.x & 1i, -1i, arg_0), vec3<i32>(var_1.x, arg_1.d.x, min(var_2.d.x, var_1.x)), select(var_2.b, arg_1.b, !var_2.b));
    return arg_1;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    let var_0 = vec4<bool>(select(arg_0.b.x, false, true), true, select(arg_0.b.x, (any(vec4<bool>(arg_0.b.x, arg_0.b.x, false, true)) & false) || arg_0.b.x, func_2(min(_wgslsmith_dot_vec2_i32(arg_0.d.yw, arg_0.d.wz), 0i), func_2(-arg_0.d.x, Struct_1(vec2<f32>(arg_0.a.x, arg_0.c.x), arg_0.b, vec2<f32>(arg_0.c.x, arg_0.a.x), vec4<i32>(-47178i, 22872i, arg_0.d.x, 26785i)), _wgslsmith_mod_vec3_u32(arg_1.zwy, u_input.a)), ~arg_1.zyw).b.x), (any(!vec3<bool>(arg_0.b.x, false, arg_0.b.x)) & arg_0.b.x) || true);
    let var_1 = vec4<i32>(-73868i, arg_0.d.x, arg_0.d.x, -1i);
    global1 = array<u32, 4>();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1269f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(abs(arg_0.c.x))))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~firstLeadingBit(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)] ^ firstLeadingBit(global1[_wgslsmith_index_u32(29760u, 4u)])), global2[_wgslsmith_index_u32(~4294967295u, 20u)], 0u), 6u)];
    return !(1u == ~arg_1.x);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    let var_0 = arg_3;
    global0 = array<Struct_1, 6>();
    var var_1 = arg_2.x;
    global1 = array<u32, 4>();
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    let var_0 = 0u;
    global1 = array<u32, 4>();
    var var_1 = reverseBits(vec3<i32>(1i, 1i, 1i));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(-20478i), func_4(25904u, vec4<i32>(var_1.x, _wgslsmith_div_i32(var_1.x, var_1.x), firstLeadingBit(var_1.x), ~(-53017i)) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-71447i, 50519i, -15900i), vec3<i32>(-3008i, -21378i, 0i)), var_1.x, -51059i, -24217i), vec4<bool>(false, func_3(func_2(var_1.x, Struct_1(vec2<f32>(1515f, 1000f), vec3<bool>(true, false, var_2), vec2<f32>(-857f, -220f), vec4<i32>(0i, 1i, -1i, var_1.x)), vec3<u32>(1u, u_input.a.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(111675u, 4294967295u, 0u, var_0), vec4<u32>(1u, u_input.a.x, var_0, u_input.a.x), vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))), !all(vec2<bool>(false, var_2)), var_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(856f, 321f))), -1370f)), ~(~abs(~vec3<u32>(global1[_wgslsmith_index_u32(51143u, 4u)], 17636u, 0u))));
}

