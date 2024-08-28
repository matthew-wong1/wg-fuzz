struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec2<u32>(36058u, 0u), -1830f), Struct_1(vec2<i32>(29518i, 60078i), vec2<u32>(0u, 4294967295u), -1802f), vec2<u32>(1u, 0u), -51594i, 23925i), Struct_2(Struct_1(vec2<i32>(-1070i, -1i), vec2<u32>(14481u, 4294967295u), -178f), Struct_1(vec2<i32>(0i, 15761i), vec2<u32>(1u, 25858u), -1085f), vec2<u32>(1u, 122800u), -1i, 18992i), Struct_2(Struct_1(vec2<i32>(12772i, 38458i), vec2<u32>(0u, 0u), 104f), Struct_1(vec2<i32>(1i, -8543i), vec2<u32>(1u, 0u), -1237f), vec2<u32>(4294967295u, 4294967295u), -14104i, 41411i), Struct_2(Struct_1(vec2<i32>(-34468i, -12659i), vec2<u32>(30762u, 30532u), 1609f), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(29800u, 1536u), -1118f), vec2<u32>(1u, 34916u), 1i, 5248i), Struct_2(Struct_1(vec2<i32>(-22063i, 16919i), vec2<u32>(4294967295u, 46901u), -429f), Struct_1(vec2<i32>(1i, -28495i), vec2<u32>(0u, 24236u), -171f), vec2<u32>(0u, 1u), 15400i, -3894i), Struct_2(Struct_1(vec2<i32>(49720i, 0i), vec2<u32>(75344u, 3822u), 2909f), Struct_1(vec2<i32>(8948i, -37340i), vec2<u32>(17174u, 0u), 487f), vec2<u32>(0u, 11787u), 26590i, 102323i), Struct_2(Struct_1(vec2<i32>(8588i, 8349i), vec2<u32>(0u, 0u), 108f), Struct_1(vec2<i32>(-12363i, 1i), vec2<u32>(0u, 0u), -1476f), vec2<u32>(4294967295u, 4294967295u), -1i, -57989i), Struct_2(Struct_1(vec2<i32>(-1i, 44012i), vec2<u32>(23241u, 4294967295u), 1504f), Struct_1(vec2<i32>(2147483647i, 19885i), vec2<u32>(90537u, 85789u), -993f), vec2<u32>(0u, 18249u), 0i, i32(-2147483648)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -16362i), vec2<u32>(47270u, 21283u), -985f), Struct_1(vec2<i32>(24192i, -26404i), vec2<u32>(0u, 1u), 1090f), vec2<u32>(4294967295u, 4294967295u), 1725i, i32(-2147483648)), Struct_2(Struct_1(vec2<i32>(-1i, 26212i), vec2<u32>(3529u, 4294967295u), 316f), Struct_1(vec2<i32>(2147483647i, -5147i), vec2<u32>(1u, 39170u), -1442f), vec2<u32>(82435u, 53826u), -70748i, -1i), Struct_2(Struct_1(vec2<i32>(-1i, -1i), vec2<u32>(50012u, 4294967295u), 257f), Struct_1(vec2<i32>(-22484i, -1i), vec2<u32>(0u, 47561u), 1000f), vec2<u32>(73907u, 0u), 0i, 0i), Struct_2(Struct_1(vec2<i32>(22149i, 2147483647i), vec2<u32>(18104u, 47213u), -716f), Struct_1(vec2<i32>(41229i, 39489i), vec2<u32>(25603u, 0u), 655f), vec2<u32>(0u, 48711u), -1i, 0i), Struct_2(Struct_1(vec2<i32>(32473i, -1i), vec2<u32>(3879u, 4294967295u), 265f), Struct_1(vec2<i32>(11016i, -1i), vec2<u32>(0u, 31387u), -838f), vec2<u32>(0u, 1u), -1i, 0i), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(8287u, 1u), -185f), Struct_1(vec2<i32>(8547i, 6539i), vec2<u32>(4294967295u, 1u), -200f), vec2<u32>(1u, 1u), 14490i, 56969i), Struct_2(Struct_1(vec2<i32>(16942i, -22368i), vec2<u32>(41212u, 80674u), 342f), Struct_1(vec2<i32>(1i, 0i), vec2<u32>(30430u, 27143u), -1202f), vec2<u32>(4294967295u, 8259u), -297i, 52463i), Struct_2(Struct_1(vec2<i32>(21826i, -25508i), vec2<u32>(15405u, 13064u), -821f), Struct_1(vec2<i32>(51559i, 1i), vec2<u32>(13308u, 16352u), -299f), vec2<u32>(0u, 29174u), 1i, 15268i), Struct_2(Struct_1(vec2<i32>(50135i, 27121i), vec2<u32>(34082u, 76807u), 1000f), Struct_1(vec2<i32>(29469i, -19338i), vec2<u32>(36317u, 45449u), -396f), vec2<u32>(4294967295u, 80689u), -1i, 2147483647i), Struct_2(Struct_1(vec2<i32>(2147483647i, -53524i), vec2<u32>(1u, 43929u), 968f), Struct_1(vec2<i32>(1i, 2147483647i), vec2<u32>(30959u, 4294967295u), 260f), vec2<u32>(25318u, 72702u), 1i, 1i), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(1u, 74830u), 1000f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec2<u32>(25152u, 0u), 1000f), vec2<u32>(1u, 98292u), 2147483647i, -32791i), Struct_2(Struct_1(vec2<i32>(7884i, 2147483647i), vec2<u32>(0u, 26272u), -306f), Struct_1(vec2<i32>(0i, 11755i), vec2<u32>(1u, 53468u), -1064f), vec2<u32>(1u, 77050u), 2147483647i, 2147483647i), Struct_2(Struct_1(vec2<i32>(10324i, 8137i), vec2<u32>(16581u, 1u), 354f), Struct_1(vec2<i32>(23011i, -89518i), vec2<u32>(1u, 4294967295u), 550f), vec2<u32>(4294967295u, 4294967295u), 2147483647i, 0i));

var<private> global1: array<Struct_2, 21>;

var<private> global2: vec3<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_2, 21>();
    let var_0 = Struct_1(global2.zy, u_input.d.xy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.c)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.c)))), true)), arg_0.c));
    global2 = (~vec3<i32>(firstTrailingBit(var_0.a.x), -1i, -global2.x) ^ ~vec3<i32>(~global2.x, ~arg_0.a.x, i32(-1i) * -1i)) ^ -vec3<i32>(~var_0.a.x, ~(~arg_0.a.x), ~u_input.b);
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, 1i) ^ vec4<i32>(global2.x, var_0.a.x, arg_0.a.x, 35153i), vec4<i32>(var_0.a.x, -12048i, 26560i, 0i))), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0.a.x, 2147483647i, u_input.b, var_0.a.x), min(vec4<i32>(41905i, var_0.a.x, arg_0.a.x, 2147483647i), vec4<i32>(global2.x, -2147483647i, arg_0.a.x, u_input.b)))), _wgslsmith_add_vec4_i32(max(~(vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.b, 47956i) << (u_input.d % vec4<u32>(32u))), max(vec4<i32>(-2147483647i, 66997i, global2.x, -1i), ~vec4<i32>(var_0.a.x, arg_0.a.x, var_0.a.x, var_0.a.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(-var_0.a, -vec2<i32>(var_0.a.x, var_0.a.x)), -10317i, arg_0.a.x, 0i)));
    var var_2 = -334f;
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global2 = vec3<i32>(_wgslsmith_div_i32(arg_2.a.x, -firstLeadingBit(0i)), -func_3(arg_0.b), abs(_wgslsmith_sub_i32(-24134i, firstLeadingBit(arg_2.a.x))));
    let var_0 = arg_0.a.b.x << (1u % 32u);
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.b.x, 0u, _wgslsmith_add_u32(0u >> (1u % 32u), countOneBits(_wgslsmith_mod_u32(1u, 37804u)))), _wgslsmith_div_vec3_u32(min(~abs(u_input.d.wwx), ~u_input.d.yyy), ~select(~vec3<u32>(21377u, 93342u, var_0), vec3<u32>(4294967295u, var_0, u_input.d.x), arg_3)));
    var var_2 = select(!select(vec3<bool>(arg_3 || arg_3, arg_1.x, !arg_3), select(select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, arg_3, arg_1.x), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_3), vec3<bool>(true, arg_3, arg_3)), arg_1.x), vec3<bool>(false, true, false)), !(!select(select(vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(true, false, true), arg_3), vec3<bool>(true, true, true), false)), select(vec3<bool>(all(!vec3<bool>(false, arg_3, arg_3)), !arg_1.x, arg_1.x), select(!select(vec3<bool>(arg_1.x, false, true), vec3<bool>(false, false, true), arg_1.x), !vec3<bool>(true, true, arg_3), true), vec3<bool>(arg_3 | (true && arg_3), false, !arg_3)));
    let var_3 = reverseBits(~(~_wgslsmith_add_vec3_u32(u_input.d.xyw | vec3<u32>(arg_0.c.x, u_input.c, 1u), vec3<u32>(1u, var_0, var_0) << (u_input.d.zzy % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.c))) - -705f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1840f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-952f, -109f)))))));
}

fn func_1() -> f32 {
    var var_0 = u_input.a;
    global1 = array<Struct_2, 21>();
    var_0 = u_input.c;
    global1 = array<Struct_2, 21>();
    var var_1 = _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(~121914u, 21u)], select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(u_input.c != u_input.d.x, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), all(vec2<bool>(true, false))), ~(~u_input.b) < u_input.b), Struct_1(((global2.yx >> (u_input.d.zx % vec2<u32>(32u))) >> (u_input.d.zw % vec2<u32>(32u))) ^ max(vec2<i32>(u_input.b, u_input.b), global2.xy), abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.d.x, 34320u))), -521f), select(true, true, false)));
    return 562f;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> vec3<f32> {
    let var_0 = Struct_1(global2.zz, ~u_input.d.yx, arg_0.x);
    global2 = ~(-(~vec3<i32>(-1i, u_input.b, global2.x)) | (select(vec3<i32>(var_0.a.x, 19689i, global2.x), vec3<i32>(0i, global2.x, -329i), true) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.x), vec2<i32>(var_0.a.x, global2.x)), -1i, var_0.a.x)));
    global2 = -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, 35899i, u_input.b) << (u_input.d.yww % vec3<u32>(32u)), vec3<i32>(select(18893i, global2.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a.x, 22226i, global2.x), vec4<i32>(arg_1, arg_1, 14269i, global2.x)), abs(arg_1))), 2147483647i, -2147483647i);
    let var_1 = 268f;
    global0 = array<Struct_2, 21>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1480f, _wgslsmith_f_op_f32(f32(-1f) * -932f), false)), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), _wgslsmith_f_op_vec3_f32(sign(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(955f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-807f, -2084f, true)) + _wgslsmith_f_op_f32(-916f * 573f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1570f + -1594f) - _wgslsmith_f_op_f32(f32(-1f) * -1969f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-306f, 723f)))))), u_input.b));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 33011i, (_wgslsmith_clamp_i32(global2.x, global2.x, u_input.b) ^ u_input.b) ^ global2.x), abs(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(-5748i, u_input.b, 0i)), abs(vec3<i32>(global2.x, u_input.b, 3385i))), -min(vec3<i32>(u_input.b, u_input.b, global2.x), vec3<i32>(global2.x, global2.x, u_input.b)))));
    let var_2 = ~vec4<u32>(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.d.x >> ((u_input.d.x ^ u_input.d.x) % 32u)), select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.c, 10304u, u_input.d.x), u_input.d, vec4<bool>(true, false, false, true)), u_input.d), u_input.a, true), u_input.a >> (_wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.a), firstTrailingBit(59720u)) % 32u));
    let var_3 = Struct_2(Struct_1(countOneBits(~vec2<i32>(-2147483647i, 8409i)), u_input.d.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), Struct_1(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, global2.x), _wgslsmith_mult_vec2_i32(var_1.yz, vec2<i32>(var_1.x, -269i)), vec2<i32>(-15810i, u_input.b)), reverseBits(~(~vec2<u32>(var_2.x, var_2.x))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)))), ~vec2<u32>(var_2.x, reverseBits(4294967295u)), firstLeadingBit(-var_1.x), 2147483647i);
    let var_4 = !(false || (u_input.b != global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

