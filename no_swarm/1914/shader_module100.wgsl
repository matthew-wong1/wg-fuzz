struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: i32) -> bool {
    global0 = vec2<bool>(true, false);
    global0 = !select(select(!arg_0.a.d.yz, !arg_0.a.d.zz, false), select(vec2<bool>(global0.x, true), select(!arg_0.a.d.zw, arg_0.a.d.xz, 670f == arg_1.x), arg_0.a.d.x || false), !(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) > -204f));
    global0 = select(vec2<bool>(arg_2.x != 1209u, any(select(vec2<bool>(true, arg_0.a.a), !arg_0.a.d.yw, true))), !arg_0.a.d.yz, vec2<bool>(all(arg_0.a.d), arg_0.a.d.x));
    global0 = vec2<bool>(global0.x, any(!select(vec4<bool>(global0.x, false, arg_0.a.d.x, false), vec4<bool>(true, arg_0.a.a, false, true), global0.x)));
    var var_0 = vec3<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -919f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -628f), _wgslsmith_f_op_f32(min(563f, arg_1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x);
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(all(select(vec3<bool>(func_3(Struct_3(Struct_1(global0.x, u_input.c, vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(false, true, true, global0.x), arg_3.x)), vec4<f32>(arg_0.x, 1933f, -702f, arg_0.x), arg_2, 1418i), global0.x, global0.x || false), !(!vec3<bool>(true, global0.x, global0.x)), true)), ~(~vec2<u32>(~u_input.c.x, u_input.a)), firstLeadingBit((vec4<u32>(47877u, 1u, u_input.a, 0u) << (vec4<u32>(arg_2.x, 0u, 1764u, 1u) % vec4<u32>(32u))) >> (~arg_2 % vec4<u32>(32u))), select(!(!(!vec4<bool>(false, global0.x, global0.x, global0.x))), !vec4<bool>(true, !global0.x, false, all(vec3<bool>(global0.x, true, true))), true & global0.x), 0i);
    var var_1 = firstLeadingBit(countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 4294967295u, ~60383u, ~4294967295u)) ^ _wgslsmith_mod_vec4_u32(~arg_2 ^ _wgslsmith_div_vec4_u32(arg_2, arg_2), min(select(var_0.c, vec4<u32>(u_input.c.x, var_0.c.x, arg_2.x, u_input.c.x), true), abs(var_0.c))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -381f)) == arg_0.x, u_input.c, vec4<u32>(~firstLeadingBit(var_0.c.x), ~arg_2.x, u_input.a, 0u), var_0.d, var_0.e);
    var_1 = arg_2;
    var var_2 = Struct_3(Struct_1(var_0.d.x, _wgslsmith_div_vec2_u32(u_input.c, var_0.c.xz), ~(~(vec4<u32>(4294967295u, 0u, 4294967295u, 40951u) << (var_0.c % vec4<u32>(32u)))), vec4<bool>(true, true, var_0.a, func_3(Struct_3(Struct_1(false, var_1.yy, arg_2, var_0.d, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0.x, arg_0.x, -1000f)), vec4<u32>(0u, 1u, var_1.x, 14814u), ~arg_3.x)), 2147483647i));
    return Struct_1(false, _wgslsmith_add_vec2_u32(max(_wgslsmith_add_vec2_u32(arg_2.xw ^ vec2<u32>(var_1.x, 4681u), _wgslsmith_mult_vec2_u32(vec2<u32>(26429u, u_input.a), arg_2.wz)), vec2<u32>(u_input.c.x, 4294967295u)), ~vec2<u32>(~arg_2.x, var_2.a.c.x)), arg_2, var_2.a.d, var_2.a.e);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_2 {
    global0 = arg_1.a.d.yz;
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-135f - arg_0.x), arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, arg_0.x, 1380f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1097f, 155f)))))));
    var var_1 = Struct_2(Struct_1(true, arg_1.a.c.zw, select(~arg_1.a.c, _wgslsmith_div_vec4_u32(arg_1.a.c ^ vec4<u32>(1u, 0u, 51120u, u_input.c.x), ~arg_1.a.c), vec4<bool>(arg_1.a.a, true, true | arg_1.a.a, global0.x)), vec4<bool>(false, _wgslsmith_f_op_f32(ceil(-1424f)) >= _wgslsmith_f_op_f32(-1952f + 523f), false, !arg_1.a.a), i32(-1i) * -2147483647i), ~u_input.d.zy);
    var var_2 = arg_1.a;
    var_1 = Struct_2(func_2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(422f + 1136f)), -176f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0, vec3<f32>(-1861f, arg_0.x, arg_0.x)) * vec3<f32>(arg_0.x, -423f, _wgslsmith_f_op_f32(527f * var_0.x))), _wgslsmith_mod_vec4_u32(~select(arg_1.a.c, var_2.c, var_2.d), var_1.a.c), vec4<i32>(14273i, abs(u_input.b), max(u_input.b, min(u_input.d.x, u_input.b)), firstLeadingBit(min(-2147483647i, arg_1.a.e)))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~var_1.b.x, 1i), -2147483647i), reverseBits(u_input.d.yy)));
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(-321f)), 484f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)), ~abs(firstLeadingBit(vec4<u32>(77138u, 0u, 13834u, var_1.a.c.x))), ~(vec4<i32>(-1i, 1i, 2147483647i, 42779i) & vec4<i32>(-1i, var_1.b.x, u_input.b, 0i))), ~(~u_input.d.yy << (vec2<u32>(reverseBits(1500u), _wgslsmith_mult_u32(u_input.c.x, var_1.a.b.x)) % vec2<u32>(32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2332f, 322f, 1328f)), vec3<f32>(-1154f, -1168f, 328f))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = arg_1.b.x;
    var var_3 = Struct_3(arg_1.a);
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(abs(-1000f)))))), Struct_3(Struct_1((u_input.c.x | 7261u) < abs(arg_1.a.c.x), vec2<u32>(arg_0.x, 29232u), var_3.a.c, select(var_3.a.d, arg_1.a.d, vec4<bool>(false, true, true, arg_1.a.a)), -(var_2 >> (var_3.a.c.x % 32u))))).a;
    return Struct_3(func_4(vec2<f32>(467f, 359f), Struct_3(Struct_1(func_2(vec3<f32>(var_1, var_1, var_1), var_0, vec4<u32>(4294967295u, arg_0.x, var_3.a.c.x, 4294967295u), vec4<i32>(-10792i, var_4.e, u_input.d.x, arg_1.b.x)).a, _wgslsmith_mult_vec2_u32(arg_0, vec2<u32>(arg_0.x, 671u)), ~var_4.c, func_4(var_0.xz, Struct_3(var_3.a)).a.d, ~(-9920i)))).a);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>) -> i32 {
    global0 = vec2<bool>(!(arg_0.x & any(!vec4<bool>(arg_0.x, true, false, arg_0.x))), false);
    let var_0 = func_5(~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a >> (u_input.c.x % 32u)), abs(4294967295u)), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-759f, -506f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(242f, 1158f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3081f, 674f)), vec2<f32>(-777f, -739f))), Struct_3(func_2(vec3<f32>(944f, -318f, 1924f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -729f, -362f)), vec4<u32>(40970u, arg_1.x, 8229u, u_input.c.x) << (vec4<u32>(arg_1.x, arg_1.x, 0u, u_input.c.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.d.x, u_input.d.x, 0i, 8984i)))));
    let var_1 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(u_input.c.x, 1u), 1u), u_input.c);
    global0 = vec2<bool>(any(vec3<bool>(any(vec2<bool>(true, global0.x)), global0.x | arg_0.x, true)), !(1011f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(354f, 569f, false)) + _wgslsmith_f_op_f32(min(-547f, 346f)))));
    return ~(i32(-1i) * -var_0.a.e);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, global0.x));
    global0 = vec2<bool>(!global0.x, func_6(Struct_3(Struct_1(!global0.x, vec2<u32>(u_input.c.x, u_input.c.x), ~vec4<u32>(24754u, 49837u, 4294967295u, u_input.c.x), !vec4<bool>(true, var_0.x, true, false), func_1(vec3<bool>(true, false, var_0.x), vec3<u32>(4294967295u, u_input.a, u_input.c.x)))), vec4<i32>(2147483647i, func_1(!vec3<bool>(true, global0.x, var_0.x), ~vec3<u32>(63239u, 4294967295u, 58822u)), 1i, u_input.b & 1i), _wgslsmith_sub_u32(u_input.c.x, 0u), false));
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-710f, 417f, 581f, 1306f), vec4<f32>(-923f, -588f, 492f, 644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(815f, 1000f, -1000f, 503f) + vec4<f32>(-250f, -970f, -2051f, 343f)))))));
    global0 = !vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1944f) + _wgslsmith_div_f32(var_1.x, var_1.x)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-335f + 828f), -882f)));
    global0 = !var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.wx) - vec2<f32>(-687f, var_1.x));
    let var_3 = ~(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_vec3_f32(min(var_1.wwz, vec3<f32>(var_2.x, 844f, 451f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1246f, var_2.x) + vec3<f32>(-538f, 1066f, 1000f)), ~vec4<u32>(var_3, 1u, 5295u, var_3), _wgslsmith_sub_vec4_i32(vec4<i32>(46672i, u_input.b, 1i, -1i), vec4<i32>(-1i, -16153i, u_input.d.x, u_input.b))).c.wx | u_input.c, ~(~vec2<u32>(31399u, u_input.c.x) | func_2(vec3<f32>(-1000f, var_2.x, -939f), vec3<f32>(582f, var_1.x, var_2.x), vec4<u32>(var_3, var_3, u_input.a, var_3), vec4<i32>(u_input.d.x, -24232i, 0i, u_input.b)).b)));
}

