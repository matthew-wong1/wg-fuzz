struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
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

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = abs(firstLeadingBit(reverseBits(vec2<u32>(1u, 42515u)) >> (_wgslsmith_clamp_vec2_u32(~u_input.a, u_input.a, _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u))));
    var_0 = vec2<u32>(abs(global2.b), 0u);
    var var_1 = Struct_1(-u_input.d.x);
    let var_2 = vec3<u32>(firstTrailingBit(~u_input.a.x), u_input.c, 70393u);
    let var_3 = Struct_3(Struct_2(var_1.a, vec4<u32>(var_0.x, firstTrailingBit(arg_2 | 60879u), _wgslsmith_div_u32(0u, min(arg_2, 58623u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2, 9019u, 28117u), var_2, global2.c.yyy), ~vec3<u32>(u_input.a.x, 0u, 89112u))), 990f, countOneBits(var_1.a) ^ 37226i, 22457i & arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -23554i, ~(global1.a | 1i), _wgslsmith_sub_i32(i32(-1i) * -46718i, firstTrailingBit(var_1.a))), min(~(-vec4<i32>(var_1.a, 25329i, u_input.d.x, global2.a.a.x)), select(vec4<i32>(arg_0, -2147483647i, 0i, 337i), vec4<i32>(var_1.a, 0i, -37929i, 0i), vec4<bool>(false, global2.a.b, global2.a.b, global2.a.b)) | min(vec4<i32>(7579i, u_input.d.x, var_1.a, -11967i), vec4<i32>(-1368i, global1.a, -2147483647i, var_1.a))), select(~vec4<i32>(arg_0, global1.a, -2147483647i, global1.a), ~vec4<i32>(-19767i, global1.a, u_input.d.x, var_1.a), select(false, false, false)) & vec4<i32>(~0i, -1i, ~0i, global2.a.a.x)));
    return -1533f;
}

fn func_2() -> Struct_1 {
    var var_0 = ~abs(vec4<u32>(_wgslsmith_add_u32(countOneBits(u_input.a.x), global2.b), global2.d, _wgslsmith_mod_u32(u_input.a.x & 0u, ~11548u), abs(global2.d)));
    global1 = Struct_1(global2.a.a.x);
    global1 = Struct_1(_wgslsmith_mod_i32(-(~(-15283i) >> (_wgslsmith_sub_u32(var_0.x, 45863u) % 32u)), global2.a.a.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(-389f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-276f, -430f) * -923f), 518f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x, 630f, 1562u))))))), -1519f);
    let var_2 = Struct_2(_wgslsmith_add_i32(2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a.x, -28425i, u_input.b), firstLeadingBit(vec3<i32>(u_input.d.x, global2.a.a.x, 56341i))), u_input.b, global2.a.b)), firstTrailingBit(firstTrailingBit(max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, var_0.x, global2.b), vec4<u32>(1u, 20297u, var_0.x, 0u)), vec4<u32>(0u, var_0.x, var_0.x, 1u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(132f * var_1.x), true))))), -1i, countOneBits(firstTrailingBit(-(i32(-1i) * -20487i))));
    return Struct_1(global1.a);
}

fn func_1(arg_0: f32, arg_1: bool) -> i32 {
    global1 = func_2();
    global2 = Struct_5(Struct_4(~global2.a.a, !all(vec4<bool>(arg_1, global2.a.b, false, arg_1))), u_input.a.x, global2.c, countOneBits(global2.d));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1686f));
    global2 = Struct_5(Struct_4(vec3<i32>(_wgslsmith_mult_i32(35181i, global2.a.a.x), ~(-1i), func_2().a), u_input.d.x != (global2.a.a.x & global1.a)), u_input.a.x, vec4<bool>(select(!global2.a.b, all(select(global2.c, global2.c, true)), arg_1), true, arg_1, false), ~u_input.c);
    var var_1 = select(u_input.d, vec3<i32>(~abs(-20723i), _wgslsmith_dot_vec2_i32(u_input.d.xy, -vec2<i32>(-53674i, global2.a.a.x)), _wgslsmith_mult_i32(i32(-1i) * -10073i, 10554i)), any(global2.c.xw)) ^ (vec3<i32>(-1i) * -global2.a.a);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(global2.a.a.x, var_1.x, 52857i, u_input.d.x)), ~vec4<i32>(0i, var_1.x, u_input.d.x, global1.a)) ^ _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(45650i, var_1.x, u_input.b, u_input.d.x), vec4<i32>(-1i, -40707i, 4382i, global1.a))), vec4<i32>(40237i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 0i, global2.a.a.x, var_1.x), vec4<i32>(32809i, 2147483647i, 0i, global2.a.a.x)), var_1.x, _wgslsmith_clamp_i32(2147483647i, 52197i, u_input.b))), vec4<i32>(_wgslsmith_dot_vec2_i32(max(u_input.d.yx, _wgslsmith_div_vec2_i32(global2.a.a.yz, global2.a.a.yy)), abs(global2.a.a.zz)), u_input.d.x, -1i, global1.a));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(2556f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(3620f))))), 992f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(345f)) - -944f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f - 1357f) * _wgslsmith_f_op_f32(-940f - 174f))))));
    let var_1 = Struct_2(~(-1i), abs(_wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.a.x, global2.b, 4294967295u, 0u)), vec4<u32>(12382u, 49936u, firstTrailingBit(49516u), ~57756u))), 103f, abs(min(global2.a.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d, u_input.d), vec3<i32>(-1i, u_input.d.x, 2147483647i)))), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, arg_1.a.a.x, -2147483647i, 9886i), _wgslsmith_div_vec4_i32(vec4<i32>(global2.a.a.x, arg_1.a.a.x, 2147483647i, -47907i), vec4<i32>(global1.a, 2147483647i, global2.a.a.x, -2147483647i)), vec4<i32>(-2147483647i, arg_0, global1.a, global2.a.a.x))), vec4<i32>(-50357i, global2.a.a.x, firstLeadingBit(_wgslsmith_div_i32(2147483647i, arg_0)), _wgslsmith_add_i32(-u_input.d.x, 35496i))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - 121f)), var_0.x))), 367f);
    let var_2 = arg_1.a.a.x;
    var var_3 = Struct_5(global2.a, ~(countOneBits(_wgslsmith_dot_vec3_u32(var_1.b.www, var_1.b.zzz)) << (_wgslsmith_add_u32(arg_1.d << (arg_1.d % 32u), ~global2.b) % 32u)), global2.c, var_1.b.x);
    return Struct_2(~u_input.b, ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(arg_1.d, 1u, var_1.b.x, 4294967295u)), var_1.b) << (_wgslsmith_add_vec4_u32(var_1.b, var_1.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(sign(1000f)), -1i, -7263i);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_5) -> Struct_2 {
    global0 = 656f;
    var var_0 = _wgslsmith_dot_vec3_u32(arg_1.b.ywy, _wgslsmith_add_vec3_u32(vec3<u32>(abs(arg_0.x), 142814u, _wgslsmith_mult_u32(max(0u, 1u), 4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(~0u, 89246u | arg_0.x, ~32691u), max(4294967295u, countOneBits(arg_3.d)), _wgslsmith_add_u32(7154u, u_input.c))));
    var var_1 = _wgslsmith_mult_u32(u_input.a.x, 17888u) << (u_input.a.x % 32u);
    var var_2 = firstLeadingBit(arg_3.a.a.x);
    var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(~arg_3.a.a.x, min(1i, -24731i)), arg_1.d, -23758i, _wgslsmith_mod_i32(63660i, global2.a.a.x)), firstLeadingBit(reverseBits(vec4<i32>(global1.a, arg_3.a.a.x, global2.a.a.x, 2147483647i) << (arg_1.b % vec4<u32>(32u))))), (~vec4<i32>(arg_1.e, -30362i, u_input.d.x, -10703i) >> (vec4<u32>(global2.d, ~19445u, arg_0.x, arg_0.x) % vec4<u32>(32u))) << (~(~(vec4<u32>(30559u, 22597u, global2.d, arg_3.d) | arg_1.b)) % vec4<u32>(32u)));
    return func_4(1i, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(2147483647i);
    let var_0 = Struct_3(func_5(u_input.a ^ u_input.a, func_4(firstLeadingBit(func_1(545f, true)), Struct_5(global2.a, _wgslsmith_mult_u32(4294967295u, global2.b), global2.c, firstLeadingBit(27299u))), -620f, Struct_5(Struct_4(~u_input.d, any(global2.c)), _wgslsmith_div_u32(1u, u_input.a.x), vec4<bool>(all(global2.c.ywy), true, global2.a.b, global2.c.x), 54009u)), ~(-select(vec4<i32>(2147483647i, global2.a.a.x, -1i, -1i), vec4<i32>(global2.a.a.x, u_input.d.x, u_input.d.x, -1i), vec4<bool>(global2.c.x, global2.c.x, global2.a.b, global2.a.b)) >> (vec4<u32>(u_input.a.x, func_5(u_input.a, Struct_2(-1i, vec4<u32>(global2.d, 75810u, global2.b, 0u), 264f, global1.a, -28862i), -235f, Struct_5(Struct_4(u_input.d, true), u_input.c, global2.c, 0u)).b.x, ~700u, global2.b) % vec4<u32>(32u))));
    let var_1 = var_0;
    let var_2 = var_0.a.b;
    global1 = Struct_1(var_1.b.x);
    var var_3 = global2.a.a.zy;
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c), 910f));
    var var_5 = var_0.b.xz | u_input.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

