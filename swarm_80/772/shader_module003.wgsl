struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: Struct_4,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec3<i32> = vec3<i32>(-71146i, 827i, i32(-2147483648));

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec3<u32>, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = vec4<bool>(global0[_wgslsmith_index_u32(14495u, 14u)], !global0[_wgslsmith_index_u32(0u, 14u)], global1.x >= u_input.c, _wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(u_input.c, u_input.c, -25682i)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, 0i), vec3<i32>(global1.x, global1.x, -54749i)), vec3<i32>(14120i, u_input.c, 1i) << (vec3<u32>(u_input.d, u_input.b, u_input.b) % vec3<u32>(32u)))) >= (~abs(-25579i) << (0u % 32u)));
    let var_1 = Struct_5(arg_0, (13936u >> (u_input.d % 32u)) <= firstLeadingBit(abs(u_input.b)), Struct_4(u_input.c, Struct_3(246f), Struct_1(~10042u, ~_wgslsmith_mult_i32(global1.x, u_input.c), -44696i, select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], var_0.x, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(75035u, 14u)], true, false, global0[_wgslsmith_index_u32(u_input.a, 14u)]), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), var_0.xx);
    global3 = array<vec3<u32>, 8>();
    let var_2 = vec4<u32>(abs(1u) | u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.c.c.a, u_input.d, 1u), vec4<u32>(75769u, 4294967295u, 4714u, 23198u)) << (5642u % 32u), ~(~1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 910u), vec2<u32>(18922u, var_1.c.c.a)), var_1.c.c.a), ~(~2372u)), select(max(vec4<u32>(17275u, var_1.c.c.a, 64957u, 27089u), vec4<u32>(var_1.c.c.a, u_input.d, var_1.c.c.a, 1u)), vec4<u32>(var_1.c.c.a, ~var_1.c.c.a, 90649u, min(var_1.c.c.a, 1u)), !var_0.x)), var_1.c.c.a, ~4294967295u << (u_input.b % 32u));
    let var_3 = Struct_2(-_wgslsmith_add_i32(min(1i, -2147483647i), abs(_wgslsmith_clamp_i32(var_1.c.a, -2147483647i, -25871i))), ~(~_wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(u_input.a, var_2.x)) | abs(u_input.d)));
    return vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c.c.e))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(262f)) + var_1.c.b.a));
}

fn func_2() -> vec3<f32> {
    global0 = array<bool, 14>();
    global3 = array<vec3<u32>, 8>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-871f * 436f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(523f * 836f), _wgslsmith_f_op_f32(step(1265f, -1267f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(768f, -142f, 168f), vec3<f32>(-1270f, -631f, -1043f))) * vec3<f32>(_wgslsmith_f_op_f32(277f + 532f), -314f, -936f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(_wgslsmith_f_op_f32(-454f + 1134f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(940f, 573f, -989f) - vec3<f32>(309f, -158f, 607f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, 217f, -812f)))));
    global0 = array<bool, 14>();
    var var_1 = Struct_4(u_input.c, Struct_3(var_0.x), Struct_1(~(~(~u_input.d)), -8375i, 0i, select(vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 14u)], false, false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 37288u), vec2<u32>(0u, u_input.a)), 14u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(10341u, 14u)], global0[_wgslsmith_index_u32(u_input.d, 14u)], true, true), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.a, 14u)], false, global0[_wgslsmith_index_u32(u_input.a, 14u)]), true)), -820f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-488f)))), 250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-268f, var_1.c.e, var_1.c.e), vec3<f32>(821f, var_1.b.a, 1483f)), vec3<f32>(403f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.e, var_0.x, var_1.b.a) * vec3<f32>(-1406f, -1000f, -346f))))), true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = arg_1;
    global3 = array<vec3<u32>, 8>();
    let var_1 = Struct_1(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_add_u32(u_input.d | u_input.d, u_input.d >> (4294967295u % 32u))) & max(u_input.d, 4294967295u), 2147483647i, u_input.c, !vec4<bool>(false, !(!global0[_wgslsmith_index_u32(u_input.b, 14u)]), false, (global0[_wgslsmith_index_u32(1u, 14u)] & false) & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 13569u), vec2<u32>(0u, 6588u)), 14u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) - 1f));
    var var_2 = _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2()).x)));
    var_2 = 468f;
    return Struct_2(_wgslsmith_sub_i32(-87544i, _wgslsmith_mult_i32(_wgslsmith_add_i32(~0i, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, global1.x), vec3<i32>(u_input.c, global1.x, 2147483647i)) | -2147483647i)), _wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(u_input.a), ~var_1.a, var_1.a, 1u), ~abs(vec4<u32>(91146u, 4294967295u, u_input.b, 4294967295u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, arg_0.x)) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-882f, -289f) - _wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_f32(trunc(753f)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -2186f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 406f) - vec3<f32>(arg_0.x, arg_0.x, -747f))), _wgslsmith_f_op_vec3_f32(func_2())));
    global1 = vec3<i32>(var_0.x, u_input.c, -(var_0.x << (u_input.a % 32u)));
    global0 = array<bool, 14>();
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-121f))), 1166f)), Struct_3(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -238f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1000f, -937f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(115f))).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(arg_0.x))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) + arg_0.x))));
    return var_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = vec4<bool>(true, all(select(arg_1.c.d, arg_3.c.d, false)), !(true | (arg_1.c.d.x != false)) != all(!(!arg_1.c.d.xzw)), false);
    global2 = arg_0.a;
    return _wgslsmith_f_op_f32(step(589f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.e) + arg_3.b.a), 977f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1914f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f - _wgslsmith_f_op_f32(select(129f, -295f, global0[_wgslsmith_index_u32(0u, 14u)]))))) * _wgslsmith_f_op_f32(-585f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(func_1(vec2<f32>(-1859f, -2573f), vec3<i32>(1723i, 11797i, -2147483647i)), Struct_4(global1.x, Struct_3(1579f), Struct_1(4294967295u, u_input.c, global1.x, vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 14u)], false), -538f)), -11364i, Struct_4(u_input.c, Struct_3(-638f), Struct_1(1u, 9794i, -1i, vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], false, global0[_wgslsmith_index_u32(23919u, 14u)]), 934f))))))));
    global2 = _wgslsmith_mult_i32(max(u_input.c, ~1i), firstLeadingBit(abs(abs(_wgslsmith_mult_i32(-1i, u_input.c)))));
    let var_1 = 0u;
    let var_2 = _wgslsmith_add_vec2_i32(~global1.zy, global1.xz);
    var var_3 = Struct_4(-_wgslsmith_sub_i32(global1.x, var_2.x) >> (_wgslsmith_mult_u32(~var_1, abs(0u)) % 32u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(var_0, var_0))))), Struct_1((countOneBits(u_input.b) & ~4313u) ^ (0u & ~u_input.d), 31781i, _wgslsmith_div_i32(abs(_wgslsmith_clamp_i32(-1i, global1.x, 5881i)), _wgslsmith_mod_i32(u_input.c, global1.x)), select(select(select(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(8957u, 14u)], false, false), global0[_wgslsmith_index_u32(34020u, 14u)]), select(vec4<bool>(false, true, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(23311u, 14u)], true, true), global0[_wgslsmith_index_u32(var_1, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(7808u, 14u)], true)), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 14u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(select(var_1, 4294967295u, true), 14u)], true, global0[_wgslsmith_index_u32(~0u, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))) * var_0)));
    var var_4 = global0[_wgslsmith_index_u32(1u & var_1, 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_3.c.a, var_3.c.a, 27068u, 1u), global3[_wgslsmith_index_u32(var_1, 8u)]);
}

