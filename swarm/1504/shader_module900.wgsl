struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec4<i32>(46977i, i32(-2147483648), -51819i, -1i), vec2<u32>(10787u, 54350u), false);

var<private> global1: vec3<u32>;

var<private> global2: Struct_5 = Struct_5(-23192i, Struct_4(Struct_1(22458i, vec4<i32>(i32(-2147483648), i32(-2147483648), -5263i, 2147483647i), vec2<u32>(19168u, 1u), false), vec3<u32>(35787u, 4294967295u, 3808u), Struct_1(11674i, vec4<i32>(16940i, 19342i, 0i, -1i), vec2<u32>(28599u, 70638u), true)));

var<private> global3: vec3<f32> = vec3<f32>(-250f, -565f, -850f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>) -> vec3<u32> {
    global1 = ~global2.b.b;
    let var_0 = 349f;
    let var_1 = 1228f;
    let var_2 = 26951u;
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1));
    return _wgslsmith_div_vec3_u32(global2.b.b, global2.b.b);
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_4(Struct_1(u_input.a, _wgslsmith_mod_vec4_i32(arg_1.c.b, vec4<i32>(arg_1.a.b.x >> (arg_1.b.x % 32u), abs(2147483647i), _wgslsmith_mod_i32(-1i, global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global2.b.c.a, global2.a, 0i), vec4<i32>(global0.b.x, -1i, arg_0, -1i)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b.x, 0u, global0.c.x), ~vec4<u32>(58371u, 1u, global2.b.c.c.x, 5612u)), global1.x), (arg_1.a.d | true) && false), ~min(global2.b.b >> (vec3<u32>(global2.b.b.x, 4294967295u, arg_1.b.x) % vec3<u32>(32u)), func_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 137f) - vec4<f32>(global3.x, -554f, global3.x, global3.x)))), Struct_1(_wgslsmith_add_i32(arg_0, -1i | -arg_0), vec4<i32>(u_input.a, firstLeadingBit(~global2.a), global2.b.c.b.x & ~1i, -min(arg_0, u_input.a)), select(global1.yz, abs(vec2<u32>(0u, global0.c.x)), false), select(global2.b.c.d, arg_1.c.d, any(vec2<bool>(false, true)))));
    let var_1 = Struct_3(any(vec3<bool>(all(!vec3<bool>(true, global2.b.a.d, false)), true, global2.b.a.d)), arg_1.a.b.x, Struct_2(~_wgslsmith_mod_u32(43809u ^ global1.x, 1u), -vec2<i32>(arg_1.c.a & -1802i, -2147483647i), var_0.a, !vec3<bool>(global0.d, global2.b.a.d, true), _wgslsmith_div_i32(select(arg_0, global0.a, global2.b.a.d), _wgslsmith_dot_vec3_i32(global0.b.xyz, vec3<i32>(-2147483647i, 1179i, 31322i))) == global0.a));
    global2 = Struct_5(min(u_input.a, u_input.a), global2.b);
    var var_2 = Struct_1(_wgslsmith_mod_i32(arg_1.a.b.x, global2.a), global0.b, reverseBits(~vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), abs(u_input.b.x))), true);
    return -(~global2.b.a.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_3) -> Struct_1 {
    let var_0 = arg_3.b;
    let var_1 = vec2<u32>(global1.x, u_input.b.x);
    var var_2 = arg_3.c;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-576f + 811f), -1328f))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1000f, global3.x) - vec3<f32>(-452f, global3.x, global3.x))))))));
    return Struct_1(arg_3.b << (arg_3.c.c.c.x % 32u), arg_2.b.c.b, ~arg_2.b.a.c, global3.x > global3.x);
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    global1 = countOneBits(arg_0.b);
    let var_0 = Struct_5(arg_0.c.a, Struct_4(Struct_1(abs(-2147483647i), firstTrailingBit(global0.b), ~(u_input.b | arg_0.a.c), global0.d), max(select(vec3<u32>(10951u, global1.x, 8480u), vec3<u32>(global0.c.x, 25251u, 27871u), true), min(vec3<u32>(66329u, global1.x, 9604u), vec3<u32>(global1.x, 1u, 4294967295u))) & arg_0.b, func_4(global2.b.c.b.ywz & select(global0.b.xyx, vec3<i32>(-18019i, -25054i, u_input.a), false), select(!vec2<bool>(global2.b.a.d, true), select(vec2<bool>(true, true), vec2<bool>(global0.d, true), false), select(global2.b.a.d, true, false)), Struct_5(_wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(2147483647i, 3133i, -6035i, 1i)), Struct_4(global2.b.c, vec3<u32>(global1.x, 4294967295u, global1.x), Struct_1(2147483647i, vec4<i32>(-2147483647i, global2.b.c.a, 2147483647i, 66742i), vec2<u32>(37857u, u_input.b.x), true))), Struct_3(true, -80678i, Struct_2(global1.x, vec2<i32>(-8226i, global0.a), Struct_1(arg_0.c.a, global2.b.a.b, vec2<u32>(global2.b.c.c.x, global0.c.x), true), vec3<bool>(arg_0.a.d, false, arg_0.a.d), arg_0.c.d)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(662f, global3.x), _wgslsmith_f_op_f32(step(global3.x, global3.x)), false)), global3.x, global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, 562f), global3.x, any(vec2<bool>(false, arg_0.a.d))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global3.x, -1422f, 703f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1235f, global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1001f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_div_f32(global3.x, -145f)), global3.x)));
    let var_2 = global0.d;
    let var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.a.c.x >> ((1u << (1u % 32u)) % 32u), select(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.x, global0.c.x, global2.b.c.c.x, 89129u), vec4<u32>(global1.x, 4294967295u, global1.x, u_input.b.x)), var_1.x == var_1.x), arg_0.b.x), _wgslsmith_mod_vec3_u32(firstLeadingBit(arg_0.b), vec3<u32>(u_input.b.x, ~arg_0.c.c.x, 0u)));
    return Struct_3(!(!(false || global0.d)), -29234i, Struct_2(abs(1u), vec2<i32>(firstTrailingBit(min(arg_0.c.a, global2.b.c.b.x)), _wgslsmith_dot_vec4_i32(-global2.b.a.b, reverseBits(var_0.b.a.b))), func_4(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, -5150i, global0.b.x), vec3<i32>(u_input.a, global0.a, u_input.a)), ~var_0.b.a.b.xyx), vec2<bool>(false, func_4(global2.b.a.b.xxz, vec2<bool>(var_0.b.c.d, false), var_0, Struct_3(false, global2.a, Struct_2(global2.b.b.x, vec2<i32>(global0.a, -2999i), Struct_1(global0.a, global0.b, global0.c, var_0.b.a.d), vec3<bool>(true, arg_0.c.d, true), global2.b.a.d))).d), var_0, Struct_3(-127f < var_1.x, func_2(-1i, Struct_4(var_0.b.c, vec3<u32>(1u, global2.b.b.x, 3514u), global2.b.a)), Struct_2(9272u, vec2<i32>(33337i, global2.a), Struct_1(var_0.a, vec4<i32>(41039i, arg_0.c.a, u_input.a, -10417i), arg_0.b.zy, var_0.b.a.d), vec3<bool>(false, true, true), global2.b.a.d))), select(!vec3<bool>(arg_0.c.d, true, false), vec3<bool>(any(vec4<bool>(var_0.b.c.d, var_0.b.c.d, var_0.b.c.d, global2.b.a.d)), all(vec4<bool>(arg_0.a.d, arg_0.a.d, arg_0.c.d, var_0.b.c.d)), !arg_0.c.d), vec3<bool>(any(vec3<bool>(false, false, arg_0.c.d)), global0.d, true)), global0.d));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_5 {
    var var_0 = func_5(Struct_4(func_4(global0.b.zyz ^ arg_1.xyx, vec2<bool>(global0.d, true), Struct_5(func_2(29353i, global2.b), Struct_4(global2.b.c, global2.b.b, global2.b.c)), Struct_3(true, arg_0.x, Struct_2(33812u, vec2<i32>(u_input.a, global2.b.c.a), Struct_1(-23460i, global2.b.a.b, global0.c, global0.d), vec3<bool>(global2.b.a.d, global0.d, false), global2.b.c.d))), vec3<u32>(~min(global2.b.b.x, global2.b.c.c.x), reverseBits(~91204u), 4294967295u), global2.b.a));
    var var_1 = _wgslsmith_div_vec4_i32(var_0.c.c.b, var_0.c.c.b);
    var var_2 = all(!select(select(select(vec4<bool>(var_0.c.d.x, false, var_0.a, true), vec4<bool>(global2.b.c.d, global2.b.c.d, false, true), vec4<bool>(true, global0.d, global0.d, var_0.c.d.x)), !vec4<bool>(var_0.c.d.x, false, false, true), !vec4<bool>(false, global2.b.a.d, global0.d, true)), !vec4<bool>(global2.b.a.d, true, var_0.a, global0.d), vec4<bool>(!global0.d, true, all(var_0.c.d), false)));
    var_1 = firstTrailingBit(global2.b.a.b);
    var var_3 = var_0.c.c;
    return Struct_5(~(~(i32(-1i) * -1i)), Struct_4(Struct_1(_wgslsmith_mult_i32(arg_0.x ^ 0i, ~var_0.c.b.x), vec4<i32>(-1i) * -vec4<i32>(1i, global0.b.x, -15426i, 3543i), _wgslsmith_mod_vec2_u32(vec2<u32>(14589u, 1u), firstLeadingBit(u_input.b)), any(vec4<bool>(true, true, var_0.a, true))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(global2.b.b ^ global2.b.b, select(vec3<u32>(68224u, var_0.c.c.c.x, 4294967295u), vec3<u32>(1u, 0u, global2.b.a.c.x), vec3<bool>(false, true, true))), global2.b.b | _wgslsmith_sub_vec3_u32(global2.b.b, global2.b.b)), var_0.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b.a;
    var var_0 = func_1(vec2<i32>(~(-_wgslsmith_add_i32(2147483647i, -1i)), ~global2.a), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global0.b, _wgslsmith_clamp_vec4_i32(-global2.b.a.b, abs(vec4<i32>(u_input.a, u_input.a, global2.a, global2.a)), max(global0.b, vec4<i32>(0i, u_input.a, -21659i, global2.a)))), -_wgslsmith_add_vec4_i32(~global2.b.a.b, vec4<i32>(global2.a, -1i, global0.a, u_input.a))));
    var var_1 = func_5(Struct_4(Struct_1(15529i, ~global0.b, func_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, -755f), global3.xy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-445f, global3.x, global3.x, global3.x))).xz, global0.d), ~select(var_0.b.b, max(global2.b.b, global2.b.b), select(vec3<bool>(global2.b.a.d, false, global0.d), vec3<bool>(global0.d, true, false), false)), func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 44358i, -1i), _wgslsmith_add_vec3_i32(var_0.b.c.b.xzz, global2.b.c.b.xxz)), vec2<bool>(false, global2.b.c.d), func_1(select(vec2<i32>(global0.a, global0.b.x), vec2<i32>(2699i, global0.a), true), vec4<i32>(global0.a, var_0.a, -1i, var_0.b.c.a)), func_5(func_1(vec2<i32>(-2147483647i, 25888i), global0.b).b))));
    var var_2 = !(!(!any(vec2<bool>(var_1.a, var_1.c.d.x))) & true);
    let var_3 = func_4(var_0.b.c.b.wxx, vec2<bool>(!(!global0.d), any(select(select(vec3<bool>(var_1.c.d.x, false, true), vec3<bool>(var_0.b.a.d, global0.d, true), true), !var_1.c.d, select(var_1.c.d, vec3<bool>(false, true, global2.b.a.d), true)))), func_1(-var_1.c.b, var_0.b.a.b), func_5(func_1(~_wgslsmith_mod_vec2_i32(vec2<i32>(21621i, -16026i), global2.b.c.b.zw), ~vec4<i32>(-13964i, -1i, 28519i, var_1.b)).b)).b.x;
    let var_4 = vec3<bool>(true, func_5(func_1(~(~vec2<i32>(18879i, global0.b.x)), vec4<i32>(_wgslsmith_sub_i32(global2.a, 0i), global0.a, global2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, global0.b.x, var_1.c.b.x, 1648i), var_1.c.c.b))).b).a, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.x)))), 1415f)), _wgslsmith_f_op_f32(f32(-1f) * -862f))), _wgslsmith_mult_vec4_u32(reverseBits(select(~vec4<u32>(var_1.c.c.c.x, 71848u, 0u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, 75527u, 44444u), vec4<u32>(0u, u_input.b.x, 52154u, global1.x)), vec4<bool>(false, false, var_1.c.d.x, global0.d))), firstTrailingBit(~vec4<u32>(var_1.c.a, 0u, var_1.c.c.c.x, 15492u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(global2.b.b, global2.b.b), 0u, _wgslsmith_add_u32(global2.b.a.c.x, 40141u), 1u) % vec4<u32>(32u))), 1i);
}

