struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(26164u, 1u, 57626u), vec3<u32>(43702u, 4294967295u, 47558u), vec3<u32>(0u, 4294967295u, 9120u), vec3<u32>(1u, 39243u, 33940u), vec3<u32>(0u, 4294967295u, 69351u), vec3<u32>(15636u, 8121u, 4745u), vec3<u32>(4294967295u, 4294967295u, 20679u), vec3<u32>(1u, 35913u, 1u), vec3<u32>(0u, 72838u, 1u), vec3<u32>(4294967295u, 63162u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 12522u, 6253u), vec3<u32>(4294967295u, 14474u, 19736u), vec3<u32>(37576u, 31268u, 22618u), vec3<u32>(4294967295u, 3906u, 18383u), vec3<u32>(23806u, 4294u, 62865u), vec3<u32>(11206u, 1u, 1u), vec3<u32>(1u, 4294967295u, 40680u), vec3<u32>(0u, 62635u, 0u), vec3<u32>(20240u, 57353u, 4294967295u), vec3<u32>(1u, 4294967295u, 54799u), vec3<u32>(72001u, 84243u, 34155u), vec3<u32>(1u, 3225u, 12205u), vec3<u32>(16468u, 6247u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(83973u, 8431u, 0u), vec3<u32>(1u, 28955u, 4294967295u), vec3<u32>(77991u, 0u, 36415u));

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(11341u, 21656u), vec2<u32>(1u, 1u));

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-836f, 1058f), vec2<f32>(-563f, 1069f), vec2<f32>(468f, -261f), vec2<f32>(418f, 261f), vec2<f32>(1304f, -1000f), vec2<f32>(1000f, 352f), vec2<f32>(-1248f, -1451f));

var<private> global4: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(55455u, 42003u), vec2<u32>(1u, 4294967295u), vec2<u32>(8904u, 4294967295u), vec2<u32>(50996u, 8402u), vec2<u32>(0u, 4294967295u), vec2<u32>(45228u, 1u), vec2<u32>(12907u, 19141u), vec2<u32>(4294967295u, 206u), vec2<u32>(1u, 1u), vec2<u32>(4806u, 31917u), vec2<u32>(15290u, 4294967295u), vec2<u32>(1u, 44207u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4, arg_3: Struct_5) -> f32 {
    let var_0 = ~vec3<u32>(~(~u_input.a.x), u_input.a.x, u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d.x))) + arg_0.c.b) + arg_3.d.x);
    global1 = i32(-1i) * -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1104f)), arg_3.d.x, arg_3.c.b < 1331f)) + var_1)));
    var var_3 = ~(~(~(~vec4<u32>(var_0.x, u_input.a.x, 57278u, u_input.a.x) ^ ~vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_3.d.x, arg_0.d.x)), -133f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + 239f)))))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_4(select(vec4<bool>(!(-577f > arg_1), !(arg_1 > -661f), true, true), vec4<bool>(false, all(vec3<bool>(false, true, true)), !any(vec2<bool>(false, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false))), true));
    global4 = array<vec2<u32>, 12>();
    global0 = array<vec3<u32>, 28>();
    global4 = array<vec2<u32>, 12>();
    return vec3<bool>(var_0.a.x, !(_wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(-arg_1)) < 359f), false);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> vec2<i32> {
    var var_0 = select(!func_3(Struct_1(_wgslsmith_div_i32(8671i, 18687i), ~u_input.a.x, ~15322i, 0i), _wgslsmith_f_op_f32(func_2(Struct_5(Struct_4(vec4<bool>(false, arg_2, true, false)), vec3<bool>(arg_2, arg_0.a, arg_2), arg_0, vec3<f32>(arg_0.b, 893f, 1219f)), _wgslsmith_mod_i32(-43981i, 16624i), Struct_4(vec4<bool>(arg_0.a, arg_0.a, false, arg_2)), Struct_5(Struct_4(vec4<bool>(arg_2, arg_2, arg_0.a, false)), vec3<bool>(arg_0.a, true, arg_2), arg_0, vec3<f32>(arg_1, 1659f, 697f))))), func_3(Struct_1(~2147483647i, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.a.x), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), ~2147483647i, 1i), arg_0.b), !vec3<bool>(arg_2, arg_2, arg_0.a & false));
    let var_1 = (_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, 0i, 1i)), vec3<i32>(1i, 1i, 1i)) >> (0u % 32u)) < _wgslsmith_div_i32(max(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(5458i, 2147483647i), 1580i), 1i), 8445i);
    var_0 = func_3(Struct_1(-1i, _wgslsmith_div_u32(~_wgslsmith_mult_u32(u_input.a.x, 0u), select(882u >> (1u % 32u), u_input.a.x, all(var_0.zy))), max(_wgslsmith_div_i32(-8125i, i32(-1i) * -1i), 1i), _wgslsmith_div_i32(-1i, 1i)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(213f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(1106f + _wgslsmith_f_op_f32(arg_1 * 639f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 201f, arg_1, 650f), vec4<f32>(-1000f, arg_0.b, -697f, 568f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, arg_1, 177f, -1000f))) + vec4<f32>(arg_1, 155f, arg_0.b, arg_0.b)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1585f, arg_0.b, -925f, 140f) + vec4<f32>(arg_1, arg_0.b, arg_0.b, arg_1))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, 1234f, 1009f, arg_0.b))) - vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1143f, -676f, -281f, arg_1)))))));
    global2 = array<vec2<u32>, 2>();
    return ~(~vec2<i32>(_wgslsmith_add_i32(firstTrailingBit(1i), i32(-1i) * -2147483647i), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstLeadingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, -15446i)), select(vec2<i32>(54375i, 55785i), vec2<i32>(-2147483647i, 7484i), vec2<bool>(false, true))), func_1(Struct_2(false, -504f), _wgslsmith_div_f32(1534f, -338f), true)));
    global3 = array<vec2<f32>, 7>();
    var var_1 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-334f)))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(abs(42392u), ~u_input.a.x), _wgslsmith_mult_u32(~abs(u_input.a.x), select(4294967295u, ~4294967295u, u_input.a.x != u_input.a.x)), ~u_input.a.x), vec3<u32>(abs(u_input.a.x) ^ ~u_input.a.x, 2423u, firstLeadingBit(0u))), 28u)];
    let var_3 = Struct_5(Struct_4(vec4<bool>(all(vec4<bool>(var_1.a, var_1.a, true, false)), true, !(true & var_1.a), _wgslsmith_sub_u32(0u, u_input.a.x) == _wgslsmith_add_u32(1u, u_input.a.x))), select(vec3<bool>(false, true | var_1.a, true), vec3<bool>(var_1.a, true, !(!var_1.a)), select(func_3(Struct_1(var_0.x, var_2.x, var_0.x, var_0.x), 1f), select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, var_1.a, true), !var_1.a), !vec3<bool>(var_1.a, true, true))), Struct_2(false, 638f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2242f, -452f, var_1.b)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.b, var_1.b, var_1.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, var_1.b, var_1.b))))));
    let var_4 = 580f;
    let var_5 = Struct_5(Struct_4(vec4<bool>(var_1.a, true, func_3(Struct_1(40026i, var_2.x, 1i, var_0.x), _wgslsmith_f_op_f32(-var_4)).x, any(select(var_3.a.a, var_3.a.a, var_1.a)))), vec3<bool>(true, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-39013i, var_0.x), 40379i) > _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, ~126i), !var_3.b.x), var_3.c, var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<i32>(var_0.x, -19360i, -68632i, -19502i) | vec4<i32>(-2147483647i, 11955i, var_0.x, var_0.x)), var_0.x);
}

