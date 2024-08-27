struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_5) -> vec3<bool> {
    global0 = arg_1.x;
    var var_0 = Struct_4(Struct_1(~(-22807i), arg_2.c.zwy), arg_0.b);
    global1 = array<Struct_2, 22>();
    var var_1 = Struct_5(arg_2.d.x, ~(~select(vec2<u32>(arg_0.b.a.x, 17935u), var_0.b.a.xx, var_0.a.b.xy)), arg_2.c, vec4<f32>(-1404f, _wgslsmith_f_op_f32(802f - arg_2.d.x), arg_2.d.x, -223f));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * arg_2.d.x) * -2014f))), var_1.d.x, arg_2.a, _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-1f)));
    return arg_2.c.yww;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    return Struct_2(Struct_1(-(~arg_0.x & -u_input.e.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), Struct_1(u_input.e.x, select(func_3(Struct_4(Struct_1(u_input.e.x, vec3<bool>(true, false, false)), Struct_3(u_input.d)), ~u_input.d.xy, Struct_5(1804f, vec2<u32>(0u, u_input.d.x), vec4<bool>(true, false, false, true), vec4<f32>(-2418f, -428f, -1202f, 648f))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), func_3(Struct_4(Struct_1(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x)), vec3<bool>(false, false, true)), Struct_3(u_input.d)), ~(~u_input.d.zx) & _wgslsmith_div_vec2_u32(vec2<u32>(61269u, u_input.d.x), vec2<u32>(u_input.c, 3042u)), Struct_5(164f, abs(u_input.d.xy), vec4<bool>(true, u_input.d.x >= u_input.c, any(vec2<bool>(false, false)), any(vec3<bool>(false, false, true))), vec4<f32>(-729f, 215f, _wgslsmith_div_f32(-545f, -596f), _wgslsmith_f_op_f32(1000f * 2128f)))).xx, _wgslsmith_dot_vec3_u32(~vec3<u32>(10902u, 0u, 21847u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, countOneBits(4294967295u), u_input.a), vec3<u32>(1u, ~4294967295u, ~u_input.c))), Struct_1(~(~arg_0.x & _wgslsmith_mult_i32(arg_0.x, arg_0.x)), vec3<bool>(true, true, all(vec2<bool>(true, false)) || true)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_1(-10547i, !arg_0.a.b);
    var_0 = arg_0.a;
    let var_1 = arg_0.a;
    var var_2 = func_2(firstTrailingBit(~(-vec2<i32>(var_1.a, var_0.a))));
    let var_3 = !select(vec4<bool>(arg_0.a.b.x, false, select(var_0.b.x, !var_1.b.x, true), !var_0.b.x && false), select(select(vec4<bool>(false, var_2.c.x, false, false), vec4<bool>(false, var_2.b.b.x, true, var_2.b.b.x), true), vec4<bool>(var_0.b.x, var_1.b.x, var_2.a.a == arg_0.a.a, var_2.a.b.x), true), func_2(_wgslsmith_add_vec2_i32(u_input.e.zx, vec2<i32>(u_input.e.x, var_1.a))).b.b.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -358f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_1(u_input.e.x, vec3<bool>(true, false, false)), Struct_3(vec3<u32>(u_input.d.x, u_input.d.x, 0u))), vec3<f32>(457f, -1290f, 1160f), Struct_3(u_input.d))), _wgslsmith_f_op_f32(1735f + 911f))))), abs(vec2<u32>(83497u, ~(0u | u_input.c))), select(select(vec4<bool>(select(true, false, true), true, true, func_2(vec2<i32>(9683i, -2147483647i)).a.b.x), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, false, func_3(Struct_4(Struct_1(-38010i, vec3<bool>(false, false, true)), Struct_3(vec3<u32>(u_input.b, u_input.b, 34790u))), u_input.d.xz, Struct_5(584f, u_input.d.zy, vec4<bool>(false, true, true, false), vec4<f32>(2013f, -136f, -1000f, 1398f))).x, false), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1431f + _wgslsmith_f_op_f32(ceil(-1742f))), -768f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1552f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(996f)) - _wgslsmith_f_op_f32(-308f + -514f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1854f, -445f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-127f, -848f)), -2495f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1290f, 432f)) * _wgslsmith_div_f32(2254f, 1000f)), _wgslsmith_div_f32(202f, _wgslsmith_f_op_f32(max(1000f, -1072f)))))));
    let var_1 = Struct_3(vec3<u32>(~(0u >> (1u % 32u)), 0u, _wgslsmith_div_u32(u_input.b, ~var_0.b.x)));
    let var_2 = var_1;
    var var_3 = func_2(u_input.e.zz ^ vec2<i32>(u_input.e.x, u_input.e.x ^ 43543i)).c;
    let var_4 = func_2(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, u_input.e.x), vec2<i32>(1i, -63157i))).b;
    global1 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-min(~u_input.e.x, _wgslsmith_add_i32(var_4.a, u_input.e.x)), abs(-54177i), _wgslsmith_dot_vec2_i32(u_input.e.zz, ~max(vec2<i32>(var_4.a, var_4.a), u_input.e.xy))));
}

