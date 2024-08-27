struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<Struct_1, 30>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(i32(-2147483648), Struct_1(vec3<i32>(-9820i, i32(-2147483648), 53457i), 0u), 878f, vec3<f32>(380f, 268f, -273f)), Struct_2(-3283i, Struct_1(vec3<i32>(0i, -32080i, 0i), 8422u), 188f, vec3<f32>(218f, 651f, -641f)), Struct_2(15175i, Struct_1(vec3<i32>(i32(-2147483648), -9668i, -12911i), 16003u), 1537f, vec3<f32>(-760f, -754f, 974f)), Struct_2(0i, Struct_1(vec3<i32>(i32(-2147483648), 0i, 55593i), 1u), -424f, vec3<f32>(859f, -395f, -847f)), Struct_2(1i, Struct_1(vec3<i32>(-47028i, 0i, 5440i), 4294967295u), 1161f, vec3<f32>(-2163f, -1680f, -101f)), Struct_2(2147483647i, Struct_1(vec3<i32>(-13615i, 2147483647i, 6374i), 0u), 543f, vec3<f32>(-2098f, -139f, 315f)), Struct_2(0i, Struct_1(vec3<i32>(-26609i, -21287i, -2737i), 14229u), 1217f, vec3<f32>(-1112f, 1054f, -1563f)), Struct_2(29702i, Struct_1(vec3<i32>(i32(-2147483648), 2i, 0i), 4294967295u), -702f, vec3<f32>(-1706f, 1449f, 439f)), Struct_2(-1i, Struct_1(vec3<i32>(-8452i, i32(-2147483648), -1i), 16944u), 1588f, vec3<f32>(1417f, 1857f, 515f)), Struct_2(9939i, Struct_1(vec3<i32>(2147483647i, -1i, -22166i), 90332u), 1998f, vec3<f32>(-869f, 333f, -359f)), Struct_2(11301i, Struct_1(vec3<i32>(2147483647i, -1i, -23701i), 1u), -793f, vec3<f32>(2409f, -151f, -590f)), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(2147483647i, -10086i, -23513i), 44650u), 916f, vec3<f32>(1000f, -1000f, 2075f)), Struct_2(-1i, Struct_1(vec3<i32>(-1i, -1i, 0i), 4294967295u), 130f, vec3<f32>(514f, -1000f, 127f)), Struct_2(1i, Struct_1(vec3<i32>(47487i, 2974i, 5470i), 38801u), -248f, vec3<f32>(564f, -766f, 1686f)), Struct_2(-1i, Struct_1(vec3<i32>(18706i, 1i, 1i), 1u), 1000f, vec3<f32>(-557f, -1723f, -539f)), Struct_2(1i, Struct_1(vec3<i32>(-1i, 1i, -10727i), 1u), -1428f, vec3<f32>(-1925f, -1029f, 172f)), Struct_2(9686i, Struct_1(vec3<i32>(434i, i32(-2147483648), 0i), 31148u), -411f, vec3<f32>(1307f, -563f, 332f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_2) -> vec3<f32> {
    global1 = array<Struct_1, 30>();
    return arg_3.d;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    global2 = array<Struct_2, 17>();
    let var_0 = -1981f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(arg_3)))));
    var var_2 = vec3<bool>(arg_3.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), true, false);
    global2 = array<Struct_2, 17>();
    return ~u_input.c;
}

fn func_3() -> i32 {
    global0 = !select(select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), true), vec2<bool>(true, true), true | global0.x);
    var var_0 = Struct_2(-5896i, Struct_1(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-24509i, u_input.b, u_input.b), vec3<i32>(u_input.a, u_input.b, u_input.a), global0.x), abs(vec3<i32>(0i, 1i, -11919i)), -vec3<i32>(1i, u_input.a, 2147483647i)), ~(firstTrailingBit(29662u) ^ (u_input.c | 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) - 338f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f * 1954f)) - 1701f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, 265f, _wgslsmith_f_op_f32(min(-132f, -447f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-333f, 652f, -646f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-896f, -1093f, 600f) - vec3<f32>(-1026f, -855f, 423f)))))));
    global2 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d.zx + _wgslsmith_f_op_vec2_f32(vec2<f32>(-335f, 1025f) + var_0.d.xy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(155f * -1125f), _wgslsmith_f_op_f32(-657f * var_0.c)))) - _wgslsmith_div_vec2_f32(vec2<f32>(-359f, var_0.c), var_0.d.xz))));
    let var_2 = false || global0.x;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 17>();
    var var_0 = Struct_2(1i, global1[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-536f + -1000f) * _wgslsmith_f_op_f32(-1185f + -910f)) + -653f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(false, Struct_4(vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), global1[_wgslsmith_index_u32(56662u, 30u)], vec2<bool>(global0.x, global0.x), -184f), vec2<f32>(-317f, -717f), Struct_2(2147483647i, Struct_1(vec3<i32>(29991i, u_input.a, -2147483647i), 4294967295u), 870f, vec3<f32>(-643f, -648f, 414f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1304f, -1000f, -615f) * vec3<f32>(970f, -2130f, 1725f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1094f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1722f)) * _wgslsmith_f_op_f32(-1000f + 564f)), 778f)));
    let var_1 = !vec3<bool>(select(all(!vec4<bool>(global0.x, false, global0.x, true)), true, !(303f > var_0.d.x)), any(vec4<bool>(all(vec3<bool>(global0.x, true, true)), true, false, true)), true);
    var var_2 = var_0.c;
    let var_3 = Struct_3(_wgslsmith_mult_i32(20420i, -1i), var_0.b.a, firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b.b, var_0.b.b, var_0.b.b, u_input.c), vec4<u32>(4294967295u, var_0.b.b, u_input.c, u_input.c)) << ((vec4<u32>(var_0.b.b, 1u, var_0.b.b, 4294967295u) << (max(vec4<u32>(1u, var_0.b.b, var_0.b.b, u_input.c), vec4<u32>(84515u, u_input.c, u_input.c, 18478u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_4 = ~_wgslsmith_mult_vec3_u32(min(select(vec3<u32>(20565u, 1u, 63547u), ~var_3.c.zyz, false), ~select(vec3<u32>(var_3.c.x, var_0.b.b, 4294967295u), var_3.c.yyw, global0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(func_2(Struct_3(var_3.a, vec3<i32>(1779i, var_3.a, var_3.b.x), var_3.c), 45721u, vec2<i32>(var_3.b.x, var_3.b.x), vec2<f32>(-505f, 2061f)), ~4294967295u, _wgslsmith_div_u32(var_3.c.x, 45804u)), ~var_3.c.xwz));
    var var_5 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(-var_0.b.a.x), -2147483647i, -33022i, func_3()), vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(var_3.b, var_0.b.a)), u_input.b, var_0.b.a.x, ~reverseBits(u_input.b)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, -8743i, var_0.b.a.x, 0i), -vec4<i32>(-29030i, 0i, -2147483647i, -1i))), -vec4<i32>(~(~2147483647i), select(~(-5276i), u_input.b | 45356i, u_input.c < var_0.b.b), _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(u_input.a, 1i)), 19111i), vec4<bool>(!var_1.x, var_1.x, true, select(var_1.x, any(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(true, var_1.x, true, true), vec4<bool>(true, var_1.x, global0.x, global0.x))), global0.x)));
    var var_6 = vec3<bool>(!global0.x, true, true);
    let var_7 = Struct_2(u_input.b, var_0.b, var_0.d.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) * _wgslsmith_f_op_f32(f32(-1f) * -503f)), 1146f, -968f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(abs(select(4294967295u, var_7.b.b, var_6.x)), ~2309u), max(select(_wgslsmith_div_u32(var_0.b.b, _wgslsmith_clamp_u32(16617u, 1u, var_7.b.b)), 0u, true), ~var_7.b.b));
}

