struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-13431i, 15655i, -1i, -8795i, i32(-2147483648), 1i, 24303i, -14322i, 1i, 1i, 1i, 0i, 40820i, 0i, 22076i, 37836i, i32(-2147483648), 2147483647i, 27124i, 1i, 29636i, -54965i, 2107i, -1i);

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(min(4294967295u, 34320u), max(u_input.a.x, 60580u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 3417u)), u_input.a.x ^ 64863u), _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, 51120u, 25867u, u_input.a.x) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 7984u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), abs(39537u)), 3u)];
    let var_1 = countOneBits(arg_0.x);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(77069u, _wgslsmith_sub_u32(var_0.b, ~u_input.a.x)), 3u)];
    var_2 = Struct_1(_wgslsmith_sub_u32(~9852u, abs(_wgslsmith_clamp_u32(min(var_0.b, 34961u), ~u_input.a.x, var_0.a >> (4294967295u % 32u)))), var_0.b);
    global0 = array<i32, 24>();
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = max(i32(-1i) * -2147483647i, -8415i);
    global1 = array<Struct_1, 3>();
    var_0 = global0[_wgslsmith_index_u32(30423u, 24u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 1723f, arg_1.x), vec3<f32>(-1667f, arg_1.x, -538f)))))))));
    var var_2 = ~reverseBits(select(~(~vec4<u32>(0u, arg_2.a, arg_2.b, arg_3)), vec4<u32>(abs(1u), arg_0.x, _wgslsmith_div_u32(4294967295u, arg_3), 0u), !any(vec2<bool>(false, true))));
    return ~(~arg_3);
}

fn func_2() -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 3u)];
    global0 = array<i32, 24>();
    let var_1 = Struct_1(func_4(u_input.a.zx | u_input.a.yx, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(791f, -147f), _wgslsmith_f_op_f32(f32(-1f) * -1083f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-630f, -199f) + vec2<f32>(-1000f, -871f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(176f, 569f) * vec2<f32>(1225f, 765f)))))), global1[_wgslsmith_index_u32(func_3(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0[_wgslsmith_index_u32(70268u, 24u)], global0[_wgslsmith_index_u32(var_0.a, 24u)], -51780i), vec4<i32>(-52951i, global0[_wgslsmith_index_u32(1u, 24u)], 7600i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])), ~(global0[_wgslsmith_index_u32(1u, 24u)] >> (var_0.a % 32u))), 3u)], 4294967295u), max(min(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), var_0.a >> (0u % 32u)), 4294967295u) & ~var_0.b);
    global1 = array<Struct_1, 3>();
    var var_2 = var_1;
    return vec2<i32>(global0[_wgslsmith_index_u32(~func_3(vec4<i32>(1i, -2666i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), abs(47471i)) >> (min(abs(u_input.a.x), abs(firstTrailingBit(u_input.a.x))) % 32u), 24u)], min(0i, abs(~global0[_wgslsmith_index_u32(80477u, 24u)]) ^ (-273i >> (_wgslsmith_sub_u32(var_1.b, 1u) % 32u))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> vec3<bool> {
    let var_0 = firstLeadingBit(_wgslsmith_mod_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(27482u, 24u)], -1i)), reverseBits(select(func_2(), -vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], 13905i), select(true, false, false)))));
    var var_1 = global0[_wgslsmith_index_u32(~1u, 24u)];
    var_1 = max(39467i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(~var_0.x, -_wgslsmith_mod_i32(var_0.x, 1i)), var_0.x));
    let var_2 = ~global0[_wgslsmith_index_u32(~arg_0, 24u)];
    let var_3 = arg_1.ww;
    return vec3<bool>(!(0i > _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0, var_0, vec2<i32>(-19693i, -1i)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], var_2))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -184f, 1000f, -1218f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(424f, -505f, -200f, -371f) * vec4<f32>(-642f, -907f, -2766f, 476f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(-1379f, -878f, 695f, -633f), vec4<f32>(-795f, 1333f, 468f, -399f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, -1000f, 435f, -375f) + vec4<f32>(1853f, -118f, -541f, -1000f)))), vec4<f32>(-2304f, _wgslsmith_f_op_f32(ceil(353f)), _wgslsmith_f_op_f32(-1221f * 418f), _wgslsmith_f_op_f32(433f * 1612f))))));
    let var_1 = !(!all(func_1(max(10398u, 4294967295u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), var_0)))));
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, ~1u) | u_input.a.x, 0u, ~20330u);
    global1 = array<Struct_1, 3>();
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(12700u), 3u)];
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(1u), _wgslsmith_add_vec4_i32(countOneBits(~vec4<i32>(global0[_wgslsmith_index_u32(35041u, 24u)], 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_2, 24u)], 0i, 2147483647i)), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], -16523i, global0[_wgslsmith_index_u32(var_2, 24u)], global0[_wgslsmith_index_u32(var_2, 24u)])))) ^ firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)]), -5508i, ~2147483647i, _wgslsmith_sub_i32(20546i, global0[_wgslsmith_index_u32(15255u, 24u)]))), u_input.a.x, u_input.a);
}

