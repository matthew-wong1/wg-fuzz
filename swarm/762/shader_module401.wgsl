struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = u_input.c;
    var var_1 = vec4<bool>(any(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))), true == !(~arg_2.a.c.a.a <= firstLeadingBit(-28714i)), false, !all(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, false, true)), true, true)));
    var_1 = !select(vec4<bool>(any(vec3<bool>(false, var_1.x, var_1.x)), select(false, true, false) && true, true, any(select(var_1.zzz, var_1.zzx, vec3<bool>(false, false, false)))), !vec4<bool>(false, false, var_1.x, false), var_1.x != any(vec3<bool>(true, var_1.x, var_1.x)));
    let var_2 = arg_2.b;
    var var_3 = Struct_3(arg_3.c.b.zwz, arg_2.a.b, arg_3.b);
    return 450i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    var var_0 = Struct_3(u_input.a, Struct_2(arg_1, select(reverseBits(vec4<u32>(arg_2.x, 42907u, arg_2.x, 29721u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 1u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, 0u, 1u), vec4<u32>(4294967295u, arg_2.x, 46535u, 8104u))), any(select(vec3<bool>(true, arg_3, true), vec3<bool>(false, false, false), vec3<bool>(arg_3, true, arg_3)))), countOneBits(_wgslsmith_div_i32(38731i, -35002i))), Struct_2(arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37423u, u_input.b.x), vec2<u32>(1u, 34945u)), ~50531u, 0u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, arg_2.x, arg_2.x), vec4<u32>(0u, arg_2.x, 0u, 1u)) << ((vec4<u32>(u_input.a.x, 61447u, arg_2.x, 0u) << (vec4<u32>(58993u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.c));
    var var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(max(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yy)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), arg_2)), _wgslsmith_mult_vec2_u32(var_0.a.zy, arg_2)) | (arg_2 >> (arg_2 % vec2<u32>(32u)));
    let var_2 = true;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(~69819u, _wgslsmith_mult_u32(~countOneBits(4257u), var_1.x)), 23224u, 4294967295u);
    var var_4 = Struct_4(Struct_3(vec3<u32>(select(arg_2.x, abs(arg_2.x), any(vec3<bool>(true, var_2, true))), 0u, ~(~72551u)), var_0.c, Struct_2(Struct_1(u_input.c >> (70301u % 32u)), var_0.b.b, var_0.b.a.a)), arg_1);
    return _wgslsmith_mod_i32(arg_0.x, ~(~(i32(-1i) * -781i)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = -253f;
    var var_1 = Struct_2(Struct_1(arg_0.x), firstTrailingBit(arg_3.a.b.b), arg_3.b.a);
    var_1 = arg_2;
    let var_2 = arg_3.a.b.c;
    var var_3 = func_4(vec3<i32>(min(arg_2.a.a, _wgslsmith_sub_i32(-41463i, func_3(arg_0.zy, 1248f, Struct_4(Struct_3(vec3<u32>(1u, u_input.a.x, 61628u), arg_2, Struct_2(Struct_1(arg_2.c), arg_2.b, arg_2.c)), arg_3.a.c.a), Struct_3(vec3<u32>(u_input.a.x, arg_3.a.c.b.x, 29505u), arg_3.a.b, Struct_2(var_1.a, vec4<u32>(var_1.b.x, arg_3.a.a.x, var_1.b.x, u_input.b.x), -8390i))))), arg_3.a.c.a.a, min(-abs(43061i), 1i)), Struct_1(_wgslsmith_add_i32(24632i, 12554i)), ~vec2<u32>(~20732u, ~(~arg_2.b.x)), false);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(10352u, ~firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, arg_2.b.x)), u_input.b.x, arg_3.a.b.b.x | var_1.b.x), arg_2.b, var_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_sub_u32(~u_input.a.x, 1u), ~(~(4294967295u | arg_0.b.x)), ~_wgslsmith_mod_u32(arg_0.b.x, 4294967295u)), Struct_2(Struct_1(1i), vec4<u32>(38803u, ~select(u_input.b.x, 4294967295u, true), arg_1.x, u_input.b.x), u_input.c), arg_0);
    let var_1 = var_0.b;
    let var_2 = Struct_3(var_0.c.b.yxy, arg_0, Struct_2(var_1.a, ~(~select(arg_1, var_0.b.b, false)), var_0.b.a.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-709f, 127f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f))))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -129f))), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-597f, -727f))), true)));
    var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_3.x), _wgslsmith_f_op_f32(abs(503f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 576f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, -163f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(194f, var_3.x), vec2<f32>(var_3.x, var_3.x), false)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.x, var_3.x))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) * vec2<f32>(785f, 1804f)), vec2<f32>(var_3.x, 492f))))));
    return Struct_1((_wgslsmith_sub_i32(firstTrailingBit(-9795i), countOneBits(var_2.b.c)) >> (var_1.b.x % 32u)) | -firstLeadingBit(1i));
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_2(func_5(Struct_2(Struct_1(_wgslsmith_sub_i32(-1i, u_input.c)), firstLeadingBit(func_2(vec4<i32>(-7147i, u_input.c, -1i, u_input.c), true, Struct_2(Struct_1(1499i), vec4<u32>(u_input.a.x, 0u, u_input.b.x, 10434u), u_input.c), Struct_4(Struct_3(u_input.b, Struct_2(Struct_1(71259i), vec4<u32>(u_input.a.x, 1u, u_input.b.x, u_input.b.x), -15581i), Struct_2(Struct_1(u_input.c), vec4<u32>(30599u, u_input.b.x, u_input.b.x, u_input.b.x), 0i)), Struct_1(-1i)))), 2147483647i), ~(vec4<u32>(81741u, 1u, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u)) << (~vec4<u32>(39903u, 1u, 1u, u_input.b.x) % vec4<u32>(32u))), ~min(vec4<u32>(u_input.a.x, ~u_input.b.x, 1u, 43482u), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 1u) ^ vec4<u32>(8687u, 1u, u_input.a.x, 4294967295u))), ~u_input.c);
    var var_1 = Struct_3(var_0.b.ywy, Struct_2(func_5(Struct_2(var_0.a, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 45849u, 59201u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 86216u)), var_0.c << (u_input.a.x % 32u)), firstLeadingBit(var_0.b)), ~_wgslsmith_mod_vec4_u32(~var_0.b, var_0.b << (var_0.b % vec4<u32>(32u))), u_input.c), var_0);
    var_1 = Struct_3(var_1.a, var_1.b, var_0);
    let var_2 = select(vec3<bool>(var_1.b.b.x >= 79607u, false, all(vec3<bool>(true, false, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true))), vec3<bool>(false, all(vec2<bool>(true, true)) | (abs(var_0.b.x) <= var_1.a.x), !(select(true, false, false) & true)));
    let var_3 = func_5(var_0, var_1.c.b);
    return var_0.b.ywx;
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_clamp_vec3_u32(min(~u_input.b, arg_0.a.a), arg_0.a.a, vec3<u32>(1u, ~arg_0.a.a.x, ~0u)), Struct_2(Struct_1(~arg_2.b.a.a), _wgslsmith_add_vec4_u32(arg_2.c.b, func_2(vec4<i32>(1i, 2147483647i, -7437i, arg_2.b.a.a), false, Struct_2(arg_0.a.b.a, arg_2.c.b, arg_2.c.c), Struct_4(arg_0.a, arg_0.a.b.a))), -(arg_0.b.a | u_input.c)), arg_0.a.b), Struct_1(func_5(arg_0.a.c, countOneBits(arg_2.b.b << (vec4<u32>(arg_2.c.b.x, arg_0.a.c.b.x, arg_0.a.c.b.x, 40444u) % vec4<u32>(32u)))).a));
    let var_1 = 24262i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1189f, 610f, 1674f, -109f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-413f, -209f, arg_1, -1240f), vec4<f32>(1528f, arg_1, -1034f, -335f))), all(vec3<bool>(true, true, false))))), vec4<f32>(-516f, -936f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)))), _wgslsmith_f_op_f32(-925f - arg_1)))));
    var var_3 = all(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), false), vec2<bool>(false, all(vec3<bool>(false, true, false))), var_2.x <= -1418f));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))), 521f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f * var_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - arg_1) + _wgslsmith_f_op_f32(max(550f, -839f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - 605f) + 1112f)), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(ceil(906f))))), -359f));
    return ~(~(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(var_0.a.b.b.x, u_input.a.x)) | arg_0.a.c.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_6(Struct_4(Struct_3(func_1(), Struct_2(Struct_1(u_input.c), vec4<u32>(u_input.b.x, 15335u, 48296u, 70126u), 0i), Struct_2(Struct_1(-2147483647i), vec4<u32>(26312u, 58845u, 0u, u_input.b.x), 1i)), Struct_1(-u_input.c)), _wgslsmith_f_op_f32(-1268f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_3(~abs(u_input.a), Struct_2(Struct_1(u_input.c), select(vec4<u32>(32802u, 4294967295u, u_input.a.x, 55743u), vec4<u32>(40650u, 1u, u_input.a.x, 1u), true), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -26832i, -1i, u_input.c), vec4<i32>(u_input.c, 0i, 1i, -2147483647i))), Struct_2(func_5(Struct_2(Struct_1(-1i), vec4<u32>(u_input.a.x, u_input.b.x, 1u, u_input.b.x), 21988i), vec4<u32>(1u, u_input.b.x, u_input.a.x, u_input.b.x)), abs(vec4<u32>(34035u, u_input.a.x, u_input.a.x, 1u)), i32(-1i) * -16850i))));
    let var_1 = 0u;
    var_0 = _wgslsmith_mult_u32(0u, ~1u << (~_wgslsmith_mod_u32(select(1u, 0u, true), ~11360u) % 32u));
    var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(min(min(func_1(), ~u_input.b), ~countOneBits(u_input.b))), vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), vec3<u32>(u_input.a.x, ~u_input.b.x, ~34528u)), var_1, select(71280u, u_input.a.x, any(vec3<bool>(true, true, true)))));
    let var_2 = _wgslsmith_f_op_f32(1153f + -1065f);
    var_0 = func_1().x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2, var_2));
}

