struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<i32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(117f, -1307f, 514f, -1013f), 12042i, false);

var<private> global1: u32;

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0.a.xxw)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.a.xyy - vec3<f32>(global2.a.x, global0.a.x, 628f)), vec3<f32>(590f, global2.a.x, global2.a.x))))) + global0.a.zyw);
    let var_1 = -43677i;
    let var_2 = vec2<u32>(u_input.b, abs(41692u));
    return global2.a.xwy;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global2.a, ~_wgslsmith_sub_i32(~min(u_input.c, -44738i), _wgslsmith_mod_i32(-12342i >> (u_input.a.x % 32u), -6668i)), !any(vec3<bool>(global2.c, global0.c, global2.c)) || all(select(vec3<bool>(false, global2.c, global0.c), !vec3<bool>(true, global0.c, true), any(vec4<bool>(false, true, global0.c, false)))));
    let var_1 = Struct_4(Struct_2(Struct_1(global0.a.yxy, u_input.a, !(4294967295u > u_input.a.x), 2147483647i, select(var_0.c, false, global0.a.x == global0.a.x)), true), select(vec2<bool>(true, true), vec2<bool>(any(!vec4<bool>(var_0.c, global0.c, false, false)), var_0.c & var_0.c), select(select(vec2<bool>(false, false), !vec2<bool>(global2.c, global2.c), !vec2<bool>(true, global0.c)), !select(vec2<bool>(global2.c, false), vec2<bool>(true, global2.c), vec2<bool>(true, global2.c)), true)));
    var var_2 = Struct_2(var_1.a.a, var_1.a.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(reverseBits(var_2.a.d >> (u_input.a.x % 32u)) & -2147483647i, ~global2.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 1000f, var_2.a.a.x)))), vec3<f32>(var_1.a.a.a.x, -670f, _wgslsmith_f_op_f32(select(1555f, global0.a.x, false))))));
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), -284f, var_2.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -446f)), global0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), -1000f, global0.a.x, _wgslsmith_f_op_f32(min(164f, 176f))) + _wgslsmith_f_op_vec4_f32(-global2.a))), var_2.a.d, var_1.b.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.a.x, -341f, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.a))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(var_1.a.a.a.x, 402f)), -1148f, -542f)))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.b.x, 4294967295u, 15003u), vec3<u32>(4294967295u, var_1.a.a.b.x, var_2.a.b.x)), ~_wgslsmith_div_vec3_u32(u_input.a, var_2.a.b)), ~vec3<u32>(var_1.a.a.b.x, firstTrailingBit(4294967295u), _wgslsmith_sub_u32(var_2.a.b.x, u_input.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(var_2.a.b.x, 71897u, 4294967295u)), ~vec3<u32>(var_2.a.b.x, var_1.a.a.b.x, var_1.a.a.b.x)), ~var_2.a.b, u_input.a)), var_0.c, ~_wgslsmith_div_i32(global0.b, -3128i), ((global2.b << (var_2.a.b.x % 32u)) | global0.b) == (~_wgslsmith_clamp_i32(-2147483647i, 0i, -2147483647i) << (var_1.a.a.b.x % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_3 {
    global2 = arg_1;
    var var_0 = func_2();
    global2 = arg_1;
    global0 = arg_1;
    var var_1 = var_0.b.xz;
    return Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(var_0.a.x, global2.a.x)), 367f, var_0.a.x)))), _wgslsmith_div_i32(countOneBits(0i), ~_wgslsmith_add_i32(arg_0.d, -2147483647i) & _wgslsmith_mult_i32(global2.b, global2.b)), var_0.e);
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_mult_u32(20782u, countOneBits(_wgslsmith_add_u32(4294967295u, u_input.a.x)));
    var_0 = 29503u;
    var var_1 = func_4(func_2(), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, global0.a.x, 720f, 1000f))), global2.a))), abs(_wgslsmith_add_i32(~u_input.c, global0.b ^ u_input.c)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.a.x)))));
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, 719f, var_1.a.x)))) * vec3<f32>(566f, _wgslsmith_div_f32(807f, global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))), abs(~u_input.a), true, global0.b, true), Struct_3(vec4<f32>(517f, -1135f, -745f, _wgslsmith_f_op_f32(global2.a.x + -576f)), 6529i, !(u_input.a.x != firstLeadingBit(1u))), 1597f, _wgslsmith_f_op_f32(abs(1322f)));
    let var_2 = Struct_1(vec3<f32>(global0.a.x, 469f, -846f), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 34042u), select(vec3<u32>(u_input.a.x, u_input.d, u_input.d), u_input.a, vec3<bool>(false, false, true))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(4294967295u, u_input.a.x, 72392u))), false, min(_wgslsmith_add_i32(~global2.b, _wgslsmith_div_i32(0i, -8033i)), 3356i), any(!select(vec4<bool>(global2.c, false, global2.c, global0.c), !vec4<bool>(var_1.c, global2.c, global2.c, false), !var_1.c)));
    return Struct_5(Struct_4(Struct_2(func_2(), any(!vec2<bool>(false, global0.c))), vec2<bool>(any(!vec4<bool>(false, true, var_2.c, false)), true || global2.c)), Struct_4(Struct_2(func_2(), !global2.c & !global0.c), !select(select(vec2<bool>(false, true), vec2<bool>(var_2.c, true), true), !vec2<bool>(var_2.c, true), global0.b >= -31992i)), vec4<i32>(var_2.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, global2.b), reverseBits(vec2<i32>(-2147483647i, -1i))) | -firstTrailingBit(global2.b), 2741i, _wgslsmith_clamp_i32(global0.b, -_wgslsmith_div_i32(2147483647i, -28788i), func_4(func_2(), Struct_3(vec4<f32>(var_2.a.x, var_2.a.x, global2.a.x, 162f), global0.b, var_2.e), var_2.a.x, -1499f).b)), countOneBits(select(~vec4<u32>(46981u, var_2.b.x, 1u, 32199u), vec4<u32>(u_input.b, var_2.b.x, u_input.b, u_input.a.x) << (vec4<u32>(4294967295u, 28855u, var_2.b.x, var_2.b.x) % vec4<u32>(32u)), vec4<bool>(false, global0.c, global2.c, true))) << (~max(reverseBits(vec4<u32>(0u, var_2.b.x, 4294967295u, 85772u)), firstLeadingBit(vec4<u32>(35008u, var_2.b.x, 4294967295u, var_2.b.x))) % vec4<u32>(32u)), true && !global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(min(~0u, ~7564u) << (u_input.a.x % 32u));
    global2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(501f, global0.a.x, 175f, global0.a.x) - global2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(1040f, -2649f, global2.a.x, global0.a.x) * global0.a))), vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-736f + global0.a.x), _wgslsmith_f_op_f32(max(189f, global0.a.x)), _wgslsmith_f_op_f32(-2446f + global2.a.x))))), global0.b, !global2.c);
    let var_1 = !vec4<bool>(any(!(!vec2<bool>(global2.c, false))), global0.c, true, false & any(select(vec3<bool>(false, global2.c, false), vec3<bool>(true, global0.c, false), true)));
    let var_2 = func_1();
    global2 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-422f + var_2.b.a.a.a.x), 1000f, var_2.a.a.a.a.x), var_2.a.a.a.b, !(_wgslsmith_f_op_f32(-var_2.b.a.a.a.x) == 240f), -57445i, false), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) * vec4<f32>(165f, -264f, global2.a.x, -1067f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1481f, 833f, 1571f, 1090f))), -42499i, true), 121f, -1199f);
    let var_3 = vec4<u32>(min(49061u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.a.b.x, u_input.a.x, var_2.d.x, var_2.a.a.a.b.x), vec4<u32>(4294967295u, 1443u, 80167u, u_input.b)), 83952u) >> (~var_2.d.x % 32u), 0u, 44414u, var_2.b.a.a.b.x);
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.wz) * _wgslsmith_f_op_vec2_f32(global0.a.wy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.xz, vec2<f32>(1000f, -751f))) * _wgslsmith_f_op_vec2_f32(-global2.a.wy)));
    global2 = Struct_3(vec4<f32>(-554f, var_2.a.a.a.a.x, -1096f, -463f), _wgslsmith_add_i32(-(i32(-1i) * -1i), _wgslsmith_add_i32(11306i, i32(-1i) * -global0.b)), true);
    let var_5 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(func_1().d.xw, var_2.d.wx | vec2<u32>(0u, u_input.b)), var_2.a.a.a.b.x, ~(~var_3.x), var_3.x) ^ vec4<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1760u, var_2.b.a.a.b.x, var_2.d.x), ~var_3.x), u_input.a.x, min(var_3.x, _wgslsmith_sub_u32(var_2.d.x, u_input.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 1i, 1i) << (vec3<u32>(var_5.x, u_input.b, var_3.x) % vec3<u32>(32u)), vec3<i32>(-66055i, -1i, global2.b) | var_2.c.zxw) ^ var_2.b.a.a.d, firstLeadingBit(u_input.c << (4294967295u % 32u))), vec2<i32>(firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_i32(var_2.c.zy, var_2.c.yy))), 28405i), countOneBits(var_2.c.x), 1i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_2.c.zyw, var_2.c.xzx), -vec3<i32>(var_2.b.a.a.d, global2.b, 1830i)), abs(select(var_2.c.zzy, vec3<i32>(40299i, -53573i, var_2.a.a.a.d), var_1.yxx))));
}

