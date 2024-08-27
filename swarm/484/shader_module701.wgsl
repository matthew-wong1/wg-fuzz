struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23037i;

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = 35473i;
    global1 = array<Struct_2, 9>();
    global1 = array<Struct_2, 9>();
    global0 = 1i;
    let var_0 = Struct_3(1i, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-809f, arg_0, 1586f, arg_0)) + vec4<f32>(826f, arg_0, -1339f, arg_0)))));
    return 1i;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = false;
    global0 = max(_wgslsmith_add_i32(1i, firstLeadingBit(-4306i)), 29582i);
    var var_1 = Struct_3(-20724i, Struct_1(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1062f, -1463f, _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(-1087f + 578f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1206f, -1271f, arg_0)))));
    var_1 = Struct_3(-18228i, Struct_1(var_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1142f, arg_0, var_1.b.b.x, arg_0)))));
    var var_2 = func_3(-267f);
    return var_1.b;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(u_input.d, u_input.b), u_input.c.x, ~0u), ~(vec4<u32>(0u, 1u, 0u, 8230u) << (vec4<u32>(0u, u_input.c.x, u_input.d, 1u) % vec4<u32>(32u)))) & ~min(~(vec4<u32>(u_input.d, 33897u, u_input.a.x, 4294967295u) ^ vec4<u32>(u_input.c.x, u_input.c.x, 1u, 15458u)), vec4<u32>(27597u | u_input.e, 4294967295u << (u_input.e % 32u), u_input.d | u_input.d, u_input.a.x));
    let var_1 = _wgslsmith_mult_u32(~73736u | var_0.x, 5804u);
    var var_2 = arg_0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.b.x))), _wgslsmith_div_f32(arg_0.b.b.x, _wgslsmith_f_op_f32(-638f + arg_0.b.b.x))), -798f, arg_0.b.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.b.x + 2628f)))) + arg_0.b.b);
    var var_4 = Struct_2(i32(-1i) * -40946i, countOneBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, -1i), vec4<i32>(1i, 16562i, -2147483647i, -2147483647i), vec4<i32>(0i, -1i, arg_0.a, arg_0.a)) | ~vec4<i32>(arg_0.a, 0i, arg_0.a, arg_0.a))), u_input.c << (firstTrailingBit(abs(~u_input.a.zy)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, ~arg_0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(8671i, arg_0.a), abs(vec2<i32>(4590i, arg_0.a)))), ~_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_0.a, 1i), _wgslsmith_sub_i32(8176i, 2147483647i))), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(-(vec2<i32>(arg_0.a, 2147483647i) ^ vec2<i32>(17005i, arg_0.a)), reverseBits(vec2<i32>(arg_0.a, 19196i)) ^ select(vec2<i32>(arg_0.a, -2413i), vec2<i32>(arg_0.a, 57097i), vec2<bool>(false, arg_0.b.a))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.a, -2147483647i)), min(vec2<i32>(2147483647i, arg_0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(21548i, arg_0.a))))));
    return Struct_1(-39911i <= func_3(_wgslsmith_f_op_f32(560f * _wgslsmith_div_f32(-264f, arg_0.b.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.b) * vec4<f32>(var_3.x, arg_0.b.b.x, var_3.x, arg_0.b.b.x)))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(-2147483647i, func_4(Struct_3(1i >> (u_input.d % 32u), func_2(-1043f))));
    global1 = array<Struct_2, 9>();
    let var_1 = Struct_2(var_0.a, ~abs(vec4<i32>(var_0.a | var_0.a, _wgslsmith_div_i32(var_0.a, var_0.a), ~(-23263i), ~var_0.a)), min(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, 40518u), u_input.a), ~u_input.d)), max(min(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.a.x, 27497u), _wgslsmith_add_vec2_u32(u_input.a.zx, u_input.c)), vec2<u32>(u_input.d, ~u_input.d))), -(~vec2<i32>(select(var_0.a, -1i, var_0.b.a), -26964i)), ~abs(max(-vec2<i32>(-55636i, var_0.a), vec2<i32>(var_0.a, var_0.a) << (u_input.a.yz % vec2<u32>(32u)))));
    let var_2 = var_0;
    return Struct_3(var_0.a, func_2(_wgslsmith_f_op_f32(f32(-1f) * -956f)));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    global1 = array<Struct_2, 9>();
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(reverseBits(arg_1.a), arg_0) | arg_0, max(countOneBits(_wgslsmith_clamp_i32(-arg_0, -23129i, 0i >> (u_input.b % 32u))), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 53331i, 29262i, 60338i), ~vec4<i32>(arg_1.a, 10808i, 33199i, arg_0)))), -13732i, arg_1.a);
    var var_1 = any(vec3<bool>(true, false, true));
    var var_2 = select(select(select(!(!vec4<bool>(arg_1.b.a, arg_1.b.a, true, arg_1.b.a)), !(!vec4<bool>(arg_1.b.a, true, true, false)), select(select(vec4<bool>(arg_1.b.a, false, true, true), vec4<bool>(arg_1.b.a, true, true, false), vec4<bool>(arg_1.b.a, arg_1.b.a, false, false)), vec4<bool>(true, false, arg_1.b.a, arg_1.b.a), true)), select(select(vec4<bool>(arg_1.b.a, arg_1.b.a, true, false), select(vec4<bool>(arg_1.b.a, true, arg_1.b.a, arg_1.b.a), vec4<bool>(arg_1.b.a, false, arg_1.b.a, true), vec4<bool>(true, arg_1.b.a, true, true)), vec4<bool>(arg_1.b.a, false, false, arg_1.b.a)), vec4<bool>(arg_1.b.a || false, u_input.c.x == 40311u, any(vec2<bool>(arg_1.b.a, arg_1.b.a)), arg_1.b.a || arg_1.b.a), select(vec4<bool>(arg_1.b.a, false, arg_1.b.a, arg_1.b.a), vec4<bool>(true, arg_1.b.a, arg_1.b.a, arg_1.b.a), select(vec4<bool>(arg_1.b.a, true, arg_1.b.a, false), vec4<bool>(arg_1.b.a, arg_1.b.a, false, arg_1.b.a), vec4<bool>(true, true, true, true)))), vec4<bool>(all(vec3<bool>(arg_1.b.a, true, arg_1.b.a)), !all(vec3<bool>(false, arg_1.b.a, arg_1.b.a)), true, ~arg_0 != _wgslsmith_dot_vec4_i32(var_0, var_0))), !vec4<bool>(true, !func_4(Struct_3(1i, arg_1.b)).a, !(!arg_1.b.a), false), vec4<bool>(select(32678u, select(4294967295u, u_input.d, false), arg_1.b.a) > ~(~4294967295u), arg_1.b.a, false, all(vec3<bool>(all(vec4<bool>(false, arg_1.b.a, false, arg_1.b.a)), true, select(arg_1.b.a, false, true)))));
    var_2 = !vec4<bool>(arg_1.b.a, arg_1.b.a == var_2.x, arg_1.b.a, !any(select(vec4<bool>(arg_1.b.a, false, arg_1.b.a, false), vec4<bool>(false, var_2.x, arg_1.b.a, arg_1.b.a), vec4<bool>(var_2.x, arg_1.b.a, arg_1.b.a, var_2.x))));
    return var_2.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(~vec2<i32>(1i, 1i))), func_1());
    var var_1 = vec3<bool>(false, var_0.x, -881i < func_3(_wgslsmith_f_op_f32(f32(-1f) * -576f)));
    var var_2 = select(vec3<bool>(all(!select(vec4<bool>(var_1.x, var_0.x, var_1.x, true), vec4<bool>(var_1.x, true, var_0.x, var_0.x), false)), func_4(func_1()).a, false | var_0.x), select(!(!vec3<bool>(true, true, var_1.x)), vec3<bool>(any(var_1.xx), false, !func_2(105f).a), vec3<bool>(true, true, var_0.x)), select(vec3<bool>(true, var_1.x, !(!var_0.x)), !(!vec3<bool>(true, true, var_0.x)), var_0.x));
    global1 = array<Struct_2, 9>();
    let var_3 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(1136f, -494f))) + func_2(-1723f).b.x)).b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) * 1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(35757u, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))), ~(~(u_input.d >> (u_input.c.x % 32u)))), vec3<u32>(_wgslsmith_clamp_u32(max(4294967295u, u_input.d), ~78940u, u_input.a.x), u_input.c.x, firstTrailingBit(~(~u_input.e))), 1078f, countOneBits(41540u));
}

