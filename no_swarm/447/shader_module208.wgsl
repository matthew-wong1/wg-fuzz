struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<f32>(1442f, 1726f, -1000f, -1956f), vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec3<i32>(-7668i, 0i, 41526i)), Struct_1(vec4<f32>(-1612f, -231f, 1334f, 692f), vec4<bool>(true, false, true, true), vec2<bool>(false, true), vec3<i32>(0i, i32(-2147483648), 66629i)), Struct_1(vec4<f32>(-479f, 1000f, 267f, 768f), vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec3<i32>(10628i, -24119i, i32(-2147483648))), Struct_1(vec4<f32>(-1213f, 1579f, 1639f, 781f), vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec3<i32>(-27033i, -1i, 0i)), Struct_1(vec4<f32>(1446f, -287f, -766f, -355f), vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec3<i32>(-1i, -40557i, i32(-2147483648))), Struct_1(vec4<f32>(-1126f, 1191f, -307f, 1408f), vec4<bool>(false, true, false, false), vec2<bool>(false, false), vec3<i32>(2147483647i, -28913i, i32(-2147483648))), Struct_1(vec4<f32>(838f, -712f, 1000f, -239f), vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec3<i32>(-10999i, 1i, -22553i)));

var<private> global4: u32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> f32 {
    global0 = -349f;
    var var_0 = ~abs(abs(vec4<u32>(~1u, 54638u, 1u, u_input.a)));
    var var_1 = _wgslsmith_div_u32(u_input.a, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11779u, var_0.x, var_0.x, u_input.a) >> (vec4<u32>(var_0.x, u_input.a, u_input.a, var_0.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, var_0.x, var_0.x, var_0.x)), var_0.x << (u_input.a % 32u)));
    let var_2 = !(~0u > ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 51823u, 4842u), vec3<u32>(57156u, 69539u, 1u))));
    global3 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-526f, -501f), -1440f))) * -1264f)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(~13393u >> (~_wgslsmith_add_u32(~39464u, ~u_input.a << (7768u % 32u)) % 32u), 7u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2335f, var_0.a.x, var_0.a.x, var_0.a.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_3()), -798f, -1902f, _wgslsmith_f_op_f32(sign(var_0.a.x))))), var_0.b, !(!select(!arg_1, !vec2<bool>(global2.x, arg_1.x), vec2<bool>(false, global2.x))), _wgslsmith_mod_vec3_i32(-(~var_0.d), vec3<i32>(1i, 2147483647i, firstLeadingBit(var_0.d.x) & u_input.b.x)));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a), var_2.b, select(vec2<bool>(firstTrailingBit(-1615i) != _wgslsmith_add_i32(10315i, var_2.d.x), any(!var_0.b)), vec2<bool>(true, true), vec2<bool>(false, !var_0.b.x)), ~_wgslsmith_add_vec3_i32(-var_2.d ^ -var_0.d, -(vec3<i32>(-2147483647i, u_input.b.x, var_2.d.x) << (vec3<u32>(17896u, 1u, 1u) % vec3<u32>(32u)))));
    var var_3 = countOneBits(~select(~vec2<u32>(u_input.a, 1u), vec2<u32>(11768u, arg_0), select(arg_1, var_0.b.zy, vec2<bool>(false, var_0.c.x)))) ^ _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, u_input.a)), ~(vec2<u32>(84040u, arg_0) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) << (max(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(1u, 1u)) % vec2<u32>(32u)));
    return ~((0u | _wgslsmith_clamp_u32(~32895u, _wgslsmith_clamp_u32(var_3.x, 0u, arg_0), ~28475u)) ^ ~_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41198u), vec2<u32>(u_input.a, arg_0))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = vec3<bool>(false, all(vec3<bool>(any(!arg_0.b), true, -arg_0.d.x > u_input.b.x)), arg_0.c.x);
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -524f)))));
    let var_1 = -59111i;
    global4 = _wgslsmith_mod_u32(abs(0u), ~((u_input.a >> (reverseBits(13125u) % 32u)) & u_input.a));
    return global3[_wgslsmith_index_u32(select(func_4(~u_input.a, vec2<bool>(arg_0.a.x != _wgslsmith_f_op_f32(func_3()), !global2.x | !global2.x)), u_input.a, all(vec4<bool>(any(vec4<bool>(arg_0.b.x, false, global2.x, var_0.b.x)), all(vec4<bool>(var_0.b.x, global2.x, false, true)), all(vec4<bool>(arg_0.b.x, true, var_0.c.x, true)), select(false, false, all(arg_0.c))))), 7u)];
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = max(~vec3<i32>(u_input.b.x, firstLeadingBit(36612i) | (u_input.b.x | -1i), -2147483647i), vec3<i32>(2147483647i, -48747i, u_input.b.x >> (~19330u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1180f));
    let var_2 = func_2(global3[_wgslsmith_index_u32(~12281u, 7u)]);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_2.a.x * var_1), _wgslsmith_f_op_f32(step(1430f, 660f)), -256f, _wgslsmith_f_op_f32(-var_2.a.x)), func_2(Struct_1(var_2.a, arg_2, global2.zx, vec3<i32>(-8925i, -2147483647i, var_0.x))).a, select(var_2.b, select(var_2.b, vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(global2.x, true, false, arg_1)), u_input.a > arg_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2.a))) - func_2(global3[_wgslsmith_index_u32(~0u, 7u)]).a)), vec4<bool>(any(global2.yx), !(true && (global2.x || global2.x)), arg_1, true), select(vec2<bool>(!(!arg_1), true), vec2<bool>(all(select(var_2.b.zwx, vec3<bool>(global2.x, arg_2.x, true), true)), !arg_1), vec2<bool>(var_2.b.x && var_2.b.x, global2.x)), vec3<i32>(i32(-1i) * -1i, -1i, ~1i));
    let var_4 = (u_input.b ^ func_2(func_2(global3[_wgslsmith_index_u32(0u, 7u)])).d.xy) | (var_2.d.zx << ((select(_wgslsmith_sub_vec2_u32(vec2<u32>(73660u, arg_0), vec2<u32>(u_input.a, 0u)), vec2<u32>(18194u, 4294967295u), !vec2<bool>(true, var_3.c.x)) ^ select(~vec2<u32>(54951u, 33998u), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(u_input.a, 0u)), vec2<bool>(true, true))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-var_2.a.xyw);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global2 = select(!select(!select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, false, false)), vec3<bool>(true | global2.x, false, all(vec3<bool>(global2.x, global2.x, true))), all(func_2(global3[_wgslsmith_index_u32(1u, 7u)]).b)), !vec3<bool>(true, all(vec3<bool>(false, global2.x, false)) && (arg_2 != 1i), select(!global2.x, true, true)), vec3<bool>(!(any(global2.yx) == global2.x), false, true));
    global3 = array<Struct_1, 7>();
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 7u)];
    var var_1 = ~(~_wgslsmith_mult_u32(0u, ~_wgslsmith_mod_u32(u_input.a, 61339u)));
    let var_2 = var_0.d.x;
    return func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), var_0.b, var_0.c, vec3<i32>(arg_2, -select(9021i, 1582i, global2.x), arg_2 ^ var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<f32>(-1336f, 2507f, 446f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, 3139f, 477f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.a, global2.x, vec4<bool>(true, true, global2.x, global2.x)))))), ~(~u_input.b.x));
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1774f + 1304f), -1640f, var_0.a.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, 1176f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1010f, var_0.a.x) - var_0.a.yzx)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.zww)), var_0.d.x);
    let var_2 = var_1;
    var var_3 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 997f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x))), vec4<bool>(global2.x, !(var_2.d.x > 2147483647i), true, all(vec2<bool>(true, true))), vec2<bool>(all(vec2<bool>(var_2.b.x, global2.x)), !global2.x), vec3<i32>(reverseBits(-1i >> (1u % 32u)), _wgslsmith_mod_i32(-var_2.d.x, func_5(var_1.a.wyy, vec3<f32>(var_0.a.x, 1826f, 187f), var_2.d.x).d.x), _wgslsmith_add_i32(var_0.d.x, 2147483647i)))).b.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_1.a.x, var_0.a.x, 229f))))), !select(var_1.b, var_0.b, false), global2.xz, _wgslsmith_sub_vec3_i32(vec3<i32>(14702i ^ _wgslsmith_sub_i32(var_0.d.x, -3492i), firstTrailingBit(var_2.d.x) >> ((23776u << (u_input.a % 32u)) % 32u), 27239i), countOneBits(~var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-298f, ~8477u, vec3<u32>(0u, u_input.a, 69039u >> (~(u_input.a >> (u_input.a % 32u)) % 32u)), ~(~max(_wgslsmith_add_u32(u_input.a, u_input.a), 5659u)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(func_2(func_2(Struct_1(var_4.a, var_2.b, vec2<bool>(true, true), vec3<i32>(-2147483647i, var_0.d.x, -3705i)))).a.x, var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1583f), true)));
}

