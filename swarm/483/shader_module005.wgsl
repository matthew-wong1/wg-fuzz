struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global1: Struct_2 = Struct_2(Struct_1(0i, vec3<bool>(false, true, true), vec2<i32>(-24207i, -9523i), vec2<f32>(-253f, -385f), false), vec3<bool>(false, true, false), 396f, vec2<i32>(-1i, 1i));

var<private> global2: vec4<f32> = vec4<f32>(1078f, 516f, 507f, -693f);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> i32 {
    return abs(-1i);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, global3.d.x, -673f, global2.x))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1635f, 1251f, global1.a.d.x, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, global3.d.x, -1794f, global3.d.x) - vec4<f32>(global3.d.x, global3.d.x, -2289f, -2441f))))))));
    var var_0 = Struct_4(vec4<i32>(global0.x, -1i, func_3(u_input.b.x << (u_input.b.x % 32u), reverseBits(~4294967295u), global1.a, u_input.a | reverseBits(32010i)), _wgslsmith_clamp_i32(global3.c.x, abs(func_3(arg_0.x, 31048u, global1.a, global1.d.x)), ~global3.c.x | ~global0.x)), ~_wgslsmith_div_i32(~(~global3.a), global1.a.a), Struct_2(global1.a, !select(vec3<bool>(global1.b.x, global3.b.x, true), select(global3.b, vec3<bool>(false, global3.b.x, global1.a.b.x), vec3<bool>(global1.b.x, global1.a.b.x, global3.e)), global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -917f), vec2<i32>(u_input.c.x, _wgslsmith_div_i32(firstTrailingBit(global1.d.x), _wgslsmith_mod_i32(-1i, -1i)))), ~((global1.a.c | select(global1.d, global1.d, global1.b.x)) & (firstTrailingBit(vec2<i32>(-2147483647i, u_input.a)) >> (vec2<u32>(94260u, 758u) % vec2<u32>(32u)))));
    var_0 = Struct_4(abs(-var_0.a) | ~firstLeadingBit(vec4<i32>(global3.a, 1i, global1.d.x, u_input.a)), u_input.c.x, Struct_2(Struct_1(~_wgslsmith_mult_i32(global1.d.x, -40639i), !var_0.c.a.b, max(global3.c, global3.c | global3.c), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -312f), global1.c), true), select(var_0.c.a.b, !vec3<bool>(var_0.c.b.x, true, true), vec3<bool>(var_0.c.a.e, global3.b.x, false)), 1263f, _wgslsmith_div_vec2_i32(~global3.c, -(~var_0.d))), countOneBits(~vec2<i32>(u_input.a, _wgslsmith_clamp_i32(-35520i, 8144i, 16214i))));
    global0 = abs(u_input.c) | _wgslsmith_mult_vec2_i32(abs(var_0.a.zx), u_input.c | global3.c);
    global1 = var_0.c;
    return Struct_2(var_0.c.a, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global3.d.x) * var_0.c.a.d.x), global2.x)), ~max((vec2<i32>(10332i, global0.x) | vec2<i32>(u_input.c.x, 1i)) & global3.c, vec2<i32>(min(global1.d.x, u_input.a), var_0.c.d.x & 46212i)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    global1 = Struct_2(Struct_1(u_input.a, global3.b, ~vec2<i32>(1i, _wgslsmith_mod_i32(global1.a.a, 1310i)), arg_1.yz, global1.b.x), vec3<bool>(global1.b.x, all(vec4<bool>(true, true, global3.e, true)), true), -378f, max(-vec2<i32>(u_input.c.x, global3.c.x) << (vec2<u32>(u_input.d.x, _wgslsmith_clamp_u32(u_input.b.x, 56594u, arg_0)) % vec2<u32>(32u)), global1.a.c));
    var var_0 = Struct_3(func_2(~_wgslsmith_clamp_vec2_u32(~u_input.b, vec2<u32>(75237u, 0u) | vec2<u32>(4982u, u_input.d.x), ~u_input.d.yx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -124f)))), func_2(abs(select(vec2<u32>(49178u, arg_0), ~vec2<u32>(94987u, arg_0), !global1.a.b.zz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(743f)))), arg_2))), global1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global2.x, -1612f)), -730f)));
    let var_1 = global1.a.b.zz;
    var var_2 = vec4<bool>(global1.a.e, true, global3.b.x, var_0.a.b.x);
    global1 = func_2(u_input.b, -461f);
    return global2.x;
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = -1102f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(-1309f, _wgslsmith_div_f32(267f, 1167f))))));
    return Struct_3(Struct_2(global1.a, select(global3.b, select(vec3<bool>(global1.a.b.x, global1.b.x, true), global3.b, global3.b), vec3<bool>(false && global1.b.x, any(vec4<bool>(true, global3.e, true, false)), global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * -1095f), _wgslsmith_f_op_f32(max(-420f, global2.x)))), u_input.c >> (vec2<u32>(u_input.b.x | u_input.b.x, ~1u) % vec2<u32>(32u))), Struct_2(Struct_1(-max(1i, -115033i), vec3<bool>(!global3.e, !global3.e, global1.a.b.x), _wgslsmith_div_vec2_i32(u_input.c, global3.c) ^ global1.a.c, vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * global2.x), _wgslsmith_f_op_f32(sign(global1.c))), global1.a.b.x), !vec3<bool>(global3.d.x >= -271f, !global1.a.b.x, global1.a.b.x), global2.x, vec2<i32>(func_2(vec2<u32>(u_input.d.x, 15345u), 1845f).a.c.x, (global3.c.x ^ global1.d.x) & u_input.a)), Struct_1(func_2(vec2<u32>(1401u, u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.d.x, -1000f, global3.b.x)) - _wgslsmith_f_op_f32(1545f + 1043f))).a.a, select(!select(global1.b, global3.b, global3.b.x), vec3<bool>(global1.b.x, global3.b.x, true), vec3<bool>(false, true, true)), func_2(abs(~u_input.d.zx), _wgslsmith_f_op_f32(arg_0.x + -1200f)).d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_0.zx), _wgslsmith_f_op_vec2_f32(global1.a.d + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.c, 1996f)))))), global1.a.e != (global1.b.x || global3.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2183f, global3.d.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1495f))) + 1031f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a, abs(global3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1029f, global2.x) + -633f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)), _wgslsmith_f_op_f32(global3.d.x - global2.x))) > 272f);
    var var_1 = u_input.d.x;
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(global2.zwy - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1360f)) - _wgslsmith_f_op_f32(func_1(u_input.b.x, vec3<f32>(global3.d.x, -621f, global3.d.x), 431f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.c)), global1.c)), 989f)));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(func_4(vec3<f32>(var_2.c.d.x, global3.d.x, var_2.d)).b.a.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1342f)), _wgslsmith_f_op_f32(-1742f - 784f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c))))), global1.a.d.x);
    var_1 = 4294967295u;
    let var_3 = Struct_3(var_2.b, var_2.a, global1.a, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.a.a.d.x, 297f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(global2.yzw, vec3<f32>(var_3.a.a.d.x, var_2.b.c, 1159f))), _wgslsmith_f_op_vec3_f32(exp2(global2.xwy))))), min(_wgslsmith_clamp_u32(39946u, abs(37819u), firstLeadingBit(firstTrailingBit(u_input.b.x))), ~(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.b.x, 63098u, u_input.b.x)) ^ min(1u, u_input.b.x))), _wgslsmith_mod_u32(firstTrailingBit(~u_input.d.x), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30714u, 20789u, u_input.d.x), vec4<u32>(u_input.d.x, 10681u, u_input.d.x, u_input.d.x)) ^ (10946u << (u_input.d.x % 32u)))), 1u);
}

