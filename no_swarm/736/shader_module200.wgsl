struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: Struct_4,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_2(vec3<bool>(true, false, true), vec3<i32>(0i, 0i, 30272i)), Struct_2(vec3<bool>(true, false, false), vec3<i32>(-14408i, -11720i, 1i)), Struct_1(4294967295u, 1u, true, true, false), vec2<f32>(740f, -313f)), Struct_4(Struct_2(vec3<bool>(false, false, false), vec3<i32>(-2507i, 1i, 2147483647i)), Struct_2(vec3<bool>(false, false, true), vec3<i32>(21330i, -32370i, -1i)), Struct_1(93u, 45197u, false, true, false), vec2<f32>(782f, -1341f)), Struct_4(Struct_2(vec3<bool>(true, false, false), vec3<i32>(-9353i, 0i, 15003i)), Struct_2(vec3<bool>(false, true, true), vec3<i32>(2802i, 2147483647i, 19774i)), Struct_1(27941u, 0u, true, true, true), vec2<f32>(-1332f, 279f)), Struct_4(Struct_2(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 0i, 2147483647i)), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-39670i, -34839i, 660i)), Struct_1(0u, 8578u, true, true, false), vec2<f32>(-132f, 1000f)), Struct_4(Struct_2(vec3<bool>(true, false, true), vec3<i32>(-1i, -17756i, 38173i)), Struct_2(vec3<bool>(false, false, true), vec3<i32>(1i, 1i, 2147483647i)), Struct_1(14858u, 4294967295u, true, true, true), vec2<f32>(-124f, -208f)), Struct_4(Struct_2(vec3<bool>(false, false, true), vec3<i32>(86157i, 43424i, 2147483647i)), Struct_2(vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -36077i, i32(-2147483648))), Struct_1(4294967295u, 42847u, false, true, true), vec2<f32>(-300f, -687f)), Struct_4(Struct_2(vec3<bool>(true, false, false), vec3<i32>(-5498i, 16205i, 1i)), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-12855i, 0i, -39732i)), Struct_1(1u, 0u, true, true, true), vec2<f32>(314f, -817f)), Struct_4(Struct_2(vec3<bool>(true, false, false), vec3<i32>(-79003i, 0i, -3783i)), Struct_2(vec3<bool>(false, true, false), vec3<i32>(-6607i, -1i, -14552i)), Struct_1(115548u, 1u, false, false, false), vec2<f32>(-1369f, 221f)), Struct_4(Struct_2(vec3<bool>(false, false, false), vec3<i32>(-31384i, -1i, -1i)), Struct_2(vec3<bool>(false, false, true), vec3<i32>(-17474i, -71188i, 33023i)), Struct_1(1u, 32166u, true, false, true), vec2<f32>(-672f, 507f)), Struct_4(Struct_2(vec3<bool>(true, false, false), vec3<i32>(1i, 1i, 17784i)), Struct_2(vec3<bool>(true, true, true), vec3<i32>(0i, -13655i, 15775i)), Struct_1(0u, 1u, true, false, false), vec2<f32>(-144f, -192f)), Struct_4(Struct_2(vec3<bool>(true, true, false), vec3<i32>(0i, -1i, i32(-2147483648))), Struct_2(vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), 1i, 36265i)), Struct_1(1u, 1u, true, true, false), vec2<f32>(431f, 676f)), Struct_4(Struct_2(vec3<bool>(true, true, true), vec3<i32>(-1i, 27711i, i32(-2147483648))), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-49564i, 0i, 5238i)), Struct_1(20108u, 45713u, true, false, true), vec2<f32>(1222f, -972f)), Struct_4(Struct_2(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), -25039i, 38526i)), Struct_2(vec3<bool>(true, true, true), vec3<i32>(-1i, 0i, 40850i)), Struct_1(39633u, 2731u, false, true, true), vec2<f32>(739f, 552f)), Struct_4(Struct_2(vec3<bool>(false, true, true), vec3<i32>(2147483647i, i32(-2147483648), -1i)), Struct_2(vec3<bool>(true, true, true), vec3<i32>(35439i, -36569i, 57364i)), Struct_1(1u, 59328u, true, true, false), vec2<f32>(-1846f, 1940f)), Struct_4(Struct_2(vec3<bool>(true, true, false), vec3<i32>(30749i, -1i, -32562i)), Struct_2(vec3<bool>(false, true, true), vec3<i32>(14793i, i32(-2147483648), -20297i)), Struct_1(20546u, 64158u, true, false, true), vec2<f32>(-731f, 672f)), Struct_4(Struct_2(vec3<bool>(true, true, true), vec3<i32>(-12103i, 1i, -23614i)), Struct_2(vec3<bool>(false, true, false), vec3<i32>(-4264i, -55117i, 7639i)), Struct_1(8342u, 0u, true, true, false), vec2<f32>(697f, -246f)), Struct_4(Struct_2(vec3<bool>(true, true, false), vec3<i32>(1i, 1i, 0i)), Struct_2(vec3<bool>(false, false, true), vec3<i32>(1i, -8741i, 60440i)), Struct_1(64192u, 1u, false, false, true), vec2<f32>(1591f, -1027f)), Struct_4(Struct_2(vec3<bool>(true, false, true), vec3<i32>(-39416i, 60084i, 33114i)), Struct_2(vec3<bool>(false, false, false), vec3<i32>(2147483647i, 3604i, -23262i)), Struct_1(45698u, 0u, true, false, true), vec2<f32>(177f, 224f)));

var<private> global1: Struct_2 = Struct_2(vec3<bool>(true, false, true), vec3<i32>(-1i, 2147483647i, 2147483647i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5) -> bool {
    var var_0 = !arg_2.a.a.xx;
    let var_1 = vec2<bool>(any(select(arg_2.c.a.a, !(!vec3<bool>(false, global1.a.x, true)), arg_2.a.a.x)), all(global1.a.yz));
    let var_2 = arg_1;
    var var_3 = 598f;
    var var_4 = ~(-_wgslsmith_mod_i32(-global1.b.x, -10818i));
    return var_1.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec3<f32> {
    global1 = Struct_2(select(vec3<bool>(true, false, func_3(Struct_1(4294967295u, u_input.b.x, global1.a.x, global1.a.x, false), _wgslsmith_div_i32(-50457i, -2565i), Struct_5(Struct_2(global1.a, global1.b), -2147483647i, global0[_wgslsmith_index_u32(52891u, 18u)], u_input.a, true))), select(select(global1.a, !global1.a, !vec3<bool>(global1.a.x, false, false)), vec3<bool>(global1.a.x, func_3(Struct_1(u_input.d.x, u_input.b.x, true, global1.a.x, global1.a.x), -39974i, Struct_5(Struct_2(vec3<bool>(false, global1.a.x, true), vec3<i32>(u_input.a, 31945i, -23976i)), arg_1, global0[_wgslsmith_index_u32(1u, 18u)], global1.b.x, global1.a.x)), global1.a.x), select(global1.a, select(vec3<bool>(false, global1.a.x, global1.a.x), global1.a, vec3<bool>(global1.a.x, false, true)), false)), !global1.a), ~global1.b);
    var var_0 = Struct_2(!global1.a, max(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, global1.b.x, arg_1), vec3<i32>(u_input.a, 1i, 1i)), ~vec3<i32>(-1i, 1i, global1.b.x), global1.b), vec3<i32>(-1i, arg_1, u_input.a ^ 1i)));
    global0 = array<Struct_4, 18>();
    var var_1 = vec4<bool>(true, var_0.a.x, true, false);
    let var_2 = Struct_1(countOneBits(u_input.d.x), ~1u, !func_3(Struct_1(~u_input.e, max(u_input.d.x, 4296u), !var_0.a.x, any(vec4<bool>(var_0.a.x, true, true, var_1.x)), global1.a.x), -2147483647i, Struct_5(Struct_2(var_1.yyw, vec3<i32>(-2147483647i, global1.b.x, 24987i)), -arg_1, Struct_4(Struct_2(var_1.zxz, vec3<i32>(var_0.b.x, arg_1, -2147483647i)), Struct_2(var_1.yyw, vec3<i32>(-2147483647i, 4761i, var_0.b.x)), Struct_1(4294967295u, u_input.b.x, true, false, true), arg_0.yw), _wgslsmith_mult_i32(var_0.b.x, 55103i), var_1.x)), all(select(vec4<bool>(global1.a.x, var_1.x, false, var_1.x), vec4<bool>(true, global1.a.x, var_0.a.x, true), true)) & false, false);
    return arg_0.yyy;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1372f, arg_1.d.x, -224f))), _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(arg_1.d.x, arg_1.d.x, 303f, arg_1.d.x), -6456i))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.d.x, arg_1.d.x, 483f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-471f, 1125f, arg_1.d.x), vec3<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x), global1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, -333f, arg_1.d.x)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1922f, arg_1.d.x, -1682f), vec3<f32>(arg_1.d.x, -1354f, arg_1.d.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d.x, arg_1.d.x, -983f), vec3<f32>(arg_1.d.x, 1105f, -519f)))));
    global1 = arg_1.b;
    global0 = array<Struct_4, 18>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x - var_0.x) + _wgslsmith_f_op_f32(ceil(-1204f))) * arg_1.d.x))), 1525f);
    global0 = array<Struct_4, 18>();
    return select(vec3<bool>(true, !global1.a.x, u_input.d.x >= arg_2.x), !vec3<bool>(22161i < (1i | global1.b.x), arg_1.c.e, true), arg_0.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    global0 = array<Struct_4, 18>();
    var var_0 = select(!select(vec4<bool>(all(vec4<bool>(global1.a.x, false, arg_2, global1.a.x)), global1.a.x, select(false, false, arg_2), arg_1), vec4<bool>(true, true, true, true), true), select(vec4<bool>(all(global1.a.xz) & true, true, any(arg_0.a), global1.a.x), !select(!vec4<bool>(false, false, global1.a.x, true), select(vec4<bool>(true, arg_1, arg_0.a.x, arg_2), vec4<bool>(arg_1, false, true, true), vec4<bool>(arg_0.a.x, true, false, arg_1)), all(vec3<bool>(true, arg_1, arg_1))), select(vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(!arg_1, arg_0.a.x, func_3(Struct_1(arg_3.x, 0u, global1.a.x, true, arg_2), -24201i, Struct_5(Struct_2(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_2), vec3<i32>(u_input.a, global1.b.x, u_input.c)), 3472i, Struct_4(arg_0, Struct_2(vec3<bool>(true, true, arg_1), vec3<i32>(global1.b.x, 0i, -35796i)), Struct_1(arg_3.x, 7531u, arg_2, false, true), vec2<f32>(566f, 290f)), u_input.a, arg_0.a.x)), arg_2), select(vec4<bool>(false, true, true, true), !vec4<bool>(true, false, global1.a.x, arg_0.a.x), arg_0.a.x))), true);
    var var_1 = abs(~(~(~(arg_0.b.x & 0i))));
    var_0 = select(select(select(select(!vec4<bool>(var_0.x, true, arg_0.a.x, arg_1), !vec4<bool>(false, true, false, arg_0.a.x), select(vec4<bool>(var_0.x, arg_0.a.x, global1.a.x, arg_2), vec4<bool>(true, false, true, arg_0.a.x), false)), !(!vec4<bool>(false, arg_1, arg_0.a.x, false)), select(vec4<bool>(arg_1, arg_0.a.x, global1.a.x, arg_0.a.x), select(vec4<bool>(arg_2, true, true, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_1, true, arg_0.a.x), global1.a.x), select(vec4<bool>(false, arg_2, false, global1.a.x), vec4<bool>(global1.a.x, false, true, arg_2), arg_1))), vec4<bool>(select(true, true, any(vec4<bool>(true, true, true, true))), (1u & arg_3.x) > abs(u_input.b.x), arg_0.a.x, var_0.x), true), select(select(vec4<bool>(arg_2, true, all(vec2<bool>(var_0.x, false)), arg_0.a.x), select(select(vec4<bool>(arg_2, false, arg_0.a.x, arg_1), vec4<bool>(true, false, var_0.x, true), vec4<bool>(arg_1, arg_0.a.x, true, global1.a.x)), vec4<bool>(arg_1, false, false, true), all(arg_0.a.xy)), false), select(select(vec4<bool>(false, arg_2, global1.a.x, arg_2), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(arg_1, false, global1.a.x, var_0.x), false), select(vec4<bool>(arg_1, false, false, false), vec4<bool>(false, global1.a.x, false, var_0.x), arg_2)), !vec4<bool>(true, var_0.x, true, true), var_0.x), select(!(!vec4<bool>(true, arg_1, var_0.x, false)), select(!vec4<bool>(global1.a.x, true, true, false), vec4<bool>(true, arg_0.a.x, false, false), select(vec4<bool>(var_0.x, arg_0.a.x, arg_2, false), vec4<bool>(arg_1, true, true, true), var_0.x)), true)), !(!select(select(vec4<bool>(false, false, global1.a.x, true), vec4<bool>(true, arg_2, false, var_0.x), vec4<bool>(arg_0.a.x, false, false, false)), !vec4<bool>(arg_2, true, true, false), !vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_2))));
    global0 = array<Struct_4, 18>();
    return ~4294967295u;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>) -> Struct_5 {
    global1 = Struct_2(global1.a, abs(abs(~vec3<i32>(2248i, u_input.a, 1i) ^ ~vec3<i32>(7904i, u_input.c, -65538i))));
    var var_0 = select(vec4<bool>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global1.b.x, -7862i), ~u_input.c) == arg_1.x, !(!(!global1.a.x)), true, false), select(vec4<bool>(true, -global1.b.x == 38063i, true, global1.a.x), select(select(vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), global1.a.x), select(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), !vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), true), vec4<bool>(any(global1.a.xy), global1.a.x, true, false)), vec4<bool>(!(!global1.a.x), true, !(!global1.a.x), true)), select(select(!(!vec4<bool>(false, global1.a.x, false, global1.a.x)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(global1.a.x, false, false, true), true), select(vec4<bool>(true, global1.a.x, true, global1.a.x), vec4<bool>(false, false, global1.a.x, global1.a.x), global1.a.x), all(global1.a.yz)), select(vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(false, false, global1.a.x, global1.a.x), vec4<bool>(true, true, global1.a.x, global1.a.x), global1.a.x))), !(!select(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), vec4<bool>(global1.a.x, false, true, false)));
    let var_1 = reverseBits(arg_1);
    var var_2 = _wgslsmith_dot_vec2_i32(~vec2<i32>(-global1.b.x << ((23825u ^ u_input.b.x) % 32u), _wgslsmith_dot_vec2_i32(~arg_1.yz, ~vec2<i32>(-4310i, arg_1.x))), -(arg_1.xw & ((global1.b.zx ^ vec2<i32>(var_1.x, global1.b.x)) | abs(var_1.xx))));
    var_2 = 1i;
    return Struct_5(Struct_2(func_1(Struct_2(!vec3<bool>(global1.a.x, global1.a.x, true), ~arg_1.wxx), global0[_wgslsmith_index_u32(~(1u | arg_0), 18u)], _wgslsmith_mod_vec4_u32(u_input.d, u_input.d)), var_1.xzy), var_1.x, Struct_4(Struct_2(select(func_1(Struct_2(vec3<bool>(var_0.x, false, false), global1.b), Struct_4(Struct_2(var_0.yxz, arg_1.xww), Struct_2(vec3<bool>(global1.a.x, false, true), arg_1.xwy), Struct_1(u_input.d.x, u_input.b.x, var_0.x, true, var_0.x), vec2<f32>(709f, 1053f)), vec4<u32>(20484u, arg_0, 10291u, 1u)), global1.a, !vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, 2147483647i, global1.b.x), var_1.zxw)), Struct_2(vec3<bool>(true, !var_0.x, var_0.x), vec3<i32>(-1i) * -arg_1.yyx), Struct_1(_wgslsmith_add_u32(47358u | u_input.d.x, ~21092u), arg_0, global1.b.x <= 1i, true || global1.a.x, ~u_input.b.x > 40822u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, -1861f)) - vec2<f32>(-1000f, 793f)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-32222i, arg_1.x), firstTrailingBit(-_wgslsmith_mod_i32(var_1.x, var_1.x))), !global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    var var_0 = func_5(~func_4(Struct_2(func_1(Struct_2(global1.a, global1.b), Struct_4(Struct_2(global1.a, vec3<i32>(27174i, 2147483647i, u_input.c)), Struct_2(global1.a, global1.b), Struct_1(4294967295u, u_input.d.x, false, global1.a.x, global1.a.x), vec2<f32>(-1857f, -287f)), vec4<u32>(u_input.e, 7972u, 62024u, u_input.e)), vec3<i32>(u_input.a, -21693i, 20680i)), _wgslsmith_f_op_f32(292f * -1000f) == _wgslsmith_f_op_f32(trunc(-2188f)), !global1.a.x, ~u_input.b.xzy), vec4<i32>(global1.b.x, min(-1i, -_wgslsmith_add_i32(u_input.c, 0i)), -(global1.b.x ^ global1.b.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c, 0i, -19961i, u_input.c)), ~(~vec4<i32>(u_input.a, global1.b.x, u_input.c, global1.b.x)))));
    var var_1 = select(u_input.d, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(74307u, var_0.c.c.a, 4294967295u, u_input.b.x)), u_input.d), ~vec4<u32>(1u, u_input.d.x, reverseBits(0u), 0u)), !vec4<bool>(var_0.a.a.x, !global1.a.x, var_0.e, true));
    var var_2 = u_input.d.x;
    let var_3 = var_1.yxz | _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(~var_1.yxw, ~vec3<u32>(0u, u_input.d.x, var_0.c.c.b), ~var_1.yzy), ~vec3<u32>(_wgslsmith_div_u32(0u, var_0.c.c.a), 4294967295u, 1u));
    var_2 = 4294967295u;
    var_0 = func_5(reverseBits(~0u), max(~vec4<i32>(u_input.c, -2147483647i, _wgslsmith_dot_vec2_i32(var_0.c.a.b.xx, global1.b.yy), countOneBits(-32234i)), vec4<i32>(u_input.a, _wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(15612i, global1.b.x)), _wgslsmith_dot_vec3_i32(global1.b, var_0.c.a.b) << (1u % 32u), -1i)));
    var_0 = Struct_5(var_0.a, _wgslsmith_dot_vec3_i32(func_5(~59411u >> (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(25589u, var_3.x, 4294967295u, 4294967295u)) % 32u), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, global1.b.x, -12457i), vec4<i32>(-1i, u_input.a, 0i, -13644i)), vec4<i32>(global1.b.x, 1i, var_0.b, 0i) ^ vec4<i32>(-9794i, 0i, -1i, 69337i), select(vec4<bool>(true, var_0.a.a.x, var_0.c.a.a.x, true), vec4<bool>(var_0.e, false, false, false), vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)))).a.b, -_wgslsmith_mult_vec3_i32(-global1.b, vec3<i32>(2147483647i, var_0.b, 0i) << (vec3<u32>(13407u, var_3.x, u_input.d.x) % vec3<u32>(32u)))), func_5(3133u, _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(var_0.c.b.b.x), 0i << (var_1.x % 32u), -global1.b.x, u_input.a), vec4<i32>(_wgslsmith_div_i32(global1.b.x, -1i), u_input.c, -global1.b.x, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-21186i, 1i, u_input.c, -2147483647i), vec4<i32>(-19606i, -1i, var_0.b, 19092i)))).c, _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(2147483647i, global1.b.x, -2147483647i, u_input.c)), vec4<i32>(-26711i, global1.b.x, -2147483647i, u_input.c)), vec4<i32>(-var_0.c.b.b.x, -9700i, i32(-1i) * -14067i, 56164i))), global1.a.x);
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1260f)))) * -1834f), -var_0.c.b.b.yz, _wgslsmith_mult_i32(select(-u_input.a ^ (28632i & global1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.b.b.x, -64822i, global1.b.x, global1.b.x) << (vec4<u32>(var_1.x, u_input.b.x, 4294967295u, 10919u) % vec4<u32>(32u)), vec4<i32>(var_0.a.b.x, var_0.a.b.x, global1.b.x, global1.b.x)), any(select(vec4<bool>(global1.a.x, global1.a.x, true, true), vec4<bool>(false, var_0.e, global1.a.x, false), true))), u_input.a), _wgslsmith_mod_i32(-var_0.c.a.b.x, var_0.d));
}

