struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    global0 = array<u32, 22>();
    let var_0 = reverseBits(abs(reverseBits(arg_0.yyy)) | arg_0.xyz);
    var var_1 = (vec4<u32>(select(0u >> (arg_2.x % 32u), ~5580u, all(vec2<bool>(true, true))), 4294967295u, _wgslsmith_mult_u32(~42782u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(35613u, 22u)], arg_2.x, arg_2.x)), ~abs(16331u)) | ~(~(vec4<u32>(arg_2.x, arg_2.x, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(arg_2.x, 22u)]) | vec4<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(39013u, 22u)], 21343u)))) & ~(vec4<u32>(arg_2.x, abs(22756u), arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 54118u, arg_2.x, 76364u), vec4<u32>(64222u, 27424u, arg_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7644u, 22u)], 22u)]))) ^ vec4<u32>(0u, 4294967295u, arg_2.x, arg_2.x & 0u));
    global0 = array<u32, 22>();
    var_1 = vec4<u32>(~(~20090u), ~4294967295u, ~arg_2.x, select(~29052u, 95435u, true));
    return -vec3<i32>(-2147483647i, abs(u_input.c), 33281i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec3_i32(func_3(var_0.a, arg_0, vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(34513u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), 22u)], _wgslsmith_clamp_u32(93491u, global0[_wgslsmith_index_u32(4294967295u, 22u)], 21673u))), firstLeadingBit(arg_0.a.yxz)), -2226f, countOneBits(arg_0.a));
    var var_1 = Struct_1(vec4<i32>(var_0.d.x << (~abs(0u) % 32u), -2147483647i, -_wgslsmith_clamp_i32(arg_0.d.x << (global0[_wgslsmith_index_u32(4294967295u, 22u)] % 32u), arg_0.b, u_input.d), (i32(-1i) * -4889i) >> (abs(~global0[_wgslsmith_index_u32(0u, 22u)]) % 32u)), -67349i, _wgslsmith_f_op_f32(abs(arg_0.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-31174i, arg_0.a.x, u_input.b, 0i) | var_0.d, vec4<i32>(arg_0.d.x, var_0.d.x, arg_0.d.x, u_input.c)) ^ countOneBits(~var_0.d | firstLeadingBit(arg_0.a)));
    global0 = array<u32, 22>();
    var_0 = Struct_1(var_0.d, abs(54315i), var_1.c, var_1.d);
    return Struct_1(arg_0.a, arg_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1326f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c)))))), vec4<i32>(1i, 2147483647i, -55268i, _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(var_1.d.x, ~var_1.d.x))));
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(86208u, global0[_wgslsmith_index_u32(22891u, 22u)]), 22u)], 22u)];
    var var_1 = 582f;
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(max(1148f, _wgslsmith_f_op_f32(ceil(-764f))));
    var var_4 = func_2(var_2);
    return all(vec2<bool>(false, arg_0.c >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1314f, -1651f)), var_4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_0 = !select(vec2<bool>((u_input.a.x >> (global0[_wgslsmith_index_u32(4294967295u, 22u)] % 32u)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.d), vec2<i32>(1i, -34723i)), !func_1(Struct_1(vec4<i32>(-1i, u_input.b, -3438i, 0i), u_input.c, -539f, vec4<i32>(14032i, 2147483647i, u_input.d, 2147483647i)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), !(true || all(vec2<bool>(true, false))));
    var var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(vec4<i32>(u_input.c, -13086i, -16919i, u_input.a.x), 2147483647i, -586f, vec4<i32>(-39i, u_input.a.x, 0i, u_input.c)))))));
    let var_2 = func_2(func_2(func_2(func_2(func_2(Struct_1(var_1.a, -1i, 620f, vec4<i32>(u_input.b, 5753i, -1i, var_1.a.x)))))));
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(23482u, 22u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2237u, 22u)], 22u)])), global0[_wgslsmith_index_u32(0u, 22u)]) | ~(vec2<u32>(1u, 0u) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24136u, 22u)], 22u)], 20100u))), -2531f);
}

