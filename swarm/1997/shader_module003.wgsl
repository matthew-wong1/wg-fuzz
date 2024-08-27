struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(290f, arg_0.b.x, arg_1) + vec3<f32>(-336f, 532f, 106f))))), vec3<f32>(arg_2.b.a.x, _wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.a.x)))), arg_2.c.b.x));
    var_0 = arg_0;
    var var_1 = firstLeadingBit(_wgslsmith_mod_u32(select(1u, _wgslsmith_div_u32(52271u, 1u), arg_2.d.x), 0u) & ~(~firstTrailingBit(u_input.a.x)));
    let var_2 = _wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -26710i, 1i, u_input.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 56348u, 4294967295u, 9474u), vec4<u32>(u_input.a.x, 0u, u_input.c, 26741u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 35229i, u_input.b, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(53148i, -1i, 0i, -18535i)), -vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), vec4<i32>(-2147483647i, ~(-2147483647i), 2300i, ~u_input.b));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(arg_1, -1030f, arg_1))))))), arg_0.a);
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.b.a.x)), arg_2.c.a.x, _wgslsmith_f_op_f32(floor(arg_2.c.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = 1174f;
    var_0 = arg_0.b.x;
    var_0 = _wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x));
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(65555u, u_input.c), ~(~firstLeadingBit(u_input.c)) << (~u_input.c % 32u), ~(u_input.c & u_input.c));
    var var_2 = u_input.c;
    return Struct_2(select(vec4<bool>(!select(false, true, false), false, true, arg_0.a.x < 782f), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) + _wgslsmith_f_op_f32(-arg_0.b.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 1191f)), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(arg_0, 200f, Struct_2(vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(106f, -2964f, arg_0.b.x), vec3<f32>(arg_0.a.x, arg_0.b.x, 910f)), Struct_1(vec3<f32>(arg_0.b.x, arg_0.a.x, arg_0.b.x), arg_0.b), vec3<bool>(true, true, false)))), arg_0.a, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(arg_0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-886f, arg_0.a.x, 242f), arg_0.a)))), arg_0, vec3<bool>(all(vec4<bool>(true, all(vec3<bool>(false, false, true)), false, true)), all(vec4<bool>(true, true, true, true)), true | !any(vec3<bool>(true, true, true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<f32> {
    let var_0 = 1i & firstTrailingBit(arg_3);
    var var_1 = Struct_1(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(896f - -2180f) - -422f))), -243f), _wgslsmith_f_op_vec3_f32(-arg_0));
    var var_2 = func_2(arg_1, -(~(1i << (_wgslsmith_div_u32(1u, 24441u) % 32u))), 2147483647i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a) + vec3<f32>(arg_1.b.x, arg_0.x, 963f)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - -580f), _wgslsmith_f_op_f32(f32(-1f) * -647f), var_2.b.a.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), func_2(var_2.b, -1i, u_input.b).c.b.x, _wgslsmith_div_f32(arg_1.a.x, var_1.b.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.a.x, 439f, 1388f) * vec3<f32>(119f, arg_0.x, 537f)), arg_0))));
    var var_4 = -arg_3;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a.x, -266f, var_1.a.x, arg_1.b.x), vec4<f32>(var_3.a.x, var_2.b.a.x, -1390f, -904f))))) + vec4<f32>(849f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x), -107f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(120f, 123f, 638f, 1809f), vec4<f32>(-323f, -317f, -745f, -985f), vec4<bool>(false, true, true, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 550f, 543f, -1000f) - vec4<f32>(556f, 1000f, 229f, 388f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(346f, -733f, -1934f, 105f), vec4<f32>(-1707f, -432f, 1221f, -1592f))) + vec4<f32>(-1393f, -364f, -1000f, -221f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-287f, 197f, 613f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, -534f, -472f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2039f, 119f, -1451f) + vec3<f32>(-924f, 1641f, -667f))), true, (i32(-1i) * -4539i) << (1u % 32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(22353u, _wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_div_i32(28825i, -38507i), u_input.b)), min(-(vec2<i32>(1i, -2147483647i) & vec2<i32>(u_input.b, u_input.b)), vec2<i32>(-1i) * -vec2<i32>(1i, 1i))));
}

