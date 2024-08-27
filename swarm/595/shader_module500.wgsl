struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(false, vec3<i32>(0i, 10453i, 0i), Struct_1(vec3<i32>(78575i, -1i, -15089i), vec4<i32>(50311i, 2147483647i, 1306i, 2233i))), Struct_3(true, vec3<i32>(-1i, 0i, 9926i), Struct_1(vec3<i32>(-14193i, 1i, 11777i), vec4<i32>(1i, -1i, 0i, 1i))), Struct_3(true, vec3<i32>(-64654i, -50536i, 0i), Struct_1(vec3<i32>(-1i, -49949i, -1i), vec4<i32>(-48192i, i32(-2147483648), -1i, -1178i))), Struct_3(true, vec3<i32>(2147483647i, -15834i, 1i), Struct_1(vec3<i32>(i32(-2147483648), 0i, -4773i), vec4<i32>(-46913i, i32(-2147483648), 17575i, -1i))), Struct_3(false, vec3<i32>(1i, -1i, -55506i), Struct_1(vec3<i32>(3398i, 1i, 5003i), vec4<i32>(43315i, -5248i, 47595i, 11526i))), Struct_3(true, vec3<i32>(-36090i, 9773i, 0i), Struct_1(vec3<i32>(0i, -18748i, 0i), vec4<i32>(0i, i32(-2147483648), 15390i, -27567i))), Struct_3(true, vec3<i32>(1i, 16784i, 0i), Struct_1(vec3<i32>(1i, 12162i, 30868i), vec4<i32>(13217i, i32(-2147483648), -1i, -29975i))), Struct_3(false, vec3<i32>(1i, -34207i, -1i), Struct_1(vec3<i32>(2147483647i, 2147483647i, 30577i), vec4<i32>(80481i, -3079i, 28163i, 2147483647i))), Struct_3(false, vec3<i32>(-8656i, -52448i, 10538i), Struct_1(vec3<i32>(-47436i, -67948i, -9120i), vec4<i32>(-59265i, 0i, i32(-2147483648), -1i))), Struct_3(true, vec3<i32>(26559i, 0i, -32556i), Struct_1(vec3<i32>(33457i, 0i, 1i), vec4<i32>(2147483647i, 2147483647i, -5338i, 16691i))), Struct_3(false, vec3<i32>(66129i, 7740i, -6122i), Struct_1(vec3<i32>(1i, 19786i, 0i), vec4<i32>(0i, 1i, -38400i, 33816i))), Struct_3(true, vec3<i32>(2147483647i, 2147483647i, 31402i), Struct_1(vec3<i32>(-1i, i32(-2147483648), -54224i), vec4<i32>(-27210i, -22765i, 1i, -7245i))), Struct_3(true, vec3<i32>(8501i, -1i, 39972i), Struct_1(vec3<i32>(2147483647i, 1i, -13615i), vec4<i32>(1i, -13339i, -22896i, -24348i))), Struct_3(true, vec3<i32>(0i, 14973i, 3877i), Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), vec4<i32>(1i, 1i, 0i, 1i))), Struct_3(true, vec3<i32>(i32(-2147483648), -25534i, -1i), Struct_1(vec3<i32>(38400i, 2147483647i, 21680i), vec4<i32>(-273i, -5907i, -33956i, -37782i))), Struct_3(false, vec3<i32>(i32(-2147483648), 4516i, -1i), Struct_1(vec3<i32>(1i, -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 27532i, -967i))), Struct_3(true, vec3<i32>(-80989i, -18756i, 0i), Struct_1(vec3<i32>(0i, -40532i, -1i), vec4<i32>(5851i, 2147483647i, -30884i, -1i))), Struct_3(false, vec3<i32>(1i, 77343i, 2147483647i), Struct_1(vec3<i32>(0i, 10283i, 2147483647i), vec4<i32>(29722i, -58537i, 2147483647i, -1i))), Struct_3(false, vec3<i32>(0i, -47229i, i32(-2147483648)), Struct_1(vec3<i32>(53017i, -30933i, 14965i), vec4<i32>(-47998i, -7867i, 0i, -8041i))), Struct_3(true, vec3<i32>(-1i, i32(-2147483648), -18749i), Struct_1(vec3<i32>(-25843i, 0i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i))), Struct_3(true, vec3<i32>(21820i, -19505i, 1i), Struct_1(vec3<i32>(1i, 2147483647i, 2885i), vec4<i32>(46194i, 1i, 1i, i32(-2147483648)))));

var<private> global2: i32;

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(false, vec3<i32>(i32(-2147483648), 1i, -1i), Struct_1(vec3<i32>(1i, -21669i, 1i), vec4<i32>(-34609i, 2147483647i, i32(-2147483648), i32(-2147483648)))), Struct_3(true, vec3<i32>(28887i, -1i, 6437i), Struct_1(vec3<i32>(-1i, 2147483647i, -20551i), vec4<i32>(i32(-2147483648), 10253i, 0i, 25420i))), Struct_3(true, vec3<i32>(-35903i, 0i, 3635i), Struct_1(vec3<i32>(33562i, i32(-2147483648), -602i), vec4<i32>(92383i, 0i, 1i, -49232i))), Struct_3(true, vec3<i32>(1585i, 32783i, 0i), Struct_1(vec3<i32>(1i, 41988i, -55649i), vec4<i32>(0i, 1i, 1i, -1i))), Struct_3(true, vec3<i32>(-1i, -9691i, 2147483647i), Struct_1(vec3<i32>(11389i, 46141i, 2147483647i), vec4<i32>(-48519i, 0i, 1i, -1i))), Struct_3(false, vec3<i32>(1i, 28393i, -1i), Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), vec4<i32>(-8243i, i32(-2147483648), 42778i, -1i))), Struct_3(true, vec3<i32>(21955i, 81476i, -29322i), Struct_1(vec3<i32>(1i, 2147483647i, 17297i), vec4<i32>(28729i, 23388i, 32990i, 16467i))), Struct_3(true, vec3<i32>(-16006i, -1i, -15280i), Struct_1(vec3<i32>(25863i, -28036i, 2147483647i), vec4<i32>(-59016i, -44508i, 2147483647i, 33040i))), Struct_3(true, vec3<i32>(-10864i, 0i, 18298i), Struct_1(vec3<i32>(0i, 1i, 36150i), vec4<i32>(-1i, -6514i, 39748i, 21856i))), Struct_3(false, vec3<i32>(12592i, 40107i, i32(-2147483648)), Struct_1(vec3<i32>(1i, 35683i, 1i), vec4<i32>(11391i, 42487i, -9776i, 12248i))), Struct_3(false, vec3<i32>(0i, -1i, 2147483647i), Struct_1(vec3<i32>(4710i, i32(-2147483648), -28057i), vec4<i32>(0i, -1647i, 42697i, 2147483647i))), Struct_3(true, vec3<i32>(-1i, i32(-2147483648), 17097i), Struct_1(vec3<i32>(-1i, 1i, 3005i), vec4<i32>(-10249i, 1i, 0i, i32(-2147483648)))), Struct_3(false, vec3<i32>(-31192i, 2147483647i, -43009i), Struct_1(vec3<i32>(i32(-2147483648), 63215i, -1i), vec4<i32>(-4665i, 22943i, i32(-2147483648), 5104i))), Struct_3(false, vec3<i32>(2147483647i, 3261i, 13275i), Struct_1(vec3<i32>(-1i, 40228i, 0i), vec4<i32>(2147483647i, 13448i, 2147483647i, -1i))), Struct_3(true, vec3<i32>(-54541i, 2147483647i, 2147483647i), Struct_1(vec3<i32>(1i, 0i, 50024i), vec4<i32>(-69910i, 2147483647i, 0i, 29645i))), Struct_3(true, vec3<i32>(1i, 0i, 7529i), Struct_1(vec3<i32>(-17392i, 1i, 19813i), vec4<i32>(1i, 2607i, 41958i, -1i))), Struct_3(true, vec3<i32>(32431i, 0i, 11461i), Struct_1(vec3<i32>(-25766i, 2147483647i, i32(-2147483648)), vec4<i32>(29541i, -14068i, 2147483647i, -1i))), Struct_3(true, vec3<i32>(2147483647i, i32(-2147483648), 29837i), Struct_1(vec3<i32>(-1i, -30674i, 2147483647i), vec4<i32>(27391i, -22833i, -1i, -65802i))), Struct_3(true, vec3<i32>(0i, 2147483647i, 2147483647i), Struct_1(vec3<i32>(38380i, 69163i, 2147483647i), vec4<i32>(i32(-2147483648), 60369i, -35712i, 29853i))));

var<private> global4: array<f32, 32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(26857u, 32u)] * 648f);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(37704u, 40031u << (0u % 32u), arg_3.x, ~_wgslsmith_sub_u32(global0.c.x, _wgslsmith_div_u32(u_input.b, arg_3.x))), _wgslsmith_div_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.x, 1u, 86340u, arg_3.x), vec4<u32>(global0.c.x, 58394u, global0.c.x, u_input.b)) << (~vec4<u32>(arg_3.x, u_input.b, 4294967295u, global0.c.x) % vec4<u32>(32u))), vec4<u32>(~(~global0.c.x), _wgslsmith_dot_vec2_u32(select(arg_3.zz, vec2<u32>(1u, 1u), vec2<bool>(arg_0.x, false)), vec2<u32>(1u, 1u)), _wgslsmith_mult_u32(max(u_input.d.x, u_input.b), u_input.d.x), global0.c.x)));
    var var_2 = Struct_4(global0.c.x, arg_3.x);
    return arg_2;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-1581f * -1632f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) - global4[_wgslsmith_index_u32(~4294967295u, 32u)])))));
    global1 = array<Struct_3, 21>();
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f - global4[_wgslsmith_index_u32(u_input.b, 32u)]) - -209f), _wgslsmith_f_op_f32(func_2(vec2<bool>(false, global0.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(5301i, u_input.c, global0.a.b.x, u_input.c), vec4<i32>(global0.a.b.x, u_input.a, -1i, u_input.c)), var_0.x, ~global0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(48543u, 32u)]))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.c.x, u_input.d.x, u_input.d.x, 0u)), vec4<u32>(u_input.d.x, 90665u, 32056u, u_input.b)), 32u)])));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(827f * -642f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f)));
}

fn func_3(arg_0: bool) -> bool {
    global3 = array<Struct_3, 19>();
    global0 = Struct_2(global0.b, Struct_1(-vec3<i32>(u_input.c, -32949i, reverseBits(global0.a.b.x)), abs(vec4<i32>(-2147483647i, _wgslsmith_add_i32(27046i, -34974i), _wgslsmith_mult_i32(u_input.c, -50414i), i32(-1i) * -24714i))), ~(~(~abs(vec3<u32>(global0.c.x, 2448u, global0.c.x)))), !(!(!(arg_0 || global0.d))), global0.e);
    let var_0 = firstTrailingBit(vec2<u32>(abs(~21783u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global0.c.x) & u_input.b, ~(u_input.d.x >> (u_input.b % 32u)))));
    var var_1 = Struct_1(global0.a.a, firstTrailingBit(~max(global0.b.b, global0.a.b) << (~vec4<u32>(21647u, u_input.d.x, var_0.x, 4294967295u) % vec4<u32>(32u))));
    let var_2 = select(-(~_wgslsmith_add_i32(u_input.a, 47322i)), _wgslsmith_dot_vec3_i32(var_1.a, global0.a.a) >> (select(~u_input.b >> (1u % 32u), 0u, arg_0) % 32u), any(global0.e.yx));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(global0.c.x, _wgslsmith_sub_u32(~(~global0.c.x), abs(u_input.b))), 1u, ~4294967295u, u_input.b);
    let var_1 = global0.e.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 32u)] + -218f) - global4[_wgslsmith_index_u32(var_0.x, 32u)]) + 256f)));
    global1 = array<Struct_3, 21>();
    let var_3 = global0.e.zx;
    var var_4 = Struct_1(countOneBits(~(vec3<i32>(-1i) * -vec3<i32>(1i, 0i, 0i))), select(~global0.a.b, vec4<i32>(~(~16397i), ~global0.b.b.x, u_input.c, u_input.a), vec4<bool>(true, false, func_3(!global0.e.x), false)));
    global2 = -_wgslsmith_add_i32(var_4.b.x, reverseBits(-2147483647i));
    var var_5 = global1[_wgslsmith_index_u32(~reverseBits(59148u), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(firstLeadingBit(abs(u_input.c))), -_wgslsmith_mult_i32(var_4.a.x, -2147483647i)), var_5.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(646f, -752f))))), countOneBits(countOneBits(vec2<u32>(u_input.b, var_0.x))) & ~(vec2<u32>(var_0.x, global0.c.x) ^ vec2<u32>(global0.c.x, 28300u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(global0.c, var_0.wzx)) | ~var_0.wz, ~(~_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, var_0.x), u_input.d)), u_input.d));
}

