struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = arg_1.b;
    let var_1 = max(~vec3<u32>(1u, 1u, 1u), vec3<u32>(44858u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    let var_2 = reverseBits(arg_0.b.b.xxx);
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(680f, arg_1.a.x, arg_0.b.a.x, arg_0.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, -104f, arg_1.b.a.x, 2437f))) - _wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, -983f, var_0.a.x, -389f)), vec4<bool>(false, true, true, false))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1784f)), _wgslsmith_f_op_vec2_f32(arg_0.b.a + vec2<f32>(var_0.a.x, arg_0.a.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, arg_1.b.a.x))))), -vec4<i32>(-arg_1.b.c.x, -1i, u_input.a, ~u_input.a), countOneBits(max(arg_0.b.c, arg_1.b.b.zyx)) << (vec3<u32>(_wgslsmith_clamp_u32(34666u, var_1.x, var_1.x), 0u, reverseBits(55634u)) % vec3<u32>(32u))));
    let var_4 = !(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~var_1.xy, vec2<u32>(var_1.x, 4294967295u)), 73651u, 1u) > ~(~1u));
    return vec3<i32>(~_wgslsmith_mult_i32(-12948i, _wgslsmith_mult_i32(-6741i, -1i)) >> (var_1.x % 32u), abs(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 0i | var_2.x), firstTrailingBit(~(-2147483647i)))), -reverseBits(-11101i));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-546f, -242f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, -348f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, -811f))))), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, -12718i, u_input.a, -14445i)) | countOneBits(vec4<i32>(-34344i, 0i, u_input.a, -1i)), vec4<i32>(~2147483647i, u_input.a, u_input.a, u_input.a << (0u % 32u)))), reverseBits(vec3<i32>(-_wgslsmith_add_i32(u_input.a, 1i), ~u_input.a, ~_wgslsmith_div_i32(-50963i, u_input.a))));
    let var_1 = Struct_1(vec2<f32>(-1451f, var_0.a.x), vec4<i32>(select(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_0.b, var_0.b), var_0.b & var_0.b), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), -20994i, -75660i, u_input.a), _wgslsmith_div_vec3_i32(func_3(Struct_2(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1000f), Struct_1(var_0.a, var_0.b, var_0.b.wzx)), Struct_2(vec4<f32>(-1070f, -254f, var_0.a.x, var_0.a.x), var_0)), vec3<i32>(min(-37176i, u_input.a), var_0.b.x, ~u_input.a)) >> (firstLeadingBit(vec3<u32>(7368u, ~1u, 1u)) % vec3<u32>(32u)));
    let var_2 = var_0;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(323f, var_2.a.x)))), -126f, -873f)), var_2);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-625f, _wgslsmith_f_op_f32(var_0.a.x - var_1.a.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(608f, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, var_3.b.a.x))), var_1.a)), vec4<i32>(-2147483647i, var_1.b.x, var_3.b.b.x, firstLeadingBit(-var_0.c.x)), -var_0.b.zxx);
    return var_3;
}

fn func_1() -> vec2<f32> {
    let var_0 = func_2();
    var var_1 = ~select(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 11274u), vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(4294967295u, 43462u))), select(vec2<u32>(58068u, 1u), vec2<u32>(4294967295u, 711u), false) << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(66u, 4294967295u)) % vec2<u32>(32u)), false) >> (max(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(69832u, 0u), vec2<u32>(3876u, 38101u))), vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    var_1 = reverseBits(_wgslsmith_clamp_vec2_u32(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 84477u), vec2<u32>(var_1.x, 1u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1941u, 0u), vec2<bool>(false, true)), ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, var_1.x))), countOneBits(vec2<u32>(abs(var_1.x), ~var_1.x))));
    var_1 = select(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(firstTrailingBit(var_1.x)), 4294967295u), vec2<u32>(countOneBits(88271u), ~var_1.x << (var_1.x % 32u))), firstLeadingBit(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, var_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 55823u), vec2<u32>(var_1.x, 15326u), vec2<u32>(var_1.x, var_1.x))) & ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.x), vec2<u32>(4294967295u, var_1.x))), !select(vec2<bool>(true, u_input.a >= u_input.a), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = var_0.b;
    return _wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a + var_2.a)), _wgslsmith_f_op_vec2_f32(sign(var_2.a)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a.x, var_2.a.x), func_2().a.yz)), vec2<f32>(_wgslsmith_f_op_f32(min(444f, 1275f)), _wgslsmith_f_op_f32(-var_0.a.x)))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a != u_input.a;
    let var_1 = ~(~58761i);
    var var_2 = -(~(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, -28163i)));
    var_2 = -vec3<i32>(-26099i, var_2.x, countOneBits(~_wgslsmith_mult_i32(var_2.x, u_input.a)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-630f, -135f) * vec2<f32>(-1143f, 1491f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1054f, -932f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1()))), true))), vec4<i32>(firstLeadingBit(var_2.x), min(firstLeadingBit(~var_2.x), firstLeadingBit(u_input.a)), countOneBits(-4228i), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(13689i, -1i), 1i)), vec3<i32>(~_wgslsmith_add_i32(1i, u_input.a) >> (~43319u % 32u), -(~var_2.x | -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(func_2().b.b.wz, var_2.xz), -var_2.yz)));
    let var_4 = !all(vec2<bool>(true, true)) & (true || all(select(!vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, false), var_0)));
    var_2 = _wgslsmith_mod_vec3_i32(-vec3<i32>(countOneBits(-722i), ~var_2.x, var_2.x), var_3.b.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(u_input.a)), _wgslsmith_f_op_f32(-1691f - _wgslsmith_f_op_f32(-func_2().a.x)), (vec4<u32>(1u, 1u, 1u, 1u) >> (select(select(vec4<u32>(4294967295u, 4294967295u, 59479u, 4294967295u), vec4<u32>(4294967295u, 25460u, 54127u, 41547u), false), ~vec4<u32>(4294967295u, 18651u, 0u, 0u), vec4<bool>(true, false, true, false)) % vec4<u32>(32u))) | vec4<u32>(72053u, 1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
}

