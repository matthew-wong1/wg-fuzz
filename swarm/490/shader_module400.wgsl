struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<i32>(27668i, 0i), true, 1980f), Struct_1(vec2<i32>(11981i, 1i), false, 1241f), Struct_1(vec2<i32>(1i, -24203i), false, -1000f), Struct_1(vec2<i32>(-53480i, -40328i), false, -1499f));

var<private> global1: f32 = 798f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_1(-vec2<i32>(-6022i, -arg_1 & (arg_1 ^ -1593i)), any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, false, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(trunc(682f)))))));
    var var_1 = !select(!select(vec3<bool>(true, var_0.b, var_0.b), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(false, var_0.b, var_0.b), false), vec3<bool>(var_0.b, true, var_0.b)), vec3<bool>(all(!vec3<bool>(var_0.b, false, var_0.b)), all(vec2<bool>(var_0.b, var_0.b)), all(!vec3<bool>(var_0.b, var_0.b, var_0.b))), select(!vec3<bool>(var_0.b, false, true), !vec3<bool>(var_0.b, var_0.b, var_0.b), true));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2182f);
    let var_2 = select(select(var_1.xz, !(!select(vec2<bool>(var_0.b, false), vec2<bool>(var_1.x, var_1.x), var_0.b)), var_0.b), vec2<bool>(all(vec4<bool>(true || var_1.x, true, !var_0.b, var_1.x)), true), !vec2<bool>(var_0.b | var_0.b, true));
    var var_3 = global0[_wgslsmith_index_u32(21799u, 4u)];
    return var_0.c;
}

fn func_4(arg_0: vec3<f32>) -> vec2<i32> {
    global1 = _wgslsmith_div_f32(arg_0.x, 1416f);
    let var_0 = reverseBits(u_input.a);
    var var_1 = arg_0.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)));
    global0 = array<Struct_1, 4>();
    return select(_wgslsmith_add_vec2_i32(-firstTrailingBit(countOneBits(vec2<i32>(-36826i, 10679i))), vec2<i32>(0i, -_wgslsmith_div_i32(-54964i, 2147483647i))), vec2<i32>(select(_wgslsmith_add_i32(1i, 1i), firstTrailingBit(-17982i) >> (0u % 32u), true), 2147483647i), true);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = arg_3;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1080f * _wgslsmith_f_op_f32(arg_2.c - 849f)) * arg_3))) + 107f);
    let var_1 = arg_2.c;
    global0 = array<Struct_1, 4>();
    let var_2 = Struct_1(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c, _wgslsmith_f_op_f32(func_3(vec3<f32>(422f, arg_2.c, var_1), arg_2.a.x, vec2<u32>(arg_1, 59532u))), _wgslsmith_f_op_f32(round(1492f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, -1563f, 418f))))), arg_0 & arg_0, -1928f);
    return global0[_wgslsmith_index_u32(56714u, 4u)];
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, max(arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<i32>(-2147483647i, 2147483647i, arg_1.a.x))), -countOneBits(-2147483647i)), arg_1.a.x, _wgslsmith_div_i32(countOneBits(_wgslsmith_sub_i32(arg_1.a.x, arg_1.a.x)), 0i));
    global1 = 1538f;
    var var_1 = arg_1;
    let var_2 = Struct_1(var_1.a, ~(-var_1.a.x) > 2147483647i, var_1.c);
    let var_3 = !(!select(!vec4<bool>(var_2.b, true, var_1.b, var_2.b), !select(vec4<bool>(arg_1.b, arg_1.b, false, false), vec4<bool>(var_2.b, var_2.b, false, true), vec4<bool>(false, true, var_1.b, arg_1.b)), select(true, true, !var_2.b)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    global1 = -120f;
    global1 = arg_0.c;
    let var_0 = arg_0.a;
    var var_1 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-firstLeadingBit(2147483647i), max(31833i, 1i), arg_0.a.x, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, arg_0.c, 859f))).x), vec4<i32>(arg_0.a.x, arg_1.x, arg_0.a.x, -2147483647i)));
    var var_2 = _wgslsmith_mult_u32(u_input.a, u_input.a << (1u % 32u)) == u_input.a;
    return global0[_wgslsmith_index_u32(u_input.a, 4u)];
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec2<bool>(select(!any(vec4<bool>(true, true, false, false)), false, true), true);
    let var_1 = var_0.x;
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 4u)];
    global1 = _wgslsmith_f_op_f32(-1542f - 512f);
    var var_3 = func_6(func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.c, arg_0))))))), func_2(var_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, u_input.a), select(vec3<u32>(4133u, u_input.a, u_input.a), vec3<u32>(46395u, u_input.a, u_input.a), var_1)), global0[_wgslsmith_index_u32(countOneBits(1u), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 890f)))), -(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_2.a.x, -2147483647i)), var_2.a.x);
    return ~(countOneBits(~u_input.a) << (u_input.a % 32u)) << (u_input.a % 32u);
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = arg_2.b;
    let var_1 = ~vec2<i32>(firstTrailingBit(abs(~(-4700i))), 0i);
    global0 = array<Struct_1, 4>();
    var var_2 = -(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_3.x, 0i), ~vec3<i32>(-18295i, arg_3.x, var_1.x))) | min(~vec3<i32>(1i, var_1.x, arg_3.x), -vec3<i32>(1i, arg_0, -2147483647i) & (vec3<i32>(arg_2.a.x, 1i, 2147483647i) << (vec3<u32>(4294967295u, 1u, u_input.a) % vec3<u32>(32u)))));
    global0 = array<Struct_1, 4>();
    return 57870u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec2<i32>(~0i, 38723i), true & any(vec4<bool>(true, true, true, true)), -1195f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(ceil(var_0.c)))));
    let var_2 = global0[_wgslsmith_index_u32(func_7(~(-66504i), reverseBits(~func_1(-114f)), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.c)))), Struct_1(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, var_0.c)), func_6(global0[_wgslsmith_index_u32(u_input.a, 4u)], vec3<i32>(-11617i, 2147483647i, 0i), var_0.a.x)).a, (var_0.b || false) & select(false, true, var_0.b), 456f)), vec2<i32>(var_0.a.x, var_0.a.x)), 4u)];
    let var_3 = vec3<i32>(select(var_2.a.x, -func_5(vec2<f32>(var_0.c, var_2.c), Struct_1(vec2<i32>(-40620i, -59664i), var_0.b, 858f)).a.x & 2147483647i, true & var_2.b), _wgslsmith_mult_i32(-func_6(func_5(vec2<f32>(278f, -2072f), global0[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -2147483647i, -49053i), vec3<i32>(-9242i, 47944i, -1i)), var_0.a.x).a.x, func_2(true, u_input.a >> (u_input.a % 32u), func_2(!var_2.b, _wgslsmith_clamp_u32(62698u, 4294967295u, 20627u), func_2(var_0.b, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)], var_1.x), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(1863f + 1218f)).a.x), var_2.a.x);
    var var_4 = _wgslsmith_mult_vec3_i32(firstTrailingBit(var_3), ~(~reverseBits(vec3<i32>(var_3.x, -40068i, -2823i))));
    let var_5 = Struct_1(-_wgslsmith_div_vec2_i32(var_3.yy, ~countOneBits(var_4.zz)), var_2.b && (((var_2.c > 1177f) && var_2.b) && func_6(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 14172u, u_input.a)), 4u)], vec3<i32>(1i, -2147483647i, -23612i), 0i).b), 869f);
    let var_6 = u_input.a;
    var var_7 = Struct_1(-var_3.yz, !func_2(false, 259u, func_5(vec2<f32>(-2076f, var_2.c), global0[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(var_1.x * -938f)))).b, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(var_6, ~u_input.a, var_6, ~_wgslsmith_mod_u32(27023u, 1u)), max(firstTrailingBit(abs(vec4<u32>(u_input.a, var_6, 34846u, 9559u))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_6, 20890u), vec4<u32>(44430u, u_input.a, 0u, 21956u), vec4<u32>(4294967295u, 28096u, u_input.a, 24343u)), vec4<u32>(0u, var_6, 4294967295u, u_input.a) ^ vec4<u32>(u_input.a, var_6, var_6, u_input.a), vec4<bool>(false, var_2.b, var_2.b, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1207f, _wgslsmith_f_op_f32(floor(var_0.c)))) - var_7.c), var_2.c), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_4.x, var_3.x, 28587i), ~vec4<i32>(reverseBits(var_4.x), -31533i, abs(var_4.x), var_4.x)), 161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1809f - -883f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + func_6(var_5, var_3, var_2.a.x).c)))));
}

