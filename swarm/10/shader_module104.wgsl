struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, 1564f), Struct_1(false, -906f), Struct_1(true, 1435f), Struct_1(false, -1000f), Struct_1(false, 1119f), Struct_1(false, -869f), Struct_1(false, 332f), Struct_1(false, 1330f), Struct_1(false, -370f), Struct_1(false, -1000f), Struct_1(false, 1308f), Struct_1(true, -276f), Struct_1(true, 1624f), Struct_1(true, -1739f), Struct_1(false, -1320f), Struct_1(true, 1701f), Struct_1(false, -151f), Struct_1(true, -216f), Struct_1(true, -281f), Struct_1(false, -102f), Struct_1(false, -448f), Struct_1(false, -1305f), Struct_1(true, 1022f), Struct_1(false, -1000f), Struct_1(false, 1362f), Struct_1(true, -689f), Struct_1(false, 442f), Struct_1(false, 2219f), Struct_1(true, 1147f), Struct_1(true, -642f), Struct_1(true, -620f));

var<private> global1: array<Struct_3, 28>;

var<private> global2: u32;

var<private> global3: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 31>();
    let var_0 = vec3<bool>((_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global3.b.d.b)))) > -222f) || any(vec3<bool>(false, select(false, false, global3.a.x), !global3.a.x)), global3.b.b, !global3.b.d.a);
    var var_1 = !select(vec2<bool>(~595u <= (global3.c << (18054u % 32u)), true | global3.a.x), !(!(!global3.a)), var_0.zy);
    global1 = array<Struct_3, 28>();
    let var_2 = Struct_4(select(vec2<bool>(var_1.x, false), select(select(select(vec2<bool>(global3.a.x, true), vec2<bool>(true, var_1.x), false), vec2<bool>(var_1.x, false), arg_0.x >= 4294967295u), select(vec2<bool>(true, true), var_0.xy, select(var_0.yx, var_0.xz, var_0.zx)), global3.a), var_0.xy), Struct_2(all(select(select(var_0, var_0, var_0), var_0, true || global3.b.d.a)), ~_wgslsmith_add_u32(arg_0.x, global3.c) <= ~48040u, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 19470u)), arg_0.xy | vec2<u32>(arg_0.x, 1u)), global0[_wgslsmith_index_u32(121535u & (_wgslsmith_mod_u32(arg_0.x, arg_0.x) & _wgslsmith_add_u32(43193u, 23886u)), 31u)], ~(~33683u)), global3.c, arg_0.x);
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(84082u, ~arg_0.x), arg_0.x) & ~1u, 1u);
}

fn func_2() -> vec2<bool> {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    global3 = Struct_4(vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-106f, global3.b.d.b))) > _wgslsmith_div_f32(_wgslsmith_div_f32(global3.b.d.b, -1113f), _wgslsmith_f_op_f32(-292f + global3.b.d.b))), Struct_2(0i >= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i), -vec4<i32>(u_input.a, u_input.a, 1i, u_input.a)), true, 1u, Struct_1(all(vec3<bool>(true, global3.a.x, false)) || (u_input.a <= u_input.a), 780f), firstTrailingBit(~(~global3.c))), ~(func_3(vec4<u32>(global3.b.e, global3.b.c, 20158u, global3.b.e)) | global3.c) | 4294967295u, 40195u);
    var var_0 = Struct_4(vec2<bool>(u_input.a != -_wgslsmith_add_i32(u_input.a, -1i), all(global3.a)), global3.b, global3.b.c, abs(_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(global3.d, 0u)), 0u & global3.c)));
    global3 = Struct_4(var_0.a, Struct_2(true, !(abs(u_input.a) <= 1i), _wgslsmith_mod_u32(var_0.c, ~_wgslsmith_add_u32(1u, global3.c)), var_0.b.d, _wgslsmith_sub_u32(_wgslsmith_mod_u32(24842u, 11809u >> (global3.d % 32u)), 1u)), 1u, _wgslsmith_add_u32(30298u, 0u));
    return global3.a;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    let var_0 = !func_2();
    var var_1 = min(~(-vec3<i32>(u_input.a, 0i, u_input.a >> (1u % 32u))), vec3<i32>(0i, -1i, firstLeadingBit(~u_input.a)));
    var var_2 = !(!var_0);
    let var_3 = -21824i;
    var_1 = ~(~(vec3<i32>(-1i) * -select(vec3<i32>(var_1.x, var_1.x, var_3), vec3<i32>(1270i, var_1.x, -2147483647i), var_0.x)));
    return Struct_4(!vec2<bool>(!(!var_0.x), true), Struct_2(true, true, 1u, arg_0, global3.b.e), countOneBits(1673u ^ _wgslsmith_mod_u32(~117741u, _wgslsmith_dot_vec2_u32(vec2<u32>(17419u, 65746u), vec2<u32>(0u, global3.b.c)))), _wgslsmith_add_u32(_wgslsmith_div_u32(~(~global3.b.c), 1u | abs(global3.d)), ~(~global3.c | 0u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = vec3<bool>(false, false, all(!(!vec4<bool>(global3.b.d.a, false, true, false))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1053f, -1052f)) + -1351f)));
    var var_2 = vec4<bool>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), vec2<u32>(arg_0.d, arg_0.d)), 0u) >= 4294967295u, true, _wgslsmith_sub_i32(i32(-1i) * -55992i, 2147483647i) != u_input.a, true);
    let var_3 = Struct_4(vec2<bool>(!func_1(Struct_1(false, 1285f)).b.d.a, global3.a.x), arg_0.b, abs(global3.c), 1u);
    var var_4 = arg_0.b.d;
    return !vec2<bool>(true, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(select(vec2<bool>(all(select(vec4<bool>(false, global3.b.a, global3.a.x, global3.b.d.a), vec4<bool>(global3.a.x, false, true, true), vec4<bool>(global3.b.a, global3.a.x, global3.b.d.a, true))), !any(vec4<bool>(global3.a.x, false, global3.a.x, true))), func_4(func_1(Struct_1(global3.a.x, -335f)), vec4<f32>(-944f, global3.b.d.b, 915f, global3.b.d.b), _wgslsmith_f_op_f32(-global3.b.d.b) >= _wgslsmith_f_op_f32(max(278f, global3.b.d.b))), func_4(Struct_4(global3.a, Struct_2(true, false, global3.d, Struct_1(true, -1101f), 6852u), _wgslsmith_mod_u32(global3.d, 17113u), func_1(global3.b.d).c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2658f, 1033f, -1751f, -1000f) - vec4<f32>(782f, -117f, 153f, 1942f)))), true)), Struct_2(false, false, global3.b.e, global3.b.d, global3.d), min(global3.d, _wgslsmith_div_u32(global3.d, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, global3.d), 81521u, abs(0u)))), _wgslsmith_mult_u32(firstTrailingBit(global3.c), _wgslsmith_mod_u32(1u, abs(global3.d))));
    var var_0 = vec2<u32>(~(global3.b.c >> (_wgslsmith_add_u32(28026u, func_3(vec4<u32>(global3.c, 0u, 1u, global3.d))) % 32u)), _wgslsmith_mod_u32(max(global3.d, global3.b.c), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.c), vec2<u32>(4294967295u, 0u)))));
    global0 = array<Struct_1, 31>();
    var var_1 = 4294967295u;
    var var_2 = global3.b.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_1(Struct_1(global3.a.x, -1000f)).b.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.d.b + -2000f) + _wgslsmith_f_op_f32(abs(global3.b.d.b))) * global3.b.d.b)), vec3<i32>(i32(-1i) * -(~u_input.a), u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a >> (global3.c % 32u)))), _wgslsmith_sub_vec2_u32(~(_wgslsmith_div_vec2_u32(vec2<u32>(41109u, 0u), vec2<u32>(var_0.x, var_0.x)) | ~vec2<u32>(4294967295u, var_0.x)), ~(~vec2<u32>(var_0.x, var_0.x))), u_input.a, _wgslsmith_div_f32(global3.b.d.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-269f, 980f))))))));
}

