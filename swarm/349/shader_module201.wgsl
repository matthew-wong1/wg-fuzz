struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<i32>(31614i, 0i), -1i, vec4<i32>(6834i, -10528i, i32(-2147483648), -39267i), false), Struct_1(vec2<i32>(48483i, 0i), 1i, vec4<i32>(-78755i, -6146i, -61469i, 23556i), true), Struct_1(vec2<i32>(2147483647i, 2147483647i), 1852i, vec4<i32>(i32(-2147483648), 50115i, 2147483647i, i32(-2147483648)), true), Struct_1(vec2<i32>(i32(-2147483648), -32306i), 15272i, vec4<i32>(-3322i, -10195i, i32(-2147483648), -59087i), false), Struct_1(vec2<i32>(2147483647i, -26867i), 1i, vec4<i32>(-31814i, 1i, -26369i, -27710i), false), Struct_1(vec2<i32>(1i, 0i), 52398i, vec4<i32>(30179i, -9472i, -9972i, -4935i), false), Struct_1(vec2<i32>(-67876i, -1i), 19241i, vec4<i32>(-1i, 29071i, -1i, 1i), true), Struct_1(vec2<i32>(-1i, 12438i), 0i, vec4<i32>(35918i, 0i, -1i, 35702i), false), Struct_1(vec2<i32>(15731i, 2147483647i), i32(-2147483648), vec4<i32>(-40584i, 25959i, 945i, i32(-2147483648)), true), Struct_1(vec2<i32>(i32(-2147483648), -15463i), 2147483647i, vec4<i32>(-11677i, -1i, i32(-2147483648), 0i), true), Struct_1(vec2<i32>(-36993i, 27390i), 1190i, vec4<i32>(0i, -54991i, 2147483647i, 0i), false), Struct_1(vec2<i32>(-62571i, 1076i), -17760i, vec4<i32>(0i, 2147483647i, 69974i, 10330i), false), Struct_1(vec2<i32>(-38117i, i32(-2147483648)), -13960i, vec4<i32>(17727i, 2147483647i, 0i, 33226i), false), Struct_1(vec2<i32>(0i, 2147483647i), 48553i, vec4<i32>(11243i, 2147483647i, -1i, i32(-2147483648)), false), Struct_1(vec2<i32>(-23153i, 2147483647i), -1i, vec4<i32>(0i, 2147483647i, 21587i, 23919i), false), Struct_1(vec2<i32>(i32(-2147483648), -35800i), 2147483647i, vec4<i32>(-39824i, -28072i, 1i, 86224i), false), Struct_1(vec2<i32>(-9408i, 13437i), 2147483647i, vec4<i32>(8335i, -1i, 561i, 75692i), true), Struct_1(vec2<i32>(-17514i, 1i), -49817i, vec4<i32>(-1429i, 1i, -24534i, 1i), true), Struct_1(vec2<i32>(-1i, 2147483647i), -41241i, vec4<i32>(-34216i, 30175i, -13876i, 22955i), false), Struct_1(vec2<i32>(i32(-2147483648), -22072i), -15148i, vec4<i32>(0i, 30217i, 1i, 0i), true), Struct_1(vec2<i32>(1i, -19751i), 0i, vec4<i32>(2147483647i, 1i, 10159i, 1i), false), Struct_1(vec2<i32>(i32(-2147483648), -13818i), 0i, vec4<i32>(-16279i, 1i, -18209i, -56155i), true), Struct_1(vec2<i32>(1i, -1i), 15785i, vec4<i32>(2147483647i, -4468i, -28656i, 2147483647i), false), Struct_1(vec2<i32>(-40287i, 28063i), 2147483647i, vec4<i32>(2147483647i, -66327i, -7082i, 0i), true), Struct_1(vec2<i32>(43759i, 1i), -22434i, vec4<i32>(-1i, -8891i, -24357i, 88802i), false), Struct_1(vec2<i32>(-1i, 0i), 65690i, vec4<i32>(2147483647i, 7200i, 1i, 0i), false), Struct_1(vec2<i32>(2147483647i, -1i), -34116i, vec4<i32>(0i, 1i, i32(-2147483648), 2147483647i), true), Struct_1(vec2<i32>(6267i, 2147483647i), -41805i, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), -28972i), true), Struct_1(vec2<i32>(2147483647i, 3973i), 1i, vec4<i32>(27506i, 64212i, -25205i, -1i), false), Struct_1(vec2<i32>(-32961i, 61366i), -9177i, vec4<i32>(-14940i, -7655i, 0i, 5702i), true), Struct_1(vec2<i32>(1i, 1i), 10391i, vec4<i32>(56882i, 1i, i32(-2147483648), -55591i), true));

var<private> global3: bool = false;

var<private> global4: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(true, Struct_2(13494i, Struct_1(vec2<i32>(-9598i, 1i), -44803i, vec4<i32>(1i, 1i, 35793i, 48095i), true), 19931i), true), Struct_3(false, Struct_2(0i, Struct_1(vec2<i32>(i32(-2147483648), -27958i), 38486i, vec4<i32>(-9345i, -53146i, i32(-2147483648), -1i), true), 0i), false), Struct_3(false, Struct_2(0i, Struct_1(vec2<i32>(3347i, -18339i), -1i, vec4<i32>(i32(-2147483648), 2147483647i, -76993i, 0i), true), 4081i), true), Struct_3(false, Struct_2(2147483647i, Struct_1(vec2<i32>(-25917i, 53781i), -35242i, vec4<i32>(0i, -56116i, 16832i, 11663i), true), 55854i), true), Struct_3(false, Struct_2(-36651i, Struct_1(vec2<i32>(1i, 11757i), 37341i, vec4<i32>(0i, -27223i, -1i, 2147483647i), true), 6643i), false), Struct_3(true, Struct_2(i32(-2147483648), Struct_1(vec2<i32>(0i, -23452i), -31793i, vec4<i32>(-43351i, 0i, -1i, 2147483647i), false), -41253i), false), Struct_3(false, Struct_2(31890i, Struct_1(vec2<i32>(0i, 2147483647i), -3940i, vec4<i32>(-1i, 28809i, -1i, 2147483647i), true), i32(-2147483648)), false), Struct_3(false, Struct_2(-27040i, Struct_1(vec2<i32>(i32(-2147483648), -33171i), 29734i, vec4<i32>(-1i, 0i, -15848i, 0i), false), i32(-2147483648)), true), Struct_3(true, Struct_2(0i, Struct_1(vec2<i32>(-1i, 11262i), 19187i, vec4<i32>(2147483647i, 0i, 1i, i32(-2147483648)), false), i32(-2147483648)), true), Struct_3(true, Struct_2(-26935i, Struct_1(vec2<i32>(-14483i, 1i), 26470i, vec4<i32>(-64902i, i32(-2147483648), -1i, -2655i), true), i32(-2147483648)), false), Struct_3(true, Struct_2(-3978i, Struct_1(vec2<i32>(2147483647i, 38577i), -27350i, vec4<i32>(-1i, i32(-2147483648), 2026i, -1i), true), 30550i), true), Struct_3(false, Struct_2(-43837i, Struct_1(vec2<i32>(2147483647i, 28396i), 0i, vec4<i32>(10341i, 40988i, i32(-2147483648), 20462i), true), -12537i), true), Struct_3(false, Struct_2(-7525i, Struct_1(vec2<i32>(-1i, 1i), 798i, vec4<i32>(i32(-2147483648), 0i, -15688i, 23733i), false), -45046i), false), Struct_3(true, Struct_2(-41824i, Struct_1(vec2<i32>(0i, 2147483647i), 2147483647i, vec4<i32>(-35994i, -1i, 1i, 12216i), true), 0i), true));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.wz, vec2<f32>(1015f, arg_1.x)))))));
    global4 = array<Struct_3, 14>();
    let var_1 = Struct_2(abs(~(-27428i)), Struct_1(countOneBits(vec2<i32>(0i, -1i)), 11928i, vec4<i32>(1i, 1i, abs(_wgslsmith_mult_i32(2147483647i, u_input.b.x)), -18122i), true), u_input.b.x);
    let var_2 = firstTrailingBit(u_input.a) << (abs(~u_input.a) % vec4<u32>(32u));
    global3 = true;
    return arg_2.a.x;
}

fn func_3() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d, 31u)];
    var var_1 = Struct_1(~(-var_0.c.wz), ~var_0.b, vec4<i32>(-1i) * -u_input.b, global1.d);
    let var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_3 = global4[_wgslsmith_index_u32(u_input.c.x, 14u)];
    var_0 = Struct_1(vec2<i32>(1i, -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-808i, 1i, 2147483647i, var_1.c.x), vec4<i32>(var_1.a.x, -5910i, 17295i, -50025i)))), _wgslsmith_mult_i32(-global1.b, min(firstTrailingBit(-25530i), firstTrailingBit(1i))), _wgslsmith_mult_vec4_i32(var_0.c, _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, var_0.b, 1i, var_2.c.x), _wgslsmith_div_vec4_i32(var_2.c, global1.c))), false);
    return !(!(!global1.d));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~(~24124u)), _wgslsmith_div_u32(u_input.e.x, 0u)), 31u)];
    let var_1 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~(~u_input.e.xy)), _wgslsmith_add_vec2_u32(~u_input.c, vec2<u32>(u_input.e.x, 10203u)) | vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.c.x), u_input.a.wzz), u_input.a.x)) << (u_input.c % vec2<u32>(32u));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f * 2049f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1545f))))), _wgslsmith_f_op_f32(f32(-1f) * -183f));
    var var_3 = arg_2.b;
    global2 = array<Struct_1, 31>();
    return var_3.b;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = func_4(vec2<i32>(44849i, -select(_wgslsmith_mod_i32(-1i, u_input.b.x), _wgslsmith_div_i32(global1.b, 0i), !global1.d)), Struct_1(vec2<i32>(_wgslsmith_mult_i32(func_2(vec4<bool>(global1.d, false, global1.d, global1.d), vec4<f32>(-346f, -1326f, 622f, -686f), global2[_wgslsmith_index_u32(0u, 31u)]), 1i), 2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(39317i, -48434i, global1.a.x), vec3<i32>(36950i, u_input.b.x, 2147483647i)), ~vec3<i32>(2147483647i, 47457i, global1.a.x)), reverseBits(_wgslsmith_sub_vec3_i32(u_input.b.yxz, vec3<i32>(-41821i, -46675i, u_input.b.x)))), -(~select(u_input.b, u_input.b, vec4<bool>(true, global1.d, false, true))), func_3()), global4[_wgslsmith_index_u32(0u, 14u)]);
    var var_1 = firstLeadingBit(global1.a.x);
    global4 = array<Struct_3, 14>();
    var_1 = firstLeadingBit(2147483647i);
    return vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(~1u), arg_0), 45638u, 51171u);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>) -> u32 {
    global2 = array<Struct_1, 31>();
    let var_0 = all(!(!(!vec4<bool>(false, false, false, global1.d)))) | any(vec3<bool>(false, all(vec4<bool>(false, false, arg_0.b.b.d, global1.d)), true));
    global1 = Struct_1(~vec2<i32>(~_wgslsmith_mult_i32(arg_0.b.a, u_input.b.x), _wgslsmith_mod_i32(global1.b, select(60104i, 1i, global1.d))), arg_0.b.a, vec4<i32>(0i & ~u_input.b.x, 2147483647i, _wgslsmith_clamp_i32(func_2(vec4<bool>(global1.d, var_0, var_0, var_0), vec4<f32>(171f, 742f, 549f, 233f), Struct_1(global1.c.yw, 19298i, vec4<i32>(2147483647i, u_input.b.x, 1i, arg_0.b.b.c.x), true)) ^ arg_0.b.c, 2147483647i, 2147483647i), max(-(~global1.c.x), 2147483647i)), true);
    var var_1 = firstTrailingBit(u_input.b);
    let var_2 = Struct_3(false, Struct_2(var_1.x, func_4(~vec2<i32>(u_input.b.x, arg_0.b.c), Struct_1(select(vec2<i32>(arg_0.b.c, -2147483647i), vec2<i32>(0i, -1i), false), select(var_1.x, -1i, true), arg_0.b.b.c, true), arg_0), global1.c.x), false);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(689f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(753f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1628f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(509f)) + _wgslsmith_f_op_f32(423f - 501f)) + _wgslsmith_div_f32(-374f, _wgslsmith_f_op_f32(step(716f, 1325f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(1123f - 1277f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1108f, 1121f)), 488f))));
    global0 = u_input.d;
    let var_1 = global1.d;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-657f + -560f), _wgslsmith_div_f32(278f, 1416f))))))));
    global0 = ~_wgslsmith_mult_u32(reverseBits(u_input.e.x), _wgslsmith_add_u32(~u_input.c.x, ~1u) >> (func_5(Struct_3(global1.d, Struct_2(global1.c.x, global2[_wgslsmith_index_u32(70692u, 31u)], u_input.b.x), global1.d), func_1(u_input.c.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-8903i), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, reverseBits(4294967295u), select(1u, 0u, global1.d && global1.d), u_input.c.x), ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1682f, _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(f32(-1f) * -2312f))));
}

