struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = firstTrailingBit(-vec4<i32>(countOneBits(~(-2147483647i)), min(-arg_1.a, _wgslsmith_mult_i32(-20128i, u_input.b.x)), ~(arg_1.a | -2147483647i), arg_1.a));
    var var_1 = Struct_1(~_wgslsmith_sub_vec2_u32(~(vec2<u32>(131650u, 4294967295u) >> (arg_0.a.a % vec2<u32>(32u))), abs(u_input.c.xz)));
    var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(arg_0.a.a.x, arg_0.a.a.x), 4294967295u), 1u));
    let var_2 = true;
    var_1 = arg_0.a;
    return select(u_input.c.wyy, vec3<u32>(var_1.a.x, 0u, max(var_1.a.x, abs(1u)) | u_input.c.x), var_2);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.x), vec2<i32>(arg_1.x, arg_1.x)), _wgslsmith_add_i32(41843i, abs(9698i)), 2147483647i | _wgslsmith_add_i32(u_input.b.x, arg_1.x), 1i)) != _wgslsmith_div_i32(abs(0i), -62519i);
    let var_1 = Struct_1(vec2<u32>(~u_input.c.x, 1u));
    var_0 = any(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)));
    var var_2 = 1u;
    var_2 = func_3(Struct_2(var_1), Struct_4(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) ^ max(0i, u_input.d.x), 0i, ~(~(-23977i))))).x;
    return var_1.a.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = vec2<u32>(u_input.c.x, func_4(firstLeadingBit(func_3(Struct_2(arg_1.b.a), Struct_4(21906i))) & arg_1.c, u_input.b.wzy));
    var var_1 = ~vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec2_u32(arg_1.c.zx & vec2<u32>(u_input.c.x, 46562u), ~vec2<u32>(1u, 1u) << (arg_1.b.a.a % vec2<u32>(32u))), ~186u);
    var_1 = ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(6732u, 1u, 0u)), ~firstTrailingBit(arg_1.c), firstTrailingBit(vec3<u32>(1u, ~var_0.x, 1u)));
    var_1 = ~_wgslsmith_clamp_vec3_u32(arg_1.c, abs(vec3<u32>(_wgslsmith_sub_u32(21438u, u_input.c.x), ~var_0.x, 0u)), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_1.b.a.a.x, 68466u), vec3<u32>(1u, 1u, 4294967295u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))) + 1f)));
    return u_input.d.x | (max(u_input.b.x, _wgslsmith_mult_i32(arg_2, firstLeadingBit(0i))) ^ arg_1.a);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.d.x >> (103782u % 32u), 1i, firstLeadingBit(u_input.d.x)), vec4<i32>(-1i, _wgslsmith_sub_i32(0i, u_input.b.x), max(u_input.b.x, 52297i), ~(-1i))), vec4<i32>(~u_input.d.x & (i32(-1i) * -44652i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 0i), u_input.b.xyx), _wgslsmith_div_i32(33967i, -35321i), any(vec2<bool>(false, false))), 1i, 11610i)), -_wgslsmith_dot_vec4_i32(u_input.b, select(vec4<i32>(u_input.d.x, 29100i, u_input.b.x, -1i) << (vec4<u32>(0u, 0u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(4430i, u_input.b.x, 2853i, u_input.d.x), all(vec3<bool>(true, false, false)))));
    let var_1 = vec4<i32>(var_0.x, _wgslsmith_clamp_i32(-reverseBits(u_input.d.x), var_0.x, var_0.x), -25287i, select(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, u_input.d.x), -1i), _wgslsmith_clamp_i32(min(0i, var_0.x), -2147483647i, abs(u_input.b.x)), -13402i < func_2(1000f, Struct_3(1i, Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.c.x))), vec3<u32>(u_input.c.x, 38189u, u_input.a.x)), var_0.x))) >> (u_input.c % vec4<u32>(32u));
    let var_2 = reverseBits(reverseBits(u_input.c.xxy));
    let var_3 = select(vec4<i32>(-(~(-u_input.b.x)), var_0.x, var_0.x, 1i), abs(vec4<i32>(var_1.x >> (~0u % 32u), var_1.x, firstTrailingBit(i32(-1i) * -38155i), 0i)), select(!vec4<bool>(true, any(vec2<bool>(false, false)), false, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_add_u32(u_input.c.x, ~u_input.c.x) >> (29524u % 32u)), ~vec2<u32>(16532u | ~var_2.x, 66941u), vec2<u32>(var_2.x, 21632u));
    return Struct_1(abs(var_2.yz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_2(Struct_1(vec2<u32>(var_0.a.x, u_input.c.x)));
    var var_2 = vec2<bool>((any(vec3<bool>(false, false, false)) | true) && any(vec3<bool>(true, true, true)), true == any(vec3<bool>(true, true, true)));
    let var_3 = true;
    var var_4 = ~(~vec4<i32>(_wgslsmith_add_i32(u_input.d.x | u_input.d.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-77405i, -38888i) << (vec2<u32>(u_input.c.x, 64434u) % vec2<u32>(32u)), u_input.b.xw), ~1i, 20832i));
    var var_5 = func_1();
    var_0 = Struct_1(~(~max(func_1().a, firstTrailingBit(var_0.a))));
    var var_6 = select(vec2<bool>(true, true), !vec2<bool>(!var_2.x, select(var_2.x, false, false) & false), min(u_input.d.x, u_input.b.x) > -19748i);
    var_6 = !(!select(vec2<bool>(false, false || var_6.x), select(vec2<bool>(true, true), vec2<bool>(true, true), -15623i > var_4.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f - _wgslsmith_f_op_f32(633f + _wgslsmith_f_op_f32(1949f - -804f))) * _wgslsmith_div_f32(-1476f, -768f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-597f * 1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1839f - 461f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-853f, 1f, -1690f, _wgslsmith_f_op_f32(1163f + 677f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1063f, 1118f, -232f, -621f) - vec4<f32>(-640f, 588f, -1000f, -1578f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(559f, 1000f, 1084f, -643f)))), !(var_3 & false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(383f - -499f), 552f, _wgslsmith_f_op_f32(max(-1521f, -299f)), -584f))));
}

