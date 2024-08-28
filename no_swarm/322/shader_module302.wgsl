struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-441f, 1042f, 1000f, -671f);

var<private> global1: f32 = -2379f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global1 = 1123f;
    let var_0 = arg_0;
    var var_1 = arg_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(var_0.b.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.b)))));
    var var_2 = arg_0.b.b.yzy;
    return reverseBits(countOneBits(~(~u_input.c.x))) | u_input.c.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = vec2<i32>(0i, -(~_wgslsmith_clamp_i32(_wgslsmith_div_i32(-21772i, 30228i), ~u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.c.x))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(-1096f, 1240f, -456f, 2342f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0, -1339f, arg_0) - _wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(arg_0, arg_0, 344f, -448f)))), arg_1.b, !arg_1.d)));
}

fn func_3() -> vec4<f32> {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - -170f))))), -1154f, -226f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-975f, -551f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f + -1081f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)) + _wgslsmith_f_op_f32(select(global0.x, -245f, false))))), 858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(139f)))));
    let var_0 = countOneBits(~(vec4<i32>(28089i, abs(u_input.c.x), _wgslsmith_mod_i32(-2147483647i, u_input.c.x), max(u_input.c.x, 44609i)) << (~(u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) & true, true);
    var var_2 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i), _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(2147483647i, u_input.c.x))), u_input.c, -vec2<i32>(1i, var_0.x)) >> (u_input.b.wy % vec2<u32>(32u));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-925f, global0.x)))), 700f, -1166f, _wgslsmith_f_op_f32(floor(global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(2147483647i, ~abs(u_input.c.x));
    let var_1 = Struct_4(countOneBits(vec3<i32>(-1i, countOneBits(0i), func_1(Struct_2(4294967295u, Struct_1(vec2<bool>(true, true), vec4<f32>(global0.x, 579f, global0.x, 405f), false, vec4<bool>(false, false, false, true), 1u)), Struct_1(vec2<bool>(true, true), vec4<f32>(-198f, 520f, -115f, 735f), true, vec4<bool>(false, true, true, false), 51139u))) >> (u_input.b.zxx % vec3<u32>(32u))), vec4<i32>(-1i, u_input.c.x, ~firstTrailingBit(25063i), -2539i));
    let var_2 = ~u_input.b.xwz;
    let var_3 = ~(~0u);
    global1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(global0.x + 254f));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(global0.x, Struct_1(vec2<bool>(false, true), vec4<f32>(global0.x, global0.x, -1764f, global0.x), true, vec4<bool>(true, true, false, true), u_input.a), var_1)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(sign(1000f)), 974f, _wgslsmith_f_op_f32(f32(-1f) * -110f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x, _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -772f), global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(19948i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(819f, -1189f, 1000f)))), vec3<f32>(_wgslsmith_div_f32(global0.x, 998f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), vec2<u32>(78584u, u_input.b.x));
}

