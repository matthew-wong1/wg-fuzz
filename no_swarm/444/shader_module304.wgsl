struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-212f, -782f), Struct_2(Struct_1(1i, vec2<bool>(false, true)), Struct_1(-1i, vec2<bool>(true, true)), vec3<f32>(1778f, -980f, -1607f)), vec3<i32>(i32(-2147483648), -87144i, -8008i), Struct_1(-58900i, vec2<bool>(false, false)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(arg_1, ~countOneBits(vec3<u32>(u_input.d.x, 0u, u_input.d.x)));
    var_0 = abs(~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, var_0.x, 0u), abs(arg_1))) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x | ~var_0.x, _wgslsmith_div_u32(44711u, 1u << (arg_1.x % 32u)), var_0.x), arg_1);
    var var_1 = global0.d;
    var_1 = Struct_1(i32(-1i) * -32963i, vec2<bool>(global0.d.b.x, true));
    var_0 = arg_1;
    return _wgslsmith_div_i32(arg_0, -u_input.a.x) & firstLeadingBit(-1i);
}

fn func_2(arg_0: bool) -> Struct_1 {
    global0 = Struct_3(global0.b.c.yx, global0.b, u_input.a.yzx, global0.d);
    global0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1000f + -1607f), _wgslsmith_f_op_f32(619f + _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(floor(-135f))))), global0.b, vec3<i32>(min(-2147483647i, global0.c.x), _wgslsmith_sub_i32(global0.d.a, 0i), func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -7161i), u_input.a.wz) & u_input.b.x, vec3<u32>(1u, ~u_input.d.x, reverseBits(42238u)))), Struct_1(abs(u_input.e), !(!global0.b.b.b)));
    let var_0 = Struct_5(global0.d.b.x, Struct_1(_wgslsmith_sub_i32(-global0.c.x, 31179i << (1u % 32u)), !(!select(vec2<bool>(global0.b.a.b.x, true), global0.b.b.b, arg_0))), vec3<bool>(arg_0, all(select(vec4<bool>(global0.d.b.x, false, true, arg_0), vec4<bool>(true, global0.b.b.b.x, true, global0.d.b.x), vec4<bool>(true, global0.d.b.x, true, arg_0))) & select(any(vec4<bool>(true, false, false, global0.d.b.x)), true, true), !any(vec4<bool>(true, arg_0, false, false)) || arg_0), Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global0.b.c.x, -1616f))))), Struct_2(Struct_1(global0.d.a, select(vec2<bool>(global0.d.b.x, global0.b.a.b.x), global0.b.b.b, global0.d.b.x)), global0.b.a, vec3<f32>(-803f, 251f, _wgslsmith_f_op_f32(f32(-1f) * -147f))), ~max(vec3<i32>(0i, -41065i, global0.c.x), u_input.a.zwy), global0.b.b), vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 41709u, 16090u)), ~vec3<u32>(u_input.d.x, u_input.d.x, 0u)), 60574u, 27181u, 3801u) ^ vec4<u32>(u_input.d.x, 1u, ~(~66332u), u_input.d.x));
    var var_1 = var_0.e.x;
    let var_2 = Struct_2(Struct_1(var_0.d.d.a, var_0.b.b), global0.d, vec3<f32>(_wgslsmith_f_op_f32(var_0.d.a.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.a.x - global0.a.x)))), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(850f * _wgslsmith_div_f32(1265f, -237f))), global0.a.x));
    return Struct_1(-29603i, !(!select(select(var_0.d.d.b, vec2<bool>(global0.b.a.b.x, global0.b.b.b.x), vec2<bool>(var_0.d.d.b.x, var_0.c.x)), vec2<bool>(false, false), select(var_2.a.b, var_0.b.b, false))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = func_2(!select(true, true, true));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-795f, -933f)))) - vec2<f32>(global0.a.x, -1083f))), global0.b, global0.c, arg_2.a);
    let var_1 = _wgslsmith_f_op_f32(trunc(arg_2.c.x));
    global0 = Struct_3(arg_2.c.zy, Struct_2(Struct_1(~0i, !func_2(global0.d.b.x).b), Struct_1(-6695i, func_2(arg_2.b.b.x).b), global0.b.c), _wgslsmith_clamp_vec3_i32(global0.c, global0.c, firstLeadingBit(~u_input.a.zzx)), Struct_1(arg_0, !func_2(true).b));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.c.yy - global0.b.c.xx))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(global0.a.x, global0.a.x)))))))), Struct_2(var_0, Struct_1(~abs(2144i), vec2<bool>(global0.b.a.b.x, true)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_1 + 583f), _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(round(global0.a.x)))))), _wgslsmith_sub_vec3_i32(global0.c, countOneBits(abs(vec3<i32>(var_0.a, -2147483647i, arg_2.a.a) & u_input.a.zxw))), func_2(all(select(!vec3<bool>(true, global0.b.a.b.x, arg_2.a.b.x), vec3<bool>(true, true, true), !vec3<bool>(arg_2.b.b.x, global0.d.b.x, false)))));
    return Struct_3(arg_2.c.zx, global0.b, ~vec3<i32>(firstLeadingBit(u_input.c), ~arg_0, global0.c.x) ^ global0.c, func_2(false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(abs(firstTrailingBit(-global0.b.a.a)), (~firstTrailingBit(u_input.b.yx) & (_wgslsmith_mod_vec2_i32(global0.c.zy, global0.c.xy) >> (~u_input.d % vec2<u32>(32u)))) ^ (-vec2<i32>(u_input.b.x, 1i) & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), abs(vec2<i32>(-13979i, 1i)))), global0.b);
    var var_0 = ~firstLeadingBit(u_input.d.x);
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global0.a.x, -1293f)), _wgslsmith_div_f32(global0.a.x, -876f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.c.zz)) - _wgslsmith_f_op_vec2_f32(floor(global0.a)))), func_1(u_input.e, u_input.a.yz, Struct_2(func_2(global0.d.b.x), Struct_1(func_3(-2147483647i, vec3<u32>(u_input.d.x, 0u, u_input.d.x)), !vec2<bool>(global0.d.b.x, false)), global0.b.c)).b, countOneBits(select((u_input.a.www << (vec3<u32>(0u, 0u, u_input.d.x) % vec3<u32>(32u))) << (min(vec3<u32>(u_input.d.x, 62412u, 43938u), vec3<u32>(0u, u_input.d.x, u_input.d.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.x, 2147483647i, 0i), vec3<i32>(global0.b.b.a, 1i, u_input.e)), select(vec3<bool>(true, true, true), vec3<bool>(global0.b.a.b.x, false, global0.b.b.b.x), select(vec3<bool>(global0.d.b.x, true, false), vec3<bool>(true, global0.b.b.b.x, false), vec3<bool>(false, true, true))))), Struct_1(_wgslsmith_dot_vec2_i32(func_1(-22417i, global0.c.xx, global0.b).c.yx, -vec2<i32>(u_input.a.x, -46984i)) >> (_wgslsmith_mult_u32(~u_input.d.x, u_input.d.x) % 32u), vec2<bool>(_wgslsmith_add_i32(global0.d.a, -2147483647i) < global0.c.x, any(vec4<bool>(true, global0.b.a.b.x, true, global0.d.b.x)))));
    let var_1 = func_2(!all(select(vec3<bool>(true, global0.b.b.b.x, true), vec3<bool>(global0.d.b.x, false, global0.b.a.b.x), vec3<bool>(global0.b.a.b.x, false, global0.d.b.x))));
    var var_2 = Struct_4(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(select(global0.c.x, var_1.a, true), i32(-1i) * -2147483647i, u_input.b.x, func_1(40871i, vec2<i32>(31442i, u_input.e), Struct_2(var_1, var_1, vec3<f32>(1654f, -161f, 1000f))).b.b.a), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-2147483647i, global0.c.x, u_input.b.x, global0.d.a)) >> (vec4<u32>(u_input.d.x, 13548u, u_input.d.x, 4294967295u) % vec4<u32>(32u))), u_input.a.yz, Struct_2(func_1(abs(-2147483647i), ~vec2<i32>(18060i, 3792i), Struct_2(Struct_1(13403i, global0.b.a.b), Struct_1(u_input.e, global0.d.b), global0.b.c)).b.a, global0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b.c), _wgslsmith_f_op_vec3_f32(abs(global0.b.c))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1428f - global0.b.c.x)) + _wgslsmith_f_op_f32(step(global0.a.x, -413f))))));
    var_0 = reverseBits(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(~u_input.d.x, 1u, reverseBits(77847u))), _wgslsmith_f_op_f32(649f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1306f - 726f)))));
}

