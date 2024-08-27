struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-366f, vec4<f32>(-1410f, -418f, -172f, 724f));

var<private> global1: vec3<i32>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: Struct_2) -> vec2<bool> {
    global0 = Struct_3(_wgslsmith_f_op_f32(round(global0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, arg_3.a, arg_3.a, -1417f))) - _wgslsmith_f_op_vec4_f32(-global0.b)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(global0.b))))));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(509f + _wgslsmith_f_op_f32(select(-1101f, _wgslsmith_f_op_f32(step(-846f, -1962f)), global2.x))))), ~arg_3.b);
    var var_1 = max(select(_wgslsmith_clamp_vec3_i32(countOneBits(~arg_2.zzz), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, global1.x, arg_2.x), _wgslsmith_mult_vec3_i32(arg_1, arg_2.ywz)), vec3<i32>(0i, reverseBits(global1.x), global1.x)), _wgslsmith_sub_vec3_i32(select(arg_1, ~u_input.c, all(vec4<bool>(true, true, global2.x, global2.x))), ~vec3<i32>(arg_2.x, 1i, -2147483647i)), !(!vec3<bool>(global2.x, global2.x, global2.x))), u_input.c);
    var var_2 = Struct_3(arg_3.a, vec4<f32>(107f, -1413f, arg_3.a, _wgslsmith_f_op_f32(1077f - _wgslsmith_f_op_f32(arg_3.a - var_0.a))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.zx) - global0.b.zx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(932f, -861f) - _wgslsmith_f_op_vec2_f32(select(global0.b.xy, vec2<f32>(-1000f, 181f), vec2<bool>(global2.x, global2.x)))) * global0.b.xz)));
    return select(select(vec2<bool>(false, !global2.x), vec2<bool>(true, all(vec3<bool>(false, true, false))), all(select(vec2<bool>(false, false), !vec2<bool>(global2.x, global2.x), all(vec4<bool>(global2.x, global2.x, true, true))))), select(vec2<bool>(!any(vec3<bool>(global2.x, global2.x, false)), global2.x), vec2<bool>(true, true), global2.x), select(select(vec2<bool>(true, global2.x & global2.x), !(!vec2<bool>(global2.x, global2.x)), select(global2.x || false, true, global2.x)), vec2<bool>(false, true), false));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> bool {
    global2 = func_3(min(u_input.d, u_input.d), -_wgslsmith_sub_vec3_i32(u_input.c, -u_input.c), -vec4<i32>(~(-2147483647i), arg_1, -10201i, (i32(-1i) * -15170i) | (2147483647i >> (u_input.b % 32u))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-254f, -1000f)), _wgslsmith_f_op_f32(-global0.a))))), vec3<u32>(1u, ~1u, 37136u)));
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, firstTrailingBit(~(~u_input.c.x)), _wgslsmith_sub_i32(~global1.x, ~(~u_input.c.x))), vec3<i32>(u_input.c.x, abs((i32(-1i) * -11201i) & global1.x), min(-17900i, u_input.c.x)));
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 30750u), vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(0u, 1u, u_input.b)), vec3<u32>(1u, u_input.b, 11280u) & vec3<u32>(u_input.d, 60079u, 4294967295u))), _wgslsmith_dot_vec3_u32(~((vec3<u32>(u_input.b, u_input.d, 6673u) & vec3<u32>(u_input.d, u_input.b, 15900u)) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.d), vec3<u32>(u_input.b, 3819u, 1u))), ~vec3<u32>(123978u, u_input.d, 1u) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 8905u, u_input.b), ~vec3<u32>(0u, u_input.b, 5525u)) % vec3<u32>(32u))), _wgslsmith_sub_u32(u_input.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 42365u, u_input.b, 11903u), ~vec4<u32>(8030u, u_input.d, 70928u, 38786u))), ~(~_wgslsmith_div_u32(u_input.d, 1u)));
    global2 = vec2<bool>(!global2.x, all(!vec3<bool>(global2.x, true, global0.a >= global0.b.x)));
    let var_1 = ~u_input.d >> ((var_0.x << (u_input.d % 32u)) % 32u);
    return global2.x;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(u_input.e, reverseBits(~_wgslsmith_mod_i32(1i, -u_input.c.x)));
    global1 = u_input.c;
    global1 = vec3<i32>(u_input.e, -1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.x, -20658i, global1.x, u_input.a), _wgslsmith_mod_vec4_i32(~vec4<i32>(0i, -11288i, u_input.c.x, u_input.e), vec4<i32>(u_input.e, -1346i, u_input.e, global1.x)))) ^ -u_input.c;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-619f, global0.a)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-496f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(134f * global0.a))), _wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_f_op_f32(-387f + _wgslsmith_div_f32(global0.b.x, global0.b.x))))));
    global2 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, false), false), vec2<bool>(global2.x, true))), vec2<bool>(select(true, global2.x, func_2(_wgslsmith_f_op_vec2_f32(select(var_1.b.zx, var_1.b.xy, global2.x)), _wgslsmith_clamp_i32(global1.x, 4649i, global1.x), u_input.a & u_input.c.x)), global2.x), global2.x);
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - 610f) * global0.b.x), ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(8593u, 26262u, 44923u), vec3<u32>(4294967295u, u_input.d, 21698u) >> (vec3<u32>(67627u, 10238u, u_input.d) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.d, u_input.b, 39306u))), min(vec3<u32>(1037u, u_input.b, 4294967295u), ~vec3<u32>(u_input.d, u_input.d, u_input.d))));
}

fn func_4(arg_0: Struct_2) -> bool {
    global1 = u_input.c;
    var var_0 = vec3<f32>(global0.b.x, global0.a, arg_0.a);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)))), global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x * 122f), 1664f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.b.xwy);
    global2 = !select(vec2<bool>(!global2.x, true), !select(!vec2<bool>(global2.x, false), func_3(1u, vec3<i32>(global1.x, -22517i, u_input.c.x), vec4<i32>(-1i, global1.x, global1.x, -1i), arg_0), select(vec2<bool>(true, false), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false))), all(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, global2.x), global2.x)) | false);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    var var_0 = func_4(func_1());
    let var_1 = u_input.c;
    var var_2 = u_input.d;
    global2 = vec2<bool>(func_2(global0.b.zy, abs(abs(u_input.e)) ^ global1.x, firstTrailingBit(u_input.c.x)), global2.x);
    let var_3 = Struct_2(678f, select(reverseBits(abs(vec3<u32>(4294967295u, u_input.d, 0u))), ~(~(~vec3<u32>(u_input.d, 0u, 0u))), !(!(!vec3<bool>(global2.x, false, global2.x)))));
    var var_4 = ~vec2<u32>(10998u, ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.a * var_3.a), -350f, 1000f);
}

