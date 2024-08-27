struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<i32> = vec2<i32>(0i, 32744i);

var<private> global2: array<f32, 1> = array<f32, 1>(-219f);

var<private> global3: Struct_2 = Struct_2(46590i, 30532u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    return countOneBits(-(_wgslsmith_div_i32(countOneBits(global1.x), _wgslsmith_mod_i32(u_input.a.x, global3.a)) ^ u_input.a.x));
}

fn func_3() -> vec3<i32> {
    global3 = Struct_2(u_input.a.x, ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 44421u), ~vec2<u32>(96201u, global3.b))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(438f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, global0.x)), global0.x))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1u), 1u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = Struct_1(32312i, !select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(321f, 299f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.x * var_0), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 1u)])))), 28678u);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c.x, var_0)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))));
    return u_input.a;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(global3.b, ~58574u);
    let var_1 = reverseBits(~1u);
    var var_2 = Struct_1(_wgslsmith_mult_i32(~(-(-8732i & global3.a)), _wgslsmith_mult_i32(-3927i, countOneBits(func_2(vec4<u32>(var_1, var_1, 0u, 4294967295u))))), vec3<bool>(true, false, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global2[_wgslsmith_index_u32(var_1, 1u)], global2[_wgslsmith_index_u32(global3.b, 1u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, global2[_wgslsmith_index_u32(1u, 1u)]))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-554f, global0.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1355f, global2[_wgslsmith_index_u32(76872u, 1u)])))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, global0.x)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-294f, 1280f), vec2<f32>(-207f, -684f), vec2<bool>(true, false))))))), 52930u);
    global1 = ~(~countOneBits(vec2<i32>(reverseBits(global3.a), global3.a)));
    let var_3 = func_3();
    return Struct_2(1i, reverseBits(abs(var_1) | 1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 1u)] + _wgslsmith_div_f32(-1000f, global0.x)));
    global0 = vec2<f32>(-1613f, global2[_wgslsmith_index_u32(firstLeadingBit(min(arg_0.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(1178u, arg_2.b), 98037u))), 1u)]);
    let var_1 = arg_2;
    var var_2 = true;
    return Struct_2(~(-_wgslsmith_sub_i32(global3.a, arg_1) & ~45644i), var_1.b);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec2<u32> {
    var var_0 = min((~vec4<u32>(43592u, global3.b, global3.b, global3.b) & ~(vec4<u32>(34473u, 0u, 4294967295u, arg_1.b) | vec4<u32>(global3.b, arg_1.b, 1u, 38939u))) ^ vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(1u), global3.b), 25173u, 55248u, arg_1.b), _wgslsmith_add_vec4_u32(vec4<u32>(~43687u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.b, 1u, global3.b, global3.b), vec4<u32>(4294967295u, 25790u, 4294967295u, 0u), vec4<bool>(false, true, true, false)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, global3.b, arg_1.b), vec4<u32>(29707u, 53172u, 50717u, arg_1.b))), global3.b, func_4(~vec4<u32>(23613u, 0u, arg_1.b, arg_1.b), arg_2, func_1()).b), ~(min(vec4<u32>(arg_1.b, global3.b, arg_1.b, 0u), vec4<u32>(0u, 25643u, 62449u, 72150u)) | reverseBits(vec4<u32>(0u, 4294967295u, global3.b, 4294967295u)))));
    var_0 = vec4<u32>(countOneBits(max(1u, 49111u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(arg_1.b, arg_1.b, 5378u)), abs(var_0.zzx) & ~var_0.yyx, vec3<u32>(global3.b, max(1u, 7999u), 1u)), _wgslsmith_add_vec3_u32(var_0.zxw ^ vec3<u32>(3650u, 13945u, global3.b), var_0.zxy)), _wgslsmith_sub_u32((~var_0.x >> (1u % 32u)) ^ _wgslsmith_sub_u32(_wgslsmith_clamp_u32(50191u, var_0.x, 48944u), ~var_0.x), 65937u), ~global3.b);
    return firstTrailingBit(vec2<u32>(1u ^ func_1().b, _wgslsmith_mod_u32(~(~var_0.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(abs(_wgslsmith_mult_u32(min(~global3.b, 27147u), global3.b)), _wgslsmith_dot_vec2_u32(func_5(vec3<i32>(1i, global3.a, u_input.a.x) | vec3<i32>(0i, 76739i, 0i), func_4(reverseBits(vec4<u32>(global3.b, 7566u, global3.b, 4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), u_input.a), func_1()), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, 2147483647i, u_input.a.x, global3.a), vec4<i32>(u_input.a.x, 1i, global1.x, -24287i)))), abs(vec2<u32>(4294967295u, ~0u))), ~global3.b);
    global3 = Struct_2(40107i, min(global3.b, _wgslsmith_add_u32(~(~global3.b), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 34229u), var_0), ~37998u))));
    var var_1 = !(!(!vec3<bool>(true, global3.a < -31431i, false)));
    var_1 = !vec3<bool>(true, var_1.x, true);
    let var_2 = func_1();
    let var_3 = Struct_2(firstLeadingBit(u_input.a.x), _wgslsmith_clamp_u32(66079u, 22897u & (~1u >> (_wgslsmith_add_u32(var_0.x, 4294967295u) % 32u)), ~var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b, global0.x, global0.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1154f, _wgslsmith_f_op_f32(f32(-1f) * -129f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_div_f32(684f, 1000f))))));
}

