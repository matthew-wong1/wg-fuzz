struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 18345i, vec2<u32>(0u, 0u), 1280f, 0i);

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    var var_0 = firstTrailingBit(i32(-1i) * -29844i);
    let var_1 = vec3<u32>(_wgslsmith_sub_u32((arg_0.c.x | arg_3) >> (34069u % 32u), arg_2), _wgslsmith_mult_u32(firstTrailingBit(0u), ~0u & _wgslsmith_div_u32(arg_3, u_input.a)) & arg_1.a, u_input.a);
    let var_2 = vec2<bool>(true, true);
    let var_3 = !select(vec3<bool>(var_2.x, var_2.x, any(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x), true))), vec3<bool>(all(vec4<bool>(true, false, var_2.x, var_2.x)) != all(vec3<bool>(var_2.x, var_2.x, true)), all(vec3<bool>(false, var_2.x, true)), false), !vec3<bool>(var_2.x & true, var_2.x || var_2.x, !var_2.x));
    var var_4 = 1i;
    return 34186u;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.d, -2408f)), _wgslsmith_f_op_f32(arg_3.d + global0.d)))), -414f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + global0.d), _wgslsmith_div_f32(-1000f, arg_1), any(vec2<bool>(arg_0.x, arg_0.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.d)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d) - _wgslsmith_f_op_f32(-global0.d)), 122f), -1000f, -297f, _wgslsmith_f_op_f32(max(global0.d, 351f))));
    let var_1 = 269f;
    let var_2 = var_0.xxy;
    var var_3 = -208f;
    global0 = Struct_1(_wgslsmith_mod_u32(9604u, 4294967295u), arg_3.e, u_input.b.yx, 119f, 0i);
    return firstTrailingBit(1i);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = select(vec4<bool>(any(vec3<bool>(all(arg_3), all(vec3<bool>(true, arg_3.x, arg_3.x)), !arg_3.x)), u_input.b.x >= _wgslsmith_div_u32(arg_1.x, arg_1.x), arg_3.x, (arg_1.x < _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_2.c.x, u_input.b.x, 39997u))) | true), !select(select(vec4<bool>(arg_3.x, arg_3.x, false, false), select(arg_3, arg_3, vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)), false), !arg_3, !arg_3), true);
    global0 = global1[_wgslsmith_index_u32(1u, 14u)];
    global0 = global1[_wgslsmith_index_u32(52315u, 14u)];
    global1 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.d)))))));
    return Struct_1((~global0.a | arg_1.x) | 1u, 0i >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_1.yz, global0.c >> (arg_2.c % vec2<u32>(32u))), arg_1.x) % 32u), firstTrailingBit(vec2<u32>(global0.c.x, 39701u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-176f, var_1.x, true)))), var_1.x), abs(-_wgslsmith_dot_vec2_i32(abs(vec2<i32>(16063i, -18077i)), vec2<i32>(12502i, 46425i))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = vec2<bool>(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), false)), true || !(!(496f < global0.d)));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yx))));
    let var_2 = func_4(~7825i, _wgslsmith_add_vec4_u32(~vec4<u32>(reverseBits(u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, global0.a), ~55333u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.a, u_input.a, u_input.a), vec4<u32>(4294967295u, global0.c.x, 41747u, 22248u))), vec4<u32>(abs(global0.a), 10278u, max(u_input.a, 1u), ~global0.c.x)), Struct_1(global0.c.x & countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(6419u, 4294967295u), vec2<u32>(u_input.a, 1u))), global0.b, firstLeadingBit(vec2<u32>(~global0.a, func_2(Struct_1(u_input.a, global0.e, vec2<u32>(global0.c.x, 0u), -492f, 9436i), Struct_1(1u, 57350i, u_input.b.zz, var_1.x, -2147483647i), 0u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -2451f)), -(~func_3(vec2<bool>(var_0.x, true), var_1.x, vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 0u), global1[_wgslsmith_index_u32(1u, 14u)]))), vec4<bool>(true, true, true, true));
    let var_3 = -min(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -1i), vec2<i32>(-8488i, var_2.e)), -2147483647i), -1299i);
    var var_4 = Struct_1(4294967295u, _wgslsmith_sub_i32(var_2.e, -(-var_2.e << (~55622u % 32u))), u_input.b.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -829f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, var_1.x))))), var_3);
    return vec4<bool>(!var_0.x, var_0.x, false, !(-488f < global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, ~u_input.b.x), _wgslsmith_add_u32(~global0.a, global0.a)), 14u)];
    global1 = array<Struct_1, 14>();
    var var_0 = all(!select(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, global0.d, global0.d) - vec3<f32>(724f, -326f, global0.d))), vec4<bool>(all(vec3<bool>(true, false, false)), true, 45683u == global0.c.x, func_1(vec3<f32>(global0.d, 528f, -1250f)).x), true));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(global0.e, -1i, -44741i, global0.b)), vec4<i32>(global0.b, _wgslsmith_div_i32(global0.e, global0.b), _wgslsmith_div_i32(-51243i, global0.e), -2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(1i << (global0.c.x % 32u), 1i, countOneBits(global0.b)), _wgslsmith_mult_i32(0i, global0.e), global0.b, abs(-26170i))), ~(-(vec4<i32>(global0.b, 1i, global0.e, -12413i) << (select(vec4<u32>(15848u, 4294967295u, 0u, 65343u), vec4<u32>(0u, 0u, 4294967295u, global0.a), vec4<bool>(true, false, false, true)) % vec4<u32>(32u)))));
    let var_2 = vec4<u32>(~select(~(u_input.a | global0.c.x), abs(49189u), true), 1u, firstTrailingBit(~abs(global0.c.x) | ~0u), countOneBits(_wgslsmith_sub_u32(32768u, ~global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(74280u, vec4<u32>((~29739u ^ _wgslsmith_dot_vec2_u32(var_2.xx, vec2<u32>(0u, var_2.x))) | max(global0.c.x, _wgslsmith_mod_u32(var_2.x, 8985u)), u_input.b.x, _wgslsmith_mod_u32(~1u, 2462u), 87980u));
}

