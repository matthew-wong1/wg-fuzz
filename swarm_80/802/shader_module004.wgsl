struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_5) -> vec2<bool> {
    var var_0 = arg_3.a;
    return var_0.d;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = u_input.c.yx;
    var_0 = ~select(vec2<i32>(-97496i, ~arg_3.a.x), arg_3.a.yy, func_3(select(arg_3.b, select(vec3<bool>(false, true, arg_2.b.b.x), vec3<bool>(false, true, arg_2.a.b.x), arg_3.b), arg_1.x), firstTrailingBit(vec4<u32>(1u, arg_2.b.d, 1u, 0u)) ^ select(vec4<u32>(10624u, 0u, 0u, arg_2.b.d), u_input.a, arg_2.b.e), 1i, Struct_5(Struct_4(Struct_3(true, arg_0), arg_3.a.x, false, vec2<bool>(true, true)))).x);
    var_0 = vec2<i32>(((i32(-1i) * -2147483647i) ^ (0i | arg_3.a.x)) ^ firstLeadingBit(1i), arg_2.b.a.x);
    var var_1 = u_input.c.xz;
    var_1 = u_input.b.xy;
    return select(func_3(arg_2.b.b, u_input.a, 55057i, Struct_5(Struct_4(Struct_3(true, arg_2.b.c), 0i, true, vec2<bool>(false, false)))), select(func_3(!select(vec3<bool>(arg_3.e, false, arg_3.e), arg_2.a.b, vec3<bool>(false, false, arg_2.b.e)), ~countOneBits(vec4<u32>(0u, 31164u, arg_3.d, 33771u)), ~firstLeadingBit(var_1.x), Struct_5(Struct_4(Struct_3(arg_2.a.b.x, 1635f), 50375i, true, vec2<bool>(false, arg_2.b.e)))), !(!arg_3.b.xy), true), arg_2.a.b.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(true, -1328f);
    var var_1 = !vec2<bool>(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(143f * 1063f)) > _wgslsmith_f_op_f32(-var_0.b), any(vec2<bool>(true, true)));
    var_1 = vec2<bool>(2147483647i != u_input.b.x, select(var_1.x, true, any(vec4<bool>(var_1.x, true, false, false))));
    var var_2 = select(select(func_4(-1489f, !func_3(vec3<bool>(false, var_1.x, var_0.a), vec4<u32>(1u, 27741u, u_input.a.x, 20098u), u_input.b.x, Struct_5(Struct_4(Struct_3(false, 1116f), u_input.b.x, true, vec2<bool>(var_1.x, var_0.a)))), Struct_2(Struct_1(u_input.c, vec3<bool>(var_0.a, var_1.x, var_1.x), -1395f, 16358u, var_1.x), Struct_1(u_input.b, vec3<bool>(var_0.a, var_1.x, false), -452f, 13004u, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 699f)), _wgslsmith_f_op_f32(floor(485f))), Struct_1(vec3<i32>(0i, 54208i, 0i), select(vec3<bool>(true, true, var_0.a), vec3<bool>(false, true, var_1.x), var_1.x), _wgslsmith_div_f32(-1360f, 172f), 1u, var_1.x | false)), select(!vec2<bool>(false, var_0.a), vec2<bool>(var_0.a | false, var_1.x), any(select(vec4<bool>(var_0.a, var_0.a, var_1.x, var_0.a), vec4<bool>(false, var_0.a, var_1.x, var_0.a), true))), true), vec2<bool>(var_0.a, false & var_0.a), select(!select(vec2<bool>(true, true), select(vec2<bool>(var_0.a, var_1.x), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a)), vec2<bool>(var_1.x, var_1.x)), select(select(vec2<bool>(var_0.a, true), vec2<bool>(true, true), var_0.a), !vec2<bool>(var_0.a, false), !vec2<bool>(var_1.x, var_1.x)), !select(vec2<bool>(var_0.a, false), func_3(vec3<bool>(true, var_0.a, false), u_input.a, 2147483647i, Struct_5(Struct_4(Struct_3(true, var_0.b), u_input.b.x, true, vec2<bool>(var_1.x, var_0.a)))), true)));
    var_2 = select(select(vec2<bool>(any(!vec3<bool>(var_0.a, false, false)), !(u_input.c.x == u_input.c.x)), !(!(!vec2<bool>(var_1.x, var_1.x))), func_3(select(!vec3<bool>(var_2.x, false, var_0.a), !vec3<bool>(false, var_1.x, true), true), ~(~u_input.a), ~36869i, Struct_5(Struct_4(var_0, u_input.b.x, true, vec2<bool>(true, true)))).x), vec2<bool>(!(!any(vec2<bool>(true, true))), true), func_3(vec3<bool>(any(vec2<bool>(var_0.a, true)) | var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(0i, 49558i, -13190i)) != _wgslsmith_div_i32(1i, u_input.c.x), true), reverseBits(abs(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x) | u_input.a)), -1i, Struct_5(Struct_4(Struct_3(true, var_0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -19024i, u_input.b.x), vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i)), !var_0.a, vec2<bool>(true, false)))).x);
    return Struct_2(Struct_1(u_input.c << (vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x)) % vec3<u32>(32u)), !vec3<bool>(true, var_0.b > var_0.b, all(vec3<bool>(true, var_0.a, var_1.x))), 2751f, 0u, !var_0.a), Struct_1(u_input.b, !select(!vec3<bool>(var_0.a, var_2.x, false), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_0.a, true), false), select(vec3<bool>(var_0.a, var_2.x, var_1.x), vec3<bool>(var_0.a, var_1.x, true), vec3<bool>(var_2.x, true, var_1.x))), 1168f, (~u_input.a.x | u_input.a.x) | max(49830u, _wgslsmith_dot_vec3_u32(u_input.a.yzx, u_input.a.xzw)), any(vec2<bool>(true, !var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(903f - 242f), _wgslsmith_div_f32(var_0.b, 1069f))), 601f);
}

fn func_1() -> Struct_2 {
    var var_0 = 4294967295u;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(Struct_3(-3109i == (max(-59826i, 2147483647i) >> (func_2().b.d % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-136f)), _wgslsmith_f_op_f32(trunc(531f)))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(var_0.a.c))))), abs(~u_input.c.x) >> (~reverseBits(1u << (u_input.a.x % 32u)) % 32u), func_4(-870f, select(!var_0.a.b.zz, vec2<bool>(var_0.b.a.x < 40513i, func_1().b.b.x), _wgslsmith_f_op_f32(ceil(1333f)) < 890f), func_2(), func_2().a).x, !var_0.b.b.zy);
    var_0 = func_1();
    var_0 = Struct_2(var_0.b, func_1().b, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.b - func_2().d) * -572f)));
    var_0 = Struct_2(var_0.b, Struct_1(func_1().b.a, select(!var_0.a.b, vec3<bool>(!var_0.b.b.x, false, true), !var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1766f + 824f) * _wgslsmith_f_op_f32(sign(-868f))), ~4294967295u, var_0.b.e), vec2<f32>(-500f, var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)));
    var var_2 = -4395i;
    var var_3 = true;
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.b), 832f, 1f) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.b, -571f, var_0.c.x), vec3<f32>(-1219f, 162f, 899f), vec3<bool>(true, var_0.b.b.x, false))), vec3<f32>(var_0.a.c, var_1.a.b, 2501f))))), reverseBits(0u));
}

