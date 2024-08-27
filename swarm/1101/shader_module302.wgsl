struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -621f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-832f)) * _wgslsmith_f_op_f32(ceil(-857f)))), 9953u, select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), u_input.a == 38113u), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), any(vec4<bool>(true, true, true, true))), true));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(211f * _wgslsmith_div_f32(var_0.b.a, _wgslsmith_f_op_f32(-var_0.b.a)))), Struct_1(_wgslsmith_f_op_f32(-var_0.a), u_input.a, select(select(var_0.b.c, select(vec3<bool>(false, var_0.b.d, var_0.b.c.x), vec3<bool>(true, false, var_0.b.c.x), var_0.b.c), false), !vec3<bool>(false, var_0.b.c.x, var_0.b.d), var_0.b.d), !(!var_0.b.c.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-926f * _wgslsmith_f_op_f32(min(878f, _wgslsmith_f_op_f32(f32(-1f) * -786f)))), 3397u, !vec3<bool>(true, !var_0.b.d, select(var_0.b.c.x, all(var_0.b.c), var_0.b.d)), (abs(u_input.a) == 4294967295u) || !var_0.b.d);
    var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-845f, -1000f)) * _wgslsmith_f_op_f32(var_1.a * -1227f))), _wgslsmith_f_op_f32(1505f * _wgslsmith_f_op_f32(step(1649f, _wgslsmith_f_op_f32(trunc(-1063f))))), any(select(select(var_1.c.zz, vec2<bool>(var_0.b.d, true), vec2<bool>(false, var_1.d)), var_1.c.xz, all(vec4<bool>(true, true, true, var_1.d)))))), Struct_1(-1183f, 0u ^ (arg_0 | var_0.b.b), vec3<bool>(var_1.c.x, var_0.b.c.x, any(var_0.b.c.yy)), !any(var_1.c)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a - var_1.a) + _wgslsmith_f_op_f32(ceil(-934f))) + _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a)))), var_0.b);
    return false;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2112f - 2107f), _wgslsmith_f_op_f32(min(-144f, -757f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-168f, -1420f, var_0.x)) * -217f)), _wgslsmith_f_op_f32(f32(-1f) * -870f)), ~0u, !select(!vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, false, false))), !func_3(u_input.a << (firstTrailingBit(u_input.a) % 32u)));
    var_1 = Struct_1(var_1.a, 4294967295u, select(select(vec3<bool>(all(vec2<bool>(var_1.c.x, true)), var_0.x, true), select(vec3<bool>(true, true, false), !vec3<bool>(var_1.c.x, true, var_1.c.x), true), var_1.c.x), !select(select(vec3<bool>(true, false, var_0.x), var_1.c, var_1.c), var_1.c, true), func_3(~u_input.b)), !any(vec4<bool>(true, var_1.d || var_0.x, any(var_1.c), true)));
    var_1 = Struct_1(914f, _wgslsmith_mod_u32(u_input.b, ~33838u), select(select(select(var_1.c, var_1.c, true), var_1.c, all(var_1.c)), !vec3<bool>(true, func_3(39052u), select(false, true, var_1.c.x)), !var_1.c), ~4294967295u < ~var_1.b);
    var_1 = Struct_1(_wgslsmith_f_op_f32(1583f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a * 454f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_sub_u32(u_input.a, ~1u) << (8878u % 32u), var_1.c, true);
    return Struct_3(Struct_2(var_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-139f))), _wgslsmith_mult_u32(~u_input.b, 1u), var_1.c, var_1.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) * _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1842f), _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))), arg_0.a);
    let var_1 = vec3<i32>(1i, 1i, 1i);
    var var_2 = func_2();
    var_2 = func_2();
    var_2 = Struct_3(func_2().a);
    return _wgslsmith_add_u32(~(~(~firstTrailingBit(var_2.a.b.b))), select(min(1u, u_input.a), 0u, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5597u, u_input.b, reverseBits(0u), select(19323u, 1u, false)), vec4<u32>(u_input.b, u_input.b | 0u, 1u, 1u)), vec4<u32>(u_input.a, func_1(Struct_1(-1000f, 87957u, vec3<bool>(false, true, false), true), true, countOneBits(vec2<u32>(u_input.b, 1128u))), 1u, min(select(u_input.a, 23723u, true), u_input.a ^ u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1415f, -355f), vec2<f32>(-734f, -582f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, -1656f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-294f, -1000f) - vec2<f32>(-783f, -524f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(766f, 368f) + vec2<f32>(1377f, 1248f)))) - vec2<f32>(1f, -199f))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-410f)) + -1268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(func_2().a.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))))) * 677f));
    var var_2 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f - var_1.x))))) <= -1227f;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1132f, _wgslsmith_f_op_f32(ceil(-352f)))))), _wgslsmith_f_op_f32(sign(-782f)));
    var var_3 = Struct_2(var_1.x, func_2().a.b);
    let var_4 = func_2().a.b;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -31101i, vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-423f, var_4.a, var_4.a) - vec3<f32>(_wgslsmith_f_op_f32(max(var_3.a, _wgslsmith_f_op_f32(var_1.x * 206f))), var_1.x, 202f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(193f, -416f)) - vec2<f32>(-398f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.a, var_3.a), vec2<f32>(var_3.a, -310f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1704f, var_3.b.a) - vec2<f32>(var_3.a, -214f)))))), firstLeadingBit(8023i));
}

