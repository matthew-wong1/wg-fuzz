struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> bool {
    return !select(true || any(vec3<bool>(true, true, true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = ~(~(-_wgslsmith_div_vec4_i32(select(vec4<i32>(-33474i, arg_0, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1381i, 1i, 19173i), vec4<bool>(true, false, false, false)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, arg_0, arg_0, u_input.a.x)))));
    var var_1 = select(select(vec4<bool>(true, true, true, func_3(Struct_1(32271u))), vec4<bool>(_wgslsmith_f_op_f32(step(556f, 420f)) >= -523f, false, true, false), vec4<bool>(true, true, select(false, true, true), true)), vec4<bool>(true, !any(vec3<bool>(true, true, false)), !(!any(vec2<bool>(true, false))), !func_3(Struct_1(0u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, -2147483647i >= var_0.x, true), func_3(Struct_1(1u))), vec4<bool>(1i != arg_0, any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true, false), !vec4<bool>(true, true, all(vec2<bool>(true, true)), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    let var_3 = Struct_2(!var_1.x, Struct_1(~4294967295u));
    var_1 = vec4<bool>(select(var_3.a || (var_1.x | any(vec4<bool>(false, true, false, var_1.x))), var_3.a, var_3.a), true, all(vec4<bool>(all(!var_1.wxy), any(!vec4<bool>(var_3.a, true, var_1.x, var_3.a)), var_3.b.a >= _wgslsmith_dot_vec4_u32(vec4<u32>(43406u, var_3.b.a, 4294967295u, var_3.b.a), vec4<u32>(var_3.b.a, 0u, 10527u, 30570u)), true)), false);
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1038f, _wgslsmith_f_op_f32(trunc(669f)), arg_1.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(581f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1330f, 1000f, arg_0.a)), _wgslsmith_f_op_f32(1087f * 1673f)))), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2219f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-174f, -535f))))))));
    var var_1 = arg_0;
    let var_2 = Struct_3(arg_1.zwy, select(true, true, min(reverseBits(10174u), arg_2.b.a) >= (arg_0.b.a & var_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
    var_1 = func_2(51217i);
    let var_3 = var_2;
    return arg_2;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1.b.a & (max(~arg_1.b.a, reverseBits(1u)) ^ (_wgslsmith_sub_u32(0u, arg_1.b.a << (24613u % 32u)) >> ((reverseBits(arg_1.b.a) & 1u) % 32u)));
    var_0 = arg_1.b.a;
    let var_1 = vec4<u32>(24487u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.a, 1u) & vec2<u32>(arg_1.b.a, 0u), vec2<u32>(13586u, 9067u)), select(arg_1.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(12529u, arg_1.b.a, 1u, arg_1.b.a), vec4<u32>(19300u, 78962u, arg_1.b.a, 1u)), true)), 1u, ~3387u | _wgslsmith_dot_vec4_u32(vec4<u32>(46805u, 19798u, 63169u, 34937u), vec4<u32>(1510u, 68517u, arg_1.b.a, 1u))) & ~(~reverseBits(vec4<u32>(79780u, arg_1.b.a, 45192u, arg_1.b.a)) | (vec4<u32>(arg_1.b.a, 1u, arg_1.b.a, 1u) << ((vec4<u32>(4294967295u, arg_1.b.a, 37749u, arg_1.b.a) << (vec4<u32>(0u, arg_1.b.a, 0u, arg_1.b.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_2 = Struct_3(arg_0.wwz, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f * 1317f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(177f, -1570f)))));
    let var_3 = Struct_1(var_1.x);
    return arg_1.b;
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-arg_0.c));
    let var_1 = Struct_2(any(select(select(select(vec4<bool>(arg_0.a.x, false, false, arg_0.b), vec4<bool>(arg_0.a.x, true, true, arg_0.b), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.b)), vec4<bool>(true, false, arg_0.a.x, true), select(vec4<bool>(false, true, arg_0.a.x, true), vec4<bool>(false, arg_0.a.x, arg_0.b, arg_0.a.x), false)), !(!vec4<bool>(false, false, arg_0.a.x, true)), select(!vec4<bool>(arg_0.b, arg_0.a.x, arg_0.a.x, false), vec4<bool>(true, true, true, true), u_input.a.x < u_input.a.x))), func_5(vec4<bool>(!(arg_0.a.x & arg_0.b), u_input.a.x <= 19873i, arg_0.a.x, ~54632u >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9726u, 1u, 0u), vec4<u32>(1u, 4982u, 34787u, 67544u))), func_4(func_2(i32(-1i) * -1i), select(!vec4<bool>(false, arg_0.b, true, true), !vec4<bool>(arg_0.a.x, true, true, true), vec4<bool>(false, arg_0.a.x, arg_0.b, arg_0.b)), func_2(-u_input.a.x), ~(~u_input.a.x)), vec2<bool>(~4294967295u != select(88003u, 0u, arg_0.a.x), true)));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.c)), arg_0.c));
    var_0 = 472f;
    var var_2 = func_4(Struct_2(true, Struct_1(countOneBits(0u))), !select(vec4<bool>(var_1.a, var_1.a, all(vec3<bool>(false, false, true)), var_1.a & var_1.a), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_1.a, false), func_3(Struct_1(4315u))), vec4<bool>(arg_0.c <= 472f, arg_0.b, !arg_0.a.x, func_4(Struct_2(var_1.a, Struct_1(18692u)), vec4<bool>(arg_0.a.x, true, arg_0.b, arg_0.b), Struct_2(var_1.a, var_1.b), 25544i).a)), func_4(var_1, !vec4<bool>(var_1.a, var_1.a, true, u_input.a.x <= u_input.a.x), func_4(Struct_2(103f <= arg_0.c, var_1.b), !select(vec4<bool>(var_1.a, true, arg_0.a.x, false), vec4<bool>(false, false, false, var_1.a), vec4<bool>(arg_0.b, true, true, true)), var_1, u_input.a.x & ~(-17301i)), 0i), firstLeadingBit(-2998i) >> (var_1.b.a % 32u)).b;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1897f, 991f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(688f))))))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = func_1(Struct_3(vec3<bool>(true, true, true), !(!(true || var_1.x)), 774f));
    var_2 = func_1(Struct_3(select(vec3<bool>(var_0.x > -1000f, var_1.x, true), vec3<bool>(true, false, var_1.x || false), vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(867f, _wgslsmith_f_op_f32(sign(-965f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(var_2.a, _wgslsmith_mult_u32(var_2.a, var_2.a), 4294967295u, firstTrailingBit(var_2.a))) | ~vec4<u32>(var_2.a, _wgslsmith_sub_u32(var_2.a, 12453u), 1u, 52662u), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, var_0.x))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~u_input.a.x, (u_input.a.x >> (0u % 32u)) & 1i), -1i), abs((_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_2.a, var_2.a)) | ~vec2<u32>(4294967295u, var_2.a)) & ~(~vec2<u32>(0u, 0u))));
}

