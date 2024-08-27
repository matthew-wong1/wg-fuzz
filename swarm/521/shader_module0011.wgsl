struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_2(Struct_1(vec2<i32>(-6490i, 8985i), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 2147483647i), -84967i), vec2<i32>(1i, 1073i))), Struct_3(Struct_2(Struct_1(vec2<i32>(23180i, 7166i), 39098i), Struct_1(vec2<i32>(-79905i, 28626i), -35779i), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec2<i32>(0i, 21204i), 1i), Struct_1(vec2<i32>(1i, -1i), -1i), vec2<i32>(69980i, 35918i))), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, 10083i), -39642i), Struct_1(vec2<i32>(-43673i, 39035i), -1i), vec2<i32>(27166i, 0i))), Struct_3(Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), 26819i), Struct_1(vec2<i32>(-18215i, -15822i), 26014i), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 6266i), 2147483647i), Struct_1(vec2<i32>(-16549i, -41358i), -1i), vec2<i32>(i32(-2147483648), -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(1024i, 0i), 1i), Struct_1(vec2<i32>(2147483647i, 1i), -24343i), vec2<i32>(-11952i, i32(-2147483648)))), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 1i), 1i), Struct_1(vec2<i32>(1i, -36718i), -26535i), vec2<i32>(-1i, -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 147i), -62538i), Struct_1(vec2<i32>(0i, 1i), 62105i), vec2<i32>(2147483647i, -7216i))), Struct_3(Struct_2(Struct_1(vec2<i32>(11281i, -13797i), 14545i), Struct_1(vec2<i32>(44985i, 2147483647i), 0i), vec2<i32>(18509i, 53889i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-11949i, 92030i), 35517i), Struct_1(vec2<i32>(1i, -9884i), 2147483647i), vec2<i32>(2147483647i, 51400i))), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -37279i), Struct_1(vec2<i32>(1i, 0i), -42159i), vec2<i32>(-53816i, -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-18503i, 11908i), 1i), Struct_1(vec2<i32>(-1i, -35987i), i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(47462i, 50281i), i32(-2147483648)), Struct_1(vec2<i32>(-13544i, 1i), i32(-2147483648)), vec2<i32>(1i, -75012i))), Struct_3(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -9080i), 2147483647i), Struct_1(vec2<i32>(22956i, 1i), 0i), vec2<i32>(1i, -49947i))), Struct_3(Struct_2(Struct_1(vec2<i32>(2147483647i, -34394i), -29742i), Struct_1(vec2<i32>(-1i, 13064i), 2147483647i), vec2<i32>(11847i, 42335i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, 51737i), -1i), Struct_1(vec2<i32>(i32(-2147483648), -3424i), 0i), vec2<i32>(-11233i, -1i))), Struct_3(Struct_2(Struct_1(vec2<i32>(-35414i, i32(-2147483648)), -10082i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -1i), vec2<i32>(-10797i, 2147483647i))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_0 = abs(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, -26028i) ^ vec3<i32>(arg_2.b, arg_0, arg_2.a.x), select(vec3<i32>(38307i, -1i, arg_2.a.x), vec3<i32>(arg_0, 16323i, arg_0), false))));
    var var_1 = -vec3<i32>(-_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, 2147483647i, var_0.x, -28214i), -vec4<i32>(arg_2.b, var_0.x, arg_0, 90257i)), -1i, -9260i);
    global0 = array<Struct_3, 18>();
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(arg_1.a.x, 35072i)), ~arg_3.a), ~arg_3.b, -(~(-arg_1.a.x)));
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(19885i, _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-14566i, 0i), vec2<i32>(2147483647i, -46502i)))), max(abs(arg_1.b), _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_3.a.x, 2147483647i), var_0), ~vec3<i32>(-53216i, -2147483647i, 1i) >> (~vec3<u32>(41481u, u_input.a.x, 4294967295u) % vec3<u32>(32u)))), countOneBits(_wgslsmith_sub_i32(~countOneBits(2147483647i), ~firstTrailingBit(-2147483647i))), -1i);
    var var_2 = -arg_3.b;
    var var_3 = Struct_4(Struct_2(Struct_1(-vec2<i32>(var_0.x, arg_3.a.x) ^ -vec2<i32>(1i, var_1.x), abs(-1i)), Struct_1(-vec2<i32>(var_0.x, arg_3.b), -abs(arg_3.b)), select(arg_3.a, arg_1.a, true)), Struct_1(var_0.xy, ~2147483647i), Struct_3(Struct_2(arg_3, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -46139i), vec2<i32>(9738i, arg_3.a.x)), var_1.x | 2147483647i), ~(~var_1.xw))), false);
    var_3 = Struct_4(Struct_2(Struct_1(var_3.c.a.a.a, var_3.c.a.a.a.x), Struct_1(var_0.yz, 26564i), vec2<i32>(i32(-1i) * -73i, 56103i)), Struct_1(countOneBits(var_0.zx), 1i), Struct_3(Struct_2(Struct_1(arg_1.a ^ var_3.c.a.b.a, arg_3.a.x << (12679u % 32u)), Struct_1(select(vec2<i32>(-4843i, 0i), arg_3.a, true), ~var_3.c.a.b.a.x), ~_wgslsmith_sub_vec2_i32(var_0.xx, vec2<i32>(-1i, -19553i)))), any(vec4<bool>(var_3.d, var_3.d, !var_3.d, false)));
    return vec4<i32>(var_0.x, -43216i, 847i, var_3.a.a.b);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_1, Struct_1(arg_0.zz, select(arg_0.x << (_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x) % 32u), -(42249i >> (u_input.b % 32u)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)))), vec2<i32>(43388i, abs(arg_1.a.x)));
    global0 = array<Struct_3, 18>();
    return _wgslsmith_f_op_f32(-456f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, -666f, select(true, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -423f)))))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(1u, Struct_1(vec2<i32>(1i, 1i), countOneBits(-12087i)), vec2<u32>(func_3(2698i, vec4<f32>(1696f, -874f, -299f, 949f), Struct_1(vec2<i32>(-34033i, 0i), 46011i)), ~48398u), Struct_1(vec2<i32>(20836i, -11673i), ~2878i)), Struct_1(vec2<i32>(1i, 1i), -20517i))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(1000f)))));
    global0 = array<Struct_3, 18>();
    return Struct_2(Struct_1(vec2<i32>(max(abs(2147483647i), -2147483647i), _wgslsmith_div_i32(-1i, 1i)), max(firstTrailingBit(-49346i), _wgslsmith_div_i32(1i, 2147483647i))), Struct_1(abs(vec2<i32>(1i, reverseBits(-36148i))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(5149i, func_4(u_input.a.x, Struct_1(vec2<i32>(11i, -8167i), 1i), u_input.a, Struct_1(vec2<i32>(16042i, -1i), 53416i)).x), -firstLeadingBit(18359i), 1i)), vec2<i32>(2147483647i, -1i));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 18>();
    let var_0 = func_2();
    let var_1 = vec3<u32>(16621u, 0u, u_input.b);
    let var_2 = Struct_3(func_2());
    let var_3 = Struct_4(var_2.a, var_2.a.a, Struct_3(var_2.a), select(true, !any(vec2<bool>(true, true)), u_input.b == var_1.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(false, select(any(vec2<bool>(true, false)) && true, func_1(), false), any(vec3<bool>(true, func_1(), true)), true));
    let var_1 = func_4(_wgslsmith_add_u32(func_3(34307i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -998f, -1571f, -460f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1263f, 332f, -597f, 742f)))), Struct_1(vec2<i32>(35690i, -3489i) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_mod_i32(18303i, 32144i))), u_input.a.x), Struct_1(select(select(vec2<i32>(-1i, -23054i), ~vec2<i32>(1i, -17259i), vec2<bool>(false, true)), ~func_2().b.a, select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)), -_wgslsmith_clamp_i32(i32(-1i) * -51929i, -10900i, -2147483647i)), u_input.a, func_2().a);
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_f_op_f32(func_5(vec4<i32>(0i, abs(-23482i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.xyz, var_1.xww), ~(~var_1.ywx)), max(-1i, -2147483647i) >> (~_wgslsmith_clamp_u32(43944u, u_input.a.x, 4294967295u) % 32u)), func_2().b));
    var_0 = true;
    var_0 = false;
    var_0 = ~firstTrailingBit(0u) == u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-9386i);
}

