struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 0u;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = ~reverseBits(max(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, u_input.d, 26442u), vec4<u32>(4294967295u, 0u, 1u, 42514u)), vec4<u32>(7597u, 4294967295u, u_input.a, u_input.b.x)));
    let var_1 = -u_input.c;
    let var_2 = vec2<u32>(u_input.b.x, var_0.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-436f + global0.x) * -206f)))), -186f);
    global1 = _wgslsmith_mod_u32(11061u, ~(13760u & _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d, 23685u), ~75506u)));
    return firstTrailingBit(_wgslsmith_clamp_i32(~global2.b.b.b, -69688i, -(~2012i >> (~u_input.a % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = select(vec3<bool>(!arg_3.c.a.x, true, true), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 1u, 0u), vec4<u32>(arg_1.x, 36446u, u_input.d, 0u) >> (vec4<u32>(0u, 32166u, 4294967295u, 20940u) % vec4<u32>(32u))) >= 474u, true, arg_3.c.a.x), any(arg_3.c.a));
    global2 = Struct_3(max(global2.a, vec4<i32>(2147483647i, arg_2, -55439i, 1i)), arg_3, select(!select(!global2.c, !vec3<bool>(var_0.x, true, false), select(vec3<bool>(arg_3.c.a.x, false, global2.b.b.a.x), vec3<bool>(global2.c.x, var_0.x, global2.b.b.a.x), false)), vec3<bool>(select(any(vec4<bool>(arg_3.b.a.x, true, arg_3.b.a.x, false)), !global2.b.b.a.x, any(vec4<bool>(true, false, global2.c.x, var_0.x))), true, all(select(vec4<bool>(arg_3.c.a.x, false, global2.c.x, true), vec4<bool>(global2.b.a, true, false, var_0.x), vec4<bool>(false, true, arg_3.a, arg_3.b.a.x)))), !var_0.x));
    global1 = ((select(~u_input.a, firstLeadingBit(u_input.a), select(true, var_0.x, false)) & 4294967295u) << (u_input.d % 32u)) >> (u_input.d % 32u);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.x, -724f, global2.b.d) - vec4<f32>(-997f, 810f, 415f, -1604f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 174f, -1000f, 451f))), vec4<f32>(global2.b.d, _wgslsmith_f_op_f32(trunc(arg_3.d)), 1672f, 784f), !(!vec4<bool>(false, arg_3.a, global2.c.x, global2.b.c.a.x)))))));
    var var_1 = arg_3;
    return -_wgslsmith_add_i32(-2147483647i, firstLeadingBit(min(-11075i, 2147483647i)));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_3(global2.a & ~vec4<i32>(abs(u_input.e), u_input.c, ~(-16850i), 2147483647i), global2.b, !(!select(global2.c, global2.c, select(vec3<bool>(false, global2.c.x, global2.c.x), global2.c, false))));
    var var_1 = Struct_3(vec4<i32>(u_input.c, 34186i, 2147483647i, countOneBits(func_4(var_0.b.d, u_input.b, func_3(false), Struct_2(global2.c.x, global2.b.c, var_0.b.c, 498f, vec2<i32>(-10452i, u_input.e))))), Struct_2(any(select(!global2.c, vec3<bool>(var_0.b.c.a.x, false, true), any(global2.b.c.a))), Struct_1(select(vec2<bool>(true, false), !vec2<bool>(var_0.b.a, global2.b.a), global2.b.a), var_0.a.x), global2.b.b, var_0.b.d, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-global2.b.e, var_0.a.zx), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 12814i), var_0.b.e))), vec3<bool>(-1376i > global2.b.e.x, all(!vec4<bool>(false, false, var_0.c.x, global2.b.a)), all(vec2<bool>(any(global2.c.yy), false))));
    var var_2 = countOneBits(~firstLeadingBit(vec2<u32>(~u_input.d, u_input.b.x)));
    var var_3 = select(firstTrailingBit(~(~_wgslsmith_div_u32(var_2.x, u_input.d))), 43980u, any(select(select(vec2<bool>(var_0.c.x, false), vec2<bool>(false, var_0.c.x), vec2<bool>(true, var_0.b.c.a.x)), !vec2<bool>(true, var_1.c.x), select(global2.c.x, var_1.c.x, false))) && global2.b.b.a.x);
    return max(~vec4<u32>(_wgslsmith_div_u32(1u, 4294967295u) << (countOneBits(var_2.x) % 32u), ~(~u_input.d), 66730u, u_input.b.x), min(select(select(vec4<u32>(101948u, 4294967295u, var_2.x, 4294967295u), vec4<u32>(u_input.b.x, 8180u, 0u, var_2.x), false) << ((vec4<u32>(1u, 0u, var_2.x, var_2.x) >> (vec4<u32>(71580u, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(~u_input.b.x, var_2.x << (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b.yy), var_2.x), select(!vec4<bool>(var_0.c.x, var_0.b.c.a.x, var_0.b.b.a.x, true), select(vec4<bool>(false, global2.b.c.a.x, var_1.c.x, false), vec4<bool>(false, true, false, var_0.b.c.a.x), false), select(vec4<bool>(global2.b.b.a.x, global2.b.c.a.x, true, true), vec4<bool>(false, true, var_0.c.x, global2.b.a), false))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 82589u, u_input.a), vec4<u32>(u_input.a, u_input.b.x, var_2.x, 47252u), vec4<u32>(47755u, var_2.x, 33412u, var_2.x)) >> (vec4<u32>(1u, reverseBits(3713u), abs(u_input.b.x), u_input.d << (u_input.b.x % 32u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> vec4<i32> {
    global1 = countOneBits(~u_input.b.x);
    let var_0 = _wgslsmith_add_vec4_u32(max(vec4<u32>(0u, 4294967295u << (u_input.a % 32u), ~u_input.d, 0u) & _wgslsmith_add_vec4_u32(vec4<u32>(19967u, u_input.d, 15915u, u_input.b.x) | vec4<u32>(4294967295u, u_input.b.x, u_input.d, u_input.d), func_2()), min(vec4<u32>(u_input.b.x, u_input.d, u_input.d, max(u_input.d, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.a, 80236u, u_input.b.x) >> (reverseBits(vec4<u32>(0u, 4294967295u, 1u, 0u)) % vec4<u32>(32u)))), ~abs(abs(vec4<u32>(1u, u_input.b.x, u_input.d, u_input.d)) >> (vec4<u32>(36523u, u_input.d, 17189u, u_input.d) % vec4<u32>(32u))));
    global2 = Struct_3(global2.a, global2.b, vec3<bool>(all(select(global2.c, vec3<bool>(global2.b.a, arg_0.b.a.x, true), all(vec4<bool>(false, global2.b.c.a.x, arg_0.b.a.x, global2.b.a)))), false, all(!(!vec4<bool>(arg_0.c.a.x, global2.b.c.a.x, global2.b.b.a.x, false)))));
    global2 = Struct_3(select(min(global2.a, firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -2147483647i, -2147483647i, -1i), global2.a))), ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global2.a, global2.a), -vec4<i32>(arg_0.e.x, u_input.c, global2.b.c.b, 1i)), any(vec2<bool>(arg_0.d == 638f, true != arg_0.a))), arg_0, global2.c);
    return global2.a;
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = arg_3;
    var_0 = arg_3;
    let var_1 = Struct_3(-select(abs(var_0.a << (vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a) % vec4<u32>(32u))), arg_3.a | _wgslsmith_add_vec4_i32(vec4<i32>(-13995i, 43558i, 0i, 0i), var_0.a), true), arg_3.b, vec3<bool>(all(select(vec3<bool>(arg_1.x, global2.c.x, arg_0), vec3<bool>(global2.c.x, true, true), false)), arg_3.b.a, !(!all(vec3<bool>(false, arg_3.c.x, true)))));
    let var_2 = abs(~(-var_0.a.x));
    let var_3 = var_1;
    return Struct_3(_wgslsmith_mod_vec4_i32(arg_3.a, var_1.a), Struct_2(var_3.c.x, Struct_1(vec2<bool>(arg_3.b.c.b < global2.a.x, all(vec2<bool>(true, true))), ~arg_3.b.b.b ^ (i32(-1i) * -1i)), var_3.b.c, var_3.b.d, vec2<i32>(var_0.b.c.b & -63547i, func_4(-1000f, vec3<u32>(17575u, 4627u, u_input.b.x), -3048i, Struct_2(var_3.b.b.a.x, var_3.b.b, Struct_1(arg_3.b.c.a, 0i), global0.x, vec2<i32>(2147483647i, 4284i)))) << (countOneBits(_wgslsmith_div_vec2_u32(u_input.b.xx, vec2<u32>(0u, 1u))) % vec2<u32>(32u))), vec3<bool>(!all(vec3<bool>(true, true, true)), false && arg_1.x, any(!(!vec4<bool>(false, global2.b.b.a.x, true, var_1.c.x)))));
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.ywx)))));
    var var_1 = true;
    let var_2 = arg_1.c.x;
    var_1 = global2.c.x;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.yxz - vec3<f32>(_wgslsmith_f_op_f32(global2.b.d - 1097f), 264f, -285f)) + vec3<f32>(arg_0, -1313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-549f, arg_1.b.d, var_2))))) + arg_2.xww);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -10543i) >> (vec2<u32>(52620u, u_input.a) % vec2<u32>(32u)), ~(vec2<i32>(2147483647i, arg_1.a.x) << (u_input.b.xz % vec2<u32>(32u)))), global2.b.b.b, ~arg_1.b.e.x ^ u_input.c, global2.a.x) << (func_2() % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zz * vec2<f32>(_wgslsmith_f_op_f32(1388f * -1124f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1033f - global2.b.d))))) + global0.xz);
    global2 = Struct_3(func_6(_wgslsmith_div_f32(-1562f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(263f - -194f))), func_5(false && any(global2.c), vec2<bool>(all(global2.c), global2.c.x), _wgslsmith_f_op_vec3_f32(global0.www * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -232f, global2.b.d) - vec3<f32>(-927f, var_0.x, var_0.x))), Struct_3(func_1(global2.b, 2147483647i, global0.zwz), Struct_2(false, global2.b.c, Struct_1(vec2<bool>(global2.c.x, global2.c.x), -58137i), 1011f, vec2<i32>(u_input.e, global2.b.b.b)), !global2.c)), vec4<f32>(1026f, 385f, -1813f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global2.b.d)))))), global2.b, !global2.c);
    var var_1 = -1i;
    var var_2 = _wgslsmith_mult_u32(u_input.d, ~u_input.a) << (min(_wgslsmith_mod_u32(select(_wgslsmith_sub_u32(u_input.d, u_input.a), 10235u, 2253f > var_0.x), firstLeadingBit(func_2().x)), reverseBits(u_input.b.x)) % 32u);
    var_1 = 2147483647i;
    let var_3 = Struct_1(select(!select(!global2.b.c.a, vec2<bool>(global2.c.x, global2.b.b.a.x), select(global2.c.zy, global2.c.yy, global2.c.x)), func_5(global2.b.c.a.x, vec2<bool>(global2.b.a, all(vec3<bool>(true, global2.b.c.a.x, global2.b.c.a.x))), global0.xzx, func_5(func_5(true, global2.c.xy, vec3<f32>(126f, global0.x, global2.b.d), Struct_3(vec4<i32>(-1i, global2.a.x, u_input.e, 2147483647i), Struct_2(global2.b.b.a.x, global2.b.c, Struct_1(vec2<bool>(true, global2.b.a), u_input.c), 580f, vec2<i32>(-67931i, 2147483647i)), global2.c)).b.b.a.x, vec2<bool>(true, true), global0.xyz, func_5(true, global2.c.zz, vec3<f32>(-2401f, global0.x, -493f), Struct_3(vec4<i32>(-21608i, u_input.c, u_input.e, u_input.c), global2.b, vec3<bool>(false, false, false))))).c.yy, select(select(vec2<bool>(true, true), select(vec2<bool>(global2.b.c.a.x, true), vec2<bool>(global2.c.x, global2.c.x), false), vec2<bool>(true, false)), select(vec2<bool>(true, true), !vec2<bool>(global2.b.b.a.x, false), any(vec4<bool>(global2.b.b.a.x, false, global2.b.a, global2.b.b.a.x))), !global2.c.yx)), u_input.e);
    let var_4 = ~u_input.b.x;
    var var_5 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1814f * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(1000f, -182f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(-752f, var_0.x, false)), _wgslsmith_f_op_f32(global2.b.d + var_0.x), global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.x)))), -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-130i, u_input.e) | _wgslsmith_mult_i32(u_input.c, -1i), (0i << (var_4 % 32u)) ^ global2.a.x, firstLeadingBit(i32(-1i) * -4393i)), ~_wgslsmith_sub_u32(0u, u_input.d));
}

