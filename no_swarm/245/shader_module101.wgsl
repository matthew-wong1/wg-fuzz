struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 78697u;

var<private> global1: Struct_3;

var<private> global2: Struct_4;

var<private> global3: Struct_2 = Struct_2(-216f, Struct_1(1i, 28114i, false, vec2<u32>(4294967295u, 1u), false), Struct_1(-1i, 0i, true, vec2<u32>(36731u, 18931u), true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> vec3<u32> {
    global3 = Struct_2(global1.a.a, Struct_1(-(~firstLeadingBit(global2.c.x)), 0i, true, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(arg_1, 362u), arg_0.xy), vec2<u32>(67165u, arg_3.x)), arg_0.xz), any(select(select(vec4<bool>(global3.c.e, false, global1.a.b.c, true), vec4<bool>(global2.d, true, true, global1.a.c.c), global2.d), vec4<bool>(global2.d, global1.a.c.e, global3.c.e, true), true))), global3.b);
    global0 = abs(_wgslsmith_add_u32(arg_0.x, 30660u));
    global3 = global1.a;
    let var_0 = vec4<bool>(!any(select(!vec4<bool>(false, false, true, global3.b.c), !vec4<bool>(true, global2.a.c.e, false, true), !vec4<bool>(false, true, global2.a.c.c, false))), !all(vec4<bool>(global2.a.b.c, global1.a.a == global1.b, false, !global1.a.c.c)), true, global1.c.x);
    global0 = u_input.a.x;
    return ~arg_3;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: u32) -> bool {
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + global2.a.a))), Struct_1(max(_wgslsmith_sub_i32(global3.b.b, global2.c.x) | global1.a.b.b, _wgslsmith_sub_i32(select(global3.c.a, 2147483647i, global2.a.c.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c.x, -1i, global2.c.x), vec3<i32>(global1.a.c.a, 10844i, 2147483647i)))), ~(abs(-36994i) >> (_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(0u, global1.a.b.d.x)) % 32u)), !(-global1.a.b.a <= (global2.c.x & 469i)), firstTrailingBit(vec2<u32>(firstLeadingBit(4294967295u), ~4294967295u)), global2.d | !global2.a.b.e), Struct_1(global1.a.c.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, reverseBits(1i)), ~(1i ^ global3.c.a)), any(!select(global1.c, global1.c, false)), global2.a.b.d, select(global3.c.c, global3.c.c, global1.a.b.e)));
    global3 = global2.a;
    let var_0 = Struct_3(global1.a, _wgslsmith_f_op_f32(-global1.a.a), vec3<bool>(all(select(select(vec3<bool>(true, global1.c.x, true), vec3<bool>(global2.a.b.c, global1.a.c.c, global1.c.x), global1.c), !vec3<bool>(global3.b.c, global3.c.c, true), global3.c.e || false)), !all(vec4<bool>(false, global2.d, global3.c.c, global1.c.x)) || true, true));
    global3 = global1.a;
    var var_1 = _wgslsmith_f_op_f32(893f + -301f);
    return !global1.c.x || any(!select(vec4<bool>(global1.a.b.e, var_0.a.c.e, global2.a.b.e, false), !vec4<bool>(var_0.a.b.e, false, true, global3.c.e), any(vec4<bool>(false, global1.c.x, global3.b.e, false))));
}

fn func_2() -> Struct_1 {
    let var_0 = !vec2<bool>(true, func_4(func_3(~u_input.a.wyx, _wgslsmith_dot_vec2_u32(vec2<u32>(18247u, 35843u), vec2<u32>(4294967295u, global2.a.c.d.x)), _wgslsmith_mod_u32(4294967295u, global1.a.c.d.x), u_input.a.xzx), global1.a.a, global1.a.b.d.x));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(floor(global2.a.a)), Struct_1(select(-58859i, -3191i, false) & global3.c.a, 2082i << (abs(1u) % 32u), !global1.c.x, _wgslsmith_sub_vec2_u32(global1.a.c.d, ~u_input.b.ww), all(!vec3<bool>(false, true, global2.a.b.c))), global1.a.c), global2.b, countOneBits(-(~(~vec4<i32>(global3.c.b, global1.a.b.a, global1.a.c.b, 0i)))), false);
    var var_2 = Struct_3(global2.a, _wgslsmith_div_f32(1245f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a))))), select(global1.c, global1.c, global1.c));
    global1 = Struct_3(global1.a, -1000f, !var_2.c);
    let var_3 = global2.a;
    return global2.a.c;
}

fn func_1() -> Struct_2 {
    global3 = Struct_2(-277f, func_2(), global2.a.b);
    var var_0 = Struct_4(global2.a, _wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~(-global1.a.b.a), _wgslsmith_clamp_i32(-68225i, _wgslsmith_div_i32(15743i, -6843i), global3.c.b), ~(-2147483647i), global1.a.c.a << (~global3.b.d.x % 32u)), global2.c), func_4(u_input.a.zxw, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f * global1.b) - _wgslsmith_f_op_f32(select(global3.a, 634f, global1.a.b.c))))), global3.c.d.x));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global1.a.a) + global2.b))), ~min(~global2.c, firstTrailingBit(countOneBits(var_0.c))), global3.b.c);
    global1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a - global1.a.a) + -347f)), global2.a.b, Struct_1(1i, var_0.a.b.a, true, _wgslsmith_sub_vec2_u32(global3.c.d << (global1.a.b.d % vec2<u32>(32u)), select(global2.a.b.d, global1.a.c.d, vec2<bool>(false, true))), func_4(vec3<u32>(global1.a.c.d.x, 62689u, global3.c.d.x), _wgslsmith_f_op_f32(floor(var_0.b.x)), u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.b, -1545f), _wgslsmith_f_op_f32(sign(var_0.b.x)))))), global1.c);
    let var_1 = Struct_4(global1.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(global3.a, var_0.a.a)), vec2<f32>(-617f, 530f)), global2.b))), -max(abs(global2.c), select(firstLeadingBit(vec4<i32>(global3.c.a, -34420i, global1.a.b.a, global3.c.a)), vec4<i32>(global1.a.b.a, -1i, -23945i, -13155i), true)), global1.c.x);
    return Struct_2(-469f, func_2(), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = ~78267u;
    let var_1 = global1.c;
    global0 = 4294967295u;
    global2 = Struct_4(Struct_2(var_0.a, var_0.b, func_1().c), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1337f, global3.a))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1332f, 1013f), vec2<f32>(1075f, global1.a.a)))))), max(_wgslsmith_mod_vec4_i32(global2.c, -vec4<i32>(51544i, global1.a.b.b, 0i, var_0.b.b)), global2.c) | (vec4<i32>(-global3.c.b, _wgslsmith_mod_i32(-290i, 31651i), ~global3.c.b, global1.a.c.a) | global2.c), all(!global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f + global1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, global2.a.a) + -264f), min(1i, global3.b.a) <= 13622i)), _wgslsmith_f_op_f32(exp2(var_0.a)), var_0.b.e)), global2.a.c.a, abs(_wgslsmith_sub_u32(~abs(62691u), 41941u)), 1u);
}

