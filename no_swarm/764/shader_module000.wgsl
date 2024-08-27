struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_i32(i32(-1i) * -global0.d.x, -(~firstTrailingBit(-30362i)), global0.d.x);
    var var_1 = global0.a.c;
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_u32(1u, global0.a.a), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1007f + global0.a.c), _wgslsmith_f_op_f32(trunc(1750f)))), global0.a.d), global0.b, _wgslsmith_f_op_f32(abs(global0.a.c)), abs(vec4<i32>(i32(-1i) * -1i, -var_0, abs(-2147483647i), ~4523i))), vec2<bool>(all(select(vec3<bool>(global0.a.b, global0.a.b, true), vec3<bool>(false, true, global0.a.b), vec3<bool>(true, true, global0.a.b))), global0.a.b), Struct_2(Struct_1(1u << (global0.a.a % 32u), true, _wgslsmith_f_op_f32(707f - _wgslsmith_f_op_f32(f32(-1f) * -950f)), -501f), _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(global0.a.a), global0.b), ~(global0.b ^ 4294967295u)), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f)))), ~(~vec4<i32>(global0.d.x, var_0, 8823i, global0.d.x))));
    let var_3 = global1[_wgslsmith_index_u32(abs(~u_input.a), 2u)];
    var var_4 = -global0.d.x;
    return global0.a.d;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f) + 1827f), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(257f)));
    global0 = Struct_2(global0.a, ~(~4294967295u ^ global0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), global0.a.c)), global0.d >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.b, 1u, u_input.a), vec4<u32>(global0.b, 0u, global0.b, global0.a.a)), u_input.a, u_input.a), vec4<u32>(0u, global0.b, firstLeadingBit(u_input.a), _wgslsmith_mult_u32(61223u, 6588u))) % vec4<u32>(32u)));
    var var_1 = global0.a;
    return Struct_1(global0.b, any(select(!(!vec4<bool>(global0.a.b, false, var_1.b, true)), vec4<bool>(all(vec3<bool>(false, true, true)), false, 2147483647i != global0.d.x, var_1.b), any(select(vec4<bool>(false, false, global0.a.b, false), vec4<bool>(false, true, false, false), var_1.b)))), _wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * -136f))), var_1.c);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = global0.a;
    global0 = Struct_2(func_2(), 31533u, arg_1.c, vec4<i32>(arg_3, ~select(global0.d.x, -32356i, any(arg_0)), global0.d.x, 0i & _wgslsmith_mult_i32(arg_3 ^ arg_3, _wgslsmith_div_i32(arg_3, -79434i))));
    let var_1 = -604f;
    var var_2 = vec3<bool>(global0.d.x < arg_3, var_0.b, true | select(!arg_1.b, false, all(arg_0)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * -451f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 1680f))), all(select(arg_0, select(arg_0, vec2<bool>(arg_1.b, true), arg_0.x), !vec2<bool>(false, global0.a.b))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f * arg_1.d));
    return Struct_2(global0.a, ~(~_wgslsmith_add_u32(u_input.a, 0u)), var_0.c, vec4<i32>(-4026i, arg_3, 2147483647i, -24689i));
}

fn func_1() -> Struct_4 {
    global0 = func_4(!vec2<bool>(false, any(vec2<bool>(global0.a.b, true))), func_2(), func_2(), min(global0.d.x, global0.d.x));
    global1 = array<Struct_3, 2>();
    var var_0 = _wgslsmith_sub_i32(select(-1i, global0.d.x, true), -19929i << (min(global0.b, min(1u, u_input.a) << (reverseBits(u_input.a) % 32u)) % 32u));
    return Struct_4(!select(vec3<bool>(global0.a.b, global0.a.b, all(vec2<bool>(global0.a.b, false))), !select(vec3<bool>(true, global0.a.b, true), vec3<bool>(true, true, global0.a.b), vec3<bool>(true, global0.a.b, global0.a.b)), vec3<bool>(global0.a.b, !global0.a.b, true)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.c, -540f, 588f, -1726f), vec4<f32>(global0.c, -391f, global0.a.d, 1146f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, -110f, 1131f, global0.c), vec4<f32>(923f, global0.a.c, -285f, 221f), false))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.d, global0.a.d, global0.a.c, global0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -1288f, 319f, 1997f)))), true)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, 1063f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) * global0.a.c), _wgslsmith_f_op_f32(f32(-1f) * -1312f))));
    let var_1 = arg_2;
    let var_2 = func_4(select(arg_1.a.yx, !(!arg_1.a.yy), func_1().a.yx), Struct_1(~select(_wgslsmith_add_u32(arg_2, 4294967295u), 68496u, func_1().a.x), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1049f), 444f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-1000f + -1553f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + global0.c) + var_0.x)), func_2(), _wgslsmith_add_i32(60184i, -22886i));
    return Struct_4(func_1().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.c, global0.c, -686f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.d))), 633f, -629f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-202f, global0.c, _wgslsmith_f_op_f32(abs(-354f))), vec3<f32>(global0.a.c, global0.c, -1735f))))));
    var var_1 = func_5(global0.d.x, func_1(), 77201u ^ global0.a.a);
    var var_2 = global0.d.x;
    var var_3 = 30465i;
    var_3 = global0.d.x;
    global1 = array<Struct_3, 2>();
    var var_4 = ~(-(_wgslsmith_clamp_vec3_i32(global0.d.xzy & global0.d.zxy, ~global0.d.wyz, abs(global0.d.wxw)) >> (~select(vec3<u32>(89634u, global0.a.a, 19074u), vec3<u32>(37163u, 15834u, u_input.a), global0.a.b) % vec3<u32>(32u))));
    global0 = func_4(vec2<bool>(select(true, global0.a.b, true), !(!var_1.a.x || true)), global0.a, Struct_1(4294967295u, !(!func_1().a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -292f) * _wgslsmith_f_op_f32(round(global0.c)))), 111f), global0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~max(vec4<u32>(35755u, 0u, 1u, global0.a.a), vec4<u32>(global0.a.a, u_input.a, 8409u, global0.b)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 16524u, 4294967295u, 1u))), ~(~vec4<u32>(global0.b, 14054u, 1u, 4294967295u))), ~((1i >> (abs(global0.b) % 32u)) | _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.d.x, 1i), global0.d.x)), var_0.yx);
}

