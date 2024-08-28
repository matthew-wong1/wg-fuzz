struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(490f, 296f, 1024f), i32(-2147483648), 671u, vec2<i32>(-16924i, 1i), 0i);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(654f, -636f, 353f), 0i, 16729u, vec2<i32>(-27568i, 2221i), -59801i);

var<private> global2: array<vec4<u32>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_0.a, -25746i, u_input.a.x, _wgslsmith_clamp_vec2_i32(-arg_3.d, vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, arg_0.d.x, arg_0.b), vec3<i32>(-26056i, arg_3.d.x, 18961i))), u_input.b), abs(var_0.d)), (-1i ^ ((u_input.b << (90410u % 32u)) & 1i)) ^ abs(_wgslsmith_add_i32(u_input.b, arg_3.d.x)));
    global2 = array<vec4<u32>, 7>();
    global2 = array<vec4<u32>, 7>();
    global0 = arg_0;
    return var_0.d << (vec2<u32>(global1.c, var_1.c) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-825f, _wgslsmith_f_op_f32(max(311f, arg_1.a.x)), arg_0.a.x))), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(global0.d.x, arg_1.d.x)), func_3(arg_0, 0i, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), true), arg_0)) << (_wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.a.zx) % 32u), ~_wgslsmith_dot_vec2_u32(u_input.a.xx, ~vec2<u32>(arg_1.c, 4294967295u)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(arg_2, 37233i) | arg_1.d), _wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(arg_1.b, u_input.b)), vec2<i32>(u_input.b, u_input.b))) | vec2<i32>(arg_2, 7213i), 2147483647i);
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, true))) | !all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) | true, !(!(firstLeadingBit(4294967295u) < arg_1.c)));
    var var_2 = select(vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(all(select(vec2<bool>(true, var_1.x), var_1.xy, var_1.x)), var_1.x, false), !vec3<bool>(var_1.x, var_1.x, all(var_1.yz)), false), vec3<bool>(true, arg_1.c >= ~arg_0.c, (_wgslsmith_f_op_f32(step(444f, -874f)) <= _wgslsmith_div_f32(-1000f, var_0.a.x)) & false));
    var_2 = select(vec3<bool>(any(!vec2<bool>(var_1.x, var_1.x)), true, var_2.x), select(select(vec3<bool>(arg_0.a.x > global1.a.x, all(vec4<bool>(var_1.x, var_2.x, true, var_1.x)), true), vec3<bool>(var_1.x | false, var_2.x, false), !any(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, false), false), !vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_1.x)), vec3<bool>(var_2.x, true, global1.a.x <= 779f), var_1.x), any(vec3<bool>(true, var_2.x, true)) & true), false);
    var var_3 = select(!vec4<bool>(-arg_1.b <= (var_0.e >> (global0.c % 32u)), !var_2.x, true | (var_1.x && true), false), !select(!(!vec4<bool>(var_2.x, var_2.x, false, false)), !select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, false), var_1.x), !vec4<bool>(var_1.x, var_1.x, false, false)), true);
    return vec2<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~global1.c, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xz), ~0u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19543u, arg_1.c), vec2<u32>(var_0.c, global0.c)), ~var_0.c), 7u)]), ~1u), 0u);
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    var var_0 = true;
    global2 = array<vec4<u32>, 7>();
    var var_1 = ~_wgslsmith_dot_vec2_u32(min((u_input.a.yz | u_input.a.xx) ^ max(vec2<u32>(global0.c, 4294967295u), u_input.a.xy), vec2<u32>(firstTrailingBit(global0.c), _wgslsmith_mult_u32(global0.c, global1.c))), func_2(arg_0, arg_0, global0.b));
    let var_2 = true;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f))))));
    var_0 = 0u;
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.xzy), 0i, reverseBits(global0.c), reverseBits(global1.d), u_input.b))), global1.a.x, global0.a.x), i32(-1i) * -(i32(-1i) * -2147483647i), _wgslsmith_add_u32(0u ^ reverseBits(u_input.a.x), u_input.a.x), global0.d ^ -vec2<i32>(_wgslsmith_dot_vec2_i32(global1.d, global1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, global0.e, 2147483647i, u_input.b), vec4<i32>(global1.d.x, u_input.b, -1i, -1i))), -global1.b);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.a, var_1.ywy))), global1.e & -(i32(-1i) * -54230i), global1.c >> (1u % 32u), _wgslsmith_add_vec2_i32(vec2<i32>(min(global0.b | -22486i, _wgslsmith_mult_i32(-38197i, -1i)), -1i), -(~global0.d) | vec2<i32>(global0.d.x ^ u_input.b, 4997i)), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, max(select(0i, global1.b, false), global1.b)), reverseBits(2147483647i)));
    let var_3 = ~(~countOneBits(~_wgslsmith_mod_u32(44230u, global1.c)));
    let var_4 = !select(vec3<bool>(true, false, !any(vec4<bool>(false, true, false, false))), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a | max(vec3<u32>(~24682u, u_input.a.x, 16398u), u_input.a), _wgslsmith_dot_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_2.e), vec3<i32>(1i, 21092i, -18197i))), vec3<i32>(i32(-1i) * -696i, -10622i | global1.e, min(41210i, 0i))), _wgslsmith_f_op_f32(351f - 1f), -1i, global1.a.x);
}

