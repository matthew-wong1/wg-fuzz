struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(Struct_3(Struct_2(vec2<i32>(-21801i, 1i), vec2<u32>(35662u, 5805u), Struct_1(5273i, vec4<bool>(true, false, true, false), true, false, vec3<i32>(14931i, 10974i, -1i)), vec2<bool>(true, true)), true), Struct_3(Struct_2(vec2<i32>(-5346i, -41684i), vec2<u32>(51385u, 1u), Struct_1(-24804i, vec4<bool>(false, false, false, false), true, true, vec3<i32>(1i, 1i, -84672i)), vec2<bool>(false, false)), false));

var<private> global4: u32 = 1u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = 81654u;
    global2 = Struct_4(global3.a, global2.a);
    global0 = 22931u;
    let var_1 = vec3<u32>(var_0, _wgslsmith_sub_u32(41257u, 1u >> (0u % 32u)), _wgslsmith_mult_u32(abs(1u), (~global3.b.a.b.x << (arg_0.b.x % 32u)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0, 0u, 54959u, var_0), min(vec4<u32>(56529u, 4294967295u, 1267u, var_0), vec4<u32>(3975u, 1u, 1u, var_0))) % 32u)));
    var var_2 = u_input.a;
    return global2.b;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    let var_0 = Struct_3(Struct_2(abs(vec2<i32>(global2.b.a.a.x, 1i)), abs(~vec2<u32>(48767u, 4294967295u)), arg_0.b.a.c, global3.b.a.d), false);
    let var_1 = ~global2.b.a.b.x;
    var var_2 = arg_0.a.a.c;
    let var_3 = arg_0.a.a.a.x;
    global0 = ~(~4294967295u);
    return _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(50536u, u_input.b.x));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f * arg_1))));
    global2 = Struct_4(func_2(Struct_2(-_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-37809i, 2147483647i)), ~(vec2<u32>(global3.a.a.b.x, global3.a.a.b.x) >> (global2.a.a.b % vec2<u32>(32u))), global2.b.a.c, !select(global2.a.a.d, global2.a.a.c.b.xz, global3.a.a.c.c))), func_2(global3.a.a));
    var var_1 = vec2<u32>(~_wgslsmith_mult_u32(~u_input.b.x, reverseBits(global3.b.a.b.x)) & (u_input.b.x << (~4294967295u % 32u)), ~19644u);
    global3 = Struct_4(Struct_3(global2.a.a, true), Struct_3(global3.b.a, func_2(Struct_2(_wgslsmith_mod_vec2_i32(global2.a.a.c.e.xz, vec2<i32>(31517i, 14330i)), vec2<u32>(global3.a.a.b.x, u_input.b.x), Struct_1(global3.a.a.a.x, vec4<bool>(global2.a.a.d.x, global2.b.b, false, global3.a.a.c.b.x), true, global3.a.a.c.c, vec3<i32>(arg_3.x, 89469i, arg_3.x)), select(global3.b.a.d, global2.b.a.c.b.xy, global2.b.a.c.b.zw))).b));
    var_1 = vec2<u32>(0u, 36447u) | reverseBits(vec2<u32>(global2.b.a.b.x, _wgslsmith_sub_u32(0u, func_3(Struct_4(Struct_3(Struct_2(global2.a.a.a, vec2<u32>(global2.b.a.b.x, global2.a.a.b.x), global2.b.a.c, global2.b.a.c.b.xw), global2.a.a.c.c), Struct_3(global3.a.a, true)), Struct_4(Struct_3(Struct_2(global2.a.a.c.e.zz, u_input.b.xx, global3.a.a.c, vec2<bool>(global2.b.b, true)), global3.a.b), global3.a)))));
    return arg_3.x;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_2 {
    global2 = Struct_4(func_2(func_2(Struct_2(vec2<i32>(-68607i, arg_0), ~vec2<u32>(1u, 26669u), global2.b.a.c, global2.a.a.d)).a), global2.a);
    let var_0 = global3.a.a.b.x;
    let var_1 = 3951i;
    var var_2 = !(!select(vec2<bool>(true, true), global3.b.a.d, true));
    let var_3 = global3.b;
    return global3.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = -681f;
    var var_2 = func_4(max(_wgslsmith_sub_i32(max(-27770i, u_input.a.x & 1i), u_input.a.x), func_1(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global2.a.a.b.x, global3.b.a.b.x, global2.a.a.b.x)), var_1, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(637f, -818f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1299f, -615f, 1352f, -777f)))), -max(u_input.a.zx, vec2<i32>(1i, global2.a.a.c.a)))), -abs(7201i));
    global2 = Struct_4(func_2(func_4(_wgslsmith_clamp_i32(func_4(-2147483647i, global2.a.a.c.e.x).c.a, _wgslsmith_clamp_i32(21114i, u_input.a.x, 6305i), ~1i), firstLeadingBit(1i))), Struct_3(func_2(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -19040i, global3.a.a.a.x), u_input.a.xzz), ~global2.a.a.c.e.x)).a, select(var_2.c.b.x, false, !func_2(Struct_2(u_input.a.zx, global2.a.a.b, Struct_1(global2.a.a.c.e.x, vec4<bool>(true, false, true, global3.a.a.d.x), false, false, global2.a.a.c.e), var_2.d)).b)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1, var_1)))))) + var_1);
    let var_4 = 2147483647i;
    global0 = _wgslsmith_div_u32(98671u, 25656u | ((var_2.b.x & ~global3.a.a.b.x) ^ 18766u));
    global1 = array<vec2<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(vec3<u32>(~7267u, _wgslsmith_sub_u32(var_2.b.x, u_input.b.x), ~u_input.b.x), vec3<u32>(1u, ~global3.a.a.b.x, 1u))), ~(reverseBits(~1u) ^ firstTrailingBit(1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3))), countOneBits(var_2.c.e));
}

