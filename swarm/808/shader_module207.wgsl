struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec4<f32> {
    global0 = array<u32, 24>();
    var var_0 = arg_2;
    var var_1 = Struct_4(arg_1.b.zyz, any(!select(!vec4<bool>(arg_2, false, false, true), vec4<bool>(arg_2, false, arg_2, arg_2), select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, false), vec4<bool>(arg_2, true, false, true)))));
    let var_2 = max(-firstTrailingBit(_wgslsmith_add_i32(u_input.d.x, -5225i)), -2147483647i) & u_input.d.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.b));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(arg_0, 1770f), var_3.a.x, 1f, var_3.a.x), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(select(arg_0, arg_0, var_1.b)), _wgslsmith_div_f32(var_3.a.x, 722f), _wgslsmith_f_op_f32(f32(-1f) * -773f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1805f)), _wgslsmith_f_op_f32(trunc(-381f)), _wgslsmith_f_op_f32(-1460f - _wgslsmith_f_op_f32(-var_1.a.x)), var_3.a.x), !select(select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(var_1.b, true, var_1.b, arg_2), false), vec4<bool>(false, false, true, arg_2), false || var_1.b)))));
}

fn func_2() -> f32 {
    global0 = array<u32, 24>();
    let var_0 = all(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), false))) && true;
    var var_1 = Struct_3(_wgslsmith_div_vec2_u32(select(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 27982u), select(u_input.c.ww, ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 32754u), vec2<bool>(true, true)), any(select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, true, false)))), ~abs(u_input.c.yy)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, -1606f, -1645f, 616f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(372f, -127f, 1507f, 1766f) * vec4<f32>(2619f, -1787f, 386f, -529f))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(trunc(2045f)), Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22715u, 24u)], 24u)]), vec4<f32>(-543f, 375f, -840f, -1186f)), select(var_0, var_0, var_0))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.b.xwx - vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), -132f, -2517f)))), any(!(!vec4<bool>(var_0, true, var_0, var_0))));
    let var_3 = false | !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1064f * -848f) + _wgslsmith_f_op_f32(1258f * var_2.a.x)) <= -366f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1428f, -1223f))), any(select(vec4<bool>(var_0, var_3, false, var_2.b), vec4<bool>(false, var_2.b, var_2.b, var_3), vec4<bool>(var_3, false, var_3, var_3))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + -1000f)))));
}

fn func_1(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0.b.zxy), _wgslsmith_f_op_f32(func_2()) < 1248f);
    var var_1 = 1i;
    var var_2 = Struct_3(abs(vec2<u32>(~29668u, global0[_wgslsmith_index_u32(~u_input.c.x, 24u)])), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - 822f) * _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(abs(-1668f)))), arg_0.b.x));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_div_vec3_u32(u_input.c.yzw | vec3<u32>(4743u, 1u, _wgslsmith_mod_u32(1u >> (1u % 32u), 44739u)), ~u_input.c.wzy);
    return vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-964f, arg_0.b.x))), _wgslsmith_f_op_f32(var_3.b.x - -726f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 4294967295u), vec4<f32>(2131f, -858f, -1252f, 2187f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_vec4_f32(func_3(1000f, Struct_3(vec2<u32>(0u, 63698u), vec4<f32>(1056f, -189f, -1282f, 2262f)), true)).x, _wgslsmith_f_op_f32(-1006f - 134f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1846f, 1251f, -321f), vec3<f32>(-760f, -748f, -1254f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1560f, -770f, 1055f), vec3<f32>(-1653f, -516f, -467f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-583f, 1000f, -2214f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(793f, -130f, -640f) * vec3<f32>(-480f, 511f, -255f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-438f, 866f, -564f)))));
    global0 = array<u32, 24>();
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec2<u32>(2582u, 4294967295u), vec4<f32>(var_0.x, var_0.x, -695f, -1802f)))).x, _wgslsmith_f_op_vec4_f32(func_3(-1372f, Struct_3(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(2481u, 24u)]), vec4<f32>(var_0.x, -1001f, -1232f, 653f)), false)).x, -612f)))), vec3<f32>(-781f, var_0.x, 167f)));
    var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), -2005f)) * _wgslsmith_f_op_f32(f32(-1f) * -839f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.x, Struct_3(u_input.c.wy, vec4<f32>(var_0.x, 2121f, var_0.x, var_0.x)), false)).zww), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-845f, var_0.x, -1856f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1316f, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -640f, var_0.x))))))));
    global0 = array<u32, 24>();
    var var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~select(u_input.c.xzz, vec3<u32>(u_input.c.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)]), vec3<bool>(false, true, true)), abs(abs(u_input.c.zyz))), min(vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 31338u)), vec3<u32>(0u, ~u_input.c.x, 0u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(84647u, 24u)], 39935u, global0[_wgslsmith_index_u32(53638u, 24u)]), vec4<u32>(u_input.c.x, 7745u, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37550u, 24u)], 24u)], 24u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 11055u), u_input.c.yw), u_input.c.x)) << (~(~vec3<u32>(~4294967295u, 1u, ~u_input.c.x)) % vec3<u32>(32u));
    var var_2 = Struct_3(var_1.xx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, -1675f, 1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(739f, var_0.x, 1244f, 2655f), vec4<f32>(-1141f, var_0.x, -2140f, -1000f), vec4<bool>(false, true, true, false))))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_3(vec2<u32>(33544u, 0u), vec4<f32>(315f, 1007f, -778f, -682f)))).x), var_0.x)), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_clamp_i32(abs(~(u_input.b.x ^ 0i)), u_input.b.x, -firstTrailingBit(~u_input.b.x)));
}

