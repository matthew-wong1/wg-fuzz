struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1745i, vec4<bool>(true, false, false, true), -1344f, vec4<f32>(-911f, -1337f, -1204f, 1407f), 7981i);

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(41725u, 21560u, 1u, 6619u), vec4<u32>(4294967295u, 1u, 701u, 4294967295u), vec4<u32>(1034u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 1u, 48281u, 54593u), vec4<u32>(75669u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 3042u), vec4<u32>(5106u, 49342u, 44208u, 0u), vec4<u32>(1u, 35601u, 38944u, 4294967295u), vec4<u32>(25060u, 19932u, 0u, 55272u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_3 {
    let var_0 = global0.d;
    let var_1 = ~vec2<u32>(select(~41035u, abs(select(48763u, 0u, true)), !(!global0.b.x)), ~max(u_input.a.x, 1u));
    global1 = global0.a;
    global2 = array<vec4<u32>, 10>();
    global1 = -2147483647i;
    return Struct_3(Struct_2(Struct_1(11834i, !global0.b, global0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c, -231f, var_0.x, global0.d.x))) - global0.d), global0.a), Struct_1(min(3978i, -2147483647i), vec4<bool>(any(global0.b.xyw), global0.b.x, any(vec3<bool>(false, true, global0.b.x)), global0.b.x), 1922f, vec4<f32>(_wgslsmith_f_op_f32(select(global0.d.x, global0.c, true)), global0.d.x, global0.c, -268f), 13170i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = arg_0.a;
    var var_1 = ~u_input.a.ww;
    return func_2().a;
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(-10122i, select(global0.b, global0.b, vec4<bool>(any(global0.b.yzx) && (global0.b.x || true), !global0.b.x, !global0.b.x & global0.b.x, true)), -480f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d.x))), 1000f, _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -461f)) - vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(abs(511f)))), _wgslsmith_f_op_f32(min(796f, global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * 782f), -1007f)), ~global0.e);
    var var_0 = func_3(func_2(), 1u);
    var var_1 = -min(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0.e, 3059i, var_0.a.e), -vec3<i32>(var_0.b.a, global0.e, var_0.b.e)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.e >> (47546u % 32u), 0i, var_0.b.e), ~(vec3<i32>(-5718i, global0.e, 1i) & vec3<i32>(var_0.a.a, global0.e, -2147483647i))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a.a.d.x - global0.d.x)), var_0.b.c);
    let var_3 = _wgslsmith_add_vec4_i32(~abs(vec4<i32>(global0.a, 2147483647i, 2147483647i, var_0.b.e) << (~vec4<u32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.b.x) % vec4<u32>(32u))), ~vec4<i32>(var_0.b.a, var_1.x, ~global0.e, abs(countOneBits(global0.e))));
    return Struct_2(func_3(func_2(), u_input.b.x).b, Struct_1(abs(select(12520i, 2147483647i, global0.b.x)), !select(func_3(Struct_3(Struct_2(Struct_1(global0.a, var_0.b.b, 1659f, var_0.b.d, -16568i), var_0.b)), u_input.c.x).b.b, vec4<bool>(global0.b.x, var_0.b.b.x, false, false), !var_0.a.b), var_0.b.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-734f, var_0.a.d.x, var_0.a.d.x, 334f), var_0.a.d, vec4<bool>(false, global0.b.x, false, true))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(728f, var_0.a.d.x, var_2.x, -1573f))))) + vec4<f32>(-540f, _wgslsmith_f_op_f32(f32(-1f) * -928f), var_0.b.c, global0.d.x)), ~(0i << (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 10>();
    global1 = 56521i;
    let var_0 = vec2<i32>(global0.a ^ max(-(~20045i), 2147483647i & _wgslsmith_clamp_i32(global0.a, global0.e, global0.e)), global0.e);
    var var_1 = func_1();
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, u_input.a.x) ^ u_input.a.x, ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 18533u, 0u), vec4<u32>(u_input.a.x, 4041u, u_input.a.x, u_input.c.x)), u_input.c.x & 63818u)), vec4<u32>(u_input.b.x | u_input.a.x, 104719u, u_input.c.x, _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(1u, u_input.c.x))), func_1().a.a << (min(99043u, ~max(u_input.c.x, u_input.c.x)) % 32u), func_2().a.b.d.zxw, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.d.x))), _wgslsmith_div_f32(1525f, func_1().a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + var_1.b.c)), var_2.b.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.d), var_2.a.d, !var_1.a.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.d)) * vec4<f32>(-989f, -1000f, var_1.a.d.x, global0.d.x))))));
}

