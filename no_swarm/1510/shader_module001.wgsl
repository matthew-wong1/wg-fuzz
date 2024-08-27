struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-1660f, 395f), -1000f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(arg_0, 1462f), _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_div_f32(1254f, -985f), _wgslsmith_f_op_f32(abs(global0.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-984f, -896f, arg_0, 274f) - vec4<f32>(arg_0, arg_0, 291f, 282f)))))));
    var var_1 = var_0.xy;
    var var_2 = arg_1.e;
    global3 = arg_1;
    let var_3 = ~abs(global3.e);
    return global3.d;
}

fn func_3(arg_0: f32) -> i32 {
    global2 = Struct_1(!global3.a, ~min(~_wgslsmith_div_i32(global3.c, 9550i), select(-22479i, u_input.b.x, all(global3.a))), global3.c, 1u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global3.e.wx | vec2<u32>(1u, u_input.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(global3.e.x, 0u), u_input.d.yy)), ~global3.e.x) % 32u), min(vec4<u32>(global2.e.x, global2.e.x, global2.e.x, u_input.d.x), _wgslsmith_mod_vec4_u32(global3.e, global3.e) | global3.e));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -574f);
    let var_0 = !global3.a.x;
    let var_1 = global2.b > (i32(-1i) * -3743i);
    global1 = 1695f;
    return -1i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> f32 {
    var var_0 = 289f;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * global0.x)));
    var var_1 = select(vec3<bool>(false, !select(!arg_0.a.x, true, arg_0.a.x), all(select(!vec4<bool>(global2.a.x, arg_1.a.x, true, true), select(vec4<bool>(arg_2, arg_1.a.x, false, global3.a.x), vec4<bool>(arg_2, false, arg_0.a.x, true), vec4<bool>(false, false, arg_1.a.x, arg_1.a.x)), vec4<bool>(true, true, true, true)))), select(!arg_1.a, arg_1.a, select(!global3.a, arg_0.a, !global2.a)), !select(!global2.a, arg_0.a, true));
    var var_2 = ~(vec2<u32>(countOneBits(global2.e.x & 25608u), 23575u >> (_wgslsmith_mult_u32(arg_1.d, 110538u) % 32u)) << (firstLeadingBit(_wgslsmith_sub_vec2_u32(arg_1.e.zw, firstTrailingBit(vec2<u32>(4294967295u, 3020u)))) % vec2<u32>(32u)));
    let var_3 = 32537u;
    return global0.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global2 = arg_1;
    global1 = _wgslsmith_f_op_f32(func_4(Struct_1(arg_1.a, firstTrailingBit(func_3(157f)), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(arg_1.b, arg_1.c, -2574i, 0i)) ^ global3.c, arg_0, global3.e), Struct_1(vec3<bool>(arg_1.a.x, all(select(global3.a.zy, vec2<bool>(false, global3.a.x), global2.a.x)), global2.a.x), -2147483647i, -2147483647i, _wgslsmith_clamp_u32(0u, 80768u, ~27489u), ~firstLeadingBit(global3.e)), !any(select(vec4<bool>(arg_1.a.x, true, true, global2.a.x), select(vec4<bool>(global2.a.x, global2.a.x, false, false), vec4<bool>(true, arg_1.a.x, true, global2.a.x), true), select(vec4<bool>(false, arg_1.a.x, arg_1.a.x, global3.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x), arg_1.a.x)))));
    global2 = arg_1;
    let var_0 = select(select(select(arg_1.a.xx, select(arg_1.a.yy, select(vec2<bool>(global3.a.x, global2.a.x), global3.a.zy, vec2<bool>(true, false)), true), any(vec2<bool>(true, arg_1.a.x))), !vec2<bool>(arg_1.a.x & global2.a.x, any(global2.a.zz)), global3.a.x), select(select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x >= -414f), vec2<bool>(global2.a.x, any(!global3.a.yx)), select(select(select(arg_1.a.yx, arg_1.a.zz, false), !vec2<bool>(true, global3.a.x), global2.a.x), vec2<bool>(!arg_1.a.x, all(vec3<bool>(global2.a.x, true, global2.a.x))), !select(arg_1.a.zy, global3.a.xx, true))), arg_1.a.x);
    let var_1 = arg_1.e.yyz;
    return Struct_1(vec3<bool>(all(vec3<bool>(all(global3.a), !global2.a.x, global2.a.x)), global3.a.x, true), global2.c, -2147483647i, ~(~global2.e.x), ~(arg_2 & global2.e));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = arg_0;
    return func_2(~u_input.d.x, arg_0, _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(arg_0.e, firstTrailingBit(_wgslsmith_sub_vec4_u32(arg_0.e, vec4<u32>(22381u, global3.e.x, 0u, u_input.d.x)))), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global2.e.x, 4294967295u, global2.e.x, 69351u)), global3.e)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = func_2(1u, arg_0, select(vec4<u32>(8135u, 4294967295u, global2.d | 22638u, ~global3.d) | ~vec4<u32>(1u, arg_0.d, arg_0.d, 1u), firstLeadingBit(arg_0.e), vec4<bool>(true, !arg_1 | (arg_2.a.x && false), arg_0.a.x, !global3.a.x)));
    let var_1 = 1u;
    global2 = arg_2;
    global2 = var_0;
    global1 = -340f;
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, arg_2.e.x), firstLeadingBit(~vec2<u32>(arg_0.e.x, 4294967295u)))), vec2<u32>(max(~global3.e.x, ~var_0.d) ^ u_input.d.x, global3.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e.zx;
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~global2.e, vec4<u32>(u_input.a, 13934u, 17572u, 8969u) << (global2.e % vec4<u32>(32u))), 5360u), global2.e.xy) >> (vec2<u32>(func_1(243f, Struct_1(global2.a, -35469i, u_input.b.x, max(var_0.x, u_input.d.x), ~vec4<u32>(118097u, global3.d, u_input.a, var_0.x))), func_6(func_5(func_2(global3.e.x, Struct_1(global2.a, -1i, global2.b, 1u, vec4<u32>(12230u, 1u, u_input.d.x, 61691u)), vec4<u32>(var_0.x, global2.d, u_input.d.x, 10791u))), any(global3.a), func_5(func_5(Struct_1(global3.a, global2.c, global3.b, global3.e.x, global3.e))), all(!vec4<bool>(global2.a.x, true, global3.a.x, true)))) % vec2<u32>(32u));
    let var_1 = Struct_1(!func_5(Struct_1(global3.a, 1i, firstLeadingBit(u_input.c.x), 21303u, vec4<u32>(1u, u_input.d.x, 1u, 2170u) | vec4<u32>(global3.e.x, 20472u, 42326u, global3.d))).a, ~2147483647i, global3.b, ~u_input.a, global3.e);
    let var_2 = func_2(countOneBits(var_0.x | global3.e.x), func_5(var_1), firstTrailingBit(vec4<u32>(global2.e.x, _wgslsmith_mult_u32(4096u, global3.d | var_0.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global2.d, var_0.x), global3.e.wwx << (vec3<u32>(global2.e.x, u_input.a, var_0.x) % vec3<u32>(32u))), ~_wgslsmith_clamp_u32(4294967295u, 12297u, var_1.d))));
    let var_3 = !var_1.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_0.x >> ((var_2.d ^ 89722u) % 32u), ~_wgslsmith_div_u32(35970u, u_input.d.x)) << (select(vec2<u32>(4294967295u, firstTrailingBit(u_input.d.x)), vec2<u32>(firstTrailingBit(4294967295u), ~global3.e.x), vec2<bool>(select(var_1.a.x, true, true), any(vec3<bool>(var_2.a.x, true, true)))) % vec2<u32>(32u)));
}

