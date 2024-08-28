struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    var var_0 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(false, true)), false), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec3<bool>(!any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), 451f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(238f, -677f))), true));
    var var_1 = select(vec3<bool>(!var_0.x, false, select(true, true, var_0.x)), !vec3<bool>(true, select(80698i, u_input.b.x, var_0.x) != firstTrailingBit(-1i), var_0.x), vec3<bool>(!(-5534i <= -u_input.a), _wgslsmith_f_op_f32(trunc(617f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1497f, 125f, true))), select(true, true, all(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, true), false)))));
    var var_2 = Struct_1(vec4<bool>(var_1.x, false, true, any(vec2<bool>(var_1.x, var_0.x))), select(vec4<bool>(true, var_1.x, all(!var_1.xy), !(!var_0.x)), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(vec4<bool>(select(var_0.x, var_0.x, false), select(false, var_0.x, var_0.x), false, all(vec4<bool>(false, false, false, var_0.x))))));
    var var_3 = Struct_1(!vec4<bool>(true, true, true, any(var_2.b)), var_2.a);
    var var_4 = vec2<i32>(-3052i, ~_wgslsmith_dot_vec3_i32(select(u_input.b, u_input.c, var_2.b.x) ^ firstLeadingBit(u_input.c), _wgslsmith_mult_vec3_i32(u_input.c, ~vec3<i32>(u_input.d, 12611i, u_input.a))));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(~(~vec4<u32>(4294967295u, 69166u, 61468u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), all(vec2<bool>(var_1.x, true))), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, 52075u, 57068u), vec4<u32>(1u, 1u, 1u, 1u))), ~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 70870u, 32141u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 1u, _wgslsmith_add_u32(33897u, 1u), select(4294967295u, 1u, true))), _wgslsmith_div_vec4_u32(vec4<u32>(select(1u, 3313u, false), ~109912u, min(0u, 1u), 3753u), ~func_3()) << (func_3() % vec4<u32>(32u)));
    let var_1 = vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(var_0.wwy, countOneBits(var_0.xyy)), select(_wgslsmith_mod_u32(4294967295u << (var_0.x % 32u), ~4294967295u) & ~0u, _wgslsmith_clamp_u32(0u, ~4239u, 0u), true));
    var var_2 = Struct_1(!vec4<bool>(-2147483647i == (11313i | u_input.c.x), true, true, true), !vec4<bool>(!all(vec4<bool>(true, false, true, true)), ~var_0.x < var_0.x, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), !select(false, false, false)));
    let var_3 = vec2<u32>(_wgslsmith_mod_u32(19686u, ~(~var_1.x)), var_0.x);
    var_2 = Struct_1(var_2.b, vec4<bool>(u_input.b.x < -70983i, var_2.b.x, var_2.b.x, var_2.b.x));
    return Struct_1(!select(var_2.a, vec4<bool>(true, select(false, var_2.b.x, var_2.a.x), select(false, true, true), false), vec4<bool>(!var_2.b.x, var_2.a.x, any(vec2<bool>(false, false)), true)), var_2.b);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> bool {
    var var_0 = true;
    var_0 = !(~2147483647i >= u_input.c.x) & false;
    var_0 = all(vec4<bool>(true || all(vec3<bool>(true, true, true)), true, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), false));
    var_0 = false;
    let var_1 = func_2();
    return !(!var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -474f;
    let var_1 = Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), func_1(-8056i, vec2<u32>(34981u, 0u)))), firstTrailingBit(1u) < _wgslsmith_mult_u32(1u, 83691u), var_0 != _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-var_0))), vec4<bool>(true, u_input.b.x >= (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -20470i), vec2<i32>(-2147483647i, 34231i)) ^ u_input.d), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-var_0)) >= var_0));
    var var_2 = vec4<bool>(true, true, -(u_input.a | abs(1i)) >= 0i, !(1000f == var_0) || all(var_1.b.xx));
    var_2 = select(func_2().a, !select(var_1.a, var_1.a, false), !func_2().b);
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) << (reverseBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 66037u, 24972u, 1u), ~vec4<u32>(133223u, 86155u, 4294967295u, 4294967295u), ~vec4<u32>(1u, 4294967295u, 1u, 1058u))) % vec4<u32>(32u));
    let var_4 = var_1;
    var var_5 = any(func_2().a.yw);
    var_2 = select(!func_2().b, vec4<bool>(all(var_4.b.zx), false, _wgslsmith_f_op_f32(exp2(var_0)) > _wgslsmith_f_op_f32(var_0 + var_0), all(select(var_4.a, var_1.b, vec4<bool>(var_2.x, var_1.b.x, var_2.x, var_1.a.x))) || false), var_2.x || true);
    var var_6 = any(!(!vec3<bool>(any(var_2.wwz), true, var_4.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(var_3.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(var_3.zz), var_3.xz), ~(~4294967295u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_3.x, 1u)), vec2<u32>(1u, var_3.x))));
}

