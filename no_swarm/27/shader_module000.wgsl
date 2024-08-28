struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, true, false, false, true, false, true, true, false, false, false, false, true, true, true, false, false, false, false, false, true, false, false, false, true, false, false, true, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    return ~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, select(firstLeadingBit(u_input.b.x), ~u_input.c, any(vec4<bool>(global0[_wgslsmith_index_u32(18333u, 31u)], false, global0[_wgslsmith_index_u32(61152u, 31u)], false)))), u_input.b.x);
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    global0 = array<bool, 31>();
    var var_0 = ~abs(select(u_input.d, u_input.d, true));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1160f, -501f)))) + _wgslsmith_f_op_f32(-833f + 712f)), -1560f));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_u32(countOneBits(firstTrailingBit(max(vec2<u32>(u_input.c, u_input.b.x), u_input.b.zz)) & select(vec2<u32>(860u, 92074u), u_input.b.zx | u_input.b.xy, true)), ~(~(~func_2(vec3<f32>(-695f, 478f, -648f)))));
    let var_1 = arg_1;
    var_0 = ~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), 49070u));
    let var_2 = Struct_1(var_1.a);
    global0 = array<bool, 31>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(max(abs(-var_2.a.x), select(arg_1.a.x, 21345i, true)), max(select(_wgslsmith_div_u32(u_input.c, u_input.c), u_input.b.x, true), u_input.c)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: i32) -> f32 {
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_0 = vec2<bool>(arg_0.x <= arg_0.x, false);
    let var_1 = Struct_1(-firstLeadingBit(~vec4<i32>(1i, 40290i, 36353i, 550i) & vec4<i32>(u_input.d.x, u_input.a, -1i, u_input.d.x)));
    var var_2 = var_1;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1197f * -896f), _wgslsmith_f_op_f32(f32(-1f) * -687f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -102f), Struct_1(vec4<i32>(-16410i, 3292i, 1i, -1i)), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.b.x, 31u)], true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1400f, -496f)))))), ~(u_input.b.x << ((u_input.b.x >> (~1u % 32u)) % 32u)), -1i));
    let var_1 = vec2<u32>(u_input.c, reverseBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(u_input.b.zz, (_wgslsmith_clamp_vec2_u32(var_1, u_input.b.xz, vec2<u32>(u_input.b.x, var_1.x)) >> (~u_input.b.zx % vec2<u32>(32u))) & select(vec2<u32>(var_1.x, u_input.c), vec2<u32>(1u, 4477u), vec2<bool>(true, false))), ~(~(~(-vec4<i32>(u_input.d.x, u_input.d.x, -12026i, u_input.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -971f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f - -404f) * 2076f))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(min(var_1 | u_input.b.zx, max(var_1, u_input.b.yy)), max(abs(u_input.b.zx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, u_input.b.x), u_input.b.yy)), min(~u_input.b.yx, ~vec2<u32>(0u, var_1.x))), vec2<u32>(18810u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), var_1))), vec4<u32>(countOneBits(max(u_input.c, var_1.x)), max(~(4294967295u << (u_input.c % 32u)), ~_wgslsmith_add_u32(17296u, u_input.b.x)), u_input.b.x, 84559u));
}

