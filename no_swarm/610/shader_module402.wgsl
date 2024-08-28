struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -3287i;

var<private> global1: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_4(global1.b, true);
    return 17018i;
}

fn func_2() -> vec3<u32> {
    var var_0 = any(vec4<bool>(false, (global1.e != 381f) || global1.a.x, !global1.a.x, false)) || !(func_3(Struct_3(vec2<f32>(-156f, global1.e), vec3<i32>(1i, 32232i, global1.d), u_input.c.x, vec2<f32>(119f, 141f)), firstLeadingBit(global1.b.x), Struct_3(vec2<f32>(global1.e, 250f), vec3<i32>(u_input.e, global1.c, global1.d), u_input.c.x, vec2<f32>(global1.e, global1.e))) == 26179i);
    return firstLeadingBit(countOneBits(_wgslsmith_add_vec3_u32(select(vec3<u32>(22201u, 0u, 38307u), _wgslsmith_div_vec3_u32(global1.b.zwz, vec3<u32>(u_input.b, u_input.b, u_input.d)), global1.a.x), select(~vec3<u32>(1u, global1.b.x, global1.b.x), reverseBits(global1.b.wyx), select(true, false, global1.a.x)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> i32 {
    global1 = Struct_2(global1.a, ~arg_0.a, abs(1i), -1i, -1453f);
    global1 = Struct_2(!(!select(global1.a, global1.a, vec3<bool>(arg_0.b, arg_0.b, true))), vec4<u32>(3190u, 127209u & global1.b.x, global1.b.x, 0u), abs(_wgslsmith_mult_i32(~(~(-2147483647i)), u_input.c.x)), firstTrailingBit(0i), _wgslsmith_f_op_f32(step(-2095f, arg_3.d.x)));
    let var_0 = Struct_1(~4294967295u, global1.a.x);
    let var_1 = select(vec2<bool>(false, arg_0.b), !(!(!global1.a.zx)), global1.a.x);
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(func_3(Struct_3(vec2<f32>(arg_3.d.x, -269f), vec3<i32>(arg_3.b.x, u_input.a, arg_3.c), arg_3.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e, global1.e))), var_0.a | select(0u, 113778u, var_0.b), arg_3), 22268i), countOneBits(arg_3.b.x), -_wgslsmith_mult_i32(arg_3.b.x >> (min(arg_1.x, 40775u) % 32u), -7663i), 1i);
    return 1i;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    global0 = -41423i;
    let var_0 = Struct_3(vec2<f32>(global1.e, _wgslsmith_f_op_f32(global1.e + _wgslsmith_div_f32(global1.e, -109f))), vec3<i32>(2147483647i, (2147483647i | abs(arg_0.x)) >> (18339u % 32u), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(global1.c, i32(-1i) * -2147483647i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 20040i), arg_0), global1.c), vec2<f32>(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.e, global1.e, global1.a.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -2448f))));
    var var_1 = u_input.c >> (global1.b.zx % vec2<u32>(32u));
    var var_2 = !vec2<bool>(!global1.a.x, true);
    var var_3 = func_4(Struct_4(_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(u_input.b, 66923u, u_input.d, u_input.b)), reverseBits(~global1.b), ~global1.b ^ _wgslsmith_add_vec4_u32(global1.b, global1.b)), var_2.x), _wgslsmith_add_vec3_u32(abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(36958u, 36030u, 4294967295u), vec3<u32>(global1.b.x, u_input.b, 43558u)), func_2())), select(global1.b.xyy, ~vec3<u32>(global1.b.x, 4294967295u, 37159u), select(!vec3<bool>(true, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, false, global1.a.x), !global1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.e, global1.e))), var_0.d.x, 1000f)), var_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1787f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1724f))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_1(arg_0, false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1585f, arg_3)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.e, -464f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-591f, global1.e), vec2<f32>(1386f, global1.e), true)) + vec2<f32>(-742f, 942f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(437f, -898f) * arg_3), _wgslsmith_f_op_f32(614f * -689f))), arg_2.wyy, 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.e, -1040f), vec2<f32>(global1.e, 2208f)))))));
    let var_2 = vec2<i32>(var_1.c, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1, -3661i, var_1.b.x) & arg_2, vec4<i32>(func_3(Struct_3(vec2<f32>(arg_3, var_1.a.x), vec3<i32>(global1.d, -49679i, global1.d), arg_2.x, vec2<f32>(arg_3, global1.e)), 0u, var_1), 1i, abs(arg_2.x), 1i)), -75343i));
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1658f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.e), arg_3))))), -vec3<i32>(countOneBits(14548i), u_input.e ^ 1i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_2.x, arg_1, 50950i), reverseBits(-1i))), var_2.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(281f, _wgslsmith_f_op_f32(-global1.e), true))), 334f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    let var_0 = func_5(_wgslsmith_clamp_u32(6353u, 1u, ~_wgslsmith_sub_u32(19490u, global1.b.x) & _wgslsmith_dot_vec3_u32(global1.b.wwy >> (vec3<u32>(1570u, global1.b.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, u_input.b, global1.b.x), global1.b.wxx))), _wgslsmith_mult_i32(-65615i, global1.c), vec4<i32>(-1i) * -vec4<i32>(u_input.a >> (0u % 32u), -u_input.c.x, firstLeadingBit(0i), -2147483647i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec2_i32(u_input.c, u_input.c), firstTrailingBit(u_input.e))))));
    global0 = -abs(_wgslsmith_sub_i32(min(select(global1.d, -2147483647i, global1.a.x), -14598i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_0.c, 2147483647i), ~(-1i))));
    global0 = 0i;
    global1 = Struct_2(select(global1.a, global1.a, vec3<bool>(true, true, global1.a.x)), ~vec4<u32>(~global1.b.x, 4259u | ~u_input.b, _wgslsmith_mod_u32(4294967295u, ~u_input.b), u_input.b), i32(-1i) * -1i, _wgslsmith_div_i32(var_0.b.x, abs(func_5(0u, ~var_0.c, abs(vec4<i32>(u_input.e, 18950i, -20050i, global1.c)), global1.e).b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e * global1.e) * _wgslsmith_f_op_f32(ceil(-1293f)))), var_0.a.x));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-global1.c, _wgslsmith_sub_i32(var_0.c, global1.d), _wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(global1.c, -2147483647i, 2147483647i)), _wgslsmith_dot_vec3_i32(var_0.b, var_0.b)), ~vec4<i32>(0i, 41585i, -12897i, u_input.a))) ^ select(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, -3252i, global1.c, global1.c), ~vec4<i32>(global1.d, var_0.c, -22671i, u_input.a)), ~min(vec4<i32>(-18160i, 0i, 0i, global1.c), vec4<i32>(global1.d, -2147483647i, u_input.e, -40050i))), _wgslsmith_sub_vec4_i32((vec4<i32>(u_input.c.x, global1.d, var_0.c, var_0.c) >> (global1.b % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(20264u, 5615u, global1.b.x, global1.b.x), vec4<u32>(global1.b.x, 49384u, 1u, global1.b.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11144i, -6011i, 1i, global1.d), vec4<i32>(958i, global1.c, u_input.a, global1.d)), vec4<i32>(u_input.e, 1i, global1.d, 1i), ~vec4<i32>(-19693i, u_input.c.x, -1i, 24347i))), !(!vec4<bool>(false, global1.a.x, false, global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.d.x + global1.e))), reverseBits(var_0.b.zy));
}

