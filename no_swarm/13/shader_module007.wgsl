struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, 315f, arg_0.x, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x), -840f))));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(firstTrailingBit(u_input.a), arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(34804i, u_input.a, -12747i), vec3<i32>(2147483647i, u_input.a, 0i)), reverseBits(vec3<i32>(u_input.a, u_input.a, -72600i)), abs(vec3<i32>(-1i, -1i, u_input.a))), -(~vec3<i32>(-1i, 2147483647i, u_input.a))), arg_0, -2147483647i), vec4<i32>(13228i, min(min(55512i, arg_0), _wgslsmith_div_i32(1i, i32(-1i) * -1i)), u_input.a, ~arg_0));
    var var_1 = select(select(vec3<bool>(select(any(vec2<bool>(true, true)), true, true), false, false), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), false), vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, true, true)), vec3<bool>(true, !any(vec4<bool>(false, false, false, true)), false)), vec3<bool>(select(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), true, true), true, true), vec3<bool>(true, true, !any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))));
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(u_input.a, arg_0 >> (0u % 32u)) ^ abs(5448i & u_input.a), arg_0, ~0i) | ~(-vec3<i32>(var_0, _wgslsmith_sub_i32(arg_0, arg_0), -34559i));
    let var_3 = !var_1.yy;
    let var_4 = _wgslsmith_add_vec2_i32(var_2.yz, -max(_wgslsmith_sub_vec2_i32(var_2.xz << (vec2<u32>(1u, 38285u) % vec2<u32>(32u)), vec2<i32>(var_0, -19258i)), var_2.zy));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1000f, 1318f) + vec4<f32>(1393f, arg_1, 185f, 771f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -563f, -1000f, arg_1) - vec4<f32>(1313f, 1447f, -1000f, 171f)), select(vec4<bool>(false, true, var_3.x, var_1.x), vec4<bool>(var_1.x, var_3.x, false, false), vec4<bool>(false, var_3.x, false, var_1.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - 1062f), arg_1, arg_1)), any(vec2<bool>(var_3.x, var_1.x)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_2.yw;
    var var_1 = (-1i << ((firstTrailingBit(1u) << (~(~72432u) % 32u)) % 32u)) == -2147483647i;
    var_1 = !all(!(!vec3<bool>(false, false, arg_1.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(min(arg_1.c.x, 2147483647i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), -895f, arg_1.a.x))));
    let var_3 = Struct_1(!(!arg_1.a), arg_2.x, -(~arg_1.c));
    return Struct_1(arg_0.xy, _wgslsmith_div_f32(885f, -629f), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(vec4<bool>(!(~14840i < _wgslsmith_mult_i32(u_input.a, u_input.a)), !any(vec2<bool>(true, false)), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), all(vec3<bool>(true, true, false))), Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-625f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-859f * 593f))), vec3<i32>(_wgslsmith_div_i32(abs(u_input.a), u_input.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 24195i, 1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_sub_i32(u_input.a, u_input.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1434f, 1479f, 757f, 1152f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -325f, 1333f, -242f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1283f, 672f, -528f, -866f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, -2870f, 320f, 1022f))), vec4<bool>(false, true, true, any(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(188f, -1809f, -905f), vec2<i32>(-15384i, u_input.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1352f, -462f, 815f, 732f))))));
    var var_1 = var_0.c.x << (~94302u % 32u);
    let var_2 = func_2(!(!select(!vec4<bool>(false, true, var_0.a.x, true), !vec4<bool>(var_0.a.x, var_0.a.x, true, true), any(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x)))), Struct_1(var_0.a, _wgslsmith_f_op_f32(min(-723f, _wgslsmith_f_op_f32(f32(-1f) * -1271f))), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(-2147483647i, 1572i, var_0.c.x)), select(u_input.a, var_0.c.x, var_0.a.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -2147483647i, 57144i), vec4<i32>(23673i, -1286i, -1i, 2147483647i)), -9725i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(449f, 502f, var_0.b, var_0.b)), vec4<f32>(var_0.b, var_0.b, var_0.b, var_0.b)))));
    let var_3 = false;
    var var_4 = Struct_2(var_2, select(select(vec3<bool>(var_3, var_3, all(vec3<bool>(false, var_0.a.x, var_3))), select(vec3<bool>(false, var_3, var_3), select(vec3<bool>(false, var_3, var_0.a.x), vec3<bool>(false, var_2.a.x, var_3), vec3<bool>(var_2.a.x, false, var_0.a.x)), !var_3), false), select(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(true, true, true), var_3), select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(true, false, false), true), !(!vec3<bool>(var_3, var_3, var_3))), select(!select(vec3<bool>(var_2.a.x, true, false), vec3<bool>(var_3, false, var_3), false), vec3<bool>(false, !var_0.a.x, true), select(vec3<bool>(false, true, var_2.a.x), select(vec3<bool>(var_2.a.x, var_2.a.x, var_3), vec3<bool>(var_3, var_3, var_0.a.x), var_0.a.x), select(vec3<bool>(var_2.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, true, false), var_2.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), 207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * 1000f)), 165f));
    var_1 = -29471i;
    var var_5 = 1u;
    var_5 = abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(78214u, 0u) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18148u, 101728u, 0u), vec4<u32>(1u, 0u, 1u, 65048u)) % 32u), _wgslsmith_div_u32(68013u, abs(1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

