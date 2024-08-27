struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, i32(-2147483648), -2592i, i32(-2147483648)), true, -591f, true), vec4<i32>(33558i, 0i, i32(-2147483648), 16188i), Struct_2(vec2<bool>(false, true), vec2<bool>(true, true)), 19821u, Struct_2(vec2<bool>(true, true), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -46597i, -84951i, 1i), true, -100f, false), vec4<i32>(0i, -78444i, 2147483647i, -15685i), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), 4294967295u, Struct_2(vec2<bool>(false, true), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(28510i, 2147483647i, -23487i, 2147483647i), false, -1594f, false), vec4<i32>(1i, i32(-2147483648), 0i, -53224i), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false)), 22928u, Struct_2(vec2<bool>(false, true), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i), true, 810f, true), vec4<i32>(54244i, 2147483647i, -3740i, -1i), Struct_2(vec2<bool>(false, false), vec2<bool>(true, true)), 21419u, Struct_2(vec2<bool>(true, false), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, i32(-2147483648), -1i, 1i), false, 477f, false), vec4<i32>(20704i, 1i, 2147483647i, 22018i), Struct_2(vec2<bool>(true, true), vec2<bool>(true, true)), 10245u, Struct_2(vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(12062i, -39209i, 15056i, 1i), false, -1758f, false), vec4<i32>(-9437i, -1i, 2147483647i, 43423i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 0u, Struct_2(vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(-5367i, 9784i, 28012i, -29084i), true, -409f, false), vec4<i32>(-19034i, 93824i, 12529i, 6241i), Struct_2(vec2<bool>(false, true), vec2<bool>(false, false)), 4294967295u, Struct_2(vec2<bool>(false, false), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(6900i, -1i, 71308i, 39017i), false, 1038f, false), vec4<i32>(2147483647i, -45279i, 1i, -22127i), Struct_2(vec2<bool>(true, true), vec2<bool>(true, false)), 0u, Struct_2(vec2<bool>(false, true), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), true, -741f, false), vec4<i32>(-15739i, -1i, -65862i, i32(-2147483648)), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true)), 1u, Struct_2(vec2<bool>(false, true), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(36512i, -14058i, 34989i, i32(-2147483648)), false, -1409f, false), vec4<i32>(-14064i, 56498i, 16819i, i32(-2147483648)), Struct_2(vec2<bool>(true, true), vec2<bool>(true, true)), 63731u, Struct_2(vec2<bool>(true, true), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(-1265i, 43311i, -2866i, 29813i), true, 106f, false), vec4<i32>(-50707i, 2147483647i, i32(-2147483648), 98060i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 39418u, Struct_2(vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(true, true), vec4<i32>(1282i, 82166i, 2147483647i, 37677i), true, -903f, false), vec4<i32>(-34345i, 10046i, 13732i, 2147483647i), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false)), 21826u, Struct_2(vec2<bool>(false, false), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(19738i, 1i, -916i, -13669i), false, 589f, true), vec4<i32>(2147483647i, 1i, 0i, -1i), Struct_2(vec2<bool>(false, false), vec2<bool>(false, false)), 4294967295u, Struct_2(vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, 17554i, -15732i, -25538i), true, -312f, false), vec4<i32>(-1859i, 1245i, 1i, -1i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 4294967295u, Struct_2(vec2<bool>(false, false), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 28206i, 42406i, 42673i), false, 853f, false), vec4<i32>(379i, 2147483647i, 2915i, 0i), Struct_2(vec2<bool>(true, false), vec2<bool>(true, false)), 0u, Struct_2(vec2<bool>(false, true), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 3386i, 0i, 2147483647i), false, -175f, false), vec4<i32>(-8277i, -12722i, -16435i, -27745i), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false)), 0u, Struct_2(vec2<bool>(false, true), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 15979i, 0i, 0i), true, -108f, true), vec4<i32>(73556i, -1i, 0i, 2147483647i), Struct_2(vec2<bool>(false, true), vec2<bool>(true, true)), 10118u, Struct_2(vec2<bool>(true, true), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), i32(-2147483648), -47872i, 0i), true, -834f, false), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1853i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 0u, Struct_2(vec2<bool>(true, false), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 0i, 1i, 1i), false, -546f, false), vec4<i32>(32268i, -47989i, i32(-2147483648), 2147483647i), Struct_2(vec2<bool>(false, false), vec2<bool>(false, false)), 0u, Struct_2(vec2<bool>(true, false), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<bool>(true, true), vec4<i32>(1i, i32(-2147483648), 34370i, 45460i), false, 1000f, true), vec4<i32>(0i, -1i, -39645i, -1i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 43437u, Struct_2(vec2<bool>(true, true), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 2147483647i, 1543i, -1i), false, -101f, false), vec4<i32>(2147483647i, 0i, -53371i, 39904i), Struct_2(vec2<bool>(true, true), vec2<bool>(false, true)), 25085u, Struct_2(vec2<bool>(true, true), vec2<bool>(false, true))), Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 2147483647i, 0i, i32(-2147483648)), false, -1486f, true), vec4<i32>(2147483647i, 2147483647i, 51845i, -22710i), Struct_2(vec2<bool>(true, true), vec2<bool>(false, false)), 1u, Struct_2(vec2<bool>(true, true), vec2<bool>(true, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -41968i, -1i, -1i), true, 1476f, true), vec4<i32>(30214i, -36986i, -46134i, -1i), Struct_2(vec2<bool>(true, false), vec2<bool>(false, false)), 28831u, Struct_2(vec2<bool>(false, true), vec2<bool>(false, false))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -48578i, 2147483647i, -16761i), false, -1337f, false), vec4<i32>(0i, -3405i, 40173i, 2147483647i), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true)), 15175u, Struct_2(vec2<bool>(true, false), vec2<bool>(true, true))), Struct_3(Struct_1(vec2<bool>(true, false), vec4<i32>(1i, -58636i, -31281i, -35049i), false, 1000f, true), vec4<i32>(-8633i, 34582i, 89058i, 1i), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true)), 4294967295u, Struct_2(vec2<bool>(true, true), vec2<bool>(true, true))));

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global3: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -32361i, -14376i, -1003i), true, 743f, false), Struct_2(vec2<bool>(true, false), vec2<bool>(true, false))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 0i, 2147483647i, 0i), false, 318f, false), Struct_2(vec2<bool>(true, true), vec2<bool>(true, true))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 0i, 2147483647i, -5330i), false, -1586f, false), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, -1i, -35568i, 1i), true, 121f, true), Struct_2(vec2<bool>(false, true), vec2<bool>(true, false))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<i32>(-29987i, 2147483647i, 2147483647i, -13053i), true, -2519f, true), Struct_2(vec2<bool>(true, true), vec2<bool>(true, false))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 15629i, i32(-2147483648), 648i), true, -357f, true), Struct_2(vec2<bool>(false, false), vec2<bool>(true, false))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 5026i, -34651i, 16425i), false, 1448f, true), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<i32>(30324i, 1i, 36739i, i32(-2147483648)), true, -862f, false), Struct_2(vec2<bool>(false, true), vec2<bool>(false, true))), Struct_4(Struct_1(vec2<bool>(false, false), vec4<i32>(-11275i, -1i, 2147483647i, 17763i), true, -233f, true), Struct_2(vec2<bool>(false, false), vec2<bool>(false, true))), Struct_4(Struct_1(vec2<bool>(true, false), vec4<i32>(-8449i, 2147483647i, 14680i, -44505i), true, -229f, true), Struct_2(vec2<bool>(true, false), vec2<bool>(false, true))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 5672i, 51275i, 2147483647i), true, -1726f, true), Struct_2(vec2<bool>(true, false), vec2<bool>(false, true))), Struct_4(Struct_1(vec2<bool>(true, true), vec4<i32>(80257i, 2147483647i, -1i, 1i), false, -293f, false), Struct_2(vec2<bool>(true, false), vec2<bool>(true, true))), Struct_4(Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -52545i, 24801i, 195i), false, 1124f, false), Struct_2(vec2<bool>(false, false), vec2<bool>(false, false))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(1u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23291u), vec2<u32>(38101u, 4294967295u))) & 4294967295u, ~(~1u) & _wgslsmith_sub_u32(reverseBits(44285u), _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(614u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))))), 25u)];
    let var_1 = ~(~64556u);
    let var_2 = ~select(-_wgslsmith_clamp_i32(~14071i, _wgslsmith_sub_i32(0i, 75834i), firstTrailingBit(-2147483647i)), u_input.a, !(global1.d > _wgslsmith_f_op_f32(abs(arg_2.x))));
    var var_3 = firstLeadingBit(vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(var_1, var_0.d)), ~firstTrailingBit(31775u | var_1)));
    let var_4 = -_wgslsmith_mult_i32(-var_2, (min(10889i, arg_1) >> (_wgslsmith_mod_u32(var_3.x, var_3.x) % 32u)) << (var_3.x % 32u));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d, arg_3) * arg_2);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global2 = Struct_2(global2.b, global2.a);
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(global3[_wgslsmith_index_u32(65196u, 13u)], u_input.a, vec2<f32>(-649f, global1.d), global1.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, 336f))))) * _wgslsmith_f_op_vec2_f32(func_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 83434u), vec2<u32>(1u, 1u)), 13u)], ~_wgslsmith_mult_i32(2147483647i, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-525f, -1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global1.d) - vec2<f32>(582f, 167f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, 538f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(225f - 273f))))));
    var var_1 = ~_wgslsmith_mod_u32(0u, ~(~1u));
    return 4294967295u;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_4) -> u32 {
    var var_0 = vec2<u32>(arg_1, ~(~(~firstLeadingBit(27563u))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~max(var_0.x, arg_1)), arg_1, 49625u), 25u)];
    var_0 = firstTrailingBit(~vec2<u32>(abs(select(var_1.d, arg_1, arg_2.b.b.x)), arg_1));
    var_1 = Struct_3(arg_2.a, (-vec4<i32>(-1i, u_input.a, arg_2.a.b.x, -33871i) << (vec4<u32>(0u, var_0.x, ~var_1.d, var_1.d) % vec4<u32>(32u))) | (_wgslsmith_mod_vec4_i32(vec4<i32>(-14941i, -2147483647i, -3904i, 0i) & var_1.b, vec4<i32>(var_1.b.x, 14589i, arg_2.a.b.x, 0i)) >> (vec4<u32>(var_0.x >> (var_0.x % 32u), firstTrailingBit(4294967295u), 0u, ~var_1.d) % vec4<u32>(32u))), var_1.e, 33218u >> (arg_1 % 32u), Struct_2(vec2<bool>(true, global1.c && global2.a.x), arg_2.b.a));
    var var_2 = Struct_4(var_1.a, var_1.e);
    return ~var_0.x;
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    let var_0 = all(select(vec2<bool>(global1.a.x, true), select(!arg_2.a.a, !vec2<bool>(arg_2.a.a.x, false), vec2<bool>(true, true)), vec2<bool>(true, true))) | !(!any(vec4<bool>(global2.b.x, global2.a.x, true, global2.a.x)));
    var var_1 = Struct_1(!global1.a, -(~abs(_wgslsmith_clamp_vec4_i32(global1.b, vec4<i32>(u_input.a, global1.b.x, u_input.a, arg_2.b.x), vec4<i32>(2147483647i, 12221i, 0i, arg_2.b.x)))), !var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.d))), all(!(!select(vec4<bool>(true, false, true, global2.b.x), vec4<bool>(global1.e, global2.b.x, global1.e, true), arg_2.c.a.x))));
    let var_2 = ~vec2<u32>(~(~(~317u)), ~4294967295u);
    var var_3 = arg_2.a;
    let var_4 = !vec4<bool>(var_3.a.x, select(select(false, all(vec4<bool>(false, false, false, global2.a.x)), !var_3.c), var_3.e, var_0), global1.a.x, all(!select(vec3<bool>(global2.b.x, true, true), vec3<bool>(true, var_3.a.x, var_3.c), global1.c)));
    return Struct_2(var_1.a, var_3.a);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = func_5(max(arg_1 & ~_wgslsmith_mod_u32(arg_1, arg_0), func_4(vec3<bool>(all(vec2<bool>(arg_2.a.x, false)), arg_3.a.x, true), _wgslsmith_clamp_u32(func_2(global1.a), _wgslsmith_add_u32(arg_0, 0u), _wgslsmith_add_u32(arg_0, arg_1)), Struct_4(arg_3, Struct_2(arg_3.a, global1.a)))), vec3<u32>(func_4(vec3<bool>(false, true, global1.a.x), _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(24264u, arg_1)), global3[_wgslsmith_index_u32(33018u, 13u)]), _wgslsmith_div_u32(~(arg_1 << (arg_1 % 32u)), arg_1), _wgslsmith_clamp_u32(1u, arg_1, arg_1 ^ ~65140u)), Struct_3(Struct_1(vec2<bool>(!global2.a.x, arg_3.a.x || true), vec4<i32>(~arg_3.b.x, -2147483647i, u_input.a, _wgslsmith_sub_i32(-1i, u_input.a)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f - arg_3.d)), !arg_3.e), -(~abs(global1.b)), Struct_2(global2.a, vec2<bool>(arg_2.a.x, true)), 132u, arg_2), global1.b.x);
    global1 = arg_3;
    var var_1 = global3[_wgslsmith_index_u32(arg_0, 13u)];
    global0 = array<Struct_3, 25>();
    global0 = array<Struct_3, 25>();
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 25>();
    var var_0 = vec2<i32>(u_input.a, global1.b.x ^ (-40379i ^ ~u_input.a));
    global2 = Struct_2(global1.a, select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), global1.a), select(vec2<bool>(global1.e, true), global1.a, true), global2.a), select(global2.a, !global1.a, true), global2.b.x), vec2<bool>(!any(vec4<bool>(true, global2.b.x, true, global2.a.x)), global1.a.x), false));
    var var_1 = Struct_4(Struct_1(select(!global1.a, select(func_1(31439u, 0u, Struct_2(global1.a, global1.a), Struct_1(vec2<bool>(global1.c, false), vec4<i32>(global1.b.x, 47221i, global1.b.x, u_input.a), true, -1809f, global2.a.x)), select(vec2<bool>(global1.e, true), vec2<bool>(global1.a.x, true), global1.a), true), func_5(~4294967295u, ~vec3<u32>(0u, 0u, 36237u), Struct_3(Struct_1(vec2<bool>(false, global2.a.x), global1.b, global1.c, 1057f, false), global1.b, Struct_2(vec2<bool>(true, global2.a.x), vec2<bool>(true, false)), 56974u, Struct_2(global2.b, global1.a)), u_input.a | 29522i).b.x), global1.b, !global2.a.x, global1.d, global2.b.x), func_5(select(~4294967295u, ~6550u, all(vec4<bool>(false, global2.b.x, true, false))) << (1u % 32u), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(0u, 18639u, 4294967295u)), ~vec3<u32>(0u, 27377u, 29236u)), global0[_wgslsmith_index_u32(34628u, 25u)], _wgslsmith_clamp_i32(1i, global1.b.x, _wgslsmith_mult_i32(u_input.a, 20995i) | _wgslsmith_sub_i32(2147483647i, var_0.x))));
    var var_2 = select(_wgslsmith_add_vec2_i32(firstLeadingBit(~(-vec2<i32>(-13891i, 45956i))), global1.b.xz), select(var_1.a.b.yy & select(global1.b.xz, _wgslsmith_div_vec2_i32(var_1.a.b.wy, var_1.a.b.zz), global2.b), ~vec2<i32>(1i, _wgslsmith_mod_i32(var_1.a.b.x, var_0.x)), global2.a.x), true);
    var var_3 = global2.b.x;
    let var_4 = global3[_wgslsmith_index_u32(1u, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.b);
}

