struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(32851i, vec3<bool>(true, true, false), vec4<i32>(-21198i, 1i, -63849i, -6876i)), Struct_1(-19894i, vec3<bool>(true, true, true), vec4<i32>(-9521i, 0i, 0i, 1i)), Struct_1(29497i, vec3<bool>(true, true, false), vec4<i32>(-2130i, 45216i, -1i, -1i)), Struct_1(20721i, vec3<bool>(false, false, true), vec4<i32>(23821i, 1i, -1i, i32(-2147483648))), Struct_1(-19650i, vec3<bool>(true, false, true), vec4<i32>(-19176i, 0i, 2568i, i32(-2147483648))), Struct_1(-11730i, vec3<bool>(true, false, false), vec4<i32>(2147483647i, -12202i, -1i, 2147483647i)), Struct_1(2147483647i, vec3<bool>(false, true, false), vec4<i32>(-38611i, -24253i, 0i, 32582i)), Struct_1(1i, vec3<bool>(false, true, true), vec4<i32>(0i, 403i, 13493i, 6625i)), Struct_1(-1i, vec3<bool>(true, true, true), vec4<i32>(29903i, 5755i, -19374i, 0i)), Struct_1(23951i, vec3<bool>(true, true, true), vec4<i32>(-30063i, 0i, 1i, -15945i)), Struct_1(-26103i, vec3<bool>(false, false, true), vec4<i32>(30045i, 25120i, -16856i, 2147483647i)), Struct_1(1i, vec3<bool>(false, false, false), vec4<i32>(63709i, 16903i, -1i, 1i)), Struct_1(-1i, vec3<bool>(true, false, false), vec4<i32>(-6467i, 27311i, i32(-2147483648), 0i)), Struct_1(0i, vec3<bool>(true, true, true), vec4<i32>(70122i, i32(-2147483648), 1i, 44149i)), Struct_1(-3909i, vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 156i, 60372i, -16111i)));

var<private> global1: Struct_5;

var<private> global2: Struct_5 = Struct_5(Struct_2(true, -375f, -1087f, Struct_1(0i, vec3<bool>(false, true, true), vec4<i32>(0i, 4624i, i32(-2147483648), -25217i))), vec4<i32>(21703i, 0i, 11306i, i32(-2147483648)), 0u, Struct_3(vec2<i32>(30123i, i32(-2147483648)), Struct_2(true, 183f, -940f, Struct_1(1i, vec3<bool>(false, true, true), vec4<i32>(-6435i, -10410i, -9597i, 2147483647i))), Struct_2(true, -945f, -1147f, Struct_1(-62544i, vec3<bool>(false, true, false), vec4<i32>(-1i, 45850i, -17619i, -19239i))), Struct_1(-1i, vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 2147483647i, -46226i, 0i))));

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    global2 = Struct_5(Struct_2(!(!(270f <= arg_0.a.c)), global2.a.b, _wgslsmith_f_op_f32(round(global1.d.b.b)), Struct_1(countOneBits(47671i) ^ _wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(arg_0.a.d.a, global2.a.d.a, 14952i, 1i)), vec3<bool>(arg_0.a.d.c.x <= -1i, any(vec2<bool>(arg_0.d.d.b.x, arg_0.c.x)), !arg_2), vec4<i32>(_wgslsmith_mult_i32(-1i, arg_0.a.d.c.x), i32(-1i) * -14662i, 9819i, 0i))), global1.b, 32251u, Struct_3(vec2<i32>(global2.b.x & -global1.a.d.a, ~(~u_input.b.x)), global1.a, global1.d.c, global2.d.d));
    global2 = Struct_5(arg_0.a, _wgslsmith_mod_vec4_i32(max(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.d.a, arg_0.a.d.a, u_input.b.x, arg_0.a.d.c.x), vec4<i32>(global2.a.d.c.x, u_input.b.x, arg_0.a.d.a, -2147483647i)), -vec4<i32>(arg_0.a.d.a, 2147483647i, arg_0.a.d.a, global1.d.c.d.a)), ~vec4<i32>(0i >> (arg_0.b.x % 32u), global2.d.d.a, -global2.d.a.x, -2147483647i)), arg_0.b.x, global2.d);
    let var_0 = arg_3.xyw;
    global1 = Struct_5(global1.a, vec4<i32>(u_input.b.x, arg_0.d.d.c.x, reverseBits(-30512i), u_input.b.x), arg_0.b.x, global2.d);
    var var_1 = Struct_2(select(-2147483647i < global2.b.x, all(!select(vec3<bool>(false, false, global2.d.c.a), vec3<bool>(false, false, global1.d.c.a), true)), all(arg_0.a.d.b.yy)), arg_1, _wgslsmith_f_op_f32(605f * -1315f), Struct_1(_wgslsmith_dot_vec4_i32(select(arg_0.d.d.c, vec4<i32>(0i, -62076i, u_input.b.x, 45083i) | arg_0.a.d.c, !vec4<bool>(true, global2.a.d.b.x, true, arg_0.d.a)), global2.b), select(!select(global2.a.d.b, global2.a.d.b, vec3<bool>(global1.a.a, global1.d.c.a, global1.d.b.d.b.x)), global1.d.d.b, true), vec4<i32>(1i, u_input.b.x, global1.d.d.c.x | -24128i, -13231i) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.b.x, 4294967295u, 0u), vec4<u32>(global1.c, 28131u, 4294967295u, u_input.a.x))) % vec4<u32>(32u))));
    return arg_0.a.d.a;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> vec4<i32> {
    global0 = array<Struct_1, 15>();
    var var_0 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-10732i, func_3(Struct_4(global1.d.b, vec4<u32>(165u, arg_2, 4294967295u, global2.c), vec2<bool>(global1.d.c.d.b.x, false), global1.a), -299f, true, vec4<u32>(0u, 0u, 4294967295u, 1u)), ~u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -27710i, 17553i), _wgslsmith_mult_vec3_i32(global1.a.d.c.xyy, global2.b.wyx))), -(~min(global1.b.zyw, vec3<i32>(global2.b.x, 45821i, 31496i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.c.c) * 900f)), global1.d.b.c));
    let var_2 = global1.a.b;
    global3 = 33856i;
    return vec4<i32>(-_wgslsmith_mult_i32(abs(-global1.a.d.a), _wgslsmith_mult_i32(~1i, 22899i)), u_input.b.x, i32(-1i) * -2147483647i, -global2.d.d.a);
}

fn func_1(arg_0: vec3<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(func_2(global2.c, vec4<bool>(true, false, global1.d.b.a, global2.d.d.b.x), 0u), vec4<i32>(global2.b.x, 2147483647i, 1i, 0i)), func_2(0u, vec4<bool>(arg_0.x, true, arg_0.x, global2.a.a), 12143u))), ~vec4<i32>(_wgslsmith_div_i32(~global2.a.d.c.x, 0i), u_input.b.x, firstTrailingBit(~global1.a.d.a), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-81269i, -12813i, global1.b.x), u_input.b.x, 1i)));
    let var_1 = ~global1.c;
    var var_2 = Struct_2(false, -2268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1357f, global2.d.b.c))), Struct_1(min(abs(~global2.b.x), abs(global2.a.d.a)), !select(select(global2.d.d.b, vec3<bool>(true, global2.a.a, global1.d.b.d.b.x), global2.a.d.b), global2.a.d.b, all(vec4<bool>(false, false, global2.a.a, arg_0.x))), -(vec4<i32>(-1i) * -vec4<i32>(global1.a.d.a, global2.d.d.c.x, 4191i, 13133i))));
    let var_3 = i32(-1i) * -firstTrailingBit(~_wgslsmith_add_i32(0i, u_input.b.x));
    var var_4 = Struct_3(~firstLeadingBit(u_input.b.zz), Struct_2((global1.a.d.c.x >= (i32(-1i) * -7832i)) & true, 252f, _wgslsmith_div_f32(858f, 1451f), var_2.d), global1.d.c, Struct_1(_wgslsmith_mult_i32(abs(-global2.d.c.d.a), countOneBits(48337i)), !global2.d.d.b, firstTrailingBit(select(~vec4<i32>(-1i, var_2.d.c.x, 4032i, global1.a.d.a), vec4<i32>(var_2.d.a, global2.d.d.c.x, u_input.b.x, global1.a.d.c.x) >> (vec4<u32>(0u, global2.c, var_1, 18857u) % vec4<u32>(32u)), select(vec4<bool>(true, false, var_2.a, false), vec4<bool>(arg_0.x, true, arg_0.x, global1.a.a), vec4<bool>(true, true, global2.a.d.b.x, global2.a.a))))));
    return Struct_5(var_4.b, -((global2.a.d.c << (abs(vec4<u32>(856u, global2.c, 4294967295u, var_1)) % vec4<u32>(32u))) << (vec4<u32>(global2.c & var_1, ~31696u, firstTrailingBit(global1.c), abs(39040u)) % vec4<u32>(32u))), u_input.a.x, global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec3<bool>(global2.a.a, true, global1.d.d.b.x));
    let var_0 = global2.d;
    let var_1 = select(!vec4<bool>(var_0.c.d.b.x, global1.a.d.b.x, any(vec4<bool>(global2.d.b.a, false, true, global2.a.a)) && func_1(global1.d.d.b).d.b.a, true), vec4<bool>(all(!(!vec3<bool>(var_0.c.a, true, global1.a.d.b.x))), false, var_0.b.a, func_1(!var_0.b.d.b).a.d.b.x), vec4<bool>(any(select(vec4<bool>(true, global2.d.c.a, global1.a.a, var_0.b.d.b.x), vec4<bool>(false, true, false, var_0.d.b.x), var_0.d.b.x)) && all(func_1(vec3<bool>(true, global1.d.b.a, false)).d.c.d.b), false, false, var_0.b.a));
    var var_2 = vec2<i32>(_wgslsmith_div_i32(global1.b.x, var_0.d.a), _wgslsmith_add_i32(-2308i, global2.a.d.c.x));
    var_2 = firstTrailingBit(global2.a.d.c.zw);
    var var_3 = global2.a.b;
    var var_4 = Struct_3(-vec2<i32>(2147483647i, 1i), func_1(global2.d.c.d.b).a, global2.d.b, Struct_1(var_0.c.d.c.x, !global2.d.c.d.b, ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(4482i, var_0.a.x, -2147483647i, u_input.b.x), vec4<i32>(global2.b.x, -13717i, -2147483647i, 0i), vec4<bool>(global2.d.d.b.x, global1.a.a, false, var_1.x)), -vec4<i32>(-16203i, u_input.b.x, -1i, u_input.b.x))));
    var var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.c, u_input.b, vec3<u32>(~global2.c, ~_wgslsmith_mult_u32(global1.c, u_input.a.x) & global2.c, ~12541u), _wgslsmith_div_i32(func_1(select(vec3<bool>(true, false, var_5.d.b.x), select(var_0.d.b, vec3<bool>(var_5.a, true, global1.a.d.b.x), vec3<bool>(false, global1.a.a, var_0.b.d.b.x)), !vec3<bool>(var_4.d.b.x, false, true))).d.a.x, 0i), 32853u);
}

