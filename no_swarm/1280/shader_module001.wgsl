struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(274f);

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_div_f32(1000f, global1.b.b.x), global0.a < 299f)))))));
    let var_0 = global1.a.b.zx;
    let var_1 = !all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), vec2<bool>(select(false, false, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_2 = global1.a;
    var var_3 = Struct_2(Struct_1(var_2.a, var_2.b), Struct_1(-20681i, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1134f), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, global0.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -549f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f) + -417f))), vec2<i32>(_wgslsmith_clamp_i32(countOneBits(select(global2.x, global2.x, false)), -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a, global2.x, global2.x, global1.a.a), _wgslsmith_add_vec4_i32(vec4<i32>(global2.x, 25585i, -14004i, global2.x), vec4<i32>(0i, -2147483647i, var_2.a, global1.c.x)))), _wgslsmith_clamp_i32(i32(-1i) * -4191i, _wgslsmith_sub_i32(0i >> (u_input.b % 32u), ~global2.x), 2147483647i)));
    return abs(~1u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> Struct_3 {
    global0 = arg_0;
    global0 = arg_1;
    var var_0 = global1.b;
    let var_1 = select(_wgslsmith_mod_u32(~func_3(), u_input.b), u_input.b, false);
    var_0 = global1.b;
    return Struct_3(-63417i, vec4<bool>(true, true, true, true), Struct_2(Struct_1(_wgslsmith_div_i32(abs(arg_2), -global2.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, -310f, global1.b.b.x, global1.a.b.x) - vec4<f32>(global0.a, -864f, -529f, 1138f))))), global1.b, global2.zx));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(Struct_4(-1709f), Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_f32(-global1.b.b.x))))), 43301i);
    var var_1 = u_input.a.zyw;
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~(select(1u, var_1.x, true) ^ firstTrailingBit(u_input.b)), ~8096u, abs(u_input.a.x)), ~_wgslsmith_dot_vec3_u32(select(u_input.a.yzx, vec3<u32>(u_input.a.x, 0u, 0u), false) >> (u_input.a.zwx % vec3<u32>(32u)), u_input.a.wyx));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(global1.b.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c.b.b.x)) - _wgslsmith_f_op_f32(sign(global1.a.b.x)))));
    global1 = func_2(Struct_4(var_3.a), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - -1036f) * global0.a))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-59194i, 21429i), _wgslsmith_div_vec2_i32(var_0.c.c, vec2<i32>(2147483647i, arg_0.x))) ^ -1043i).c;
    return func_2(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -590f)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -399f)), var_0.c.a.a).c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(u_input.a.x, 4294967295u);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2332f - -963f) * -265f));
    var var_2 = _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -589f)));
    var_2 = _wgslsmith_f_op_f32(exp2(global1.b.b.x));
    global1 = Struct_2(func_1(countOneBits(vec4<i32>(5339i, global2.x, global1.b.a, global1.a.a | global1.c.x))), global1.b, _wgslsmith_div_vec2_i32(-(global2.xx ^ vec2<i32>(global2.x, -25534i)), vec2<i32>(global2.x, _wgslsmith_sub_i32(0i, -2147483647i))));
    let var_3 = false;
    let var_4 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -817f));
    let var_5 = func_2(var_1, var_1, ~firstTrailingBit(1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, 8653u, u_input.a.x)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 16314u, u_input.a.x), u_input.a.wzx))) | (vec3<u32>(min(1558u, 0u), 4294967295u, 0u) << (~u_input.a.zzx % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_5.c.a.a, global2.x, -2775i, -1i), vec4<i32>(13029i, 0i, var_5.c.a.a, -15770i)), vec4<i32>(1i, -1i, 3887i, global1.b.a)), _wgslsmith_mult_i32(28440i, firstTrailingBit(global1.c.x))), ~var_5.a, select(-select(global2.x, global1.a.a, false), var_5.c.c.x | global2.x, var_3)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_5.c.b.b, global1.a.b))), var_5.c.a.b), ~(-global1.b.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, var_1.a, _wgslsmith_div_f32(var_1.a, var_1.a), _wgslsmith_div_f32(227f, 463f))) * vec4<f32>(_wgslsmith_f_op_f32(max(832f, _wgslsmith_f_op_f32(max(var_1.a, var_1.a)))), var_4.a, _wgslsmith_f_op_f32(-1460f * var_1.a), 899f)));
}

