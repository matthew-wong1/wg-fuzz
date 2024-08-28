struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_3,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4) -> f32 {
    let var_0 = Struct_4(firstTrailingBit(min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(10289u, 86456u, u_input.e, arg_2.c.b.x) << (vec4<u32>(u_input.e, arg_2.d, arg_2.a, u_input.e) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 1u, 63835u, u_input.e)))), _wgslsmith_f_op_f32(step(633f, arg_2.c.a.a.a)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)), _wgslsmith_f_op_vec4_f32(-arg_2.c.c.a.b))), vec3<u32>(arg_2.c.b.x, arg_2.c.b.x, ~1u), arg_2.c.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(max(-1000f, 437f)), arg_2.c.d.a.b)), select(select(select(vec2<bool>(arg_2.c.e.x, false), vec2<bool>(false, false), true), select(arg_2.c.e, arg_2.c.e, true), vec2<bool>(false, arg_0)), select(select(vec2<bool>(true, false), vec2<bool>(arg_2.c.e.x, false), arg_2.c.e), !vec2<bool>(true, arg_2.c.e.x), vec2<bool>(false, false)), any(select(vec4<bool>(arg_2.c.e.x, arg_2.c.e.x, true, arg_2.c.e.x), vec4<bool>(arg_2.c.e.x, arg_2.c.e.x, false, arg_2.c.e.x), arg_0)))), reverseBits(~(~_wgslsmith_add_u32(arg_2.d, 38040u))), _wgslsmith_f_op_vec3_f32(arg_2.c.c.a.b.yww - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 - arg_2.e) + _wgslsmith_f_op_vec3_f32(step(arg_2.e, vec3<f32>(arg_2.c.a.a.a, arg_2.e.x, -941f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, 639f) + arg_1), vec3<f32>(arg_2.e.x, arg_2.c.d.a.b.x, arg_1.x), true)), any(vec3<bool>(true, true, true))))));
    let var_1 = var_0.c.d.a;
    let var_2 = var_0.c.e.x | true;
    let var_3 = -22768i;
    var var_4 = !select(!select(select(vec3<bool>(true, arg_0, arg_2.c.e.x), vec3<bool>(arg_2.c.e.x, var_0.c.e.x, arg_0), arg_2.c.e.x), !vec3<bool>(false, var_0.c.e.x, var_0.c.e.x), var_2), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2.c.e.x, false), arg_2.c.e.x), vec3<bool>(true, var_2, false), false), !select(vec3<bool>(arg_2.c.e.x, arg_0, false), vec3<bool>(var_0.c.e.x, true, false), var_0.c.e.x), arg_0 & any(vec4<bool>(var_0.c.e.x, arg_2.c.e.x, var_0.c.e.x, arg_0))), false || arg_2.c.e.x);
    return -1464f;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(200f, _wgslsmith_f_op_f32(647f * 1704f), true)), 340f), vec4<f32>(-114f, -631f, 1843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-898f + 211f) * -100f))));
    let var_1 = var_0.a.b.zyy;
    let var_2 = Struct_3(var_0, ~(~(~vec3<u32>(u_input.a.x, 0u, 69676u))), Struct_2(var_0.a), var_0, vec2<bool>(true, false));
    var var_3 = vec3<bool>(all(!(!select(vec3<bool>(var_2.e.x, var_2.e.x, var_2.e.x), vec3<bool>(var_2.e.x, true, var_2.e.x), var_2.e.x))), true, !(_wgslsmith_f_op_f32(ceil(var_2.a.a.b.x)) == 1f));
    var var_4 = Struct_4(var_2.b.x, _wgslsmith_f_op_f32(trunc(-793f)), var_2, ~var_2.b.x, vec3<f32>(var_1.x, var_2.a.a.b.x, _wgslsmith_f_op_f32(var_2.d.a.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1671f + var_1.x) + _wgslsmith_f_op_f32(func_3(var_2.e.x, var_1, Struct_4(0u, 1597f, Struct_3(var_0, u_input.a, var_2.d, var_0, var_3.yx), var_2.b.x, vec3<f32>(var_0.a.b.x, var_1.x, 920f))))))));
    return var_4.c;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_4(u_input.a.x, arg_0, func_2(), u_input.e, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(749f, arg_0, 1469f), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(415f, arg_0, arg_0)))))), vec3<f32>(-745f, 1664f, _wgslsmith_f_op_f32(-1416f * -593f))));
    let var_1 = firstTrailingBit(-(u_input.d.xw ^ vec2<i32>(-40929i, 2147483647i))) << (u_input.a.yx % vec2<u32>(32u));
    let var_2 = firstLeadingBit(-u_input.d);
    var var_3 = Struct_4(var_0.c.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(-arg_0)), var_0.c, firstLeadingBit(_wgslsmith_mult_u32(select(u_input.a.x, 0u, any(vec4<bool>(var_0.c.e.x, var_0.c.e.x, false, true))), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(func_2().d.a.b.wzy)), vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.c.d.a.a)), _wgslsmith_f_op_f32(-arg_0), -494f), true)) + vec3<f32>(_wgslsmith_f_op_f32(func_3(any(vec4<bool>(false, false, var_0.c.e.x, var_0.c.e.x)), vec3<f32>(var_0.c.a.a.a, var_0.e.x, arg_0), Struct_4(u_input.e, -365f, var_0.c, var_0.d, var_0.e))), 446f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, var_0.b)))));
    let var_4 = ~(-2147483647i);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.c.c.a.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) * -927f), 1224f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-516f - var_3.c.c.a.a)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(-261f), _wgslsmith_sub_vec3_u32(select(u_input.a, _wgslsmith_div_vec3_u32(select(u_input.a, vec3<u32>(0u, 4294967295u, 21875u), vec3<bool>(true, true, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 0u, 4294967295u), u_input.a)), true), u_input.a), Struct_2(func_1(952f).a), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(475f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-733f)), _wgslsmith_f_op_f32(-1083f * -235f), _wgslsmith_f_op_f32(func_3(true, vec3<f32>(-709f, -1000f, -105f), Struct_4(4294967295u, 731f, Struct_3(Struct_2(Struct_1(1243f, vec4<f32>(922f, -1089f, 935f, 651f))), vec3<u32>(u_input.e, u_input.a.x, u_input.e), Struct_2(Struct_1(1307f, vec4<f32>(284f, 283f, -892f, -293f))), Struct_2(Struct_1(-626f, vec4<f32>(1283f, -277f, -1873f, 347f))), vec2<bool>(false, false)), 1u, vec3<f32>(697f, 1000f, 174f)))), _wgslsmith_f_op_f32(step(-1124f, -1000f))))), !vec2<bool>(all(vec4<bool>(true, true, false, false)) & all(vec2<bool>(true, false)), true));
    let var_1 = ~(-_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(1i, -2147483647i)), abs(-9115i) ^ u_input.c));
    var var_2 = vec4<bool>(false, select(!var_0.e.x, !var_0.e.x, any(vec4<bool>(true, var_0.e.x, var_0.e.x, u_input.e <= 4294967295u))), ~(-countOneBits(u_input.d.x)) > _wgslsmith_mult_i32(var_1, var_1 & -u_input.d.x), !(var_0.e.x | select(any(var_0.e), var_0.e.x & var_0.e.x, all(vec3<bool>(false, var_0.e.x, var_0.e.x)))));
    var var_3 = -abs(-(~u_input.d));
    var var_4 = -151f;
    var_3 = ~_wgslsmith_sub_vec4_i32(max(vec4<i32>(-1i) * -u_input.d, u_input.d), u_input.d);
    var var_5 = vec3<f32>(var_0.a.a.b.x, _wgslsmith_f_op_f32(816f * func_2().c.a.b.x), _wgslsmith_f_op_f32(-var_0.c.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_0.b.xz & u_input.a.zz, ~(~(~vec2<u32>(4294967295u, u_input.a.x)))));
}

