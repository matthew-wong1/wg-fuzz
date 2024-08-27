struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(15477i, -13226i);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_4, 21>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    return global3.b;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(~abs(~reverseBits(u_input.e)), vec3<i32>(max(-3331i, -2147483647i), max(-u_input.e.x, firstTrailingBit(firstTrailingBit(1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-18552i, 11325i), ~arg_0.b), vec2<i32>(~(-40173i), -20321i))));
    var var_1 = global3.d;
    let var_2 = vec4<i32>(arg_0.b, -12882i, global0.x, global3.c.b);
    var var_3 = Struct_2(abs(abs(vec2<u32>(var_1.c, firstTrailingBit(4294967295u)))), Struct_1(~select(~global1.x, max(global3.c.c, 0u), true), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, var_1.b, arg_0.b)), vec3<i32>(global0.x, -37687i, var_1.b)) ^ 38327i, _wgslsmith_div_u32(u_input.d, u_input.d)), func_2(), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.a, global3.d.c | 30347u), global1.yy), _wgslsmith_sub_i32(2147483647i, min(-global3.d.b, _wgslsmith_add_i32(73386i, var_2.x))), ~_wgslsmith_div_u32(global1.x, u_input.d)));
    let var_4 = _wgslsmith_add_i32(49442i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-9219i, var_1.b, u_input.a, global3.d.b), vec4<i32>(var_0, 2147483647i, 12929i, global0.x)), vec4<i32>(var_2.x, -16147i, -2147483647i, 30487i)), ~var_2), _wgslsmith_div_i32(-global0.x | global3.b.b, -1i)));
    return _wgslsmith_div_u32(var_3.d.c, 16156u);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_f32(round(-905f));
    let var_2 = true;
    let var_3 = func_2();
    var var_4 = all(!var_0.zzw);
    return Struct_1(var_3.a, -18201i, global1.x << (func_3(var_3) % 32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<u32> {
    global0 = u_input.e.yz;
    var var_0 = 411f;
    global0 = abs(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -arg_1.b), ~func_1().b), firstLeadingBit(_wgslsmith_mod_i32(abs(u_input.c), -2147483647i))));
    let var_1 = u_input.d;
    let var_2 = _wgslsmith_add_i32(-arg_1.b, i32(-1i) * -10862i);
    return ~arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_vec3_u32(abs(select(func_4(_wgslsmith_add_vec2_u32(global3.a, global3.a), func_1(), ~vec3<u32>(4294967295u, u_input.d, 9549u)), ~vec3<u32>(u_input.d, u_input.b, 0u), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), false))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(min(select(vec3<u32>(global1.x, global3.d.a, 1u), vec3<u32>(global3.a.x, 1u, 16720u), vec3<bool>(false, true, false)), firstLeadingBit(vec3<u32>(global1.x, global3.c.c, global3.b.a))), vec3<u32>(select(u_input.b, global3.d.a, true), global3.d.c, ~global1.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(global3.c.a, global3.a.x, global3.d.a), vec3<u32>(global3.d.a, global3.a.x, 6790u))), ~vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.b, 1u), ~4294967295u)), vec3<u32>(_wgslsmith_mult_u32(global3.c.a, global1.x), _wgslsmith_div_u32((global3.d.c & 17422u) << (max(global1.x, 0u) % 32u), ~40890u), _wgslsmith_mult_u32(~(global1.x >> (39648u % 32u)), 46448u)));
    var var_0 = func_1().b;
    let var_1 = Struct_3(global3.d, _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -27397i, _wgslsmith_mod_i32(global0.x, 1i), 0i, reverseBits(-2147483647i)), vec4<i32>(~(-2147483647i), u_input.a ^ -1i, select(global0.x, ~global0.x, true), u_input.c)), Struct_2(~firstLeadingBit(~vec2<u32>(global1.x, u_input.d)), func_1(), func_2(), global3.c), -382f);
    let var_2 = _wgslsmith_div_u32(28944u, var_1.c.d.a);
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-_wgslsmith_dot_vec3_i32(var_1.b.xyw, _wgslsmith_sub_vec3_i32(var_1.b.ywy, vec3<i32>(0i, global3.b.b, var_1.a.b)))), global0.x << (max(~var_2, ~1u) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.d, -1129f)), _wgslsmith_f_op_f32(abs(-145f))))), -246f), ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 1u, 1u), vec4<u32>(9637u, 21330u, u_input.d, 20714u)), ~global3.c.a, global1.x));
}

