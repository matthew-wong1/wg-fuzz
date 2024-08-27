struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = vec4<i32>(1i, countOneBits(abs(i32(-1i) * -13172i)), ~2147483647i, -2147483647i);
    var var_1 = vec2<u32>(max(_wgslsmith_div_u32(~u_input.b, _wgslsmith_add_u32(~u_input.b, u_input.b)), u_input.b), u_input.b);
    var_1 = ~(~(~vec2<u32>(_wgslsmith_mult_u32(u_input.b, var_1.x), abs(var_1.x))));
    let var_2 = reverseBits(~4294967295u >> (~_wgslsmith_clamp_u32(0u, u_input.b, abs(u_input.b)) % 32u));
    var_1 = max(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(var_1.x, var_2, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.b, 4294967295u), vec3<u32>(u_input.b, 53847u, 4294967295u))), 1u), var_2), vec2<u32>(~_wgslsmith_add_u32(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10188u, var_1.x, var_1.x, var_2), vec4<u32>(u_input.b, 0u, 84677u, var_2))), 4294967295u));
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(-786f, any(!vec4<bool>(func_3(arg_1.b, arg_0), !arg_1.b, 10881i >= u_input.c.x, !arg_1.b)), abs(vec4<i32>(arg_0.c.x, arg_0.c.x, ~(-13502i), u_input.c.x ^ arg_0.c.x)) | u_input.c, _wgslsmith_f_op_vec4_f32(-arg_0.d));
    let var_1 = ~select(vec2<i32>(_wgslsmith_dot_vec2_i32(~arg_0.c.xz, var_0.c.xz >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), u_input.c.x), u_input.a.xz, select(!(!vec2<bool>(var_0.b, arg_0.b)), !select(vec2<bool>(arg_1.b, true), vec2<bool>(var_0.b, arg_1.b), vec2<bool>(false, false)), var_0.b));
    var_0 = arg_1;
    let var_2 = arg_1;
    let var_3 = 93855u;
    return select(!select(!vec3<bool>(arg_0.b, false, arg_0.b), select(vec3<bool>(arg_1.b, false, false), !vec3<bool>(arg_1.b, var_0.b, true), true), true), select(select(vec3<bool>(true, true, !arg_0.b), vec3<bool>(var_2.b, !arg_0.b, arg_0.b), arg_0.b == true), vec3<bool>(any(!vec2<bool>(var_0.b, false)), false, arg_1.b), select(!vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(all(vec2<bool>(false, true)), false, any(vec4<bool>(false, arg_1.b, var_2.b, arg_1.b))), !(!arg_1.b))), any(vec2<bool>(arg_1.b, var_0.b)));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-1115f + arg_3);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, 205f, arg_0)) + _wgslsmith_f_op_f32(-var_0))) - _wgslsmith_f_op_f32(-1f)), (all(func_2(Struct_1(-1619f, arg_0, vec4<i32>(u_input.c.x, 1i, 2147483647i, 50148i), vec4<f32>(arg_3, 519f, -1000f, -1105f)), Struct_1(2899f, true, u_input.c, vec4<f32>(1050f, 846f, 321f, 1000f)))) & arg_0) & false, vec4<i32>(~(~(-1i)), select(abs(countOneBits(u_input.a.x)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), firstTrailingBit(-2147483647i)), !(arg_0 | arg_0)), select(~(-1i), select(u_input.a.x, u_input.a.x, arg_0) | -27534i, (u_input.b >> (33269u % 32u)) != _wgslsmith_clamp_u32(1u, u_input.b, u_input.b)), ~(-45587i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(408f, arg_3, arg_3, -1748f), vec4<f32>(801f, var_0, 939f, var_0))), vec4<f32>(1375f, 1000f, var_0, var_0), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1000f, 1223f, 753f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 887f, -468f, arg_3) - vec4<f32>(1191f, var_1.d.x, arg_3, 447f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, arg_3, arg_3, var_0))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(0i, ~(-42846i));
    let var_1 = !(!vec4<bool>(true, !arg_1.b, true, _wgslsmith_clamp_i32(u_input.a.x, -31419i, -2147483647i) < u_input.a.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(any(!(!var_1.xxx)), arg_0.c.x, u_input.b, 486f)).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -551f)))));
    var var_3 = Struct_1(arg_1.d.x, true, -_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.x, arg_1.c.x, -1i), vec4<i32>(0i, arg_0.c.x, u_input.a.x, u_input.c.x)), vec4<i32>(arg_0.c.x, u_input.a.x, 2147483647i, arg_1.c.x)) ^ _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(23887i, u_input.c.x, -1i, 0i)), u_input.c), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a - arg_0.a)))), arg_0.d.x, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))));
    var var_4 = ~u_input.b;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~(~reverseBits(1u)) ^ u_input.b) ^ _wgslsmith_sub_u32(u_input.b, u_input.b);
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -852f), any(vec3<bool>(true, all(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)))), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(288f, 1000f, 549f, 918f), vec4<f32>(1000f, 567f, 195f, -145f)) + vec4<f32>(-1424f, -474f, 1767f, 974f)))), Struct_1(-1671f, false, u_input.c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(min(2614f, -380f)), -1000f, _wgslsmith_f_op_f32(-111f - -188f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1117f, 108f, -167f, 276f) + _wgslsmith_f_op_vec4_f32(func_1(false, 17784i, 31024u, 1818f))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true)))));
    var var_2 = ~_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b, 35275u) | vec2<u32>(39132u, 0u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 0u), ~vec2<u32>(19545u, var_0), ~vec2<u32>(u_input.b, u_input.b))) ^ _wgslsmith_sub_vec2_u32(~(~select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, u_input.b), vec2<bool>(var_1.b, var_1.b))), firstLeadingBit(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.b, var_0)), vec2<u32>(1u, 1u))));
    var_2 = reverseBits(min(vec2<u32>(~var_2.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47348u, 63393u), vec2<u32>(4294967295u, var_0)), abs(var_0))), firstLeadingBit(vec2<u32>(var_0, 66350u))));
    let var_3 = _wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(trunc(var_1.a)));
    var_2 = vec2<u32>(select(~var_2.x, 53959u, (u_input.c.x | ~(-29242i)) < var_1.c.x), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_2.x, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, 663u, 4294967295u), vec3<u32>(54943u, var_0, 1u))) & firstTrailingBit(1u)));
    let var_4 = func_4(Struct_1(-1454f, false, vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -13830i), abs(abs(var_1.c.x)), ~(-var_1.c.x), min(-2147483647i, var_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(var_1.a + var_1.d.x)), -1420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1735f + var_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(ceil(968f)))))), Struct_1(-576f, (i32(-1i) * -u_input.c.x) >= (1i & var_1.c.x), _wgslsmith_sub_vec4_i32(~func_4(Struct_1(-528f, var_1.b, vec4<i32>(var_1.c.x, u_input.a.x, u_input.c.x, -873i), var_1.d), Struct_1(-513f, var_1.b, vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.a.x), var_1.d)).c, var_1.c), _wgslsmith_f_op_vec4_f32(-var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(1i) << (abs(43192u ^ var_2.x) % 32u), reverseBits(select(~u_input.c.x, 2429i, false)), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(var_1.c.x, var_1.c.x), -29468i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a * 715f))), 145f, _wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x))), func_4(var_4, func_4(var_4, func_4(Struct_1(388f, var_1.b, var_4.c, vec4<f32>(1492f, var_1.a, 1000f, 783f)), Struct_1(-1129f, true, var_4.c, var_4.d)))).c.wwx | vec3<i32>((var_1.c.x | var_4.c.x) | _wgslsmith_mod_i32(var_1.c.x, 1i), countOneBits(min(0i, -6366i)), select(var_4.c.x, 2147483647i, var_4.b) | _wgslsmith_div_i32(-18778i, var_4.c.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(118f)), _wgslsmith_f_op_vec4_f32(func_1(var_1.b, -78897i, 1u, var_3)).x, var_4.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.d.zzz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, var_3, -1000f))))), _wgslsmith_f_op_vec3_f32(-var_4.d.wyy))));
}

