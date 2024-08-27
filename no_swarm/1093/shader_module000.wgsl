struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2437f, 716f, -1313f), vec3<f32>(1715f, -1009f, -2399f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-246f, 443f, -1157f))))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(755f, -151f, -843f) + vec3<f32>(-1929f, -249f, 950f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1282f, 1220f, 960f))))))));
    var var_1 = var_0.a;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a));
    let var_2 = Struct_2(var_0.a, var_0.a);
    var var_3 = ~40712i;
    return _wgslsmith_clamp_vec3_u32(~(u_input.a << ((_wgslsmith_div_vec3_u32(u_input.a, u_input.a) >> (~vec3<u32>(u_input.a.x, 54293u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), firstTrailingBit(u_input.a), u_input.a);
}

fn func_4(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(~arg_0.x ^ abs(u_input.a.x), _wgslsmith_div_u32(arg_0.x ^ u_input.a.x, ~arg_0.x), u_input.a.x) >> (((arg_0.x & u_input.a.x) ^ arg_0.x) % 32u), u_input.a.x);
    let var_1 = Struct_3(firstTrailingBit(firstLeadingBit(max(vec3<i32>(0i, u_input.b, -2147483647i), vec3<i32>(13249i, u_input.b, 17447i))) >> (firstTrailingBit(countOneBits(vec3<u32>(92101u, arg_0.x, arg_0.x))) % vec3<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(103f, -699f, -600f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2929f, -1000f, -1174f))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1309f, 634f, 1541f))))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -244f, -1607f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1370f, 333f, 864f), vec3<f32>(-1000f, -1020f, -661f), false)), 2147483647i > u_input.b)))));
    var_0 = abs(countOneBits(arg_0.zx));
    let var_2 = var_1.b;
    var_0 = ~(~(~(vec2<u32>(u_input.a.x, 21544u) | vec2<u32>(1u, var_0.x)))) ^ abs(select(vec2<u32>(var_0.x, 90835u), vec2<u32>(~1u, u_input.a.x ^ 0u), vec2<bool>(true, true)));
    return vec2<bool>(all(vec3<bool>(min(1i, var_1.a.x) == 1i, all(vec2<bool>(false, false)), -333f >= _wgslsmith_f_op_f32(sign(var_2.b.a.x)))), true);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<bool>) -> bool {
    var var_0 = select(vec2<bool>(true, !arg_3.x & arg_3.x), arg_3, all(!vec2<bool>(all(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false)), !arg_3.x)));
    var_0 = func_4(~(vec3<u32>(~0u, u_input.a.x, _wgslsmith_add_u32(1u, u_input.a.x)) ^ func_3(!arg_3.x)));
    let var_1 = arg_0;
    var_0 = select(vec2<bool>(var_0.x, true), select(func_4(vec3<u32>(~1u, u_input.a.x, u_input.a.x)), vec2<bool>(true, !arg_3.x), arg_3), !any(select(vec2<bool>(false, true), vec2<bool>(arg_3.x, var_0.x), select(vec2<bool>(arg_3.x, false), arg_3, vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_0.b.b.a)), _wgslsmith_f_op_vec3_f32(select(arg_0.c.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.b.b.a))), var_0.x && arg_3.x)), ((25133u << (u_input.a.x % 32u)) | ~u_input.a.x) <= max(firstLeadingBit(4294967295u), ~arg_2))));
    return all(vec4<bool>(arg_3.x, true || any(select(vec2<bool>(true, arg_3.x), arg_3, arg_3.x)), arg_3.x & any(vec3<bool>(true, arg_3.x, false)), false));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = select(!vec3<bool>(true, !all(vec3<bool>(false, false, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(!any(vec2<bool>(true, true)), u_input.b != min(-1i, 0i), select(true, func_2(Struct_3(vec3<i32>(u_input.b, 27264i, -2994i), Struct_2(Struct_1(vec3<f32>(1102f, -300f, 572f)), Struct_1(vec3<f32>(567f, 2403f, -229f))), Struct_2(Struct_1(vec3<f32>(1619f, -639f, -156f)), Struct_1(vec3<f32>(-452f, 1788f, -825f)))), vec3<i32>(-2147483647i, -34017i, u_input.b), 0u, vec2<bool>(false, true)), false)), any(vec3<bool>(true, true, false))));
    var_0 = select(select(vec3<bool>(true, any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)) && var_0.x, false), select(!(!vec3<bool>(var_0.x, var_0.x, false)), !(!vec3<bool>(var_0.x, false, true)), all(!vec4<bool>(false, var_0.x, var_0.x, true))), vec3<bool>(true, select(var_0.x, var_0.x, true) & var_0.x, all(!vec3<bool>(var_0.x, var_0.x, var_0.x)))), vec3<bool>(!all(func_4(vec3<u32>(arg_0, u_input.a.x, 0u))), var_0.x, all(select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true)))), !select(select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true)), vec3<bool>(true, true, false), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), true)), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(false, true, false), vec3<bool>(false, true, var_0.x)), var_0.x));
    var var_1 = ~41509u;
    var_0 = vec3<bool>(true, !var_0.x, any(vec2<bool>(true, var_0.x)));
    var_1 = firstLeadingBit(1u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-205f, 184f, 1297f), vec3<f32>(1234f, -147f, -165f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-206f, 521f, -273f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(833f, -481f, -391f) - vec3<f32>(-978f, -1000f, 816f))))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * arg_0.a.x)));
    var_0 = func_1(~(~1u));
    var_0 = func_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u)), vec4<u32>(11305u, u_input.a.x, u_input.a.x, 1u)), abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 51291u)), max(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-904f * 1393f), -1000f, 988f)))));
    return !(((any(vec3<bool>(false, true, true)) && all(vec2<bool>(false, false))) & true) & !all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zz;
    var var_1 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -878f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-537f)) + -1750f), func_5(func_1(1u), func_1(u_input.a.x)))) == _wgslsmith_f_op_f32(730f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1250f * -699f)))));
    let var_2 = 722f;
    let var_3 = _wgslsmith_add_vec3_u32(u_input.a, u_input.a);
    let var_4 = _wgslsmith_clamp_vec2_u32(var_0, _wgslsmith_div_vec2_u32(~select(var_0, ~u_input.a.zz, var_2 != var_2), var_0), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(~var_0.x, 4294967295u)), ~min(~vec2<u32>(u_input.a.x, 64386u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, var_0.x), var_0, vec2<u32>(var_0.x, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec2<i32>(50260i, ~u_input.b)), vec4<f32>(-794f, _wgslsmith_f_op_f32(select(var_2, var_2, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false)))), -708f, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + var_2), _wgslsmith_f_op_f32(-var_2))))), 24315u, var_4.x, vec2<u32>(~(~firstLeadingBit(var_0.x)), var_0.x));
}

