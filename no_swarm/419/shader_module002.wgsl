struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_2(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1271f, -1000f, 1752f), vec3<f32>(-1202f, 606f, -911f), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1554f, 330f, 1332f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, -1069f, 684f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, 534f, 207f)))))), !vec2<bool>(false && any(vec4<bool>(false, false, true, true)), select(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, false, true, false)), true)));
    var var_1 = arg_0.wyx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1559f) - var_0.b.x);
    var var_3 = Struct_2(53430u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), vec2<bool>(false, true && var_0.c.x));
    var var_4 = u_input.b.xz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f)) - _wgslsmith_f_op_f32(round(1000f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_2(arg_1, vec3<f32>(_wgslsmith_f_op_f32(sign(664f)), _wgslsmith_f_op_f32(func_3(~max(vec4<i32>(26995i, 0i, 41504i, 0i), vec4<i32>(2147483647i, -2147483647i, 0i, 30141i)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 14093u, 73480u, 0u), vec4<u32>(0u, 28540u, arg_1, 1u))), Struct_3(firstLeadingBit(vec3<u32>(8269u, 19324u, 2227u))))), -848f), vec2<bool>(!all(arg_0.yz), arg_0.x & arg_0.x));
    var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~var_0.a), 108608u, _wgslsmith_sub_u32(var_0.a, firstTrailingBit(var_0.a)), 35655u), vec4<u32>(1u, 0u, firstTrailingBit(select(14289u, arg_1, true)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.a, arg_1)), ~u_input.b.xy))), var_0.b, vec2<bool>(all(arg_0.zz), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(311f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-293f, 1000f, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1945f, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.b))))), _wgslsmith_f_op_f32(exp2(var_0.b.x)));
    var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~select(u_input.b.xy, u_input.b.xy, arg_0.xx), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a, var_0.a), ~u_input.b.yx)), vec2<u32>(16937u ^ _wgslsmith_sub_u32(u_input.b.x, u_input.a), arg_1)), vec3<f32>(-993f, _wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - var_0.b.x) + _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)))), select(!select(vec2<bool>(true, true), !var_0.c, vec2<bool>(false, var_0.c.x)), select(vec2<bool>(true, false), select(vec2<bool>(var_0.c.x, false), select(arg_0.zz, vec2<bool>(true, false), vec2<bool>(false, true)), false), arg_0.x), !var_0.c));
    var_0 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -548f, 147f)))))), vec2<bool>(false, all(arg_0) || arg_0.x));
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<bool>(true, any(select(vec2<bool>(func_2(vec4<bool>(false, true, false, true), arg_1.a.x, vec4<f32>(-1123f, arg_2, arg_2, -1549f)), true), vec2<bool>(true, true), vec2<bool>(func_2(vec4<bool>(false, true, false, true), 0u, vec4<f32>(-849f, 220f, arg_2, arg_2)), func_2(vec4<bool>(false, false, true, false), u_input.a, vec4<f32>(368f, 848f, -307f, -941f))))), any(vec2<bool>(true, true)), select(true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)))), false));
    var var_1 = arg_1.a;
    var_1 = arg_1.a | ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a.x, u_input.b.x, 9604u), vec4<u32>(arg_1.a.x, arg_1.a.x, 73529u, arg_0.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(3183u, 16860u, arg_1.a.x, 0u), vec4<u32>(0u, u_input.a, arg_0.a.x, 35207u)), 1u) & firstTrailingBit(u_input.b));
    var_1 = arg_0.a;
    var var_2 = select(!vec2<bool>(select(any(vec2<bool>(var_0.x, true)), var_0.x, !var_0.x), true), var_0.wy, vec2<bool>(any(select(var_0.yzw, select(var_0.yyx, var_0.wyz, var_0.xxx), true)), var_0.x));
    return Struct_1(-1139f, vec3<f32>(_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f)))))), arg_2, arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + 273f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: u32) -> vec2<u32> {
    var var_0 = u_input.b.xy;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * arg_0.a))));
    var_0 = ~(~vec2<u32>(~(~15394u), ~(29340u << (var_0.x % 32u))));
    var var_2 = Struct_2(49144u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(abs(arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1043f + var_1) * _wgslsmith_f_op_f32(f32(-1f) * -2084f)), 149f)), vec2<bool>(true, any(select(!vec4<bool>(false, true, false, arg_1), !vec4<bool>(arg_2, arg_1, arg_2, arg_2), true))));
    let var_3 = var_2.a;
    return vec2<u32>(firstTrailingBit(var_2.a), _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.yy), vec2<u32>(var_2.a, 4294967295u) | vec2<u32>(var_2.a, var_2.a)) & 12664u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-countOneBits(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1551f + 717f) + _wgslsmith_f_op_f32(min(622f, -714f))))), ~(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.a)) >> (func_4(func_1(Struct_3(u_input.b), Struct_3(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), 1088f), true, true, ~1u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, 795i, 14402i, -14380i), vec4<u32>(1u, 33027u, 4294967295u, u_input.a), Struct_3(vec3<u32>(u_input.b.x, u_input.a, 89459u)))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(u_input.a, u_input.a, 0u)), Struct_3(vec3<u32>(u_input.b.x, u_input.b.x, 0u)), 131f).a * _wgslsmith_f_op_f32(f32(-1f) * -293f))))), abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 34081u), vec3<u32>(u_input.b.x, 1u, 0u) & u_input.b), _wgslsmith_clamp_u32(0u, 76401u, u_input.b.x) << ((17440u & u_input.a) % 32u), ~(~1420u))));
}

