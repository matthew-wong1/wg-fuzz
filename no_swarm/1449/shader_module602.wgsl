struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    global0 = ~48453u;
    var var_0 = Struct_3(Struct_2(true, Struct_1(arg_0.b.a, arg_0.b.b, arg_0.b.c), arg_0.b.b));
    var_0 = Struct_3(var_0.a);
    var var_1 = Struct_1(27160i, vec3<bool>(false, true, var_0.a.a), _wgslsmith_f_op_f32(-arg_0.b.c));
    let var_2 = !(!vec4<bool>(true, arg_0.c.x, all(!arg_0.c), !var_1.b.x & !arg_0.b.b.x));
    return arg_1;
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_clamp_u32(1u, 4294967295u, _wgslsmith_add_u32(54u >> (global2.x % 32u), ~countOneBits(_wgslsmith_clamp_u32(global2.x, 23169u, 1u))));
    global0 = ~_wgslsmith_dot_vec3_u32(~(vec3<u32>(13693u, 4294967295u, global2.x) | vec3<u32>(0u, global2.x, 4294967295u)), vec3<u32>(global2.x, 4294967295u, ~4294967295u));
    global0 = 0u;
    let var_0 = -510f;
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(func_3(Struct_2(false, Struct_1(u_input.b.x, vec3<bool>(false, true, true), var_0), vec3<bool>(true, true, true)), _wgslsmith_div_u32(0u, global2.x)), 3863u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 1u) >> (vec4<u32>(global2.x, global2.x, global2.x, global2.x) % vec4<u32>(32u)), vec4<u32>(global2.x, 1u, global2.x, global2.x) | vec4<u32>(global2.x, global2.x, 4294967295u, global2.x)), 70314u), vec4<u32>(global2.x, ~1u, ~(~global2.x), select(global2.x, 1u, all(vec4<bool>(false, false, true, true))))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global2.x, ~34093u), 4294967295u, select(~global2.x, abs(global2.x), all(vec3<bool>(false, true, false))), 36421u), vec4<u32>(0u, 1u, 10295u, global2.x)));
    return Struct_2(all(vec4<bool>(true, true, true, false)), Struct_1(u_input.a.x, !vec3<bool>(1i > u_input.a.x, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 970f)))), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), select(select(true, false, false), true, true)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    global2 = vec4<u32>(~arg_0, ~(4294967295u | countOneBits(global2.x)), firstLeadingBit(min(_wgslsmith_mod_u32(13235u, global2.x), ~global2.x)), global2.x >> (global2.x % 32u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 4294967295u, arg_0, 23929u) << (countOneBits(vec4<u32>(38865u, global2.x, arg_0, 4294967295u)) % vec4<u32>(32u)), ~(~vec4<u32>(1u, arg_0, 4294967295u, global2.x))), select(vec4<u32>(global2.x, arg_0, global2.x, 88437u), vec4<u32>(0u, 0u, 32347u, 0u) | vec4<u32>(global2.x, 17119u, 0u, arg_0), vec4<bool>(false, arg_1.a.c.x, false, false)) | vec4<u32>(global2.x, select(30978u, global2.x, arg_1.a.a), ~arg_0, abs(global2.x)));
    global0 = select(global2.x, firstLeadingBit(global2.x << ((select(809u, arg_0, arg_1.a.b.b.x) >> (firstTrailingBit(1u) % 32u)) % 32u)), func_2().c.x);
    return Struct_3(arg_1.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(4294967295u, Struct_3(func_2()), _wgslsmith_mult_i32(u_input.a.x, max(-3135i, abs(80508i))));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.c, -948f, -1379f, _wgslsmith_div_f32(var_1.b.c, -265f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, 1124f, 741f, -115f) - vec4<f32>(var_0.a.b.c, 1668f, -1000f, 227f)) + vec4<f32>(1389f, -569f, 1295f, var_1.b.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.c, var_0.a.b.c, -1421f, -1208f)))))) + vec4<f32>(-2414f, _wgslsmith_f_op_f32(step(var_0.a.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.c - _wgslsmith_f_op_f32(var_1.b.c + -1176f)) * _wgslsmith_f_op_f32(trunc(func_4(global2.x, Struct_3(var_0.a), 47706i).a.b.c))), -870f));
    let var_3 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(1u, 1u)) >> (global2.yy % vec2<u32>(32u)), global2.xw);
    var var_4 = Struct_3(func_4(1u, func_4(max(var_3.x, firstLeadingBit(global2.x)), func_4(~var_3.x, func_4(global2.x, Struct_3(var_0.a), -1i), -5122i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.b.a, var_0.a.b.a), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), 5320i ^ (var_1.b.a ^ 25023i)).a);
    return var_4.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(4294967295u);
    global0 = global2.x;
    let var_1 = func_1();
    global1 = firstLeadingBit(0u);
    var var_2 = func_4(reverseBits(global2.x), func_4(min(func_3(Struct_2(var_1.b.x, var_1, var_1.b), 52640u), abs(countOneBits(18734u))), func_4(4294967295u, Struct_3(Struct_2(var_1.b.x, Struct_1(u_input.b.x, var_1.b, var_1.c), var_1.b)), u_input.a.x), ~u_input.b.x), abs(reverseBits(abs(u_input.a.x))) >> (0u % 32u));
    let var_3 = all(vec2<bool>(true, any(vec4<bool>(true, func_2().a, true, any(vec4<bool>(false, var_1.b.x, true, var_2.a.b.b.x))))));
    var var_4 = -10470i;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, -941f, 154f) + vec3<f32>(var_2.a.b.c, -1153f, var_2.a.b.c)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a.b.c, var_1.c, var_1.c)))))), _wgslsmith_div_u32(~func_3(var_2.a, ~4294967295u), global2.x));
}

