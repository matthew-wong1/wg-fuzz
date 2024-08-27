struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true));

var<private> global2: array<Struct_5, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(923f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1424f, 1000f)))))), _wgslsmith_mod_vec4_u32(~u_input.b, u_input.b), reverseBits(max(~vec4<i32>(1i, 56336i, -608i, u_input.d), vec4<i32>(u_input.d, global0.x, u_input.d, -2362i) << (countOneBits(vec4<u32>(u_input.c, 1230u, u_input.c, 1u)) % vec4<u32>(32u)))), u_input.c);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, var_0.a)))), ~(~var_0.c) >> (var_0.c % vec4<u32>(32u)), abs(-var_0.d), var_0.e), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.b.x, var_0.b.x, var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -651f, 1344f, var_0.a)))))));
    let var_2 = var_1.a;
    var_0 = var_1.a;
    return -889f;
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1073f, 872f, 880f)))))))))));
    let var_1 = Struct_3(266f, Struct_1(var_0.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-991f * -134f)), _wgslsmith_f_op_f32(func_3())), vec4<u32>(~u_input.c << (0u % 32u), max(u_input.b.x, 4294967295u << (u_input.e.x % 32u)), abs(u_input.c), u_input.e.x), _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(37488i, 0i, 40605i, global0.x), vec4<i32>(-2147483647i, 0i, -1i, global0.x))), abs(abs(vec4<i32>(global0.x, 116i, u_input.a, u_input.d)))), _wgslsmith_add_u32(~firstTrailingBit(u_input.e.x), max(u_input.e.x, u_input.b.x) >> ((0u << (0u % 32u)) % 32u))), -1i, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -248f))))) + vec2<f32>(1173f, 169f)), select(vec4<u32>(0u, 17461u, 39969u, ~u_input.b.x), u_input.b, vec4<bool>(u_input.b.x > u_input.b.x, all(vec4<bool>(false, false, false, false)), true, all(vec2<bool>(true, false)))), _wgslsmith_div_vec4_i32(~vec4<i32>(global0.x, u_input.d, -2147483647i, -5783i) & vec4<i32>(u_input.d, global0.x, -2147483647i, u_input.d), vec4<i32>(-1i) * -vec4<i32>(u_input.a, -301i, global0.x, 21573i)), ~(~min(1u, u_input.c))));
    var var_2 = all(select(vec2<bool>(true, true), vec2<bool>(!select(false, false, false), false), false));
    let var_3 = Struct_2(var_1.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.b.x), -290f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(select(var_0.x, -976f, false))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1504f, 335f, var_1.a, var_0.x), vec4<f32>(-687f, var_0.x, var_1.a, var_0.x), global1[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1206f, var_1.d.a, var_0.x, var_1.b.a), vec4<f32>(1945f, 392f, 1000f, var_0.x))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d.b.x, _wgslsmith_f_op_f32(floor(-1258f)), var_0.x, _wgslsmith_f_op_f32(sign(394f))))), true)));
    let var_4 = Struct_5(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_3.a.c.x, 4294967295u, var_1.b.c.x)) >> (~vec3<u32>(var_1.d.c.x, 95051u, var_1.d.e) % vec3<u32>(32u)), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 60690u), vec3<u32>(43253u, var_3.a.c.x, var_1.b.e), vec3<u32>(var_3.a.c.x, 30989u, 4294967295u)))), vec3<u32>(4294967295u, min(_wgslsmith_add_u32(var_3.a.e, var_1.b.e), var_1.b.e ^ var_1.b.e), _wgslsmith_clamp_u32(u_input.b.x, var_1.d.e, 1u) | 4294967295u)), select(vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true), vec2<bool>(true, true), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), var_1.d.d.wxy, vec2<f32>(-1379f, _wgslsmith_f_op_f32(f32(-1f) * -441f)), var_3.a.e);
    return var_1;
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: vec3<u32>) -> i32 {
    global2 = array<Struct_5, 9>();
    var var_0 = func_2();
    var var_1 = arg_1;
    var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(546f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_div_f32(arg_1.d.x, var_0.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(114f + arg_1.d.x)))))), func_2().b, i32(-1i) * -5294i, func_2().d);
    var_0 = Struct_3(1575f, var_0.b, _wgslsmith_mult_i32(abs(-2147483647i), arg_1.c.x), Struct_1(_wgslsmith_f_op_f32(-arg_1.d.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), -1567f), ~var_0.d.c, firstTrailingBit(-(~vec4<i32>(var_0.c, -2147483647i, 50030i, 27111i))), ~arg_0));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(func_1(u_input.c, Struct_5(vec3<u32>(0u, 56601u, 1u), vec2<bool>(false, true), vec3<i32>(global0.x, u_input.a, global0.x), vec2<f32>(563f, -791f), 22665u), abs(u_input.b.wzz)), -1i) & -vec2<i32>(global0.x, -29796i | global0.x);
    global0 = vec2<i32>(u_input.a, u_input.d << (20391u % 32u));
    var var_0 = abs(max(vec3<u32>(max(0u, max(4294967295u, u_input.b.x)), u_input.b.x, 4294967295u), _wgslsmith_mod_vec3_u32(u_input.e, _wgslsmith_sub_vec3_u32(u_input.b.wzz, vec3<u32>(1u, 1u, 1u)))));
    var var_1 = vec3<bool>(any(vec3<bool>(global0.x > 0i, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), true, false);
    global0 = ~(func_2().b.d.zz | -(~vec2<i32>(global0.x, u_input.d) & _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 22940i), vec2<i32>(u_input.a, global0.x))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~1i, ~(-2147483647i), global0.x), ~vec3<i32>(max(~(-8609i), u_input.a), ~_wgslsmith_mod_i32(global0.x, u_input.a), 2147483647i));
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.d, 0i) << (_wgslsmith_mult_vec3_u32(abs(u_input.b.wxz), select(u_input.b.zyw, vec3<u32>(83917u, 4294967295u, 1u), vec3<bool>(false, var_1.x, var_1.x))) % vec3<u32>(32u)), -(~max(vec3<i32>(var_2, var_2, var_2), vec3<i32>(var_2, u_input.a, global0.x)))) & vec3<i32>(-16530i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.d, 1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.d) | vec2<i32>(u_input.a, 3989i), ~vec2<i32>(u_input.a, 5491i))), firstLeadingBit(_wgslsmith_clamp_i32(max(20405i, global0.x), _wgslsmith_mult_i32(global0.x, 2147483647i), _wgslsmith_add_i32(0i, -1737i))));
    var var_4 = Struct_4(Struct_3(668f, Struct_1(-1000f, vec2<f32>(_wgslsmith_f_op_f32(153f - 1010f), _wgslsmith_f_op_f32(828f + -1000f)), u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(57677i, -2147483647i, var_3.x, var_2), vec4<i32>(global0.x, 8266i, global0.x, u_input.a)) | vec4<i32>(1i, u_input.a, 28330i, 20688i), 1445u), _wgslsmith_add_i32(~1i, ~(~var_3.x)), func_2().b));
    var_1 = select(!vec3<bool>(!(!var_1.x), !var_1.x, !any(vec4<bool>(true, false, true, var_1.x))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.a.d.a, -806f) * var_4.a.d.a) <= var_4.a.d.b.x, !(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), u_input.b.yww) > _wgslsmith_div_u32(0u, var_0.x)), all(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(u_input.c), _wgslsmith_div_u32(1292u, 4294967295u)), 13u)])), vec3<bool>(var_3.x > var_4.a.d.d.x, var_1.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_sub_u32(var_4.a.d.c.x, 4294967295u)) & var_4.a.d.c.x);
}

