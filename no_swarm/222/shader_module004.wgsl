struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -426f;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(select(2147483647i, -56761i, !(arg_0.x && false)), ~abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a, -10652i, u_input.b), global1.b), abs(vec3<i32>(global1.a, global1.c, -24181i)), vec3<bool>(false, true, arg_0.x))), u_input.b, select(abs(abs(global1.d)), (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 45577u, u_input.a.x, arg_1), vec4<u32>(1u, arg_1, global1.d.x, global1.d.x)) ^ select(global1.d, global1.d, vec4<bool>(false, arg_0.x, true, arg_0.x))) & (~vec4<u32>(1u, u_input.a.x, 4294967295u, 0u) << ((global1.d & global1.d) % vec4<u32>(32u))), vec4<bool>(!arg_0.x, select(any(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), arg_0.x, false), any(!vec2<bool>(arg_0.x, arg_0.x)), true)));
    var var_1 = Struct_1(12478i, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, firstLeadingBit(-27703i), 1i) | abs(var_0.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c, var_0.c), var_0.b), vec3<i32>(-37893i, u_input.b, u_input.c), ~vec3<i32>(global1.b.x, global1.b.x, u_input.c)), max(global1.b, vec3<i32>(-13764i, u_input.c, var_0.a)) >> (global1.d.wzz % vec3<u32>(32u)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.a, var_0.b.x, global1.c), global1.b, vec3<i32>(var_0.b.x, global1.b.x, 27978i)), abs(vec3<i32>(-2147483647i, var_0.a, 1i))))), ~u_input.b, vec4<u32>(~_wgslsmith_div_u32(global1.d.x, 455u), ~(~(~1u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.d.x, 4294967295u), firstLeadingBit(22052u)) | 0u, 1u & (~u_input.a.x ^ reverseBits(arg_1))));
    var var_2 = vec2<f32>(1065f, -1000f);
    var var_3 = 13370i;
    global0 = -109f;
    return var_1.b.x >> (5275u % 32u);
}

fn func_2() -> i32 {
    global1 = global2[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -695f), -1000f, _wgslsmith_f_op_f32(step(-375f, 1577f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(1059f + -1458f)))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1127f)), _wgslsmith_f_op_f32(1198f * -1673f), 23891u == global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1887f, -625f)) * _wgslsmith_f_op_f32(897f * -100f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(270f, -540f)), _wgslsmith_f_op_f32(849f - 829f)))));
    let var_1 = global2[_wgslsmith_index_u32(~global1.d.x, 10u)];
    var var_2 = ~_wgslsmith_dot_vec3_i32(-(~max(var_1.b, vec3<i32>(-896i, -50032i, var_1.c))), _wgslsmith_mult_vec3_i32(global1.b, _wgslsmith_add_vec3_i32(vec3<i32>(15081i, var_1.b.x, -48292i), global1.b) ^ vec3<i32>(-2147483647i, 2147483647i, global1.a)));
    let var_3 = Struct_1((firstTrailingBit(_wgslsmith_mod_i32(global1.c, -52304i)) & func_3(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), global1.d.x)) << (var_1.d.x % 32u), _wgslsmith_mult_vec3_i32(abs(var_1.b), min(vec3<i32>(global1.b.x, u_input.c, -6250i) | var_1.b, ~(vec3<i32>(2147483647i, -1i, 1i) & vec3<i32>(global1.c, global1.a, var_1.a)))), ~global1.a, firstTrailingBit(abs(global1.d)) & countOneBits(var_1.d));
    return max(_wgslsmith_add_i32(23561i, max(global1.a, _wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(u_input.b, var_3.c)))), _wgslsmith_div_i32(35237i, u_input.b));
}

fn func_1(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(global1.a), ~func_2(), 0i) << (~(~u_input.a) % vec3<u32>(32u)), ~(global1.b ^ (_wgslsmith_sub_vec3_i32(global1.b, global1.b) << (~global1.d.zyw % vec3<u32>(32u)))), vec3<i32>(u_input.b, u_input.c, _wgslsmith_sub_i32(max(global1.b.x | u_input.b, ~u_input.b), -(i32(-1i) * -17578i))));
    var_0 = ~(-global1.b);
    global0 = _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1351f)), -778f)), 848f)), _wgslsmith_f_op_f32(f32(-1f) * -105f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2194f))), -889f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = vec3<i32>(max(51156i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b >> (30788u % 32u), ~(-1i), global1.a), _wgslsmith_mult_vec4_i32(~vec4<i32>(global1.c, var_0.x, -3976i, var_0.x), reverseBits(vec4<i32>(-11335i, u_input.c, u_input.c, global1.b.x))))), countOneBits(_wgslsmith_div_i32(~(-19150i), _wgslsmith_mult_i32(~(-54364i), global1.a))), func_2());
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -604f))) * -537f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) - var_1.x) * var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 10>();
    var var_0 = -global1.b.xz;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1573f * _wgslsmith_f_op_f32(round(-352f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(516f * 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, u_input.a.x))))) != _wgslsmith_f_op_f32(round(-1417f));
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), true), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))) && true, any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)))), all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)));
    global1 = global2[_wgslsmith_index_u32(~u_input.a.x, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(-4310i);
}

