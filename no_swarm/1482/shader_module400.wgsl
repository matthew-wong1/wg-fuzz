struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 17066u, 115949u), vec4<u32>(60189u, 17763u, 1u, 24396u)), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(-1000f, -1120f, 1000f, 562f));

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 0u, 65141u, 4294967295u);

var<private> global4: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(vec3<u32>(0u & reverseBits(arg_1.b.x), ~0u | arg_2, global3.x), arg_1.b), ~_wgslsmith_div_vec3_u32(global3.yzx, vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(80218u, global0.b.x, arg_2, u_input.c.x)), 4294967295u, _wgslsmith_mult_u32(global4.x, 1u))), _wgslsmith_f_op_vec4_f32(-global1.c));
    var var_1 = var_0.b.x;
    var var_2 = vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, u_input.e) >> (u_input.c.x % 32u), u_input.d.x), 0i, _wgslsmith_add_i32(-4435i, u_input.d.x), ~2147483647i);
    var_2 = reverseBits(_wgslsmith_mult_vec4_i32(max(vec4<i32>(~var_2.x, reverseBits(-1i), _wgslsmith_div_i32(var_2.x, var_2.x), var_2.x), select(~vec4<i32>(u_input.e.x, -4921i, u_input.e.x, 23514i), -vec4<i32>(var_2.x, u_input.e.x, var_2.x, u_input.b.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec4<i32>(var_2.x, var_2.x, -u_input.d.x, -4076i)));
    var var_3 = var_0.b.x;
    return _wgslsmith_f_op_vec4_f32(-var_0.c);
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, -348f <= global1.c.x), global1.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.a.a.xx, u_input.c), _wgslsmith_dot_vec2_u32(global3.yy, vec2<u32>(u_input.a.x, global1.a.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, -172f, 1172f, global0.c.x)))));
    let var_1 = true;
    global1 = Struct_2(Struct_1(global1.b, global1.a.b), global0.b, global1.c);
    var var_2 = abs(37406u);
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a + global0.c) * vec4<f32>(global0.c.x, global1.c.x, -700f, var_0.a.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_0.a.x, global0.c.x, -1167f) - _wgslsmith_f_op_vec4_f32(global1.c - vec4<f32>(166f, -246f, global0.c.x, global0.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) - _wgslsmith_f_op_vec4_f32(func_3(!vec3<bool>(true, var_1, false), Struct_1(vec3<u32>(1u, global3.x, global3.x), global1.a.b), 0u)))));
    return global0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_2(arg_1, ~vec3<u32>(~global4.x, reverseBits(global0.a.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a.a.x, global0.a.a.x, 64640u), global3.zxy)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x + -651f))))), 115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.a.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1002f * -1615f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.xw) + global0.c.xy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -618f) + 1f), -540f), !((_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) < (u_input.d.x & 2147483647i)) || false)));
    global2 = array<vec2<i32>, 7>();
    return func_2(~vec3<i32>(-u_input.d.x, reverseBits(u_input.e.x), 33496i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-17433i, _wgslsmith_div_i32(u_input.d.x, u_input.d.x), 3244i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 1411i), vec2<i32>(u_input.d.x, -2147483647i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(-u_input.d.zy, vec2<i32>(u_input.b.x, 1i)), -2147483647i, u_input.d.x & (-2147483647i >> (global0.a.b.x % 32u)), _wgslsmith_sub_i32(~(-10815i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 23972i), vec2<i32>(u_input.e.x, u_input.b.x))))), ~vec3<i32>(u_input.d.x, abs(~u_input.e.x), u_input.d.x));
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.e.x;
    global1 = Struct_2(func_4(Struct_3(vec4<f32>(-482f, _wgslsmith_f_op_f32(select(global1.c.x, -359f, false)), global0.c.x, global1.c.x)), func_2(-vec3<i32>(var_0, u_input.d.x, 0i) >> (~u_input.a % vec3<u32>(32u)), max(~var_0, 69346i), reverseBits(select(vec3<i32>(-14975i, u_input.b.x, var_0), u_input.d, vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1176f, -384f, -883f, _wgslsmith_f_op_f32(round(global1.c.x)))))), global0.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(max(-1079f, global1.c.x)), _wgslsmith_f_op_f32(global1.c.x - global0.c.x)) * global1.c)));
    let var_1 = ~func_4(Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(206f, -510f, global0.c.x, global1.c.x)))), global1.a, global1.c).a.yy;
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(global1.a.b.yxz, global1.a.b.www, vec3<bool>(false, false, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 0u, 24605u), u_input.a)), global1.a.a), ~vec4<u32>(firstTrailingBit(u_input.a.x), ~57037u, global3.x, u_input.c.x)), global0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(285f, _wgslsmith_f_op_f32(-1000f * 990f), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global1.c.x)))) + global0.c));
    global0 = Struct_2(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, global1.c.x) * global1.c) + global1.c)), func_4(Struct_3(_wgslsmith_f_op_vec4_f32(-global1.c)), global0.a, vec4<f32>(503f, _wgslsmith_f_op_f32(-var_2.c.x), -229f, _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, false, false), Struct_1(global0.a.b.yyy, vec4<u32>(var_1.x, global0.a.b.x, 4294967295u, var_2.a.a.x)), u_input.c.x)).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_2.c, var_2.c))))), ~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~global1.a.a, global0.b), func_2(u_input.d, _wgslsmith_add_i32(u_input.e.x, 1i), u_input.d).a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-746f)) * _wgslsmith_f_op_f32(global0.c.x * -256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), func_4(Struct_3(global0.c), Struct_1(global0.a.a, vec4<u32>(var_2.b.x, global3.x, var_2.b.x, u_input.a.x)), vec4<f32>(-256f, global0.c.x, -592f, -533f)), ~global3.x)).x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * 1690f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(397f)), 1f))))));
    return Struct_2(Struct_1(vec3<u32>(3016u, 100290u, u_input.a.x), _wgslsmith_mod_vec4_u32(max(select(var_2.a.b, global0.a.b, true), vec4<u32>(1u, global1.b.x, 530u, global4.x)), var_2.a.b | var_2.a.b)), firstTrailingBit(global1.a.b.yyw), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.c.x)))), -351f, _wgslsmith_div_f32(-1702f, var_2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(713f + -167f) - -2110f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_3(global0.c);
    global1 = func_1();
    var var_2 = var_0.c.x;
    let var_3 = func_2(max(_wgslsmith_mod_vec3_i32(u_input.d, firstLeadingBit(~u_input.d)), u_input.d), u_input.e.x, vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.d.x, u_input.d.x))), min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.e.x, u_input.b.x), u_input.b.zx), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, 29913i), u_input.e))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.e.x), u_input.b.xz), abs(u_input.b.x)), -31880i, 0i), u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, var_0.c, ~u_input.e.x & -u_input.e.x, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u >> (var_0.b.x % 32u), global0.a.b.x, ~25445u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global1.a.b.x, 4294967295u), vec3<u32>(global4.x, global1.a.b.x, 93332u))), ~36659u, 1u, ~abs(4294967295u)), u_input.a.x);
}

