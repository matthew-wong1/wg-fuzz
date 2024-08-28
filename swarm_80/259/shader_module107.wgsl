struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, ~_wgslsmith_sub_u32(global0.a, global0.a), _wgslsmith_sub_u32(30658u, global0.a) >> (1u % 32u)), vec3<u32>(min(~global0.a, global0.a), 4294967295u, global0.a), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.a, 32710u, global0.a), select(vec3<u32>(global0.a, 30289u, 0u), vec3<u32>(25641u, 47909u, global0.a), vec3<bool>(arg_0.x, false, true)))), !vec2<bool>(all(arg_0) != arg_0.x, true));
    global0 = Struct_3(1u);
    let var_1 = _wgslsmith_mult_vec3_i32(arg_1, vec3<i32>(-16590i, reverseBits(_wgslsmith_sub_i32(firstLeadingBit(0i), 2147483647i)), _wgslsmith_mod_i32(80174i, _wgslsmith_dot_vec2_i32(~arg_1.yy, arg_1.xx))));
    var var_2 = Struct_2(var_0.a.yz);
    let var_3 = u_input.a;
    return _wgslsmith_mod_u32(global0.a, ~(~38862u));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(func_3(vec2<bool>(_wgslsmith_div_u32(arg_2.a.x, 4294967295u) >= 0u, arg_0.x), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, 0i), -43454i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<i32>(0i, 1i, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(2150f, 127f, arg_1.x)))) - -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * -546f), -1719f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-815f, 1253f), vec2<f32>(-448f, -584f)))))));
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(68518u, reverseBits(arg_2.a.x)), 31461u), _wgslsmith_clamp_vec2_u32(min(arg_2.a, vec2<u32>(17348u, arg_2.a.x)), _wgslsmith_mult_vec2_u32(~arg_2.a, vec2<u32>(12359u, arg_2.a.x)), arg_2.a), _wgslsmith_div_vec2_u32(select(abs(vec2<u32>(40876u, arg_2.a.x)), vec2<u32>(31699u, 45695u), arg_1.x), ~(vec2<u32>(80156u, global0.a) >> (arg_2.a % vec2<u32>(32u))))));
    var var_1 = Struct_2(arg_2.a);
    let var_2 = arg_0.wz;
    global0 = Struct_3(~3258u << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(4294967295u, 1u) >> (countOneBits(0u) % 32u), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.x, arg_2.a.x), 1u)) % 32u));
    return Struct_3(arg_2.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec3<bool> {
    global0 = func_2(!vec4<bool>(_wgslsmith_add_u32(4294967295u, arg_0.x) <= arg_2.a.x, true, arg_2.b.x, !(!arg_2.b.x)), arg_2.b, Struct_2(vec2<u32>(~arg_2.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.x, arg_2.a.x, arg_0.x, 4294967295u), arg_0), arg_0))));
    global0 = Struct_3(_wgslsmith_add_u32(~abs(1u), arg_2.a.x));
    global0 = func_2(vec4<bool>(false, false, !all(!vec4<bool>(false, arg_2.b.x, false, arg_2.b.x)), any(!(!vec3<bool>(true, true, arg_2.b.x)))), !(!select(select(arg_2.b, vec2<bool>(arg_2.b.x, false), false), select(vec2<bool>(true, true), arg_2.b, true), vec2<bool>(true, false))), Struct_2(arg_2.a.zx));
    let var_0 = vec2<i32>(44257i, u_input.b.x);
    let var_1 = Struct_2(~arg_0.yw);
    return vec3<bool>(1u > (12643u | countOneBits(select(65261u, 34112u, true))), any(!(!vec4<bool>(false, true, true, arg_2.b.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(-344f));
    var var_1 = -428f != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1670f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(ceil(-220f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), var_0)));
    var_1 = select(all(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), global0.a != ~59135u, all(vec4<bool>(true, true, true, true)));
    let var_2 = select(vec3<bool>(true, true, false), select(vec3<bool>(false, any(vec4<bool>(true, true, true, false)), true), vec3<bool>(false, var_0 != _wgslsmith_f_op_f32(select(1000f, var_0, true)), !all(vec4<bool>(true, true, false, true))), all(vec2<bool>(true, true))), select(func_1(~(~vec4<u32>(global0.a, 12772u, 4294967295u, 14625u)), vec3<i32>(_wgslsmith_div_i32(30998i, -2147483647i), _wgslsmith_mod_i32(20293i, u_input.b.x), -8693i), Struct_1(firstTrailingBit(vec3<u32>(global0.a, 4294967295u, 0u)), vec2<bool>(true, true)), ~min(vec2<u32>(global0.a, global0.a), vec2<u32>(global0.a, 1u))), vec3<bool>(true, true, true), true));
    let var_3 = func_2(!select(select(select(vec4<bool>(var_2.x, true, false, false), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x)), vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(false, var_2.x, true, true)), select(!vec4<bool>(true, var_2.x, true, false), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), false || var_2.x), var_2.x), !vec2<bool>(any(vec2<bool>(var_2.x, var_2.x)), var_2.x || all(vec3<bool>(var_2.x, true, var_2.x))), Struct_2(vec2<u32>(global0.a, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(0i, -2147483647i, -2147483647i, 2147483647i)), -vec4<i32>(1i, -21883i, u_input.b.x, u_input.b.x), -vec4<i32>(-32128i, -9972i, -38306i, u_input.c)), vec4<i32>(u_input.c, u_input.a, u_input.b.x, 0i) >> (~vec4<u32>(87956u, global0.a, global0.a, 19772u) % vec4<u32>(32u)), all(var_2) == var_2.x), 908f, vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, 0i), vec4<i32>(1i, u_input.a, 26162i, -1i), vec4<i32>(-15247i, 2056i, u_input.b.x, 9706i))), abs(select(vec4<i32>(u_input.b.x, u_input.b.x, -24105i, 26634i), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.b.x), false))), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(max(u_input.a, -9006i), u_input.c, _wgslsmith_mod_i32(u_input.c, -2147483647i), 2147483647i), ~(-vec4<i32>(1i, u_input.c, u_input.b.x, -2147483647i))), ~117792i), -671f, global0.a);
}

