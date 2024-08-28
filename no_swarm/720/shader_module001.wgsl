struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5197u;

var<private> global1: array<f32, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u)), min(1u, 1u)), 1u), global1[_wgslsmith_index_u32(69513u, 23u)], vec4<u32>(1u, 1u, 1u, 1u), ~select(u_input.a, 17792i, 346f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 23u)])), ~(-1i));
    global1 = array<f32, 23>();
    global0 = _wgslsmith_add_u32(var_0.a, ~abs(~var_0.c.x));
    global1 = array<f32, 23>();
    global0 = 50934u;
    return _wgslsmith_mod_vec4_i32(-reverseBits(abs(firstTrailingBit(vec4<i32>(var_0.e, u_input.a, -20764i, u_input.a)))), max(_wgslsmith_sub_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, var_0.e, 53789i, u_input.a))), ~vec4<i32>(36361i, var_0.e, -26571i, var_0.d)), vec4<i32>(~11233i << (_wgslsmith_add_u32(10373u, var_0.a) % 32u), _wgslsmith_sub_i32(abs(1i), reverseBits(u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-54845i, -2520i), -vec2<i32>(var_0.d, 24860i)), -(~var_0.d))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    global0 = ~(~25090u);
    global0 = ~4294967295u;
    let var_0 = _wgslsmith_add_i32(-1i, arg_0.x);
    let var_1 = _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(~firstLeadingBit(25586u), 23u)]));
    let var_2 = ~(-(~(select(-7341i, -2147483647i, false) & max(-1i, arg_0.x))));
    return abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(65417u, 37282u, 1u) >> (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(29452u, 4294967295u, 1u), !vec3<bool>(arg_1.x, true, arg_1.x))) >> (_wgslsmith_mult_u32(~countOneBits(7484u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1601u, 1u), vec3<u32>(4294967295u, 23141u, 4294967295u)), _wgslsmith_add_u32(4294967295u, 0u))) % 32u));
}

fn func_2() -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32(func_4(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-4591i, 2147483647i, u_input.a, -2147483647i) ^ _wgslsmith_add_vec4_i32(vec4<i32>(1i, 41441i, -18085i, u_input.a), vec4<i32>(29224i, u_input.a, 0i, -2147483647i)), func_3()), (max(vec4<i32>(u_input.a, u_input.a, -2147483647i, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, 2147483647i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 29293i, 2147483647i, -11945i), vec4<i32>(-12498i, -5709i, u_input.a, -49787i))) << (~firstLeadingBit(vec4<u32>(11978u, 1u, 20159u, 34147u)) % vec4<u32>(32u))), select(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false)), true), select(vec2<bool>(true, any(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, false))), true)), 23u)];
    let var_1 = Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(-30014i, 22770i, 1i) | vec3<i32>(19282i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a) ^ ~vec3<i32>(-17525i, -2147483647i, -1i)) >> (vec3<u32>(1u, 1u, ~0u) % vec3<u32>(32u)));
    let var_2 = Struct_3(4294967295u, 594f, ~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 43972u, 4294967295u), vec3<u32>(27592u, 9656u, 14558u), vec3<bool>(false, false, true)), vec3<u32>(1u, 1u, 1u)), 65339u, 0u, 15773u), abs(_wgslsmith_div_i32(max(u_input.a, var_1.a.x), u_input.a)), 2147483647i);
    return select(select(vec4<bool>(!all(vec3<bool>(true, false, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), false, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, any(vec2<bool>(false, false)), false, all(vec3<bool>(true, false, true))), true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), !any(vec4<bool>(false, true, true, true)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), select(select(vec4<bool>(false, all(vec3<bool>(false, false, true)), true, true), vec4<bool>(true, true, true, true), !any(vec2<bool>(false, false))), select(vec4<bool>(all(vec4<bool>(false, true, true, true)), all(vec4<bool>(false, true, false, true)), u_input.a != u_input.a, false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), false), true), true));
}

fn func_1() -> vec4<bool> {
    return !(!select(func_2(), vec4<bool>(false, true, false, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u;
    global0 = 34073u;
    var var_0 = func_1();
    global1 = array<f32, 23>();
    var var_1 = Struct_1(~(firstLeadingBit(select(vec3<i32>(u_input.a, 2147483647i, 17948i), vec3<i32>(-12493i, 50358i, u_input.a), true)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_add_i32(_wgslsmith_mod_i32(-7682i, abs(var_1.a.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(var_1.a.x, u_input.a), ~var_1.a.x, firstTrailingBit(var_1.a.x)), vec3<i32>(_wgslsmith_add_i32(-1i, -2147483647i), -262i | var_1.a.x, var_1.a.x) << (firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1256u, 4294967295u), vec3<u32>(1u, 18476u, 23062u), vec3<u32>(101070u, 4294967295u, 14646u))) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-64383i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(max(5574u, 47663u), 23u)])))), -1i, firstTrailingBit(-select(0i, 30460i, true) ^ var_1.a.x), global1[_wgslsmith_index_u32(func_4(vec4<i32>(firstTrailingBit(max(u_input.a, -43772i)), 2147483647i, 1i, var_1.a.x), !var_0.yy), 23u)]);
}

