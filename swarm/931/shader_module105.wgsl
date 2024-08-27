struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -40925i, i32(-2147483648), 2147483647i);

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 0u, 1102u, 93227u, 25266u, 1u, 20149u, 4294967295u, 49438u, 1u, 4294967295u, 41451u, 0u, 0u, 26501u);

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)];
    global4 = arg_1.a;
    var var_1 = vec3<f32>(805f, _wgslsmith_f_op_f32(913f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(146f * -560f) - _wgslsmith_f_op_f32(floor(-533f)))))), _wgslsmith_f_op_f32(abs(arg_3)));
    var_0 = Struct_1(~select(_wgslsmith_add_u32(arg_2, u_input.d) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, u_input.a, global1[_wgslsmith_index_u32(1u, 15u)]), vec3<u32>(13353u, 4294967295u, u_input.a)), _wgslsmith_mult_u32(firstLeadingBit(var_0.a), ~78278u), _wgslsmith_f_op_f32(f32(-1f) * -1236f) != var_1.x), (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 12059u), ~vec3<u32>(var_0.a, u_input.a, 9346u)) <= 56748u) & var_0.b);
    let var_2 = global2[_wgslsmith_index_u32(arg_0, 3u)];
    return _wgslsmith_f_op_f32(arg_3 + 1000f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_1(61820u, all(select(vec4<bool>(global3.x, true, global3.x & global3.x, all(vec2<bool>(global3.x, global3.x))), vec4<bool>(true, global3.x, true, false), select(select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, true, global3.x, true), global3.x), vec4<bool>(global3.x, global3.x, true, true), false))));
    let var_1 = firstTrailingBit(~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(var_0.a, global1[_wgslsmith_index_u32(0u, 15u)]) & vec2<u32>(u_input.a, var_0.a)), (vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a, 15u)]) ^ vec2<u32>(1u, 113957u)) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<u32>(var_0.a, 0u)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(arg_1.yxy, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * _wgslsmith_f_op_f32(func_3(30809u, Struct_1(global1[_wgslsmith_index_u32(10688u, 15u)], false), u_input.d, arg_1.x)))) * _wgslsmith_f_op_vec3_f32(floor(arg_1.xxx))), false));
    global2 = array<Struct_1, 3>();
    let var_3 = global2[_wgslsmith_index_u32(1u, 3u)];
    return 0u >> (~_wgslsmith_dot_vec4_u32(countOneBits(max(vec4<u32>(1u, 21024u, var_0.a, u_input.a), vec4<u32>(0u, var_3.a, var_3.a, 11664u))), vec4<u32>(var_1.x, var_3.a, global1[_wgslsmith_index_u32(17888u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]) ^ select(vec4<u32>(149905u, 13489u, 23265u, 4294967295u), vec4<u32>(var_0.a, 4294967295u, 69980u, global1[_wgslsmith_index_u32(u_input.d, 15u)]), global3.x)) % 32u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = ~(~(~(vec2<u32>(arg_0.a, 0u) >> (vec2<u32>(0u, global1[_wgslsmith_index_u32(0u, 15u)]) % vec2<u32>(32u))) & firstLeadingBit(vec2<u32>(18802u, 1u))));
    global2 = array<Struct_1, 3>();
    global1 = array<u32, 15>();
    global2 = array<Struct_1, 3>();
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32) -> u32 {
    global2 = array<Struct_1, 3>();
    global2 = array<Struct_1, 3>();
    global0 = u_input.c;
    var var_0 = ~max(-48915i, 0i);
    var var_1 = func_4(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_2, 22041u), vec4<u32>(global1[_wgslsmith_index_u32(32817u, 15u)], 43381u, 1u, 4294967295u) ^ vec4<u32>(u_input.a, 4294967295u, 11259u, arg_2)), vec4<u32>(37084u, func_2(global0.yz, vec4<f32>(170f, -596f, 266f, 1000f), vec4<i32>(global0.x, -31052i, u_input.b.x, arg_1)), u_input.a, global1[_wgslsmith_index_u32(34215u, 15u)])), 15u)], 3u)]);
    return 1293u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((u_input.a | ~(u_input.d & 736u)) ^ 1u, true);
    var var_1 = vec2<f32>(750f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(step(-310f, -512f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(249f)), -246f)), 266f)));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_1(global3.x, global0.x, _wgslsmith_add_u32(~var_0.a, _wgslsmith_mult_u32(20709u, u_input.a))), _wgslsmith_div_u32(53254u >> (~global1[_wgslsmith_index_u32(0u, 15u)] % 32u), global1[_wgslsmith_index_u32(~var_0.a, 15u)])), 15u)], var_0.b);
    let var_3 = false;
    var var_4 = vec2<i32>(-u_input.c.x >> (~1u % 32u), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(643f, var_1.x, 790f, -367f) - vec4<f32>(1489f, var_1.x, var_1.x, 253f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-993f, -113f, 801f, var_1.x) * vec4<f32>(-1517f, 2495f, -1039f, 204f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1586f, 837f, -355f) + vec4<f32>(-379f, -789f, 1486f, 994f))))));
}

