struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 0u);

var<private> global1: vec3<i32> = vec3<i32>(-11248i, 29083i, -56305i);

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: u32 = 76785u;

var<private> global4: i32 = -4272i;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(arg_0.d.a, -(i32(-1i) * -(arg_0.c.b | global1.x)), 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -620f));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1380f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))))));
    var_0 = arg_0.d;
    var var_3 = arg_0.a.x;
    return Struct_1(arg_0.c.a, 15196i, 60289u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(select(759f, 214f, true)), -693f)), -2147483647i, func_2(Struct_2(vec2<f32>(-617f, 479f), arg_0, Struct_1(vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_3.a.x), arg_0, 1u), arg_3), -1189f), arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1503f, -1303f)))))));
    let var_1 = Struct_1(vec4<bool>(!arg_3.a.x, var_0.a.x, arg_3.a.x, select(_wgslsmith_f_op_f32(ceil(-184f)) < 2318f, true, all(select(var_0.a.zxy, arg_3.a.wxz, var_0.a.x)))), 50873i, 1u);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1649f, -541f) - _wgslsmith_f_op_f32(sign(927f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(354f, 2745f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-903f + -2001f), _wgslsmith_f_op_f32(f32(-1f) * -2599f)) * _wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(f32(-1f) * -1206f)))), false));
    global1 = vec3<i32>(64951i, -abs(var_0.b), 1i);
    global3 = ~(~1u);
    return vec3<u32>(var_0.c, u_input.c.x, arg_2 & 58853u);
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = arg_0;
    global1 = ((abs(-vec3<i32>(-1972i, global1.x, 26783i)) ^ _wgslsmith_sub_vec3_i32(-vec3<i32>(global1.x, 1i, 0i), select(vec3<i32>(arg_0.b, var_2.b, -2147483647i), vec3<i32>(-32080i, var_1.b, -38762i), vec3<bool>(var_2.a.x, var_1.a.x, var_2.a.x)))) >> (_wgslsmith_mod_vec3_u32(func_3(0i, vec4<u32>(var_1.c, var_1.c, 52229u, 0u), ~1u, func_2(Struct_2(vec2<f32>(-915f, 306f), var_0.b, var_1, Struct_1(vec4<bool>(true, var_1.a.x, var_0.a.x, var_2.a.x), -2147483647i, 1u)), -444f)), global0.xzy) % vec3<u32>(32u))) ^ firstLeadingBit(max(select(vec3<i32>(global1.x, global1.x, 15565i), vec3<i32>(arg_0.b, var_0.b, -11102i) | vec3<i32>(global1.x, var_1.b, 0i), !arg_0.a.x), max(vec3<i32>(var_1.b, arg_0.b, u_input.a) ^ vec3<i32>(-2147483647i, arg_0.b, -66243i), select(vec3<i32>(var_1.b, var_0.b, 2147483647i), vec3<i32>(var_0.b, -2147483647i, 22473i), vec3<bool>(true, true, var_0.a.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1279f, -565f) * vec2<f32>(424f, -1095f)), vec2<f32>(-1493f, 178f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-742f, -254f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-654f, -515f)))))))));
    return countOneBits(vec3<u32>(105942u, min(27895u, ~4901u), ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(~select(vec3<u32>(_wgslsmith_clamp_u32(0u, 19593u, 109427u), ~u_input.c.x, abs(global0.x)), ~func_1(Struct_1(vec4<bool>(false, false, false, false), 1i, u_input.c.x)), -1i > u_input.a), global0.zxw);
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-362f * -1038f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1374f, -173f)), _wgslsmith_f_op_f32(ceil(-1560f)))))), _wgslsmith_mult_i32(-1i, -7388i), func_2(Struct_2(vec2<f32>(1f, 1f), -6216i, func_2(Struct_2(vec2<f32>(1472f, -300f), 0i, Struct_1(vec4<bool>(false, false, false, true), 0i, 4294967295u), Struct_1(vec4<bool>(false, true, false, false), u_input.e, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -283f)), Struct_1(func_2(Struct_2(vec2<f32>(695f, -161f), u_input.b, Struct_1(vec4<bool>(true, false, false, true), 16248i, 1u), Struct_1(vec4<bool>(true, false, false, false), -5561i, 23623u)), 309f).a, 1i, func_3(0i, vec4<u32>(4294967295u, 36123u, 0u, var_0.x), 0u, Struct_1(vec4<bool>(true, true, true, false), -88826i, 11055u)).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(672f)) - _wgslsmith_f_op_f32(f32(-1f) * -757f)) * 898f)), Struct_1(select(func_2(Struct_2(vec2<f32>(1209f, 2171f), u_input.e, Struct_1(vec4<bool>(false, false, false, false), u_input.b, u_input.c.x), Struct_1(vec4<bool>(false, true, true, true), -2911i, global0.x)), 1f).a, vec4<bool>(global0.x > global0.x, true, all(vec2<bool>(false, false)), true), !func_2(Struct_2(vec2<f32>(147f, -833f), 35231i, Struct_1(vec4<bool>(false, false, false, false), global1.x, global0.x), Struct_1(vec4<bool>(true, true, true, true), u_input.e, 25532u)), 1000f).a), i32(-1i) * -_wgslsmith_add_i32(u_input.b, u_input.e), _wgslsmith_add_u32(~(~global0.x), ~0u & ~global0.x)));
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~var_0.x, 64947u, select(var_0.x, var_1.d.c, false), _wgslsmith_mod_u32(var_0.x, var_1.d.c)), vec4<u32>(select(7321u, u_input.c.x, true), global0.x, func_3(1i, vec4<u32>(15207u, 69763u, u_input.c.x, u_input.c.x), var_1.d.c, Struct_1(vec4<bool>(var_1.d.a.x, var_1.c.a.x, var_1.c.a.x, true), u_input.d, var_0.x)).x, _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~var_1.d.c, ~1u, 91308u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_1.d.c, global0.x, 4294967295u) ^ vec4<u32>(56999u, 23333u, u_input.c.x, 1u), ~vec4<u32>(66464u, 10526u, 4294967295u, u_input.c.x)))) << (abs(vec4<u32>(~global0.x, var_1.c.c, var_1.d.c >> (34003u % 32u), ~u_input.c.x) >> (~select(vec4<u32>(u_input.c.x, 35136u, var_0.x, 1u), vec4<u32>(u_input.c.x, u_input.c.x, 58690u, u_input.c.x), true) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)))), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(32797u, 15u)] >> (vec4<u32>(1u, var_0.x, global0.x, 1u) % vec4<u32>(32u))) | 20928i, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-var_1.a), -40463i, func_2(Struct_2(var_1.a, -33735i, var_1.d, var_1.d), -1635f), Struct_1(var_1.d.a, -2147483647i, 20225u)), 520f), Struct_1(!var_1.d.a, _wgslsmith_mod_i32(select(2147483647i, -11299i, true), _wgslsmith_sub_i32(var_1.d.b, var_1.d.b)), _wgslsmith_sub_u32(~4294967295u, var_1.d.c))), _wgslsmith_f_op_f32(-var_1.a.x));
    global4 = -_wgslsmith_clamp_i32(var_1.b, -(i32(-1i) * -20709i), -1i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, var_1.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 460f) + vec2<f32>(var_1.a.x, var_1.a.x)))) + vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(636f)) * var_1.a.x))), 0i, var_1.d, func_2(Struct_2(var_1.a, u_input.d, var_1.c, var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(399f)) + var_1.a.x))));
    var_0 = countOneBits(global0.xzz);
    var_2 = Struct_1(select(vec4<bool>((u_input.c.x <= 53111u) && true, 1u < _wgslsmith_div_u32(u_input.c.x, 13149u), true, true), vec4<bool>(var_2.a.x, true, false, !(false || var_1.c.a.x)), any(select(!var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x), var_1.d.a))), ~((global1.x >> (func_1(var_3.c).x % 32u)) >> (func_3(~29377i, ~vec4<u32>(99036u, 2533u, 0u, 1u), countOneBits(var_1.c.c), var_3.d).x % 32u)), 0u);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(4294967295u, 1u), ~u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_3.c.c, _wgslsmith_sub_u32(var_3.c.c >> (var_3.c.c % 32u), _wgslsmith_clamp_u32(4294967295u, var_1.c.c, 4294967295u)), var_1.d.c), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global0.x, u_input.c.x, 0u, 67217u) | vec4<u32>(26659u, 4294967295u, var_0.x, u_input.c.x)), vec4<u32>(~global0.x, ~1u, var_3.c.c, _wgslsmith_add_u32(4294967295u, var_1.d.c)))));
}

