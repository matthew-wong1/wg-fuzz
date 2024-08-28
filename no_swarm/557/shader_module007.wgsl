struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1114u, 1u);

var<private> global1: array<Struct_2, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = 273f;
    var var_1 = Struct_1(vec2<bool>(!(abs(u_input.a) < u_input.a), ~15055i <= -(u_input.a << (global0.x % 32u))), vec2<bool>(any(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), all(vec4<bool>(true, true, true, true))));
    global1 = array<Struct_2, 21>();
    global0 = vec2<u32>(u_input.c, abs(4294967295u & _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, u_input.b), u_input.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -954f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_0))));
    return vec4<bool>(var_1.a.x, -1799f != _wgslsmith_f_op_f32(-1540f - _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(-var_2)))), false, !all(vec3<bool>(var_1.a.x, !var_1.b.x, all(vec4<bool>(false, true, false, var_1.b.x)))));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = all(select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), func_3(), false), vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), func_3())), !func_3()));
    let var_1 = Struct_1(select(!func_3().yz, vec2<bool>(all(select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(var_0, true, false, true), vec4<bool>(true, false, false, false))), var_0), var_0), select(vec2<bool>(true, true), select(!(!vec2<bool>(var_0, false)), func_3().yy, false), !vec2<bool>(24694u >= u_input.c, false)));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(1u, global0.x)), firstTrailingBit(0u & u_input.d), ~global0.x), 12969u), 21u)], Struct_3(Struct_2(var_1, _wgslsmith_sub_vec2_u32(select(u_input.b, u_input.b, var_0), vec2<u32>(global0.x, 0u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1328f, 1000f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-549f, 720f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, 906f))), _wgslsmith_f_op_f32(294f + -1051f) == _wgslsmith_f_op_f32(round(-423f)))), Struct_1(select(!var_1.b, vec2<bool>(var_1.a.x, var_1.b.x), select(var_1.b, var_1.a, var_1.b)), !var_1.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, -156f, 1347f, 672f))))), _wgslsmith_add_vec3_i32(select(-countOneBits(vec3<i32>(u_input.a, u_input.a, arg_0)), abs(~vec3<i32>(18241i, u_input.a, u_input.a)), all(vec4<bool>(var_0, var_1.b.x, var_1.b.x, false))), _wgslsmith_add_vec3_i32(select(vec3<i32>(0i, arg_0, 30026i), vec3<i32>(-24054i, u_input.a, arg_0), var_1.b.x) & ~vec3<i32>(arg_0, 2147483647i, u_input.a), vec3<i32>(_wgslsmith_div_i32(u_input.a, arg_0), 40290i, _wgslsmith_mod_i32(arg_0, 28572i)))), firstTrailingBit(u_input.b.x));
    var_2 = Struct_5(Struct_2(var_2.a.a, vec2<u32>(~(~var_2.d), 4294967295u)), Struct_3(var_2.b.a, var_2.b.b, var_2.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b.d + vec4<f32>(-2017f, -234f, var_2.b.b.x, -670f)), _wgslsmith_f_op_vec4_f32(sign(var_2.b.d))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_div_f32(-791f, var_2.b.d.x), _wgslsmith_f_op_f32(var_2.b.b.x + var_2.b.b.x), 111f))), var_2.c, ~abs(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b))));
    var var_3 = Struct_4(var_2.b.c, !vec4<bool>(!all(vec4<bool>(var_0, var_1.b.x, true, var_2.a.a.b.x)), true, ~global0.x == 0u, var_0), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.d.x + var_2.b.b.x), _wgslsmith_f_op_f32(round(302f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1021f)), -440f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.d.x, var_2.b.d.x, -1000f) * var_2.b.d.zxw))))), select(select(select(select(var_2.a.a.b, var_2.a.a.b, var_1.b), var_2.a.a.b, var_0), !select(vec2<bool>(var_1.a.x, var_2.a.a.b.x), var_1.a, vec2<bool>(true, true)), any(!var_1.a)), vec2<bool>(!var_0, !var_2.a.a.b.x), var_0));
    return var_3.a.b.x;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(Struct_1(!select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, global0.x <= global0.x), true)), select(vec4<bool>(false, true, any(vec3<bool>(false, false, true)), true), vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), func_2(u_input.a & u_input.a), true), func_3()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1938f, _wgslsmith_f_op_f32(f32(-1f) * -981f), -678f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(295f * 696f), _wgslsmith_f_op_f32(min(868f, 346f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, 1491f, 842f) + vec3<f32>(514f, 1747f, -446f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(554f, -432f, 150f) * vec3<f32>(966f, -224f, 1626f))))))), select(vec2<bool>(false, true), !vec2<bool>(true, any(vec2<bool>(false, false))), true));
    let var_1 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(61245u, 1u | ~firstTrailingBit(1u)), 21u)], Struct_3(global1[_wgslsmith_index_u32(u_input.d, 21u)], _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.c.zy, _wgslsmith_f_op_vec2_f32(select(var_0.c.zz, var_0.c.zz, var_0.b.x))))), var_0.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 222f) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, -1041f, -1516f, -1000f), vec4<f32>(var_0.c.x, var_0.c.x, -1426f, var_0.c.x)))))), _wgslsmith_div_vec3_i32(abs(-vec3<i32>(u_input.a, -8186i, u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(4770i, u_input.a, -2147483647i), firstLeadingBit(vec3<i32>(24992i, -2147483647i, 0i)))), (max(select(u_input.b.x, u_input.d, true), countOneBits(u_input.b.x)) & _wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.x, global0.x), global0.x)) | ~firstTrailingBit(1386u & global0.x));
    let var_2 = vec4<u32>(select((abs(3275u) >> (_wgslsmith_mod_u32(global0.x, 1u) % 32u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(12090u, var_1.a.b.x, 6913u, 1u), vec4<u32>(1u, global0.x, 0u, 6980u)), vec4<u32>(1u, 82822u, 42323u, u_input.c)), 4294967295u, !func_2(var_1.c.x & u_input.a)), u_input.b.x, 1u, u_input.c);
    var var_3 = _wgslsmith_dot_vec2_i32(var_1.c.zy, -var_1.c.yx);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(var_0.c.xz));
    return Struct_5(Struct_2(Struct_1(var_1.b.c.a, vec2<bool>(!var_0.a.b.x, true)), vec2<u32>(1u, var_2.x)), Struct_3(Struct_2(var_1.a.a, vec2<u32>(max(global0.x, u_input.c), ~13268u)), var_0.c.xx, var_1.b.a.a, _wgslsmith_f_op_vec4_f32(exp2(var_1.b.d))), _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.a, abs(_wgslsmith_mod_i32(u_input.a, var_1.c.x)), u_input.a), min(-vec3<i32>(1959i, var_1.c.x, u_input.a), abs(vec3<i32>(u_input.a, 17311i, u_input.a)) >> (var_2.yzy % vec3<u32>(32u)))), global0.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(arg_3, countOneBits(_wgslsmith_mod_i32(-2147483647i, u_input.a >> (18969u % 32u)))) == _wgslsmith_mod_i32(arg_3 << (1u % 32u), 52995i);
    let var_1 = Struct_3(arg_1.b.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.c.x, arg_2.c.x), arg_1.b.d.wy))))), arg_2.c.zy, true)), arg_1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b.d) - arg_1.b.d) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(522f, 1481f, arg_2.c.x, 382f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.c.x, -923f, -642f, arg_1.b.d.x), arg_1.b.d, vec4<bool>(true, arg_2.d.x, arg_1.b.c.b.x, true))))))));
    let var_2 = countOneBits(firstTrailingBit(15684u));
    let var_3 = false;
    let var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(global0.x), 21u)];
    return 1823f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b.x, global0.x) & _wgslsmith_add_u32(u_input.d, u_input.b.x), 3774u, global0.x), func_1(), Struct_4(func_1().b.c, vec4<bool>(all(vec2<bool>(false, true)), true, true, true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1589f, -595f, 1000f))), vec2<bool>(false, func_2(u_input.a))), func_1().c.x))));
    let var_1 = -(i32(-1i) * -u_input.a);
    let var_2 = Struct_5(Struct_2(Struct_1(select(vec2<bool>(true, true), func_1().b.c.b, true), vec2<bool>(func_1().a.a.a.x, func_1().b.c.b.x)), ~vec2<u32>(97002u, global0.x)), Struct_3(func_1().b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1720f, var_0) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1859f))), Struct_1(func_3().zx, vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<u32>(global0.x, global0.x, global0.x), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), vec2<bool>(false, true)), u_input.b), Struct_3(global1[_wgslsmith_index_u32(85591u, 21u)], vec2<f32>(164f, -1251f), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true)), vec4<f32>(1508f, -712f, var_0, 690f)), vec3<i32>(-2239i, var_1, 1i), 1u), Struct_4(Struct_1(vec2<bool>(true, false), vec2<bool>(true, false)), vec4<bool>(true, false, true, true), vec3<f32>(-1998f, 1721f, -1132f), vec2<bool>(true, false)), u_input.a))), _wgslsmith_f_op_f32(round(var_0)), 759f)), vec3<i32>(u_input.a, u_input.a, 2147483647i), 1u);
    var var_3 = global0.x;
    global1 = array<Struct_2, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(13022i, ~u_input.a, abs(1978i)) | -vec3<i32>(-69451i, -1i, 27431i)), vec4<u32>(1u, global0.x, global0.x, 3460u) >> (vec4<u32>(_wgslsmith_add_u32(max(0u, 0u), 1u), _wgslsmith_dot_vec2_u32(abs(u_input.b), ~vec2<u32>(var_2.b.a.b.x, global0.x)), ~var_2.b.a.b.x, ~19992u) % vec4<u32>(32u)), var_2.b.b.x);
}

