struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(16470u, 25137u, 0u, 1u, 31492u, 29886u, 0u, 4294967295u, 1983u, 4294967295u, 28687u, 0u, 32299u, 67346u, 1u, 7105u, 11645u, 1u, 4294967295u, 1u, 4294967295u, 0u, 23612u, 18309u, 1u, 14437u, 11283u, 0u, 45683u, 77577u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    var var_0 = u_input.a;
    let var_1 = vec3<i32>(-2147483647i, 25537i, -28441i);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, arg_0.a.x))), _wgslsmith_f_op_f32(-arg_1)), vec2<u32>(~4294967295u, 4294967295u), vec4<i32>(-_wgslsmith_dot_vec4_i32(arg_0.c, ~arg_0.c), -2147483647i, -arg_0.c.x | arg_0.c.x, 49905i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.d)))) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.d))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.yz + var_2.a) + vec2<f32>(_wgslsmith_div_f32(var_2.d.x, -3721f), _wgslsmith_f_op_f32(-arg_0.a.x)))), abs(max(vec2<u32>(_wgslsmith_sub_u32(var_2.b.x, arg_0.b.x), countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)])), var_2.b)), arg_0.c << (~vec4<u32>(global0[_wgslsmith_index_u32(~var_2.b.x, 30u)], _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(arg_0.b.x, 30u)]), min(var_2.b.x, 15503u), abs(104u)) % vec4<u32>(32u)), arg_0.d);
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d.x, var_2.a.x, -433f, var_3.d.x) * vec4<f32>(arg_1, var_3.d.x, arg_0.d.x, arg_0.d.x)), vec4<f32>(642f, -281f, arg_1, arg_1)))))), vec4<f32>(-299f, var_3.a.x, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1501f));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 728f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.d.yx)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(309f * 1000f))))), _wgslsmith_div_f32(1068f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(102f, -410f), _wgslsmith_f_op_f32(f32(-1f) * -1724f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<f32>(var_0, -1118f), arg_0, vec4<i32>(1i, u_input.a, 46352i, u_input.a), vec3<f32>(2312f, var_0, var_0)), 1175f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-422f, var_0)))))) - vec2<f32>(var_0, -197f)), vec2<u32>(~arg_0.x, global0[_wgslsmith_index_u32(~(~arg_1.x), 30u)]), _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(13895i, u_input.a, -47237i, u_input.a) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-71313i, -37981i, 1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, 1089i, 2147483647i), vec4<i32>(u_input.a, -13817i, 31614i, -34670i))), firstTrailingBit(~(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), select(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) ^ -vec4<i32>(-1i, u_input.a, u_input.a, 19653i), vec4<i32>(i32(-1i) * -28250i, firstTrailingBit(u_input.a), 23150i, _wgslsmith_mod_i32(10560i, -11753i)), false)), vec3<f32>(1f, _wgslsmith_f_op_f32(round(var_0)), _wgslsmith_f_op_f32(-var_0)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1.d, var_1.d)));
    global0 = array<u32, 30>();
    let var_3 = var_1;
    return vec2<u32>(~(~reverseBits(global0[_wgslsmith_index_u32(arg_2, 30u)]) << (min(~0u, ~66963u) % 32u)), select(global0[_wgslsmith_index_u32(~firstLeadingBit(arg_2 >> (var_1.b.x % 32u)), 30u)], _wgslsmith_dot_vec2_u32(vec2<u32>(78732u << (arg_1.x % 32u), ~arg_2), ~vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(46125u, 30u)])), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), arg_0.x >= arg_1.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(11722i, -(~1i));
    global0 = array<u32, 30>();
    global0 = array<u32, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - _wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_0.a, arg_0.b, arg_0.c, vec3<f32>(-119f, arg_0.d.x, -542f)), 1024f)).x), -828f))));
    var var_2 = vec3<i32>(select(-1i, reverseBits(-1i), arg_0.c.x > -arg_0.c.x), ~var_0 ^ 0i, u_input.a);
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-220f, 1000f) + -1035f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f - -1148f) + -657f)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(42663u, 30u)], global0[_wgslsmith_index_u32(64036u, 30u)]) << (vec2<u32>(100082u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)]) % vec2<u32>(32u)), vec2<u32>(18956u, 69324u)) << ((vec2<u32>(88935u, 11792u) ^ func_2(vec2<u32>(0u, 12542u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(749u, 30u)], 30u)], 30u)], 36896u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)])) % vec2<u32>(32u)), max(abs(vec4<i32>(-1i, var_0, u_input.a, u_input.a)) | -vec4<i32>(u_input.a, -50099i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 23004i, -2147483647i, var_0), vec4<i32>(u_input.a, u_input.a, u_input.a, 8814i)), vec4<i32>(-45487i, var_0, -8643i, -45259i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(934f, 1204f, -1436f))))));
    var var_2 = firstLeadingBit(countOneBits(firstLeadingBit(~(~vec4<u32>(var_1.b.x, 4294967295u, global0[_wgslsmith_index_u32(var_1.b.x, 30u)], var_1.b.x)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(796f + var_1.d.x))) - 209f);
    let var_4 = -var_1.c.x;
    return func_4(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-40637i, u_input.a) ^ firstTrailingBit(1i), 1i), i32(-1i) * -2147483647i, -u_input.a);
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(746f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-2058f * 1716f))), var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1607f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_1.a.x), _wgslsmith_f_op_f32(sign(-721f)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.d.x - 324f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-190f, 816f, -1294f, var_1.a.x), vec4<f32>(994f, 686f, var_1.a.x, var_1.a.x), vec4<bool>(false, false, true, false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, var_1.d.x, -169f, var_1.d.x)))))));
    global0 = array<u32, 30>();
    var_1 = func_1();
    var var_3 = func_1();
    var var_4 = func_4(func_1());
    var_4 = func_1();
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(_wgslsmith_add_vec2_u32(var_3.b, var_4.b))));
}

