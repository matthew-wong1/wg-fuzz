struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(11791i), Struct_1(38419i), Struct_1(2147483647i), Struct_1(-1i), Struct_1(20724i), Struct_1(25600i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    return u_input.a;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    global0 = ~(~select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, global0.x, global0.x), vec4<u32>(u_input.a, global0.x, 4294967295u, 66706u)), vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, u_input.a, ~u_input.a), false));
    let var_0 = min(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.a, global0.x), ~global0.wxw), _wgslsmith_sub_u32(~1966u, _wgslsmith_mod_u32(3426u, u_input.a)), ~1u, ~u_input.a), select(select(vec4<u32>(u_input.a, 0u, global0.x, 20680u), ~vec4<u32>(1u, global0.x, u_input.a, 1u), vec4<bool>(false, false, false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 35734u, 0u, 59465u) & vec4<u32>(19554u, 52446u, global0.x, 0u), ~vec4<u32>(11732u, 60574u, u_input.a, global0.x)), select(arg_0 == arg_1.x, true, any(vec4<bool>(false, true, false, true))))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 24961u, global0.x, 4294967295u) & vec4<u32>(1u, global0.x, 4294967295u, 34300u), select(vec4<u32>(u_input.a, 76186u, 74682u, u_input.a), vec4<u32>(u_input.a, global0.x, global0.x, 11156u), true)), vec4<u32>(global0.x, 0u, global0.x, u_input.a) >> (abs(vec4<u32>(10813u, u_input.a, global0.x, u_input.a)) % vec4<u32>(32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec2<bool>(true, false)))) ^ ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 37599u, u_input.a, 72003u), ~vec4<u32>(u_input.a, 4294967295u, 1u, global0.x)));
    let var_1 = Struct_2(u_input.b.xz, Struct_1(~arg_1.x), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(select(701f, 256f, true))))) * _wgslsmith_f_op_f32(1000f + 1f)), ~global0.x);
    var var_2 = var_1.b;
    global0 = ~vec4<u32>(_wgslsmith_clamp_u32(1u, ~u_input.a, 24115u), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(1u, global0.x, var_1.e), ~global0.xwy), ~(~vec3<u32>(u_input.a, global0.x, 70177u))), firstTrailingBit(~_wgslsmith_mult_u32(var_0.x, var_0.x)), var_1.e);
    return -426f;
}

fn func_1(arg_0: f32) -> Struct_3 {
    global0 = vec4<u32>(~(~(~firstTrailingBit(u_input.a))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~1u, global0.x), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(global0.x, 59045u, global0.x)), ~global0.zzw)), ~firstLeadingBit(_wgslsmith_mod_u32(12823u, 1u)) << (func_2() % 32u), ~firstLeadingBit(~14783u));
    let var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, -385f, arg_0)) * _wgslsmith_div_vec3_f32(vec3<f32>(-447f, 897f, arg_0), vec3<f32>(281f, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 934f))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(u_input.c, u_input.b.yz)))), 1199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 661f)) - _wgslsmith_f_op_f32(1575f - arg_0))), vec3<bool>(true, true, true))));
    global0 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(35689u), _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, u_input.a), ~11504u), 4294967295u, ~global0.x), firstTrailingBit(vec4<u32>(~u_input.a, u_input.a, 1u, u_input.a)), vec4<u32>(u_input.a, ~global0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 20182u, u_input.a, 1u), vec4<u32>(1u, global0.x, 91642u, global0.x)), select(func_2(), 28295u, true))));
    let var_1 = abs(u_input.c);
    let var_2 = var_0;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global0 = vec4<u32>(global0.x, u_input.a, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global0.x, u_input.a, 2818u), vec4<u32>(38388u, u_input.a, u_input.a, u_input.a) & vec4<u32>(global0.x, 4294967295u, u_input.a, 77968u))), global0.x << (((1u >> (global0.x % 32u)) << (~reverseBits(4294967295u) % 32u)) % 32u));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(1u, global0.x, 28933u), ~vec3<u32>(0u, u_input.a, u_input.a)), ~min(global0.wyy, abs(global0.zww)), abs(~(vec3<u32>(global0.x, u_input.a, global0.x) | vec3<u32>(u_input.a, u_input.a, 1u)))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(~1u, ~u_input.a), ~133946u), u_input.a, 1u));
    var var_1 = 1882u < ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0 >> (global0.x % 32u), u_input.a | u_input.a), var_0, var_0);
    global1 = array<Struct_1, 9>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 9u)];
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_1.a)) * arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f - 1000f))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(193f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1683f, 1000f))))));
    global0 = vec4<u32>(~11336u, 29783u, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_add_u32(1u, u_input.a));
    global1 = array<Struct_1, 9>();
    var_0 = func_4(_wgslsmith_div_f32(var_0.a.x, -481f), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, -659f, var_0.a.x)))));
    global0 = vec4<u32>(global0.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a << (global0.x % 32u), ~(~0u)), _wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec2_u32(global0.yx, _wgslsmith_sub_vec2_u32(global0.zw, global0.zw)))), _wgslsmith_dot_vec4_u32(~reverseBits(max(vec4<u32>(4294967295u, global0.x, 80519u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, global0.x))), vec4<u32>(global0.x, 4294967295u, u_input.a, _wgslsmith_mod_u32(firstLeadingBit(1u), ~u_input.a))), ~_wgslsmith_div_u32(~u_input.a, _wgslsmith_sub_u32(global0.x, u_input.a) | global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), u_input.b, !any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-270f * _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(105f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f - var_0.a.x) + var_0.a.x)), max(vec4<i32>(1i, 1i, u_input.c, u_input.b.x), vec4<i32>(u_input.c, _wgslsmith_mod_i32(countOneBits(u_input.c), min(u_input.c, u_input.b.x)), ~(-2147483647i), _wgslsmith_add_i32(-21508i, -u_input.b.x))));
}

