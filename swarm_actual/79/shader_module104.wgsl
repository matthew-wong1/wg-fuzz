struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(24138u, 48978u), true, false, vec2<f32>(461f, 1620f), vec4<i32>(15985i, 1i, -15909i, 1i)), Struct_1(vec2<u32>(4294967295u, 4969u), true, false, vec2<f32>(-2855f, -1967f), vec4<i32>(44700i, 1i, 1i, -44442i)), Struct_1(vec2<u32>(27687u, 11828u), false, true, vec2<f32>(-1348f, 1584f), vec4<i32>(9115i, 1i, -2186i, 2147483647i)), Struct_1(vec2<u32>(31056u, 1u), true, true, vec2<f32>(559f, -1837f), vec4<i32>(-142i, -8284i, 0i, 4255i)), Struct_1(vec2<u32>(0u, 0u), true, false, vec2<f32>(350f, -1155f), vec4<i32>(-58752i, 0i, 0i, 2147483647i)), Struct_1(vec2<u32>(93429u, 22532u), false, true, vec2<f32>(1723f, -1227f), vec4<i32>(-8020i, 2147483647i, -11177i, -1i)), Struct_1(vec2<u32>(1u, 4294967295u), true, false, vec2<f32>(-246f, -412f), vec4<i32>(-33110i, 0i, 29010i, 1i)), Struct_1(vec2<u32>(42304u, 1u), false, false, vec2<f32>(-644f, 655f), vec4<i32>(41957i, -1i, 3879i, 43783i)), Struct_1(vec2<u32>(14205u, 3843u), true, true, vec2<f32>(-713f, 923f), vec4<i32>(21761i, -1i, -78i, -5123i)), Struct_1(vec2<u32>(6152u, 4294967295u), true, true, vec2<f32>(-641f, 469f), vec4<i32>(12352i, 2147483647i, 6582i, -35879i)), Struct_1(vec2<u32>(36542u, 27126u), false, false, vec2<f32>(-226f, 242f), vec4<i32>(-1i, 20469i, 2147483647i, 14892i)), Struct_1(vec2<u32>(1u, 4294967295u), false, false, vec2<f32>(-897f, 1363f), vec4<i32>(41144i, 31505i, 2147483647i, i32(-2147483648))), Struct_1(vec2<u32>(12113u, 15355u), true, true, vec2<f32>(1082f, 1000f), vec4<i32>(0i, 28561i, -1i, 6888i)), Struct_1(vec2<u32>(15664u, 111394u), true, false, vec2<f32>(-1000f, -1332f), vec4<i32>(0i, 1i, 2147483647i, 2147483647i)), Struct_1(vec2<u32>(15393u, 4294967295u), false, true, vec2<f32>(-445f, 1000f), vec4<i32>(20200i, 1i, i32(-2147483648), 0i)));

var<private> global2: array<u32, 12> = array<u32, 12>(12535u, 0u, 0u, 4294967295u, 64823u, 4294967295u, 1u, 0u, 1u, 48312u, 4294967295u, 35819u);

var<private> global3: array<u32, 1> = array<u32, 1>(0u);

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = ~(~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 21080u, 82965u, 1u), vec4<u32>(8758u, 51748u, global3[_wgslsmith_index_u32(arg_3.c.a.x, 1u)], 4294967295u)) >> (max(vec4<u32>(global3[_wgslsmith_index_u32(0u, 1u)], u_input.a.x, 1u, arg_2.b.b.a.x), vec4<u32>(0u, 1u, 28993u, 0u)) % vec4<u32>(32u))));
    let var_1 = vec3<f32>(arg_3.b.e, _wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(f32(-1f) * -376f));
    global4 = ~select(~(~(vec4<u32>(4294967295u, global4.x, 0u, 29283u) & vec4<u32>(var_0.x, arg_2.b.b.a.x, global4.x, arg_3.b.b.a.x))), vec4<u32>(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)], global3[_wgslsmith_index_u32(arg_2.b.b.a.x, 1u)], 4294967295u), countOneBits(firstTrailingBit(54824u)), arg_2.c.a.x, _wgslsmith_mod_u32(abs(1u), arg_3.c.a.x)), select(vec4<bool>(any(vec4<bool>(arg_2.c.b, true, arg_2.c.c, false)), arg_2.c.b, true, !arg_2.c.c), select(!vec4<bool>(false, true, arg_2.b.b.b, arg_2.b.b.c), !vec4<bool>(arg_3.c.c, false, false, false), select(vec4<bool>(true, arg_2.b.b.b, true, arg_0), vec4<bool>(true, true, arg_2.b.b.b, arg_2.c.b), arg_0)), vec4<bool>(arg_3.b.d | true, arg_2.c.d.x <= -793f, true, all(vec4<bool>(arg_2.b.d, arg_0, arg_2.c.c, true)))));
    var var_2 = vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.a.x, u_input.e.x, ~1u), countOneBits(~vec3<u32>(6386u, global3[_wgslsmith_index_u32(var_0.x, 1u)], 1u))), 0u, ~(~firstTrailingBit(var_0.x)), ~(~(~_wgslsmith_mult_u32(45074u, 0u))));
    let var_3 = arg_3.b;
    return _wgslsmith_sub_vec2_u32(~(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.b.a.x, 0u), vec2<u32>(var_0.x, var_2.x))) | ~(~u_input.a.xy)), min(min(vec2<u32>(reverseBits(u_input.e.x), ~u_input.e.x), vec2<u32>(1u, var_3.b.a.x)), ~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_3.b.a.x, 1u)), var_2.yy, vec2<u32>(4294967295u, 1u))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(vec2<u32>(min(~global4.x, arg_2.b.a.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(23746u, 0u, 4294967295u), ~u_input.a), ~global4.x), !all(!select(vec4<bool>(arg_2.b.b, true, false, true), vec4<bool>(true, arg_2.d, arg_2.d, arg_2.b.b), false)), true, arg_2.a, vec4<i32>(arg_2.b.e.x, 2147483647i, 28800i, i32(-1i) * -2147483647i));
    let var_1 = Struct_1(func_3(true, 212f, Struct_3(514f, Struct_2(arg_2.a, Struct_1(vec2<u32>(var_0.a.x, 47880u), var_0.c, true, var_0.d, arg_2.b.e), var_0.d.x, all(vec2<bool>(true, var_0.c)), arg_1), Struct_1(~vec2<u32>(101329u, arg_0), true, true, _wgslsmith_f_op_vec2_f32(var_0.d * arg_2.a), var_0.e)), Struct_3(arg_2.c, arg_2, Struct_1(u_input.a.xy, false, arg_2.b.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1074f, 929f), vec2<f32>(arg_1, -300f), vec2<bool>(true, var_0.c))), var_0.e))), true, -1000f != _wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_vec2_f32(arg_2.b.d + arg_2.a), vec4<i32>(-1i) * -vec4<i32>(~arg_2.b.e.x, _wgslsmith_dot_vec4_i32(var_0.e, vec4<i32>(-18339i, arg_2.b.e.x, -2147483647i, arg_2.b.e.x)), -18073i, ~u_input.d.x));
    global4 = vec4<u32>(global3[_wgslsmith_index_u32(reverseBits(~(~global2[_wgslsmith_index_u32(countOneBits(1u), 12u)])), 1u)], ~(~_wgslsmith_dot_vec2_u32(u_input.e.yy & global4.xx, global4.yz)), ~35987u, _wgslsmith_add_u32(abs(~global3[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 12u)]), 1u)]), var_1.a.x));
    let var_2 = Struct_1(firstLeadingBit(reverseBits(min(arg_2.b.a, vec2<u32>(arg_2.b.a.x, 55274u)))), arg_2.b.b, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-660f, var_0.d.x)) - arg_2.a)), u_input.d);
    let var_3 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1531f))))))), arg_2, Struct_1(select(func_3(var_2.b, var_0.d.x, Struct_3(arg_1, Struct_2(var_0.d, var_2, 1007f, var_2.c, arg_2.a.x), var_1), Struct_3(var_1.d.x, Struct_2(vec2<f32>(281f, 1300f), Struct_1(var_1.a, false, var_2.c, vec2<f32>(1491f, 428f), vec4<i32>(var_0.e.x, u_input.b.x, var_1.e.x, 1i)), var_0.d.x, false, var_1.d.x), var_1)), u_input.a.yz, false), !arg_2.b.c, !(!(!arg_2.b.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + vec2<f32>(arg_2.e, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.d.x, 1228f), var_2.d)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -1000f) - vec2<f32>(713f, var_1.d.x)))), var_1.e));
    return Struct_2(var_1.d, Struct_1(abs(_wgslsmith_clamp_vec2_u32(u_input.e.zx, var_3.b.b.a ^ vec2<u32>(var_2.a.x, arg_2.b.a.x), vec2<u32>(1u, 1u))), true, !(var_1.b || false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d.x, var_0.d.x), _wgslsmith_f_op_vec2_f32(-arg_2.b.d), !var_1.c)))), vec4<i32>(-1i) * -(vec4<i32>(53225i, 2147483647i, 1i, arg_2.b.e.x) | vec4<i32>(2147483647i, var_1.e.x, var_3.b.b.e.x, var_0.e.x))), -1000f, all(vec2<bool>(true, !(true && arg_2.b.c))), 1810f);
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 15>();
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))))));
    let var_0 = func_2(~33413u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1241f * -1114f), -327f), _wgslsmith_f_op_f32(floor(-1540f))))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-1433f + _wgslsmith_f_op_f32(490f + 1266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1585f)))), global1[_wgslsmith_index_u32(u_input.e.x, 15u)], 1067f, true, 472f), -(_wgslsmith_mult_vec2_i32(-u_input.b.yx, u_input.c.yx) << (~global4.xz % vec2<u32>(32u))));
    global1 = array<Struct_1, 15>();
    let var_1 = Struct_1(var_0.b.a, false, true, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.d.x))), var_0.b.d.x), _wgslsmith_f_op_vec2_f32(sign(var_0.b.d))), ~(-vec4<i32>(-u_input.d.x, 1i, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.e.x, var_0.b.e.x, -1i, var_0.b.e.x), vec4<i32>(var_0.b.e.x, u_input.c.x, 0i, 2147483647i)))));
    return func_2(_wgslsmith_mod_u32(func_2(u_input.e.x, _wgslsmith_f_op_f32(f32(-1f) * -763f), Struct_2(_wgslsmith_f_op_vec2_f32(abs(var_1.d)), Struct_1(vec2<u32>(var_1.a.x, global2[_wgslsmith_index_u32(72695u, 12u)]), var_1.b, var_1.b, vec2<f32>(261f, var_0.c), var_1.e), 869f, all(vec4<bool>(var_1.c, var_1.b, var_1.c, var_1.c)), var_0.c), var_1.e.xy).b.a.x, 1u), _wgslsmith_f_op_f32(var_0.b.d.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d.x)) * var_1.d.x)))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.d), vec2<f32>(var_1.d.x, 296f)), var_1.d), Struct_1(vec2<u32>(~1u, 13341u), !var_0.b.c, true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a))), ~vec4<i32>(var_1.e.x, u_input.b.x, u_input.d.x, -1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1271f * _wgslsmith_f_op_f32(-var_0.a.x)), -850f), var_0.e == -340f, var_1.d.x), vec2<i32>(~30081i, 11002i)).e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + 1f);
    let var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1375f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1227f - -483f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1f))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), -661f)), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(3338u, 46470u), 1u)], 15u)], var_1.x, true & all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), Struct_1(reverseBits(min(vec2<u32>(1u, 0u), func_2(30909u, -577f, Struct_2(vec2<f32>(var_1.x, 1319f), global1[_wgslsmith_index_u32(4608u, 15u)], -944f, true, var_1.x), u_input.b.yx).b.a)), !func_2(func_3(true, 1049f, Struct_3(-1401f, Struct_2(vec2<f32>(var_1.x, -443f), global1[_wgslsmith_index_u32(global4.x, 15u)], var_1.x, true, var_1.x), global1[_wgslsmith_index_u32(0u, 15u)]), Struct_3(-261f, Struct_2(vec2<f32>(var_1.x, var_1.x), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e.x, 12u)], 15u)], -1523f, false, var_1.x), global1[_wgslsmith_index_u32(1u, 15u)])).x, var_1.x, func_2(u_input.a.x, var_1.x, Struct_2(vec2<f32>(var_1.x, 196f), Struct_1(vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(1u, 12u)]), true, false, vec2<f32>(var_1.x, -1210f), u_input.d), -1000f, true, var_1.x), vec2<i32>(u_input.b.x, -17956i)), vec2<i32>(40436i, var_0)).d, true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 224f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1186f, var_1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), true))), vec4<i32>(abs(var_0 | 1i), -var_0, _wgslsmith_add_i32(35258i, _wgslsmith_div_i32(var_0, u_input.b.x)), -47048i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-868f))))));
}

