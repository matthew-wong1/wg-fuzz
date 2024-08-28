struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(2147483647i, false, 1000f, vec4<f32>(637f, -372f, -222f, 777f)), Struct_3(-9075i, true, -648f, vec4<f32>(-552f, -431f, -1000f, 510f)), Struct_3(i32(-2147483648), false, -493f, vec4<f32>(-883f, 252f, -783f, 1015f)), Struct_3(0i, true, 446f, vec4<f32>(-1237f, -594f, -704f, 1578f)), Struct_3(30826i, true, 1008f, vec4<f32>(1936f, -1035f, 1000f, 754f)), Struct_3(-30303i, true, 1144f, vec4<f32>(-2341f, -1077f, 1227f, -1447f)), Struct_3(-11117i, false, 814f, vec4<f32>(-274f, -223f, 454f, 1402f)), Struct_3(-1i, true, 178f, vec4<f32>(-832f, 1141f, 572f, 1443f)), Struct_3(1i, true, -1010f, vec4<f32>(-1093f, -645f, -157f, -878f)), Struct_3(2147483647i, false, 284f, vec4<f32>(803f, 1752f, -939f, -1010f)), Struct_3(0i, false, -554f, vec4<f32>(814f, 589f, -901f, -164f)), Struct_3(-31590i, true, 106f, vec4<f32>(109f, -391f, 1815f, -761f)), Struct_3(-17429i, true, -148f, vec4<f32>(786f, 989f, 617f, -212f)), Struct_3(11112i, true, -1010f, vec4<f32>(-313f, -399f, 1000f, 358f)), Struct_3(-1i, true, 364f, vec4<f32>(815f, 324f, 233f, -1000f)), Struct_3(2147483647i, false, -219f, vec4<f32>(1222f, 361f, 1792f, 713f)));

var<private> global1: array<u32, 16>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(46669u, 0u, 0u, 4294967295u), 4294967295u, vec4<bool>(true, false, true, true), false, 2147483647i), Struct_1(vec4<u32>(34134u, 18523u, 11111u, 62582u), 4294967295u, vec4<bool>(true, false, false, true), true, 1788i), Struct_1(vec4<u32>(64531u, 0u, 100460u, 1426u), 1u, vec4<bool>(false, true, true, true), true, i32(-2147483648)), Struct_1(vec4<u32>(1u, 0u, 1u, 35670u), 1u, vec4<bool>(false, true, false, true), false, 5911i), Struct_1(vec4<u32>(979u, 4294967295u, 0u, 88958u), 107770u, vec4<bool>(true, true, false, false), true, -13464i), Struct_1(vec4<u32>(4294967295u, 71115u, 23467u, 1u), 105u, vec4<bool>(true, true, true, true), false, 6678i), Struct_1(vec4<u32>(1u, 22309u, 1u, 0u), 104125u, vec4<bool>(false, true, false, false), false, 1i), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 57998u), 4294967295u, vec4<bool>(true, true, false, false), false, 1i), Struct_1(vec4<u32>(53762u, 1u, 43762u, 4294967295u), 37288u, vec4<bool>(false, false, false, false), true, 60270i), Struct_1(vec4<u32>(31447u, 63403u, 303u, 0u), 4294967295u, vec4<bool>(false, false, false, true), false, -62344i), Struct_1(vec4<u32>(37360u, 94220u, 4294967295u, 4294967295u), 255u, vec4<bool>(true, true, true, true), true, 11258i), Struct_1(vec4<u32>(5991u, 1u, 65319u, 4294967295u), 8038u, vec4<bool>(false, true, false, true), false, -9686i), Struct_1(vec4<u32>(21513u, 0u, 4294967295u, 29191u), 3629u, vec4<bool>(true, false, true, true), true, 24836i), Struct_1(vec4<u32>(2188u, 75970u, 4294967295u, 28151u), 0u, vec4<bool>(true, false, true, false), false, 32363i), Struct_1(vec4<u32>(1u, 0u, 14354u, 4294967295u), 0u, vec4<bool>(true, false, true, true), false, 4456i), Struct_1(vec4<u32>(17374u, 21213u, 9907u, 1u), 4294967295u, vec4<bool>(true, false, true, false), true, i32(-2147483648)), Struct_1(vec4<u32>(36808u, 1u, 55399u, 20330u), 4294967295u, vec4<bool>(false, false, true, false), false, i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), 22984u, vec4<bool>(true, true, false, false), false, 2147483647i), Struct_1(vec4<u32>(57665u, 0u, 96163u, 9456u), 4294967295u, vec4<bool>(true, true, false, true), false, -47449i), Struct_1(vec4<u32>(35323u, 0u, 4294967295u, 0u), 30509u, vec4<bool>(true, true, true, false), true, 71852i), Struct_1(vec4<u32>(1u, 26324u, 35501u, 1u), 62002u, vec4<bool>(false, false, true, false), true, -137i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), 26758u, vec4<bool>(false, false, true, false), false, -1i), Struct_1(vec4<u32>(146991u, 1u, 0u, 3910u), 1u, vec4<bool>(false, true, false, true), false, 33814i), Struct_1(vec4<u32>(24020u, 24949u, 2082u, 28808u), 4255u, vec4<bool>(false, true, true, false), true, 1i), Struct_1(vec4<u32>(0u, 0u, 11313u, 12597u), 20637u, vec4<bool>(true, false, false, true), false, -1i), Struct_1(vec4<u32>(1u, 101927u, 21452u, 24568u), 64233u, vec4<bool>(false, false, true, false), false, -1i), Struct_1(vec4<u32>(19878u, 69599u, 14357u, 0u), 1608u, vec4<bool>(false, true, true, false), false, -1i), Struct_1(vec4<u32>(5226u, 0u, 1u, 31347u), 1u, vec4<bool>(false, true, false, true), false, 11415i), Struct_1(vec4<u32>(27964u, 0u, 75683u, 1u), 36940u, vec4<bool>(false, false, true, false), true, 2147483647i), Struct_1(vec4<u32>(0u, 1u, 42093u, 15461u), 2266u, vec4<bool>(true, true, false, false), false, -1i));

var<private> global3: array<u32, 16>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(select(select(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)], 16u)], 16u)], u_input.b)), _wgslsmith_add_vec2_u32(u_input.d.yx, vec2<u32>(67879u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14759u, 16u)], 16u)], 16u)], 16u)]))), abs(reverseBits(abs(u_input.d.x))), false), ~4294967295u ^ abs(u_input.d.x), (_wgslsmith_add_i32(abs(arg_0.a), -u_input.c.x) < abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.a, -1i), vec3<i32>(arg_0.a, arg_0.a, -43137i)))) | !all(select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(true, false, false, false), vec4<bool>(arg_1, arg_0.b, false, arg_0.b)))), 16u)];
    var var_1 = ~_wgslsmith_div_vec4_i32(-firstLeadingBit(select(vec4<i32>(42540i, -1i, -28931i, u_input.c.x), vec4<i32>(arg_0.a, -2147483647i, 32076i, arg_0.a), vec4<bool>(false, var_0.b, var_0.b, true))), -reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-4328i, 15481i, -1990i, 1i), vec4<i32>(var_0.a, -66235i, u_input.c.x, 43705i))));
    var var_2 = global3[_wgslsmith_index_u32(0u, 16u)];
    let var_3 = true;
    let var_4 = _wgslsmith_mod_i32(-1i, 26851i);
    return _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_mult_i32(abs(arg_0.a), -23448i)), max(arg_0.a, -27373i), 80805i);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = -((((vec3<i32>(-1710i, arg_2, -39895i) << (vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(58918u, 16u)], 81839u) % vec3<u32>(32u))) >> (vec3<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], global3[_wgslsmith_index_u32(1u, 16u)]) % vec3<u32>(32u))) >> (~vec3<u32>(32335u, 4294967295u, 0u) % vec3<u32>(32u))) ^ countOneBits(vec3<i32>(29125i, -2147483647i, -2851i) ^ -vec3<i32>(1i, 22010i, arg_2)));
    var var_1 = Struct_2(Struct_1(~vec4<u32>(1u, 4294967295u & u_input.b, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)], 9661u), global3[_wgslsmith_index_u32(0u, 16u)] | u_input.a.x), firstTrailingBit(~(0u >> (global1[_wgslsmith_index_u32(1u, 16u)] % 32u))), vec4<bool>(false, false, !(arg_1.a <= var_0.x), all(!vec3<bool>(false, true, arg_1.b))), arg_1.b, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_0), var_0.zx), var_0.xz), firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a, 26203i), vec2<i32>(-16835i, -42825i))))));
    let var_2 = -reverseBits(-func_3(arg_1, false));
    let var_3 = Struct_3(_wgslsmith_div_i32(1i, abs(2147483647i)), false, _wgslsmith_f_op_f32(ceil(arg_1.c)), arg_1.d);
    global0 = array<Struct_3, 16>();
    return firstTrailingBit(_wgslsmith_mod_i32(abs(~(~1i)), -firstTrailingBit(func_3(global0[_wgslsmith_index_u32(0u, 16u)], var_1.a.d))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))) - 629f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)));
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]), vec2<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.a.x))), 16u)], select(u_input.a.x, 57522u, var_0.x > 105f)), ~u_input.d.x, 4294967295u, 7806u), firstLeadingBit(select(~vec4<u32>(19658u, 16651u, 34619u, u_input.a.x), vec4<u32>(abs(u_input.d.x), u_input.d.x, 0u | global3[_wgslsmith_index_u32(57834u, 16u)], ~1u), true)));
    global3 = array<u32, 16>();
    let var_2 = Struct_2(Struct_1(vec4<u32>(~abs(46975u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(min(8569u, 1u), 16u)], var_1.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38396u, 16u)], 16u)]), _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, u_input.a.x, 42846u, 0u)), var_1.x), global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_1.x), vec3<u32>(4294967295u, 43702u, var_1.x)), 16u)])), 16u)], select(!(!vec4<bool>(true, true, arg_3, true)), !select(vec4<bool>(false, true, true, arg_3), vec4<bool>(arg_3, false, false, false), vec4<bool>(false, false, arg_3, arg_3)), arg_3), false, reverseBits(firstLeadingBit(arg_2.x)) << (abs(u_input.b) % 32u)));
    global2 = array<Struct_1, 30>();
    return var_2.a;
}

fn func_1() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -955f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-678f, 522f, true)), _wgslsmith_div_f32(1692f, 751f))))))));
    var var_1 = -1056f;
    let var_2 = u_input.c.x;
    let var_3 = func_4(~(~vec3<i32>(~u_input.c.x, _wgslsmith_add_i32(2147483647i, var_2), func_2(u_input.c.x, Struct_3(1i, true, 811f, vec4<f32>(-1538f, 687f, -1162f, 1153f)), 20713i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -487f))), -414f)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, var_2 ^ u_input.c.x, min(var_2, u_input.c.x))), vec3<i32>(22182i, -u_input.c.x, -2147483647i)), true);
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(94788u, _wgslsmith_sub_u32(2260u, u_input.b), 0u, ~17465u), reverseBits(max(u_input.a, ~u_input.a)));
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1686f, -252f)))), _wgslsmith_f_op_f32(step(476f, -252f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 16>();
    var var_0 = firstLeadingBit(u_input.c);
    var var_1 = vec3<i32>(0i, 77943i, var_0.x);
    let var_2 = true;
    global2 = array<Struct_1, 30>();
    var var_3 = 47428u;
    var_1 = ~select(select(_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, var_0.x, var_1.x), vec3<i32>(-1i, -7912i, -1i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.c.x, 42511i, -12339i), vec3<i32>(var_1.x, var_0.x, 26653i) >> (vec3<u32>(23707u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64707u, 16u)], 16u)], 1u) % vec3<u32>(32u))), !var_2 || true), vec3<i32>(~(~(-2147483647i)), var_1.x, var_0.x & max(-27227i, -1i)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, 1552f, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(803f + 1000f) * _wgslsmith_f_op_f32(abs(-1584f))), _wgslsmith_f_op_f32(trunc(-790f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1355f, -1175f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-669f, -1000f) * _wgslsmith_f_op_vec2_f32(func_1()))))));
}

