struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: u32;

var<private> global1: i32 = 0i;

var<private> global2: f32 = -890f;

var<private> global3: vec2<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(firstTrailingBit(-(~vec2<i32>(u_input.c.x, -10371i))), !(!(!any(vec3<bool>(true, true, false)))), true, all(vec4<bool>(true, true, true, true)));
    let var_1 = Struct_1(vec2<i32>(~(-countOneBits(0i)), 1i), false == !var_0.d, var_0.c, var_0.c);
    global1 = _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(abs(u_input.c), ~firstTrailingBit(~vec4<i32>(var_0.a.x, var_0.a.x, -1i, u_input.c.x)), abs(~(vec4<i32>(-1i, var_1.a.x, -2147483647i, 21804i) << (vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))))));
    let var_2 = var_1;
    var var_3 = var_1.d;
    return vec2<u32>(5515u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, global3.x), u_input.a.x << (5626u % 32u))) >> (abs(~(u_input.a.zy >> (u_input.a.xx % vec2<u32>(32u)))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<f32> {
    global3 = _wgslsmith_clamp_vec2_u32(func_3(), u_input.a.zw, _wgslsmith_mult_vec2_u32(func_3(), firstTrailingBit(u_input.a.xx)));
    let var_0 = ~u_input.b & abs(countOneBits(~35197u) << (global3.x % 32u));
    let var_1 = arg_2;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) * arg_0.x), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), 1166f);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    global3 = _wgslsmith_mult_vec2_u32(~u_input.a.zx, vec2<u32>(~min(~global3.x, _wgslsmith_sub_u32(26504u, u_input.a.x)), u_input.a.x));
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.c.x, 0i), vec2<i32>(firstLeadingBit(u_input.c.x), u_input.c.x)), !(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), false, true | all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(-_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(u_input.c.x, var_0.a.x)), -vec2<i32>(-10918i, var_0.a.x)), reverseBits(var_0.a), vec2<i32>(arg_1, ~_wgslsmith_clamp_i32(arg_1, arg_1, u_input.c.x))), !(!var_0.d), true, all(vec3<bool>(any(vec3<bool>(var_0.d, var_0.d, var_0.d)), var_0.c & var_0.c, !any(vec3<bool>(false, true, var_0.b)))));
    global3 = _wgslsmith_add_vec2_u32(u_input.a.yx, u_input.a.yw);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(arg_0)), any(vec4<bool>(true, var_0.d, false, true)), Struct_1(var_0.a, false, true, false))).x, _wgslsmith_f_op_f32(-arg_0.x))) - -1050f);
}

fn func_5(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.a.x;
    var var_1 = !(!select(vec4<bool>(any(vec3<bool>(false, false, false)), false, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1010f - _wgslsmith_f_op_f32(max(arg_0, 599f))));
    global1 = 1i;
    let var_3 = 0u;
    return Struct_1(max(-select(~u_input.c.xy, u_input.c.zx, true), vec2<i32>(reverseBits(1i), ~_wgslsmith_dot_vec2_i32(u_input.c.zy, u_input.c.xy))), _wgslsmith_div_i32(~u_input.c.x, countOneBits(1i)) == u_input.c.x, any(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, true))), var_1.x);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-572f - 218f)) - _wgslsmith_f_op_f32(-282f * -1435f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1404f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -547f)))));
    let var_1 = (~reverseBits(4294967295u | global3.x) << (37781u % 32u)) ^ 16064u;
    var var_2 = func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, var_0, var_0, var_0)), _wgslsmith_f_op_f32(-594f * var_0) > _wgslsmith_f_op_f32(max(644f, var_0)), Struct_1(_wgslsmith_mod_vec2_i32(u_input.c.xz, vec2<i32>(u_input.c.x, u_input.c.x)), select(true, false, true), any(vec2<bool>(true, true)), true))), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), -u_input.c))));
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222f - var_0) - _wgslsmith_f_op_f32(f32(-1f) * -447f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = vec4<i32>(u_input.c.x, _wgslsmith_div_i32(49708i, u_input.c.x >> (~(~u_input.b) % 32u)), -2147483647i, abs(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), max(_wgslsmith_div_i32(-590i, 2147483647i), -u_input.c.x))));
    var var_1 = vec3<bool>(true, select(true, _wgslsmith_mult_u32(u_input.b, global3.x ^ 35674u) >= global3.x, !select(false, true, any(vec4<bool>(false, true, false, false)))), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1141f);
    var_0 = abs(u_input.c);
    let var_3 = func_1();
    var_1 = vec3<bool>(true, !(global3.x == _wgslsmith_sub_u32(global3.x, firstTrailingBit(1u))), var_3.d && (_wgslsmith_sub_i32(0i, 42391i) >= -(~u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.x));
}

