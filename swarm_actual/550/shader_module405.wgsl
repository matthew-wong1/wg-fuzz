struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_3;

var<private> global2: vec3<i32> = vec3<i32>(-21021i, 33097i, 40587i);

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    return global1.b;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    return func_1(vec4<i32>(-30197i, -global2.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(max(-1i, -37997i), -35048i), -_wgslsmith_sub_i32(0i, u_input.a)), firstLeadingBit(abs(_wgslsmith_add_i32(global2.x, -2147483647i)))), vec3<f32>(-1545f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.b.c.x, -1898f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.a;
    global2 = firstLeadingBit(vec3<i32>(-1i) * -global1.d);
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(func_1(vec4<i32>(1i, u_input.c, u_input.b.x, global2.x) & vec4<i32>(global2.x, 0i, -1i, -2147483647i), global3.a.c.yxy).c.x, -631f, -781f), arg_1)), arg_2, ~vec2<u32>(1u, global1.b.b.x), _wgslsmith_mod_vec3_i32(global1.d, global1.d), !global3.b.a);
    var var_1 = ~(vec4<u32>(~arg_2.b.x, ~72989u | global1.c.x, global1.b.b.x, ~max(global1.b.b.x, 57852u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(~6063u, global1.b.b.x, _wgslsmith_mod_u32(arg_2.b.x, global3.c), global3.b.b.x), min(vec4<u32>(45993u, 0u, global3.a.b.x, arg_2.b.x) >> (vec4<u32>(arg_2.b.x, 4294967295u, global1.b.b.x, arg_2.b.x) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_2.b.x, 38690u, global1.b.b.x)), vec4<u32>(1455u, select(global3.c, global1.b.b.x, false), global3.c, 89415u)));
    var var_2 = global1.b.a.wwz;
    return var_0.x;
}

fn func_2() -> u32 {
    var var_0 = !global1.b.a;
    global3 = Struct_2(Struct_1(func_1(min(vec4<i32>(-51905i, global2.x, global2.x, global1.d.x), vec4<i32>(1i, global1.d.x, -14513i, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.a.c.xyz)) - global3.a.c.zwx)).a, _wgslsmith_div_vec2_u32(global3.a.b, global3.b.b), global3.b.c), Struct_1(select(select(global1.b.a, vec4<bool>(false, false, true, var_0.x), true), !select(vec4<bool>(true, false, global1.e.x, true), vec4<bool>(false, false, global3.a.a.x, true), var_0.x), vec4<bool>(true, true, all(vec4<bool>(true, false, true, var_0.x)), global3.a.a.x)), ~(_wgslsmith_sub_vec2_u32(global3.a.b, vec2<u32>(16678u, global1.b.b.x)) | vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(round(636f)), _wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -590f), -755f)))), 28486u, (1i >= abs(global1.d.x)) || true);
    var_0 = vec4<bool>(global3.d, func_4(_wgslsmith_div_f32(-748f, _wgslsmith_f_op_f32(min(global3.b.c.x, _wgslsmith_f_op_f32(global1.a.x + global3.b.c.x)))), _wgslsmith_f_op_vec3_f32(-global1.a), func_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.x, 311f), _wgslsmith_f_op_vec2_f32(max(global1.b.c.zz, vec2<f32>(global1.a.x, global1.b.c.x))))), vec3<u32>(min(0u, 1u), ~0u, _wgslsmith_mult_u32(0u, global3.a.b.x)), _wgslsmith_mult_vec2_u32(global1.b.b, global1.c))), global3.a.a.x | global3.b.a.x, true);
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~8606u, global1.b.b.x, abs(func_1(-vec4<i32>(u_input.b.x, u_input.c, global1.d.x, -20199i), global3.a.c.zxw).b.x)), abs(~firstTrailingBit(~vec3<u32>(4294967295u, 63605u, global3.a.b.x))), vec3<u32>(_wgslsmith_sub_u32(reverseBits(1u), ~_wgslsmith_add_u32(global1.b.b.x, 1u)), global3.a.b.x, 8242u));
    let var_2 = vec2<u32>(1u, global3.c);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(func_1(vec4<i32>(24327i, _wgslsmith_mult_i32(-10905i, -16115i) | max(global2.x, u_input.b.x), global1.d.x | -33267i, global2.x), vec3<f32>(global3.b.c.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(828f, 720f))))), func_1(vec4<i32>(u_input.a, _wgslsmith_add_i32(global1.d.x | global2.x, u_input.a), _wgslsmith_dot_vec3_i32(select(global1.d, vec3<i32>(-21124i, 47791i, global1.d.x), global3.b.a.x), min(global1.d, global1.d)), ~(-69776i << (global3.b.b.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(global3.b.c.x - _wgslsmith_div_f32(176f, -230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c.x) + global3.a.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, global1.b.c.x, global1.e.x)), -301f))), _wgslsmith_sub_u32(75722u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global3.a.b.x, 101499u), global1.b.b.x), abs(_wgslsmith_mult_vec2_u32(global1.c, vec2<u32>(37484u, 17179u))))), 4294967295u <= func_2());
    global2 = global1.d;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))) * -441f)), 1000f, -819f);
    let var_1 = func_1(abs(~(vec4<i32>(-1i) * -vec4<i32>(global1.d.x, global2.x, -2147483647i, -25388i))), vec3<f32>(global3.b.c.x, global3.a.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), 271f))));
    global2 = global1.d;
    global1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f + var_1.c.x) * _wgslsmith_f_op_f32(floor(-1384f)))), -496f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -609f)))), Struct_1(vec4<bool>(!(!global1.b.a.x), true, any(select(vec2<bool>(false, var_1.a.x), var_1.a.zw, var_1.a.xw)), global3.a.a.x), vec2<u32>(0u, ~var_1.b.x), _wgslsmith_f_op_vec4_f32(max(func_1(min(vec4<i32>(u_input.a, global2.x, global1.d.x, global2.x), vec4<i32>(global2.x, -2961i, -28574i, 1i)), _wgslsmith_f_op_vec3_f32(select(global1.b.c.ywz, vec3<f32>(610f, 1538f, 1403f), global3.b.a.wyw))).c, global1.b.c))), firstTrailingBit(~var_1.b), ~global1.d, var_1.a);
    global1 = Struct_3(global3.b.c.wxw, Struct_1(select(vec4<bool>(global1.b.a.x || global3.a.a.x, func_1(vec4<i32>(global1.d.x, u_input.a, 17074i, u_input.b.x), var_1.c.wyx).a.x, func_3(vec2<f32>(var_0.x, -1154f), vec3<u32>(1u, 3658u, var_1.b.x), vec2<u32>(54335u, 14732u)).a.x, true), vec4<bool>(func_1(vec4<i32>(u_input.b.x, global1.d.x, global1.d.x, global2.x), vec3<f32>(1301f, 998f, -782f)).a.x, true, !global3.a.a.x, false), global1.b.a), func_3(var_1.c.ww, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global1.c.x, global3.b.b.x), vec3<u32>(1u, 4294967295u, 16418u)), ~global1.c).b | global1.b.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(global3.a.c.x)), -631f, 2679f, 469f)))), global1.b.b, -global1.d | firstLeadingBit(vec3<i32>(u_input.a, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(91537i, 1i), global2.zy))), vec4<bool>(true, true & !(!global3.a.a.x), all(vec4<bool>(!global1.b.a.x, !global3.d, !global3.b.a.x, var_1.a.x)), !(!all(global3.b.a.zy))));
    global2 = vec3<i32>(0i, abs(-2147483647i), global2.x & -2147483647i);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-187f, 1523f, global3.b.c.x), vec3<f32>(var_1.c.x, 252f, 426f)))))), func_1(-((vec4<i32>(0i, u_input.c, global2.x, u_input.a) | vec4<i32>(u_input.a, u_input.c, u_input.b.x, 1i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.b.x, global1.c.x, global3.c), vec4<u32>(global3.a.b.x, var_1.b.x, global1.b.b.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2228f, 236f, 243f), global1.b.c.zzw)))), global1.c, -(~vec3<i32>(-53629i, _wgslsmith_sub_i32(global2.x, global1.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.x, global2.x, global1.d.x), global1.d))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.a ^ -37823i, i32(-1i) * -1i) | 0i, var_2.c.x);
}

