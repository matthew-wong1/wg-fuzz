struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<f32, 4> = array<f32, 4>(271f, -979f, -305f, 1177f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(1221f));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1503f - -814f)) - arg_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 4u)] + _wgslsmith_f_op_f32(-2809f + arg_1.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -2123f));
    global0 = 15813u;
    global1 = array<f32, 4>();
    var var_2 = abs(_wgslsmith_mult_i32(1483i ^ (_wgslsmith_dot_vec2_i32(arg_1.a.xw, arg_1.a.xw) & arg_1.a.x), abs(-43587i)));
    return true;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    let var_0 = func_3(~vec4<u32>(_wgslsmith_add_u32(u_input.a, 29310u), ~0u, _wgslsmith_sub_u32(4294967295u, 66289u), ~arg_2.a.x), Struct_2(vec4<i32>(-1i) * -arg_2.c, vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(select(-1107f, -377f, arg_3)), 915f, _wgslsmith_f_op_f32(1000f + arg_0.x)))) && arg_3;
    let var_1 = Struct_4(arg_2);
    global0 = u_input.a;
    global0 = arg_2.a.x ^ _wgslsmith_add_u32(~u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 0u, var_1.a.b, arg_2.a.x), countOneBits(vec4<u32>(var_1.a.a.x, 4294967295u, 0u, arg_2.a.x))), _wgslsmith_mult_u32(u_input.a ^ arg_2.b, var_1.a.b)));
    global1 = array<f32, 4>();
    return vec4<u32>(min(_wgslsmith_mod_u32(~(~62734u), 4294967295u), 1u ^ ~max(20415u, var_1.a.b)), var_1.a.a.x, abs(abs(1u)), ~(~_wgslsmith_mod_u32(var_1.a.a.x, _wgslsmith_div_u32(u_input.a, var_1.a.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> Struct_4 {
    let var_0 = _wgslsmith_add_u32(5191u & u_input.a, 1u) | (62300u | (arg_0.b ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 4294967295u, u_input.a), vec4<u32>(arg_0.a.x, 16865u, arg_0.b, u_input.a), vec4<bool>(arg_2.x, false, true, false)), ~vec4<u32>(u_input.a, 18549u, arg_0.b, 78914u))));
    global1 = array<f32, 4>();
    let var_1 = arg_2;
    global0 = arg_0.a.x;
    let var_2 = vec3<u32>(firstLeadingBit(~60637u), _wgslsmith_mult_u32(firstTrailingBit(14775u), _wgslsmith_mult_u32(u_input.a, 10471u) << (1u % 32u)) | 0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(16453u, ~58422u, 86336u, 1u), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(2634u, 4u)], -765f) - vec2<f32>(-1201f, arg_3)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(arg_0.b, 4u)], arg_3) + vec3<f32>(-768f, arg_3, arg_3)), arg_0, all(vec3<bool>(arg_2.x, true, true))))));
    return Struct_4(arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_4 {
    global0 = arg_2;
    let var_0 = vec4<i32>(-6440i, 2147483647i, firstLeadingBit(_wgslsmith_div_i32(0i, arg_0.a.d.x)), -arg_0.a.c.x);
    let var_1 = Struct_4(func_1(arg_0.a, _wgslsmith_add_i32(arg_0.a.c.x >> (u_input.a % 32u), var_0.x >> (~arg_1.x % 32u)), vec3<bool>(false, true, arg_3.x), global1[_wgslsmith_index_u32(12637u, 4u)]).a);
    global1 = array<f32, 4>();
    global1 = array<f32, 4>();
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(~select(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.a.a.x, 1u, arg_0.a.a.x, arg_2.a.b)), select(vec4<u32>(4294967295u, u_input.a, 38164u, arg_2.a.a.x), vec4<u32>(23947u, arg_0.a.a.x, arg_0.a.b, 0u), arg_3.x)), ~(~vec4<u32>(arg_2.a.b, 0u, 4294967295u, 44572u)), arg_3.x), vec4<u32>(_wgslsmith_mod_u32(u_input.a, arg_0.a.a.x & 1u) << ((abs(arg_0.a.a.x) ^ (arg_2.a.a.x << (53292u % 32u))) % 32u), ~0u, arg_0.a.a.x, arg_0.a.b));
    global1 = array<f32, 4>();
    let var_1 = Struct_4(arg_2.a);
    var var_2 = func_4(arg_0, vec2<u32>(1u, ~_wgslsmith_dot_vec2_u32(var_0.zw, arg_2.a.a)) << (~vec2<u32>(u_input.a, ~1u) % vec2<u32>(32u)), ~0u & _wgslsmith_add_u32(max(_wgslsmith_add_u32(var_0.x, arg_2.a.b), ~u_input.a), func_1(Struct_1(arg_0.a.a, 0u, arg_0.a.c, vec3<i32>(arg_0.a.d.x, 2147483647i, -5940i)), arg_2.a.c.x, !vec3<bool>(arg_3.x, arg_3.x, false), arg_1.b.x).a.a.x), arg_3).a;
    var var_3 = select(vec3<bool>(select(any(arg_3.yy) || all(vec2<bool>(arg_3.x, true)), false, all(arg_3.zy)), !any(vec3<bool>(false, arg_3.x, arg_3.x)), true), select(vec3<bool>(!arg_3.x, all(select(arg_3.xx, arg_3.xx, arg_3.x)), !(arg_3.x || false)), select(arg_3, vec3<bool>(func_3(vec4<u32>(var_0.x, 0u, 38059u, var_1.a.a.x), arg_1), true, true), select(select(arg_3.x, false, arg_3.x), !arg_3.x, !arg_3.x)), true), !(!select(vec3<bool>(true, arg_3.x, arg_3.x), select(arg_3, arg_3, vec3<bool>(arg_3.x, arg_3.x, false)), var_1.a.c.x < arg_1.a.x)));
    return Struct_2(var_2.c, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(Struct_1(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(57817i, 69811i, 20723i, -1i), vec4<i32>(-2147483647i, 8928i, 24356i, -31692i)), abs(vec3<i32>(0i, 8415i, 19962i))), -11749i, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(select(u_input.a, u_input.a, false), 4u)]))), ~(~(~vec2<u32>(u_input.a, u_input.a))), 37764u, vec3<bool>(!all(vec2<bool>(true, false)), false, true)), Struct_2(abs(~select(vec4<i32>(-32666i, 37560i, -21857i, 43934i), vec4<i32>(-1i, -31438i, 1i, 2147483647i), true)), vec4<f32>(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(77156u, u_input.a, 75916u, 1u), vec4<u32>(1u, u_input.a, u_input.a, 0u)), 4u)])), global1[_wgslsmith_index_u32(u_input.a, 4u)], -790f, _wgslsmith_f_op_f32(106f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 4u)] * -392f)))), func_4(Struct_4(func_1(Struct_1(vec2<u32>(28702u, u_input.a), 1u, vec4<i32>(54567i, 10016i, -2147483647i, 35125i), vec3<i32>(-1i, -32271i, 2147483647i)), max(-1i, -36669i), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(trunc(-646f))).a), select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 3720u), vec3<u32>(4294967295u, 40216u, 0u)), ~u_input.a), ~vec2<u32>(u_input.a, 45690u), vec2<bool>(true, true)), ~u_input.a, vec3<bool>(func_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 41498u, 0u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 37232u, 91845u), vec4<u32>(u_input.a, 10217u, u_input.a, u_input.a)), Struct_2(vec4<i32>(8505i, -56422i, 1i, 2147483647i), vec4<f32>(425f, -1489f, global1[_wgslsmith_index_u32(22374u, 4u)], 1308f))), true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), vec3<bool>(all(vec4<bool>(true, func_3(vec4<u32>(u_input.a, 0u, 16566u, 0u), Struct_2(vec4<i32>(14041i, 2147483647i, -13949i, 2147483647i), vec4<f32>(-1118f, global1[_wgslsmith_index_u32(u_input.a, 4u)], -1328f, -160f))), true, true)), true, true));
    var var_1 = false;
    let var_2 = Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1318f, _wgslsmith_f_op_f32(max(923f, var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1959f), var_0.b.x))));
    var var_3 = vec4<f32>(var_2.b.x, var_0.b.x, _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(step(827f, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 4u)], var_2.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f - var_0.b.x) + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_0.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_4(Struct_1(vec2<u32>(73406u, 51759u), u_input.a, var_2.a, var_2.a.www)), vec2<u32>(u_input.a, u_input.a), 64112u, vec3<bool>(false, true, true)), var_2, Struct_4(Struct_1(vec2<u32>(u_input.a, 1u), 38932u, var_2.a, var_0.a.xyx)), vec3<bool>(true, true, true)).b.x + _wgslsmith_f_op_f32(var_3.x - -395f))));
    let var_5 = Struct_2(-var_0.a, var_2.b);
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_5.b.xz)) * vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_f_op_f32(f32(-1f) * -1598f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-3382f, -548f), vec2<f32>(-360f, -1000f))), vec2<f32>(-1183f, var_3.x))) + var_0.b.ww)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.wyw, _wgslsmith_div_vec3_i32(-func_1(Struct_1(vec2<u32>(u_input.a, u_input.a), u_input.a, var_2.a, var_0.a.xzy), var_5.a.x, vec3<bool>(true, true, true), var_3.x).a.d, var_0.a.yyy) ^ (max(vec3<i32>(0i, 0i, 1i), var_2.a.zxx) ^ var_5.a.xyy), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 8451u, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.a))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 12943u)), ~vec3<u32>(37662u, u_input.a, 28228u)) >> (select(vec3<u32>(u_input.a, u_input.a, 16729u) >> (vec3<u32>(4294967295u, u_input.a, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.a), false), all(vec4<bool>(true, false, false, false))) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(u_input.a, 4u)]);
}

