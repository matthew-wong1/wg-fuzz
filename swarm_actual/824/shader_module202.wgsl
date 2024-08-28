struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(536f, 508f, any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(474f, -998f), _wgslsmith_f_op_f32(-595f * -1238f))), _wgslsmith_f_op_f32(round(-1869f)), -445f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(260f)), _wgslsmith_f_op_f32(-1000f - 1848f), 1368f, _wgslsmith_f_op_f32(164f * -197f)))));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1589f, -678f), _wgslsmith_f_op_vec2_f32(max(var_0.ww, var_0.zw)), !vec2<bool>(false, var_1)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(904f, -1807f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1214f, 392f)), -913f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * var_0.x))) - _wgslsmith_f_op_f32(abs(var_0.x)))));
    var var_3 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 42906u)), select(vec2<u32>(_wgslsmith_div_u32(u_input.c, 19472u), reverseBits(u_input.c)), ~(vec2<u32>(18937u, 27812u) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u))), vec2<bool>(true, u_input.b == 38318i)) >> (vec2<u32>(~firstLeadingBit(u_input.c), ~(~4294967295u)) % vec2<u32>(32u)));
    var var_4 = Struct_1(var_0, 1u, var_0.yw, _wgslsmith_f_op_f32(exp2(var_0.x)));
    return _wgslsmith_f_op_vec4_f32(step(var_4.a, vec4<f32>(-1700f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-616f)))), _wgslsmith_f_op_f32(step(1f, 449f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = select(arg_0.xz, arg_0.xx, vec2<bool>(!any(!vec3<bool>(true, false, arg_3)), arg_3));
    var_0 = arg_0.ww;
    var_0 = !select(arg_0.zw, vec2<bool>(true, true), select(arg_0.wx, select(arg_0.zz, vec2<bool>(arg_3, false), true), all(!arg_0.xwy)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), ~(~u_input.c), arg_1.yy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(563f + _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), arg_2, false)));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, 1000f, var_1.d) * arg_1) - arg_1) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(110f, -1148f, -1427f, var_1.d)))))), 0u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.wz))), _wgslsmith_f_op_f32(573f + 1405f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(round(var_1.c.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1644f) * arg_2), -566f, 1184f) - var_1.a), firstLeadingBit(var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a.yx), vec2<f32>(-1399f, -1404f), arg_0.x | true)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(409f, arg_1.x)))))), arg_2);
}

fn func_1() -> f32 {
    let var_0 = !(!(!vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true)));
    let var_1 = _wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 51408u), vec3<u32>(u_input.c, 48795u, 0u)), min(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 40278u) >> (vec3<u32>(1u, u_input.c, 2807u) % vec3<u32>(32u)))));
    var var_2 = Struct_2(func_2(vec4<bool>(true, var_0.x, any(!vec3<bool>(var_0.x, var_0.x, var_0.x)), u_input.c > firstTrailingBit(u_input.c)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, 1146f, 286f, 1652f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-982f, 671f, -1743f, 1852f))))), _wgslsmith_f_op_f32(sign(-1229f)), true));
    var_2 = Struct_2(var_2.a);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-285f, _wgslsmith_f_op_f32(var_2.a.c.x - var_2.a.d), _wgslsmith_div_f32(-658f, -137f), -442f))), ~countOneBits(1u) << (u_input.c % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.d, -1175f)) * vec2<f32>(var_2.a.d, -409f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.a.yy * var_2.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f - -1000f) + -1467f))));
    return var_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, 478f, 643f, -222f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, 659f, 1000f, 883f) * vec4<f32>(951f, -1000f, 1746f, -976f)))), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.c, 0u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 13329u), vec2<u32>(0u, 4294967295u)), u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1322f), _wgslsmith_div_f32(-1668f, _wgslsmith_f_op_f32(f32(-1f) * -1283f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1599f - -815f))));
    var var_1 = vec2<f32>(638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.a.x)))) - _wgslsmith_f_op_f32(var_0.a.c.x + _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.a.x, -1606f), _wgslsmith_f_op_f32(func_1())))));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, -79165i, -(~(-u_input.b)), 2147483647i), ~vec4<i32>(u_input.b, -u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.a), vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.b)), -select(-2147483647i, 23467i, true)));
    let var_3 = vec3<bool>(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.d + -1000f), -112f)) > _wgslsmith_f_op_f32(var_0.a.d + -1161f), (_wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(ceil(625f))) || false, var_1.x == var_0.a.a.x), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.c.x - var_0.a.c.x), 171f)) > var_1.x), false);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a.ww * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, var_0.a.d)))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_0.a.d, var_0.a.d) * vec4<f32>(var_0.a.c.x, -377f, 510f, 1000f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_0.a.a), var_0.a.a)))), 1335u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.a.a.zx, var_0.a.a.yw)) * _wgslsmith_f_op_vec2_f32(-var_0.a.c)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(358f, -1137f)))), _wgslsmith_f_op_f32(exp2(var_0.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.a.x, -791f, var_4.a.d, var_4.a.d), var_4.a.a)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.a)) - var_4.a.a)), _wgslsmith_f_op_f32(var_0.a.d + -1465f), var_0.a.a.x);
}

