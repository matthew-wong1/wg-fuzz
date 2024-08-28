struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<f32>(-2292f, 2613f, 401f, -2299f)), Struct_2(vec4<f32>(-323f, -1259f, -114f, -1034f)), Struct_2(vec4<f32>(-1071f, -1139f, 112f, -954f)), Struct_2(vec4<f32>(2355f, 1266f, 2470f, 1885f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    return !any(vec4<bool>(true, true, true, true));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global0 = array<Struct_2, 4>();
    let var_0 = select(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e, u_input.a, u_input.a, u_input.e), vec4<i32>(u_input.e, u_input.e >> (u_input.d % 32u), i32(-1i) * -12147i, 3817i)), min(vec4<i32>(countOneBits(4577i), 73332i, u_input.a, u_input.e), -abs(vec4<i32>(16574i, -38616i, u_input.a, u_input.e)))), max(-vec4<i32>(u_input.e, u_input.e, 57462i, -19847i) & firstTrailingBit(vec4<i32>(u_input.a, 17133i, 1i, u_input.e)), vec4<i32>(-u_input.e, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-16815i, u_input.e, u_input.e >> (u_input.b % 32u), 20423i)), true);
    var var_1 = !vec4<bool>(arg_0.a.x, true, !all(arg_0.a.yw) | false, false);
    var var_2 = var_0.xzy;
    let var_3 = reverseBits(select(~(firstTrailingBit(var_0) ^ var_0), vec4<i32>(2147483647i, abs(-1i), abs(8190i) << ((u_input.c.x << (4294967295u % 32u)) % 32u), -13337i), select(vec4<bool>(var_1.x, true, true, -74641i == u_input.a), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, var_1.x, true), select(arg_0.a, vec4<bool>(true, false, arg_0.a.x, false), true)), all(vec3<bool>(false, false, arg_0.a.x)))));
    return Struct_1(select(vec4<bool>(false, arg_0.a.x | true, !func_2(vec3<u32>(16992u, 1u, 37725u)), arg_0.a.x), vec4<bool>(false, any(!arg_0.a), false, !(var_1.x || true)), !arg_0.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    let var_0 = -30309i;
    global0 = array<Struct_2, 4>();
    let var_1 = func_3(Struct_1(vec4<bool>(all(vec2<bool>(true, false)) & all(vec3<bool>(true, true, true)), !func_2(vec3<u32>(0u, u_input.d, 4294967295u)), any(vec4<bool>(true, true, true, true)), true)));
    var var_2 = var_1.a.x;
    let var_3 = countOneBits(vec3<i32>(select(u_input.e, _wgslsmith_div_i32(u_input.e, var_0), true), u_input.a, 2147483647i)) & vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_0, 0i), -countOneBits(vec2<i32>(1094i, 0i))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(u_input.a, 46035i), vec2<i32>(2147483647i, var_0), var_1.a.zx), ~vec2<i32>(var_0, var_0)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -1274i), vec2<i32>(u_input.e, 65054i)), vec2<i32>(u_input.a, u_input.e) | vec2<i32>(16590i, 24123i))), countOneBits(select(1i, reverseBits(-1i), true)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 22811i;
    var var_1 = vec3<i32>(u_input.e, _wgslsmith_div_i32(~(~33473i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-8127i, u_input.e, var_0), -vec3<i32>(u_input.a, var_0, 2147483647i)), ~35449i)), func_1(global0[_wgslsmith_index_u32(~abs(u_input.b), 4u)], ~(~(~vec3<u32>(1u, u_input.c.x, u_input.d)))));
    let var_2 = Struct_1(select(select(select(func_3(Struct_1(vec4<bool>(true, true, false, true))).a, vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), (false | all(vec3<bool>(false, false, true))) & all(vec3<bool>(true, true, true))));
    var_1 = vec3<i32>(u_input.e, -var_1.x, min(countOneBits(~(~u_input.e)), countOneBits(select(0i, 1303i, var_1.x < var_1.x))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1235f, 654f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-161f, _wgslsmith_f_op_f32(1339f - -724f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(896f + -652f)), (var_1.x >= 60984i) & any(var_2.a.yz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-258f, -137f), _wgslsmith_f_op_f32(max(975f, 811f)), var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-544f, 1284f))), true)));
    var var_4 = var_2;
    var_1 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, ~(var_1.x & u_input.e), -2147483647i), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(-1i, 94074i, var_0) ^ vec3<i32>(var_0, -44712i, 1i)), vec3<i32>(max(-1i, 2147483647i), -var_1.x, var_1.x), ~(-vec3<i32>(35184i, u_input.e, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 4294967295u, 1u, 0u)), ~vec4<u32>(u_input.d, 23934u, 37302u, 9877u))), _wgslsmith_mod_vec4_u32(countOneBits(reverseBits(vec4<u32>(u_input.d, 1u, u_input.c.x, u_input.c.x))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(39867u, u_input.d, 4294967295u, u_input.c.x), vec4<u32>(u_input.d, 1u, 78361u, u_input.c.x), vec4<u32>(u_input.c.x, 13697u, u_input.c.x, u_input.d)))), _wgslsmith_dot_vec3_i32(min(firstTrailingBit(vec3<i32>(1i, 65598i, u_input.e)), vec3<i32>(var_0, var_1.x, 48312i) << (vec3<u32>(u_input.d, 67136u, u_input.d) % vec3<u32>(32u))) & ~min(vec3<i32>(-8033i, u_input.e, -2147483647i), vec3<i32>(var_1.x, -65397i, -31129i)), vec3<i32>(var_1.x, _wgslsmith_sub_i32(-1i, firstTrailingBit(8066i)), ~_wgslsmith_div_i32(var_0, -2147483647i))), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 1u, u_input.d, u_input.b)), vec4<u32>(_wgslsmith_mult_u32(0u, 2939u), u_input.c.x, u_input.d, _wgslsmith_mod_u32(4294967295u, u_input.b))), _wgslsmith_f_op_f32(round(-823f)));
}

