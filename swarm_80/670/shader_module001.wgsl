struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(~u_input.e.wx ^ (u_input.e.wy | ~_wgslsmith_mult_vec2_u32(u_input.e.zw, vec2<u32>(u_input.d, u_input.d))), ~(~firstTrailingBit(~u_input.e.yz)));
    let var_1 = ~u_input.e.wy;
    global0 = array<vec2<f32>, 27>();
    var var_2 = u_input.a.wzx;
    var_0 = _wgslsmith_add_vec2_u32(var_1, ~vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u >> (u_input.e.x % 32u), var_0.x, 1u)));
    return _wgslsmith_f_op_f32(-708f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(536f)) - _wgslsmith_f_op_f32(step(459f, -484f)))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(trunc(543f)), -1658f, -1429f), vec4<f32>(_wgslsmith_f_op_f32(1000f - 103f), _wgslsmith_f_op_f32(max(-382f, -292f)), -363f, -506f)))), _wgslsmith_mult_i32(-26560i, max(1i, -1i)));
    var var_1 = Struct_2(Struct_1(var_0.a, _wgslsmith_clamp_i32(~arg_0.x, var_0.b, -u_input.c ^ -var_0.b)), arg_2.x, var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(922f, _wgslsmith_f_op_f32(-1541f - _wgslsmith_f_op_f32(sign(var_0.a.x)))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(var_0.a.x - 908f))));
    var_1 = Struct_2(var_1.c, arg_2.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.d.x)), var_1.c.a.x, _wgslsmith_f_op_f32(max(var_0.a.x, var_1.c.a.x)), -620f)), -38580i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.a.zx), _wgslsmith_f_op_vec2_f32(var_0.a.wy - vec2<f32>(-443f, 110f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d * global0[_wgslsmith_index_u32(arg_1.x, 27u)]) - _wgslsmith_div_vec2_f32(var_1.c.a.xz, vec2<f32>(-986f, 444f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.a.a.xw))))));
    global0 = array<vec2<f32>, 27>();
    var var_2 = arg_2.x;
    return Struct_2(Struct_1(var_0.a, -abs(var_0.b)), true, Struct_1(var_1.a.a, 1051i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -629f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-323f * 258f), var_0.a.x, !arg_2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.a.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(567f, var_0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a.x, var_1.d.x)), true)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<f32>, 27>();
    let var_0 = arg_0.b;
    let var_1 = func_2(vec3<i32>(_wgslsmith_sub_i32(26989i, 1i), -arg_0.c.b, arg_0.a.b) | u_input.a.wzy, u_input.e, !(!vec2<bool>(false, any(vec3<bool>(var_0, arg_0.b, true)))));
    let var_2 = -(~(-u_input.a.xx));
    return func_2(-(~(u_input.a.yzz << (vec3<u32>(u_input.d, u_input.d, u_input.d) % vec3<u32>(32u)))), u_input.e, vec2<bool>(arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1073f * var_1.d.x), _wgslsmith_f_op_f32(var_1.c.a.x * 418f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) * -1330f))).a;
}

fn func_1(arg_0: f32) -> bool {
    global0 = array<vec2<f32>, 27>();
    var var_0 = Struct_2(func_4(func_2(-abs(vec3<i32>(u_input.b, -1i, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(8281u, 51424u, 90509u, u_input.d), vec4<u32>(4294967295u, u_input.e.x, 13571u, 74381u)) ^ u_input.e, vec2<bool>(all(vec2<bool>(false, true)), false)), global0[_wgslsmith_index_u32(u_input.e.x, 27u)], _wgslsmith_f_op_f32(-arg_0)), true, func_2(-(~(u_input.a.zyx << (vec3<u32>(u_input.d, 1u, 13835u) % vec3<u32>(32u)))), u_input.e ^ ~vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, u_input.d), vec2<bool>(true, true)).c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(u_input.d >> (u_input.d % 32u), 27u)])))));
    let var_1 = var_0.c;
    let var_2 = u_input.e.x;
    global0 = array<vec2<f32>, 27>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<vec2<f32>, 27>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(259f, -1630f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1746f * -384f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(351f + 1310f)))))));
    var var_2 = !vec2<bool>(any(vec4<bool>(true, func_1(var_1.x), true, false)), true);
    var var_3 = -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(9989i, -2147483647i, var_0.x, -10113i), ~(~var_0)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, 2147483647i, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, 1378i), vec4<i32>(631i, var_0.x, 1i, 0i))) >> (~(~u_input.e) % vec4<u32>(32u)));
    var_3 = abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c >> (countOneBits(u_input.d) % 32u), firstTrailingBit(u_input.a.x >> (u_input.d % 32u)), -(~(-7991i)), var_3.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, -2147483647i)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(723f, -2001f))));
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1366f, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) - _wgslsmith_f_op_f32(round(200f))), true))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.xz)) * var_1.zx))))));
    let var_6 = select(!select(vec2<bool>(var_2.x, var_3.x <= var_3.x), !(!vec2<bool>(var_2.x, var_2.x)), true), !select(select(!vec2<bool>(true, var_2.x), !vec2<bool>(var_2.x, var_2.x), true), select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, false), false), vec2<bool>(var_2.x, false), vec2<bool>(true, var_2.x)), !select(vec2<bool>(var_2.x, true), vec2<bool>(true, true), var_2.x)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-_wgslsmith_clamp_i32(var_0.x, -16526i, -2147483647i), 0i), ~vec3<u32>(abs(27387u), u_input.e.x, 37299u & u_input.d) << (~vec3<u32>(countOneBits(u_input.d), 36570u, firstTrailingBit(4294967295u)) % vec3<u32>(32u)));
}

