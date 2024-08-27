struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = arg_1;
    var var_1 = Struct_4(var_0.a, var_0.a.a.a.e, arg_1.c);
    let var_2 = var_1.c.c.d.wx;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = select(any(arg_2.yy), true, !arg_2.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(771f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(478f + 132f) - -768f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-610f, 1026f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1561f, 647f))) + -766f));
    let var_2 = Struct_2(Struct_1(select(1i, select(0i, _wgslsmith_div_i32(-1i, 1i), arg_0 < arg_0), func_3(Struct_1(30280i, vec4<u32>(u_input.b.x, 0u, 1u, 1u), vec3<f32>(235f, 593f, -1084f), vec4<u32>(u_input.c.x, 4294967295u, arg_0, arg_0), false), Struct_4(Struct_3(Struct_2(Struct_1(1i, u_input.c, vec3<f32>(1015f, 1648f, -112f), u_input.b, arg_1.x), 75361i, Struct_1(2147483647i, u_input.b, vec3<f32>(-1009f, 743f, -991f), vec4<u32>(0u, 1u, 56329u, u_input.a), true)), vec4<i32>(43794i, 2147483647i, -25436i, 36436i), Struct_2(Struct_1(-1583i, u_input.b, vec3<f32>(-1000f, -1923f, 1093f), u_input.b, true), 0i, Struct_1(7740i, u_input.c, vec3<f32>(1000f, 912f, 741f), u_input.c, var_0))), var_0, Struct_2(Struct_1(1i, u_input.c, vec3<f32>(2107f, 1213f, -944f), u_input.b, true), 2147483647i, Struct_1(1i, vec4<u32>(1u, 34284u, u_input.b.x, 0u), vec3<f32>(878f, -1434f, 1000f), vec4<u32>(u_input.a, 4294967295u, arg_0, 1u), false))))), firstTrailingBit(abs(u_input.b)) ^ u_input.b, vec3<f32>(1f, 1f, 1f), abs(u_input.c) >> (min(~vec4<u32>(64161u, arg_0, 1u, 40755u), u_input.b) % vec4<u32>(32u)), any(vec3<bool>(false, true, false)) | true), -14057i, Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(0i, 4602i), vec2<i32>(3340i, 0i)), select(vec2<i32>(-25212i, 0i), select(vec2<i32>(-39891i, 2147483647i), vec2<i32>(29443i, -38204i), vec2<bool>(false, true)), !vec2<bool>(true, var_0))), select(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), ~32209u, arg_0, ~u_input.c.x), ~(~u_input.b), select(!vec4<bool>(arg_1.x, arg_1.x, false, var_0), !vec4<bool>(true, true, arg_2.x, var_0), select(vec4<bool>(true, var_0, true, arg_1.x), vec4<bool>(arg_2.x, false, arg_2.x, var_0), arg_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(118f, _wgslsmith_f_op_f32(step(-133f, 784f)), 1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(857f, 326f, 342f))), u_input.c, any(vec3<bool>(false, arg_2.x, arg_2.x))));
    var var_3 = Struct_3(Struct_2(Struct_1(-2147483647i, vec4<u32>(~arg_0, arg_0, u_input.a, var_2.c.d.x ^ arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.a.c), _wgslsmith_f_op_vec3_f32(step(var_2.a.c, var_2.a.c)), false)), ~var_2.a.d, arg_1.x), -5875i, Struct_1(-var_2.c.a, _wgslsmith_div_vec4_u32(min(vec4<u32>(var_2.a.d.x, 1u, 75510u, arg_0), vec4<u32>(16520u, 0u, u_input.c.x, 1u)), ~vec4<u32>(arg_0, 51857u, 5948u, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(1850f - 226f), _wgslsmith_f_op_f32(sign(var_2.c.c.x)), -914f), var_2.a.b, false)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_2.c.a | var_2.c.a, firstTrailingBit(var_2.c.a), -2147483647i, var_2.b)), ~min(vec4<i32>(var_2.b, 14490i, var_2.b, -13756i), vec4<i32>(0i, var_2.a.a, var_2.a.a, var_2.a.a)) << (u_input.b % vec4<u32>(32u))), var_2);
    let var_4 = vec2<i32>(var_3.a.c.a, 0i);
    return var_3.c;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -335f), -300f, _wgslsmith_f_op_f32(abs(671f)), _wgslsmith_f_op_f32(-arg_0));
    var var_1 = Struct_1(1i, firstTrailingBit((u_input.b & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, u_input.a, 50182u), vec4<u32>(u_input.a, u_input.b.x, 1u, u_input.b.x))) >> (u_input.c % vec4<u32>(32u))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * arg_0), var_0.x), var_0.x, arg_0), ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 95128u), ~vec4<u32>(u_input.a, 1u, 9243u, u_input.a))), true);
    return func_2(_wgslsmith_dot_vec3_u32(u_input.b.yxz << (vec3<u32>(firstTrailingBit(0u), ~1u, var_1.b.x) % vec3<u32>(32u)), var_1.b.zwz), select(vec3<bool>(var_1.a == var_1.a, all(vec2<bool>(arg_1.x, true)), (false | var_1.e) || all(arg_1)), select(vec3<bool>(var_1.e || false, var_1.a >= -63701i, var_1.e | false), vec3<bool>(true, all(vec4<bool>(arg_1.x, var_1.e, var_1.e, var_1.e)), !var_1.e), arg_1), !select(vec3<bool>(arg_1.x, var_1.e, var_1.e), vec3<bool>(true, true, var_1.e), arg_1)), vec3<bool>(!((var_1.b.x << (0u % 32u)) <= var_1.b.x), !arg_1.x, var_1.e));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    return Struct_3(func_2(select(arg_0.a.b.x, ~_wgslsmith_dot_vec4_u32(u_input.c, arg_0.a.b), select(arg_0.a.e, func_2(41006u, vec3<bool>(false, false, arg_0.a.e), vec3<bool>(true, true, false)).c.e, 9633u <= u_input.b.x)), !(!vec3<bool>(true, arg_0.a.e, arg_0.a.e)), vec3<bool>(func_3(arg_0.a, Struct_4(Struct_3(Struct_2(arg_0.c, arg_0.b, arg_0.a), vec4<i32>(arg_0.c.a, -1i, arg_0.a.a, 0i), Struct_2(arg_0.a, 0i, Struct_1(arg_0.b, vec4<u32>(63263u, 1600u, arg_0.c.d.x, 0u), vec3<f32>(arg_0.a.c.x, 720f, -573f), arg_0.a.b, arg_0.c.e))), true, arg_0)), func_2(u_input.b.x, vec3<bool>(true, true, true), !vec3<bool>(false, arg_0.c.e, false)).a.e, !arg_0.c.e && !arg_0.a.e)), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b, 21628i, arg_0.a.a), vec3<i32>(arg_0.a.a, 379i, -1i)), max(-37619i, 17767i), -1i, firstLeadingBit(-8470i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, -1i, 1i, 1i), vec4<i32>(arg_0.b, 444i, 2147483647i, arg_0.b)) << (u_input.c % vec4<u32>(32u)), vec4<i32>(-2147483647i, arg_0.a.a, arg_0.a.a, ~arg_0.b))), func_2(17747u, !select(vec3<bool>(arg_0.c.e, arg_0.a.e, false), !vec3<bool>(arg_0.c.e, arg_0.a.e, true), select(vec3<bool>(arg_0.c.e, arg_0.c.e, true), vec3<bool>(true, arg_0.a.e, arg_0.a.e), arg_0.a.e)), select(vec3<bool>(true, true, arg_0.c.e), vec3<bool>(true | arg_0.c.e, true, false & arg_0.c.e), arg_0.a.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(-496f, vec3<bool>(true, true, true)));
    var_0 = func_4(func_2(1u, vec3<bool>(!(false | var_0.a.c.e), !(var_0.a.c.c.x > -159f), !(!var_0.c.c.e)), select(select(!vec3<bool>(false, var_0.c.a.e, var_0.a.a.e), vec3<bool>(var_0.a.a.e, true, true), true), select(!vec3<bool>(var_0.c.a.e, false, true), vec3<bool>(var_0.a.c.e, var_0.a.a.e, var_0.c.c.e), var_0.c.c.e), !select(vec3<bool>(true, false, true), vec3<bool>(var_0.c.c.e, var_0.c.a.e, false), var_0.a.a.e))));
    var_0 = Struct_3(func_2(firstTrailingBit(~var_0.c.c.d.x), select(vec3<bool>(true, var_0.c.c.e, !var_0.c.a.e), select(!vec3<bool>(var_0.a.c.e, false, false), vec3<bool>(var_0.c.a.e, var_0.a.a.e, true), vec3<bool>(false, var_0.c.c.e, var_0.a.c.e)), !(!vec3<bool>(var_0.a.c.e, false, false))), vec3<bool>(true, !var_0.c.a.e, all(vec4<bool>(var_0.a.a.e, true, true, false)))), var_0.b, Struct_2(func_2(u_input.b.x, select(!vec3<bool>(var_0.c.a.e, true, var_0.c.a.e), vec3<bool>(var_0.c.a.e, var_0.a.a.e, false), all(vec4<bool>(var_0.a.a.e, var_0.a.c.e, false, var_0.a.c.e))), select(!vec3<bool>(true, var_0.a.c.e, var_0.a.c.e), vec3<bool>(var_0.a.a.e, var_0.c.a.e, var_0.c.a.e), func_3(Struct_1(var_0.c.b, var_0.a.a.b, vec3<f32>(var_0.c.c.c.x, -203f, var_0.a.a.c.x), u_input.c, true), Struct_4(Struct_3(Struct_2(Struct_1(var_0.c.a.a, vec4<u32>(1u, 0u, var_0.a.c.d.x, 1u), vec3<f32>(var_0.a.a.c.x, 913f, -1866f), var_0.a.c.d, var_0.c.c.e), var_0.a.c.a, Struct_1(2147483647i, var_0.c.a.b, var_0.c.a.c, vec4<u32>(var_0.c.c.b.x, var_0.a.a.d.x, 0u, u_input.a), true)), var_0.b, var_0.a), var_0.c.c.e, var_0.a)))).c, -(~27916i) & ~var_0.a.c.a, Struct_1(~_wgslsmith_add_i32(var_0.a.c.a, -1i), u_input.b, _wgslsmith_f_op_vec3_f32(var_0.a.a.c * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.c.c.x, -528f, var_0.a.a.c.x), vec3<f32>(-442f, 473f, 2331f))), _wgslsmith_add_vec4_u32(u_input.c, ~var_0.a.c.d), false | func_4(var_0.c).c.a.e)));
    var_0 = func_4(var_0.a);
    let var_1 = var_0.c.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-871f, var_0.a.c.c.x, -645f, var_0.a.c.c.x)), vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(round(537f)), -331f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1649f, 1187f, var_1.x, var_1.x), vec4<f32>(734f, -632f, var_1.x, -910f))))))));
}

