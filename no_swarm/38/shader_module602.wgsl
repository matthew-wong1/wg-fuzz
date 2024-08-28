struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(7979i), Struct_2(1i), Struct_2(2147483647i), Struct_2(-48395i), Struct_2(48009i), Struct_2(12258i), Struct_2(3708i), Struct_2(-17104i), Struct_2(2147483647i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(11274i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = -vec2<i32>(firstLeadingBit(u_input.a), u_input.a);
    global2 = array<Struct_2, 12>();
    return vec3<bool>(false, !arg_1.x, u_input.a < -1i);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(arg_1.yzz, ~(firstLeadingBit(arg_1.yww) & vec3<i32>(arg_0.c.x, ~arg_0.c.x, i32(-1i) * -38245i)));
    return func_2(arg_0.c.x, vec2<bool>(any(vec3<bool>(all(vec2<bool>(arg_0.a.a, arg_0.a.a)), all(vec2<bool>(true, arg_0.a.a)), arg_0.a.a)), any(select(select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.a.a, false, arg_0.a.a), true), select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a), vec3<bool>(arg_0.a.a, false, arg_0.a.a), vec3<bool>(false, arg_0.a.a, arg_0.a.a)), vec3<bool>(true, true, true))))).yx;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1313f, -1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(641f, 573f), vec2<f32>(1000f, 172f)))))))));
    global0 = array<Struct_2, 22>();
    let var_1 = func_2(~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global1.a, -30927i), vec3<i32>(-73682i, global1.a, 39951i)), _wgslsmith_add_i32(2147483647i, u_input.a))), vec2<bool>(false, true));
    let var_2 = !(!select(func_2(~(-1188i), func_3(Struct_4(Struct_3(var_1.x, Struct_1(-1i), 60022u, vec4<f32>(var_0.x, 1258f, var_0.x, var_0.x), Struct_1(2147483647i)), u_input.a, vec2<i32>(-1i, 2147483647i), u_input.b), vec4<i32>(global1.a, global1.a, global1.a, 16182i))).zy, func_2(~(-2147483647i), vec2<bool>(var_1.x, var_1.x)).xy, vec2<bool>(true || var_1.x, all(vec2<bool>(true, false)))));
    global2 = array<Struct_2, 12>();
    return Struct_3(!(global1.a < u_input.a), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(global1.a, 2147483647i, global1.a) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-13377i, 35069i, global1.a), vec3<i32>(-23283i, 2455i, 2147483647i)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-14675i, 17598i, -2147483647i), vec3<i32>(u_input.a, 2147483647i, 22249i)), ~vec3<i32>(global1.a, u_input.a, 0i)))), countOneBits(~7313u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), -1432f, -682f, _wgslsmith_f_op_f32(ceil(-2428f))), Struct_1(_wgslsmith_div_i32((i32(-1i) * -1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 15519u), vec3<u32>(4951u, 96358u, 32543u)) % 32u), abs(u_input.a))));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_2, 12>();
    var var_0 = vec2<bool>(func_2(arg_0.e.a, !(!vec2<bool>(true, arg_0.a))).x & all(!(!vec3<bool>(arg_0.a, true, arg_0.a))), false);
    var var_1 = false;
    let var_2 = arg_0.d.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(func_1().d * arg_0.d);
    return Struct_3(arg_0.a, Struct_1(-1i), ~u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, 511f, -1190f, -2022f)))), arg_0.d), Struct_1(~0i));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = arg_1.a.d.wz;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.d.x);
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(arg_0.x, abs(-global1.a) ^ global1.a), -19441i, -1i, -(~global1.a));
    var var_3 = ~abs(~30752u);
    var var_4 = _wgslsmith_mod_vec2_i32(-(vec2<i32>(~1i, _wgslsmith_add_i32(var_2.x, global1.a)) << (vec2<u32>(_wgslsmith_mult_u32(10794u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.c, 52867u), vec2<u32>(arg_1.a.c, 96880u))) % vec2<u32>(32u))), arg_1.c);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_5(_wgslsmith_div_vec4_i32(select(vec4<i32>(global1.a, u_input.a, global1.a, u_input.a), vec4<i32>(0i, -1i, 2147483647i, global1.a), true), _wgslsmith_div_vec4_i32(vec4<i32>(44809i, global1.a, global1.a, -14570i), vec4<i32>(2147483647i, -15669i, global1.a, 2147483647i))), Struct_4(func_4(func_1()), 1i ^ ~global1.a, vec2<i32>(u_input.a, global1.a), firstTrailingBit(0u)), vec3<bool>(false, true, !(u_input.b >= 80270u))), func_4(func_5((vec4<i32>(global1.a, -1i, global1.a, 20623i) >> (vec4<u32>(44386u, 0u, u_input.b, u_input.b) % vec4<u32>(32u))) >> (~vec4<u32>(63909u, 0u, u_input.b, 29707u) % vec4<u32>(32u)), Struct_4(func_1(), -623i >> (u_input.b % 32u), reverseBits(vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_dot_vec2_u32(vec2<u32>(23237u, u_input.b), vec2<u32>(u_input.b, u_input.b))), select(vec3<bool>(false, true, true), func_2(global1.a, vec2<bool>(false, false)), vec3<bool>(true, true, true)))).e.a, firstTrailingBit(_wgslsmith_div_vec2_i32(~(~vec2<i32>(u_input.a, 0i)), vec2<i32>(1i & global1.a, -1i))), u_input.b);
    global1 = Struct_1(-2147483647i);
    let var_1 = Struct_2(~(~_wgslsmith_mult_i32(~u_input.a, 40905i >> (u_input.b % 32u))));
    global1 = Struct_1(var_1.a << ((select(39990u, u_input.b, var_0.a.a) ^ _wgslsmith_clamp_u32(min(u_input.b, u_input.b), _wgslsmith_mod_u32(3910u, var_0.a.c), abs(70517u))) % 32u));
    global0 = array<Struct_2, 22>();
    var var_2 = ~vec2<u32>(countOneBits(~6790u), _wgslsmith_clamp_u32(~(~u_input.b), ~1581u & firstTrailingBit(u_input.b), u_input.b));
    let var_3 = global0[_wgslsmith_index_u32(var_2.x, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.d.zyw, vec3<f32>(var_0.a.d.x, -541f, var_0.a.d.x)) - _wgslsmith_f_op_vec3_f32(-var_0.a.d.zyz))) - var_0.a.d.xwz), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.d.yyw) + _wgslsmith_f_op_vec3_f32(-var_0.a.d.xyz)), func_4(Struct_3(false, var_0.a.e, 4294967295u, vec4<f32>(var_0.a.d.x, var_0.a.d.x, 1183f, 720f), Struct_1(global1.a))).d.ywx) * var_0.a.d.yzy), ~vec2<u32>(var_2.x, func_1().c), ~max(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(var_2.x, 1u)), ~vec2<u32>(0u, u_input.b)), abs(vec2<u32>(14406u, var_0.d)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(15355u, var_0.a.c), vec2<u32>(4294967295u, 43615u))), var_0.a.d);
}

