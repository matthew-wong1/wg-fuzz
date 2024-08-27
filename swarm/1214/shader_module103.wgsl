struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 15>;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, i32(-2147483648), -21066i, -27329i), vec4<i32>(-6648i, 23007i, i32(-2147483648), 1i), vec4<i32>(-1i, 1i, 21065i, -10153i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = max(select(vec2<u32>(u_input.a, 41142u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global0.b, 78242u), vec2<u32>(16111u, global0.b)), ~vec2<u32>(4294967295u, ~4294967295u), vec2<bool>(false, select(any(vec4<bool>(true, false, false, false)), any(vec2<bool>(true, false)), true))), ~(~vec2<u32>(global0.b, global0.b)) & select(countOneBits(vec2<u32>(1u, u_input.a)), ~max(vec2<u32>(global0.b, global0.b), vec2<u32>(29513u, u_input.a)), select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    let var_1 = var_0;
    let var_2 = 63185u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 1226f) * _wgslsmith_f_op_f32(trunc(714f)));
    let var_4 = ~vec4<u32>(~abs(var_0.x), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(global0.b, var_2), 1u), 51176u, var_1.x);
    return max(vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_sub_i32(28722i, 1i), 1i), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -31097i), vec2<i32>(0i, 28919i)), -2147483647i, i32(-1i) * -13416i), ~(-12845i)), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(-2147483647i, -11713i, 2147483647i)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = abs(select(abs(vec4<u32>(65807u, 4294967295u, global0.b, global0.b)) & ~(vec4<u32>(arg_0, global0.b, 44142u, arg_0) | vec4<u32>(global0.b, global0.b, arg_0, 6484u)), abs(~vec4<u32>(51758u, 79390u, 1u, 20343u) ^ (vec4<u32>(31006u, arg_0, arg_0, arg_0) >> (vec4<u32>(arg_0, arg_0, 1974u, 119753u) % vec4<u32>(32u)))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true))));
    var var_1 = ~func_3();
    var_0 = firstTrailingBit(vec4<u32>(0u, arg_0 & 1u, _wgslsmith_mod_u32(~min(4294967295u, var_0.x), global0.b), u_input.a));
    return ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0) >> (~vec2<u32>(global0.b, global0.b) % vec2<u32>(32u)), ~var_0.yw >> (var_0.ww % vec2<u32>(32u))) << (firstTrailingBit(_wgslsmith_sub_u32(14634u, ~global0.b)) % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(~func_2(1u), max(reverseBits(81732u), countOneBits(u_input.a))), vec2<u32>(4294967295u | (1240u >> (global0.b % 32u)), _wgslsmith_clamp_u32(arg_0, ~arg_0, ~58935u))));
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(10237u, 1u), vec2<u32>(21408u, arg_2.b)))), ~(~abs(4294967295u)), reverseBits(arg_1.b)), ~max(~vec3<u32>(0u, arg_1.b, arg_0), select(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b, 43998u, 48673u), vec3<u32>(32197u, 0u, u_input.a)), vec3<u32>(4294967295u, arg_1.b, 43969u) & vec3<u32>(arg_0, 4294967295u, 0u), any(vec3<bool>(true, true, false)))));
    global1 = _wgslsmith_add_u32(u_input.a, min(abs(abs(arg_1.b)) << (~arg_2.b % 32u), ~arg_2.b));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -333f);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(0u, 15u)];
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(205f, 823f, 454f, -586f), vec4<f32>(479f, global0.a.x, 460f, 999f), false)), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))))), ~(~_wgslsmith_sub_u32(reverseBits(1u), ~global0.b)));
    global2 = array<Struct_1, 15>();
    global1 = ~global0.b;
    global0 = func_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), countOneBits(vec2<u32>(0u, var_0.b))) | _wgslsmith_sub_u32(global0.b, u_input.a), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), ~(~(~1u))));
    global0 = func_1(~0u, func_1(var_0.b, func_1(_wgslsmith_sub_u32(4294967295u, 25672u), func_1(89819u, func_1(u_input.a, global2[_wgslsmith_index_u32(51367u, 15u)], global2[_wgslsmith_index_u32(76852u, 15u)]), func_1(31418u, Struct_1(var_0.a, var_0.b), Struct_1(global0.a, u_input.a))), Struct_1(global0.a, ~var_0.b)), global2[_wgslsmith_index_u32(4294967295u, 15u)]), Struct_1(var_0.a, reverseBits(select(var_0.b, 26302u, true))));
    global3 = array<vec4<i32>, 3>();
    var var_1 = func_1(1u, global2[_wgslsmith_index_u32(var_0.b, 15u)], func_1(87483u, func_1(4294967295u, global2[_wgslsmith_index_u32(~(~14678u), 15u)], Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, var_0.a.x, global0.a.x, -1242f))), 43603u)), var_0));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.a)))))), max((var_0.b ^ 61950u) << (0u % 32u), ~64261u) << (~56153u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(~(u_input.a << (~1u % 32u)), 59102u, 115308u));
}

