struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec3<i32> {
    global0 = _wgslsmith_sub_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(u_input.c.wz << (u_input.a.zy % vec2<u32>(32u)), (-u_input.c.yw ^ -vec2<i32>(-17969i, 37089i)) << (~countOneBits(vec2<u32>(1u, 0u)) % vec2<u32>(32u))));
    global0 = vec2<i32>(select(31199i, _wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.c.zx), true), -_wgslsmith_clamp_i32(-firstTrailingBit(-1i), global0.x, 0i));
    let var_0 = _wgslsmith_f_op_f32(floor(1019f));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(74191i, 2147483647i, 5200i, 2147483647i)), max(vec4<i32>(1i, u_input.b, 2147483647i, -2147483647i), vec4<i32>(2147483647i, global0.x, global0.x, global0.x) >> (u_input.a % vec4<u32>(32u))))), abs(~vec4<u32>(_wgslsmith_mod_u32(u_input.d, u_input.e.x), 45481u, _wgslsmith_sub_u32(38803u, 0u), u_input.a.x)));
    var_1 = Struct_1(var_1.a, _wgslsmith_mod_vec4_u32(var_1.b, u_input.a));
    return ~(-(~vec3<i32>(40886i, u_input.b, -1i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(true, -259f, func_3(), reverseBits(-4452i), Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.c, ~u_input.c), countOneBits(-vec4<i32>(0i, 2147483647i, 1i, -32728i))), u_input.a));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), 984f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b))));
    return Struct_1(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-u_input.c.xx, u_input.c.zy), -1i), abs(var_0.c.x >> (min(0u, u_input.d) % 32u)), -19848i, -2147483647i), var_0.e.b);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> f32 {
    var var_0 = arg_0.e.b;
    let var_1 = Struct_2(all(!vec3<bool>(arg_0.a, true, u_input.b >= arg_2.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x - 257f)), _wgslsmith_f_op_f32(1990f + arg_2.b.x), arg_0.a)), _wgslsmith_f_op_f32(select(-440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1721f - arg_0.b)), _wgslsmith_f_op_f32(trunc(arg_0.b)) <= -917f)))), -(vec3<i32>(-1i) * -(~arg_0.c)), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), ~586i, select(-5202i, 2147483647i, false)), 12718i), func_2());
    let var_2 = select(select(select(vec2<bool>(var_1.a, !arg_0.a), select(vec2<bool>(false, false), vec2<bool>(true, true), select(arg_0.a, true, arg_0.a)), select(select(vec2<bool>(false, false), vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, true)), !vec2<bool>(arg_0.a, false), true)), vec2<bool>(false, !any(vec2<bool>(var_1.a, true))), var_1.a | false), vec2<bool>(true, !(!any(vec3<bool>(false, var_1.a, true)))), arg_0.a);
    var var_3 = var_1.b;
    var var_4 = reverseBits(~arg_0.e.a);
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))))));
    let var_1 = func_2();
    let var_2 = vec2<i32>(u_input.c.x, u_input.c.x);
    global0 = ~(~vec2<i32>(~(~global0.x), var_2.x));
    var_0 = arg_2.x;
    return Struct_2(false, -522f, vec3<i32>(reverseBits(var_2.x), 47156i, -2147483647i), var_1.a.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~u_input.a.zwy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1087f, _wgslsmith_f_op_f32(func_1(Struct_2(true, -1777f, vec3<i32>(global0.x, -9005i, 51538i), -25448i, Struct_1(vec4<i32>(u_input.b, u_input.b, global0.x, -2147483647i), u_input.a)), -11087i, Struct_3(u_input.c.zz, vec4<f32>(-1000f, -913f, 1000f, -758f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(ceil(313f)))), vec2<f32>(435f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1181f)))), -2147483647i < countOneBits(max(2147483647i, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, 2255f, 1831f, -1175f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-665f + -1434f), _wgslsmith_f_op_f32(1034f * -1079f), _wgslsmith_f_op_f32(func_1(Struct_2(true, -451f, u_input.c.zzy, global0.x, Struct_1(vec4<i32>(global0.x, 19087i, -15958i, 42370i), u_input.a)), u_input.b, Struct_3(vec2<i32>(0i, -72122i), vec4<f32>(-970f, -114f, -909f, 2146f)))), 2387f))), _wgslsmith_add_u32(_wgslsmith_div_u32(reverseBits(u_input.d), ~32833u >> (0u % 32u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(1u, 1u, 7696u)))));
    global0 = select(min(u_input.c.wx, var_0.e.a.yx ^ _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, u_input.b), select(u_input.c.xx, vec2<i32>(var_0.d, 47499i), false))), vec2<i32>(min(min(-1i, 2147483647i), max(min(var_0.e.a.x, -1i), u_input.c.x)), -1120i), !any(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, true)), !vec2<bool>(var_0.a, var_0.a), var_0.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1842f + _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(min(-1273f, var_0.b)))));
    var var_2 = Struct_3(~var_0.e.a.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 1157f, 926f, var_0.b), vec4<f32>(var_0.b, -1406f, -295f, var_0.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(u_input.d | ~var_0.e.b.x, countOneBits(~1u)), -global0.x);
}

