struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2475f, -758f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f + 252f) + _wgslsmith_f_op_f32(-1068f - -177f)))) * 317f);
    let var_2 = _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(u_input.b, -1i) << (~u_input.a.x % 32u), u_input.b)), u_input.b);
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-160f, -216f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-490f + -197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 + -711f), _wgslsmith_f_op_f32(-var_1), all(vec2<bool>(true, true))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1705f, 765f, 1103f, 549f)))))), 2147483647i);
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(659f - var_3.a.x), _wgslsmith_f_op_f32(abs(var_3.a.x)), var_1, 1204f)))), u_input.b);
    return 1u;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = 2147483647i;
    let var_1 = 24476u;
    var var_2 = firstLeadingBit(var_0);
    var_2 = ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(~u_input.b, u_input.b, u_input.b)), vec3<i32>(var_0, u_input.b, _wgslsmith_sub_i32(~u_input.b, _wgslsmith_mult_i32(var_0, 2147483647i))));
    var_2 = var_0;
    return firstTrailingBit(1u);
}

fn func_4(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_2(abs(u_input.b), Struct_1(vec4<bool>(false, true, true, select(all(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(775f, 1580f))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), all(vec4<bool>(true, false, false, false))), vec4<bool>(all(vec2<bool>(false, true)), true, true, false)));
    var var_1 = Struct_3(reverseBits(-31775i));
    var_0 = Struct_2(_wgslsmith_mult_i32(~(~(-var_1.a)), var_1.a), Struct_1(select(select(!var_0.b.a, !vec4<bool>(var_0.b.a.x, var_0.c.x, false, var_0.c.x), false), vec4<bool>(true, var_0.c.x, any(vec4<bool>(var_0.b.a.x, var_0.b.a.x, true, var_0.c.x)), true), select(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, true, false), select(vec4<bool>(var_0.b.a.x, var_0.c.x, var_0.c.x, var_0.b.a.x), vec4<bool>(var_0.c.x, true, var_0.b.a.x, var_0.c.x), var_0.b.a), var_0.b.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.b.x, var_0.b.b.x))) - var_0.b.b) + _wgslsmith_f_op_vec2_f32(abs(var_0.b.b)))), vec4<bool>(!(var_0.c.x || true), -2147483647i >= var_1.a, all(var_0.b.a.zwy), false));
    let var_2 = var_0.b;
    return Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-617f * _wgslsmith_f_op_f32(-var_2.b.x)), var_0.b.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x), 1533f, all(var_2.a.xzz))), var_2.b.x))), abs(-35915i));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = func_4(max(~_wgslsmith_div_u32(0u, u_input.a.x) | 34163u, func_3(func_2()) << (4294967295u % 32u)));
    let var_1 = ~(~(~func_2()));
    var var_2 = arg_1;
    var_0 = func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, arg_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u >> (0u % 32u), 2326u), vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(35572u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(4294967295u, var_1, u_input.a.x, 64432u))), u_input.a.zz)));
    let var_3 = Struct_2(var_2.a, Struct_1(vec4<bool>(true, false, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), var_0.a.ww), !select(vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), true));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_3(firstLeadingBit(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1324f)))))))));
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1688f, -1459f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(170f, -377f)))))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(442f)))), var_3.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.x, 688f), vec2<f32>(1262f, -598f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.x, var_3.x))))), vec2<f32>(1f, func_4(32719u).a.x))), !vec2<bool>(true, select(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, 1i)), _wgslsmith_div_vec3_i32(~(vec3<i32>(-1i, 0i, -2147483647i) << (u_input.a % vec3<u32>(32u))), vec3<i32>(~(-2147483647i), 0i, abs(-8842i)))), 34632u, var_3.x, var_3.x);
}

