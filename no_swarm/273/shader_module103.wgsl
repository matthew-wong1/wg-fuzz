struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    global2 = global0[_wgslsmith_index_u32(~(~(~(0u ^ _wgslsmith_clamp_u32(4294967295u, u_input.d, 63568u)))), 31u)];
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1199f, 1898f, -148f, 636f) + vec4<f32>(318f, -1471f, -1197f, 1247f))))));
    global2 = 4294967295u;
    global0 = array<u32, 31>();
    let var_1 = Struct_1(~(~arg_0), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1380f + 1522f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(var_0.x, -581f))), firstTrailingBit(countOneBits(u_input.d << (_wgslsmith_clamp_u32(1u, 0u, 20262u) % 32u))));
    return global0[_wgslsmith_index_u32(21328u, 31u)] << (firstTrailingBit(~u_input.c) % 32u);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = Struct_1(u_input.e.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f - -1089f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1979f))) - -1276f)), min(~func_3(u_input.a.x) >> (global0[_wgslsmith_index_u32(30257u, 31u)] % 32u), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), _wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(1u, 31u)]))));
    global1 = array<Struct_1, 11>();
    let var_1 = -1i << (0u % 32u);
    var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.d, u_input.d)), 11u)];
    global1 = array<Struct_1, 11>();
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, -1i, -1408i, var_1), vec4<i32>(2147483647i, 0i, 2147483647i, -56800i), vec4<i32>(-40997i, -1i, u_input.e.x, 1i)), -vec4<i32>(2147483647i, u_input.b.x, -5746i, 9841i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-8735i, u_input.a.x, u_input.e.x, var_0.a), vec4<i32>(var_0.a, -13926i, 0i, -1i))) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c, 31u)], var_0.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]))) % vec4<u32>(32u)), min(vec4<i32>(~u_input.b.x, -reverseBits(2147483647i), _wgslsmith_mod_i32(~1i, ~u_input.a.x), _wgslsmith_sub_i32(var_1, reverseBits(2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -61010i, var_1, -1i), vec4<i32>(u_input.e.x, var_0.a, var_0.a, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_1, var_1, u_input.b.x, var_1), vec4<i32>(var_0.a, var_0.a, -2147483647i, 17993i))) ^ _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, var_0.a, var_1, var_0.a)), -vec4<i32>(u_input.e.x, u_input.e.x, var_1, 91186i), vec4<i32>(var_1, u_input.a.x, var_1, 2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    global2 = ~(0u >> (_wgslsmith_sub_u32(arg_2.x, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 31u)] >> (arg_1.c % 32u), 4294967295u, arg_0.c ^ arg_2.x)) % 32u));
    let var_0 = Struct_1(func_2(abs(arg_2.wxw)) ^ _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.a, i32(-1i) * -2147483647i), abs(1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -1022f, arg_1.b.x) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1473f), 796f, _wgslsmith_f_op_f32(346f - _wgslsmith_div_f32(1350f, arg_0.b.x)))), 69672u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1696f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -476f) - _wgslsmith_f_op_f32(max(-1007f, arg_1.b.x)))), _wgslsmith_div_f32(894f, _wgslsmith_f_op_f32(-arg_1.b.x)), var_0.b.x, 248f);
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1362f * 1733f), _wgslsmith_f_op_f32(round(-1435f)), all(vec4<bool>(true, false, false, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(560f, 361f), _wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(81524u, 11u)], Struct_1(2147483647i, vec3<f32>(-1000f, -827f, -2032f), global0[_wgslsmith_index_u32(84204u, 31u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 31u)], u_input.c, 114139u, u_input.c))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-403f, 1562f) + _wgslsmith_f_op_f32(select(-966f, 290f, true))))));
    var var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1341f, 683f, -1111f) - vec3<f32>(1041f, -1000f, 282f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(962f + -910f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<bool>(true, true, any(vec3<bool>(false, true, true)))))), 1u);
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(-(vec4<i32>(48861i, -1i, u_input.a.x, -20618i) << (vec4<u32>(48404u, 13206u, 16984u, global0[_wgslsmith_index_u32(u_input.d, 31u)]) % vec4<u32>(32u))), select(vec4<i32>(var_1.a, var_1.a, var_1.a, 1i) << (vec4<u32>(0u, 56050u, 75479u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_1.a, 1i, 2147483647i), vec4<i32>(var_1.a, var_1.a, var_1.a, -1i)), true))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, ~_wgslsmith_add_i32(-2147483647i, 1i), -13172i), ~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-46334i, u_input.b.x, var_1.a, var_1.a)), vec4<i32>(var_1.a, var_1.a, u_input.b.x, var_1.a)));
    let var_3 = select(select(!vec4<bool>(true, true, 386f >= var_1.b.x, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), false), vec4<bool>(var_0.x < var_1.b.x, all(vec2<bool>(true, false)), var_1.b.x < -121f, false)), true), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), vec4<bool>(select(true, true, true), false, true, all(vec3<bool>(true, true, true))), true), !select(vec4<bool>(true, true, false, any(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false))));
    global1 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(u_input.b.x, var_1.a, ~var_2.x)));
}

