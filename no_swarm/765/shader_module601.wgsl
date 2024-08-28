struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: Struct_1 = Struct_1(1185f, 1u, vec4<f32>(-732f, 540f, 707f, 563f), i32(-2147483648));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(62536u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = global1.c.yx;
    var var_1 = true;
    global0 = array<Struct_2, 31>();
    var var_2 = ~(~vec2<u32>(1916u, ~(~global1.b)));
    global1 = Struct_1(global1.a, _wgslsmith_div_u32(~20702u, ~(~(~global2.a.x))), _wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(_wgslsmith_f_op_f32(1242f * _wgslsmith_f_op_f32(1002f - 1027f)), var_0.x, -472f, var_0.x)), ~62123i);
    return _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1558f, global1.c.x)), _wgslsmith_div_f32(global1.a, 1000f), all(vec2<bool>(false, true)))))), !((false != any(vec3<bool>(true, true, false))) | (~1i >= firstTrailingBit(-14523i)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(global1.a, 34490u, vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f * 644f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1908f, -1519f))) - _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(func_3())), firstLeadingBit(u_input.d << (_wgslsmith_add_u32(1u, ~u_input.a.x) % 32u)));
    global0 = array<Struct_2, 31>();
    let var_1 = true;
    global1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, global1.c.x), vec2<f32>(global1.a, 132f), vec2<bool>(var_1, false)))) - _wgslsmith_f_op_vec2_f32(ceil(global1.c.xx))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.c.yw, global1.c.wx)), vec2<f32>(global1.c.x, _wgslsmith_f_op_f32(exp2(var_0.c.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c.yz + global1.c.xw) * _wgslsmith_f_op_vec2_f32(var_0.c.zw - var_0.c.yy)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(var_0.c.zz, vec2<f32>(global1.c.x, 2253f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a + -128f), 1000f)))), !select(vec2<bool>(false, u_input.a.x <= global1.b), !select(vec2<bool>(true, true), vec2<bool>(var_1, false), var_1), vec2<bool>(var_1, true))));
    return -vec3<i32>(reverseBits(-37285i), 47489i, -939i);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x - 442f) + -785f) * _wgslsmith_f_op_f32(f32(-1f) * -1455f))), ~global2.a.x, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a, global1.c.x), global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a)))), _wgslsmith_f_op_f32(-global1.a), global1.c.x), u_input.d);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) - _wgslsmith_f_op_f32(trunc(global1.c.x))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.c))), vec4<bool>(global2.a.x < 33475u, true, any(vec4<bool>(arg_1, arg_0, false, arg_1)), true)))), -min(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.d, 12646i, -1i), vec4<i32>(-1i, -1787i, 6227i, u_input.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, global1.d, global1.d, u_input.d), vec4<i32>(-1i, u_input.d, -6101i, u_input.d))) ^ _wgslsmith_dot_vec3_i32(func_2(), -(~vec3<i32>(0i, u_input.d, -33627i))));
    let var_1 = arg_2;
    global2 = var_1;
    var var_2 = -vec4<i32>(0i, 11231i, -1i, func_2().x);
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), firstLeadingBit(_wgslsmith_mod_u32(countOneBits(var_0.b), _wgslsmith_mult_u32(var_1.a.x, var_0.b)) & _wgslsmith_clamp_u32(var_1.a.x, 4294967295u, ~0u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -517f, 950f, 283f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(711f, global1.a) * _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1.c.x)), global1.a)), 347f, _wgslsmith_f_op_f32(f32(-1f) * -875f))), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global1.d, var_2.x | var_0.d, ~var_2.x, min(global1.d, 2147483647i))), firstLeadingBit(max(vec4<i32>(global1.d, u_input.d, 1i, var_2.x), vec4<i32>(-15840i, u_input.d, global1.d, u_input.d)) << (~vec4<u32>(0u, u_input.a.x, 1u, global2.a.x) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_4) -> Struct_3 {
    var var_0 = vec2<bool>(false, any(vec4<bool>(true, true, true, true)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-arg_2.c.x), 4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(181f, -1680f)), _wgslsmith_f_op_f32(arg_2.c.x - -892f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -376f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1487f) * _wgslsmith_f_op_f32(func_3())))), func_1(true, var_0.x, Struct_2(vec2<u32>(36944u, func_1(var_0.x, var_0.x, global0[_wgslsmith_index_u32(13679u, 31u)]).b))).d);
    let var_1 = global1.c.yw;
    global0 = array<Struct_2, 31>();
    var var_2 = arg_3.c;
    return Struct_3(~vec2<u32>(u_input.b, ~min(79279u, 4294967295u)));
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(vec2<u32>(firstLeadingBit(arg_0.a.x), _wgslsmith_dot_vec2_u32(abs(abs(arg_0.a)), vec2<u32>(arg_0.a.x, _wgslsmith_add_u32(0u, global1.b)))));
    global2 = Struct_2(firstLeadingBit(arg_0.a));
    global2 = var_0;
    global2 = global0[_wgslsmith_index_u32(min(var_0.a.x, 4294967295u), 31u)];
    global2 = var_0;
    return ~((arg_0.a.x | (_wgslsmith_dot_vec2_u32(global2.a, vec2<u32>(38169u, 1u)) << (func_1(true, true, Struct_2(arg_0.a)).b % 32u))) ^ 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-_wgslsmith_add_i32(firstLeadingBit(1i), ~(-u_input.d)), Struct_2(~min(~vec2<u32>(u_input.c.x, global2.a.x), vec2<u32>(global1.b, 1u))), global0[_wgslsmith_index_u32(min(global1.b, 1u), 31u)], vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.c.zy, _wgslsmith_div_vec2_u32(~vec2<u32>(global2.a.x, 1u), countOneBits(vec2<u32>(34877u, 4294967295u))))));
    global1 = Struct_1(global1.c.x, func_5(func_4(Struct_1(_wgslsmith_f_op_f32(-global1.c.x), ~u_input.b, _wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(778f, -897f, global1.a, global1.a)), var_0.a), -(~global1.d), func_1(false, all(vec3<bool>(true, true, true)), Struct_2(global2.a)), Struct_4(reverseBits(2147483647i), global0[_wgslsmith_index_u32(1u, 31u)], Struct_2(vec2<u32>(25095u, global1.b)), ~global2.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, 745f, global1.c.x, 387f)), _wgslsmith_f_op_vec4_f32(min(global1.c, global1.c)))), vec4<f32>(1f, _wgslsmith_f_op_f32(-global1.c.x), 738f, global1.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global1.c, global1.c))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global1.c))))), ~var_0.a);
    let var_1 = Struct_3(u_input.c.yz);
    let var_2 = Struct_2(~var_0.c.a >> (vec2<u32>(19134u, 0u) % vec2<u32>(32u)));
    global0 = array<Struct_2, 31>();
    let var_3 = Struct_3(abs(vec2<u32>(10541u, 0u << (~u_input.b % 32u))));
    let var_4 = func_4(func_1(select(true, u_input.c.x != abs(var_1.a.x), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false))), !select(true, true, all(vec2<bool>(true, false))), var_2), 0i, Struct_1(-1194f, 15663u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), 386f, 146f, global1.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -1087f, global1.a, global1.a)))), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.d, -64894i), global1.d), -8200i)), Struct_4(1i, var_0.b, var_0.c, vec2<u32>(_wgslsmith_clamp_u32(var_2.a.x, 25558u, 56022u), 1u) << (vec2<u32>(_wgslsmith_clamp_u32(var_3.a.x, u_input.b, var_2.a.x), firstTrailingBit(var_1.a.x)) % vec2<u32>(32u))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - global1.c.x)))), ~(firstLeadingBit(global1.b) | func_4(func_1(true, true, global0[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_clamp_i32(-1i, var_0.a, u_input.d), Struct_1(global1.c.x, 4294967295u, global1.c, var_0.a), Struct_4(global1.d, Struct_2(var_0.c.a), Struct_2(var_1.a), u_input.c.yx)).a.x), func_1(any(vec2<bool>(true, true)) || any(vec4<bool>(false, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), var_2).c, 1i);
    let var_5 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(abs(select(var_0.a, -2966i, false)), u_input.d), ~func_2().xx);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~_wgslsmith_add_u32(42415u, global2.a.x)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_4.a.x, 51667u, u_input.c.x), u_input.c), u_input.c & u_input.c), u_input.c >> (vec3<u32>(~var_0.c.a.x, ~var_1.a.x, 17215u) % vec3<u32>(32u))), _wgslsmith_div_f32(func_1(any(vec4<bool>(false, false, false, true)), true, Struct_2(~vec2<u32>(1u, u_input.b))).a, _wgslsmith_f_op_f32(-global1.c.x)), vec4<i32>(19119i, max(u_input.d, 0i), _wgslsmith_add_i32(-1i, -u_input.d ^ var_5.x), -2147483647i | select(1i, -37632i, any(vec4<bool>(true, true, false, false)))));
}

