struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(vec2<f32>(893f, _wgslsmith_f_op_f32(trunc(-849f))), -countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -4912i, -1098i)) | vec4<i32>(u_input.a.x, u_input.a.x, -11413i, u_input.a.x)), ~select(~11609u, 1u, true) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(19455u, 19125u, 4294967295u, 80595u), vec4<u32>(2609u, 16747u, 0u, 0u))), vec4<u32>(5990u, 4294967295u, 4294967295u, 1u)) % 32u));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(reverseBits(var_0.c), var_0.c), 19375u, _wgslsmith_div_u32(4294967295u, ~var_0.c ^ 50030u) >> (firstLeadingBit(abs(1u)) % 32u));
    var var_2 = var_0;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(floor(656f))) + -1540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 265f)))), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 16374i), var_0.c);
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_2.xx))), firstLeadingBit(var_2.b), ~(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(22302u, var_1.x, 4294967295u, var_0.c), vec4<u32>(var_3.c, 11879u, var_2.c, 11767u)), ~var_3.c)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -585f), _wgslsmith_f_op_f32(func_3(307f, vec4<f32>(-567f, 883f, -1482f, 855f), vec3<f32>(1000f, -1000f, 1000f), 248f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-163f, -1743f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-291f, 591f)), _wgslsmith_div_vec2_f32(vec2<f32>(1795f, -951f), vec2<f32>(1000f, 222f)))))), _wgslsmith_sub_vec4_i32((_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -50111i, 9152i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 26135i, u_input.a.x)) << (~vec4<u32>(4294967295u, 5985u, 1u, 1u) % vec4<u32>(32u))) & vec4<i32>(abs(8933i), 27624i, ~u_input.a.x, countOneBits(u_input.a.x)), reverseBits(~(vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i) | vec4<i32>(24601i, u_input.a.x, u_input.a.x, u_input.a.x)))), ~countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(44560u, 1u, 24889u, 18761u), max(vec4<u32>(61793u, 1u, 1u, 12530u), vec4<u32>(0u, 38982u, 41017u, 32272u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 430f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2133f, var_0.a.x) - vec2<f32>(var_0.a.x, var_0.a.x)))))), select(abs((vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -2147483647i) & vec4<i32>(u_input.a.x, u_input.a.x, var_0.b.x, -9575i)) | -vec4<i32>(1i, -35873i, u_input.a.x, -10523i)), -_wgslsmith_add_vec4_i32(~var_0.b, -vec4<i32>(-37991i, u_input.a.x, 0i, u_input.a.x)), any(vec4<bool>(true, true, true, true))), 7181u ^ ~var_0.c);
    var var_2 = var_0.a.x;
    var_0 = var_1;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2492f), var_0.a.x), _wgslsmith_div_vec4_i32(var_0.b, vec4<i32>(reverseBits(31318i), reverseBits(~u_input.a.x), 2147483647i, 2147483647i)), ~(var_0.c & countOneBits(var_1.c)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.a, var_3.a)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.a, _wgslsmith_f_op_vec2_f32(-var_0.a)))), var_3.b, 87811u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~(max(vec2<u32>(max(arg_0, 39913u), ~arg_2.c), ~(~vec2<u32>(arg_0, 29u))) >> (~vec2<u32>(arg_2.c & 4294967295u, arg_2.c) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-667f, 1244f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))))), 1042f);
    var_1 = _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x);
    return func_2();
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1(1u, vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(arg_1.c, vec4<f32>(-366f, arg_0.x, arg_1.a.x, -363f), Struct_1(vec2<f32>(-1000f, arg_1.a.x), vec4<i32>(arg_1.b.x, u_input.a.x, 2147483647i, -24173i), arg_1.c)).a.x)), 527f, _wgslsmith_f_op_f32(func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1000f, -1715f, 650f), vec4<f32>(1431f, 648f, -530f, arg_1.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1271f, -999f, 657f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))), arg_1).b.wxw;
    let var_1 = !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), any(vec2<bool>(false, true))), any(vec3<bool>(false, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_1.c, arg_1.c), 1u), 2813u), arg_1.c & arg_1.c, arg_1.c);
    var var_3 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(977f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(390f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1484f)))) + -1058f)));
    var var_4 = -var_0.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = func_4(vec2<f32>(-737f, arg_0.a.x), func_2());
    var_0 = Struct_1(var_0.a, ~var_0.b, ~(~(~arg_3.c << (abs(0u) % 32u))));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(-arg_0.a), func_1(35112u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, 532f, var_0.a.x, var_0.a.x) + vec4<f32>(1014f, arg_0.a.x, arg_3.a.x, var_0.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, arg_3.a.x)), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(141f * -1333f))), Struct_1(var_0.a, vec4<i32>(-1i) * -vec4<i32>(-2981i, 2147483647i, arg_3.b.x, arg_1), max(var_0.c, firstLeadingBit(arg_0.c)))));
    var var_1 = select(arg_2.xz, !vec2<bool>(true, all(arg_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-440f * -1000f), -1334f, all(vec3<bool>(arg_2.x, true, false)))), _wgslsmith_f_op_f32(-413f * -1148f))) < _wgslsmith_f_op_f32(abs(func_1(_wgslsmith_sub_u32(4294967295u, 16894u), _wgslsmith_div_vec4_f32(vec4<f32>(-612f, 1259f, arg_3.a.x, -146f), vec4<f32>(-841f, arg_0.a.x, var_0.a.x, arg_3.a.x)), Struct_1(arg_0.a, vec4<i32>(-48400i, u_input.a.x, arg_3.b.x, -24388i), 0u)).a.x)));
    var var_2 = func_4(vec2<f32>(var_0.a.x, arg_3.a.x), arg_3);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1231f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - 933f), _wgslsmith_f_op_f32(f32(-1f) * -724f), any(arg_2.zz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-315f, -1198f), vec2<f32>(648f, -130f), var_0)), firstLeadingBit(vec4<i32>(8589i, 5012i, 16396i, u_input.a.x)), firstTrailingBit(29928u)), u_input.a.x, !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, var_0)), func_4(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(648f, -1232f))), func_1(6381u, vec4<f32>(388f, -731f, 101f, -924f), Struct_1(vec2<f32>(-1414f, -1000f), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), 21934u))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(421f - -1000f)))) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1077f - 2724f), _wgslsmith_f_op_f32(f32(-1f) * -409f))), _wgslsmith_f_op_f32(f32(-1f) * -807f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(~vec4<u32>(~71030u, firstLeadingBit(1172u), min(60299u, 1u), 1u), ~vec4<u32>(1u, 1u, _wgslsmith_mod_u32(55004u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 30707u), vec2<u32>(60947u, 73616u)))));
}

