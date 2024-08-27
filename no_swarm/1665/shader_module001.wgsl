struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(-global1.x, -65428i), -2147483647i)), !select(vec4<bool>(select(true, false, true), true, all(vec2<bool>(false, false)), false), vec4<bool>(true, true, 3258u >= u_input.b.x, true), vec4<bool>(true, true, true, true)));
    global1 = vec2<i32>(countOneBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.a.x | 1i, (2147483647i ^ global1.x) >> (u_input.a % 32u), u_input.d, u_input.d), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(11148i, u_input.d, u_input.d, 49147i), vec4<i32>(2147483647i, 30774i, 1018i, global1.x)) ^ (vec4<i32>(global1.x, 1i, 1i, -1i) ^ vec4<i32>(var_0.a.x, global1.x, -55191i, u_input.d)))));
    global0 = array<Struct_1, 31>();
    return vec3<bool>(!all(!select(var_0.b.xzw, vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.b.zww)), false, true);
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), !(u_input.d >= -18399i), true, true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), true)));
    let var_1 = var_0;
    let var_2 = ~vec3<i32>(_wgslsmith_clamp_i32(-35134i, reverseBits(11672i), ~_wgslsmith_mod_i32(-31071i, global1.x)), _wgslsmith_clamp_i32(~1i, 29602i, u_input.d), global1.x);
    let var_3 = Struct_1(vec2<i32>(global1.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.x), min(vec2<i32>(var_2.x, global1.x), var_2.yy))), vec4<bool>(var_1, any(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, true, false), true)), any(select(func_2().yx, func_2().zx, !vec2<bool>(var_1, false))), true));
    var var_4 = 430f;
    return vec4<bool>(false, u_input.a < max(abs(u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(10403u, 0u, arg_0.x), u_input.b.x)), (all(vec4<bool>(var_3.b.x, false, var_3.b.x, false)) || true) || true, var_3.b.x);
}

fn func_1() -> f32 {
    var var_0 = vec3<bool>(all(!select(func_2(), vec3<bool>(false, true, true), any(vec4<bool>(true, false, true, true)))), all(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true))), vec4<bool>(true, all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))), all(vec3<bool>(false, _wgslsmith_mod_u32(u_input.a, 25847u) > firstTrailingBit(4294967295u), all(vec2<bool>(true, true)))));
    let var_1 = Struct_1(-countOneBits(firstLeadingBit(vec2<i32>(u_input.d, u_input.d) >> (u_input.b.xy % vec2<u32>(32u)))), select(!select(func_3(vec4<u32>(1u, 2241u, 25371u, 61131u)), vec4<bool>(true, true, true, true), true), select(!(!vec4<bool>(false, false, var_0.x, var_0.x)), !select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, false), true), vec4<bool>(var_0.x & true, any(vec4<bool>(var_0.x, var_0.x, false, true)), var_0.x, func_2().x)), any(!var_0.zz)));
    let var_2 = var_1;
    let var_3 = u_input.b.x;
    var var_4 = min(59957u, u_input.a);
    return 1646f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = firstLeadingBit(vec4<u32>(0u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11149u, u_input.c), u_input.b.zz), _wgslsmith_div_u32(u_input.b.x, 1u)), u_input.c, min(25795u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.c, 39533u, 1u)), select(vec4<u32>(u_input.c, 1u, u_input.c, 1u), vec4<u32>(60664u, u_input.b.x, u_input.c, u_input.b.x), true)))));
    global1 = vec2<i32>(63708i, abs(firstTrailingBit(2147483647i) | _wgslsmith_sub_i32(21016i, 1i)));
    var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(u_input.c, 0u), ~u_input.c | u_input.b.x, _wgslsmith_sub_u32(~8637u, ~(~var_0.x)), select(_wgslsmith_mod_u32(~u_input.c, ~var_0.x), u_input.a, func_3(~vec4<u32>(var_0.x, var_0.x, 26067u, u_input.b.x)).x)));
    var var_1 = global0[_wgslsmith_index_u32(~46764u, 31u)];
    let var_2 = i32(-1i) * -countOneBits(u_input.d);
    return ~(~vec2<i32>(var_1.a.x & (i32(-1i) * -10899i), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.c), 45279u, u_input.a));
    global1 = (vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(~vec2<i32>(-1i, 15258i), -vec2<i32>(1i, global1.x))) ^ func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 529f), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f), 628f), -1216f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1578f), -228f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-279f, -1000f) * _wgslsmith_f_op_f32(ceil(1000f)))));
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.c), ~(~(~vec2<u32>(u_input.a, 4294967295u)))), u_input.b.x, ~(var_0.x | 4294967295u));
    global1 = vec2<i32>(abs(min(-u_input.d >> (abs(1u) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, global1.x, 25275i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -2147483647i, global1.x, -2147483647i), vec4<i32>(global1.x, -13637i, u_input.d, -15459i), vec4<i32>(-1i, 1i, u_input.d, 1i))))), -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-437f, 2016f, var_1, 1364f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-546f, 154f, 192f, -1357f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -194f, 1771f, var_1) + vec4<f32>(1027f, var_1, var_1, 264f)), true)), vec4<f32>(var_1, 1242f, _wgslsmith_f_op_f32(-1687f - 472f), -270f))));
    let var_3 = var_1;
    var_0 = ~firstTrailingBit(~u_input.b);
    var var_4 = min(u_input.d ^ select(_wgslsmith_add_i32(u_input.d, 1i), 2147483647i, all(vec3<bool>(false, true, true))), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, ~abs(~vec3<u32>(u_input.b.x, 1u, 27675u))), u_input.c, -41316i, _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(33063u, 4294967295u, var_0.x, 19689u)), min(~(~vec4<u32>(u_input.a, 0u, 4294967295u, var_0.x)), vec4<u32>(4294967295u, select(u_input.a, u_input.a, false), 4294967295u, 1u)), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.c) & u_input.a, 1u, max(u_input.b.x, u_input.c))), ~vec4<u32>(52615u, var_0.x, 67714u, abs(_wgslsmith_add_u32(var_0.x, u_input.c))));
}

