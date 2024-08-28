struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1249f)));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_0) * _wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), arg_1.x);
    return var_2.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(-870f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, vec3<f32>(1105f, -598f, 714f)))), _wgslsmith_f_op_f32(f32(-1f) * -520f)), vec4<f32>(1f, 1f, 1f, 1f))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-8587i), 0i, ~48647i), abs(vec3<i32>(1i, 1i, 1i))), -24465i, ~(-31795i), ~(~(~27487i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1387f, -1402f)))) - _wgslsmith_f_op_vec2_f32(-var_0.a.wy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.zy - var_0.a.ww))), vec2<f32>(var_0.a.x, -934f)));
    let var_2 = vec4<u32>(26984u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u << (0u % 32u), u_input.b, u_input.b << (u_input.a % 32u), 4294967295u), countOneBits(vec4<u32>(28797u, 7343u, u_input.a, 52995u)) & ~vec4<u32>(u_input.b, 4294967295u, u_input.a, u_input.a)), u_input.a, u_input.a), 4294967295u, 21430u);
    let var_3 = -_wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x)), vec3<i32>(-1i) * -var_0.b.zzx) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_2.wy, vec2<u32>(var_2.x, ~1u)), reverseBits(reverseBits(min(var_2.zz, var_2.yx)))) % 32u);
    let var_4 = true || !(!(4294967295u != _wgslsmith_mod_u32(u_input.a, 4294967295u)));
    return var_0;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = func_2();
    let var_3 = !(u_input.b >= _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), reverseBits(abs(vec2<u32>(7382u, 0u)))));
    let var_4 = (~abs(~vec4<u32>(24529u, 4294967295u, u_input.b, arg_1)) ^ vec4<u32>(28882u, ~(~u_input.a), arg_1 ^ ~84150u, firstLeadingBit(u_input.b))) >> (max(_wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 1u, 41334u, 0u), vec4<u32>(u_input.b, arg_1, arg_1, arg_1)), vec4<u32>(arg_1, u_input.a, _wgslsmith_sub_u32(35594u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1884u, 1u), vec2<u32>(63926u, u_input.b)))), abs(vec4<u32>(arg_1, arg_1, 2218u, 75410u)) ^ select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, 4294967295u), vec4<u32>(u_input.a, 0u, u_input.a, arg_1)), vec4<u32>(arg_1, 41239u, 0u, arg_1), !vec4<bool>(var_3, arg_0, var_3, var_3))) % vec4<u32>(32u));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1541f))))));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = ~(-((0i << (u_input.b % 32u)) ^ countOneBits(-27738i))) < ~(-_wgslsmith_div_i32(0i, func_1(var_1.x, u_input.a, Struct_1(vec4<f32>(-1129f, var_0.x, var_0.x, -528f), vec4<i32>(14021i, -1i, -1i, 30275i)))));
    let var_3 = func_2();
    let var_4 = var_3.b.x;
    var var_5 = select(4294967295u, _wgslsmith_clamp_u32(select(4294967295u, ~u_input.b, false), 0u, 1u) | firstTrailingBit(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.b, u_input.b))), var_2);
    var_5 = _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, abs(u_input.b)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(108f)) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(var_3.a.x, var_3.a.x, false)), true)) - _wgslsmith_f_op_f32(trunc(var_0.x))), var_3.b.xxx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(var_3.a.yy)))), ~12109u);
}

