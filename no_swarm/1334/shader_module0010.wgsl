struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.b.x;
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    let var_1 = 0u;
    var var_2 = -1i;
    return global1[_wgslsmith_index_u32(var_1, 24u)];
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    let var_0 = 11605i;
    var var_1 = false;
    let var_2 = Struct_2(~(select(0u, 0u, true) & ~arg_1), -(~(~vec3<i32>(var_0, var_0, u_input.b.x)) << (max(vec3<u32>(arg_1, arg_1, 67229u) >> (vec3<u32>(21847u, arg_1, 43562u) % vec3<u32>(32u)), vec3<u32>(arg_1, arg_1, arg_1)) % vec3<u32>(32u))));
    global0 = ~(~0i);
    var var_3 = ~4294967295u;
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_sub_vec4_i32(-arg_1.a, abs(-(~arg_1.a)));
    global1 = array<Struct_1, 24>();
    var var_1 = Struct_2(abs(32933u), vec3<i32>(~_wgslsmith_mult_i32(~(-913i), arg_0.b.x), ~_wgslsmith_mod_i32(arg_1.a.x, arg_0.b.x) | 24993i, -max(~17572i, -1i & var_0.x)));
    global0 = 27631i;
    return Struct_2(_wgslsmith_add_u32(~arg_0.a, 25308u), arg_1.a.wxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_2(func_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(5714u, 1u), vec2<u32>(49240u, 4294967295u), vec2<u32>(74787u, 32660u)), vec2<u32>(22674u, 55817u))), abs(_wgslsmith_sub_u32(2556u, _wgslsmith_clamp_u32(35436u, 1u, 23314u)))), Struct_1(vec4<i32>(-5142i, max(_wgslsmith_mult_i32(u_input.a.x, 3907i), _wgslsmith_sub_i32(u_input.b.x, -3104i)), -2147483647i, func_1(4294967295u).a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-439f)), _wgslsmith_f_op_f32(f32(-1f) * -845f))))), func_2(Struct_1(vec4<i32>(u_input.a.x, i32(-1i) * -48815i, 37290i, reverseBits(-1i)), -121f), ~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3073f), _wgslsmith_f_op_f32(abs(-234f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * -176f)));
    let var_2 = !select(vec3<bool>(true, true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), vec3<bool>(true, true, true), select(true, var_0.b.x <= ~0i, true));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 268f))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x * 1000f)), vec2<bool>(!var_2.x, true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1667f, var_1.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 764f) * vec2<f32>(var_1.x, 519f)), true)) - vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -110f)))));
    var var_3 = func_3(func_2(func_1(4921u), ~65542u), func_1(var_0.a), func_3(func_3(func_3(Struct_2(1u, var_0.b), func_1(0u), func_3(Struct_2(var_0.a, var_0.b), Struct_1(vec4<i32>(u_input.b.x, -2147483647i, var_0.b.x, -2012i), 1000f), Struct_2(var_0.a, vec3<i32>(var_0.b.x, u_input.b.x, u_input.b.x)))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a, 22249u), 24u)], func_3(Struct_2(var_0.a, vec3<i32>(u_input.a.x, 2147483647i, 1i)), Struct_1(vec4<i32>(-2147483647i, u_input.a.x, var_0.b.x, 12308i), var_1.x), var_0)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~var_0.a, ~var_0.a, 4294967295u), ~(~var_0.a)), 24u)], func_2(func_1(var_0.a), _wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 12493u, var_0.a, var_0.a), vec4<u32>(0u, 42872u, 28495u, 4294967295u))))));
    global1 = array<Struct_1, 24>();
    var var_4 = var_1.x;
    var var_5 = Struct_2(~(~(~(~var_3.a))), var_3.b);
    global0 = -14276i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, -1000f) - vec2<f32>(var_1.x, -1939f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(297f, var_1.x), vec2<f32>(var_1.x, 140f), select(var_2.zx, var_2.zx, false))))), _wgslsmith_f_op_f32(select(var_1.x, -1000f, var_2.x)));
}

