struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))), -385f), arg_0));
    let var_1 = Struct_3(Struct_1(vec3<bool>(true, true, false), 1199f), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), !all(vec2<bool>(false, false))), Struct_1(select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(false, true)), u_input.a.x < u_input.a.x, u_input.a.x == 2932i), vec3<bool>(true, true, 61630u != arg_1.x)), 211f), Struct_1(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), arg_1.x >= 11680u), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * -1284f), 367f >= _wgslsmith_f_op_f32(-var_0.x)))), Struct_1(vec3<bool>(false, false, any(vec4<bool>(true, false, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x + var_0.x), -583f)));
    var var_2 = ~(~(firstLeadingBit(vec4<i32>(u_input.a.x, -1i, -2786i, u_input.a.x)) & abs(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, -1278i))) & -vec4<i32>(~u_input.a.x, 2930i, ~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)));
    var var_3 = all(vec2<bool>(var_1.e.a.x, !(!(!var_1.b.x))));
    let var_4 = !(!vec4<bool>(true, true, any(!vec4<bool>(false, var_1.b.x, var_1.d.a.x, var_1.a.a.x)), any(var_1.e.a.yz)));
    return arg_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = vec2<i32>(max(firstLeadingBit(~u_input.a.x), abs(-(i32(-1i) * -2147483647i))), var_0.a.x);
    let var_2 = arg_0.a.x;
    let var_3 = vec2<bool>(select(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), false, false), false && !(any(vec4<bool>(false, false, false, true)) && false));
    let var_4 = arg_0;
    return vec3<i32>(2147483647i, -55261i, 1i);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = -924f;
    var var_1 = Struct_2(~((u_input.a & vec3<i32>(59378i, u_input.a.x, -20258i)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (~firstLeadingBit(vec3<u32>(arg_2.x, 40316u, arg_2.x)) % vec3<u32>(32u)));
    var_1 = Struct_2(var_1.a);
    var_0 = _wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-299f - arg_0.b)));
    var var_2 = arg_0.a.yz;
    return Struct_2(func_4(Struct_2(~u_input.a), min(countOneBits(reverseBits(arg_2.x)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, 295f)), vec3<u32>(43662u, arg_2.x, arg_2.x))), vec4<u32>(4294967295u, arg_2.x, _wgslsmith_clamp_u32(abs(arg_2.x), ~arg_2.x, 1u), arg_2.x)));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(-734f)), _wgslsmith_f_op_f32(f32(-1f) * -1775f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(284f + -195f), 1693f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f - -840f) * _wgslsmith_f_op_f32(min(-429f, -709f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-623f, -386f, 2077f, -1292f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(max(275f, -1315f)), -1000f, _wgslsmith_f_op_f32(1297f - -507f)))))));
    var_0 = vec4<f32>(-491f, _wgslsmith_f_op_f32(max(-782f, -383f)), 1929f, _wgslsmith_f_op_f32(581f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1743f), var_0.x)))));
    var var_1 = func_2(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1154f + 982f) - -1721f)))), _wgslsmith_add_i32(-u_input.a.x, ~(-15670i & u_input.a.x)), vec2<u32>(1u, 1u));
    let var_2 = Struct_1(vec3<bool>(any(vec4<bool>(true, true, true, any(vec2<bool>(false, true)))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(step(-1128f, _wgslsmith_f_op_f32(floor(1139f)))))));
    let var_3 = Struct_3(Struct_1(select(vec3<bool>(false, false, false), select(vec3<bool>(false, var_2.a.x, var_2.a.x), vec3<bool>(false, true, false), any(vec2<bool>(false, true))), vec3<bool>(var_2.a.x, all(vec4<bool>(true, false, var_2.a.x, true)), false)), var_0.x), select(var_2.a, vec3<bool>(any(select(var_2.a, vec3<bool>(false, var_2.a.x, false), var_2.a.x)), 1u < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7250u, 1u), vec3<u32>(1u, 4294967295u, 15818u)), true), var_2.a), Struct_1(select(vec3<bool>(var_2.a.x & false, var_2.a.x, true), !select(var_2.a, var_2.a, var_2.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -2961f), _wgslsmith_f_op_f32(-var_0.x))))), var_2, Struct_1(!(!(!var_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-517f))))));
    return vec2<i32>(countOneBits(select(var_1.a.x, var_1.a.x, !(u_input.a.x > 32292i))), 22315i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-197f, -1000f, true)) * _wgslsmith_div_f32(360f, _wgslsmith_f_op_f32(min(502f, -290f)))), -2878f));
    var_0 = vec2<f32>(var_0.x, var_0.x);
    var var_1 = vec2<u32>(71348u, _wgslsmith_dot_vec2_u32(vec2<u32>(~69347u, ~(~1u)), abs(~vec2<u32>(1u, 1u))));
    var var_2 = _wgslsmith_mod_vec2_i32(func_1(), -_wgslsmith_div_vec2_i32(abs(u_input.a.zx), abs(u_input.a.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, -1000f, 951f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1135f, 427f, var_0.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, -1421f, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, 2491f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1014f, -399f, var_0.x) * vec3<f32>(-1565f, -918f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, var_0.x, -1413f)), any(vec3<bool>(true, true, true))))));
}

