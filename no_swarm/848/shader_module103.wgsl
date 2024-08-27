struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    return Struct_1(vec3<u32>(u_input.b, u_input.b, reverseBits(u_input.b)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-17765i) << (~u_input.b % 32u), u_input.c, 63364i, 1i), vec4<i32>(0i, countOneBits(_wgslsmith_mult_i32(u_input.c, u_input.c)), global0[_wgslsmith_index_u32(38557u, 8u)], global0[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_mult_u32(4294967295u, u_input.b), 8u)])), Struct_1(select(vec3<u32>(91098u, u_input.b, u_input.b) >> (reverseBits(vec3<u32>(u_input.b, u_input.b, 0u)) % vec3<u32>(32u)), ~(~vec3<u32>(u_input.b, u_input.b, 27736u)), true)), func_1(-31226i), Struct_1(vec3<u32>(60841u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b, 1u), 0u >> (u_input.b % 32u)), _wgslsmith_div_u32(~66736u, ~25607u))));
    var var_1 = Struct_2(var_0.a, var_0.b, Struct_1(~(~var_0.c.a)), func_1(-83526i));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(1f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-266f)) * _wgslsmith_f_op_f32(736f - -621f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(496f)), -587f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1476f, 117f) - _wgslsmith_f_op_f32(f32(-1f) * -262f)), !any(vec2<bool>(false, true)))), -326f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1252f, 547f, 728f, 678f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2319f, -1347f, 429f, -301f))) * vec4<f32>(601f, 116f, -1234f, -1000f))))), true));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1305f, 452f, 671f, -397f) + vec4<f32>(760f, -774f, -201f, -387f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))))) * vec4<f32>(544f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(f32(-1f) * -756f)))), _wgslsmith_f_op_f32(701f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2424f, 383f, arg_0.x)) + 171f)), _wgslsmith_f_op_f32(343f + -1214f)));
    global0 = array<i32, 8>();
    let var_1 = func_1(global0[_wgslsmith_index_u32(69733u, 8u)]);
    global0 = array<i32, 8>();
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = true;
    global0 = array<i32, 8>();
    var var_1 = select(var_0, true, all(!select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), vec2<bool>(true, var_0))) & true);
    global0 = array<i32, 8>();
    let var_2 = arg_2;
    return Struct_2(-1i, func_2(!select(vec4<bool>(false, true, var_0, var_0), !vec4<bool>(var_0, var_0, true, false), vec4<bool>(true, true, var_0, var_0)), arg_2), Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.b, 1u), ~u_input.b, ~(arg_2.a.x | 1u))), func_2(vec4<bool>(var_0, false, false, !var_0), Struct_1(vec3<u32>(~arg_0.a.x, var_2.a.x, u_input.b))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_2(vec4<bool>(any(vec2<bool>(true, u_input.b == 25489u)), !all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), false, true), func_1(25533i));
    global0 = array<i32, 8>();
    let var_1 = firstTrailingBit(_wgslsmith_div_vec3_i32(max(vec3<i32>(0i, -1i, -2147483647i), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(1u << (var_0.a.x % 32u), 8u)], -22393i)), -(vec3<i32>(arg_0.a, 37042i, global0[_wgslsmith_index_u32(var_0.a.x, 8u)]) & vec3<i32>(global0[_wgslsmith_index_u32(arg_0.d.a.x, 8u)], u_input.a, global0[_wgslsmith_index_u32(var_0.a.x, 8u)])) | countOneBits(abs(vec3<i32>(50869i, arg_0.a, global0[_wgslsmith_index_u32(arg_0.b.a.x, 8u)])))));
    var var_2 = arg_0;
    let var_3 = firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-var_1.yy, firstLeadingBit(var_1.zx)), vec2<i32>(var_1.x, -global0[_wgslsmith_index_u32(14386u, 8u)]), select(var_1.zx, select(vec2<i32>(-1i, global0[_wgslsmith_index_u32(arg_0.c.a.x, 8u)]), var_1.zz, vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), vec2<i32>(firstLeadingBit(-73018i), ~2147483647i) << (~vec2<u32>(arg_0.d.a.x, 44859u) % vec2<u32>(32u))));
    return Struct_1(vec3<u32>(~arg_0.d.a.x, 32297u, firstTrailingBit(var_2.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(298f, 373f, 666f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1017f, -563f, _wgslsmith_f_op_f32(min(1860f, -333f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1173f, 249f), vec3<f32>(1367f, 394f, -891f), 13323u != u_input.b)))));
    var var_1 = Struct_2(~(global0[_wgslsmith_index_u32(u_input.b, 8u)] & -(i32(-1i) * -7323i)), func_5(func_4(func_2(vec4<bool>(false, true, false, false), func_1(u_input.a)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(u_input.b, u_input.b, false), u_input.b, u_input.b), 8u)], Struct_1(~vec3<u32>(0u, u_input.b, u_input.b)))), func_2(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), true), func_5(func_4(func_4(Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)), u_input.a, Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b))).c, ~global0[_wgslsmith_index_u32(1u, 8u)], func_2(vec4<bool>(false, false, true, false), Struct_1(vec3<u32>(u_input.b, u_input.b, u_input.b)))))), Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, u_input.b, 40337u)), vec3<u32>(u_input.b ^ u_input.b, reverseBits(u_input.b), 9622u))));
    var var_2 = Struct_2(-1585i & -max(global0[_wgslsmith_index_u32(select(44786u, var_1.b.a.x, false), 8u)], global0[_wgslsmith_index_u32(u_input.b >> (25215u % 32u), 8u)]), var_1.b, func_5(Struct_2(u_input.a, Struct_1(~vec3<u32>(var_1.b.a.x, 28682u, 131928u)), Struct_1(vec3<u32>(u_input.b, var_1.c.a.x, 0u)), Struct_1(var_1.c.a))), func_2(vec4<bool>(true, true, true, true), Struct_1(max(var_1.b.a, ~var_1.c.a))));
    var var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), false, true), !all(vec3<bool>(true, true, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true), vec3<bool>(true, false, false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !vec3<bool>(true, 29077i != u_input.a, var_1.a <= -1i));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-select(var_1.a, -1i, var_3.x))), -(~vec2<i32>(-2147483647i, var_1.a)));
}

