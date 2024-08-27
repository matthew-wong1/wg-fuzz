struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_2,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: Struct_2 = Struct_2(Struct_1(649f), vec2<f32>(-504f, -218f));

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(0u, 77822u, 31799u, 40049u), vec4<u32>(79962u, 4294967295u, 0u, 83294u), vec4<u32>(91842u, 1u, 0u, 11789u), vec4<u32>(14136u, 21411u, 1u, 1u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> Struct_3 {
    return arg_0.b.b;
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec3<u32> {
    global1 = Struct_2(global1.a, global1.b);
    global1 = arg_1.b.c;
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1276f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 711f)))), arg_1.a.a), arg_1.b.b, arg_1.b.c);
    global1 = Struct_2(func_1(Struct_5(func_1(Struct_5(arg_1.c.a, Struct_4(vec4<f32>(-1203f, arg_0, arg_0, arg_0), arg_1.b.b, var_0.c), arg_1.c, Struct_1(-857f), arg_1.e), !global0[_wgslsmith_index_u32(arg_1.e.x, 2u)]).a, Struct_4(var_0.a, arg_1.b.b, arg_1.b.c), Struct_2(Struct_1(global1.a.a), global1.b), func_1(arg_1, true).a, _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.e.x, 1u, u_input.b.x) & vec3<u32>(arg_1.e.x, 37897u, arg_1.e.x), abs(vec3<u32>(u_input.b.x, 1u, 1u)))), true).a, arg_1.b.c.b);
    global2 = array<vec4<u32>, 4>();
    return _wgslsmith_sub_vec3_u32(vec3<u32>(abs(min(_wgslsmith_div_u32(arg_1.e.x, 53108u), firstLeadingBit(arg_1.e.x))), 0u, u_input.b.x), ~firstLeadingBit(~min(vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(75298u, 58635u, 49517u))));
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    global1 = Struct_2(func_1(Struct_5(Struct_1(-161f), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, global1.a.a, global1.b.x, -566f)), func_1(Struct_5(global1.a, Struct_4(vec4<f32>(global1.a.a, 1409f, 120f, global1.b.x), Struct_3(global1.a), Struct_2(global1.a, vec2<f32>(global1.a.a, global1.b.x))), Struct_2(Struct_1(global1.b.x), vec2<f32>(-1726f, global1.b.x)), Struct_1(global1.a.a), u_input.b), global0[_wgslsmith_index_u32(692u, 2u)]), Struct_2(global1.a, global1.b)), Struct_2(Struct_1(1000f), vec2<f32>(1000f, -174f)), Struct_1(-367f), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a.yy), _wgslsmith_sub_u32(u_input.a.x, u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x))), global1.b.x < global1.b.x).a, _wgslsmith_f_op_vec2_f32(global1.b - global1.b));
    var var_0 = Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, -156f) - vec2<f32>(-205f, global1.a.a)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(241f, -572f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.b.x, -1000f), _wgslsmith_f_op_vec2_f32(trunc(global1.b))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.b))))));
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_1 = Struct_5(Struct_1(global1.b.x), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, -2013f, var_0.b.x) * vec4<f32>(global1.b.x, -444f, -1210f, var_0.a.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 214f, var_0.a.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, -1408f, -1442f, var_0.a.a), vec4<f32>(1000f, 2342f, 432f, -483f)))), Struct_3(global1.a), Struct_2(Struct_1(var_0.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, var_0.b.x)))), Struct_2(func_1(Struct_5(Struct_1(global1.a.a), Struct_4(vec4<f32>(-698f, -896f, -354f, 538f), Struct_3(Struct_1(var_0.a.a)), Struct_2(Struct_1(var_0.a.a), var_0.b)), Struct_2(Struct_1(579f), global1.b), Struct_1(var_0.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(23343u, u_input.a.x, 1u), vec3<u32>(4294967295u, u_input.b.x, 0u))), (global1.b.x == var_0.a.a) & global0[_wgslsmith_index_u32(u_input.b.x, 2u)]).a, global1.b), var_0.a, ~u_input.a);
    return func_1(var_1, !any(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)])) && global0[_wgslsmith_index_u32(~(~u_input.b.x << (18730u % 32u)), 2u)]).a;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_3) -> f32 {
    global1 = Struct_2(func_4(~(vec3<i32>(arg_0.x, 1i, arg_0.x) >> (func_3(-185f, arg_1) % vec3<u32>(32u)))), arg_1.b.a.xz);
    var var_0 = global0[_wgslsmith_index_u32(~(~0u), 2u)];
    var_0 = false;
    var var_1 = vec3<u32>(55902u, 155146u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(select(71351u, 27398u, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), ~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 1u, arg_1.e.x))) & reverseBits(~arg_1.e.x), 1u));
    global2 = array<vec4<u32>, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f));
}

fn func_5(arg_0: f32) -> Struct_4 {
    var var_0 = func_1(Struct_5(Struct_1(_wgslsmith_f_op_f32(-arg_0)), Struct_4(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, 891f, -605f, -2087f), vec4<f32>(arg_0, 234f, 778f, -1707f)))), func_1(Struct_5(global1.a, Struct_4(vec4<f32>(1479f, arg_0, global1.a.a, -1497f), Struct_3(global1.a), Struct_2(global1.a, global1.b)), Struct_2(global1.a, global1.b), Struct_1(arg_0), u_input.a), !global0[_wgslsmith_index_u32(1u, 2u)]), Struct_2(func_4(vec3<i32>(u_input.c, -27773i, u_input.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.a, 329f) * vec2<f32>(-229f, -551f)))), Struct_2(func_1(Struct_5(Struct_1(arg_0), Struct_4(vec4<f32>(606f, 535f, arg_0, global1.b.x), Struct_3(global1.a), Struct_2(global1.a, global1.b)), Struct_2(Struct_1(-1008f), vec2<f32>(arg_0, global1.a.a)), global1.a, vec3<u32>(u_input.b.x, 1u, u_input.a.x)), !global0[_wgslsmith_index_u32(u_input.b.x, 2u)]).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b.x, -1356f), global1.b)))), func_1(Struct_5(func_1(Struct_5(Struct_1(arg_0), Struct_4(vec4<f32>(global1.a.a, arg_0, global1.b.x, 961f), Struct_3(global1.a), Struct_2(global1.a, vec2<f32>(407f, -884f))), Struct_2(Struct_1(-234f), global1.b), global1.a, u_input.a), false).a, Struct_4(vec4<f32>(arg_0, global1.b.x, 1088f, global1.a.a), Struct_3(Struct_1(arg_0)), Struct_2(global1.a, vec2<f32>(-792f, global1.b.x))), Struct_2(global1.a, global1.b), global1.a, u_input.b), all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])) || !global0[_wgslsmith_index_u32(0u, 2u)]).a, vec3<u32>(_wgslsmith_sub_u32(22353u, ~u_input.b.x), 1u, firstTrailingBit(u_input.b.x << (u_input.a.x % 32u)))), select(any(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], false)) || all(vec4<bool>(global0[_wgslsmith_index_u32(48974u, 2u)], global0[_wgslsmith_index_u32(40176u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)])), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], true)) || global0[_wgslsmith_index_u32(~4294967295u, 2u)], !(!global0[_wgslsmith_index_u32(4294967295u, 2u)])) | false).a;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-201f * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(764f, global1.b.x) - _wgslsmith_f_op_f32(-2396f + 551f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.b.x)))), _wgslsmith_f_op_f32(-arg_0))))));
    let var_2 = select(global0[_wgslsmith_index_u32(6149u, 2u)], !(!(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(24848u, 4u)]), 2u)])), false);
    global1 = Struct_2(func_4(vec3<i32>(2147483647i, u_input.c, 1i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -691f, var_2 || false))), -815f));
    global0 = array<bool, 2>();
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -268f, 501f, -390f) - vec4<f32>(-107f, 181f, global1.b.x, 945f))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(global1.a.a)), -788f, -357f))), func_1(Struct_5(func_1(Struct_5(global1.a, Struct_4(vec4<f32>(137f, var_0.a, -613f, global1.a.a), Struct_3(Struct_1(442f)), Struct_2(global1.a, vec2<f32>(916f, 907f))), Struct_2(global1.a, vec2<f32>(-1375f, var_1)), global1.a, u_input.b), true).a, Struct_4(vec4<f32>(1000f, var_0.a, arg_0, global1.b.x), Struct_3(Struct_1(global1.b.x)), Struct_2(global1.a, global1.b)), Struct_2(Struct_1(arg_0), vec2<f32>(-1792f, 960f)), func_4(vec3<i32>(u_input.c, u_input.c, 941i)), vec3<u32>(firstLeadingBit(u_input.b.x), _wgslsmith_clamp_u32(22779u, u_input.b.x, 99970u), u_input.a.x)), select(var_2 && all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0)), global1.b));
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    let var_0 = func_5(arg_2.b.x);
    global2 = array<vec4<u32>, 4>();
    var var_1 = vec4<f32>(arg_1.a.x, -1037f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(arg_3.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_5(Struct_1(582f), Struct_4(arg_1.a, var_0.b, arg_2), Struct_2(arg_3, var_0.c.b), global1.a, vec3<u32>(0u, u_input.b.x, u_input.a.x)), true).a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))));
    global2 = array<vec4<u32>, 4>();
    let var_2 = u_input.a.x;
    return var_0;
}

fn func_7(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> StorageBuffer {
    var var_0 = 4294967295u;
    var_0 = arg_2;
    global0 = array<bool, 2>();
    var_0 = 71998u;
    global2 = array<vec4<u32>, 4>();
    return StorageBuffer(~arg_2, _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c << (47766u % 32u), min(u_input.c, u_input.c), ~(-20473i), u_input.c >> (107631u % 32u)), vec4<i32>(u_input.c, u_input.c, countOneBits(-2147483647i), _wgslsmith_div_i32(-1i, -30631i)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], true), select(vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)], true, global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(4294967295u, 2u)]), global0[_wgslsmith_index_u32(arg_2, 2u)] != global0[_wgslsmith_index_u32(62151u, 2u)])), vec4<i32>(~1i, abs(u_input.c), -1i << (u_input.a.x % 32u), -18714i)), max(~reverseBits(vec3<i32>(-1i, 25877i, u_input.c)) ^ ~firstTrailingBit(vec3<i32>(39523i, 1i, -21357i)), -(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(u_input.c, 90310i, 30985i)) << (vec3<u32>(arg_2, arg_2, u_input.b.x) % vec3<u32>(32u)))), vec3<i32>(-firstLeadingBit(0i) ^ ~abs(u_input.c), abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, u_input.c), min(u_input.c, 2147483647i))), 6965i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mult_vec4_u32(~(~global2[_wgslsmith_index_u32(u_input.b.x, 4u)]), abs(global2[_wgslsmith_index_u32(~countOneBits(414u), 4u)]));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))), vec2<f32>(-529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))))));
    let x = u_input.a;
    s_output = func_7(global1.a.a, func_6(_wgslsmith_f_op_f32(sign(global1.a.a)), func_5(_wgslsmith_f_op_f32(func_2(abs(vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_5(Struct_1(global1.b.x), Struct_4(vec4<f32>(-1109f, 1773f, global1.b.x, global1.b.x), Struct_3(global1.a), Struct_2(global1.a, vec2<f32>(global1.b.x, 307f))), Struct_2(global1.a, global1.b), global1.a, vec3<u32>(3235u, var_1.x, var_1.x)), func_1(Struct_5(global1.a, Struct_4(vec4<f32>(-711f, -693f, global1.b.x, -1000f), Struct_3(global1.a), Struct_2(global1.a, vec2<f32>(global1.a.a, global1.a.a))), Struct_2(global1.a, vec2<f32>(-1000f, 805f)), Struct_1(global1.b.x), vec3<u32>(20975u, 22874u, var_1.x)), false)))), func_5(_wgslsmith_div_f32(global1.a.a, -1622f)).c, func_5(_wgslsmith_f_op_f32(step(global1.a.a, global1.a.a))).b.a), 4294967295u);
}

