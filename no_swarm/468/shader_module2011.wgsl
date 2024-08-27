struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec4<f32>(-1821f, -569f, -609f, 1921f), vec3<u32>(32990u, 83169u, 8974u), -488f));

var<private> global2: array<Struct_1, 32>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global4: Struct_5 = Struct_5(vec3<bool>(true, false, true), vec3<i32>(0i, 14052i, -26718i), Struct_3(vec2<f32>(1218f, 1679f), Struct_1(0u), 715f, vec3<f32>(-1192f, -1011f, -201f), vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_3(vec2<f32>(-671f, 1183f), Struct_1(4294967295u), -871f, vec3<f32>(1895f, -706f, 343f), vec4<u32>(0u, 4294967295u, 1u, 0u)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = vec4<bool>(_wgslsmith_add_i32(-34790i, ~u_input.b) <= ~max(1i, _wgslsmith_dot_vec3_i32(global4.b, global4.b)), (-(1i & u_input.d) >> (reverseBits(_wgslsmith_add_u32(arg_0, 4294967295u)) % 32u)) < -_wgslsmith_clamp_i32(-19214i, arg_1, 2147483647i), global3.x, all(!select(select(global3.zx, global4.a.zx, global4.a.x), global4.a.zz, global4.b.x < arg_1)));
    let var_1 = vec2<bool>(var_0.x, all(!global3.zzy));
    let var_2 = global4.d.a;
    var var_3 = 62364u;
    let var_4 = !(1230f <= var_2.x);
    return global1.a.c;
}

fn func_2(arg_0: Struct_5) -> u32 {
    let var_0 = u_input.c | ~_wgslsmith_div_u32(global1.a.b.x, global1.a.b.x);
    let var_1 = _wgslsmith_f_op_f32(func_3(48047u, _wgslsmith_dot_vec3_i32(vec3<i32>(0i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.x, u_input.b), vec2<i32>(global4.b.x, u_input.b)), _wgslsmith_mult_i32(arg_0.b.x, 1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.d, 0i, 12954i), vec3<i32>(-15015i, arg_0.b.x, 24427i), arg_0.a), -vec3<i32>(-50158i, 23722i, 12206i))), global4.b)));
    let var_2 = ~(~reverseBits(abs(~global4.c.e)));
    var var_3 = global4.c;
    let var_4 = global1.a;
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(~52252u, _wgslsmith_mod_u32(max(var_4.b.x, 0u), var_4.b.x), 0u, _wgslsmith_mult_u32(1u & var_3.b.a, u_input.c)), arg_0.c.e);
}

fn func_4(arg_0: Struct_4) -> Struct_5 {
    global1 = arg_0;
    let var_0 = vec2<i32>(-1i, u_input.a.x);
    var var_1 = arg_0.a.b.x;
    global1 = arg_0;
    var var_2 = select(global4.d.e >> ((_wgslsmith_sub_vec4_u32(~global4.d.e, global4.d.e) ^ reverseBits(vec4<u32>(u_input.c, 3638u, 26791u, arg_0.a.b.x))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~(vec4<u32>(31569u, 85410u, u_input.c, global1.a.b.x) | global4.d.e), select(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.c, arg_0.a.b.x, u_input.c, arg_0.a.b.x)), select(vec4<u32>(44476u, 67222u, global1.a.b.x, 1u), vec4<u32>(arg_0.a.b.x, 4294967295u, global4.d.e.x, 46878u), global4.a.x)), firstTrailingBit(vec4<u32>(10573u, global4.c.b.a, u_input.c, 1u) >> (vec4<u32>(u_input.c, u_input.c, 11463u, 1u) % vec4<u32>(32u))), select(vec4<bool>(global4.a.x, false, global4.a.x, false), vec4<bool>(global4.a.x, global4.a.x, true, false), global3.x))), all(vec2<bool>(all(global4.a), -13442i > _wgslsmith_dot_vec3_i32(u_input.a, global4.b))));
    return Struct_5(!vec3<bool>(!global4.a.x, global4.a.x, _wgslsmith_f_op_f32(global1.a.c + arg_0.a.a.x) > _wgslsmith_f_op_f32(arg_0.a.a.x - global4.c.d.x)), ~abs(~global4.b), Struct_3(vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1035f)))), Struct_1(var_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)), _wgslsmith_f_op_f32(max(arg_0.a.c, _wgslsmith_div_f32(global4.d.c, 176f))))), global1.a.a.yww, ~select(firstTrailingBit(global4.d.e), vec4<u32>(24430u, global1.a.b.x, 70687u, 4986u), !vec4<bool>(false, true, global3.x, global3.x))), global4.d);
}

fn func_1(arg_0: bool) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(189f, _wgslsmith_f_op_f32(floor(global1.a.c))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.c.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.a.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(485f, 1276f))))));
    global2 = array<Struct_1, 32>();
    var var_1 = func_4(Struct_4(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.a.x, var_0.x, global4.d.d.x, global4.d.c) + global1.a.a), _wgslsmith_f_op_vec4_f32(global1.a.a + global1.a.a)), vec3<u32>(~global4.d.e.x, global1.a.b.x & u_input.c, func_2(Struct_5(vec3<bool>(true, global3.x, arg_0), vec3<i32>(global4.b.x, -6697i, 6499i), global4.c, global4.d))), 566f)));
    var_1 = func_4(Struct_4(Struct_2(_wgslsmith_div_vec4_f32(global1.a.a, _wgslsmith_f_op_vec4_f32(max(global1.a.a, global1.a.a))), global4.c.e.xzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1121f, var_1.c.d.x, arg_0))))));
    let var_2 = global1.a;
    return _wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d ^ var_1.b.x, ~(-2147483647i), var_1.b.x, u_input.d), vec4<i32>(max(var_1.b.x, var_1.b.x), _wgslsmith_clamp_i32(u_input.d, -77441i, u_input.d), _wgslsmith_div_i32(global4.b.x, 58658i), _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-65237i, -2147483647i))))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, _wgslsmith_dot_vec2_i32(min(global4.b.xx, var_1.b.yy), vec2<i32>(-1i, 1i)), _wgslsmith_clamp_i32(~(-9875i), _wgslsmith_dot_vec2_i32(vec2<i32>(global4.b.x, 1i), vec2<i32>(var_1.b.x, u_input.d)), _wgslsmith_div_i32(-1i, u_input.d)), u_input.d), select(vec4<i32>(-2147483647i, -2147483647i, -6946i, -2147483647i) & vec4<i32>(43205i, global4.b.x, -4554i, global4.b.x), ~vec4<i32>(-43183i, -19460i, 0i, var_1.b.x), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(false, true, false, true), vec4<bool>(global3.x, var_1.a.x, global4.a.x, global3.x))) | _wgslsmith_mod_vec4_i32(vec4<i32>(global4.b.x, -1i, 27265i, global4.b.x), abs(vec4<i32>(0i, var_1.b.x, -39574i, -61030i)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = func_4(Struct_4(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.a - vec4<f32>(385f, global1.a.a.x, -1465f, 732f)), _wgslsmith_f_op_vec4_f32(-global1.a.a)), global4.c.e.yzz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global4.c.a.x)), global4.c.a.x)))));
    let var_2 = global4.c.b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(-453f, global4.c.a.x), 783f);
    global4 = Struct_5(select(vec3<bool>((0u ^ var_1.c.e.x) <= ~1u, true, !any(vec4<bool>(true, true, global4.a.x, global4.a.x))), vec3<bool>(var_1.a.x, !(!global4.a.x), arg_2.a.x >= _wgslsmith_f_op_f32(2563f - -1298f)), func_4(Struct_4(global1.a)).a), ~(abs(-vec3<i32>(arg_0.x, -8740i, -7398i)) | -vec3<i32>(-6417i, var_0.x, arg_0.x)), var_1.d, var_1.d);
    return global1.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    global3 = vec4<bool>(!select(!global4.a.x, global4.a.x, false), false, false, u_input.a.x <= global4.b.x);
    let var_0 = Struct_5(vec3<bool>(all(global4.a), false, global4.a.x), vec3<i32>(global4.b.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 1i), min(global4.b, vec3<i32>(-2147483647i, -1i, u_input.d)))), 1i), func_4(Struct_4(global1.a)).d, func_4(Struct_4(func_5(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.x, u_input.b, u_input.d, -88304i), vec4<i32>(-1i, -23614i, u_input.a.x, global4.b.x)), _wgslsmith_f_op_f32(-global1.a.c), global4.c))).d);
    let var_1 = ~(4294967295u << (abs(_wgslsmith_dot_vec3_u32(reverseBits(global4.d.e.wzz), select(arg_0.b, vec3<u32>(1u, 20417u, var_0.c.e.x), true))) % 32u));
    global1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -445f, global1.a.a.x, arg_0.a.x)))), vec3<u32>(_wgslsmith_mod_u32(1u, min(45643u, var_0.c.e.x)), ~1u, 39202u), global4.d.d.x));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(func_4(Struct_4(func_5(vec4<i32>(-2147483647i, 1i, -6426i, 45822i), -957f, Struct_3(vec2<f32>(-617f, arg_0.c), var_0.d.b, var_0.d.d.x, arg_0.a.wwy, vec4<u32>(0u, arg_0.b.x, var_1, 30588u))))).b.x, -u_input.d ^ _wgslsmith_add_i32(~global4.b.x, var_0.b.x)));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x))))), global1.a.c), global4.d.b, _wgslsmith_f_op_f32(min(-1140f, _wgslsmith_f_op_f32(select(global1.a.a.x, 426f, !all(vec4<bool>(var_0.a.x, true, true, true)))))), global4.c.d, func_4(Struct_4(arg_0)).d.e);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_5(vec3<bool>(!select(global4.d.c == -1012f, global4.a.x, global4.a.x), all(!vec3<bool>(true, global3.x, global4.a.x)), global4.a.x), u_input.a, func_6(func_5(func_1(any(vec2<bool>(false, false))), _wgslsmith_div_f32(-852f, global1.a.c), func_4(Struct_4(global1.a)).c), global4.d.b), func_4(Struct_4(Struct_2(vec4<f32>(global4.d.c, -870f, 1950f, global1.a.a.x), ~global4.c.e.xwy, _wgslsmith_f_op_f32(max(global4.d.d.x, global4.d.c))))).d);
    let var_0 = global1.a.a.wzw;
    let var_1 = vec4<bool>(false, global3.x, false, !global3.x);
    var var_2 = vec4<bool>(false && global3.x, true, !func_4(Struct_4(func_5(vec4<i32>(global4.b.x, global4.b.x, global4.b.x, global4.b.x), var_0.x, global4.d))).a.x, all(select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(global3.x, global4.a.x, global4.a.x), var_1.wyy)) || true);
    let var_3 = !vec4<bool>(global3.x, !any(vec4<bool>(true, false, global3.x, false)), global4.a.x, !(func_6(Struct_2(vec4<f32>(global1.a.a.x, global1.a.c, -269f, var_0.x), vec3<u32>(32096u, 18970u, 1u), var_0.x), global2[_wgslsmith_index_u32(u_input.c, 32u)]).e.x != 1u));
    global4 = func_4(Struct_4(global1.a));
    let var_4 = func_4(Struct_4(global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_4.b.x << (~(~4294967295u) % 32u), ~global4.c.e.wz, vec4<u32>(~1u, _wgslsmith_add_u32(~var_4.d.b.a, _wgslsmith_mult_u32(~var_4.d.b.a, var_4.c.e.x)), 48994u, 1u), var_4.b.yx);
}

