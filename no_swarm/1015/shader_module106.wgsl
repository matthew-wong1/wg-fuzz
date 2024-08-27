struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = Struct_2(select(true, global0.a, false));
    var var_0 = ~_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(~27025u, ~(u_input.c.x << (0u % 32u))));
    return u_input.d.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec3<bool> {
    let var_0 = 151f;
    let var_1 = arg_1;
    global0 = Struct_2(var_0 <= -1989f);
    let var_2 = Struct_1(~var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(var_1.b.x, arg_1.b.x, -1000f)) - _wgslsmith_f_op_vec3_f32(-var_1.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.b, vec3<f32>(var_0, -1114f, 536f))))), arg_3, -17596i);
    global0 = Struct_2(all(!(!select(vec2<bool>(global0.a, true), vec2<bool>(true, global0.a), vec2<bool>(true, true)))));
    return select(!(!(!vec3<bool>(true, false, global0.a))), vec3<bool>(false, global0.a, false), global0.a);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_2(!(_wgslsmith_f_op_f32(step(-336f, _wgslsmith_f_op_f32(f32(-1f) * -448f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(859f, 798f)))));
    global0 = Struct_2(all(func_4(-1180f, Struct_1(select(1i, u_input.b.x, true), vec3<f32>(-104f, 470f, 993f), func_3(vec4<u32>(1u, 1u, u_input.d.x, u_input.c.x)), -1i), abs(min(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.e.x, u_input.b.x))), 17192u)));
    global0 = Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-488f + -1640f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1024f))))), Struct_1(-61390i, vec3<f32>(_wgslsmith_f_op_f32(766f + -154f), -742f, -674f), ~(u_input.c.x ^ u_input.d.x), ~u_input.e.x), ~(~u_input.e), 1u).x);
    let var_0 = Struct_2(true);
    var var_1 = abs(~_wgslsmith_add_i32(u_input.a, u_input.e.x));
    return Struct_1(33183i, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)))), -378f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(593f, 973f)) * -452f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(254f, 722f, var_0.a))))), 4294967295u, i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_add_i32(61376i, 3297i), -u_input.b.x));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = firstLeadingBit(~u_input.c.x);
    let var_1 = vec4<i32>(u_input.e.x, ~arg_2 >> (~(u_input.c.x << (u_input.c.x % 32u)) % 32u), -(~select(0i, -arg_2, arg_0 == 72074u)), -2147483647i);
    var var_2 = func_2(arg_1.a);
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1888f))))));
    return Struct_2(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(-var_4.x)) == var_4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-874f, -1326f, 1561f) - vec3<f32>(139f, 1503f, -237f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1407f, -1230f, -438f), vec3<f32>(1106f, 1000f, -416f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1673f, 1000f, -1328f) - vec3<f32>(-1872f, 1121f, -1721f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1268f, -1139f, 781f), vec3<f32>(-1629f, -211f, -114f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, -1164f, 591f) + vec3<f32>(1060f, 964f, 846f)))), false)), firstLeadingBit(u_input.c.x), abs(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.e.x, u_input.b.x, u_input.e.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.e.x, u_input.e.x)) >> (46538u % 32u))));
    global0 = func_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, u_input.d.x, 48278u) ^ ~vec3<u32>(u_input.d.x, 29464u, u_input.c.x), ~abs(vec3<u32>(var_0.c, 31338u, u_input.c.x))), Struct_2(false), -3922i);
    let var_1 = func_1(_wgslsmith_mult_u32(var_0.c, 4294967295u), Struct_2(false), ~(_wgslsmith_div_i32(-14649i, 2147483647i) >> (var_0.c % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(807f, var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, 1098f, 819f), vec3<f32>(var_0.b.x, 625f, 283f)))))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 764f, var_0.b.x))));
    let var_3 = -_wgslsmith_clamp_i32(-42607i, countOneBits(var_0.a), -5913i);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(1037i, u_input.e.x) & u_input.e, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_3), vec2<i32>(var_0.d, var_0.a)), _wgslsmith_add_vec2_i32(u_input.b.xx, u_input.e)), vec2<i32>(-1i) * -vec2<i32>(41402i, -1i)) | _wgslsmith_div_vec2_i32(vec2<i32>(1i, ~var_3), u_input.b.xy), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, var_3, u_input.e.x), vec3<i32>(u_input.e.x, var_0.d, u_input.a)), u_input.b.ywz) >> (vec3<u32>(~(var_0.c >> (u_input.d.x % 32u)), ~u_input.d.x ^ firstTrailingBit(var_0.c), u_input.d.x) % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(trunc(var_2.x))), 779f, select(~_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(var_0.c, 24650u, u_input.d.x, 1u) & u_input.c), _wgslsmith_add_vec4_u32(select(vec4<u32>(15603u, 4294967295u, 4539u, 15896u), vec4<u32>(u_input.c.x, 4294967295u, u_input.d.x, 4294967295u), false) & _wgslsmith_add_vec4_u32(u_input.d, u_input.c), u_input.c), vec4<bool>(var_1.a, all(!vec2<bool>(global0.a, true)), !global0.a, global0.a)));
}

