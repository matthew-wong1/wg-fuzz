struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5, arg_3: i32) -> vec2<u32> {
    var var_0 = vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.a + -153f), -244f), _wgslsmith_f_op_f32(arg_2.a.a - _wgslsmith_f_op_f32(select(arg_2.a.a, arg_2.a.a, false))))))));
    let var_1 = !any(select(arg_2.b.yz, select(select(arg_2.b.zx, arg_2.b.zw, false), vec2<bool>(arg_2.b.x, false), arg_2.b.x), select(arg_2.b.xy, select(vec2<bool>(arg_2.b.x, true), vec2<bool>(false, false), arg_2.b.x), arg_2.b.zx)));
    var var_2 = vec4<u32>(max(43899u, _wgslsmith_mult_u32(select(~8626u, 1u, var_1), ~75813u)), arg_0, arg_0, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_0, arg_0) << (4294967295u % 32u), select(~4294967295u, ~22037u, !var_1), ~abs(26354u))));
    var var_3 = firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_i32(min(-arg_3, _wgslsmith_add_i32(3337i, 57277i)), 16200i, -1i & u_input.a.x)));
    var var_4 = _wgslsmith_mult_vec3_i32(u_input.a >> (~vec3<u32>(_wgslsmith_div_u32(18510u, arg_0), 53426u ^ arg_0, arg_0) % vec3<u32>(32u)), u_input.a);
    return var_2.wx;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> u32 {
    let var_0 = select(_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(arg_0.b, 116127u)), ~countOneBits(~firstLeadingBit(arg_1)), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)));
    var var_1 = Struct_3(select(func_3(arg_1.x >> (arg_1.x % 32u), Struct_2(arg_2), Struct_5(Struct_2(-1506f), vec4<bool>(false, false, false, true), u_input.a.x), min(24193i, -17942i)) & _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_0, vec2<u32>(var_0.x, 36674u)), ~arg_1), var_0, false), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_0.x, arg_1.x, arg_1.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 38309u, 1u, 0u), vec4<u32>(42353u, arg_1.x, arg_1.x, var_0.x))), select(~vec4<u32>(arg_1.x, 4294967295u, arg_0.b, 4294967295u), ~vec4<u32>(var_0.x, var_0.x, arg_1.x, arg_0.a), vec4<bool>(true, true, true, true))), arg_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - -306f))), arg_0);
    var var_2 = var_1.d.a;
    var_2 = arg_2;
    let var_3 = vec2<u32>(firstTrailingBit(var_0.x), 19891u) | var_0;
    return _wgslsmith_clamp_u32(countOneBits(~abs(1u)), ~56496u, arg_1.x);
}

fn func_1() -> vec4<u32> {
    var var_0 = 1u < _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(func_2(Struct_1(93844u, 28235u, vec4<i32>(78117i, -1i, 2147483647i, u_input.a.x)), vec2<u32>(14196u, 1u), -968f), _wgslsmith_mult_u32(1u, 36487u), ~24292u), ~_wgslsmith_div_u32(func_2(Struct_1(1u, 62558u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(1u, 29927u), -1635f), ~1u));
    var var_1 = Struct_5(Struct_2(-1000f), select(vec4<bool>(!(u_input.a.x != 1i), false, false, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), -u_input.a.x);
    let var_2 = 0u ^ _wgslsmith_mod_u32(~1u, ~_wgslsmith_sub_u32(func_2(Struct_1(19475u, 25215u, vec4<i32>(2147483647i, var_1.c, 1567i, var_1.c)), vec2<u32>(47382u, 16263u), var_1.a.a), _wgslsmith_mult_u32(1u, 71086u)));
    var var_3 = reverseBits(_wgslsmith_mod_vec3_u32(abs(min(reverseBits(vec3<u32>(55045u, var_2, var_2)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, 23758u, 13444u), vec3<u32>(var_2, var_2, 1u), vec3<u32>(39892u, var_2, 85401u)))), ~(vec3<u32>(24395u, var_2, var_2) ^ vec3<u32>(var_2, 4294967295u, 4294967295u)) ^ ~(vec3<u32>(var_2, var_2, 21599u) << (vec3<u32>(var_2, var_2, 0u) % vec3<u32>(32u)))));
    var_0 = any(var_1.b.yxy);
    return abs(~(~(~vec4<u32>(var_3.x, var_3.x, 39878u, var_3.x)))) >> (_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 4294967295u, 24911u, 20103u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 13152u, var_3.x, 4294967295u), vec4<u32>(var_3.x, 4294967295u, var_3.x, 29389u))), ~(~vec4<u32>(99667u, var_2, 0u, var_2))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(62870u, 1u, 4294967295u, 4294967295u), vec4<u32>(65686u, 4294967295u, 27001u, 24094u), vec4<u32>(4294967295u, 45225u, 4294967295u, 1646u)))) >> (func_1() % vec4<u32>(32u));
    var var_1 = select(vec3<bool>(true, true, _wgslsmith_f_op_f32(ceil(-674f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1804f, -314f))))), vec3<bool>(true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false))), true && (~u_input.a.x >= ~u_input.a.x)), all(!vec3<bool>(true, 0u != var_0.x, any(vec2<bool>(true, true)))));
    var_1 = select(vec3<bool>(var_1.x, !var_1.x, var_1.x), !(!select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, true, var_1.x), var_1.x)), select(vec3<bool>(var_1.x, any(vec2<bool>(var_1.x, var_1.x)) | false, var_1.x), !vec3<bool>(any(vec2<bool>(false, false)), var_1.x || true, all(vec3<bool>(var_1.x, var_1.x, var_1.x))), !vec3<bool>(u_input.a.x < -1i, select(false, var_1.x, true), true)));
    var_1 = !select(!(!vec3<bool>(var_1.x, false, var_1.x)), vec3<bool>(true, true, any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)) && false), !(!var_1.x & var_1.x));
    var var_2 = _wgslsmith_mod_vec4_u32(firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(41518u, 21541u, 33411u, var_0.x), vec4<u32>(50853u, var_0.x, 22298u, 0u) ^ vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x), vec4<u32>(0u, var_0.x, var_0.x, var_0.x) >> (vec4<u32>(56601u, var_0.x, 37983u, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x)), all(vec3<bool>(var_1.x, var_1.x, true)))), ~abs(firstLeadingBit(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var_0 = ~select(reverseBits(~min(vec4<u32>(var_2.x, 1u, 0u, var_2.x), vec4<u32>(var_2.x, 52679u, var_0.x, 1u))), ~vec4<u32>(min(var_2.x, 0u), var_0.x, abs(var_0.x), 4294967295u), all(vec3<bool>(true, var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.a.xy), max(abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_2.x, var_2.x, 0u), vec4<u32>(4294967295u, 2122u, var_0.x, var_0.x))), reverseBits(abs(vec4<u32>(var_2.x, var_0.x, var_2.x, 28544u)) ^ abs(vec4<u32>(48675u, 4294967295u, var_0.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1624f - -814f)), _wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1175f, _wgslsmith_f_op_f32(717f * 1073f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-477f, _wgslsmith_f_op_f32(trunc(1000f))))), -340f), reverseBits(26193u));
}

