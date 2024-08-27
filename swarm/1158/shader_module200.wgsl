struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -8580i);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(47051u, 1u, 0u), vec3<u32>(0u, 23737u, 23268u), vec3<u32>(0u, 59102u, 1u), vec3<u32>(59983u, 102654u, 0u), vec3<u32>(48879u, 4294967295u, 19981u), vec3<u32>(0u, 1003u, 9917u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(85622u, 501u, 13181u), vec3<u32>(4294967295u, 38788u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(51730u, 4294967295u, 37746u), vec3<u32>(1u, 0u, 1u), vec3<u32>(64768u, 71237u, 6817u), vec3<u32>(1u, 39018u, 79026u), vec3<u32>(0u, 0u, 57670u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 52750u, 120881u), vec3<u32>(4294967295u, 0u, 46242u), vec3<u32>(4294967295u, 58098u, 50139u), vec3<u32>(31710u, 0u, 1u), vec3<u32>(16966u, 33367u, 93510u), vec3<u32>(4294967295u, 40u, 46479u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 53665u), vec3<u32>(18153u, 20988u, 16232u), vec3<u32>(0u, 67988u, 33278u), vec3<u32>(1u, 0u, 1u), vec3<u32>(8194u, 4294967295u, 0u), vec3<u32>(0u, 1u, 18769u), vec3<u32>(0u, 14177u, 14137u), vec3<u32>(36622u, 0u, 13512u), vec3<u32>(1u, 4294967295u, 35918u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = ~(~(max(0u, u_input.b ^ u_input.a.x) ^ (~u_input.b | 1u)));
    global0 = reverseBits(vec2<i32>(~29787i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.c), 1i), vec2<i32>(-1i, 8374i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + 1509f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1769f, 510f)), _wgslsmith_f_op_f32(500f * 2595f))), _wgslsmith_f_op_f32(-1608f - _wgslsmith_f_op_f32(round(354f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-449f, 366f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(-492f)), -1527f, 155f, 288f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(490f, -479f, -2268f, 116f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1038f, 872f, 548f, 273f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1575f, 782f, -271f, 1078f) + vec4<f32>(1586f, -1385f, 1046f, -390f)))))));
    var var_2 = Struct_1(u_input.d.yw, _wgslsmith_mod_i32(_wgslsmith_mod_i32(31364i, _wgslsmith_sub_i32(-43119i, -42353i)), 16866i), !global1.x);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(612f, _wgslsmith_f_op_f32(f32(-1f) * -1573f), _wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(var_1.x * -1945f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-500f, var_1.x, 237f, var_1.x))))))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(694f + var_1.x), _wgslsmith_f_op_f32(1000f - -261f)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(2313f + _wgslsmith_f_op_f32(-var_1.x))));
    return 84397u << (_wgslsmith_mod_u32(1146u, u_input.b) % 32u);
}

fn func_2(arg_0: Struct_5) -> vec4<u32> {
    global1 = vec4<bool>((~func_3(global1.x) >= ~u_input.a.x) | global1.x, all(vec2<bool>(global1.x, _wgslsmith_sub_i32(u_input.d.x, u_input.c) == ~arg_0.a.x)), true, true);
    global2 = array<vec3<u32>, 32>();
    var var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = abs(~(-(~(-1i))));
    return vec4<u32>(min(~(~0u), ~1u), func_3(global1.x), _wgslsmith_sub_u32(0u, firstTrailingBit(_wgslsmith_sub_u32(u_input.b, 53135u) & firstLeadingBit(92333u))), 75954u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> i32 {
    global2 = array<vec3<u32>, 32>();
    global0 = select(countOneBits(select(-reverseBits(vec2<i32>(19375i, 1i)), -abs(arg_1.a), !arg_1.c)), vec2<i32>(-13749i, 2147483647i), vec2<bool>(all(!global1.zxy), firstTrailingBit(~arg_1.b) != global0.x));
    let var_0 = abs(vec4<u32>(1u, ~abs(4294967295u), ~abs(33430u), u_input.a.x)) << (~(vec4<u32>(1u, u_input.a.x ^ u_input.e.x, ~58199u, _wgslsmith_add_u32(29684u, u_input.e.x)) >> (select(func_2(Struct_5(vec3<i32>(u_input.c, arg_1.a.x, arg_1.b))), vec4<u32>(u_input.e.x, u_input.e.x, 27719u, u_input.e.x), !vec4<bool>(false, global1.x, arg_1.c, true)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(-(~34050i), 4335i, 1i), vec3<i32>(_wgslsmith_add_i32(-1i << (1u % 32u), 26113i), arg_1.b, reverseBits(arg_1.b)));
    let var_2 = Struct_2(arg_1.a, -arg_1.b, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(~(-arg_1.b), u_input.c, ~firstLeadingBit(0i), ~(-2147483647i))), _wgslsmith_div_u32(0u, 1u), firstLeadingBit(countOneBits(u_input.a.x)));
    return _wgslsmith_sub_i32(global0.x, ~34894i);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = arg_3.b;
    global0 = -vec2<i32>(abs(_wgslsmith_mult_i32(~2147483647i, -1i | arg_3.a.x)), arg_3.b & _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-11293i, arg_3.a.x, arg_3.b), global0.x));
    let var_1 = Struct_1(arg_1, 0i << (abs(0u) % 32u), !global1.x);
    let var_2 = _wgslsmith_div_i32(-1i, select(-2147483647i << (u_input.a.x % 32u), -_wgslsmith_add_i32(-57928i, 0i), _wgslsmith_mult_i32(arg_3.a.x, firstLeadingBit(u_input.d.x)) >= arg_3.b));
    let var_3 = true;
    return Struct_4(-2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 2059f, -696f, 1011f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2086f, -404f, -788f, -799f) + vec4<f32>(1925f, -590f, -267f, 625f))), vec4<f32>(_wgslsmith_f_op_f32(525f - -1000f), _wgslsmith_f_op_f32(step(-698f, -1031f)), _wgslsmith_f_op_f32(901f * 2203f), 2281f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1934f, _wgslsmith_f_op_f32(1222f - -359f)), _wgslsmith_f_op_f32(round(882f))))), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !select(!vec4<bool>(false, true, all(vec4<bool>(true, global1.x, true, true)), any(global1.zyw)), select(vec4<bool>(4294967295u != u_input.e.x, true, all(vec4<bool>(global1.x, global1.x, global1.x, true)), true), select(vec4<bool>(false, false, true, global1.x), vec4<bool>(global1.x, false, true, false), !vec4<bool>(true, global1.x, false, true)), global1.x), !select(!vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(true, true, global1.x, false)));
    var var_0 = func_4(global1.x, vec2<i32>((-34446i ^ select(19196i, u_input.d.x, true)) ^ func_1(select(vec2<bool>(global1.x, global1.x), global1.wy, global1.x), Struct_1(u_input.d.yw, u_input.d.x, true)), select(global0.x, ~(i32(-1i) * -1i), !all(global1.xy))), vec4<u32>(18043u, 1u, ~1u, _wgslsmith_sub_u32(~u_input.a.x, 75503u)), Struct_1(select(~_wgslsmith_div_vec2_i32(u_input.d.yw, vec2<i32>(u_input.d.x, global0.x)), _wgslsmith_clamp_vec2_i32(u_input.d.wx, vec2<i32>(global0.x, -1i), vec2<i32>(u_input.d.x, 72719i)) | u_input.d.wx, true), -(global0.x >> (u_input.a.x % 32u)), all(select(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true)), vec4<bool>(true, true, false, true), all(vec3<bool>(global1.x, global1.x, false))))));
    let var_1 = Struct_2(-u_input.d.zz, var_0.a, global0.x, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.e.x, 35044u)), ~_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, u_input.e.x))), u_input.b);
    global2 = array<vec3<u32>, 32>();
    var var_2 = ~(vec2<i32>(-1i) * -vec2<i32>(~(-2147483647i), countOneBits(-2147483647i)));
    global2 = array<vec3<u32>, 32>();
    let var_3 = -50825i;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + var_0.b.x)), _wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-948f * var_0.b.x)))));
}

