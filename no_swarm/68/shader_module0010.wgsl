struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    global0 = -(~(-(~arg_0.b.b.xy)));
    var var_0 = 745f;
    var var_1 = all(!vec3<bool>(arg_0.b.a.x < _wgslsmith_div_f32(407f, 1000f), true, !(-685f < arg_2.a.x)));
    global0 = -arg_3.b.b.xw;
    var var_2 = arg_0;
    return firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(arg_2.c.x, 2147483647i), global0.x, ~arg_0.b.c.x << ((1u >> (0u % 32u)) % 32u), u_input.b.x), _wgslsmith_mod_vec4_i32(~arg_0.b.b, -vec4<i32>(23491i, arg_0.a, -2147483647i, 2147483647i))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = arg_0.b.b;
    global0 = vec2<i32>(~func_1(Struct_3(-2147483647i, arg_0.c, 2147483647i), 1u, Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_1.b.a, vec3<f32>(1264f, -1650f, -1235f))), _wgslsmith_clamp_vec4_i32(var_0, arg_1.a, var_0), vec2<i32>(0i, u_input.b.x) & arg_0.b.b.yw, arg_0.b.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, arg_0.b.e.x))), Struct_2(arg_1.b.b, arg_1.b, Struct_1(arg_1.b.a, vec4<i32>(var_0.x, arg_1.b.c.x, 45646i, var_0.x), vec2<i32>(var_0.x, -2147483647i), arg_1.c.d, vec2<f32>(arg_0.c.a.x, 487f)))).x, i32(-1i) * -2147483647i);
    var var_1 = arg_1;
    var var_2 = ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, max(~3042u, arg_1.c.d)), ~(~var_1.c.d) ^ ~_wgslsmith_div_u32(1u, 37845u));
    var_1 = Struct_2(_wgslsmith_mod_vec4_i32(-(~(-var_1.c.b)), ~var_1.b.b), arg_0.b, arg_1.c);
    return 27086u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = 22411u;
    var_0 = 73550u;
    let var_1 = u_input.b;
    var var_2 = vec2<bool>((~1u >> (func_3(Struct_2(vec4<i32>(u_input.a.x, -1i, var_1.x, global0.x), Struct_1(vec3<f32>(-123f, -1641f, arg_0), vec4<i32>(u_input.b.x, 8684i, global0.x, var_1.x), var_1.yy, 62541u, vec2<f32>(-869f, -678f)), Struct_1(vec3<f32>(-1000f, 1459f, arg_0), vec4<i32>(91232i, u_input.a.x, global0.x, var_1.x), u_input.a, 23387u, vec2<f32>(1287f, arg_0))), Struct_2(vec4<i32>(15696i, var_1.x, var_1.x, var_1.x), Struct_1(vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(-36957i, var_1.x, var_1.x, var_1.x), u_input.a, 1u, vec2<f32>(911f, -705f)), Struct_1(vec3<f32>(arg_0, arg_0, arg_0), vec4<i32>(u_input.a.x, var_1.x, 8759i, -20013i), vec2<i32>(2147483647i, -54893i), 0u, vec2<f32>(520f, -594f)))) % 32u)) >= ~(~4294967295u << (0u % 32u)), !(func_3(Struct_2(vec4<i32>(u_input.a.x, global0.x, var_1.x, global0.x), Struct_1(vec3<f32>(arg_0, -1241f, 332f), vec4<i32>(-46073i, global0.x, 1i, u_input.a.x), u_input.b.yy, 9099u, vec2<f32>(-151f, 1126f)), Struct_1(vec3<f32>(arg_0, -834f, arg_0), vec4<i32>(global0.x, global0.x, 1480i, -1i), vec2<i32>(global0.x, u_input.b.x), 23628u, vec2<f32>(336f, arg_0))), Struct_2(vec4<i32>(-177i, -2147483647i, u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(1000f, arg_0, 461f), vec4<i32>(-1i, global0.x, 2147483647i, -1i), var_1.zz, 1u, vec2<f32>(241f, 518f)), Struct_1(vec3<f32>(-721f, 1460f, 1078f), vec4<i32>(global0.x, -42874i, -51378i, -30675i), u_input.a, 19984u, vec2<f32>(arg_0, 1000f)))) != 0u));
    var_2 = !(!select(!select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, var_2.x), true), vec2<bool>(true, true), select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x), true)));
    return Struct_1(vec3<f32>(838f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + 452f)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(global0.x, var_1.x ^ var_1.x), ~18231i, 1i), vec4<i32>(u_input.a.x, global0.x, abs(1i), ~(~var_1.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(-(~(-2147483647i)), firstTrailingBit(global0.x << (24324u % 32u))), var_1.xx), 1u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1788f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2366f, -526f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -187f) - vec2<f32>(1000f, -1873f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(676f, arg_0) * vec2<f32>(arg_0, arg_0)))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = all(vec3<bool>(all(vec2<bool>(arg_2.x, false)) & true, (!arg_2.x || all(vec3<bool>(arg_2.x, false, true))) | any(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), any(vec3<bool>(true, select(true, arg_2.x, true), true))));
    var var_1 = vec4<bool>(all(!select(vec3<bool>(true, false, true), !vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x)), arg_2.x, any(vec3<bool>(true, all(!vec4<bool>(arg_2.x, true, false, var_0)), firstTrailingBit(-2147483647i) > -48537i)), var_0 || true);
    var var_2 = Struct_3(abs(-(~13912i)), arg_1, firstLeadingBit(26784i));
    var var_3 = false;
    global0 = u_input.b.xz;
    return func_2(-139f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(vec2<i32>(max(-19447i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, global0.x, -2147483647i), global0.x)), u_input.b.x));
    let var_0 = Struct_2(vec4<i32>(-11973i, _wgslsmith_sub_i32(-4975i, -(global0.x ^ global0.x)), -26376i, _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec4_i32(func_1(Struct_3(global0.x, Struct_1(vec3<f32>(-1358f, -1058f, -1043f), vec4<i32>(u_input.b.x, 2147483647i, -24735i, u_input.b.x), vec2<i32>(2147483647i, global0.x), 4294967295u, vec2<f32>(1130f, -431f)), 20226i), 45533u, Struct_1(vec3<f32>(103f, 1124f, 745f), vec4<i32>(u_input.a.x, global0.x, u_input.b.x, 22293i), u_input.a, 41809u, vec2<f32>(-567f, -350f)), Struct_2(vec4<i32>(-5560i, global0.x, u_input.a.x, u_input.a.x), Struct_1(vec3<f32>(-781f, 822f, 767f), vec4<i32>(global0.x, -1i, -2147483647i, 1i), vec2<i32>(u_input.a.x, global0.x), 10153u, vec2<f32>(-1732f, -430f)), Struct_1(vec3<f32>(886f, -1574f, 1000f), vec4<i32>(global0.x, 16421i, 2147483647i, global0.x), vec2<i32>(2147483647i, -9968i), 42912u, vec2<f32>(486f, -1000f)))), vec4<i32>(-71442i, u_input.a.x, u_input.b.x, -51836i)))), func_4(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), func_2(-412f), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), vec2<bool>(true, true))), func_4(vec3<u32>(1u, 1u, 1u), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(267f, -354f, 1588f) * vec3<f32>(1761f, -989f, -342f)), min(select(vec4<i32>(1i, 1i, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, global0.x, 29252i, u_input.b.x), false), ~vec4<i32>(-2147483647i, 0i, u_input.a.x, 0i)), u_input.b.yz, 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1083f, -1346f) * vec2<f32>(-1000f, -172f)))), !vec2<bool>(true, any(vec2<bool>(true, false)))));
    var var_1 = !((global0.x << (func_4(vec3<u32>(var_0.c.d, var_0.c.d, 27378u), var_0.c, select(vec2<bool>(true, false), vec2<bool>(false, true), true)).d % 32u)) == global0.x);
    var var_2 = vec2<bool>(false, any(vec4<bool>(true | (var_0.b.d <= var_0.b.d), true, true & all(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, false, false, false)) || false)));
    global0 = firstLeadingBit(~var_0.a.zx) & -var_0.b.c;
    var var_3 = -434f == _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.e.x, _wgslsmith_f_op_f32(var_0.b.a.x - var_0.c.e.x)), -669f);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(1i));
}

