struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(4294967295u, 46267u, 1u, 0u, 5474u, 44496u);

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> vec2<bool> {
    let var_0 = vec3<f32>(-891f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))));
    var var_1 = any(vec2<bool>(arg_0.a.x, arg_0.a.x));
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(arg_0.b.x), _wgslsmith_clamp_i32(i32(-1i) * -25210i, arg_0.c.x, 2147483647i) >> (863u % 32u)), u_input.a.zy);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -146f) * var_0) - vec3<f32>(arg_1.x, -488f, arg_1.x));
    let var_3 = arg_0;
    return arg_0.a;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(select(vec2<bool>(arg_0, all(vec4<bool>(false, arg_0, false, true))), !select(vec2<bool>(true, arg_0), func_3(Struct_1(vec2<bool>(true, true), vec4<i32>(46727i, -33393i, u_input.a.x, u_input.a.x), u_input.a), vec2<f32>(1237f, -295f), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)]), vec2<bool>(arg_0, true)), !(!(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50492u, 6u)], 6u)], 6u)]))), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i), vec4<i32>(-18045i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_vec3_i32(u_input.a << (vec3<u32>(abs(global0[_wgslsmith_index_u32(4294967295u, 6u)]), ~4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58330u, 6u)], 6u)], 6u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)]) % vec3<u32>(32u)), u_input.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-464f + 282f)))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_2 = Struct_1(!(!func_3(Struct_1(var_0.a, vec4<i32>(11131i, 2664i, u_input.a.x, var_0.b.x), vec3<i32>(u_input.a.x, var_0.b.x, u_input.a.x)), vec2<f32>(275f, -222f), global0[_wgslsmith_index_u32(~106628u, 6u)])), abs(select(firstLeadingBit(min(var_0.b, var_0.b)), var_0.b, select(arg_0, !arg_0, all(vec4<bool>(true, false, arg_0, var_0.a.x))))), u_input.a);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50336u, 6u)], 6u)], 71229u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6815u, 6u)], 6u)], global0[_wgslsmith_index_u32(69295u, 6u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 2149u), vec2<u32>(global0[_wgslsmith_index_u32(33464u, 6u)], 0u))), _wgslsmith_clamp_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32118u, 6u)], 6u)]), ~12067u, global0[_wgslsmith_index_u32(0u, 6u)])), 13918u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)]), ~13188u, 1u >> (firstLeadingBit(1u) % 32u)), max(abs(vec3<u32>(4294967295u, 17832u, 1u)), countOneBits(abs(vec3<u32>(global0[_wgslsmith_index_u32(25514u, 6u)], 25130u, global0[_wgslsmith_index_u32(46121u, 6u)]))))));
}

fn func_4(arg_0: u32, arg_1: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, -2159f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-820f, 1740f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1321f, 1030f))))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1219f, -1732f), _wgslsmith_f_op_f32(select(-712f, -1643f, true))))) * vec2<f32>(-538f, 178f));
    var var_1 = vec2<u32>(abs(global0[_wgslsmith_index_u32(~(~(~1u)), 6u)]), global0[_wgslsmith_index_u32(~1u, 6u)]);
    let var_2 = _wgslsmith_clamp_u32(~global0[_wgslsmith_index_u32(abs(max(global0[_wgslsmith_index_u32(select(0u, 4294967295u, true), 6u)], _wgslsmith_mult_u32(1u, var_1.x))), 6u)], ~(~51229u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(31204u << (~_wgslsmith_div_u32(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 6u)], 6u)], 6u)]) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0, 6u)], 4294967295u, global0[_wgslsmith_index_u32(arg_0, 6u)]) << (vec4<u32>(12533u, 51409u, 27966u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43650u, 6u)], 6u)]) % vec4<u32>(32u)), ~vec4<u32>(0u, 7750u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57875u, 6u)], 6u)], 4294967295u))), 6u)]);
    let var_3 = true;
    var var_4 = Struct_1(!vec2<bool>(!all(vec2<bool>(var_3, false)), all(vec4<bool>(var_3, var_3, var_3, true))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-30006i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(arg_1, 0i, u_input.a.x, arg_1))) & (countOneBits(-vec4<i32>(arg_1, 2147483647i, arg_1, u_input.a.x)) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(19238u, 4294967295u, 4294967295u, var_1.x), vec4<u32>(77397u, 28736u, global0[_wgslsmith_index_u32(arg_0, 6u)], 4294967295u)), vec4<u32>(var_1.x, 0u, var_1.x, var_1.x) & vec4<u32>(1u, 4294967295u, arg_0, arg_0)) % vec4<u32>(32u))), vec3<i32>(-1i) * -max(u_input.a ^ u_input.a, vec3<i32>(0i, 1i, u_input.a.x)));
    return vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-484f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1128f, var_0.x)) * var_0.x))), var_0.x, 136f);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0;
    global1 = min(select(-(~1i), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x ^ 0i), var_0.a.x) ^ (i32(-1i) * -1i), arg_0.c.x);
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(false), -var_0.c.x)) * _wgslsmith_f_op_vec4_f32(ceil(arg_2)));
    return Struct_1(select(vec2<bool>(arg_0.a.x, true), var_0.a, !vec2<bool>(arg_0.a.x, !var_0.a.x)), arg_0.b, arg_0.c);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    global1 = ~reverseBits(-78185i);
    global0 = array<u32, 6>();
    global1 = -_wgslsmith_add_i32(arg_1.c.x, ~(-(~arg_1.b.x)));
    var var_0 = Struct_1(arg_1.a, min(~arg_1.b, select(-(arg_1.b << (vec4<u32>(global0[_wgslsmith_index_u32(24656u, 6u)], 0u, 1u, 28347u) % vec4<u32>(32u))), func_1(Struct_1(vec2<bool>(arg_1.a.x, arg_1.a.x), vec4<i32>(0i, arg_1.b.x, 2147483647i, 0i), u_input.a), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, -1399f, 1034f, -1690f) - vec4<f32>(-1345f, 1438f, 1607f, 472f))).b, !(!vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)))), min(countOneBits(vec3<i32>(arg_1.c.x, -15129i, 0i) ^ -arg_1.b.zxz), vec3<i32>(arg_1.b.x, arg_1.b.x, 44974i | u_input.a.x)));
    return Struct_1(var_0.a, _wgslsmith_div_vec4_i32(arg_1.b, ~var_0.b), _wgslsmith_mult_vec3_i32(var_0.c, _wgslsmith_clamp_vec3_i32(func_1(Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, u_input.a.x, var_0.b.x, 1i), vec3<i32>(-31428i, -2147483647i, -16101i)), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1228f, 573f, -506f, 347f) + vec4<f32>(537f, -388f, 996f, -588f))).b.xyw, max(vec3<i32>(u_input.a.x, var_0.c.x, 1i), u_input.a), func_1(func_1(arg_1, var_0.a.x, vec4<f32>(2115f, -872f, 166f, 575f)), arg_1.b.x > var_0.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-220f, 140f, -237f, -795f) - vec4<f32>(-1486f, -553f, -631f, -424f))).b.zzx)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = (firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xy, arg_3.c.yy), -u_input.a.xx)) << (firstLeadingBit(max(vec2<u32>(0u, global0[_wgslsmith_index_u32(59795u, 6u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(21266u, 6u)]), vec2<u32>(15097u, 38237u)))) % vec2<u32>(32u))) ^ vec2<i32>(-2147483647i, -10337i);
    var_0 = arg_3.b.xy;
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(~(vec4<i32>(28269i, u_input.a.x, var_0.x, var_0.x) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26553u, 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 6u)], 6u)], 61162u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)]) % vec4<u32>(32u))), select((arg_3.b >> (vec4<u32>(global0[_wgslsmith_index_u32(70592u, 6u)], 0u, 42563u, 81017u) % vec4<u32>(32u))) & abs(vec4<i32>(arg_3.b.x, arg_2.c.x, -9592i, arg_3.c.x)), arg_2.b, arg_1)), vec4<i32>(64777i, _wgslsmith_dot_vec4_i32(arg_2.b, vec4<i32>(0i, arg_2.c.x, 2147483647i, arg_3.b.x)), u_input.a.x, -_wgslsmith_add_i32(var_0.x, 6136i)) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -50870i), arg_3.b.zx) | ~31209i, _wgslsmith_div_i32(~28i, u_input.a.x), arg_3.c.x, -2147483647i));
    let var_2 = 1i;
    var_0 = arg_3.c.zz;
    return func_5(abs(min(abs(max(vec3<u32>(21017u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2073u, 6u)], 6u)], 27140u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(36883u, 6u)]))), ~vec3<u32>(1u, 35916u, 1u))), func_5(vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 6u)], 45183u), 1u, _wgslsmith_mod_u32(~1u, 96642u)), func_1(arg_3, arg_3.a.x, vec4<f32>(-1749f, _wgslsmith_f_op_f32(-1481f + -1378f), -520f, 104f))));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = 4294967295u ^ global0[_wgslsmith_index_u32(min(~0u, _wgslsmith_mult_u32(arg_0.x, arg_0.x)), 6u)];
    let var_1 = Struct_1(func_3(func_1(arg_1, true, vec4<f32>(682f, -1444f, _wgslsmith_f_op_f32(f32(-1f) * -1009f), -1000f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1232f), _wgslsmith_f_op_f32(max(-2283f, _wgslsmith_f_op_f32(step(1165f, 1394f))))), 38460u), arg_1.b, arg_1.c);
    var var_2 = Struct_1(vec2<bool>(true, arg_1.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, func_1(var_1, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 955f, -630f, -381f) - vec4<f32>(-754f, 1567f, 695f, 2390f))).b.x, ~(-arg_1.b.x), var_1.b.x), func_1(Struct_1(vec2<bool>(arg_1.a.x, true), var_1.b, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.x, -2147483647i, arg_1.b.x), u_input.a)), false, vec4<f32>(1000f, -1769f, _wgslsmith_f_op_f32(sign(-579f)), _wgslsmith_f_op_f32(1269f + 921f))).b), var_1.c);
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2316f, 678f, 1315f) - vec3<f32>(300f, 960f, -836f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(650f, -780f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(0u, 0i)).x), -437f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2224f, -1902f, 636f)))))));
    let var_4 = func_6(select(!select(!vec4<bool>(false, var_1.a.x, false, var_1.a.x), !vec4<bool>(true, arg_2, var_1.a.x, true), true), vec4<bool>(true, !all(vec4<bool>(var_1.a.x, false, true, var_2.a.x)), -7801i == func_5(vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(1u, 6u)], 4294967295u), arg_1).b.x, arg_2), arg_2), vec4<bool>(arg_2, true, true, !arg_1.a.x), Struct_1(arg_1.a, vec4<i32>(-u_input.a.x, ~(-2147483647i), -var_2.c.x & var_2.c.x, func_6(vec4<bool>(var_1.a.x, true, arg_2, false), vec4<bool>(true, true, false, var_2.a.x), var_1, Struct_1(vec2<bool>(false, false), var_1.b, var_2.b.ywy)).b.x), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.b.yx, vec2<i32>(-853i, var_1.b.x)), var_1.c.x), -2147483647i, var_2.b.x)), arg_1);
    return Struct_1(vec2<bool>(func_1(func_1(arg_1, var_1.a.x, vec4<f32>(-1000f, var_3.x, var_3.x, var_3.x)), var_1.a.x & arg_2, vec4<f32>(1016f, var_3.x, 943f, -1833f)).a.x && true, var_2.a.x), -vec4<i32>(-1i, -2147483647i, -firstTrailingBit(var_2.b.x), _wgslsmith_dot_vec3_i32(var_1.b.zzz, u_input.a)), var_1.b.wwz);
}

fn func_8(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = min(u_input.a.x, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, i32(-1i) * -u_input.a.x), firstLeadingBit(~0i) ^ ~(u_input.a.x << (global0[_wgslsmith_index_u32(1u, 6u)] % 32u))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1))));
    var var_2 = arg_0;
    global0 = array<u32, 6>();
    let var_3 = Struct_1(vec2<bool>(true, all(arg_0.a)), arg_0.b | ~var_2.b, _wgslsmith_add_vec3_i32(func_6(select(!vec4<bool>(arg_0.a.x, var_2.a.x, false, var_2.a.x), vec4<bool>(arg_0.a.x, false, var_2.a.x, false), !vec4<bool>(var_2.a.x, arg_0.a.x, false, false)), select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, true), !vec4<bool>(arg_0.a.x, true, var_2.a.x, true), vec4<bool>(false, true, true, arg_0.a.x)), Struct_1(vec2<bool>(arg_0.a.x, arg_0.a.x), abs(arg_0.b), select(u_input.a, u_input.a, true)), arg_0).b.zxz, func_7(max(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u), ~vec2<u32>(0u, 1u)), func_7(vec2<u32>(global0[_wgslsmith_index_u32(40665u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), Struct_1(vec2<bool>(arg_0.a.x, var_2.a.x), vec4<i32>(u_input.a.x, -50018i, 1i, arg_0.c.x), arg_0.b.wzz), var_2.a.x, select(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 0u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], 1u, 62494u), arg_0.a.x)), true, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(20186u, global0[_wgslsmith_index_u32(68740u, 6u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], 0u)), abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], global0[_wgslsmith_index_u32(0u, 6u)], 96701u)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 37825u))).b.xzx));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(430f, -921f, -1883f, 308f) + vec4<f32>(-907f, 1338f, 1444f, 1046f))) + vec4<f32>(_wgslsmith_f_op_f32(1741f + -1000f), _wgslsmith_f_op_f32(-860f + -365f), _wgslsmith_f_op_f32(2430f + 636f), _wgslsmith_div_f32(243f, -1379f))))));
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    global1 = 26580i;
    var var_1 = vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)], 0u, global0[_wgslsmith_index_u32(~(~4294967295u), 6u)]);
    let var_2 = func_8(func_7(max(vec2<u32>(var_1.x, 1u), ~vec2<u32>(var_1.x, global0[_wgslsmith_index_u32(1u, 6u)])), func_6(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), false), func_5(vec3<u32>(var_1.x, 3137u, 0u) | vec3<u32>(0u, var_1.x, 0u), func_1(Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 44083i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), false, vec4<f32>(281f, -787f, var_0.x, -334f))), func_5(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, 43554u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 6u)], 6u)]), vec3<u32>(38363u, global0[_wgslsmith_index_u32(57842u, 6u)], var_1.x)), Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec3<i32>(19022i, u_input.a.x, -1i)))), func_6(vec4<bool>(true, false, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), func_1(Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), true, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -774f, var_0.x, 1076f), vec4<f32>(325f, -1512f, var_0.x, var_0.x))), Struct_1(func_6(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 26133i), vec3<i32>(u_input.a.x, u_input.a.x, -14430i)), Struct_1(vec2<bool>(true, true), vec4<i32>(-31239i, 21i, -2147483647i, u_input.a.x), u_input.a)).a, func_1(Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.a.x, u_input.a.x, 1i, -1i), u_input.a), false, vec4<f32>(-2480f, 185f, var_0.x, 110f)).b, func_5(vec3<u32>(var_1.x, 52416u, var_1.x), Struct_1(vec2<bool>(false, true), vec4<i32>(-2147483647i, -1i, u_input.a.x, u_input.a.x), u_input.a)).c)).a.x, reverseBits(~select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], var_1.x, 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], var_1.x, 7359u), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -616f) + 3013f))) - _wgslsmith_f_op_f32(sign(-141f))));
    let x = u_input.a;
    s_output = StorageBuffer(-1623f, _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), select(vec4<i32>(u_input.a.x, -30720i, 70236i, u_input.a.x), vec4<i32>(2147483647i, 6464i, 1i, u_input.a.x), vec4<bool>(true, var_2, false, var_2))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(21649i, -10418i), u_input.a.yx), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x), select(select(vec4<bool>(false, var_2, var_2, true), vec4<bool>(var_2, true, false, true), var_2), !vec4<bool>(var_2, true, var_2, var_2), true)), _wgslsmith_div_vec4_i32(func_6(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, var_2, true, var_2), vec4<bool>(true, true, false, true)), !vec4<bool>(var_2, var_2, true, false), Struct_1(vec2<bool>(var_2, true), vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.a.x), vec3<i32>(-35268i, u_input.a.x, -38321i)), func_7(var_1.xx, Struct_1(vec2<bool>(var_2, var_2), vec4<i32>(6039i, 0i, -3837i, u_input.a.x), u_input.a), false, vec3<u32>(global0[_wgslsmith_index_u32(1u, 6u)], var_1.x, var_1.x))).b, abs(func_1(Struct_1(vec2<bool>(false, var_2), vec4<i32>(-1i, -8536i, 36489i, u_input.a.x), vec3<i32>(-1i, 32656i, 2147483647i)), var_2, vec4<f32>(502f, var_0.x, 829f, var_0.x)).b))), firstLeadingBit(_wgslsmith_mult_u32(countOneBits(firstTrailingBit(global0[_wgslsmith_index_u32(var_1.x, 6u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 11850u, 14422u) >> (vec4<u32>(4294967295u, 89293u, 29140u, global0[_wgslsmith_index_u32(var_1.x, 6u)]) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_1.x, var_1.x, 4294967295u) & vec4<u32>(156316u, var_1.x, global0[_wgslsmith_index_u32(4294967295u, 6u)], 46595u)), 6u)])), vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_2)), 1941f, func_8(Struct_1(vec2<bool>(var_2, false), vec4<i32>(0i, -2147483647i, -1063i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 1i)), 1304f))), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -327f) - -1313f)), 882f));
}

