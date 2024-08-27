struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-378f, -1505f, -1207f) + vec3<f32>(2190f, -1364f, -1494f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1095f, -136f, -1000f))))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(533f, 134f)), _wgslsmith_f_op_f32(1f * 1332f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, 204f)) - -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -252f))));
    let var_1 = Struct_1(arg_0);
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(1390f * -1217f)))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1059f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-116f, 1015f) + 1f)), 4294967295u >= ~(~u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -321f);
    let var_2 = ~vec3<i32>(u_input.d.x, 52511i, u_input.d.x);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1866f - -2095f)) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-780f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(~min(~vec3<u32>(u_input.e.x, 0u, u_input.b.x), vec3<u32>(2848u, 72326u, 4294967295u)), ~(~vec3<u32>(u_input.e.x, 1u, u_input.a))), u_input.b.zzz);
    var var_1 = Struct_2(Struct_1(!arg_1.a));
    let var_2 = ~0u;
    var_1 = Struct_2(arg_1);
    let var_3 = Struct_2(var_1.a);
    return Struct_3(var_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, arg_1.a.x)))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-170f, -1229f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(207f, 411f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1458f, 799f, 430f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1837f, -734f, 1000f), vec3<f32>(-258f, -772f, 801f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, 1000f, 424f) * vec3<f32>(-1565f, -287f, 221f))), select(all(var_1.a.a), arg_1.a.x, !var_1.a.a.x))))), u_input.d);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(arg_2.a.a);
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(func_4(u_input.e.x, vec3<u32>(_wgslsmith_add_u32(u_input.e.x, u_input.a) | 55856u, 39062u, 31060u), func_2(18877i, Struct_1(vec2<bool>(true, false)), u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zx + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_0.x), arg_0.wz)) * _wgslsmith_f_op_vec2_f32(-arg_0.xx))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1627f))))), arg_0.xwy, _wgslsmith_add_vec3_i32(-u_input.d, vec3<i32>(-1i, u_input.c, u_input.d.x | 28273i) ^ u_input.d));
    let var_1 = !(!select(select(!vec3<bool>(true, false, var_0.a.a.a.x), select(vec3<bool>(false, true, var_0.a.a.a.x), vec3<bool>(var_0.a.a.a.x, var_0.a.a.a.x, false), true), true), vec3<bool>(var_0.a.a.a.x && var_0.a.a.a.x, !var_0.a.a.a.x, var_0.a.a.a.x | true), !vec3<bool>(var_0.a.a.a.x, false, true)));
    let var_2 = arg_0.wy;
    return func_2(-9122i, Struct_1(vec2<bool>(true, true)), u_input.d.x).a.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> StorageBuffer {
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(firstTrailingBit(vec4<i32>(42225i, u_input.d.x, -25134i, u_input.d.x))), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.c, -38610i, u_input.c), vec4<i32>(u_input.d.x, 4344i, u_input.c, -1i))), -firstLeadingBit(reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x)))));
    let var_1 = -select(-1i << (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u), 0i, arg_1.a.x) ^ reverseBits(~_wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, var_0.x), _wgslsmith_mod_i32(29317i, var_0.x)));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_vec2_f32(func_3(arg_1.a)).x), _wgslsmith_f_op_f32(trunc(1297f)), -589f, 1085f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f - _wgslsmith_f_op_f32(-613f * 1340f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1589f))), -1125f, -580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) - _wgslsmith_f_op_f32(-1897f - -304f)) + _wgslsmith_f_op_f32(-816f * 1911f))));
    let var_3 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-711f, _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_2.xw * vec2<f32>(var_2.x, var_2.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-347f, 2164f, var_2.x))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1948f, -148f, var_2.x), vec3<f32>(-451f, var_2.x, -1616f), vec3<bool>(true, arg_0.a.a.x, true))), var_2.xyz))) - var_2.yzz), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(vec3<i32>(1i, -2147483647i, var_1) >> (arg_2.zzx % vec3<u32>(32u))), var_0.wyz));
    let var_4 = func_2(-min(-2147483647i, var_1), arg_0.a, _wgslsmith_add_i32(-1i, -_wgslsmith_mult_i32(var_1, -13073i) << (~_wgslsmith_div_u32(arg_2.x, 0u) % 32u)));
    return StorageBuffer(-u_input.d << (vec3<u32>(arg_2.x, 4294967295u, ~u_input.e.x & _wgslsmith_dot_vec3_u32(u_input.b.xyy, arg_2.www)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(-1633f)), _wgslsmith_f_op_f32(524f - 244f), _wgslsmith_f_op_f32(1000f * -861f), _wgslsmith_f_op_f32(ceil(350f))))), Struct_1(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(404f, -2461f, 472f, 202f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(687f, 1511f, 2238f, -1929f), vec4<f32>(135f, -637f, 2107f, -2000f), vec4<bool>(true, true, false, true))))).a), ~min(~u_input.e, u_input.b));
}

