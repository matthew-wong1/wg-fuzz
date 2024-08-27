struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -45041i;

var<private> global1: bool;

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    global2 = vec2<bool>(false, any(vec4<bool>(global2.x, true, false && global2.x, global2.x)));
    return vec4<bool>(global2.x, true, all(!vec2<bool>(all(vec2<bool>(global2.x, global2.x)), all(vec2<bool>(global2.x, false)))), true | global2.x);
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = -firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, 46603i), -30614i), vec2<i32>(-1i) * -vec2<i32>(0i, 17365i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -16723i), vec2<i32>(2147483647i, 23873i), vec2<i32>(-16090i, 1i))));
    global0 = 8651i;
    global0 = var_0.x;
    global1 = global2.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) == _wgslsmith_f_op_f32(-arg_0);
    return select(!func_3(), vec4<bool>(global2.x, false, true, true), false);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    let var_0 = !(!select(!(!vec4<bool>(false, true, false, global2.x)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(func_3(), vec4<bool>(true, true, true, true), !vec4<bool>(false, global2.x, global2.x, global2.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(509f, -622f))) - vec2<f32>(-692f, _wgslsmith_f_op_f32(138f * 342f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, 680f))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(max(1178f, -567f)))))));
    var var_3 = Struct_3(select(max(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, 34463i, -2147483647i)), vec3<i32>(-1i, -2147483647i, 12239i)), abs(-23864i)), ~_wgslsmith_mult_i32(0i, -13154i << (0u % 32u)), !var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, -504f)) * 1782f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1593f * var_2.x)))), -vec3<i32>(15164i, -(~(-2147483647i)), -abs(38224i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-8749i), abs(-59825i), _wgslsmith_dot_vec4_i32(vec4<i32>(-64221i, -1i, -22981i, -2147483647i), vec4<i32>(-23352i, 0i, 17736i, -2147483647i))), vec3<i32>(reverseBits(2147483647i), 27121i, _wgslsmith_mult_i32(1i, 103932i))), -vec3<i32>(1i, 0i, _wgslsmith_sub_i32(17726i, -1i)), vec3<i32>(abs(-19278i), i32(-1i) * -2147483647i, min(-67741i, firstTrailingBit(36263i)))));
    global0 = min(abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.x, -16725i, var_3.d.x), vec3<i32>(2147483647i, 1i, 1i))), 12831i);
    return _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 21543u, u_input.a, 44869u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, arg_0), vec4<u32>(9551u, arg_0, arg_0, arg_0))) & ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, arg_0, 4294967295u), vec4<u32>(u_input.a, 9045u, 1u, arg_0)), ~(~(~vec4<u32>(2750u, 88644u, u_input.a, 24484u))), abs(vec4<u32>(55814u, u_input.a << (15353u % 32u), 38514u, arg_0))), vec4<u32>(min(25732u | arg_0, abs(0u)) >> (~min(4294967295u, u_input.a) % 32u), select(_wgslsmith_mult_u32(~u_input.a, ~20476u), u_input.a, global2.x), arg_0, arg_0));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_4(Struct_2(!vec4<bool>(false, !global2.x, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1719f, _wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_div_f32(298f, 2042f), _wgslsmith_f_op_f32(trunc(-1029f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, -647f, -1000f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-298f, -958f, -454f))), vec3<f32>(1f, 1f, 1f)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1348f, _wgslsmith_f_op_f32(-666f + var_0.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1469f + var_0.a.b.x)));
    let var_2 = Struct_1(arg_0 | max(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a, 1u, arg_1), vec4<u32>(0u, u_input.a, u_input.a, arg_0))), vec4<bool>(false, global2.x, true, false));
    global1 = func_3().x;
    global1 = global2.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    var var_0 = vec3<bool>(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 47093u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), vec4<u32>(u_input.a, 19660u, u_input.a, 1u)), vec4<u32>(min(23289u, 17550u), 1u, u_input.a, 39395u)) <= u_input.a, true, true);
    var var_1 = 606f;
    global1 = func_4(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(func_1(6921u), countOneBits(vec4<u32>(4294967295u, u_input.a, 1u, 10208u))) & ~(~u_input.a), _wgslsmith_dot_vec4_u32(~func_1(5834u), vec4<u32>(6096u, ~u_input.a, 4294967295u, ~u_input.a))), u_input.a, ~min(~select(vec3<i32>(-1i, 0i, -26702i), vec3<i32>(-2147483647i, -1i, -6328i), false), -countOneBits(vec3<i32>(74179i, -16971i, 2147483647i))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f))));
    let var_3 = ~(~(~vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -13380i, _wgslsmith_mod_i32(2147483647i, 14404i))));
    var var_4 = -717f;
    let var_5 = var_3.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

