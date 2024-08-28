struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(11315u, 0u, 92632u, 4294967295u), vec2<i32>(-18982i, 1i), 36311i);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<u32, 19> = array<u32, 19>(1u, 0u, 63340u, 56878u, 102174u, 66379u, 2511u, 21043u, 1u, 1u, 1u, 16751u, 12056u, 0u, 58295u, 0u, 0u, 4294967295u, 22464u);

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(56049u, 26028u, 25928u, 61671u), vec2<i32>(1i, -1i), 1i), Struct_1(vec4<u32>(0u, 5245u, 1u, 4294967295u), vec2<i32>(1i, -45658i), 1i), Struct_1(vec4<u32>(27789u, 14786u, 4294967295u, 62034u), vec2<i32>(-6841i, 1i), 1i), Struct_1(vec4<u32>(3766u, 72235u, 0u, 1u), vec2<i32>(11545i, -15803i), 0i), Struct_1(vec4<u32>(4174u, 14346u, 18647u, 1u), vec2<i32>(0i, 2147483647i), -618i), Struct_1(vec4<u32>(78292u, 1u, 7883u, 87411u), vec2<i32>(2385i, 29546i), 1i), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 12039u), vec2<i32>(-1i, i32(-2147483648)), -1i), Struct_1(vec4<u32>(0u, 0u, 0u, 104950u), vec2<i32>(2147483647i, -45263i), -8386i), Struct_1(vec4<u32>(1u, 27679u, 1u, 1u), vec2<i32>(-31008i, 1i), -1i), Struct_1(vec4<u32>(4294967295u, 44414u, 1u, 23667u), vec2<i32>(2147483647i, -1i), 31332i), Struct_1(vec4<u32>(12759u, 1u, 0u, 0u), vec2<i32>(2147483647i, 0i), i32(-2147483648)), Struct_1(vec4<u32>(1u, 61526u, 4294967295u, 82719u), vec2<i32>(-24356i, -7526i), 33417i), Struct_1(vec4<u32>(0u, 57250u, 7194u, 1u), vec2<i32>(i32(-2147483648), -5183i), 13417i), Struct_1(vec4<u32>(50100u, 70587u, 4294967295u, 54950u), vec2<i32>(0i, 21702i), -1i), Struct_1(vec4<u32>(0u, 34101u, 1u, 4294967295u), vec2<i32>(-52970i, 24596i), -1i), Struct_1(vec4<u32>(4294967295u, 7290u, 587u, 31982u), vec2<i32>(-34787i, 2147483647i), 29593i), Struct_1(vec4<u32>(50883u, 5883u, 42885u, 65719u), vec2<i32>(-32773i, 47310i), -8940i), Struct_1(vec4<u32>(77387u, 4294967295u, 22727u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 0u, 79029u, 13874u), vec2<i32>(1i, 16038i), 21730i), Struct_1(vec4<u32>(7145u, 4294967295u, 64333u, 41003u), vec2<i32>(19017i, 0i), 44309i), Struct_1(vec4<u32>(85088u, 16486u, 32743u, 103380u), vec2<i32>(0i, 5049i), 35151i), Struct_1(vec4<u32>(4294967295u, 32558u, 47844u, 1u), vec2<i32>(i32(-2147483648), 37366i), -5351i), Struct_1(vec4<u32>(14548u, 23938u, 24184u, 26916u), vec2<i32>(60752i, -7426i), 1i), Struct_1(vec4<u32>(68394u, 12658u, 51769u, 0u), vec2<i32>(2147483647i, 91113i), 0i), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 2505u), vec2<i32>(-55624i, -1i), 1i), Struct_1(vec4<u32>(28928u, 36749u, 3444u, 79654u), vec2<i32>(-1i, -5197i), 11173i), Struct_1(vec4<u32>(1u, 0u, 23781u, 18198u), vec2<i32>(-3938i, 6155i), i32(-2147483648)), Struct_1(vec4<u32>(6359u, 10709u, 0u, 5421u), vec2<i32>(2147483647i, i32(-2147483648)), -21055i), Struct_1(vec4<u32>(0u, 0u, 49239u, 1u), vec2<i32>(9563i, -41253i), i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 0u, 28518u, 4294967295u), vec2<i32>(21464i, 16237i), -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    global4 = array<Struct_1, 30>();
    let var_0 = reverseBits(abs(~abs(abs(u_input.d))));
    let var_1 = vec3<bool>(!all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), false), all(vec4<bool>(false, true, true, false)))), true, true);
    let var_2 = false;
    global0 = vec3<i32>(~(~var_0.x), ~1i, -2147483647i);
    return ~(~vec4<i32>(u_input.d.x, u_input.a, ~var_0.x, u_input.c.x) >> (vec4<u32>(max(max(23272u, global1.a.x), 4912u), global3[_wgslsmith_index_u32(global1.a.x, 19u)], reverseBits(max(global1.a.x, global1.a.x)), 34807u) % vec4<u32>(32u)));
}

fn func_3(arg_0: vec4<i32>) -> Struct_1 {
    global4 = array<Struct_1, 30>();
    let var_0 = vec4<f32>(1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) + _wgslsmith_div_f32(1153f, -1000f)) + _wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(-192f * -520f)))), -263f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2023f))), -256f)));
    var var_1 = ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.a.zy, vec2<u32>(59364u | _wgslsmith_sub_u32(global1.a.x, global1.a.x), 1u)), 19u)];
    var_1 = global3[_wgslsmith_index_u32(69482u, 19u)];
    var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(~global1.a.x, _wgslsmith_div_u32(global1.a.x, global1.a.x)), _wgslsmith_dot_vec3_u32(global1.a.wwz, _wgslsmith_clamp_vec3_u32(global1.a.yzy, global1.a.ywx, vec3<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global1.a.x))), 1u, _wgslsmith_mult_u32(global1.a.x, 0u) & global3[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_clamp_vec4_u32(~((global1.a << (vec4<u32>(1u, 4294967295u, 38021u, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(100792u, 40277u, 31971u, global1.a.x), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41497u, 19u)], 19u)], 1u, 1807u, 18182u))), vec4<u32>(global3[_wgslsmith_index_u32(~22338u, 19u)], _wgslsmith_sub_u32(~4294967295u, ~4294967295u), 10929u, min(1u, 1u) | countOneBits(global3[_wgslsmith_index_u32(global1.a.x, 19u)])), ~(global1.a ^ vec4<u32>(4294967295u, 843u, global1.a.x, global3[_wgslsmith_index_u32(global1.a.x, 19u)]))));
    return Struct_1(~max(abs(vec4<u32>(global1.a.x, 4294967295u, global1.a.x, 20589u)), ~vec4<u32>(global1.a.x, global1.a.x, 1u, 4294967295u)) | reverseBits(vec4<u32>(20692u, global1.a.x, ~93114u, 118569u)), vec2<i32>(_wgslsmith_add_i32(global1.c, countOneBits(func_2(vec2<f32>(411f, var_0.x)).x)), global0.x), ~((arg_0.x << (~56981u % 32u)) ^ countOneBits(-20206i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    global4 = array<Struct_1, 30>();
    global1 = func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, arg_1, 1655i), func_2(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-647f - -1000f)))));
    let var_0 = countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(38052u, 21770u, arg_0.a.x) ^ global1.a.zxw), _wgslsmith_add_vec3_u32(min(global1.a.xwz, global1.a.wzz), select(arg_0.a.yyw, global1.a.wxw, vec3<bool>(false, true, false)))), global1.a.yxx));
    global3 = array<u32, 19>();
    let var_1 = _wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, var_0.x), 19u)], ~(~global1.a.x));
    return ~var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = false && !arg_2;
    var var_1 = ~((0u >> (arg_0.a.x % 32u)) << (4294967295u % 32u));
    var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, global1.a.x & 4294967295u), 19u)];
    global1 = arg_1;
    global0 = _wgslsmith_div_vec3_i32(abs(firstLeadingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(-8082i, arg_0.b.x, -2147483647i), u_input.d))), max(max(u_input.d, u_input.d), abs(vec3<i32>(arg_1.b.x, arg_3.b.x, 419i) | ~vec3<i32>(22697i, 9831i, global0.x))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -34397i;
    var var_1 = u_input.d;
    let var_2 = global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(global1.a.x), _wgslsmith_mult_u32(39778u, 1u)), 19u)] ^ ~_wgslsmith_mod_u32(36651u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4746u, 19u)], 1u, 1u), global1.a.wxy), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a.x, 19u)], 19u)], 19u)], 42916u, 4294967295u))), 30u)];
    global0 = vec3<i32>(var_2.b.x, _wgslsmith_dot_vec3_i32(u_input.d ^ ~_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(2147483647i, u_input.b, 35530i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, 71851i, 1i), vec3<i32>(-43097i, var_2.b.x, 28760i)), select(u_input.d, vec3<i32>(-6258i, u_input.d.x, 22371i), vec3<bool>(false, true, false))) & u_input.d), -9529i);
    var var_3 = func_4(global4[_wgslsmith_index_u32(global1.a.x, 30u)], Struct_1(~var_2.a << (vec4<u32>(abs(var_2.a.x), select(global3[_wgslsmith_index_u32(var_2.a.x, 19u)], 0u, false), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 52882u), vec2<u32>(global3[_wgslsmith_index_u32(1u, 19u)], global1.a.x)), _wgslsmith_add_u32(global1.a.x, 1u)) % vec4<u32>(32u)), select(countOneBits(var_1.xz & vec2<i32>(1i, 16751i)), -var_1.yx, false), 2147483647i), -firstLeadingBit(17728i) <= (-(u_input.c.x & global0.x) | ~abs(2147483647i)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.x, ~0u >> (_wgslsmith_div_u32(1u, 24676u) % 32u)) | min(global3[_wgslsmith_index_u32(1u << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31083u, 19u)], 19u)] % 32u), 19u)], ~func_1(Struct_1(global1.a, vec2<i32>(2147483647i, var_2.b.x), var_1.x), -34350i)), 30u)]);
    let var_4 = select(select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(true, false, true) && true), select(vec2<bool>(all(vec4<bool>(false, false, false, true)), true), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), false)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))), vec2<bool>(true, true))), vec2<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)))), !(!(!all(vec4<bool>(true, false, true, true)))));
    let var_5 = !vec2<bool>(var_4.x, true);
    let var_6 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(max(0i, firstTrailingBit(~var_3.b.x)), global1.a.xz, -_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c, var_3.c, 2147483647i), u_input.d)), 42121i));
}

