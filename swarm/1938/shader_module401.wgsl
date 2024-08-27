struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
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

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(333f, vec4<u32>(9559u, 49164u, 0u, 15930u), 4294967295u, i32(-2147483648)), Struct_1(844f, vec4<u32>(0u, 0u, 10527u, 15062u), 1u, 23750i), Struct_1(-1176f, vec4<u32>(6826u, 0u, 4294967295u, 71885u), 1u, -1i), Struct_1(1635f, vec4<u32>(51065u, 4294967295u, 13556u, 1u), 15223u, 28523i), Struct_1(699f, vec4<u32>(4294967295u, 31026u, 4294967295u, 4294967295u), 0u, 18168i), Struct_1(-1359f, vec4<u32>(93218u, 4294967295u, 4294967295u, 0u), 0u, -52987i), Struct_1(-909f, vec4<u32>(1u, 1u, 45475u, 22990u), 52461u, 5332i), Struct_1(-1000f, vec4<u32>(4294967295u, 11494u, 1u, 1u), 31141u, i32(-2147483648)), Struct_1(-326f, vec4<u32>(99109u, 1u, 0u, 1u), 23469u, 0i), Struct_1(1934f, vec4<u32>(0u, 4294967295u, 0u, 0u), 27932u, -1i), Struct_1(-1049f, vec4<u32>(0u, 86171u, 26067u, 232u), 4017u, 0i), Struct_1(-888f, vec4<u32>(27904u, 4294967295u, 0u, 19200u), 0u, 0i), Struct_1(650f, vec4<u32>(4294967295u, 25722u, 1u, 32736u), 1u, 0i));

var<private> global1: Struct_4 = Struct_4(Struct_3(vec2<i32>(-9277i, i32(-2147483648)), Struct_1(262f, vec4<u32>(44100u, 4963u, 1u, 6724u), 56987u, 1i), -600f, Struct_2(vec2<f32>(-494f, 372f), Struct_1(1392f, vec4<u32>(8583u, 0u, 1911u, 48666u), 11982u, 0i), 1u, vec4<f32>(-1452f, 139f, 159f, 806f), Struct_1(620f, vec4<u32>(88363u, 1u, 4294967295u, 0u), 0u, 2147483647i)), 5306u), true, vec3<f32>(-1000f, 506f, -1000f), Struct_2(vec2<f32>(-254f, -133f), Struct_1(144f, vec4<u32>(4294967295u, 1u, 32798u, 0u), 23804u, -1i), 55612u, vec4<f32>(-1040f, 734f, -478f, 715f), Struct_1(1529f, vec4<u32>(1u, 1u, 10607u, 0u), 23347u, -43349i)), vec3<bool>(false, false, false));

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<u32>, 14>;

var<private> global4: vec3<i32> = vec3<i32>(-32365i, 41447i, -67547i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = u_input.c > ~abs(-46169i);
    let var_1 = select(select(!(!(!vec4<bool>(true, global1.e.x, global1.b, global1.b))), vec4<bool>(global1.b, global1.b, false, false), !vec4<bool>(19172i != arg_0, global1.e.x, all(vec3<bool>(true, false, false)), all(vec4<bool>(global1.e.x, true, true, global1.b)))), vec4<bool>(global1.e.x, all(!select(global1.e, global1.e, vec3<bool>(false, global1.b, global1.b))), true, false), select(!(!select(vec4<bool>(global1.e.x, false, false, global1.b), vec4<bool>(true, true, false, global1.b), vec4<bool>(global1.b, global1.b, global1.e.x, false))), !select(select(vec4<bool>(global1.e.x, global1.e.x, true, global1.b), vec4<bool>(true, false, false, global1.e.x), global1.e.x), select(vec4<bool>(false, global1.e.x, false, global1.e.x), vec4<bool>(true, global1.b, false, global1.b), vec4<bool>(false, global1.e.x, global1.b, false)), global1.b), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -722f), ~(~_wgslsmith_mult_vec4_u32(~global1.d.b.b, vec4<u32>(0u, global1.d.c, global1.a.e, global1.d.c))), 1u, (43183i & firstTrailingBit(1i)) & arg_0);
    global1 = Struct_4(Struct_3(global4.zx, global0[_wgslsmith_index_u32(min(var_2.b.x >> (1u % 32u), ~global1.d.b.c), 13u)], -662f, global1.d, 90777u), true, arg_1.xzz, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(arg_1.xy))))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.d.b.c, 0u), 13u)], 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.d.d))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.x, global1.a.b.a, arg_1.x, var_2.a))), global1.d.d, select(vec4<bool>(global1.b, true, false, true), var_1, global1.e.x)))), Struct_1(-864f, ~firstTrailingBit(vec4<u32>(1u, global1.d.b.c, 4294967295u, 4294967295u)), select(_wgslsmith_clamp_u32(global1.d.b.c, 4294967295u, 44982u), 0u >> (global1.a.d.c % 32u), 444f > var_2.a), -2147483647i)), vec3<bool>(true, true, !global1.e.x));
    var_0 = !(max(u_input.a << (0u % 32u), reverseBits(72862u)) == (~u_input.a | ~0u)) | false;
    return ~20547u;
}

fn func_2() -> u32 {
    let var_0 = vec3<f32>(-167f, global2.x, 926f);
    global1 = Struct_4(global1.a, !(!global1.e.x & any(vec2<bool>(true, false))), global1.a.d.d.wzy, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(-1219f, 1254f, any(global1.e))), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(abs(-1811f))))), global1.a.d.b, ~(4294967295u >> (func_3(-9905i, global1.a.d.d) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1198f, -407f, -529f, 2120f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1718f))), vec4<u32>(u_input.b, global1.a.d.e.c, 0u, global1.d.e.c) | global1.a.b.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(135227u, 26120u, u_input.b, 0u), vec4<u32>(0u, 51578u, 12242u, global1.a.d.c)), global1.d.e.b >> (vec4<u32>(global1.a.e, global1.a.e, 1u, u_input.a) % vec4<u32>(32u))), min(countOneBits(u_input.c), max(u_input.c, global4.x)))), !(!(!select(global1.e, vec3<bool>(global1.e.x, true, global1.b), vec3<bool>(global1.e.x, global1.e.x, global1.b)))));
    let var_1 = Struct_4(Struct_3(~(~(global4.zz & global4.yx)), Struct_1(_wgslsmith_f_op_f32(var_0.x + -2161f), ~global1.a.b.b << (~vec4<u32>(14626u, global1.a.d.b.c, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~(~2039u), -20957i >> (_wgslsmith_add_u32(global1.a.b.c, global1.d.b.b.x) % 32u)), -867f, global1.a.d, ~(global1.d.c << (global1.d.b.b.x % 32u))), global1.b, _wgslsmith_f_op_vec3_f32(-var_0), Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.yy, vec2<f32>(global2.x, global1.a.d.b.a), vec2<bool>(false, global1.e.x)))))), Struct_1(-767f, firstLeadingBit(global1.a.b.b), u_input.b >> (1u % 32u), -20922i), global1.a.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(662f, _wgslsmith_div_f32(206f, var_0.x), 1000f, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), global1.d.e.b << (vec4<u32>(1u, global1.a.e, 17992u, global1.d.b.b.x) % vec4<u32>(32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), global3[_wgslsmith_index_u32(u_input.b, 14u)]), -u_input.c & min(-2147483647i, global4.x))), vec3<bool>(false, all(vec4<bool>(all(global1.e.xx), true, global1.b, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * var_0.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) + _wgslsmith_f_op_f32(step(global1.a.c, 281f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1528f))), 1938f, 121f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(1623f, -1000f)), global1.c.x, -1017f, 797f))), true))));
    global1 = var_1;
    return select(u_input.b, select(4656u, countOneBits(~(~10380u)), select(true, true, any(global1.e))), all(vec3<bool>(all(vec4<bool>(var_1.b, true, false, true)), global1.b, all(vec4<bool>(var_1.b, false, true, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_4 {
    var var_0 = global1.a;
    var var_1 = arg_0.c;
    var_1 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(func_2(), arg_0.b.x >> (24361u % 32u)), 0u, ~firstLeadingBit(u_input.b));
    var_1 = var_0.e;
    var var_2 = vec4<i32>(2147483647i, u_input.c, -18975i, (-global4.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d, -2147483647i), vec2<i32>(-7179i, global1.a.d.e.d))) << (4294967295u % 32u)) ^ -(~vec4<i32>(var_0.a.x, 1i, arg_0.d, 1i) << (arg_0.b % vec4<u32>(32u)));
    return Struct_4(global1.a, global1.e.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1061f * var_0.b.a)))), Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(438f, 1217f))))), global0[_wgslsmith_index_u32(1u, 13u)], firstLeadingBit(reverseBits(var_0.b.c) ^ func_3(global1.a.b.d, vec4<f32>(-1485f, arg_1.x, -567f, -2400f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(331f * -651f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, arg_1.x)))), var_0.b), select(global1.e, global1.e, (_wgslsmith_f_op_f32(abs(global1.a.c)) >= _wgslsmith_f_op_f32(-arg_1.x)) || global1.e.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.d.c, arg_0.d.e.c), 13u)];
    var var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(410f * 313f))), ~(global1.d.e.b | vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, 4294967295u)), 4294967295u, ~global1.d.b.d), _wgslsmith_f_op_vec3_f32(-global1.c)).a.d.b, arg_0.c).a;
    global0 = array<Struct_1, 13>();
    var_0 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 1321f)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 4294967295u), vec4<u32>(u_input.b, 35950u, u_input.b, u_input.b)) | arg_0.d.b.b, ~global1.d.e.c, firstLeadingBit(0i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(898f, arg_0.d.a.x, -459f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -158f, -1405f), vec3<f32>(var_1.c, -1336f, global2.x))), global1.a.d.d.xww))).d.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, 444f, 2139f)) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.a.x, 2506f, arg_0.c.x), var_1.d.d.xzw), var_1.d.d.zww)))).a.b;
    var var_2 = select(arg_0.e.xz, global1.e.yz, arg_0.e.yz);
    return func_1(func_1(Struct_1(517f, vec4<u32>(~1u, _wgslsmith_sub_u32(var_1.e, 50871u), var_1.e, ~0u), 80910u, arg_0.a.b.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1362f, var_0.a, 776f))))).d.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.d.d.yzy, global1.a.d.d.zxy))))))).d.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(global1.d.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d.a.x)))), Struct_1(_wgslsmith_f_op_f32(global2.x + -447f), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 10485u, u_input.b, global1.a.d.c), global1.a.b.b | global1.d.e.b, vec4<u32>(0u, global1.d.b.b.x, 0u, u_input.b) & global1.d.b.b) << ((vec4<u32>(1u, 0u, 56952u, 74179u) & global1.d.e.b) % vec4<u32>(32u)), u_input.a, -(countOneBits(1i) << (reverseBits(global1.d.b.b.x) % 32u))), 893u, global1.d.d, func_4(func_1(global1.a.b, vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(global2.x, global2.x, global1.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -980f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))));
    var var_1 = ~countOneBits(vec2<u32>(var_0.e.b.x, u_input.b));
    global4 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(countOneBits(max(-23351i, 28985i)), ~(var_0.b.d & -1i), _wgslsmith_mod_i32(func_4(Struct_4(global1.a, global1.e.x, vec3<f32>(global2.x, 1028f, 1849f), global1.a.d, vec3<bool>(global1.e.x, true, true)), var_0.d.wz).d, 12475i)), vec3<i32>(reverseBits(~(~u_input.c)), _wgslsmith_add_i32(_wgslsmith_div_i32(-40518i, _wgslsmith_dot_vec4_i32(vec4<i32>(-37939i, 0i, 1i, global1.a.d.e.d), vec4<i32>(349i, u_input.c, u_input.c, var_0.b.d))), _wgslsmith_sub_i32(-56607i, u_input.c) << (func_4(Struct_4(global1.a, global1.b, vec3<f32>(189f, 1273f, var_0.d.x), Struct_2(global1.d.d.yy, Struct_1(global2.x, vec4<u32>(global1.d.c, u_input.a, global1.a.d.e.b.x, u_input.b), 4294967295u, u_input.c), global1.a.d.b.c, vec4<f32>(global1.d.a.x, 423f, global2.x, global1.a.c), Struct_1(global1.d.d.x, vec4<u32>(1u, 3379u, 0u, 0u), global1.a.e, -41993i)), global1.e), var_0.a).c % 32u)), -20147i), vec3<i32>(0i, ~_wgslsmith_mod_i32(min(11411i, -2147483647i), firstLeadingBit(global4.x)), ~(i32(-1i) * -u_input.c)));
    var_0 = global1.d;
    let var_2 = global1.a.b;
    let var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(abs(-774f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1118f + var_3.c) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.d.e.a, -288f)))));
}

