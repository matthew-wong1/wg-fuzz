struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2111f;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false));

var<private> global2: vec3<f32> = vec3<f32>(-862f, 269f, -1610f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32) -> vec3<f32> {
    global1 = array<vec4<bool>, 19>();
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1316f, 1837f, global2.x), vec3<f32>(941f, global2.x, -471f), vec3<bool>(false, false, false)))))), Struct_2(select(min(vec4<i32>(50638i, u_input.b, -3211i, u_input.b), vec4<i32>(15409i, 2147483647i, -63065i, 2147483647i)), vec4<i32>(-2366i, 2173i, arg_0, u_input.b), vec4<bool>(true, false, true, true)), Struct_1(-vec3<i32>(arg_0, 0i, -17732i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 670f) * _wgslsmith_f_op_f32(ceil(global2.x))), Struct_1(vec3<i32>(2147483647i, 2147483647i, 11603i)), _wgslsmith_add_u32(u_input.a >> (u_input.a % 32u), ~u_input.a))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, global2.x, 583f)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 649f) + vec3<f32>(global2.x, -1007f, global2.x))))), Struct_2(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, -36277i, u_input.b), vec4<i32>(1i, -1i, 2147483647i, u_input.b))), Struct_1(countOneBits(vec3<i32>(-31140i, -22014i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1717f) + _wgslsmith_f_op_f32(floor(global2.x))), Struct_1(vec3<i32>(75634i, 23549i, arg_0)), ~(~u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), vec4<f32>(_wgslsmith_f_op_f32(round(global2.x)), 257f, _wgslsmith_f_op_f32(global2.x + global2.x), global2.x), u_input.a);
    let var_1 = global1[_wgslsmith_index_u32(~(50001u ^ ~countOneBits(u_input.a)), 19u)];
    var var_2 = global2.x;
    let var_3 = reverseBits(arg_0);
    return var_0.a.a;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(-1i, u_input.b);
    global1 = array<vec4<bool>, 19>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, 276f), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3(-2147483647i)))))), Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(5541i, 0i, var_0, u_input.b) ^ (vec4<i32>(u_input.b, -6090i, -12766i, var_0) & vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_div_i32(var_0, var_0), ~var_0, u_input.b)), Struct_1(abs(vec3<i32>(var_0, u_input.b, u_input.b)) << (select(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(false, true, true)) % vec3<u32>(32u))), global2.x, Struct_1(firstLeadingBit(vec3<i32>(359i, u_input.b, u_input.b))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(25603u, 0u), vec2<u32>(u_input.a, u_input.a) & vec2<u32>(4294967295u, u_input.a)), vec2<u32>(4294967295u, u_input.a))));
    var var_2 = min(select(~vec3<u32>(u_input.a, var_1.b.e, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(72972u, u_input.a, 63822u), vec3<u32>(var_1.b.e, 4294967295u, u_input.a)), u_input.b <= 0i) ^ (_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.e, u_input.a, 7564u), vec3<u32>(0u, var_1.b.e, u_input.a)) & vec3<u32>(var_1.b.e, u_input.a, u_input.a)), abs(abs(vec3<u32>(u_input.a, var_1.b.e, 41904u)))) >> (firstLeadingBit(vec3<u32>(25873u, u_input.a, countOneBits(1u))) % vec3<u32>(32u));
    var var_3 = Struct_2(var_1.b.a, var_1.b.d, -701f, var_1.b.d, ~1u);
    return Struct_1(-vec3<i32>(-2147483647i, reverseBits(i32(-1i) * -38944i), countOneBits(-var_3.b.a.x)));
}

fn func_1() -> Struct_4 {
    global1 = array<vec4<bool>, 19>();
    let var_0 = -102f;
    var var_1 = var_0;
    let var_2 = func_2();
    let var_3 = Struct_1(~var_2.a);
    return Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, var_0), vec3<f32>(var_0, 796f, -1275f)))), Struct_2(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, u_input.b, var_3.a.x, -21752i), vec4<i32>(21493i, var_3.a.x, 47423i, -14274i)), func_2(), global2.x, var_2, firstLeadingBit(_wgslsmith_mod_u32(68073u, u_input.a)))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, -315f))), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -429f, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-951f, var_0, -679f) * vec3<f32>(-1507f, global2.x, global2.x)))), Struct_2(~(vec4<i32>(var_3.a.x, 11981i, -77240i, -26342i) ^ vec4<i32>(1i, 2147483647i, var_2.a.x, u_input.b)), var_2, _wgslsmith_f_op_f32(abs(-569f)), var_2, ~0u)), -965f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(112f, var_0, global2.x, -185f) * vec4<f32>(var_0, global2.x, global2.x, -683f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-874f, -827f, var_0, 380f) + vec4<f32>(global2.x, var_0, var_0, var_0)), vec4<f32>(1354f, -1552f, -947f, -335f), all(vec3<bool>(false, true, false)))), vec4<f32>(-1838f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_f_op_f32(select(var_0, -880f, true)))))), _wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15065u, 41668u, 1u), vec3<u32>(1u, 0u, u_input.a)), ~u_input.a), ~u_input.a, _wgslsmith_mod_u32(~u_input.a, 0u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(arg_1.b.a, Struct_1(vec3<i32>(i32(-1i) * -10503i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, arg_1.b.d.a.x, u_input.b), vec4<i32>(-27952i, arg_1.b.b.a.x, -19019i, u_input.b)), 0i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(f32(-1f) * -1533f))), arg_1.b.b, 36350u);
    let var_1 = Struct_1(~(~arg_0.b.b.a.xwz));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d.wyw) + arg_0.a.a), arg_1.a))) + arg_0.b.a);
    global1 = array<vec4<bool>, 19>();
    global2 = vec3<f32>(var_0.c, _wgslsmith_f_op_f32(step(arg_1.b.c, 247f)), -420f);
    return func_1().b.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(abs(2147483647i) ^ u_input.b, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 4152i, u_input.b), vec4<i32>(u_input.b, 1i, 2147483647i, u_input.b))), -u_input.b, _wgslsmith_div_i32(u_input.b, -47487i) ^ u_input.b), u_input.b, _wgslsmith_mult_i32(-firstLeadingBit(u_input.b), u_input.b)), Struct_1(_wgslsmith_mod_vec3_i32((vec3<i32>(u_input.b, u_input.b, 2682i) & vec3<i32>(35947i, u_input.b, u_input.b)) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), -vec3<i32>(-52971i, u_input.b, 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1609f)), global2.x)) * 495f), func_4(func_1(), func_1().a), ~24585u);
    let var_1 = var_0.a.x;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))))))));
    var var_2 = u_input.a & u_input.a;
    let var_3 = func_1().a.b;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-487f)))));
    var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1206f * -377f), var_0.c);
    var_2 = countOneBits(u_input.a & _wgslsmith_add_u32((u_input.a << (35996u % 32u)) & 21372u, ~countOneBits(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(_wgslsmith_add_i32(u_input.b, u_input.b) & var_1), firstLeadingBit(min(1i, func_4(Struct_4(Struct_3(vec3<f32>(-1101f, -2034f, var_3.c), Struct_2(var_0.a, Struct_1(var_0.b.a), var_0.c, Struct_1(var_3.b.a), 4294967295u)), Struct_3(vec3<f32>(-562f, 705f, 518f), Struct_2(vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b), Struct_1(var_0.d.a), global2.x, Struct_1(vec3<i32>(var_1, var_0.a.x, var_0.d.a.x)), 1u)), 1000f, vec4<f32>(-1982f, -260f, -1754f, 1000f), 31085u), Struct_3(vec3<f32>(1188f, -1826f, var_3.c), var_3)).a.x)), u_input.b), var_1);
}

