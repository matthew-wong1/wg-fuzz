struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -11579i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> i32 {
    global0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(~(-12888i), _wgslsmith_div_i32(-arg_1, _wgslsmith_add_i32(2147483647i, arg_1)), arg_1, arg_1), select(~vec4<i32>(~34444i, arg_1 << (u_input.a.x % 32u), -29923i, arg_1 | 0i), vec4<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-22201i, 25905i), vec2<i32>(arg_1, arg_1), vec2<bool>(true, true)), -vec2<i32>(arg_1, arg_1)), i32(-1i) * -1i, _wgslsmith_div_i32(~0i, max(arg_1, 2147483647i)), 2147483647i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_2) + 641f)))));
    let var_1 = any(vec2<bool>(true, false));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(648f - -299f), select(select(select(!vec4<bool>(true, var_1, true, var_1), !vec4<bool>(var_1, true, true, true), all(vec2<bool>(false, false))), select(!vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(true, var_1, var_1, var_1), any(vec3<bool>(true, var_1, var_1))), !(!var_1)), vec4<bool>(var_1, var_1, true, select(true, !var_1, !var_1)), vec4<bool>(var_1, false, var_1, any(select(vec4<bool>(var_1, var_1, var_1, false), vec4<bool>(var_1, false, var_1, true), vec4<bool>(var_1, var_1, false, var_1))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1115f, -1005f, arg_2, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -214f, -120f, arg_0.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -1135f, arg_2))))))), u_input.a.x, 1429f);
    let var_3 = false;
    return -2147483647i;
}

fn func_2() -> i32 {
    return ~func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -357f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(270f, -1585f) + vec2<f32>(-827f, 262f)), any(vec3<bool>(true, false, false)))), 12613i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f + 210f))) >> (u_input.a.x % 32u);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = false;
    return reverseBits(~vec4<i32>(_wgslsmith_sub_i32(-39104i << (0u % 32u), func_2()), ~(~(-8010i)), -1i, -_wgslsmith_div_i32(-1i, -24105i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)) << (~vec4<u32>(1u, 60255u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1235f), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, 1370f, 1238f, -813f) - vec4<f32>(-1342f, -138f, 455f, 1702f)), 0u >> (0u % 32u), _wgslsmith_f_op_f32(abs(-367f)))), all(vec2<bool>(true, true)));
    global0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-var_0.x, var_0.x)), _wgslsmith_clamp_vec2_i32((var_0.wx ^ vec2<i32>(-2147483647i, 44878i)) >> (countOneBits(vec2<u32>(u_input.a.x, 131u)) % vec2<u32>(32u)), var_0.xz, max(var_0.yw, var_0.xy))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(763f, 247f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1652f, -1000f)))))), countOneBits(min(min(_wgslsmith_sub_vec4_u32(vec4<u32>(5360u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 44779u, 17413u)), countOneBits(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 4294967295u))), vec4<u32>(~1u, ~u_input.a.x, firstTrailingBit(268u), ~u_input.a.x))), vec4<u32>(4294967295u, 31396u, u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a), u_input.a)) & firstTrailingBit(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(16321u, 57197u, 34695u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(48830u, 34936u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 316u, u_input.a.x))));
}

