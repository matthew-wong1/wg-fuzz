struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(128f)), -800f, -643f))));
    var var_1 = Struct_2(max(~(~vec3<u32>(0u, 1u, 57291u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(55585u, 1u, arg_0.x), vec3<u32>(1u, arg_1.a.x, arg_1.a.x)), vec3<u32>(31920u, _wgslsmith_add_u32(max(4294967295u, arg_1.a.x), ~11920u), arg_1.a.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_div_f32(arg_2.a.x, 169f), 1000f);
    var_1 = arg_1;
    let var_2 = countOneBits(abs(u_input.c.zz));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-174f - _wgslsmith_f_op_f32(-arg_2.a.x)), 674f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b + 1508f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-804f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - arg_2.b)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, arg_2.b)))), 1075f));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_4(Struct_3(Struct_2(vec3<u32>(~21851u, u_input.a, u_input.a)), u_input.c.x), true, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(u_input.a, u_input.a, u_input.d), Struct_2(vec3<u32>(9632u, 4294967295u, u_input.a)), arg_0))), -1000f));
    let var_1 = var_0.a.a;
    var var_2 = Struct_2(vec3<u32>(~min(1u, ~20715u), firstLeadingBit(~0u), ~40740u));
    let var_3 = -reverseBits(u_input.c.yx);
    let var_4 = !vec2<bool>(true, !(!(var_0.b || false)));
    return -2219f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(arg_0, 858f, 287f, 274f), arg_0)))), arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))), -948f)));
    var var_1 = any(vec2<bool>(true, all(vec2<bool>(any(vec4<bool>(false, true, false, true)), true))));
    var var_2 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_3 = select(vec2<bool>(true, any(!vec2<bool>(var_2.x, var_2.x)) & false), vec2<bool>(!all(!vec3<bool>(var_2.x, true, true)), var_2.x), !(!(!select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x)))));
    var_3 = vec2<bool>(var_3.x, false);
    return Struct_4(Struct_3(Struct_2(vec3<u32>(u_input.a, 0u, _wgslsmith_sub_u32(4294967295u, u_input.d))), u_input.b), (-(~u_input.c.x) & arg_1) > u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(1u, 4294967295u, u_input.a), Struct_2(vec3<u32>(arg_3, 1u, 4294967295u)), Struct_1(var_0, -681f))))), _wgslsmith_f_op_f32(trunc(971f))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> Struct_3 {
    let var_0 = all(!vec3<bool>(select(u_input.b, arg_0.a.b, true) > reverseBits(arg_0.a.b), !arg_0.b & (804f > arg_0.c.b), arg_0.b));
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(arg_0.a.a.a.x, arg_2))), arg_0.a.a.a.zx), arg_0.a.a.a.zz);
    var var_2 = vec4<bool>(arg_0.b, any(select(select(vec4<bool>(false, arg_0.b, true, var_0), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec4<bool>(arg_0.b, true, var_0, var_0)), !vec4<bool>(false, var_0, true, false), true)), false, func_4(arg_1, -2147483647i, 29291i, ~var_1.x).b);
    var_2 = vec4<bool>(0u > arg_0.a.a.a.x, arg_0.b, var_2.x, var_0);
    let var_3 = !var_2.yzw;
    return arg_0.a;
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = arg_0;
    var_0 = func_5(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(292f, -256f, -982f, 862f), -845f))), 1f)), countOneBits(arg_0.b), 54562i, 26245u), -1669f, ~_wgslsmith_dot_vec2_u32(abs(~var_0.a.a.xy), vec2<u32>(~4294967295u, countOneBits(arg_0.a.a.x))));
    var var_1 = vec3<bool>(!(!(0i > u_input.c.x) && (~arg_0.a.a.x <= 4294967295u)), false, true);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)))));
    let var_3 = select(~u_input.d, func_5(func_4(-501f, -1i, var_0.b, _wgslsmith_div_u32(76638u, 13211u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1137f))) * _wgslsmith_f_op_f32(f32(-1f) * -298f)), ~_wgslsmith_mult_u32(4294967295u, u_input.d)).a.a.x, select(var_1.x, func_4(1948f, 1i, u_input.b, var_0.a.a.x).b, !(~(-24414i) > func_5(Struct_4(Struct_3(var_0.a, u_input.b), var_1.x, Struct_1(vec4<f32>(1000f, -777f, -224f, 319f), -434f)), 748f, arg_0.a.a.x).b)));
    return select(var_1.zz, vec2<bool>(!any(vec4<bool>(false, true, true, true)), true | var_1.x), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(min(firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a) & max(vec3<u32>(u_input.a, 37914u, 29239u), vec3<u32>(14824u, u_input.d, 49543u))), vec3<u32>(0u, ~u_input.a, 61953u << (max(u_input.d, 26843u) % 32u))));
    let var_1 = ~(~u_input.a);
    var var_2 = true;
    var var_3 = !any(vec4<bool>(true, false, true, true)) && true;
    var_2 = any(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), true), !func_1(Struct_3(Struct_2(vec3<u32>(u_input.d, u_input.a, var_0.a.x)), 2147483647i)), !vec2<bool>(u_input.a >= 29108u, true)));
    let var_4 = vec2<bool>((select(firstLeadingBit(u_input.b), _wgslsmith_add_i32(u_input.c.x, 42483i), any(vec4<bool>(false, true, false, false))) == min(u_input.b, firstTrailingBit(2147483647i))) || (func_4(1258f, u_input.c.x, 2147483647i, _wgslsmith_mult_u32(u_input.a, 21340u)).a.b == _wgslsmith_add_i32(u_input.b, u_input.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(u_input.c.x, 13719i, min(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(-1i, 39964i)), max(reverseBits(vec4<i32>(2147483647i, -1i, u_input.b, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(0i, -2147483647i, u_input.b, u_input.b))), !vec4<bool>(var_4.x, true, var_4.x, false)));
}

