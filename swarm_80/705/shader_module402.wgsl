struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-336f, 1000f, 296f), true, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(256f, 474f, -535f), true, vec4<bool>(false, true, false, false)), Struct_1(vec3<f32>(792f, 1192f, -847f), true, vec4<bool>(false, false, false, true)), Struct_1(vec3<f32>(-190f, -1375f, -371f), false, vec4<bool>(true, false, false, false)), Struct_1(vec3<f32>(-888f, 476f, -723f), false, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(115f, -538f, -903f), true, vec4<bool>(true, true, true, true)), Struct_1(vec3<f32>(-493f, 1000f, 1328f), false, vec4<bool>(true, true, true, false)), Struct_1(vec3<f32>(-2197f, -1762f, 2262f), true, vec4<bool>(false, false, true, true)));

var<private> global3: Struct_3 = Struct_3(vec4<i32>(1i, i32(-2147483648), 1i, -31142i));

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_div_vec4_i32(reverseBits(global0.b), ~abs(vec4<i32>(global0.b.x, -31228i, -16355i, global0.b.x)))));
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + global1.a)) * vec4<f32>(-813f, -166f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(global1.a.x * -411f))), -1087f)), global3.a | -(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, global0.b.x, var_0.a.x), vec4<i32>(2147483647i, 16547i, 0i, 43800i)) | max(global3.a, global0.b)), Struct_2(arg_1.a, true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.c.a)), global1.c.c.c.x, select(select(vec4<bool>(global1.c.b, true, global4.x, global4.x), arg_0, true), arg_0, global1.c.c.c)), 89637u), global1.a.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.c.a.x))), _wgslsmith_div_f32(global0.d.x, arg_1.c.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(263f, global0.d.x)) + _wgslsmith_f_op_f32(sign(global0.e))) * -151f)));
    let var_1 = abs(vec2<i32>(_wgslsmith_dot_vec3_i32(global1.b.zxx, var_0.a.xzy), ~_wgslsmith_dot_vec2_i32(~global0.b.wx, global0.b.wy)));
    var var_2 = Struct_1(arg_1.c.a, false, !(!vec4<bool>(false, !global1.c.c.b, all(global0.c.c.c.wxw), true)));
    let var_3 = global0.c;
    return global1.c.c.a.x;
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(global0.c.c.c, global0.c)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1329f)), -1000f))) - global1.d));
    let var_1 = ~(~global1.c.a << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(38616u, u_input.c), 1u, _wgslsmith_sub_u32(4294967295u, u_input.b)), abs(global1.c.a) | max(global1.c.a, global0.c.a)) % vec4<u32>(32u)));
    let var_2 = select(_wgslsmith_mod_i32(arg_0, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, arg_0), global3.a.x)), _wgslsmith_mult_i32(11989i, _wgslsmith_mult_i32(global3.a.x | _wgslsmith_dot_vec4_i32(global1.b, global1.b), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global1.b.wzy, global3.a.zzy), global3.a.x))), !(!(!global0.c.b)));
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    return Struct_4(vec4<f32>(305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1212f, var_0.x))), -126f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(global1.c.c.a.x)), true))), firstTrailingBit(select(vec4<i32>(51053i, -global0.b.x, var_2, _wgslsmith_div_i32(2147483647i, arg_0)), ~global0.b >> (abs(var_1) % vec4<u32>(32u)), vec4<bool>(any(global4.xw), global4.x, false, true))), global1.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(global0.c.b, global4.x, global0.c.b, global0.c.b), global0.c)), global1.e), _wgslsmith_f_op_vec2_f32(select(global0.c.c.a.xx, _wgslsmith_f_op_vec2_f32(ceil(var_0)), global1.c.c.c.wx)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(~2147483647i);
    global0 = var_0;
    var var_1 = firstLeadingBit(~select(5216i, 5659i, true | global1.c.c.b));
    global0 = var_0;
    var var_2 = var_0.b.x;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1f), -531f, global1.c.c.a.x), global1.c.b, !vec4<bool>(true, global1.c.c.c.x, func_2(var_0.b.x & -5568i).c.c.b, true));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> f32 {
    global3 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -50320i, u_input.a), _wgslsmith_mod_i32(~61730i, _wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(global1.b.x, 9473i, arg_2, global1.b.x))), 1i, -30221i ^ min(arg_2, arg_2)), func_2(~reverseBits(u_input.a)).b));
    global4 = vec4<bool>(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) + _wgslsmith_f_op_f32(abs(1045f)))) > -1159f, true, !global1.c.b);
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(801f, global1.d.x)));
    global3 = Struct_3(~global1.b);
    global2 = array<Struct_1, 8>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.e)) + _wgslsmith_f_op_f32(func_4(firstTrailingBit(global1.c.d), func_1(), global1.b.x, global1.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(floor(global0.e)), 886f);
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    global1 = func_2((_wgslsmith_sub_i32(~21256i, global1.b.x) >> (1u % 32u)) ^ _wgslsmith_add_i32(global3.a.x, u_input.a));
    let var_1 = all(func_2(0i).c.c.c.wx);
    let var_2 = reverseBits(vec4<u32>(_wgslsmith_clamp_u32(abs(_wgslsmith_mod_u32(8764u, 1u)), 4294967295u, 83667u), global0.c.d ^ 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.c.d), max(~global1.c.a.xw, vec2<u32>(0u, global1.c.d))), firstLeadingBit(~global1.c.d)));
    let var_3 = _wgslsmith_div_f32(global1.c.c.a.x, 130f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0.c.a), _wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.c.a.x, 1591f, var_1))) - 962f)));
}

