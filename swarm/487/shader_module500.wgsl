struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(false, vec2<u32>(1u, 1u), vec3<i32>(0i, -16273i, 29425i)), Struct_1(true, vec2<u32>(114387u, 6659u), vec3<i32>(49949i, 43620i, -20505i)), Struct_1(false, vec2<u32>(4309u, 25723u), vec3<i32>(i32(-2147483648), 41612i, 0i)), Struct_1(true, vec2<u32>(4294967295u, 14260u), vec3<i32>(1i, 6735i, 64400i)), Struct_1(false, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(-37551i, 1i, 30472i)), Struct_1(false, vec2<u32>(0u, 0u), vec3<i32>(-1i, -5886i, -1i)), Struct_1(false, vec2<u32>(1u, 1u), vec3<i32>(1i, 35638i, -1i)), Struct_1(true, vec2<u32>(4294967295u, 16539u), vec3<i32>(20294i, -1i, -1i)), Struct_1(false, vec2<u32>(4294967295u, 4294967295u), vec3<i32>(i32(-2147483648), i32(-2147483648), 27258i)), Struct_1(true, vec2<u32>(1u, 31594u), vec3<i32>(-1i, 1i, 93033i)), Struct_1(false, vec2<u32>(38452u, 2316u), vec3<i32>(2147483647i, -21482i, i32(-2147483648))), Struct_1(false, vec2<u32>(25689u, 22784u), vec3<i32>(-15918i, 47045i, -4575i)), Struct_1(false, vec2<u32>(73218u, 11329u), vec3<i32>(i32(-2147483648), -9519i, 1i)), Struct_1(true, vec2<u32>(63575u, 0u), vec3<i32>(0i, i32(-2147483648), 0i)), Struct_1(false, vec2<u32>(0u, 56278u), vec3<i32>(9565i, 7093i, -13801i)), Struct_1(false, vec2<u32>(23006u, 4294967295u), vec3<i32>(18135i, -1i, -14169i)), Struct_1(true, vec2<u32>(63701u, 1u), vec3<i32>(41907i, -54095i, 6591i)));

var<private> global2: Struct_1 = Struct_1(true, vec2<u32>(0u, 18096u), vec3<i32>(2147483647i, 0i, 16292i));

var<private> global3: array<vec4<u32>, 25>;

var<private> global4: array<f32, 11> = array<f32, 11>(-1022f, 991f, -1418f, -111f, -1295f, 134f, 368f, 770f, 445f, 329f, 156f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: u32) -> bool {
    global2 = Struct_1(arg_2.b.a, _wgslsmith_sub_vec2_u32(arg_2.b.b, _wgslsmith_div_vec2_u32(~vec2<u32>(1535u, u_input.b), ~global2.b)) | vec2<u32>(0u, u_input.b), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(select(1867i, global0.x, false), -16401i), -arg_2.b.c.x), global0.x & arg_2.b.c.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(0i, arg_1.x, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b.c.x, -25895i, 1i), abs(vec3<i32>(u_input.a, 0i, arg_1.x))))));
    var var_0 = global3[_wgslsmith_index_u32(arg_3, 25u)];
    let var_1 = global1[_wgslsmith_index_u32(0u, 17u)];
    var var_2 = Struct_3(Struct_2(arg_2.b, global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, u_input.b), vec2<u32>(arg_2.b.b.x, arg_0))) | abs(var_0.x), 17u)], _wgslsmith_f_op_f32(step(-654f, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(arg_3, arg_3), 104123u), 11u)])), vec3<bool>(true, !var_1.a, (24603u < var_0.x) == true)), -(firstTrailingBit(countOneBits(var_1.c.zy)) | (vec2<i32>(u_input.a, u_input.a) & vec2<i32>(0i, arg_1.x))), ~(~(~arg_0)), Struct_1(arg_2.a.a, vec2<u32>(countOneBits(arg_2.b.b.x), global2.b.x), countOneBits(-_wgslsmith_add_vec3_i32(vec3<i32>(global2.c.x, arg_1.x, 2147483647i), arg_1))));
    let var_3 = select(!vec2<bool>(true, !arg_2.a.a & true), !select(!select(var_2.a.d.zz, vec2<bool>(var_1.a, var_2.a.b.a), var_2.a.d.xy), arg_2.d.zy, !arg_2.d.zz), !var_2.a.d.xy);
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.zz + _wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c, 2315f)) - -1557f)) - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(select(-642f, _wgslsmith_div_f32(arg_2.c, arg_1.x), func_3(76828u, global2.c, arg_2, arg_2.a.b.x))))));
    global2 = Struct_1(arg_0.a, arg_0.b, ~global2.c);
    let var_1 = arg_2.d;
    var var_2 = reverseBits(1u);
    let var_3 = Struct_2(Struct_1(arg_2.a.a, arg_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(max(15934i, 39811i), abs(1i), 0i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.c.x, global0.x, -2147483647i), -vec3<i32>(0i, -2147483647i, arg_2.a.c.x)))), arg_0, 247f, select(vec3<bool>(arg_0.a, any(!arg_2.d), true & (var_0.x >= global4[_wgslsmith_index_u32(4294967295u, 11u)])), !arg_2.d, !(!select(var_1, vec3<bool>(false, true, false), var_1.x))));
    return var_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = arg_2.d;
    var var_1 = vec3<u32>(104538u, _wgslsmith_sub_u32(~1u, arg_3.b.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21997u, ~68127u, 51041u), vec3<u32>(arg_0.b.x | global2.b.x, u_input.b, ~arg_2.a.b.x)), 45009u));
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(var_1.x, 1u)), var_1.zy), 17u)], Struct_1(true, arg_0.b, vec3<i32>(arg_1.x, -2147483647i, arg_2.a.c.x & select(-1i, 34045i, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-549f, 1640f, false))), select(!(!vec3<bool>(global2.a, arg_3.a.a, arg_3.a.a)), vec3<bool>(any(vec4<bool>(true, true, true, true)), arg_2.a.a, arg_3.b.a), vec3<bool>(arg_2.d.x | true, false, false)));
    var var_3 = arg_3;
    let var_4 = _wgslsmith_add_i32(firstTrailingBit(u_input.a), 2147483647i);
    return vec2<i32>(-6421i, -1i);
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(func_4(func_2(Struct_1(true, vec2<u32>(u_input.b, 48202u), global2.c), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(global2.b.x, 11u)]), Struct_2(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(7800u, 17u)], global4[_wgslsmith_index_u32(u_input.b, 11u)], vec3<bool>(false, global2.a, true))), max(vec4<i32>(u_input.a, 0i, 0i, 0i), vec4<i32>(-50593i, 46791i, global2.c.x, 0i)), Struct_2(global1[_wgslsmith_index_u32(5990u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(global2.b.x, 11u)], vec3<bool>(global2.a, true, global2.a)), Struct_2(Struct_1(global2.a, global2.b, global2.c), Struct_1(false, vec2<u32>(u_input.b, global2.b.x), vec3<i32>(0i, 58814i, 26486i)), global4[_wgslsmith_index_u32(49986u, 11u)], vec3<bool>(true, false, true))) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), abs(vec2<i32>(i32(-1i) * -1i, 1i))), reverseBits(u_input.a), _wgslsmith_div_i32(firstTrailingBit(-(~global0.x)), global2.c.x));
    global1 = array<Struct_1, 17>();
    var var_1 = ~abs(~countOneBits(vec3<u32>(global2.b.x, global2.b.x, global2.b.x)));
    var var_2 = Struct_3(Struct_2(func_2(Struct_1(any(vec4<bool>(false, global2.a, global2.a, global2.a)), vec2<u32>(1u, 64544u), -vec3<i32>(16623i, -36816i, var_0)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], global4[_wgslsmith_index_u32(7840u, 11u)], -961f))), Struct_2(Struct_1(global2.a, var_1.xz, global2.c), Struct_1(global2.a, global2.b, vec3<i32>(global2.c.x, -1i, 42828i)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.b.x, 11u)] * -152f), vec3<bool>(global2.a, global2.a, global2.a))), global1[_wgslsmith_index_u32(u_input.b, 17u)], global4[_wgslsmith_index_u32(u_input.b, 11u)], select(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, global2.a, true), any(vec4<bool>(false, global2.a, global2.a, global2.a))), vec3<bool>(145f >= global4[_wgslsmith_index_u32(global2.b.x, 11u)], !global2.a, true), global2.a)), -global2.c.yy, u_input.b, Struct_1(true, vec2<u32>(_wgslsmith_sub_u32(var_1.x, max(0u, u_input.b)), 23454u), global2.c));
    global4 = array<f32, 11>();
    return select(!(!vec3<bool>(all(var_2.a.d.xz), true, all(vec4<bool>(false, global2.a, global2.a, var_2.a.d.x)))), !var_2.a.d, ((_wgslsmith_f_op_f32(ceil(366f)) <= 1f) || false) & false);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 25u)];
    global4 = array<f32, 11>();
    var var_1 = arg_1.b.x;
    var_1 = func_2(func_2(func_2(global1[_wgslsmith_index_u32(51886u, 17u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c, -1000f, -1909f)) - vec3<f32>(arg_1.a.c, -446f, 196f)), arg_2.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.c, -1464f, 1000f) * vec3<f32>(1443f, arg_1.a.c, global4[_wgslsmith_index_u32(72926u, 11u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, arg_2.a.c, -1909f))))), Struct_2(Struct_1(!arg_0.x, ~global2.b, -vec3<i32>(-1i, 46192i, u_input.a)), func_2(Struct_1(true, var_0.yz, vec3<i32>(-21587i, -10146i, global2.c.x)), vec3<f32>(-2033f, -186f, global4[_wgslsmith_index_u32(19278u, 11u)]), arg_1.a), _wgslsmith_f_op_f32(abs(-1260f)), !arg_1.a.d)), vec3<f32>(global4[_wgslsmith_index_u32(reverseBits(1u) >> (~(~u_input.b) % 32u), 11u)], arg_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1593f + 775f)))), arg_1.a).c.x;
    global2 = global1[_wgslsmith_index_u32(24941u, 17u)];
    return 239f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32((~4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.b.x, global2.b.x, u_input.b), global3[_wgslsmith_index_u32(4294967295u, 25u)])) << ((_wgslsmith_add_u32(0u, global2.b.x) | ~44547u) % 32u), 11u)] + _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2068f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(!func_1(), Struct_3(Struct_2(global1[_wgslsmith_index_u32(65736u, 17u)], Struct_1(false, global2.b, vec3<i32>(global0.x, -2147483647i, 19522i)), global4[_wgslsmith_index_u32(global2.b.x, 11u)], vec3<bool>(true, global2.a, global2.a)), select(global2.c.zy, global2.c.zx, vec2<bool>(false, false)), 18809u, func_2(Struct_1(global2.a, vec2<u32>(global2.b.x, u_input.b), global2.c), vec3<f32>(484f, -308f, 814f), Struct_2(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], -146f, vec3<bool>(global2.a, false, false)))), Struct_3(Struct_2(Struct_1(true, global2.b, global2.c), global1[_wgslsmith_index_u32(2537u, 17u)], -947f, vec3<bool>(global2.a, global2.a, true)), global2.c.zx, ~u_input.b, global1[_wgslsmith_index_u32(22882u, 17u)])))));
    let var_1 = Struct_3(Struct_2(func_2(Struct_1(all(vec3<bool>(global2.a, true, true)), func_2(Struct_1(global2.a, vec2<u32>(0u, global2.b.x), vec3<i32>(-68832i, global2.c.x, -47035i)), vec3<f32>(1145f, var_0.x, global4[_wgslsmith_index_u32(global2.b.x, 11u)]), Struct_2(global1[_wgslsmith_index_u32(20710u, 17u)], Struct_1(global2.a, global2.b, vec3<i32>(-1i, global0.x, u_input.a)), global4[_wgslsmith_index_u32(71707u, 11u)], vec3<bool>(global2.a, true, global2.a))).b, -vec3<i32>(13590i, -4153i, 2147483647i)), vec3<f32>(1697f, global4[_wgslsmith_index_u32(global2.b.x >> (u_input.b % 32u), 11u)], _wgslsmith_f_op_f32(var_0.x * global4[_wgslsmith_index_u32(0u, 11u)])), Struct_2(Struct_1(global2.a, global2.b, global2.c), Struct_1(false, vec2<u32>(7964u, global2.b.x), global2.c), _wgslsmith_div_f32(var_0.x, 477f), select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, global2.a, true), vec3<bool>(false, false, false)))), func_2(func_2(global1[_wgslsmith_index_u32(u_input.b, 17u)], vec3<f32>(-441f, 1080f, global4[_wgslsmith_index_u32(4294967295u, 11u)]), Struct_2(Struct_1(global2.a, vec2<u32>(1u, u_input.b), vec3<i32>(0i, 0i, global2.c.x)), Struct_1(global2.a, vec2<u32>(48181u, global2.b.x), vec3<i32>(global0.x, u_input.a, u_input.a)), global4[_wgslsmith_index_u32(u_input.b, 11u)], vec3<bool>(global2.a, false, global2.a))), vec3<f32>(-653f, 466f, var_0.x), Struct_2(Struct_1(global2.a, vec2<u32>(u_input.b, global2.b.x), vec3<i32>(global2.c.x, -2147483647i, u_input.a)), global1[_wgslsmith_index_u32(select(u_input.b, global2.b.x, global2.a), 17u)], -1559f, select(vec3<bool>(false, global2.a, global2.a), vec3<bool>(global2.a, true, false), vec3<bool>(false, true, true)))), -342f, select(vec3<bool>(global2.a, all(vec3<bool>(global2.a, global2.a, global2.a)), any(vec4<bool>(true, global2.a, false, global2.a))), select(!vec3<bool>(false, global2.a, true), func_1(), true), true)), ~_wgslsmith_add_vec2_i32(abs(global2.c.yz), global2.c.zz), firstLeadingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.b.x, global2.b.x, 73597u), vec3<u32>(u_input.b, u_input.b, 4294967295u)), ~(vec3<u32>(global2.b.x, 33046u, u_input.b) & vec3<u32>(11004u, 1u, 0u)))), func_2(func_2(global1[_wgslsmith_index_u32(func_2(global1[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(global2.b.x, 11u)], -357f, -1342f)), Struct_2(Struct_1(true, vec2<u32>(global2.b.x, global2.b.x), global2.c), global1[_wgslsmith_index_u32(u_input.b, 17u)], var_0.x, vec3<bool>(false, global2.a, global2.a))).b.x, 17u)], _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4[_wgslsmith_index_u32(0u, 11u)], var_0.x, global4[_wgslsmith_index_u32(19962u, 11u)]))), Struct_2(func_2(Struct_1(global2.a, vec2<u32>(global2.b.x, u_input.b), global2.c), vec3<f32>(1000f, var_0.x, var_0.x), Struct_2(global1[_wgslsmith_index_u32(4294967295u, 17u)], Struct_1(global2.a, global2.b, vec3<i32>(-14498i, global2.c.x, global0.x)), global4[_wgslsmith_index_u32(global2.b.x, 11u)], vec3<bool>(true, false, global2.a))), Struct_1(global2.a, global2.b, global2.c), -1191f, !vec3<bool>(true, true, global2.a))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(global2.b.x, 11u)], var_0.x, var_0.x), vec3<f32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-360f, 574f, var_0.x), vec3<f32>(var_0.x, global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(global2.b.x, 11u)]), false))))), Struct_2(func_2(global1[_wgslsmith_index_u32(~u_input.b, 17u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-984f, var_0.x, 1158f) * vec3<f32>(-188f, global4[_wgslsmith_index_u32(1u, 11u)], var_0.x)), Struct_2(global1[_wgslsmith_index_u32(global2.b.x, 17u)], global1[_wgslsmith_index_u32(u_input.b, 17u)], 1793f, vec3<bool>(global2.a, global2.a, global2.a))), func_2(Struct_1(false, global2.b, global2.c), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -387f, var_0.x), vec3<f32>(var_0.x, -2067f, -842f)), Struct_2(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(19349u, 17u)], global4[_wgslsmith_index_u32(global2.b.x, 11u)], vec3<bool>(global2.a, false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b.x, global2.b.x), 11u)]), select(!vec3<bool>(global2.a, true, false), !vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(true, true, true)))));
    var var_2 = var_1.a.d;
    let var_3 = Struct_3(var_1.a, _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(var_1.b, vec2<i32>(u_input.a, global0.x)), -vec2<i32>(15102i, global2.c.x), -vec2<i32>(-2500i, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -9858i) ^ var_1.b, vec2<i32>(global0.x, -1i)) | (vec2<i32>(-36883i, 1i) >> (~var_1.d.b % vec2<u32>(32u)))), var_1.d.b.x, func_2(func_2(global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.b), 17u)], vec3<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.b.x, 11u)] * 1000f), var_0.x, var_0.x), Struct_2(Struct_1(var_2.x, vec2<u32>(global2.b.x, global2.b.x), vec3<i32>(global2.c.x, -20751i, global0.x)), func_2(Struct_1(var_2.x, var_1.d.b, vec3<i32>(var_1.b.x, var_1.a.a.c.x, u_input.a)), vec3<f32>(1590f, 1136f, global4[_wgslsmith_index_u32(u_input.b, 11u)]), var_1.a), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(0u, 11u)], 691f)), func_1())), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(37714u, 11u)], global4[_wgslsmith_index_u32(1u, 11u)], var_1.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, var_1.a.c, -1084f) - vec3<f32>(var_0.x, -1073f, var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(round(-1073f)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.c, 135973u), 11u)], _wgslsmith_f_op_f32(-var_0.x))), Struct_2(func_2(func_2(Struct_1(var_2.x, var_1.d.b, var_1.d.c), vec3<f32>(510f, var_0.x, global4[_wgslsmith_index_u32(global2.b.x, 11u)]), var_1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.c, 139f, 1000f) * vec3<f32>(1497f, var_0.x, -626f)), Struct_2(var_1.a.b, var_1.d, var_1.a.c, vec3<bool>(var_1.d.a, true, global2.a))), func_2(func_2(global1[_wgslsmith_index_u32(52187u, 17u)], vec3<f32>(1102f, var_1.a.c, 1117f), var_1.a), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 567f, var_0.x))), var_1.a), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(30351u, 11u)] - -402f), !vec3<bool>(false, global2.a, false))));
    let var_4 = var_1.d.c.x;
    var_2 = var_3.a.d;
    global0 = -(countOneBits(~(~var_1.a.a.c.zy)) | reverseBits(var_1.a.a.c.zy));
    var var_5 = all(select(vec4<bool>(global2.a, !any(var_3.a.d.xx), _wgslsmith_sub_i32(global2.c.x, var_1.b.x) < -13035i, var_2.x), select(vec4<bool>(all(vec4<bool>(true, true, var_2.x, global2.a)), var_1.d.a, true, global2.a), vec4<bool>(any(vec4<bool>(var_3.a.a.a, true, true, var_3.d.a)), var_2.x, false, var_3.a.b.a), select(select(vec4<bool>(var_1.d.a, false, var_2.x, var_3.d.a), vec4<bool>(true, false, var_1.a.d.x, var_3.a.d.x), true), select(vec4<bool>(false, global2.a, false, global2.a), vec4<bool>(var_3.d.a, false, var_2.x, global2.a), var_2.x), select(vec4<bool>(var_1.a.b.a, var_3.d.a, true, var_3.a.b.a), vec4<bool>(true, global2.a, false, false), vec4<bool>(false, false, false, true)))), !(!func_3(87145u, vec3<i32>(var_3.a.a.c.x, var_3.b.x, -21930i), Struct_2(Struct_1(var_2.x, var_1.d.b, vec3<i32>(var_4, -5013i, 2147483647i)), Struct_1(true, var_1.a.a.b, var_1.d.c), global4[_wgslsmith_index_u32(global2.b.x, 11u)], var_1.a.d), 22423u))));
    global3 = array<vec4<u32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c, vec3<u32>(global2.b.x, var_3.a.a.b.x, var_3.a.a.b.x ^ 0u), ~var_1.d.b.x & _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_3.c, 22753u), ~(~1u)));
}

