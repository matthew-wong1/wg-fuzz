struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<i32>(2147483647i, 10072i, 2147483647i), vec2<u32>(0u, 16041u)), Struct_3(vec3<i32>(0i, -12695i, 1i), vec2<u32>(1u, 1u)), Struct_3(vec3<i32>(3498i, -12125i, 4110i), vec2<u32>(0u, 4294967295u)), Struct_3(vec3<i32>(-927i, 39003i, 53205i), vec2<u32>(21626u, 1u)), Struct_3(vec3<i32>(6905i, -6209i, 2147483647i), vec2<u32>(0u, 4294967295u)), Struct_3(vec3<i32>(-44214i, 35485i, 2147483647i), vec2<u32>(0u, 17519u)));

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-594f + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1029f)), _wgslsmith_div_f32(-930f, 1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-255f, 491f)))), -360f)));
    let var_1 = global0[_wgslsmith_index_u32(10937u, 6u)];
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2025f))), 858f));
    let var_2 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a.x, 2147483647i, 2147483647i, -14624i), vec4<i32>(9433i, -1i, 7240i, 70311i)), _wgslsmith_mult_i32(1i, var_1.a.x))), vec2<i32>(min(var_1.a.x, -7206i), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(5497i, -3394i, -2147483647i, var_1.a.x)), vec4<i32>(var_1.a.x, -2147483647i, -45663i, -2147483647i), vec4<bool>(global1.x, global1.x, global1.x, true)), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, 1i, var_1.a.x), vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, 21379i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(128f))), _wgslsmith_f_op_f32(-1f))));
    return ~87795u;
}

fn func_2(arg_0: i32) -> Struct_4 {
    global0 = array<Struct_3, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1057f, 609f), vec2<f32>(-184f, -517f)))))));
    global0 = array<Struct_3, 6>();
    var var_1 = _wgslsmith_add_u32(52260u, u_input.b | 43477u);
    var var_2 = _wgslsmith_mult_i32(arg_0, arg_0);
    return Struct_4(~(~func_3()) <= reverseBits(u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1613f)), _wgslsmith_f_op_f32(-697f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1580f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, -373f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -179f, var_0.x, var_0.x), vec4<f32>(var_0.x, -1904f, 341f, var_0.x), vec4<bool>(global1.x, true, global1.x, global1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) - var_0.x), Struct_1(vec3<i32>(~arg_0 ^ _wgslsmith_mod_i32(2147483647i, -1i), -arg_0, firstTrailingBit(arg_0)), select(firstTrailingBit(arg_0), _wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-1i, arg_0, 54079i), vec3<bool>(global1.x, global1.x, true)), vec3<i32>(arg_0, -3409i, -1i) << (vec3<u32>(0u, u_input.b, 4294967295u) % vec3<u32>(32u))), global1.x)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32) -> i32 {
    var var_0 = Struct_4(true, arg_0.b, -1000f, arg_0.d);
    let var_1 = Struct_4(!any(select(global1.yyz, vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(true, true, true))), arg_0.b, -1000f, Struct_1(vec3<i32>(_wgslsmith_div_i32(max(-1i, 35876i), i32(-1i) * -2147483647i), _wgslsmith_dot_vec2_i32(select(arg_0.d.a.yz, arg_0.d.a.xy, vec2<bool>(global1.x, var_0.a)), vec2<i32>(var_0.d.a.x, 3309i)), _wgslsmith_sub_i32(-2633i, i32(-1i) * -53481i)), -_wgslsmith_clamp_i32(arg_0.d.a.x, -13429i, _wgslsmith_div_i32(var_0.d.a.x, -1i))));
    var var_2 = var_0.d;
    let var_3 = Struct_3(firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-2147483647i, var_2.a.x, 44481i, arg_0.d.a.x), vec4<i32>(-2147483647i, 4497i, 5604i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d.a.x, -2147483647i, arg_0.d.b, arg_0.d.a.x), vec4<i32>(18708i, 17337i, var_1.d.b, var_2.b), vec4<i32>(-39100i, -28329i, var_1.d.b, var_0.d.a.x))), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(0i, 5734i, -19311i)), var_2.a | var_1.d.a), var_2.a.x)), vec2<u32>(_wgslsmith_sub_u32(~u_input.a.x, 9636u), firstLeadingBit(u_input.a.x)));
    var var_4 = -1647f;
    return func_2(arg_0.d.a.x).d.b;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<bool>, arg_3: vec2<i32>) -> f32 {
    global1 = !(!vec4<bool>(true, false, true, !arg_2.x));
    var var_0 = arg_3.x;
    var_0 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3.x, -47313i, 25473i, arg_3.x), vec4<i32>(arg_3.x, 0i, arg_0, -19779i)), abs(vec4<i32>(arg_0, -1052i, arg_0, arg_3.x))) & ~(~vec4<i32>(arg_3.x, arg_0, arg_0, -19775i))), vec4<i32>(-func_4(func_2(18583i), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-347f, 133f))), _wgslsmith_f_op_f32(-1106f * 359f)), ~_wgslsmith_mult_i32(0i, countOneBits(0i)), -_wgslsmith_add_i32(min(23803i, 0i), arg_0 ^ arg_0), -1i));
    global1 = vec4<bool>(true, true, true, true);
    global0 = array<Struct_3, 6>();
    return 289f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 6>();
    var var_0 = select(global1.yx, global1.yz, vec2<bool>(true, true));
    var_0 = vec2<bool>(any(!(!(!vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2147483647i, true, vec3<bool>(true, false, global1.x), vec2<i32>(42666i, 1i)))))) > -1102f);
    let var_1 = func_2(-1i);
    let var_2 = 2147483647i;
    let var_3 = true;
    let var_4 = global0[_wgslsmith_index_u32(64597u, 6u)];
    var_0 = !select(global1.zx, vec2<bool>(func_2(-var_4.a.x).a, var_3), !select(global1.ww, global1.zy, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, abs(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, 29427u), 0u, u_input.a.x, firstLeadingBit(var_4.b.x))), -61255i, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b, reverseBits(min(1u, var_4.b.x)), u_input.b), select(vec4<u32>(~var_4.b.x, 16685u, ~4294967295u, _wgslsmith_clamp_u32(var_4.b.x, 1u, 3682u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b), ~vec4<u32>(u_input.a.x, 4294967295u, var_4.b.x, var_4.b.x), vec4<u32>(0u, u_input.b, var_4.b.x, 50529u)), select(vec4<bool>(var_1.a, false, global1.x, var_0.x), !vec4<bool>(false, false, false, global1.x), all(vec4<bool>(false, false, true, global1.x)))), ~vec4<u32>(0u, var_4.b.x, 25519u, max(var_4.b.x, 0u))));
}

