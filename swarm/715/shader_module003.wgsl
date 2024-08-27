struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    global0 = arg_1.b;
    let var_0 = -2147483647i;
    var var_1 = vec3<i32>(1i, -_wgslsmith_dot_vec2_i32(select(arg_0, arg_0, arg_1.a), select(~vec2<i32>(var_0, 2147483647i), -vec2<i32>(-2147483647i, 0i), vec2<bool>(true, true))), 9554i);
    var var_2 = Struct_2(Struct_1(reverseBits(global0.zz), 0i, _wgslsmith_dot_vec4_i32(~firstTrailingBit(u_input.b), u_input.b), arg_1.c.x));
    global0 = arg_1.b;
    return global0.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    var var_0 = (u_input.b.x ^ u_input.a) > ~countOneBits(abs(1i));
    var var_1 = countOneBits(vec3<u32>(~func_3(_wgslsmith_add_vec2_i32(vec2<i32>(21968i, u_input.a), u_input.b.yw), Struct_3(arg_2, vec4<u32>(global0.x, global0.x, 4294967295u, 30497u), vec3<f32>(-535f, -471f, -813f))), _wgslsmith_sub_u32(1u, u_input.d), 4294967295u));
    return _wgslsmith_mult_u32(abs(var_1.x) << (global0.x % 32u), ~_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(28543u, var_1.x, 1887u, 28170u)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 9025u), u_input.d, _wgslsmith_clamp_u32(1u, global0.x, 1u), 12237u)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, u_input.c.x, 0i, -4729i) >> (vec4<u32>(13770u, 27149u, 48939u, 60041u) % vec4<u32>(32u))), vec4<i32>(-u_input.b.x, -37819i, 2147483647i, -48074i)), _wgslsmith_sub_vec4_i32(min(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, u_input.a, -1i)), u_input.b), ~u_input.b >> (vec4<u32>(global0.x, 4294967295u, 4294967295u, global0.x) % vec4<u32>(32u)))), -u_input.b.x, ~2147483647i, 1i);
    var var_2 = arg_0;
    let var_3 = select(select(vec4<u32>((0u >> (u_input.d % 32u)) >> (~u_input.d % 32u), ~(6300u << (global0.x % 32u)), func_2(false, vec2<f32>(-2574f, 1866f), true) << (u_input.d % 32u), _wgslsmith_mult_u32(global0.x >> (arg_0 % 32u), global0.x)), ~abs(vec4<u32>(39163u, 56148u, 4294967295u, 11330u) & vec4<u32>(global0.x, arg_0, arg_0, arg_0)), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), true, true, reverseBits(24377u) != global0.x)), ((~vec4<u32>(3037u, 4294967295u, 4294967295u, u_input.d) & _wgslsmith_div_vec4_u32(vec4<u32>(87756u, 4294967295u, 37806u, 26735u), vec4<u32>(arg_0, 0u, 22527u, 4294967295u))) << (vec4<u32>(4294967295u, _wgslsmith_add_u32(global0.x, global0.x), 4294967295u, global0.x) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.d, arg_0), global0.x, _wgslsmith_add_u32(global0.x, 0u), _wgslsmith_clamp_u32(arg_0, 45158u, 54861u))), !(!vec4<bool>(true, true, global0.x >= global0.x, true)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~vec4<u32>(firstLeadingBit(0u), 1u, 4294967295u, global0.x)));
    global0 = vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.d), ~0u), func_1(1u) ^ ~(~22018u), _wgslsmith_sub_u32(u_input.d, (80141u & u_input.d) & _wgslsmith_dot_vec2_u32(vec2<u32>(27387u, 1u) >> (global0.wx % vec2<u32>(32u)), global0.zz)), abs(1u) << (select(~u_input.d, 7096u, false) % 32u));
    let var_0 = select(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))), vec4<bool>(all(vec3<bool>(true, false, any(vec2<bool>(true, false)))), any(vec2<bool>(any(vec2<bool>(true, false)), true)), all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), all(vec2<bool>(true, all(vec2<bool>(false, false))))), vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))), false, all(vec2<bool>(true, true)), true && (_wgslsmith_f_op_f32(abs(1000f)) < _wgslsmith_f_op_f32(sign(1167f)))));
    var var_1 = Struct_3(~(global0.x & func_3(vec2<i32>(u_input.b.x, u_input.c.x), Struct_3(true, vec4<u32>(26008u, u_input.d, 28725u, u_input.d), vec3<f32>(336f, 921f, -715f)))) > (~(~7311u) | global0.x), (~vec4<u32>(0u, 7825u, u_input.d, 1u) ^ (vec4<u32>(4294967295u, global0.x, 1u, 30617u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 17414u, 1u, global0.x), vec4<u32>(4294967295u, 0u, 40827u, 71130u)))) ^ vec4<u32>(29894u, u_input.d, 2338u, select(_wgslsmith_add_u32(u_input.d, u_input.d), ~u_input.d, false)), vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-338f))))), -576f, 1149f));
    var var_2 = ~(i32(-1i) * -1i);
    let var_3 = true | (128f < _wgslsmith_f_op_f32(select(var_1.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.c.x, -1264f)), _wgslsmith_f_op_f32(-var_1.c.x))), all(var_0))));
    let var_4 = Struct_3(1357f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-316f - _wgslsmith_f_op_f32(trunc(var_1.c.x))))), ~var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2162f), _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x))), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(ceil(var_1.c.x)))));
    let var_5 = select(vec3<bool>(any(select(var_0, vec4<bool>(false, false, var_3, var_3), vec4<bool>(true, var_4.a, var_0.x, var_3))) | false, _wgslsmith_mult_i32(u_input.c.x & u_input.a, u_input.c.x ^ u_input.b.x) <= max(u_input.c.x ^ 18720i, -2147483647i), all(!vec4<bool>(var_1.a, var_3, var_1.a, var_0.x))), var_0.wzw, select(vec3<bool>(var_4.a && true, false, true), !var_0.yyw, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.zz, -573f, -u_input.b);
}

