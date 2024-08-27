struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: vec3<f32> = vec3<f32>(-767f, -160f, 407f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    let var_0 = u_input.d;
    global0 = array<Struct_4, 28>();
    global0 = array<Struct_4, 28>();
    let var_1 = vec3<u32>(u_input.b, ~min(u_input.b, 1u), ~1u);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(273f)), -1234f)));
    return select(vec2<bool>(any(vec2<bool>(true, true)), select(!(var_2.a > 348f), false, true)), vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    global0 = array<Struct_4, 28>();
    let var_0 = _wgslsmith_f_op_f32(select(230f, _wgslsmith_f_op_f32(arg_1.b.c.a * global1.x), any(select(func_3(), vec2<bool>(true, arg_3.b.d), func_3()))));
    let var_1 = vec3<f32>(-368f, global1.x, _wgslsmith_f_op_f32(select(arg_3.c.c.a, 480f, arg_2.c.d)));
    var var_2 = arg_3.b.d & arg_1.c.d;
    let var_3 = Struct_4(func_3().x, arg_1.b.c, Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(arg_3.c.b.x, 1i, min(arg_2.c.b.x, -35907i)), arg_2.a), Struct_2(57971u, abs(vec2<i32>(arg_3.c.b.x, arg_1.b.b.x)), Struct_1(_wgslsmith_f_op_f32(-var_0)), false, 0u), Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c.e, arg_2.c.a, 116831u, arg_3.b.a), vec4<u32>(arg_3.c.e, u_input.b, arg_2.b.a, arg_1.b.e)), firstTrailingBit(u_input.a.zy), arg_1.b.c, arg_3.c.d, arg_3.b.a & _wgslsmith_mult_u32(arg_2.b.e, 20358u))), Struct_2(arg_3.b.e, vec2<i32>(-(~arg_2.a.x), -2147483647i), Struct_1(arg_1.c.c.a), any(select(!vec3<bool>(arg_3.b.d, arg_2.c.d, arg_2.c.d), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), arg_1.c.d), true)), ~(~arg_2.c.a) << (arg_2.c.a % 32u)));
    return _wgslsmith_f_op_f32(step(var_0, var_1.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    global1 = vec3<f32>(-327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.d, arg_1.d.b.x, 28927i, -2147483647i), arg_1.c, Struct_3(arg_1.c.a, arg_1.d, arg_1.c.c), Struct_3(vec3<i32>(-15103i, arg_0.b.x, 67270i), arg_0, Struct_2(u_input.b, u_input.a.xy, arg_1.c.c.c, arg_0.d, u_input.b))))), _wgslsmith_f_op_f32(func_2(reverseBits(vec4<i32>(arg_0.b.x, -9046i, arg_0.b.x, arg_1.c.c.b.x)), Struct_3(vec3<i32>(20616i, u_input.c, -1i), arg_1.c.b, arg_0), arg_1.c, arg_1.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) * _wgslsmith_f_op_f32(f32(-1f) * -392f)) - _wgslsmith_f_op_f32(arg_1.c.c.c.a * arg_1.b.a))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), -1025f, 1458f);
    return all(select(!select(vec2<bool>(false, true), !vec2<bool>(arg_1.c.c.d, arg_0.d), true), vec2<bool>(1i <= ~u_input.d, any(select(vec2<bool>(false, arg_1.c.b.d), vec2<bool>(false, true), vec2<bool>(arg_0.d, false)))), arg_0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -775f, global1.x) + vec3<f32>(-656f, global1.x, global1.x))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(global1.x, global1.x, 1000f))))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, global1.x, -914f), vec3<bool>(false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -658f), -1558f, -558f)))));
    let var_0 = vec3<u32>(u_input.b, abs(~(~(~4294967295u))), select(u_input.b, ~u_input.b, true));
    var var_1 = vec3<bool>(_wgslsmith_mod_u32(39104u | _wgslsmith_mult_u32(2454u, var_0.x), 4294967295u) >= _wgslsmith_clamp_u32(~8692u, 1u, ~0u), true, !select(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), true, func_1(Struct_2(4294967295u, u_input.a.zw, Struct_1(965f), false, 1u), Struct_4(true, Struct_1(global1.x), Struct_3(vec3<i32>(2147483647i, -1i, u_input.c), Struct_2(1u, vec2<i32>(0i, 1i), Struct_1(-822f), true, 57229u), Struct_2(var_0.x, u_input.a.wx, Struct_1(global1.x), false, 30799u)), Struct_2(u_input.b, u_input.a.xy, Struct_1(-1623f), true, 1u))) | true));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(731f, global1.x)))))) - _wgslsmith_f_op_f32(f32(-1f) * -583f)), 200f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))));
    global0 = array<Struct_4, 28>();
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -22804i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, u_input.d, -1i, u_input.d), u_input.a), vec4<i32>(u_input.d, _wgslsmith_sub_i32(u_input.c, 2147483647i), -u_input.a.x, u_input.c >> (var_0.x % 32u))), ~vec4<u32>(1u, var_0.x, ~firstTrailingBit(0u), 58893u), ~(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, 1u), 4294967295u, 1u)));
}

