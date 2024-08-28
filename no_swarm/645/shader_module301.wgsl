struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, 1000f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = !(_wgslsmith_f_op_f32(-1f) == _wgslsmith_f_op_f32(-500f + global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(386f * 649f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * global0.x), 503f));
    var var_1 = Struct_2(Struct_1(select(!(!vec4<bool>(true, var_0, true, true)), select(select(vec4<bool>(false, var_0, false, false), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0)), vec4<bool>(true, false, false, true), !vec4<bool>(true, var_0, false, false)), vec4<bool>(var_0, !var_0, !var_0, !var_0)), vec4<u32>(~108955u, 40287u, ~1u, 1u), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 43584i) >> (1u % 32u)));
    var var_2 = Struct_1(var_1.a.a, ~firstTrailingBit(~vec4<u32>(var_1.a.b.x, 0u, var_1.a.b.x, 1u)), var_1.a.c);
    var var_3 = var_1.a;
    return vec2<bool>(all(vec2<bool>(var_1.a.a.x, var_1.a.a.x)), (global0.x != -801f) | true);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(!(!vec4<bool>(arg_1, false, false, false)), vec4<u32>(countOneBits(~4294967295u), ~_wgslsmith_sub_u32(1u, arg_0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1339u, 1u, 54815u), arg_0.zzx), arg_0.wyy), abs(4294967295u << (arg_0.x % 32u))), 1i));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1761f) - arg_2);
    let var_2 = 1u;
    let var_3 = var_0.a.b.x;
    var var_4 = arg_2;
    return func_3();
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = all(func_2(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(27470u, 4294967295u, 58361u, 4294967295u), vec4<u32>(4294967295u, 1u, arg_0.x, 31308u))) | vec4<u32>(arg_0.x, _wgslsmith_sub_u32(0u, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 19247u, arg_0.x), vec4<u32>(arg_0.x, arg_0.x, 22937u, 26522u)), arg_0.x), false, _wgslsmith_f_op_f32(global0.x + 1221f)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(315f, 551f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(round(global0.x)), all(vec2<bool>(true, var_0)))))));
    let var_1 = Struct_1(!vec4<bool>(select(all(vec4<bool>(true, true, false, var_0)), true, !var_0), false, all(vec4<bool>(var_0, var_0, true, var_0)) && var_0, true), ~(~(~vec4<u32>(4294967295u, 4294967295u, arg_0.x, 19345u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(6561u, arg_0.x, 1473u, 8282u), vec4<u32>(arg_0.x, 28156u, arg_0.x, 11822u)) % vec4<u32>(32u)))), ~max(~(~u_input.a), u_input.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(338f - 1234f), _wgslsmith_f_op_f32(-790f * -239f), _wgslsmith_f_op_f32(abs(global0.x)))))));
    let var_3 = select((min(vec2<u32>(50061u, 1u), ~var_1.b.wx) >> (~min(vec2<u32>(1u, arg_0.x), vec2<u32>(5621u, var_1.b.x)) % vec2<u32>(32u))) << (~arg_0 % vec2<u32>(32u)), ~arg_0, var_1.a.wx);
    return _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-29764i, _wgslsmith_sub_i32(var_1.c, ~2761i), u_input.a), _wgslsmith_mult_vec3_i32(~(vec3<i32>(u_input.a, 2147483647i, 25117i) & vec3<i32>(u_input.a, var_1.c, 16057i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, var_1.c, u_input.a), vec3<i32>(1i, u_input.a, 20316i)) << (~vec3<u32>(var_3.x, var_1.b.x, 1u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_i32(max(abs(vec3<i32>(var_1.c, u_input.a, -44412i) << (var_1.b.xzx % vec3<u32>(32u))), ~vec3<i32>(-36421i, 7881i, 0i)), vec3<i32>(~1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(31682i, u_input.a, u_input.a, var_1.c), vec4<i32>(var_1.c, 0i, var_1.c, u_input.a)), abs(abs(1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -525f), global0.x)));
    let var_1 = all(vec4<bool>(!(14156i <= u_input.a), false, false || all(vec3<bool>(true, true, true)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_2 = _wgslsmith_add_vec3_i32(-vec3<i32>(0i, select(~0i, -2147483647i, var_1), -2147483647i), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(func_1(~vec2<u32>(4294967295u, 26532u)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, -2147483647i), ~vec3<i32>(2147483647i, -2147483647i, u_input.a))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a, ~u_input.a))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 749f) + vec2<f32>(279f, -1030f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1326f, global0.x), vec2<f32>(-255f, global0.x), vec2<bool>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, global0.x))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -764f), var_0) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1276f, var_0))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, var_0))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)), vec2<f32>(_wgslsmith_f_op_f32(min(-1651f, -669f)), _wgslsmith_f_op_f32(579f * global0.x))))));
    let var_3 = var_1;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-1000f * global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-898f)), _wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(-global0.x)), all(!(!vec3<bool>(false, var_3, var_3))))));
    var var_4 = -vec4<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(var_2.x, var_2.x)), ~(~1i), 43361i, u_input.a) & (vec4<i32>(-1i) * -(vec4<i32>(u_input.a, -65074i, 28224i, var_2.x) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, -42285i, -30037i, var_2.x), vec4<i32>(u_input.a, var_4.x, u_input.a, var_2.x)), vec4<i32>(0i, 57137i, 2147483647i, u_input.a)) | vec4<i32>(var_2.x, var_2.x, var_4.x, -54019i ^ u_input.a)), reverseBits(var_4.wzy) ^ -_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(var_4.x, -2147483647i, u_input.a)), -var_4.xzw));
}

