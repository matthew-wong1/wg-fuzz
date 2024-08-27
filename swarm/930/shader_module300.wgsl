struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<u32, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = Struct_1(min(_wgslsmith_add_u32(max(global0.a, reverseBits(global0.a)), _wgslsmith_div_u32(global0.a, 39642u)), ~1u & u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(161f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-134f, 423f) - global0.d))), ~(~(firstTrailingBit(-1i) & (19562i << (arg_1.a % 32u)))), -1063f);
    let var_1 = select(!vec4<bool>(!(global0.b.x < 2583f), arg_0.x, arg_0.x, _wgslsmith_add_u32(1u, 42692u) >= _wgslsmith_dot_vec2_u32(arg_2.xw, arg_2.zw)), vec4<bool>(any(arg_0), arg_0.x, arg_0.x, true), all(!vec2<bool>(select(true, false, true), all(arg_0))));
    global1 = all(vec2<bool>(!var_1.x, var_1.x));
    var var_2 = arg_1;
    var var_3 = 0u;
    return arg_1.c;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.b + global0.b))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 1i), u_input.d.x), global0.b.x);
    global0 = Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(1u, 32u)] >> ((u_input.a.x | global0.a) % 32u), max(u_input.c, u_input.a.x), 49986u ^ _wgslsmith_div_u32(43372u, global2[_wgslsmith_index_u32(4294967295u, 32u)])) | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<u32>(1u, global0.a) >> (vec2<u32>(global0.a, global2[_wgslsmith_index_u32(40373u, 32u)]) % vec2<u32>(32u))), ~abs(vec2<u32>(0u, global2[_wgslsmith_index_u32(global0.a, 32u)]))), 32u)], _wgslsmith_f_op_vec2_f32(step(vec2<f32>(609f, _wgslsmith_f_op_f32(-1071f - _wgslsmith_f_op_f32(abs(global0.d)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.b))))), ~(~(-2147483647i)), 887f);
    var var_0 = 17003i;
    var var_1 = _wgslsmith_dot_vec4_i32(~firstLeadingBit(~firstLeadingBit(vec4<i32>(-2147483647i, 1i, 8564i, u_input.d.x))), vec4<i32>(u_input.d.x, ~global0.c, func_3(vec3<bool>(false, true, true), Struct_1(~u_input.c, vec2<f32>(1021f, global0.b.x), min(global0.c, 1i), global0.b.x), ~vec4<u32>(u_input.c, global0.a, global0.a, 4528u)), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, global0.c, 19399i, global0.c)), vec4<i32>(u_input.d.x, 1i, u_input.d.x, global0.c))));
    let var_2 = 4294967295u;
    return Struct_2(all(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(global0.a >= 44160u, all(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(true, false, true))), !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.d, global0.b.x))))) + _wgslsmith_f_op_f32(exp2(global0.b.x))), global0.b.x);
}

fn func_4(arg_0: Struct_2) -> f32 {
    global1 = !(select(u_input.a.x, abs(1u), arg_0.a) > ~abs(27529u | u_input.c));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(max(reverseBits(vec4<u32>(global0.a, 1u, 1u, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(u_input.c, 32u)], global0.a, u_input.c), vec4<u32>(global0.a, global2[_wgslsmith_index_u32(31507u, 32u)], global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]))), max((vec4<u32>(1u, 10918u, global2[_wgslsmith_index_u32(7418u, 32u)], u_input.a.x) >> (vec4<u32>(35712u, u_input.a.x, 1u, u_input.c) % vec4<u32>(32u))) & vec4<u32>(12480u, 4294967295u, 81483u, 16114u), abs(vec4<u32>(23877u, global0.a, 24739u, 33521u)) << (vec4<u32>(u_input.c, 4294967295u, global0.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16679u, 32u)], 32u)]) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d, arg_0.c)) * 718f), 1403f)), _wgslsmith_sub_i32(max(1i, ~(i32(-1i) * -27128i)), 1i), -835f);
    var var_0 = all(vec3<bool>(any(!(!vec4<bool>(false, false, false, arg_0.a))), select(false, all(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a))), !select(arg_0.a, false, false)), false));
    global2 = array<u32, 32>();
    var var_1 = any(select(vec3<bool>(false, arg_0.a, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_0.a, arg_0.a), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), !vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(arg_0.a && arg_0.a, !arg_0.a, true)), !(!select(vec3<bool>(arg_0.a, false, true), vec3<bool>(arg_0.a, true, arg_0.a), false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(floor(arg_0.c)), true)) * _wgslsmith_f_op_f32(-arg_0.c));
}

fn func_1() -> f32 {
    global0 = Struct_1(2846u, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b.x))), -1309f), u_input.b.x, _wgslsmith_f_op_f32(global0.b.x - global0.d));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(614f * _wgslsmith_f_op_f32(select(global0.d, global0.b.x, all(vec4<bool>(true, true, false, false))))), global0.d, 1446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1205f, global0.d) + _wgslsmith_f_op_f32(global0.d + global0.b.x))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2())), _wgslsmith_f_op_f32(max(450f, var_0.x)));
    global2 = array<u32, 32>();
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = _wgslsmith_f_op_f32(-843f - -1068f);
    var var_1 = Struct_2(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))), 1175f);
    global0 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 32u)], vec2<f32>(-1007f, -286f), _wgslsmith_mult_i32(u_input.b.x, -(-25051i | (global0.c >> (23162u % 32u)))), -267f);
    var_1 = Struct_2(!all(select(!vec3<bool>(true, true, var_1.a), vec3<bool>(var_1.a, true, false), select(vec3<bool>(true, true, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1000f);
    let var_2 = Struct_2(true, 317f, _wgslsmith_f_op_f32(-global0.d));
    var_0 = 418f;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global2[_wgslsmith_index_u32(min(countOneBits(58151u), max(33084u, 23248u)), 32u)]), vec4<i32>(-func_3(select(vec3<bool>(var_1.a, true, true), vec3<bool>(var_2.a, true, var_2.a), var_1.a), Struct_1(global2[_wgslsmith_index_u32(1u, 32u)], vec2<f32>(-1544f, var_2.b), global0.c, 1985f), ~vec4<u32>(global2[_wgslsmith_index_u32(24994u, 32u)], u_input.a.x, global0.a, 21182u)), ~(-_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global0.c, 33966i, -18441i))), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c, -2147483647i, u_input.d.x, -63996i), abs(vec4<i32>(78364i, u_input.d.x, -6769i, 2147483647i))), u_input.b.x & ~global0.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.b.x, -1i, max(u_input.d.x, u_input.d.x), -1i), ~reverseBits(vec4<i32>(u_input.b.x, global0.c, global0.c, u_input.b.x)))), vec3<i32>(global0.c, _wgslsmith_add_i32(global0.c, 2457i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 31811i, u_input.b.x) ^ vec4<i32>(1i, global0.c, -31676i, 32988i), vec4<i32>(u_input.b.x, global0.c, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.d.x, -1369i, u_input.b.x, 18290i)), select(vec4<i32>(u_input.d.x, -2147483647i, global0.c, 1i) << (vec4<u32>(global0.a, 19478u, global0.a, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(-63172i, -20372i, global0.c, -2147483647i), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1223f, global0.d, -751f, -978f)), vec4<f32>(221f, -1634f, var_1.b, -160f)))))));
}

