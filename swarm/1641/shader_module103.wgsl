struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: vec3<i32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1u, i32(-2147483648), -1010f);

var<private> global1: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec3<bool>(false, false, false), i32(-2147483648), Struct_1(-718f, vec2<bool>(true, false), 25553u, -1002f, 44376u)), Struct_4(vec3<bool>(true, true, true), i32(-2147483648), Struct_1(-417f, vec2<bool>(true, false), 933u, -209f, 21588u)), Struct_4(vec3<bool>(true, false, true), i32(-2147483648), Struct_1(-967f, vec2<bool>(true, false), 4294967295u, 1370f, 89678u)), Struct_4(vec3<bool>(false, false, false), 2147483647i, Struct_1(1479f, vec2<bool>(true, false), 1u, 139f, 30765u)), Struct_4(vec3<bool>(false, true, false), 1i, Struct_1(314f, vec2<bool>(true, true), 0u, -287f, 0u)), Struct_4(vec3<bool>(false, false, true), -1i, Struct_1(-712f, vec2<bool>(true, true), 4294967295u, -791f, 0u)), Struct_4(vec3<bool>(true, false, false), 1876i, Struct_1(-514f, vec2<bool>(true, true), 74834u, 1000f, 4294967295u)), Struct_4(vec3<bool>(true, true, false), -47606i, Struct_1(1890f, vec2<bool>(false, false), 1u, 470f, 0u)), Struct_4(vec3<bool>(true, true, true), 18669i, Struct_1(-168f, vec2<bool>(false, false), 7640u, 329f, 18719u)), Struct_4(vec3<bool>(true, true, true), -50155i, Struct_1(3241f, vec2<bool>(false, true), 3876u, 1132f, 1u)), Struct_4(vec3<bool>(false, true, true), 31710i, Struct_1(1000f, vec2<bool>(true, true), 29120u, 819f, 1u)), Struct_4(vec3<bool>(true, true, false), i32(-2147483648), Struct_1(-266f, vec2<bool>(false, false), 4294967295u, -934f, 38478u)), Struct_4(vec3<bool>(true, true, true), 1i, Struct_1(-379f, vec2<bool>(true, false), 4294967295u, -152f, 4294967295u)), Struct_4(vec3<bool>(true, true, true), -11807i, Struct_1(-1465f, vec2<bool>(true, false), 133843u, 1378f, 0u)), Struct_4(vec3<bool>(false, true, true), -72691i, Struct_1(-1000f, vec2<bool>(false, false), 32783u, -776f, 35582u)), Struct_4(vec3<bool>(true, false, true), 44775i, Struct_1(1034f, vec2<bool>(false, false), 17757u, -210f, 4294967295u)));

var<private> global2: Struct_4 = Struct_4(vec3<bool>(true, true, true), 2147483647i, Struct_1(547f, vec2<bool>(true, true), 4294967295u, 579f, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec3<u32> {
    global2 = Struct_4(!arg_1.zyz, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~9346i, ~global0.b), -select(vec2<i32>(global0.b, u_input.c.x), u_input.c, arg_0.c)), -6033i), arg_0.a);
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~global0.a, arg_2.x, 4294967295u, 0u ^ arg_0.a.e) >> (max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.a, 1u, 15973u, 29836u), vec4<u32>(arg_2.x, 0u, arg_0.b.a, 4294967295u)), arg_2) % vec4<u32>(32u)), firstLeadingBit(max(u_input.b, countOneBits(arg_2)))) >> (u_input.b % vec4<u32>(32u));
    global0 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.b.wyx, arg_2.xyz)), -19858i, global2.c.d);
    global1 = array<Struct_4, 16>();
    let var_1 = vec2<f32>(849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1514f)));
    return vec3<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(1u), select(1u, arg_0.b.a, false)), min(firstTrailingBit(22259u), _wgslsmith_dot_vec3_u32(vec3<u32>(25974u, global0.a, var_0.x), vec3<u32>(51709u, var_0.x, 1u))), _wgslsmith_mult_u32(1u, arg_2.x)), countOneBits(86657u) & arg_2.x) ^ _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.wyz, abs(~vec3<u32>(u_input.b.x, 15157u, arg_0.a.e))), ~((arg_2.wyx >> (vec3<u32>(global0.a, global0.a, 4294967295u) % vec3<u32>(32u))) | _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.a, global2.c.e, 0u), vec3<u32>(19360u, 50066u, 66419u))));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d.x;
    let var_1 = select(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(global2.c.c, global0.a, u_input.b.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(global0.a, global0.a, 4294967295u), abs(u_input.b.xzw))) ^ func_3(Struct_3(global2.c, Struct_2(1u, 1i, global0.c), global2.c.b.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c, -1741f), vec2<f32>(1015f, global0.c)))), vec4<bool>(global2.a.x, !global2.c.b.x, true, any(global2.a)), vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, 29859u), global2.c.e, global2.c.c)), _wgslsmith_add_vec3_u32(~(firstTrailingBit(u_input.b.ywy) ^ _wgslsmith_add_vec3_u32(u_input.b.yzz, vec3<u32>(11050u, 7530u, 0u))), u_input.b.zzw), -12558i != min(global0.b, _wgslsmith_mod_i32(-36654i, 18543i)));
    let var_2 = any(!(!(!global2.a.yy)));
    global1 = array<Struct_4, 16>();
    var var_3 = Struct_2(var_1.x, reverseBits((i32(-1i) * -1i) >> (firstTrailingBit(15589u) % 32u)), 1000f);
    return Struct_2(4294967295u, -1i, _wgslsmith_f_op_f32(-global0.c));
}

fn func_1() -> vec4<f32> {
    var var_0 = ~(~(reverseBits(u_input.b) ^ vec4<u32>(63462u, 1u, global2.c.c, u_input.a.x)) >> (u_input.b % vec4<u32>(32u)));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, -594f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(207f, global2.c.d), vec2<f32>(-391f, global2.c.d), vec2<bool>(true, true))), vec2<f32>(306f, global2.c.a)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-693f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_2.x)))))));
    var var_4 = Struct_5(global1[_wgslsmith_index_u32(select(~(~1u), _wgslsmith_add_u32(firstLeadingBit(global0.a), var_1.a), global2.a.x), 16u)], all(vec4<bool>(true, any(global2.a.zz), false, 4023i > ~global0.b)), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_add_vec2_i32(min(vec2<i32>(-90i, global2.b), u_input.d), u_input.d)), var_1.b), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.x, min(37981u, var_1.a), func_3(Struct_3(Struct_1(1000f, global2.a.xy, var_0.x, 1090f, 1u), Struct_2(0u, -27786i, -652f), global2.a.x, vec2<f32>(-2151f, global2.c.a)), vec4<bool>(true, global2.c.b.x, true, global2.a.x), u_input.b).x), u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wyy, var_0.yww), var_0.x, ~global0.a, var_1.a) << (abs(max(u_input.b, vec4<u32>(55878u, global0.a, var_1.a, 16310u))) % vec4<u32>(32u))), Struct_3(Struct_1(809f, global2.c.b, u_input.b.x, var_3, 4294967295u), Struct_2(~var_1.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))), true, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-global0.c), var_2.x)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2048f, _wgslsmith_f_op_f32(global2.c.a + global2.c.d), func_2().c, _wgslsmith_f_op_f32(floor(690f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1000f, -401f, 1000f))))))))) * vec4<f32>(var_4.e.a.a, var_1.c, _wgslsmith_div_f32(_wgslsmith_div_f32(global2.c.a, _wgslsmith_f_op_f32(round(-608f))), _wgslsmith_f_op_f32(-701f - _wgslsmith_f_op_f32(-663f * global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = vec3<bool>(arg_3.e.c, all(!(!vec4<bool>(true, global2.a.x, false, arg_3.e.a.b.x))), (arg_0.x == -909f) && select(all(vec2<bool>(arg_3.a.a.x, false)), arg_3.e.c || false, true));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(998f)), 595f))));
    var var_2 = arg_3.a.c;
    var var_3 = arg_3.e.a;
    let var_4 = Struct_1(827f, vec2<bool>(false, true), ~global2.c.c, _wgslsmith_f_op_f32(sign(2204f)), _wgslsmith_dot_vec3_u32(select(u_input.b.xyz, ~vec3<u32>(40520u, var_2.c, global2.c.e), var_2.b.x || true), func_3(Struct_3(global2.c, func_2(), all(var_2.b), vec2<f32>(-679f, arg_0.x)), vec4<bool>(!arg_3.a.c.b.x, any(vec4<bool>(true, true, false, true)), var_3.b.x, !var_0.x), arg_3.d)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(!select(global2.a, !global2.a, !any(vec4<bool>(false, true, global2.c.b.x, true))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(0i), 2147483647i, u_input.c.x), vec3<i32>(global2.b, global0.b >> (global0.a % 32u), global0.b | 6529i)), -1i), global2.c);
    var var_0 = 4294967295u;
    var_0 = u_input.b.x;
    let var_1 = Struct_2(countOneBits(~u_input.a.x), ~(min(select(33180i, global2.b, global2.a.x), _wgslsmith_clamp_i32(2147483647i, 2147483647i, u_input.c.x)) << ((~4294967295u ^ global2.c.c) % 32u)), global2.c.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.d) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c + -738f)))), var_1.c, global2.c.b.x)));
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(func_1()), -u_input.d << (vec2<u32>(countOneBits(global2.c.c), func_2().a) % vec2<u32>(32u)), u_input.b.xzx, Struct_5(Struct_4(select(vec3<bool>(false, global2.c.b.x, global2.a.x), global2.a, vec3<bool>(global2.a.x, false, global2.a.x)), max(select(1i, var_1.b, global2.a.x), i32(-1i) * -6401i), Struct_1(_wgslsmith_f_op_f32(var_1.c - -1260f), !vec2<bool>(global2.a.x, global2.c.b.x), global0.a, 505f, ~28713u)), true, ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(global2.b, -18592i, global0.b), vec3<i32>(0i, 0i, global2.b))), ~u_input.b, Struct_3(global2.c, Struct_2(global0.a, _wgslsmith_mod_i32(global0.b, u_input.c.x), 1412f), u_input.d.x == global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1392f, 176f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -1000f)))))));
    var var_4 = var_2;
    var_4 = _wgslsmith_f_op_f32(var_3.a.c.d * var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(var_1.b, -u_input.d.x), var_3.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.a.c.d), _wgslsmith_f_op_f32(-1404f + var_2)))), all(!(!vec4<bool>(false, false, global2.c.b.x, false))))), ~_wgslsmith_mod_vec2_i32(var_3.c.xy, vec2<i32>(-2147483647i, -1i)), vec3<i32>(u_input.c.x, ~_wgslsmith_clamp_i32(var_1.b, global2.b, 18065i) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(18617i, -2147483647i), var_3.c.zy), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, global0.c, 2370f, 1156f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, -1579f, -1553f, -1248f)))), u_input.c, vec3<u32>(u_input.b.x, global2.c.e, global0.a), func_4(vec4<f32>(var_3.e.b.c, -379f, var_1.c, global0.c), u_input.d, u_input.b.zxz >> (u_input.b.www % vec3<u32>(32u)), Struct_5(Struct_4(global2.a, 75025i, global2.c), false, var_3.c, vec4<u32>(0u, var_3.a.c.e, 0u, u_input.a.x), var_3.e))).c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(global2.b, global0.b, 0i, var_3.a.b) ^ vec4<i32>(-2147483647i, var_1.b, global2.b, 26342i)), ~(~countOneBits(vec4<i32>(-1616i, -12731i, 2147483647i, 15990i))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(80278i, -2147483647i), var_3.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(47002i, u_input.c.x), vec2<i32>(36521i, 0i) ^ var_3.c.yz), func_4(vec4<f32>(var_2, -1018f, global2.c.d, global0.c), vec2<i32>(global2.b, u_input.c.x), var_3.d.zzx, var_3).a.b >> (_wgslsmith_mod_u32(u_input.a.x, 16561u) % 32u), var_3.c.x)));
}

