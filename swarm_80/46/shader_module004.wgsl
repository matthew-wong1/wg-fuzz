struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_4(Struct_1(vec2<u32>(33269u, 4294967295u))), Struct_4(Struct_1(vec2<u32>(0u, 0u))), Struct_4(Struct_1(vec2<u32>(68930u, 83243u))), Struct_4(Struct_1(vec2<u32>(4294967295u, 2754u))), Struct_4(Struct_1(vec2<u32>(64585u, 0u))), Struct_4(Struct_1(vec2<u32>(40944u, 1u))), Struct_4(Struct_1(vec2<u32>(20621u, 0u))), Struct_4(Struct_1(vec2<u32>(4294967295u, 7896u))), Struct_4(Struct_1(vec2<u32>(45440u, 11481u))), Struct_4(Struct_1(vec2<u32>(44480u, 62444u))), Struct_4(Struct_1(vec2<u32>(18439u, 4294967295u))), Struct_4(Struct_1(vec2<u32>(3622u, 0u))), Struct_4(Struct_1(vec2<u32>(50732u, 59565u))), Struct_4(Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_4(Struct_1(vec2<u32>(0u, 0u))), Struct_4(Struct_1(vec2<u32>(33035u, 0u))), Struct_4(Struct_1(vec2<u32>(14135u, 1u))), Struct_4(Struct_1(vec2<u32>(28137u, 45053u))), Struct_4(Struct_1(vec2<u32>(38315u, 7481u))), Struct_4(Struct_1(vec2<u32>(40590u, 4294967295u))), Struct_4(Struct_1(vec2<u32>(4294967295u, 12591u))), Struct_4(Struct_1(vec2<u32>(0u, 3930u))), Struct_4(Struct_1(vec2<u32>(4294967295u, 29010u))), Struct_4(Struct_1(vec2<u32>(42392u, 1u))), Struct_4(Struct_1(vec2<u32>(1909u, 1u))), Struct_4(Struct_1(vec2<u32>(19055u, 12324u))), Struct_4(Struct_1(vec2<u32>(29307u, 0u))), Struct_4(Struct_1(vec2<u32>(11086u, 20800u))), Struct_4(Struct_1(vec2<u32>(28803u, 64181u))));

var<private> global1: vec4<bool>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = u_input.c;
    var var_1 = !select(!(!select(vec4<bool>(false, global1.x, true, true), vec4<bool>(true, true, false, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x))), vec4<bool>(any(vec2<bool>(true, true)), true, true, false), vec4<bool>((u_input.d >> (var_0 % 32u)) < (u_input.d & 12590i), !(!global1.x), true, true));
    global2 = _wgslsmith_mult_i32(u_input.a.x, 1i);
    global1 = vec4<bool>(!(!(true && global1.x)), global1.x, all(select(vec4<bool>(true, true, global1.x, true), select(vec4<bool>(var_1.x, false, true, true), select(vec4<bool>(false, var_1.x, var_1.x, global1.x), vec4<bool>(false, global1.x, true, false), true), vec4<bool>(global1.x, true, false, false)), vec4<bool>(false, any(var_1.zz), true, true))), all(vec2<bool>(u_input.c >= _wgslsmith_dot_vec2_u32(vec2<u32>(40509u, 33295u), vec2<u32>(0u, 0u)), true)));
    global3 = array<Struct_3, 12>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -1615f)))));
}

fn func_2(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1071f + -376f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1282f * -1070f), _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1151f) + _wgslsmith_f_op_f32(1127f - 105f)), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(262f)) - -1353f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-755f, -1454f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 589f));
    let var_1 = Struct_4(Struct_1(vec2<u32>(u_input.c, u_input.c)));
    let var_2 = !(!(!select(vec2<bool>(false, true), global1.xz, !arg_0)));
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -601f));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_3 {
    global2 = -2147483647i;
    let var_0 = any(vec2<bool>(false, any(global1.ywx)));
    var var_1 = vec2<bool>(true, true);
    let var_2 = ((_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(arg_1, -1i, u_input.a.x)) == arg_1) || global1.x) | var_1.x;
    return Struct_3(_wgslsmith_mult_i32(countOneBits(arg_1), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.e >> (vec3<u32>(u_input.c, 1u, 25486u) % vec3<u32>(32u)), vec3<i32>(arg_1, 24466i, u_input.d) << (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))), -vec3<i32>(2147483647i, 2147483647i, u_input.b) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(5327u, 1u, u_input.c)) % vec3<u32>(32u)))), Struct_2(var_2), var_1.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = select(select(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1u, u_input.c))), min(reverseBits(1u), countOneBits(u_input.c)), ~u_input.c), vec3<u32>(u_input.c, reverseBits(abs(u_input.c)), 0u), global1.wyx), vec3<u32>(u_input.c, ~(~(0u ^ u_input.c)), ~(~min(14077u, 0u))), select(vec3<bool>(!any(vec3<bool>(false, arg_1.c, false)), (arg_1.a > arg_1.a) | true, true), vec3<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_1.b.a, true, false, arg_1.c), vec4<bool>(true, false, global1.x, arg_0.a))), u_input.a.x <= (arg_2.a & arg_1.a), !arg_0.a), !(!select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, arg_2.c, arg_2.b.a), vec3<bool>(false, true, arg_1.b.a)))));
    let var_1 = u_input.c;
    let var_2 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(true, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-521f - 160f)) + -437f))), arg_2.a).b;
    let var_3 = arg_1.b.a;
    let var_4 = Struct_3(arg_2.a, func_4(_wgslsmith_f_op_f32(trunc(1239f)), ~(~firstLeadingBit(1i))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1079f, _wgslsmith_f_op_f32(765f - -983f)))) <= _wgslsmith_f_op_f32(floor(983f)));
    return Struct_1(var_0.zy);
}

fn func_1() -> u32 {
    let var_0 = func_5(Struct_2(global1.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_div_u32(u_input.c, 32569u)), _wgslsmith_add_u32(u_input.c, countOneBits(53381u))), _wgslsmith_mult_u32(min(~u_input.c, ~56292u), u_input.c)), 12u)], func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(all(global1.zx), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 25579u), vec4<u32>(u_input.c, 20980u, u_input.c, u_input.c)))), 1f)), -12784i));
    global3 = array<Struct_3, 12>();
    global0 = array<Struct_4, 30>();
    global3 = array<Struct_3, 12>();
    let var_1 = -1990f;
    return ~_wgslsmith_clamp_u32(133916u, var_0.a.x, 758u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), _wgslsmith_f_op_f32(1000f + -403f), true))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f)))));
    let var_1 = 0i;
    let var_2 = func_1();
    let var_3 = ~max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, var_1, var_1, var_1) ^ ~vec4<i32>(1i, var_1, 0i, var_1), ~vec4<i32>(49059i, u_input.b, var_1, 1i) ^ vec4<i32>(var_1, u_input.e.x, 0i, var_1), _wgslsmith_div_vec4_i32(vec4<i32>(-51760i, var_1, 0i, var_1), vec4<i32>(u_input.e.x, 43999i, var_1, 8605i))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1, var_1, u_input.a.x), vec4<i32>(-65589i, 63709i, -1888i, -1i)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, var_1, u_input.a.x, 2147483647i), vec4<i32>(-18923i, u_input.d, 2740i, 1i)), firstLeadingBit(vec4<i32>(1i, var_1, -2147483647i, -53286i)) | select(vec4<i32>(1i, 49476i, 30523i, -35605i), vec4<i32>(var_1, -23799i, -1i, 1i), true)));
    var var_4 = Struct_3(-13210i, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1503f, 165f)) + -208f)), 0i).b, true);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -3579f);
    var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(countOneBits(u_input.c)), 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.e ^ firstLeadingBit(u_input.e)), vec4<i32>(var_3.x, var_1, _wgslsmith_mod_i32(min(u_input.e.x, -1i) << ((var_2 | 1u) % 32u), -_wgslsmith_mod_i32(21845i, u_input.b)), 1i << (func_1() % 32u)));
}

