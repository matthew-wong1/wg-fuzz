struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2220i, i32(-2147483648), 72004i);

var<private> global1: vec4<f32>;

var<private> global2: u32 = 65446u;

var<private> global3: Struct_2 = Struct_2(Struct_1(3579u, vec3<bool>(false, false, true), 1u, false), 44785u, Struct_1(1u, vec3<bool>(false, true, true), 4294967295u, false), -1000f, Struct_1(4294967295u, vec3<bool>(true, false, true), 0u, false));

var<private> global4: array<vec4<u32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> vec3<bool> {
    global0 = vec4<i32>(-2147483647i, -2147483647i << (u_input.a % 32u), _wgslsmith_mult_i32(global0.x, firstLeadingBit(1i)), _wgslsmith_mod_i32(global0.x, -(~global0.x))) | ~vec4<i32>(i32(-1i) * -1i, global0.x, global0.x, 2147483647i);
    global2 = ~(~abs(global3.a.a));
    let var_0 = Struct_1(arg_0.e.a, select(arg_0.a.b, select(!(!vec3<bool>(arg_0.a.d, arg_1.x, false)), select(!global3.c.b, global3.c.b, global3.a.b), true), all(arg_0.e.b.yx)), global3.c.c, arg_0.c.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1173f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-916f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -981f), arg_0.d)), arg_0.d)));
    var var_2 = _wgslsmith_sub_vec4_u32(~global4[_wgslsmith_index_u32(~reverseBits(47732u), 29u)], (~vec4<u32>(u_input.a, 4294967295u, u_input.a, 53155u) & ~vec4<u32>(var_0.a, u_input.a, arg_0.c.c, u_input.a)) >> (~global4[_wgslsmith_index_u32(~9592u, 29u)] % vec4<u32>(32u))) ^ vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(71263u, 0u), vec2<u32>(1u, 4294967295u)), max(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, u_input.a))), min(_wgslsmith_add_u32(~arg_0.c.c, 1u), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.b, 1u), firstTrailingBit(4294967295u))), 1u, _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, global3.a.c, u_input.a, var_0.a) | vec4<u32>(global3.a.c, global3.e.c, arg_0.b, arg_0.e.c)) << (global4[_wgslsmith_index_u32(46295u, 29u)] % vec4<u32>(32u)), global4[_wgslsmith_index_u32(1u, 29u)]));
    return !vec3<bool>(arg_0.c.b.x, true, arg_0.e.b.x);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(~(~arg_3.c), ~(~0u), 29995u ^ (_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, 68473u), _wgslsmith_add_u32(global3.c.a, arg_3.c)) >> (~100332u % 32u)), 0u);
    var var_1 = vec4<f32>(-344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f + arg_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -977f))), 1281f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-603f, -1128f))), _wgslsmith_f_op_f32(-global3.d), true)))));
    let var_2 = true;
    let var_3 = var_1.zz;
    return Struct_1(_wgslsmith_mult_u32(1u, 4294967295u), select(vec3<bool>(true, false, var_2), func_3(Struct_2(Struct_1(2523u, arg_3.b, 19785u, global3.e.d), ~var_0.x, Struct_1(var_0.x, arg_3.b, arg_3.c, global3.c.d), _wgslsmith_f_op_f32(-var_3.x), arg_3), arg_3.b.xy), !vec3<bool>(global3.a.b.x, u_input.a != 1u, !arg_2)), var_0.x, global3.c.d);
}

fn func_1() -> Struct_1 {
    return func_2(4294967295u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1748f, -1055f, -1762f) * vec4<f32>(global3.d, 1847f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global3.d, 1106f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1324f, -206f, global3.d, -106f), vec4<f32>(global1.x, 2168f, global1.x, global1.x), vec4<bool>(global3.c.b.x, global3.e.d, true, false))))))), !(select(global3.a.d, global1.x >= global3.d, any(vec4<bool>(false, true, false, false))) || (~global0.x > _wgslsmith_dot_vec2_i32(global0.yx, global0.yx))), Struct_1(_wgslsmith_add_u32(4294967295u, abs(u_input.a)) ^ (~u_input.a << ((0u >> (u_input.a % 32u)) % 32u)), select(!(!vec3<bool>(global3.e.b.x, global3.a.b.x, true)), vec3<bool>(any(vec4<bool>(global3.e.d, global3.e.d, global3.c.b.x, true)), !global3.e.b.x, global3.c.b.x), global3.c.b), reverseBits(_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(u_input.a, 2246u))), true));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_sub_u32(4819u, ~arg_1.c.a);
    var var_1 = Struct_2(arg_1.c, var_0, func_1(), _wgslsmith_f_op_f32(abs(global3.d)), func_2(31741u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1017f, 1000f, global1.x, arg_1.d) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(446f, 1130f, global1.x, 213f))))), any(!vec4<bool>(false, global3.c.b.x, false, true)), Struct_1(global3.b, !(!arg_1.e.b), u_input.a, arg_1.c.d)));
    global2 = max(~_wgslsmith_mult_u32(47288u, arg_2.a), _wgslsmith_mult_u32(var_1.a.a, ~(~(~93051u))));
    global4 = array<vec4<u32>, 29>();
    var var_2 = global0.x;
    return firstLeadingBit(arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, ~_wgslsmith_add_i32(global0.x, 26054i), _wgslsmith_mult_i32(2147483647i, global0.x), func_4(vec3<i32>(0i, global0.x, global0.x) << (vec3<u32>(global3.e.c, u_input.a, 1u) % vec3<u32>(32u)), Struct_2(Struct_1(u_input.a, global3.a.b, 20179u, global3.e.b.x), global3.a.a, global3.a, global1.x, Struct_1(u_input.a, global3.c.b, global3.e.a, true)), func_1())), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global0.x, abs(21682i), i32(-1i) * -40069i), select(select(vec4<i32>(global0.x, 36009i, -2147483647i, 0i), vec4<i32>(global0.x, 0i, global0.x, global0.x), vec4<bool>(false, global3.a.d, global3.c.d, global3.e.b.x)), vec4<i32>(-25815i, global0.x, global0.x, global0.x) >> (vec4<u32>(183u, 89864u, 1u, u_input.a) % vec4<u32>(32u)), true), vec4<i32>(global0.x, ~10362i, abs(global0.x), countOneBits(global0.x))));
    let var_0 = global1.yyx;
    var var_1 = Struct_2(func_2(~0u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(709f, global1.x, global3.d, global1.x)))))), true, func_1()), select(select(global3.a.a & 1u, 63735u, !global3.c.b.x) << (~(~global3.b) % 32u), _wgslsmith_div_u32(1u << (global3.e.c % 32u), ~reverseBits(global3.c.c)), all(vec4<bool>(true, true, true, true))), global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) - 995f), func_2(~(~countOneBits(43532u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(global1.x, -1102f), -442f, _wgslsmith_f_op_f32(select(-493f, -529f, global3.e.d)), _wgslsmith_f_op_f32(min(-497f, var_0.x))))), global3.c.b.x, func_1()));
    var var_2 = Struct_2(func_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(25485u, global3.b), ~75176u) | ~u_input.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, -1280f, -411f, var_1.d)))), var_1.e.d, func_2(u_input.a, vec4<f32>(-311f, -837f, 775f, var_0.x), all(!vec2<bool>(var_1.a.b.x, global3.c.b.x)), global3.e)), _wgslsmith_div_u32(~(~(~41733u)), (func_2(u_input.a, vec4<f32>(global3.d, global1.x, var_1.d, var_0.x), var_1.e.b.x, global3.e).c << (reverseBits(4294967295u) % 32u)) | abs(u_input.a | u_input.a)), func_2(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -227f, -1028f, -279f) * vec4<f32>(global3.d, 291f, global3.d, global1.x)))), true, global3.e), var_1.d, Struct_1(abs(~0u), vec3<bool>(global3.c.b.x, var_1.e.d, var_1.e.b.x), 8266u, !var_1.e.d));
    global3 = Struct_2(Struct_1(~_wgslsmith_div_u32(min(var_1.b, 33112u), abs(global3.c.a)), vec3<bool>(true & (true | var_2.e.d), global3.a.b.x, -33266i >= _wgslsmith_add_i32(global0.x, global0.x)), select(22232u, abs(u_input.a), any(var_2.a.b.yz)) ^ 1u, global3.e.d), _wgslsmith_clamp_u32(var_1.e.c, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(498u, 39157u, 4294967295u, var_1.c.c)), vec4<u32>(var_2.c.a, 0u, var_2.b, 14173u)), 1u), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1750f + _wgslsmith_f_op_f32(abs(267f)))), func_1());
    global2 = ~(_wgslsmith_div_u32(global3.b, func_1().c) & var_2.e.a);
    global4 = array<vec4<u32>, 29>();
    global3 = Struct_2(var_2.a, var_2.a.a, Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(24961u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b, global3.a.c), vec2<u32>(37684u, 4294967295u))), ~(~vec2<u32>(6114u, global3.b))), func_2(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d, var_0.x, global1.x, -1680f), vec4<f32>(global1.x, global1.x, 707f, -953f)))), true, global3.c).b, ~42062u, all(select(var_2.e.b.xx, var_2.c.b.zz, vec2<bool>(true, false))) | global3.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) - _wgslsmith_f_op_f32(min(-859f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-var_0.x))))), var_1.c);
    var var_3 = global0.yww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.d * -271f), _wgslsmith_f_op_f32(var_1.d + -489f)) - vec2<f32>(_wgslsmith_f_op_f32(step(1705f, 140f)), _wgslsmith_f_op_f32(var_0.x + -1000f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1435f))), _wgslsmith_f_op_vec2_f32(-var_0.zx), all(select(vec4<bool>(var_2.c.d, var_2.e.b.x, global3.c.b.x, true), vec4<bool>(false, global3.e.b.x, false, false), false)))))));
}

