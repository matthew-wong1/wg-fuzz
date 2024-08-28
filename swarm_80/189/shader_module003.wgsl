struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, -318f, false, Struct_2(-1656f), Struct_2(-2130f));

var<private> global1: Struct_4;

var<private> global2: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1000f, 1054f, 1311f, 512f), vec4<f32>(575f, -1470f, -205f, -505f), vec4<f32>(1760f, 1817f, -245f, 1349f), vec4<f32>(-1320f, 809f, -645f, 324f), vec4<f32>(742f, -1000f, 1900f, -1328f), vec4<f32>(1480f, 1899f, 1123f, -1000f), vec4<f32>(-693f, 833f, 1031f, -1114f), vec4<f32>(-914f, -1258f, -2262f, 1551f), vec4<f32>(1571f, -106f, -2166f, 1025f), vec4<f32>(194f, 1991f, -1089f, 876f), vec4<f32>(342f, 2670f, 158f, 148f), vec4<f32>(-109f, -193f, 614f, -1022f), vec4<f32>(1000f, 257f, 1000f, 276f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b.e.wyy + vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(-425f, global1.b.a, all(vec3<bool>(true, true, global1.b.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global1.a.a)))));
    var var_1 = global1.b;
    global2 = array<vec4<f32>, 13>();
    let var_2 = vec2<bool>(var_1.d.x, all(vec3<bool>(_wgslsmith_f_op_f32(403f + var_1.e.x) <= global0.e.a, global1.b.d.x, global1.b.d.x)));
    let var_3 = any(vec2<bool>(true, !(!var_1.d.x)));
    return u_input.d;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = select(global1.b.d, !global1.b.d, any(!vec3<bool>(false, 15813u <= u_input.b, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), vec4<i32>(-9499i << (~(~0u) % 32u), func_3() ^ (i32(-1i) * -8537i), ~abs(~68380i), arg_1.x), reverseBits(_wgslsmith_div_i32(arg_1.x, global1.b.b.x) >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 132714u, 1u), vec4<u32>(0u, u_input.b, 0u, u_input.b)), _wgslsmith_mult_u32(4294967295u, u_input.b)) % 32u)), var_0, vec4<f32>(100f, _wgslsmith_f_op_f32(step(2357f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(2160f, global0.e.a) + arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a)), global0.b));
    var var_2 = reverseBits(countOneBits(abs(_wgslsmith_clamp_u32(44787u, 39202u, min(79487u, 4294967295u)))));
    global2 = array<vec4<f32>, 13>();
    let var_3 = !var_0;
    return Struct_3(true, global0.e.a, true, global0.e, global1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_4 {
    global0 = func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.a.a)), -1610f))), select(global1.b.b, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-global1.b.b, _wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(u_input.d, -47280i, arg_0.c, arg_0.b.x)), vec4<i32>(u_input.a, u_input.a, arg_1.x, -2147483647i)), _wgslsmith_mult_vec4_i32(arg_0.b, max(vec4<i32>(2147483647i, -55892i, global1.b.b.x, 18875i), arg_0.b))), select(vec4<bool>(arg_0.d.x, false, global0.a, any(global1.b.d)), !(!vec4<bool>(true, arg_0.d.x, false, true)), true)));
    return Struct_4(Struct_2(global1.a.a), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 13>();
    global2 = array<vec4<f32>, 13>();
    var var_0 = global1.b;
    global1 = func_1(global1.b, vec4<i32>(global1.b.c, ~u_input.a, 1i, global1.b.c));
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_f32(-global0.b), vec4<i32>(~countOneBits(-57970i), ~(~47030i), ~(~global1.b.c), var_0.b.x), ~var_0.c, var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.b.e, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1635f, var_0.a, -1000f, var_0.e.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.a, var_0.e.x, 385f, global0.d.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 762f, 183f, 1202f))))), vec4<i32>(1i, var_0.b.x, -10431i, 0i));
    var var_2 = global1.b.e.zyw;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(var_1.b.a * _wgslsmith_f_op_f32(-var_0.a)));
    let var_4 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~min(1u, 96758u), global1.b.e.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b.e.x, -363f, 725f, global1.b.e.x)))))))));
}

