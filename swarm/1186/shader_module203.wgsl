struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(3619u, 2242u, 4294967295u), vec3<u32>(0u, 0u, 15124u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = -10061i;
    let var_1 = Struct_1(-vec2<i32>(u_input.c.x, 0i), 103373u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1309f + 401f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c) + _wgslsmith_f_op_f32(514f * -1100f)))));
    let var_3 = arg_1.b.b.wyy;
    global0 = -arg_0.x;
    return !all(!(!select(vec2<bool>(arg_1.c, var_2), arg_1.b.a.zy, arg_1.b.a.x)));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.b.b.xz, 4294967295u);
    var_0 = Struct_1(-_wgslsmith_sub_vec2_i32(arg_0.b.b.xw, u_input.c), ~0u);
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, var_0.a.x >> (var_0.b % 32u)), _wgslsmith_mult_i32(~0i, 2147483647i)), max(var_0.b, countOneBits(var_0.b)));
    var_0 = Struct_1(var_1.a, var_0.b >> (~_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(var_0.b, var_0.b)) % 32u));
    global0 = 0i;
    return select(select(select(arg_0.b.a.wz, select(arg_0.b.a.zz, select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(arg_1, arg_0.c)), any(arg_0.b.a.zyz)), !(!vec2<bool>(true, arg_0.c))), vec2<bool>(arg_0.b.c <= arg_0.b.e.x, false), select(func_3(vec4<i32>(var_1.a.x, var_0.a.x, var_1.a.x, -16822i), Struct_3(var_0.a.x, Struct_2(arg_0.b.a, arg_0.b.b, arg_0.b.d.x, arg_0.b.d, vec3<f32>(arg_0.b.d.x, 119f, -274f)), true)), countOneBits(var_1.a.x) <= 5134i, arg_0.c)), select(vec2<bool>(arg_1, false), arg_0.b.a.zx, select(vec2<bool>(var_1.b > 34581u, !arg_1), select(!vec2<bool>(true, arg_0.b.a.x), !vec2<bool>(arg_1, false), !vec2<bool>(arg_0.c, arg_0.b.a.x)), max(var_0.b, var_1.b) <= firstTrailingBit(var_0.b))), !arg_0.b.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = (true && any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))) == all(!(!func_2(Struct_3(arg_0.a.x, Struct_2(vec4<bool>(true, false, false, false), vec4<i32>(arg_0.a.x, -2147483647i, 2147483647i, -2147483647i), 165f, vec3<f32>(627f, 241f, 1000f), vec3<f32>(arg_1, arg_2, 304f)), true), true)));
    let var_1 = arg_0;
    var var_2 = var_1;
    global1 = array<vec3<u32>, 2>();
    return 4294967295u & (firstTrailingBit(0u) | _wgslsmith_mod_u32(36439u, _wgslsmith_mult_u32(var_2.b, var_2.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<bool>(false, !(-2147483647i != u_input.b) || select(any(vec3<bool>(false, true, true)), any(vec2<bool>(false, true)), all(vec3<bool>(false, false, false))), true, (abs(0u) >> (max(1u, 1u) % 32u)) <= (func_1(Struct_1(vec2<i32>(u_input.b, u_input.b), 47730u), -1000f, 559f) & 4294967295u)), vec4<i32>(select(-abs(u_input.a), abs(u_input.c.x) ^ -1i, !select(true, true, false)), ~u_input.b, -1i, firstTrailingBit(-47407i)), 1f, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-550f, -430f)) - -225f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(961f, -211f) + _wgslsmith_f_op_f32(trunc(-741f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(353f * _wgslsmith_f_op_f32(264f - 1813f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1415f, -259f) + 128f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-532f - _wgslsmith_div_f32(-1126f, 1000f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1016f, 563f))))), 504f));
    let var_1 = select(var_0.a.xyy, vec3<bool>(true, all(select(var_0.a, var_0.a, !vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x))), (var_0.a.x || true) & (func_2(Struct_3(-1i, Struct_2(var_0.a, vec4<i32>(1i, 0i, 1i, u_input.b), -1045f, vec3<f32>(-738f, var_0.c, -1815f), vec3<f32>(679f, -859f, var_0.c)), false), var_0.a.x).x || func_3(var_0.b, Struct_3(var_0.b.x, Struct_2(vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_0.b, 183f, var_0.d, vec3<f32>(-1000f, 1740f, 291f)), var_0.a.x)))), vec3<bool>(all(vec2<bool>(any(vec3<bool>(var_0.a.x, false, var_0.a.x)), false)), true, select(!all(var_0.a.ww), -u_input.c.x >= reverseBits(var_0.b.x), var_0.a.x)));
    let var_2 = 1i;
    global1 = array<vec3<u32>, 2>();
    var var_3 = Struct_2(var_0.a, min(reverseBits(var_0.b), var_0.b & vec4<i32>(1i, var_0.b.x, 53912i, u_input.b >> (1u % 32u))), var_0.e.x, _wgslsmith_f_op_vec3_f32(step(var_0.e, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, 120f) * var_0.e), vec3<f32>(250f, -783f, 1000f)), var_0.d))), _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, -346f, var_0.c)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-729f, var_0.e.x, -902f))))) - var_0.e)));
    let var_4 = ~(-27620i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, 96753u, _wgslsmith_f_op_f32(sign(var_3.c)));
}

