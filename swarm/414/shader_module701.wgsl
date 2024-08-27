struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(18967u, 4294967295u), -25399i), Struct_1(vec2<u32>(25117u, 72474u), 6510i), Struct_1(vec2<u32>(0u, 14925u), 0i), Struct_1(vec2<u32>(1u, 41642u), -11514i), Struct_1(vec2<u32>(54142u, 83412u), 38128i), Struct_1(vec2<u32>(0u, 0u), -77964i), Struct_1(vec2<u32>(4294967295u, 1u), -15228i), Struct_1(vec2<u32>(1u, 1u), -9998i), Struct_1(vec2<u32>(0u, 45828u), 0i), Struct_1(vec2<u32>(1u, 1u), 1i), Struct_1(vec2<u32>(111902u, 0u), 1i));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<u32>((4294967295u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, arg_0.a.x, 29436u, 4294967295u), vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, arg_0.a.x))) >> (reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(arg_2.a.x, 12122u, arg_2.a.x))) % 32u), global1.a.x, 96490u);
    var var_1 = arg_0;
    let var_2 = !(firstLeadingBit(87897u) != ~(~firstTrailingBit(0u)));
    let var_3 = arg_2;
    var var_4 = var_3;
    return ~arg_2.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32) -> i32 {
    var var_0 = Struct_1(~(~(~vec2<u32>(global1.a.x, arg_1.x))), min(51462i, -func_3(Struct_1(vec2<u32>(arg_2, global1.a.x), -1i), true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, arg_2), 11u)])));
    var var_1 = arg_0;
    let var_2 = -vec3<i32>(-2147483647i, u_input.a, _wgslsmith_dot_vec3_i32(-(vec3<i32>(global1.b, global1.b, var_0.b) << (vec3<u32>(1u, arg_2, 12205u) % vec3<u32>(32u))), select(vec3<i32>(28608i, u_input.b.x, -1i), vec3<i32>(u_input.a, -1039i, u_input.b.x), arg_0.x) << (~vec3<u32>(arg_2, arg_2, var_0.a.x) % vec3<u32>(32u))));
    var var_3 = global0[_wgslsmith_index_u32(global1.a.x, 11u)];
    var_3 = Struct_1(_wgslsmith_mult_vec2_u32(global1.a, (var_0.a << (var_0.a % vec2<u32>(32u))) << (~firstTrailingBit(arg_1) % vec2<u32>(32u))), abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(var_3.b, var_0.b), u_input.a), abs(_wgslsmith_mod_i32(1033i, 13229i)), var_2.x)));
    return -5060i;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = arg_3;
    global1 = arg_1;
    let var_0 = vec3<i32>(countOneBits(-func_2(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec2<u32>(arg_3.a.x, 160u), arg_1.a.x)), countOneBits(reverseBits(~(-2147483647i)) ^ _wgslsmith_div_i32(arg_3.b, -2147483647i)), arg_3.b >> (arg_2.a.x % 32u));
    var var_1 = 64322u;
    var var_2 = Struct_1(countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 1u), global1.a), reverseBits(_wgslsmith_add_vec2_u32(arg_1.a, vec2<u32>(arg_1.a.x, 10295u))), arg_2.a)), arg_1.b);
    return _wgslsmith_sub_u32(arg_1.a.x, var_2.a.x) ^ (_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(var_2.a.x, arg_1.a.x) | firstTrailingBit(1u)) >> (_wgslsmith_mult_u32(~arg_1.a.x ^ firstTrailingBit(1u), global1.a.x ^ firstLeadingBit(1u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(max(~1u, 24398u << (~_wgslsmith_sub_u32(func_1(vec2<bool>(true, false), Struct_1(vec2<u32>(global1.a.x, 0u), 63536i), Struct_1(global1.a, u_input.b.x), global0[_wgslsmith_index_u32(global1.a.x, 11u)]), 17048u) % 32u)), 11u)];
    global0 = array<Struct_1, 11>();
    var var_0 = !(!(u_input.b.x > ~global1.b));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global1.a.x, global1.a.x, 4294967295u), max(max(vec3<u32>(global1.a.x, global1.a.x, 22303u), vec3<u32>(16647u, global1.a.x, global1.a.x)), vec3<u32>(global1.a.x, 0u, global1.a.x) & vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), ~(~vec3<u32>(global1.a.x, 1u, global1.a.x))), 0u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 104955u, global1.a.x, global1.a.x) & vec4<u32>(54480u, 0u, 0u, global1.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 0u, 40314u), vec4<u32>(3552u, global1.a.x, global1.a.x, 4294967295u))) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 4294967295u, global1.a.x), vec3<u32>(global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_dot_vec2_u32(~vec2<u32>(~38230u, global1.a.x), vec2<u32>(countOneBits(_wgslsmith_sub_u32(0u, global1.a.x)), 4294967295u)));
    global1 = Struct_1(global1.a, global1.b);
    var var_2 = global1.a;
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, _wgslsmith_add_u32(var_2.x, min(0u, 0u))), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(select(-977f, 938f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(138f - -918f), -1374f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, 224f, 394f, 210f) * vec4<f32>(1000f, -1000f, 2060f, 532f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1893f, -682f, -349f, -103f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-170f, -1000f, 145f, -1979f), vec4<f32>(-777f, 575f, -1000f, -185f))), _wgslsmith_div_vec4_f32(vec4<f32>(433f, 359f, -1034f, -2037f), vec4<f32>(303f, 461f, 1701f, 2357f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1072f, -158f, 1000f, -365f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), 1f, _wgslsmith_f_op_f32(step(432f, 784f)), _wgslsmith_f_op_f32(f32(-1f) * -2537f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), true)))), 472f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1031f, -1787f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-347f))))));
}

