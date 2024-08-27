struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 1u, 0u), false), vec4<u32>(29102u, 1u, 4294967295u, 18623u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    return ~_wgslsmith_clamp_vec2_u32(max(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), firstLeadingBit(arg_1.b.a.x)), vec2<u32>(min(0u, 0u), global1.a.a.x)), arg_1.b.a.xz, ~firstLeadingBit(vec2<u32>(global0.a.a.b.a.x, u_input.a)));
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = abs(_wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), global0.c.a.b.a.yz) | (vec2<u32>(59393u, global0.a.a.b.a.x) ^ global0.c.a.b.a.yz), vec2<u32>(max(~60765u, global0.a.a.b.a.x), abs(u_input.a))));
    var var_1 = global0.c.a;
    var_0 = select((vec2<u32>(var_0.x, 4294967295u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(10519u, 4294967295u), global1.a.a.yz, vec2<u32>(4294967295u, 4294967295u))) & vec2<u32>(_wgslsmith_mult_u32(4294967295u, var_0.x), 49085u), func_3(true, Struct_2(_wgslsmith_f_op_f32(-var_1.a), global0.c.a.b)), vec2<bool>(!select(global1.a.b, false, true), global1.a.b)) | _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.c.a.b.a.x, 0u), vec3<u32>(u_input.a, var_0.x, 4294967295u))), ~(~vec2<u32>(4294967295u, 15272u))), min(vec2<u32>(_wgslsmith_div_u32(var_1.b.a.x, var_0.x), 1u), countOneBits(vec2<u32>(u_input.a, 1u)) ^ ~global0.a.a.b.a.yz));
    var var_2 = -global0.d.x;
    global0 = Struct_5(global0.a, _wgslsmith_dot_vec2_i32(global0.d, vec2<i32>(1i, max(u_input.c, u_input.c))), Struct_4(global0.a.a, var_1.a, select(global1.a.b, true, global1.a.b)), global0.d);
    return Struct_5(global0.c, 1i, global0.a, global0.d);
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global0 = func_2(19891i);
    let var_0 = _wgslsmith_mod_vec2_u32(firstTrailingBit((vec2<u32>(12449u, global0.c.a.b.a.x) << (vec2<u32>(global1.a.a.x, global1.a.a.x) % vec2<u32>(32u))) | global0.a.a.b.a.zy) ^ abs(~global0.c.a.b.a.yx ^ vec2<u32>(33060u, 8838u)), firstLeadingBit(global0.a.a.b.a.zy));
    global0 = func_2(max((-1i ^ _wgslsmith_add_i32(14361i, global0.b)) >> (global0.c.a.b.a.x % 32u), ~abs(func_2(50190i).d.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-871f, _wgslsmith_f_op_f32(f32(-1f) * -936f)))) - global0.c.b), func_2(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-44229i, global0.d.x, -17639i, -15219i)), _wgslsmith_mod_vec4_i32(vec4<i32>(55033i, -9607i, u_input.b, u_input.b), vec4<i32>(global0.d.x, -19294i, 60010i, 1i))) & _wgslsmith_dot_vec4_i32(-vec4<i32>(10657i, u_input.c, u_input.b, global0.d.x), -vec4<i32>(13534i, global0.b, global0.b, 2147483647i))).c.a.b);
    global1 = Struct_3(func_2(global0.d.x).a.a.b, abs(global1.b));
    return Struct_3(global1.a, firstTrailingBit(max(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.a.x, 4294967295u, 0u, 27250u), global1.b, vec4<u32>(55276u, 92967u, u_input.a, 1u)), select(global1.b, vec4<u32>(1u, 16005u, var_0.x, u_input.a), false)), vec4<u32>(6487u, ~var_1.b.a.x, ~global1.b.x, 28505u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec2<bool>(global1.a.b, all(select(vec4<bool>(false, global1.a.b, global0.c.a.b.b, true), select(vec4<bool>(global1.a.b, global1.a.b, global0.a.a.b.b, global0.c.a.b.b), vec4<bool>(false, false, global0.a.c, false), true), !vec4<bool>(true, true, global0.c.a.b.b, global1.a.b)))));
    global0 = func_2((_wgslsmith_dot_vec3_i32(-vec3<i32>(-21832i, u_input.b, global0.d.x), _wgslsmith_mult_vec3_i32(vec3<i32>(37962i, 2147483647i, 2147483647i), vec3<i32>(u_input.b, -12697i, global0.d.x))) | 38606i) & firstLeadingBit(global0.d.x));
    var var_0 = !vec4<bool>(all(!(!vec4<bool>(global0.a.c, true, global1.a.b, global0.c.a.b.b))), any(vec2<bool>(global0.c.a.b.b, true)), global0.c.c, global1.a.b);
    var var_1 = global0.a.a.b;
    let var_2 = vec3<f32>(global0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.a.a * _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global0.c.b))))), global0.a.b);
    var var_3 = vec2<bool>(any(select(select(!vec4<bool>(true, global1.a.b, true, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, global0.c.a.b.b, var_0.x), vec4<bool>(false, global0.c.c, true, true), false)), !(!vec4<bool>(global0.c.a.b.b, false, false, true)), false)), true);
    var var_4 = _wgslsmith_div_vec2_f32(var_2.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * 928f)))));
    var_0 = vec4<bool>(9588u <= abs(~func_2(1i).a.a.b.a.x), var_0.x, all(!vec3<bool>(var_2.x == var_4.x, select(global1.a.b, false, false), global0.a.a.b.b)), true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.b.a.zz, _wgslsmith_f_op_f32(min(global0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.x, 743f)))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4525u, 102691u | global0.c.a.b.a.x, func_3(false, Struct_2(var_2.x, Struct_1(vec3<u32>(global1.a.a.x, 4294967295u, global0.a.a.b.a.x), var_1.b))).x, 4294967295u), vec4<u32>(var_1.a.x, var_1.a.x, 6427u, 81286u) & (vec4<u32>(6185u, var_1.a.x, 4294967295u, global0.c.a.b.a.x) & global1.b)), vec4<u32>(var_1.a.x >> (global0.c.a.b.a.x % 32u), abs(~global0.c.a.b.a.x), 24325u & _wgslsmith_mod_u32(global1.b.x, var_1.a.x), max(global0.c.a.b.a.x, countOneBits(71983u)))), ~_wgslsmith_add_vec3_i32(vec3<i32>(global0.d.x, 6450i, _wgslsmith_mult_i32(0i, global0.d.x)), select(vec3<i32>(global0.b, -1i, global0.d.x), abs(vec3<i32>(global0.b, u_input.c, 13270i)), var_0.yxy)));
}

