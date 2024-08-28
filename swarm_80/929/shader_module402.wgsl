struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(35458u, 1u, 0u, 4294967295u), 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = -100f;
    let var_1 = arg_1;
    global1 = Struct_1(global1.a >> (~_wgslsmith_clamp_vec4_u32(global1.a, _wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(17977u, u_input.b, 4294967295u, global1.b)), firstTrailingBit(global1.a)) % vec4<u32>(32u)), 4294967295u);
    var var_2 = u_input.a.x != countOneBits(reverseBits(-u_input.a.x) & -264i);
    var var_3 = !(any(!(!arg_1.a)) | (u_input.a.x > (0i << (~u_input.b % 32u))));
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<bool>) -> u32 {
    global1 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(82748u, global1.a.x, global1.b, 31937u) & global1.a, ~vec4<u32>(global1.a.x, 0u, arg_0.b, 4294967295u)), arg_0.a), vec4<u32>(arg_0.a.x, ~(34534u >> (global1.b % 32u)), 1u, arg_0.a.x)), ~(~_wgslsmith_mod_u32(1u, 113961u)));
    let var_0 = ~vec4<u32>(select(1u, 36821u, !all(arg_2)), global1.b, arg_0.a.x, select(16469u, ~_wgslsmith_add_u32(0u, arg_0.b), arg_1.x));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(404f, 551f, true))))))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -175f);
    return ~(6476u | ~(~(global1.a.x | global1.b)));
}

fn func_2() -> u32 {
    global1 = Struct_1(select(_wgslsmith_add_vec4_u32(~global1.a | (vec4<u32>(65032u, 1611u, global1.b, u_input.b) ^ global1.a), abs(~global1.a)), firstLeadingBit(global1.a), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.b), 4294967295u, ~u_input.b) & ~u_input.b, 28u)]), u_input.b | ~(~(~4294967295u)));
    global1 = Struct_1(global1.a, ~global1.b);
    global1 = Struct_1(vec4<u32>(global1.a.x, ~u_input.b, abs(global1.b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u)) % 32u), 1u) >> (vec4<u32>(~u_input.b, ~global1.a.x, _wgslsmith_div_u32(global1.b, u_input.b), global1.b) % vec4<u32>(32u)), u_input.b);
    let var_0 = u_input.a.yzy;
    let var_1 = 555f;
    return func_4(Struct_1(abs(vec4<u32>(0u, 0u, 67670u ^ u_input.b, func_3(true, Struct_2(global0[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_2(global0[_wgslsmith_index_u32(global1.a.x, 28u)])))), select(u_input.b, 43774u, true)), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), vec2<bool>(var_0.x <= 2147483647i, false), vec2<bool>(true, select(true, false, false))), select(vec2<bool>(true, all(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(false, true, true)), false)), vec4<bool>(select(113f <= var_1, any(vec2<bool>(true, false)), true) && true, true, (_wgslsmith_f_op_f32(f32(-1f) * -999f) != _wgslsmith_div_f32(-235f, var_1)) || true, true));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec4_u32(abs(global1.a), vec4<u32>(62727u, u_input.b >> (u_input.b % 32u), _wgslsmith_mult_u32(arg_1, global1.a.x), abs(global1.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(21224u, u_input.b, arg_1, 49128u), vec4<u32>(1u, global1.a.x, u_input.b, 33698u), global1.a))), u_input.b);
    let var_1 = _wgslsmith_mult_u32(global1.b, 0u);
    global0 = array<vec4<bool>, 28>();
    let var_2 = _wgslsmith_mod_vec3_i32(u_input.a.wxx, _wgslsmith_div_vec3_i32(~vec3<i32>(-71468i, countOneBits(u_input.a.x), -16608i), u_input.a.wzw));
    global0 = array<vec4<bool>, 28>();
    return Struct_1(global1.a, 1u);
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<bool>, 28>();
    var var_0 = func_5(true, 55278u, firstTrailingBit(u_input.a.wxx), vec2<bool>(global1.b >= func_2(), true));
    let var_1 = 1849f;
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(var_0.a.x, 28u)]);
    let var_3 = Struct_2(global0[_wgslsmith_index_u32(8729u, 28u)]);
    return Struct_1(~(~global1.a), 61508u);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = array<vec4<bool>, 28>();
    let var_0 = vec4<u32>(arg_1.b, arg_1.a.x, select(select(~abs(arg_3), countOneBits(~arg_1.a.x), true), arg_2.b, any(global0[_wgslsmith_index_u32(max(33984u, abs(arg_1.a.x)), 28u)])), global1.b);
    let var_1 = select(vec4<i32>(44912i & u_input.a.x, -44697i, -1i ^ _wgslsmith_add_i32(~2147483647i, ~u_input.a.x), -32268i), select(min(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(-34056i, u_input.a.x, u_input.a.x, u_input.a.x) & u_input.a, vec4<i32>(1i, u_input.a.x, -1i, -40903i))), ~vec4<i32>(u_input.a.x, firstLeadingBit(1i), -u_input.a.x, u_input.a.x), true), !(!global0[_wgslsmith_index_u32(~arg_1.b, 28u)]));
    global1 = Struct_1(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1601f - 976f), _wgslsmith_f_op_f32(round(-221f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1439f, -2001f)), -1443f), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, global1.a.x), 1u, 34398u)), max(-vec3<i32>(3007i, 0i, 10888i), var_1.wxw), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), vec2<bool>(true, true), ~4294967295u == arg_0.x)).a, ~global1.b);
    let var_2 = -658f;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(~(~countOneBits(vec2<u32>(43326u, 1u) ^ global1.a.wx)), func_1(), func_1(), u_input.b);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, -1921f, 351f, -1262f) - vec4<f32>(-480f, 828f, 136f, -1065f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-490f, 709f, 1372f, -217f) + vec4<f32>(304f, -1000f, 335f, -1026f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1857f, 1260f, -1625f, -1545f), vec4<f32>(827f, -411f, 266f, 130f), global0[_wgslsmith_index_u32(0u, 28u)]))) + vec4<f32>(879f, -3154f, _wgslsmith_f_op_f32(-1174f * -424f), _wgslsmith_f_op_f32(-757f + -1033f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(sign(-2217f))), 1727f, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) * _wgslsmith_f_op_f32(floor(-1000f))))));
    var var_1 = func_5(!(1207f < _wgslsmith_f_op_f32(step(-119f, var_0.x))) == all(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false)), ~((1969u ^ func_5(false, u_input.b, u_input.a.xwz, vec2<bool>(false, false)).b) >> (46485u % 32u)), _wgslsmith_add_vec3_i32(u_input.a.xzz, vec3<i32>(-(~(-2147483647i)), max(~u_input.a.x, abs(u_input.a.x)), u_input.a.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))), true & any(vec3<bool>(false, false, false))), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_2 = abs(vec4<u32>(_wgslsmith_sub_u32(func_3(true, Struct_2(global0[_wgslsmith_index_u32(u_input.b, 28u)]), Struct_2(global0[_wgslsmith_index_u32(36982u, 28u)])), u_input.b), abs(global1.b), var_1.a.x, (global1.a.x | u_input.b) << (0u % 32u))) << (vec4<u32>(var_1.b, var_1.a.x, ~1u, func_5(true, ~13806u, vec3<i32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -1350i)), u_input.a.x), vec2<bool>(true, true)).a.x) % vec4<u32>(32u));
    var_2 = var_1.a >> (~var_1.a % vec4<u32>(32u));
    var var_3 = var_2.zw;
    let var_4 = var_2.x;
    let var_5 = _wgslsmith_f_op_f32(round(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~global1.a.x & global1.b), func_1().a.x, true && ((u_input.a.x >> (var_2.x % 32u)) >= -u_input.a.x)), ~(-reverseBits(u_input.a.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 35667u, u_input.b), vec4<u32>(var_1.a.x, 0u, var_1.a.x, 1u)), global1.a), global1.a ^ var_1.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-436f, var_0.x, var_5)))))), vec3<f32>(var_5, _wgslsmith_f_op_f32(-var_5), 1604f)));
}

