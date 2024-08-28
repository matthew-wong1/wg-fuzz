struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: Struct_4 = Struct_4(vec3<u32>(47595u, 13062u, 19732u), 59626u, vec2<bool>(true, false));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_3, 28>();
    var var_0 = ~global1.a.xz;
    var_0 = firstTrailingBit(countOneBits(_wgslsmith_clamp_vec2_u32(~global1.a.yx, ~(~vec2<u32>(arg_1, 77705u)), ~firstLeadingBit(vec2<u32>(var_0.x, global1.b)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2097f))) - 1f));
    global0 = array<Struct_3, 28>();
    return ~reverseBits(~_wgslsmith_mult_u32(min(global1.b, 0u), global1.b));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -(0i << (global1.b % 32u))), -countOneBits(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(1i, u_input.a.x)))), max(_wgslsmith_add_vec2_i32(~u_input.a, ~vec2<i32>(u_input.a.x, u_input.a.x)) << (_wgslsmith_mult_vec2_u32(select(global1.a.zy, vec2<u32>(1u, global1.a.x), global1.c), global1.a.xx) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x), 24230i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f - _wgslsmith_f_op_f32(-586f + 182f)))) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -182f), -1140f, global1.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1016f)) * _wgslsmith_f_op_f32(1000f - -1000f)))));
    global0 = array<Struct_3, 28>();
    var var_2 = reverseBits(~(~abs(~vec4<u32>(global1.b, 1u, 0u, global1.b))));
    let var_3 = ~(u_input.a ^ -_wgslsmith_div_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)));
    return Struct_4(vec3<u32>(func_3(Struct_2(Struct_1(vec3<bool>(var_1, false, global1.c.x), vec3<bool>(global1.c.x, true, var_1)), vec4<bool>(global1.c.x, var_1, true, false), Struct_1(vec3<bool>(global1.c.x, false, var_1), vec3<bool>(var_1, false, true))), _wgslsmith_mult_u32(~35961u, global1.b & 4294967295u), Struct_1(select(vec3<bool>(global1.c.x, global1.c.x, var_1), vec3<bool>(true, true, var_1), vec3<bool>(global1.c.x, false, true)), !vec3<bool>(false, var_1, true))), 0u, 46556u), ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.b), ~global1.a.xy), global1.b), !(!select(global1.c, vec2<bool>(true, false), var_1)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> vec2<f32> {
    global0 = array<Struct_3, 28>();
    var var_0 = Struct_4(~vec3<u32>(global1.b, arg_0, 91564u) ^ global1.a, reverseBits(global1.a.x), select(select(vec2<bool>(all(vec3<bool>(false, true, arg_1.a.a.x)), arg_1.a.a.x), vec2<bool>(true, 42837u <= arg_0), true), select(vec2<bool>(!arg_1.a.b.x, any(vec4<bool>(true, false, true, arg_1.c.b.x))), !vec2<bool>(arg_1.b.x, global1.c.x), any(vec4<bool>(arg_1.a.b.x, true, true, global1.c.x))), any(!select(vec4<bool>(global1.c.x, global1.c.x, arg_1.c.b.x, false), arg_1.b, false))));
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - -1103f) * _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(floor(1000f)))));
    var_0 = Struct_4(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, var_1.b, var_1.a.x), var_1.a)), vec3<u32>(0u, ~4294967295u, func_2().b)), ~_wgslsmith_add_u32(0u, var_0.a.x) >> (0u % 32u), select(global1.c, select(select(vec2<bool>(true, false), !arg_1.c.a.yz, var_1.c.x), vec2<bool>(false, global1.c.x), !(!global1.c.x)), var_1.c));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1024f, arg_2))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f - -974f) * _wgslsmith_f_op_f32(f32(-1f) * -263f))))));
    global1 = Struct_4(global1.a, ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, global1.b, global1.b) & global1.b, ~0u), vec2<bool>(true, global1.c.x));
    var var_1 = ~global1.a.x;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 278f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-170f, -1343f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -825f) + vec2<f32>(120f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(437f, -1102f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -605f))) - vec2<f32>(1759f, _wgslsmith_f_op_f32(-640f * var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(408f, var_0.x) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2151f, var_0.x), vec2<f32>(1593f, var_0.x))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-856f, _wgslsmith_f_op_f32(-920f * var_0.x)))));
    let var_2 = -30264i;
    global1 = Struct_4(_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(global1.a.x, global1.a.x, _wgslsmith_mult_u32(14777u, ~global1.a.x))), ~(13005u | ~(global1.b & 0u)), vec2<bool>(false, false));
    let var_3 = ~(~global1.b);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1238f))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(288f, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, -1006f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(4294967295u, Struct_2(Struct_1(vec3<bool>(global1.c.x, global1.c.x, false), vec3<bool>(global1.c.x, global1.c.x, true)), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), Struct_1(vec3<bool>(true, global1.c.x, global1.c.x), vec3<bool>(false, true, true))), 593f))), select(!global1.c, select(global1.c, vec2<bool>(global1.c.x, global1.c.x), vec2<bool>(global1.c.x, false)), vec2<bool>(global1.c.x, true)))) - vec2<f32>(_wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(696f - -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(select(var_0.x, 1035f, global1.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, u_input.a);
}

