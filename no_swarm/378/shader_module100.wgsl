struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-132f)), _wgslsmith_sub_u32(~max(_wgslsmith_mult_u32(25900u, u_input.b), 1u), 1u << (~u_input.e % 32u)), true, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1570f - -2519f), -814f, _wgslsmith_f_op_f32(ceil(-1652f)))))));
    let var_1 = -2147483647i;
    var var_2 = select(~countOneBits(_wgslsmith_sub_i32(1i, max(35221i, var_1))), 4309i, !any(vec3<bool>(all(vec4<bool>(false, true, false, var_0.d)), true, true)));
    var var_3 = countOneBits(var_1);
    var_3 = ~abs(u_input.c.x);
    return all(vec4<bool>(!(countOneBits(u_input.b) <= (0u ^ u_input.b)), var_0.c, true || !all(vec3<bool>(false, var_0.d, true)), any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<bool>(false, all(vec4<bool>(true, false, true, true)), !all(vec4<bool>(arg_2.d, true, false, false)) == all(select(!vec2<bool>(false, arg_2.d), vec2<bool>(true, false), arg_2.c)), false);
    let var_1 = Struct_2(var_0.x, all(select(vec3<bool>(true, true, func_3()), var_0.yww, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.a)), _wgslsmith_f_op_f32(-275f * arg_2.a)), arg_2.e.x, -1064f, -1608f)), !(!var_0.zxz));
    var_0 = !vec4<bool>(var_1.b, u_input.e >= 0u, !(!(-10619i >= arg_1.x)), arg_2.e.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - var_1.c.x)));
    let var_2 = vec4<u32>(~reverseBits(73385u), _wgslsmith_add_u32(select(min(1u, arg_2.b), u_input.b, any(select(var_0.ww, var_1.d.zx, vec2<bool>(true, arg_2.d)))), arg_0.x), u_input.e, ~4294967295u);
    var_0 = !vec4<bool>(var_1.a, !any(var_0.wyx), !all(var_0.zz) || false, all(!select(var_0.wz, var_1.d.zx, vec2<bool>(var_1.d.x, true))));
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_div_f32(719f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))), func_4(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.e, u_input.b), vec3<u32>(4294967295u, 11423u, 29518u)), ~u_input.e, 1u, 4294967295u | u_input.e) << (~vec4<u32>(4859u, 34481u, u_input.b, 0u) % vec4<u32>(32u)), select(-(vec2<i32>(-2147483647i, u_input.a) << (vec2<u32>(29751u, u_input.e) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(u_input.c, u_input.c & u_input.c, vec2<i32>(u_input.a, -2147483647i)), vec2<bool>(func_3(), false)), Struct_1(-1070f, min(max(u_input.b, u_input.b), abs(35565u)), (u_input.e < 63931u) || false, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1866f, -562f, -846f), vec3<f32>(-1000f, -1000f, 1000f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1429f, 1999f, -1000f)))))), all(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false)))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-996f)), -310f, -945f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(929f, -263f, -1000f) + vec3<f32>(243f, 531f, 319f)))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(arg_0.c.x, ~(~(~u_input.b)) << (~1u % 32u), (!(arg_0.b & true) | !any(arg_0.d)) | all(!(!arg_0.d)), all(!(!arg_0.d.xx)), _wgslsmith_f_op_vec3_f32(-arg_0.c.zzx));
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_f32(527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a)))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -828f), _wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(834f, -1238f) + _wgslsmith_f_op_f32(select(-979f, 1631f, arg_0.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1390f));
    let var_4 = Struct_3(Struct_2(true, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 1103f, var_2, var_2)), arg_0.c)) * vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(floor(1000f)), var_0.e.x, _wgslsmith_f_op_f32(var_2 - var_0.e.x))), arg_0.d), true);
    return _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-var_3.x), var_4.b & all(select(vec3<bool>(false, var_4.a.a, true), select(var_4.a.d, vec3<bool>(var_1.d, var_1.c, true), false), var_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2039f, 1023f, -223f, -1085f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(770f)) - 562f), _wgslsmith_f_op_f32(-1348f * -272f), _wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(584f)) + _wgslsmith_f_op_f32(func_1(Struct_2(true, true, vec4<f32>(-1194f, -648f, 602f, 444f), vec3<bool>(false, true, true))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2().e.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-983f, var_0.x, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f * var_0.x) - _wgslsmith_div_f32(var_0.x, 1007f)), _wgslsmith_f_op_f32(1f * -379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))));
    var var_1 = vec2<bool>(false, (~min(u_input.e, 1u) != min(_wgslsmith_mult_u32(1u, u_input.e), ~u_input.b)) & all(vec2<bool>(true, true)));
    var var_2 = Struct_2(any(vec4<bool>(_wgslsmith_f_op_f32(-var_0.x) >= -885f, !var_1.x, func_3() & all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !(u_input.e < 4294967295u))), true, vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), 113f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(true, var_1.x, vec4<f32>(-675f, -554f, 513f, -816f), vec3<bool>(true, var_1.x, var_1.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(!select(vec3<bool>(true, true, var_1.x), !vec3<bool>(true, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), select(select(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, false), vec3<bool>(false, var_1.x, var_1.x)), vec3<bool>(false, var_1.x, true), select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x))), vec3<bool>(true, all(vec2<bool>(true, var_1.x)), !var_1.x), var_1.x), true & !(var_1.x != true)));
    var_2 = Struct_2((true & (u_input.d != reverseBits(u_input.a))) || var_1.x, true, vec4<f32>(var_2.c.x, var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), -380f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), var_0.x)), !var_2.d);
    var_1 = !var_2.d.yy;
    let var_3 = -(~(~vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 6158i), i32(-1i) * -1i)));
    var var_4 = vec2<bool>(var_1.x, var_1.x);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), ~1u, true, var_2.d.x, var_0.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(-218f, ~(~reverseBits(vec3<u32>(var_5.b, 3939u, 1u) >> (vec3<u32>(0u, u_input.b, 913u) % vec3<u32>(32u)))), _wgslsmith_mult_vec4_i32(-(~(vec4<i32>(-2147483647i, 5984i, var_3.x, 1i) >> (vec4<u32>(var_5.b, 74661u, 1u, var_5.b) % vec4<u32>(32u)))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, -38247i, var_3.x), vec4<i32>(u_input.a, -1i, var_3.x, u_input.c.x)), ~24122i, 2147483647i >> (var_5.b % 32u), var_3.x))), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(21443u, var_5.b), u_input.e, var_5.b) << (u_input.e % 32u));
}

