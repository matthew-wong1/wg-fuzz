struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -39442i, 0i);

var<private> global1: array<vec3<u32>, 10>;

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: array<vec4<bool>, 14>;

var<private> global4: bool = true;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = -6745i;
    var var_1 = vec3<u32>(arg_0.a, arg_0.a, min(min(18034u & arg_2.c.c.b, _wgslsmith_dot_vec3_u32(countOneBits(arg_2.c.a), arg_2.c.a & arg_2.c.a)), 32303u));
    var var_2 = true;
    global3 = array<vec4<bool>, 14>();
    var var_3 = vec4<bool>(!select(true, false, min(arg_0.a, arg_2.e.b) != ~arg_2.e.b), any(vec4<bool>(any(vec4<bool>(false, arg_2.c.b.c, false, true)), any(!vec3<bool>(true, arg_2.e.c, true)), true, false)), all(arg_2.a), arg_2.e.c);
    return countOneBits(vec3<i32>(2147483647i, -firstLeadingBit(u_input.b.x), ~_wgslsmith_div_i32(arg_2.e.d, -2147483647i))) ^ _wgslsmith_sub_vec3_i32(abs(_wgslsmith_add_vec3_i32(min(vec3<i32>(arg_2.d, u_input.b.x, -7412i), vec3<i32>(global0.x, u_input.c, -1i)), vec3<i32>(34989i, u_input.a, u_input.b.x))), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(global0.x, arg_2.d, -2147483647i)) ^ ~vec3<i32>(-26541i, arg_2.c.c.d, global0.x), ~vec3<i32>(2147483647i, global0.x, u_input.b.x) << (_wgslsmith_div_vec3_u32(arg_2.c.a, vec3<u32>(arg_2.e.b, 22810u, arg_2.e.b)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-1i, -1i), -2147483647i ^ arg_2.e.d, 2147483647i)));
}

fn func_4(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = vec4<bool>(all(vec3<bool>(true, true, true)) | false, any(!vec4<bool>(any(vec2<bool>(false, true)), true, false, all(vec4<bool>(false, false, false, false)))), true, !(false && !all(global3[_wgslsmith_index_u32(10865u, 14u)])));
    global2 = array<vec3<bool>, 23>();
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1203f, -1378f, 1001f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(819f - 251f), _wgslsmith_f_op_f32(-2355f - 436f), _wgslsmith_div_f32(1323f, 589f))))), 0u, var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-(global0.x | -1i), min(arg_0.x, arg_0.x)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c, u_input.b.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-3325i, 12372i), arg_0.xx), _wgslsmith_add_vec2_i32(global0.yx, vec2<i32>(-10071i, arg_0.x))) << (vec2<u32>(71016u, 1u) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, _wgslsmith_div_u32(~67748u, var_1.b), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.b, var_1.b)), ~vec2<u32>(var_1.b, var_1.b))), _wgslsmith_mult_vec3_u32(max(~vec3<u32>(var_1.b, 4294967295u, 1u), ~vec3<u32>(48577u, var_1.b, var_1.b)), ~_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(var_1.b, 10u)], global1[_wgslsmith_index_u32(var_1.b, 10u)]))) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.b ^ var_1.b, abs(46209u)), global1[_wgslsmith_index_u32(21283u, 10u)]);
    var var_3 = true;
    return select(vec2<bool>(!any(global2[_wgslsmith_index_u32(~var_1.b, 23u)]), true), vec2<bool>(false, var_1.c), var_0.xx);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a >> (~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 110873u, 1u), vec4<u32>(58312u, 64667u, 63518u, 16577u)) ^ firstTrailingBit(4294967295u))) % 32u);
    global1 = array<vec3<u32>, 10>();
    global4 = true;
    let var_1 = Struct_3(func_4(~(~func_3(Struct_4(22633u), 584f, Struct_3(vec2<bool>(true, false), true, Struct_2(global1[_wgslsmith_index_u32(1u, 10u)], Struct_1(vec3<f32>(140f, 1304f, -253f), 20085u, false, 0i), Struct_1(vec3<f32>(-785f, -863f, 2362f), 1u, false, 2147483647i)), 2147483647i, Struct_1(vec3<f32>(254f, 289f, -1100f), 4294967295u, true, -39204i))))), false, Struct_2(abs(~(~global1[_wgslsmith_index_u32(0u, 10u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), ~1u, true, _wgslsmith_dot_vec3_i32(min(vec3<i32>(63966i, -23687i, global0.x), vec3<i32>(global0.x, -47193i, -2147483647i)), -vec3<i32>(global0.x, u_input.c, global0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-290f, 1065f, -575f)))), min(~0u, ~34137u), true, abs(-2147483647i))), ~(-_wgslsmith_div_i32(0i, ~global0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-683f, 603f, -1248f))))), vec3<f32>(1f, 1f, 1f), false)), 1u, (_wgslsmith_clamp_u32(38117u, 16600u, 54396u) >> (1u % 32u)) < 1u, _wgslsmith_div_i32(select(_wgslsmith_add_i32(global0.x, -28079i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -16486i), vec2<i32>(u_input.b.x, 10196i)), all(vec2<bool>(true, true))), global0.x)));
    global0 = -abs((countOneBits(vec3<i32>(u_input.b.x, 41707i, -57028i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(var_1.d, 39765i, global0.x))) | countOneBits(vec3<i32>(2147483647i, u_input.b.x, -71705i)));
    return Struct_1(var_1.e.a, abs(~(abs(0u) | abs(var_1.e.b))), func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(25923i, u_input.c, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1778i, -2147483647i, var_1.d), vec3<i32>(1i, -25372i, var_1.c.b.d))), abs(select(vec3<i32>(53546i, -32043i, -1i), vec3<i32>(var_1.e.d, 1i, u_input.a), var_1.e.c)))).x, ~select(_wgslsmith_div_i32(-u_input.b.x, 1i), global0.x, true));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    let var_0 = arg_0.x;
    var var_1 = func_2();
    let var_2 = var_1.b;
    let var_3 = var_1.c;
    let var_4 = arg_1;
    return Struct_2(~(~(~_wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(arg_1.a, 10u)]))), Struct_1(var_1.a, 4294967295u, var_1.c, -1i), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + 763f), var_1.a.x, _wgslsmith_f_op_f32(max(303f, 2266f)))), 24783u, ((var_1.d < var_1.d) && false) && var_1.c, -2147483647i >> (abs(var_4.a ^ var_1.b) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(false, true), true, func_1(countOneBits(~vec2<u32>(1u, 1u)), Struct_4(firstLeadingBit(47650u)), ~(select(-2147483647i, global0.x, true) << (~29176u % 32u))), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(abs(u_input.c), 99776i)), func_2().d), Struct_1(_wgslsmith_div_vec3_f32(func_2().a, vec3<f32>(-281f, 1f, _wgslsmith_f_op_f32(max(-630f, -375f)))), ~_wgslsmith_sub_u32(func_1(vec2<u32>(36339u, 76379u), Struct_4(0u), global0.x).a.x, ~36818u), false, -2003i));
    let var_1 = ~vec4<u32>(~13811u, var_0.c.c.b, var_0.c.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(34755u & var_0.e.b, 1u, _wgslsmith_div_u32(var_0.c.a.x, var_0.e.b)), var_0.e.b));
    var var_2 = (var_0.e.d << (3163u % 32u)) >> (~_wgslsmith_mult_u32(var_0.c.b.b, _wgslsmith_add_u32(var_0.e.b, var_1.x)) % 32u);
    var var_3 = func_1(select(var_0.c.a.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(30125u, var_1.x), reverseBits(vec2<u32>(1u, var_0.e.b))), _wgslsmith_f_op_f32(f32(-1f) * -601f) >= _wgslsmith_f_op_f32(floor(var_0.e.a.x))), Struct_4(25826u), ~abs(var_0.e.d)).c.d ^ select(~(global0.x >> (4294967295u % 32u)) << (_wgslsmith_add_u32(1u, ~var_1.x) % 32u), u_input.a, var_0.b);
    let var_4 = select(select(!select(!global3[_wgslsmith_index_u32(0u, 14u)], !vec4<bool>(true, false, true, var_0.e.c), select(global3[_wgslsmith_index_u32(var_0.e.b, 14u)], global3[_wgslsmith_index_u32(41930u, 14u)], false)), !(!(!global3[_wgslsmith_index_u32(0u, 14u)])), !(!vec4<bool>(false, false, false, var_0.b))), vec4<bool>(!var_0.c.b.c, select(!(true && var_0.b), all(select(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(var_0.c.a.x, 14u)], vec4<bool>(true, var_0.c.c.c, var_0.c.c.c, var_0.c.c.c))), all(global2[_wgslsmith_index_u32(~var_0.c.b.b, 23u)])), var_0.e.c, select(!func_4(vec3<i32>(var_0.d, u_input.c, 26383i)).x, var_0.c.b.c, !func_1(var_1.zz, Struct_4(50589u), global0.x).c.c)), !vec4<bool>(var_0.e.c, var_0.c.b.c, var_0.e.c, !var_0.e.c));
    let var_5 = global1[_wgslsmith_index_u32(37090u, 10u)];
    var_0 = Struct_3(select(vec2<bool>(!any(vec3<bool>(var_4.x, var_0.a.x, true)), !var_4.x & !var_4.x), vec2<bool>(all(!var_4.wzy), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.b.a.x))) < -1000f), !any(!select(global2[_wgslsmith_index_u32(0u, 23u)], var_4.xww, global2[_wgslsmith_index_u32(0u, 23u)])), func_1(var_0.c.a.yy, Struct_4(func_1(vec2<u32>(var_0.e.b, var_0.e.b) | var_0.c.a.zz, Struct_4(0u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 42386i, -1i, -4005i), vec4<i32>(u_input.b.x, global0.x, -1i, -1i))).a.x), -2147483647i), 4432i << (min(1430u, select(var_5.x, var_5.x, true)) % 32u), var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_1.zy, vec3<i32>(func_2().d, ~func_1(var_1.wx, Struct_4(var_0.e.b), i32(-1i) * -1i).b.d, -1i), ~select(var_1.wz, vec2<u32>(var_0.e.b, 1u) << (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 30815u), vec2<u32>(var_1.x, var_0.c.b.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(ceil(var_0.c.b.a.x)) != -585f), vec4<i32>(-var_0.e.d, u_input.c, global0.x, ~1i));
}

