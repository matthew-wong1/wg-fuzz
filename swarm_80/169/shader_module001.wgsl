struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<u32, 25>;

var<private> global3: vec4<f32> = vec4<f32>(1312f, -1198f, 812f, -2007f);

var<private> global4: u32 = 1u;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = ~u_input.a.x;
    var var_1 = -vec3<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, -26858i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)) ^ -u_input.b), max(_wgslsmith_mod_i32(-1i, u_input.b ^ u_input.b), reverseBits(u_input.b)), 0i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-310f, -137f));
    global0 = global3.x;
    let var_2 = 12895u;
    return 804f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global2 = array<u32, 25>();
    global1 = array<Struct_1, 3>();
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f * 1000f))))), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 36256u), vec4<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], global2[_wgslsmith_index_u32(1u, 25u)])) << (reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(31100u, 25u)], u_input.a.x, global2[_wgslsmith_index_u32(35911u, 25u)], u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = Struct_1(global3.x, firstTrailingBit(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), var_0.b)) ^ vec4<u32>(func_3(Struct_1(1044f, var_0.b), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 3u)]), _wgslsmith_dot_vec3_u32(var_0.b.wxy, var_0.b.wwy), countOneBits(global2[_wgslsmith_index_u32(var_0.b.x, 25u)]), _wgslsmith_mult_u32(32790u, 1u))));
    let var_2 = var_1.b.x;
    let var_3 = !(!(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~0u, 25u)], ~u_input.a.x) > 27470u));
    let var_4 = Struct_1(global3.x, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u | var_1.b.x, ~10296u | _wgslsmith_dot_vec3_u32(vec3<u32>(32862u, u_input.a.x, global2[_wgslsmith_index_u32(37780u, 25u)]), vec3<u32>(32777u, global2[_wgslsmith_index_u32(var_1.b.x, 25u)], 57905u)), var_0.b.x), ~var_1.b, ~firstTrailingBit(vec4<u32>(39384u, global2[_wgslsmith_index_u32(4294967295u, 25u)], var_1.b.x, var_1.b.x))));
    return global2[_wgslsmith_index_u32(34978u ^ func_3(var_4, global1[_wgslsmith_index_u32(abs(var_0.b.x), 3u)]), 25u)];
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1112f;
    var var_1 = arg_3;
    let var_2 = 52443u;
    global4 = u_input.a.x;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-global3.x), firstTrailingBit(firstLeadingBit(vec4<u32>(~global2[_wgslsmith_index_u32(var_2, 25u)], arg_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, arg_1.x), 25u)], 25u)], ~arg_1.x))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(firstLeadingBit(func_1()), vec3<u32>(~(global2[_wgslsmith_index_u32(4294967295u, 25u)] & global2[_wgslsmith_index_u32(0u, 25u)]) >> (global2[_wgslsmith_index_u32(1020u, 25u)] % 32u), 90482u, abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x ^ 0u, 25u)], 25u)])), 8043u, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(global3.x)), -1000f, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_div_f32(560f, 525f)))), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(9196u, 25u)], 23358u, 15393u, 0u) | ~vec4<u32>(global2[_wgslsmith_index_u32(37737u, 25u)], global2[_wgslsmith_index_u32(0u, 25u)], 48933u, 2213u))));
    var var_1 = func_4(1u, var_0.b.zxx, u_input.a.x, global1[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(~var_0.b.x, 25u)]) | var_0.b.x, 3u)]);
    var var_2 = _wgslsmith_dot_vec2_u32(max(~var_0.b.wz, ~var_0.b.yw), u_input.a);
    global2 = array<u32, 25>();
    global2 = array<u32, 25>();
    global2 = array<u32, 25>();
    var_1 = global1[_wgslsmith_index_u32(27383u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(var_1.b.yzz, vec3<u32>(23279u, abs(firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 25u)], 25u)])), 4294967295u), func_4(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], _wgslsmith_add_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.b.x, 25u)], 25u)], 0u, u_input.a.x), vec3<u32>(global2[_wgslsmith_index_u32(0u, 25u)], var_1.b.x, u_input.a.x)), ~5887u, Struct_1(var_0.a, vec4<u32>(var_0.b.x, 0u, var_1.b.x, u_input.a.x))).b.zyz >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.b.x, var_1.b.x), var_1.b.yxx) % vec3<u32>(32u))), u_input.b);
}

