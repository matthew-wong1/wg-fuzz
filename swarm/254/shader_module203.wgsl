struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: array<Struct_5, 26>;

var<private> global4: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_4) -> f32 {
    global2 = !arg_2.d.b.wwy;
    let var_0 = arg_0.c.b.a.x;
    let var_1 = vec4<bool>(false, false, !any(arg_2.b.e.b), -948f == _wgslsmith_f_op_f32(select(arg_2.a.x, -2165f, arg_0.c.d.b.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.b.c.ww))) + vec2<f32>(-1179f, _wgslsmith_f_op_f32(min(arg_0.c.c, 359f))));
    let var_2 = vec3<u32>(~_wgslsmith_add_u32(arg_2.c & 25120u, _wgslsmith_add_u32(~1u, min(78709u, 0u))), abs(4571u), min(arg_2.c, arg_2.c));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.b.c.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * 447f)), _wgslsmith_f_op_f32(-arg_2.b.b.c.x)))), arg_0.a.c.x));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.d.c.x), arg_0.a.a.c.x, -2484f, _wgslsmith_f_op_f32(func_3(Struct_3(arg_0.a.c.e, Struct_2(6762i, Struct_1(arg_0.a.c.d.a, arg_0.a.c.d.b, vec4<f32>(-470f, 182f, -218f, arg_0.b)), 704f, Struct_1(arg_0.a.b.d.a, arg_0.a.b.b.b, arg_0.a.b.e.c), arg_0.a.c.d), arg_0.a.b), select(arg_0.a.c.d.b, !arg_0.a.a.b, true && arg_0.a.a.b.x), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, -1962f) - arg_0.a.a.c.xw), Struct_2(-49024i, arg_0.a.a, -307f, arg_0.a.b.b, Struct_1(vec4<i32>(13189i, 16835i, arg_0.a.a.a.x, -48306i), vec4<bool>(false, global2.x, true, true), vec4<f32>(-1224f, global0.x, global0.x, 224f))), 0u, arg_0.a.b.d, _wgslsmith_mod_vec3_i32(vec3<i32>(3047i, u_input.b, u_input.b), arg_0.a.b.b.a.xyz))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.a.a.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, arg_0.b, 314f, 323f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0.b, global0.x, -1000f) - vec4<f32>(-1279f, arg_0.a.c.c, -184f, 206f)))));
    var var_1 = arg_0.a.a.a.x;
    global2 = vec3<bool>(false, ~_wgslsmith_sub_u32(0u >> (arg_1 % 32u), countOneBits(arg_1)) <= abs(arg_1), any(arg_0.a.a.b.wyw));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -691f), 529f));
    var_1 = arg_0.a.b.e.a.x;
    return Struct_2(firstLeadingBit(-21246i) >> (arg_1 % 32u), Struct_1(firstTrailingBit(firstTrailingBit(arg_0.a.c.d.a | arg_0.a.a.a)), !select(vec4<bool>(false, true, true, false), arg_0.a.a.b, vec4<bool>(global2.x, false, true, false)), vec4<f32>(arg_0.a.a.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(618f)))), -1111f, _wgslsmith_div_f32(-1177f, arg_0.b))), _wgslsmith_f_op_f32(-arg_0.a.c.c), arg_0.a.c.d, arg_0.a.c.b);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global2 = arg_2.b.zxy;
    var var_0 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 24567u, 9631u, 64522u), vec4<u32>(1u, 4294967295u, 1u, 4102u)), 1u, 26080u));
    var_0 = ~select(firstLeadingBit(vec3<u32>(4294967295u, 1u, 40203u)), ~(~select(vec3<u32>(4294967295u, var_0.x, 54071u), vec3<u32>(1u, var_0.x, 0u), false)), arg_2.b.wxz);
    let var_1 = select(~var_0.yy, countOneBits(vec2<u32>(39115u, abs(var_0.x) << (_wgslsmith_div_u32(var_0.x, 4294967295u) % 32u))), arg_2.b.x);
    var var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(func_3(Struct_3(func_2(global3[_wgslsmith_index_u32(var_0.x, 26u)], var_1.x).e, arg_1, func_2(global3[_wgslsmith_index_u32(var_0.x, 26u)], 16921u)), !vec4<bool>(arg_1.e.b.x, global2.x, arg_1.e.b.x, arg_2.b.x), Struct_4(vec2<f32>(-1794f, global0.x), Struct_2(3664i, arg_2, arg_1.b.c.x, Struct_1(vec4<i32>(2147483647i, u_input.b, 0i, arg_2.a.x), arg_2.b, vec4<f32>(arg_1.b.c.x, global0.x, arg_1.b.c.x, arg_1.b.c.x)), Struct_1(vec4<i32>(u_input.a, 16381i, 2147483647i, -37809i), arg_1.e.b, vec4<f32>(arg_0, arg_2.c.x, -182f, global0.x))), _wgslsmith_add_u32(var_0.x, 1u), Struct_1(vec4<i32>(53689i, 0i, u_input.a, arg_2.a.x), arg_2.b, vec4<f32>(arg_0, 327f, arg_0, global0.x)), arg_2.a.zyw)))), func_2(global3[_wgslsmith_index_u32(~65111u, 26u)], var_0.x >> (select(_wgslsmith_mult_u32(var_0.x, var_0.x), 0u, true) % 32u)), firstTrailingBit(38376u), arg_2, -vec3<i32>(-2147483647i, 1i << (abs(0u) % 32u), min(_wgslsmith_dot_vec4_i32(arg_1.e.a, arg_2.a), -u_input.b)));
    return firstTrailingBit(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b, i32(-1i) * -22195i, ~arg_1.e.a.x)), vec3<i32>(-1i) * -var_2.e));
}

fn func_1(arg_0: vec2<u32>) -> Struct_5 {
    var var_0 = Struct_2(_wgslsmith_clamp_i32(select(-u_input.b, abs(-u_input.a), true), func_4(_wgslsmith_f_op_f32(691f * -1278f), func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13219u, arg_0.x, 23080u, 17673u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 71255u)), 26u)], _wgslsmith_mod_u32(26070u, arg_0.x)), func_2(global3[_wgslsmith_index_u32(39232u << (0u % 32u), 26u)], _wgslsmith_mod_u32(arg_0.x, arg_0.x)).e), -6430i), Struct_1(_wgslsmith_mod_vec4_i32(max(~vec4<i32>(-2147483647i, -1i, u_input.a, -2147483647i), -vec4<i32>(u_input.b, -35780i, -19895i, 67168i)), ~(-vec4<i32>(7782i, 1i, u_input.a, 4709i))), !vec4<bool>(!global2.x, true, any(vec3<bool>(global2.x, false, true)), false), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(497f + global0.x), global0.x, global0.x)))), 197f, func_2(global3[_wgslsmith_index_u32(arg_0.x, 26u)], arg_0.x).e, Struct_1((max(vec4<i32>(u_input.b, 1i, 0i, -2147483647i), vec4<i32>(u_input.a, u_input.a, -15249i, u_input.b)) << (~vec4<u32>(arg_0.x, arg_0.x, 1u, 0u) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_div_i32(-13348i, u_input.a), -12082i, _wgslsmith_sub_i32(u_input.b, -11020i), reverseBits(-1i)), vec4<bool>(true, true, true, true), func_2(Struct_5(Struct_3(Struct_1(vec4<i32>(5981i, 1i, 0i, u_input.b), vec4<bool>(false, false, true, global2.x), vec4<f32>(global0.x, 319f, 584f, 1381f)), Struct_2(u_input.a, Struct_1(vec4<i32>(u_input.b, 1i, u_input.a, u_input.a), vec4<bool>(false, global2.x, false, global2.x), vec4<f32>(global0.x, global0.x, -355f, -1000f)), -1000f, Struct_1(vec4<i32>(2930i, 3639i, u_input.a, u_input.b), vec4<bool>(false, false, false, global2.x), vec4<f32>(global0.x, 155f, global0.x, 811f)), Struct_1(vec4<i32>(u_input.a, u_input.a, 2147483647i, 0i), vec4<bool>(global2.x, true, false, global2.x), vec4<f32>(202f, -1539f, global0.x, global0.x))), Struct_2(u_input.a, Struct_1(vec4<i32>(-79263i, -1i, u_input.b, -1i), vec4<bool>(global2.x, global2.x, true, false), vec4<f32>(-1035f, -1620f, global0.x, 1000f)), global0.x, Struct_1(vec4<i32>(-17299i, u_input.b, 1i, u_input.b), vec4<bool>(true, true, global2.x, global2.x), vec4<f32>(global0.x, global0.x, -357f, global0.x)), Struct_1(vec4<i32>(-35821i, u_input.a, u_input.a, u_input.b), vec4<bool>(global2.x, true, false, global2.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), -310f), 1u).d.c));
    let var_1 = Struct_4(var_0.d.c.yz, func_2(global3[_wgslsmith_index_u32(~(~select(arg_0.x, 32701u, global2.x)), 26u)], max(27152u, abs(arg_0.x))), ~(~(~(~arg_0.x))), Struct_1(-(var_0.e.a >> ((vec4<u32>(arg_0.x, 47951u, arg_0.x, arg_0.x) ^ vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u)) % vec4<u32>(32u))), !var_0.d.b, vec4<f32>(-2422f, -3325f, -1628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -143f)))), var_0.d.a.www);
    var var_2 = Struct_4(var_0.e.c.xx, func_2(Struct_5(Struct_3(Struct_1(var_0.e.a, vec4<bool>(var_1.d.b.x, global2.x, global2.x, var_0.b.b.x), var_1.b.e.c), Struct_2(-21184i, var_0.e, global0.x, Struct_1(vec4<i32>(19383i, 18390i, var_1.b.a, 23648i), var_0.b.b, vec4<f32>(-232f, var_1.b.c, -899f, global0.x)), Struct_1(vec4<i32>(2147483647i, -2147483647i, 8517i, var_1.b.b.a.x), vec4<bool>(false, true, global2.x, var_0.b.b.x), vec4<f32>(-714f, global0.x, var_0.b.c.x, 1000f))), func_2(Struct_5(Struct_3(Struct_1(vec4<i32>(var_0.d.a.x, u_input.a, -2147483647i, var_0.a), vec4<bool>(var_1.b.d.b.x, false, var_1.d.b.x, false), var_1.b.e.c), var_1.b, var_1.b), var_0.c), var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) - _wgslsmith_f_op_f32(floor(var_0.d.c.x)))), _wgslsmith_mod_u32(var_1.c << (_wgslsmith_mult_u32(var_1.c, arg_0.x) % 32u), ~arg_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, ~_wgslsmith_add_u32(29225u, var_1.c)), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(arg_0.x, var_1.c, 23559u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.c, 1u, 1u), vec3<u32>(44109u, 4147u, 55030u), vec3<u32>(0u, 35788u, arg_0.x))))), var_1.b.e, ~(-abs(var_0.d.a.yxx << (vec3<u32>(var_1.c, arg_0.x, 48783u) % vec3<u32>(32u)))));
    global4 = var_0.e.b.x;
    global2 = vec3<bool>(abs(36182i) != -abs(_wgslsmith_mod_i32(var_2.d.a.x, 29208i)), !(!(~var_0.d.a.x <= -101974i)), false);
    return global3[_wgslsmith_index_u32(0u, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = all(!vec2<bool>(!all(vec3<bool>(global2.x, global2.x, false)), false));
    let var_0 = vec2<i32>(-(~u_input.a), 1i);
    var var_1 = 588f;
    var var_2 = func_1(firstLeadingBit(~vec2<u32>(1u, 1u)));
    global1 = ~(~firstTrailingBit(62969u) >> (0u % 32u)) ^ ~15036u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-select(var_2.a.c.e.a.zxx, vec3<i32>(var_0.x, -2147483647i, 0i), var_2.a.a.b.xxz), _wgslsmith_sub_vec3_i32(~var_2.a.b.e.a.xyy, vec3<i32>(39802i, u_input.a, -47477i) >> (vec3<u32>(18830u, 49824u, 276u) % vec3<u32>(32u)))), ~var_2.a.a.a.xyx));
}

