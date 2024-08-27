struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec3<bool> {
    let var_0 = ~(~u_input.b.xxz);
    var var_1 = ~_wgslsmith_add_u32(var_0.x, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_0.x, 1u), 1u));
    var var_2 = arg_0.b.b || !(!select(true, !arg_0.d.a.x, arg_1.d));
    let var_3 = arg_1;
    let var_4 = false;
    return !select(vec3<bool>(!arg_1.a.x || true, any(vec4<bool>(arg_0.b.d, false, arg_0.d.a.x, var_3.d)), true), select(!vec3<bool>(false, arg_2.x, arg_2.x), select(select(vec3<bool>(arg_1.b, false, true), vec3<bool>(true, arg_0.b.a.x, arg_1.d), arg_1.d), vec3<bool>(arg_0.d.a.x, true, false), any(vec2<bool>(true, false))), select(select(vec3<bool>(arg_1.d, var_4, arg_2.x), vec3<bool>(true, true, true), arg_2.x), select(vec3<bool>(var_4, var_3.d, arg_2.x), vec3<bool>(true, var_3.b, arg_1.d), arg_0.d.d), true)), vec3<bool>(arg_1.d, arg_1.d, arg_0.b.b));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = !func_3(Struct_2(~(~vec2<i32>(u_input.a, -2147483647i)), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -1047f, arg_0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, 343f, 1813f) * vec3<f32>(-443f, -602f, -2553f))), Struct_1(select(arg_0.a, arg_0.a, false), arg_0.d, -2474f, !arg_0.b, vec2<i32>(59659i, u_input.a))), Struct_1(vec2<bool>(arg_0.d, arg_0.c >= arg_0.c), arg_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1112f))), all(select(arg_0.a, vec2<bool>(arg_0.b, arg_0.a.x), true)), arg_0.e), !vec2<bool>(true, !arg_0.d), u_input.b.wz);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1310f, arg_0.c, arg_0.c), vec3<f32>(-1000f, 1691f, arg_0.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 120f, arg_0.c) * vec3<f32>(arg_0.c, -2378f, arg_0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, arg_0.c) + vec3<f32>(arg_0.c, arg_0.c, 146f))))))));
    var var_2 = Struct_3(u_input.b.wy);
    return arg_0.e.x;
}

fn func_4(arg_0: i32, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = 1f;
    var var_1 = Struct_1(select(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true), u_input.b.x <= 54493u), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(-322f + var_0) < -858f), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true))), firstTrailingBit(0i) > _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, arg_0, 30660i), vec4<i32>(arg_0, 0i, 62295i, 32756i)), 2147483647i), -_wgslsmith_add_i32(u_input.a, 1i)), var_0, false, ~vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(arg_0, arg_0)), vec2<i32>(u_input.a, u_input.a)), 1i));
    var var_2 = Struct_5(vec2<i32>(arg_0 >> (4294967295u % 32u), -_wgslsmith_sub_i32(-arg_0, -u_input.a)));
    var var_3 = u_input.b.zy;
    var var_4 = abs(var_1.e.x);
    return var_2.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>) -> bool {
    var var_0 = Struct_1(vec2<bool>(false, false & any(!vec4<bool>(arg_0.x, false, arg_0.x, false))), !arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -734f))), true, _wgslsmith_clamp_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 32696i), vec2<i32>(-14541i, -2147483647i))), max(vec2<i32>(0i, 0i), func_4(func_2(Struct_1(vec2<bool>(false, false), arg_0.x, arg_1, true, vec2<i32>(-10948i, 10173i))), vec4<u32>(u_input.b.x, u_input.b.x, 29934u, 1u))), vec2<i32>(-u_input.a, -1i)));
    var var_1 = -65379i;
    var var_2 = select(arg_0, select(func_3(Struct_2(vec2<i32>(-4394i, 1i), Struct_1(var_0.a, true, var_0.c, arg_0.x, var_0.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-352f, arg_2.x, var_0.c), vec3<f32>(var_0.c, -196f, 930f), vec3<bool>(var_0.d, var_0.a.x, true))), Struct_1(var_0.a, true, -2085f, var_0.d, vec2<i32>(-2831i, u_input.a))), Struct_1(var_0.a, true, _wgslsmith_f_op_f32(trunc(-494f)), !var_0.a.x, abs(vec2<i32>(u_input.a, -1i))), !arg_0, _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 640u), vec2<u32>(22190u, u_input.b.x))).yx, select(!func_3(Struct_2(var_0.e, Struct_1(arg_0, true, var_0.c, false, var_0.e), arg_2.zwz, Struct_1(arg_0, var_0.d, 518f, arg_0.x, var_0.e)), Struct_1(var_0.a, true, arg_1, true, vec2<i32>(-2147483647i, -2147483647i)), var_0.a, vec2<u32>(4294967295u, 64312u)).yy, !func_3(Struct_2(vec2<i32>(-10136i, -1i), Struct_1(vec2<bool>(true, true), var_0.d, 1446f, var_0.d, var_0.e), vec3<f32>(arg_2.x, -694f, arg_2.x), Struct_1(vec2<bool>(arg_0.x, true), true, 921f, false, var_0.e)), Struct_1(var_0.a, var_0.d, var_0.c, var_0.b, vec2<i32>(0i, var_0.e.x)), var_0.a, vec2<u32>(0u, u_input.b.x)).zx, arg_0.x), !var_0.a.x), true);
    let var_3 = any(select(vec4<bool>(!(!var_2.x), var_2.x, any(vec3<bool>(true, true, var_2.x)) | var_2.x, any(!vec4<bool>(true, arg_0.x, arg_0.x, true))), select(select(!vec4<bool>(var_2.x, true, true, arg_0.x), vec4<bool>(arg_0.x, var_2.x, var_2.x, arg_0.x), !vec4<bool>(var_0.b, false, var_0.a.x, true)), vec4<bool>(func_3(Struct_2(var_0.e, Struct_1(var_0.a, true, arg_1, false, vec2<i32>(u_input.a, var_0.e.x)), vec3<f32>(arg_2.x, var_0.c, -661f), Struct_1(vec2<bool>(var_2.x, var_2.x), arg_0.x, arg_1, true, vec2<i32>(u_input.a, u_input.a))), Struct_1(var_0.a, var_0.b, var_0.c, true, vec2<i32>(u_input.a, u_input.a)), vec2<bool>(var_0.d, var_2.x), u_input.b.ww).x, u_input.a == 0i, true, true), select(select(vec4<bool>(false, var_2.x, arg_0.x, false), vec4<bool>(var_0.a.x, arg_0.x, var_2.x, false), vec4<bool>(false, true, var_2.x, arg_0.x)), select(vec4<bool>(arg_0.x, arg_0.x, var_0.d, true), vec4<bool>(var_2.x, arg_0.x, true, false), vec4<bool>(var_2.x, false, true, var_2.x)), arg_0.x)), vec4<bool>(arg_0.x, !arg_0.x, var_2.x, all(select(vec3<bool>(true, var_0.b, arg_0.x), vec3<bool>(false, var_2.x, false), vec3<bool>(false, true, false))))));
    var var_4 = Struct_3(abs(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b.zy, u_input.b.zy, vec2<u32>(45872u, u_input.b.x)), countOneBits(vec2<u32>(u_input.b.x, 5456u))))));
    return !var_3;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x >> (u_input.b.x % 32u)) << (4294967295u % 32u), ~(~(~_wgslsmith_mult_u32(u_input.b.x, 4294967295u))));
    let var_2 = Struct_5(vec2<i32>(-1i) * -(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -50398i), vec2<bool>(arg_0, arg_0)) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))));
    var var_3 = Struct_4(~(var_0 << (u_input.b.x % 32u)), 0u, func_1(vec2<bool>(false, arg_0), _wgslsmith_div_f32(153f, _wgslsmith_f_op_f32(floor(-1032f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(281f)) * _wgslsmith_f_op_f32(2349f + 439f)), _wgslsmith_f_op_f32(-1428f - _wgslsmith_f_op_f32(1738f + -1093f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -236f))))));
    var var_4 = vec2<u32>(_wgslsmith_add_u32(~var_3.a & 1u, ~(~u_input.b.x)) & 10645u, min(~1u, countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, 0u, var_0, var_1.x), vec4<u32>(var_3.b, 21923u, 4294967295u, u_input.b.x)), var_0))));
    return Struct_1(vec2<bool>(true, false), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f + -925f) * _wgslsmith_f_op_f32(-155f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-579f, -1026f)) + -1000f))), var_3.c, min(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-42929i, -52471i), var_2.a | var_2.a), vec2<i32>(i32(-1i) * -1i, ~var_2.a.x)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(any(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false), false), vec2<bool>(true, true), true || func_1(vec2<bool>(true, true), 1000f, vec4<f32>(1239f, -253f, 344f, -1000f)))));
    var var_1 = Struct_4(1u, u_input.b.x, var_0.e.x >= -1i);
    var_1 = Struct_4(~63997u, var_1.a, true);
    var_1 = Struct_4(firstTrailingBit(_wgslsmith_mod_u32(var_1.b, 50503u)), _wgslsmith_mod_u32(33604u, 39687u) << ((var_1.a << (var_1.a % 32u)) % 32u), !(1342f > var_0.c));
    var var_2 = ~var_1.a << (~var_1.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, func_5(!var_1.c).c, -1516f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1325f, -369f, _wgslsmith_f_op_f32(min(var_0.c, 1000f)), 1000f)) - vec4<f32>(815f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c + var_0.c), _wgslsmith_div_f32(828f, -542f)), var_0.c, _wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_dot_vec2_i32(~reverseBits(var_0.e >> (u_input.b.ww % vec2<u32>(32u))), -var_0.e));
}

