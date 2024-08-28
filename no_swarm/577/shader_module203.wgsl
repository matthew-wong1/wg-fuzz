struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 37470u), true, -1i);

var<private> global1: bool = true;

var<private> global2: u32;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(4294967295u, 37263u), true, 87567i), Struct_1(vec2<u32>(0u, 4294967295u), true, -11741i), Struct_1(vec2<u32>(4294967295u, 8266u), true, i32(-2147483648)), Struct_1(vec2<u32>(1u, 47568u), false, -22703i), Struct_1(vec2<u32>(1u, 25064u), true, 5219i), Struct_1(vec2<u32>(4294967295u, 29606u), false, 0i), Struct_1(vec2<u32>(4294967295u, 1u), false, 0i), Struct_1(vec2<u32>(64544u, 0u), true, 1i), Struct_1(vec2<u32>(1u, 678u), false, -40596i), Struct_1(vec2<u32>(19301u, 4294967295u), false, -26617i), Struct_1(vec2<u32>(74221u, 1u), false, 2147483647i), Struct_1(vec2<u32>(1u, 37095u), true, 2147483647i), Struct_1(vec2<u32>(0u, 20620u), true, 38402i), Struct_1(vec2<u32>(4294967295u, 88337u), false, -1i), Struct_1(vec2<u32>(1u, 37398u), false, 0i), Struct_1(vec2<u32>(63816u, 60518u), true, 0i), Struct_1(vec2<u32>(14157u, 64432u), true, 59423i), Struct_1(vec2<u32>(1u, 1u), false, 1i), Struct_1(vec2<u32>(0u, 42567u), true, 0i), Struct_1(vec2<u32>(7131u, 31379u), false, 0i));

var<private> global4: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(358f * -1957f));
    let var_1 = ~u_input.c;
    let var_2 = ~_wgslsmith_mod_u32(4294967295u, abs(~_wgslsmith_div_u32(46747u, global0.a.x)));
    global0 = Struct_1(vec2<u32>(4294967295u, global0.a.x), true, _wgslsmith_dot_vec3_i32(max(vec3<i32>(global0.c, 2147483647i, var_1.x), u_input.c.wyy) ^ vec3<i32>(global0.c & global0.c, u_input.c.x, -59635i), vec3<i32>(0i, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2783i, var_1.x, u_input.c.x), ~u_input.c.xzz))));
    var var_3 = Struct_3(all(!select(vec4<bool>(global0.b, true, global0.b, true), !vec4<bool>(global0.b, true, global0.b, global0.b), !vec4<bool>(global0.b, false, global0.b, global0.b))), vec3<bool>(false, global0.b, false), max(25243i, ~(-51361i)), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_div_u32(_wgslsmith_sub_u32(firstLeadingBit(1565u), _wgslsmith_dot_vec2_u32(u_input.b, global0.a)), var_2)), global3[_wgslsmith_index_u32(global0.a.x << (~min(43293u, firstTrailingBit(var_2)) % 32u), 20u)]);
    return _wgslsmith_div_vec2_u32(~(~u_input.b), ~global0.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global2 = ~9303u;
    let var_0 = _wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(2510u, global0.a.x, arg_1.a.x), select(vec3<u32>(4294967295u, arg_1.a.x, 4294967295u), vec3<u32>(4294967295u, u_input.b.x, 1u), arg_1.b)) >> (_wgslsmith_mod_vec3_u32(select(vec3<u32>(65891u, 4294967295u, arg_1.a.x), vec3<u32>(arg_1.a.x, global0.a.x, 37562u), vec3<bool>(global0.b, arg_0.b, false)), firstTrailingBit(vec3<u32>(6885u, u_input.a.x, global0.a.x))) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_1.a.x, arg_1.a.x, u_input.a.x), vec3<u32>(4294967295u, 32125u, arg_1.a.x), vec3<bool>(true, false, arg_0.b)) ^ select(vec3<u32>(4294967295u, u_input.a.x, 83628u), vec3<u32>(1u, 0u, u_input.a.x), false), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_0.a.x, 19277u), vec3<u32>(26813u, 15122u, arg_0.a.x)), ~vec3<u32>(arg_1.a.x, 0u, global0.a.x))));
    global3 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_div_vec3_u32(~var_0, vec3<u32>(firstTrailingBit(~(arg_1.a.x ^ 54666u)), 4294967295u, u_input.a.x));
    let var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(global0.a.x | _wgslsmith_add_u32(78643u, 22351u), _wgslsmith_mult_u32(reverseBits(arg_0.a.x), ~53524u), ~reverseBits(4882u)), _wgslsmith_dot_vec3_u32(var_1, ~vec3<u32>(arg_1.a.x, 28932u, arg_0.a.x)) >> ((~17938u | _wgslsmith_mod_u32(1u, var_0.x)) % 32u), 27252u, 119797u);
    return -257f;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_1(select(func_2(), vec2<u32>(u_input.a.x, global0.a.x), select(vec2<bool>(true, true), vec2<bool>(arg_1, global0.b), select(vec2<bool>(false, global0.b), vec2<bool>(true, global0.b), false))), !arg_1, 1i), Struct_1(select(~abs(vec2<u32>(u_input.b.x, 12461u)), ~vec2<u32>(global0.a.x, global0.a.x), firstLeadingBit(arg_0.x) <= global0.c), arg_1, u_input.c.x)));
    var var_1 = arg_0.wwx;
    var var_2 = ~(~(~reverseBits(global0.a ^ global0.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1485f, var_0) * vec2<f32>(var_0, 1430f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -453f)))))));
    let var_4 = Struct_2(global3[_wgslsmith_index_u32(~max(var_2.x, firstTrailingBit(~0u)), 20u)], _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(var_2.x, u_input.a.x), vec2<u32>(27909u, u_input.a.x), false) >> (u_input.a % vec2<u32>(32u)), vec2<u32>(48842u, select(global0.a.x, var_2.x, false))), ~(~select(global0.a, vec2<u32>(0u, 1u), global0.b))));
    return Struct_3(true, vec3<bool>(true, true, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.x, _wgslsmith_sub_i32(arg_0.x, global0.c), u_input.c.x, var_1.x | global0.c), select(_wgslsmith_div_vec4_i32(countOneBits(u_input.c), vec4<i32>(-47424i, -2147483647i, var_4.a.c, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 1845i, var_4.a.c) & vec4<i32>(global0.c, 35710i, u_input.c.x, var_4.a.c), ~vec4<i32>(8588i, -16983i, -35387i, global0.c)), arg_1)), Struct_2(Struct_1(global0.a, var_4.a.b, i32(-1i) * -1i), _wgslsmith_add_u32(max(0u, 1u << (var_2.x % 32u)), func_2().x)), var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(global0.c, abs(u_input.c.x), global0.c, ~u_input.c.x), select(_wgslsmith_add_i32(u_input.c.x, ~(-38600i)), -max(u_input.c.x, u_input.c.x), all(vec4<bool>(true, global0.b, true, false))) >= global0.c);
    let var_1 = abs(_wgslsmith_mult_vec4_i32(firstLeadingBit(firstTrailingBit(u_input.c)), vec4<i32>(-1i) * -u_input.c));
    global3 = array<Struct_1, 20>();
    let var_2 = func_1(select(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, max(-10957i, var_0.d.a.c)), u_input.c.x, -1i, abs(-global0.c)), -vec4<i32>(u_input.c.x, 22117i, -1i, ~0i), vec4<bool>(!(!global0.b), !global0.b, false, func_1(var_1, var_0.b.x).b.x)), global0.b).b;
    let var_3 = vec2<f32>(990f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-738f))));
    let var_4 = any(vec4<bool>(global0.b, all(vec3<bool>(true, true, global0.b)), !var_0.a, true));
    global4 = _wgslsmith_div_u32(global0.a.x, ~abs(var_0.d.b));
    global2 = abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(31545u, global0.a.x, 1u, _wgslsmith_sub_u32(u_input.a.x, 18012u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 46563u, 16674u), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 0u, 21231u, 16080u), vec4<u32>(global0.a.x, 50780u, 51222u, global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(var_0.d.b), firstTrailingBit(~4294967295u) & global0.a.x, firstTrailingBit(_wgslsmith_sub_u32(var_0.d.a.a.x >> (27580u % 32u), 4294967295u)), ~global0.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2042f * 1000f)), var_3.x), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, 1u), vec2<u32>(var_0.d.a.a.x, 84979u))) << (global0.a % vec2<u32>(32u)), ~2147483647i >> (var_0.d.b % 32u), vec2<i32>(countOneBits(_wgslsmith_clamp_i32(select(u_input.c.x, 6825i, var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, -27375i, 15230i, global0.c), u_input.c), -var_1.x)), 1i));
}

