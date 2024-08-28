struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(12204i, 0i, -1i, -1i), vec4<i32>(3163i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-21281i, 1i, 1i, -50284i), vec4<i32>(-70661i, -18443i, 1i, 2147483647i), vec4<i32>(-30967i, 0i, -25453i, 0i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 0i), vec4<i32>(-2511i, 10423i, 0i, -9433i), vec4<i32>(i32(-2147483648), 9866i, -15228i, 2147483647i), vec4<i32>(33501i, 28618i, 12891i, 0i), vec4<i32>(23609i, i32(-2147483648), -1i, i32(-2147483648)));

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.a, arg_0.a, vec3<bool>(true, true, true)))));
    global0 = array<vec4<i32>, 10>();
    let var_1 = true;
    global1 = array<Struct_1, 3>();
    let var_2 = Struct_1(arg_0.a);
    return select(1i, -(~(~1i)), !(!var_1));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 3>();
    let var_0 = vec4<i32>(arg_0, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-38404i, 22104i | arg_0, -arg_0, _wgslsmith_div_i32(arg_0, 2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 15539u))), 10u)]), firstLeadingBit(-1i)) ^ global0[_wgslsmith_index_u32(0u, 10u)];
    let var_1 = 4294967295u;
    global0 = array<vec4<i32>, 10>();
    let var_2 = var_0.yz;
    return vec2<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(59109u, var_1, u_input.a, var_1) << (vec4<u32>(1u, var_1, 0u, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, 46561u, var_1)), vec4<u32>(var_1, var_1, u_input.a, 55514u) ^ ~vec4<u32>(u_input.a, 1u, u_input.a, 2710u)) <= u_input.a, !any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = !vec3<bool>(false, all(func_4(func_3(global1[_wgslsmith_index_u32(93728u, 3u)], vec2<u32>(u_input.a, 4294967295u), vec4<u32>(u_input.a, 37570u, u_input.a, 1u), vec4<f32>(-1380f, -906f, -1236f, -1979f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(148f, -1258f)), global1[_wgslsmith_index_u32(~49051u, 3u)])), false);
    global0 = array<vec4<i32>, 10>();
    var var_1 = countOneBits(_wgslsmith_clamp_i32(1i, max(_wgslsmith_mult_i32(func_3(Struct_1(vec3<f32>(1003f, -892f, -392f)), vec2<u32>(4294967295u, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, 40656u), vec4<f32>(-445f, 566f, 895f, -194f)), _wgslsmith_mod_i32(-12719i, 2147483647i)), -17944i), _wgslsmith_add_i32(i32(-1i) * -12614i, -1i)));
    global1 = array<Struct_1, 3>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1919f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-100f + 273f) * 1000f))));
    return global1[_wgslsmith_index_u32(countOneBits(1u), 3u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = global1[_wgslsmith_index_u32(119131u, 3u)];
    global1 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -285f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_1.a.x))) - var_1.a.x)), var_1.a.x));
    global1 = array<Struct_1, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(161f - -1391f), 754f, -417f, -447f), vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1481f), _wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1115f))))), _wgslsmith_f_op_vec2_f32(sign(var_0.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-493f, 241f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-400f, -196f)) * _wgslsmith_f_op_f32(max(193f, -124f))), _wgslsmith_f_op_f32(abs(1000f)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 1u, 1u, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a)) << (~(vec4<u32>(u_input.a, 34616u, 1u, 7766u) | vec4<u32>(u_input.a, u_input.a, 20299u, 66813u)) % vec4<u32>(32u)), countOneBits(vec4<u32>(_wgslsmith_add_u32(77973u, u_input.a), firstTrailingBit(1u), 1u, 23418u))) % 32u), 3u)];
    global0 = array<vec4<i32>, 10>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, reverseBits(u_input.a)), 3u)];
    let x = u_input.a;
    s_output = func_1(firstLeadingBit(~firstLeadingBit(~vec4<i32>(-2147483647i, 1i, -1i, -44326i))), vec2<i32>(~abs(-1i), abs(~abs(-1i))));
}

