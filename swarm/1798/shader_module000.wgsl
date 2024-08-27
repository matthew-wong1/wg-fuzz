struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> vec4<bool> {
    let var_0 = select(select(vec3<bool>(select(any(vec4<bool>(true, arg_3.a.a.d.x, arg_0.a.e, true)), !arg_1.a.d.x, any(vec4<bool>(arg_0.a.e, arg_3.a.a.d.x, arg_0.a.d.x, true))), arg_2.b.x < ~61228u, true & arg_3.a.a.d.x), select(!select(vec3<bool>(arg_1.a.d.x, arg_1.a.d.x, arg_0.a.e), vec3<bool>(arg_3.a.a.d.x, arg_3.a.a.e, true), vec3<bool>(false, false, arg_3.a.a.d.x)), !select(vec3<bool>(arg_1.a.e, arg_3.a.a.e, arg_3.b.e), vec3<bool>(arg_3.a.a.d.x, true, arg_3.b.d.x), arg_0.a.e), select(vec3<bool>(false, arg_1.a.e, arg_3.a.a.e), select(vec3<bool>(false, true, true), vec3<bool>(arg_3.a.a.e, arg_0.a.d.x, false), vec3<bool>(true, arg_3.b.e, false)), vec3<bool>(true, arg_1.a.d.x, arg_0.a.e))), vec3<bool>(true, arg_1.a.d.x, false)), !(!vec3<bool>(all(arg_0.a.d), true, true)), vec3<bool>(arg_0.a.e, arg_0.a.d.x, arg_0.a.e));
    var var_1 = Struct_4(Struct_3(arg_0.a, arg_2.a.x), Struct_2(Struct_1(~arg_0.a.c.a, ~(~vec4<u32>(u_input.a, 97072u, arg_1.a.a.b.x, 114361u))), vec2<i32>(i32(-1i) * -arg_3.b.a.a.x, u_input.c), arg_2, !(!select(arg_3.a.a.d, arg_1.a.d, arg_0.a.d)), true));
    var var_2 = Struct_1(-vec4<i32>(-(i32(-1i) * -1i), 0i, arg_0.b, (var_1.b.a.a.x >> (arg_1.a.a.b.x % 32u)) ^ u_input.c), _wgslsmith_div_vec4_u32(arg_0.a.c.b ^ firstLeadingBit(vec4<u32>(1948u, 18499u, 0u, 4294967295u)), vec4<u32>(~var_1.a.a.c.b.x, arg_2.b.x, ~(1u | var_1.a.a.a.b.x), 62181u)));
    var var_3 = Struct_4(Struct_3(arg_1.a, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_1.a.b.x, -u_input.c), ~24839i)), arg_1.a);
    let var_4 = arg_1.a.d.x;
    return vec4<bool>(true, !(any(arg_3.b.d) & !var_3.b.e), any(vec4<bool>(u_input.b != _wgslsmith_dot_vec3_u32(var_1.a.a.a.b.zxy, vec3<u32>(4294967295u, 1u, u_input.b)), !var_1.a.a.d.x, !(u_input.d.x != arg_3.b.b.x), all(vec2<bool>(false, true)))), all(var_1.b.d));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    return vec3<bool>(true, false, any(func_3(Struct_3(arg_2, -2147483647i), Struct_3(arg_2, -1i), arg_2.c, Struct_4(Struct_3(Struct_2(Struct_1(u_input.d, arg_2.a.b), arg_3.a.xx, arg_2.a, vec2<bool>(true, false), true), u_input.c), Struct_2(Struct_1(vec4<i32>(-1i, arg_3.a.x, u_input.c, u_input.d.x), vec4<u32>(arg_3.b.x, 64261u, 68411u, 13891u)), vec2<i32>(u_input.c, arg_3.a.x), arg_2.c, vec2<bool>(true, arg_1.x), true)))));
}

fn func_4(arg_0: bool) -> Struct_3 {
    var var_0 = ~min(firstLeadingBit(select(reverseBits(vec2<u32>(7545u, u_input.a)), ~vec2<u32>(u_input.b, u_input.a), true)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(47u, 0u) >> (vec2<u32>(u_input.b, 38712u) % vec2<u32>(32u)), min(vec2<u32>(u_input.b, 71885u), vec2<u32>(u_input.a, 4294967295u))), ~vec2<u32>(u_input.b, 72381u) ^ vec2<u32>(u_input.a, u_input.b)));
    var_0 = vec2<u32>(u_input.b << (~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u), vec4<u32>(75068u, 1u, 51351u, 63962u)), min(vec4<u32>(u_input.b, u_input.a, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 120418u, var_0.x))) % 32u), ~(~(~_wgslsmith_mod_u32(u_input.b, u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(1007f)), _wgslsmith_f_op_f32(1196f + -1040f), -731f, -2728f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1348f)) - -143f), vec2<bool>(!arg_0, true), Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.c, 17166i, u_input.d.x), vec4<u32>(1u, 36615u, u_input.a, u_input.b)), vec2<i32>(2147483647i, u_input.d.x), Struct_1(u_input.d, vec4<u32>(31938u, var_0.x, 110196u, 31208u)), func_2(229f, vec2<bool>(true, false), Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.c, u_input.c, 21733i), vec4<u32>(u_input.b, 0u, u_input.a, 4294967295u)), vec2<i32>(u_input.c, u_input.c), Struct_1(u_input.d, vec4<u32>(u_input.a, var_0.x, u_input.b, u_input.a)), vec2<bool>(true, arg_0), false), Struct_1(vec4<i32>(35039i, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(1u, 4294967295u, u_input.b, 42639u))).xx, any(vec4<bool>(arg_0, arg_0, true, true))), Struct_1(min(u_input.d, vec4<i32>(u_input.c, 38502i, 0i, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, 31477u), vec4<u32>(var_0.x, 0u, u_input.b, u_input.a)))).x)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(199f, -747f, var_1.x, -534f), vec4<f32>(1000f, -1405f, -1298f, -808f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<f32>(-1435f, 944f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)), arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1886f, var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)))) * vec4<f32>(-596f, -1439f, var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x))));
    var var_2 = true;
    return Struct_3(Struct_2(Struct_1(~(~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.d.x)), vec4<u32>(_wgslsmith_mod_u32(var_0.x, 4294967295u), u_input.b, u_input.a, var_0.x)), -select(u_input.d.xz, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.d.wy), vec2<bool>(true, false)), Struct_1(u_input.d, select(~vec4<u32>(var_0.x, 29537u, u_input.a, var_0.x), abs(vec4<u32>(u_input.a, var_0.x, 78197u, u_input.b)), vec4<bool>(true, true, arg_0, arg_0))), !(!(!vec2<bool>(arg_0, arg_0))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-489f - 131f)) >= _wgslsmith_f_op_f32(-var_1.x)), u_input.c);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mod_i32(13942i | (select(_wgslsmith_sub_i32(2147483647i, u_input.d.x), countOneBits(19567i), any(vec3<bool>(true, true, true))) & 0i), ~_wgslsmith_add_i32(1i, -82820i));
    var var_1 = func_4(all(!func_2(1069f, vec2<bool>(false, false), Struct_2(Struct_1(vec4<i32>(var_0, var_0, -2147483647i, 33590i), vec4<u32>(u_input.b, 1u, u_input.b, u_input.a)), u_input.d.xw, Struct_1(vec4<i32>(var_0, u_input.d.x, u_input.c, -59898i), vec4<u32>(1u, u_input.b, u_input.a, u_input.b)), vec2<bool>(true, false), false), Struct_1(u_input.d, vec4<u32>(21509u, u_input.a, 4294967295u, u_input.a)))) & true);
    let var_2 = ~u_input.a;
    let var_3 = vec4<u32>(~(~(u_input.b >> (4294967295u % 32u))), firstTrailingBit(countOneBits(~countOneBits(0u))), _wgslsmith_mult_u32(reverseBits(u_input.b), 4294967295u) | abs(1u), reverseBits(~firstTrailingBit(u_input.b)));
    var var_4 = var_3.zw;
    return var_1.a.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(21231u, u_input.a)), ~u_input.b), ~(~_wgslsmith_mod_u32(22759u, 2446u))) ^ u_input.a;
    var_0 = 4294967295u;
    var_0 = u_input.a;
    var var_1 = any(vec4<bool>(true, -1376f > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f)))), true, func_1() && true));
    let var_2 = vec4<u32>(0u, ~_wgslsmith_add_u32(~49216u, 0u), ~1u, u_input.b);
    var var_3 = _wgslsmith_f_op_f32(-1957f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-215f * 1279f)))))));
    var_0 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x ^ -13151i, -648f);
}

