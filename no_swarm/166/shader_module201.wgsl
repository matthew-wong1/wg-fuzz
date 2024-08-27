struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    global0 = Struct_2(~global0.a);
    global0 = Struct_2(~reverseBits(abs(vec2<u32>(global0.a.x, 0u) >> (global0.a % vec2<u32>(32u)))));
    var var_0 = Struct_1(vec4<u32>(0u, global0.a.x, abs(u_input.a), select(0u | ~global0.a.x, 4294967295u | u_input.a, true)), firstLeadingBit(u_input.a), true);
    var_0 = Struct_1(countOneBits(vec4<u32>(26851u, var_0.b, ~u_input.a, 57388u) >> (((vec4<u32>(global0.a.x, 1u, 0u, 4294967295u) >> (var_0.a % vec4<u32>(32u))) >> (vec4<u32>(73431u, var_0.b, 19802u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.a.x, 81261u), 1u), true | any(select(vec4<bool>(false, true, false, false), !vec4<bool>(true, var_0.c, var_0.c, true), !var_0.c)));
    var_0 = Struct_1((var_0.a << (_wgslsmith_sub_vec4_u32(var_0.a, var_0.a) % vec4<u32>(32u))) << (var_0.a % vec4<u32>(32u)), reverseBits(global0.a.x) | 0u, true);
    return vec3<bool>(false, var_0.c, true);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(global0.a);
    var var_1 = abs(~vec3<u32>(global0.a.x, max(var_0.a.x ^ 1u, u_input.a), var_0.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f * 812f))), -839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) + 287f)));
    let var_3 = Struct_2(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global0.a.x, 4294967295u)) ^ var_0.a, firstLeadingBit(var_1.zz)));
    let var_4 = select(!(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, false), -689f != var_2.x)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true), !func_3());
    return _wgslsmith_f_op_vec3_f32(-var_2.xyx);
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~(~55004u), global0.a.x, 45751u), countOneBits(reverseBits(vec4<u32>(arg_1, 0u, 4294967295u, u_input.a)))), 58002u, true);
    global0 = Struct_2(~_wgslsmith_div_vec2_u32(~(~var_0.a.zy), ~vec2<u32>(var_0.a.x, 61609u) >> (global0.a % vec2<u32>(32u))));
    global0 = Struct_2(~vec2<u32>(~_wgslsmith_mod_u32(135757u, 73550u), ~arg_1));
    global0 = Struct_2(max(vec2<u32>(u_input.a, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), u_input.a)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), global0.a))));
    var var_1 = 6085i;
    return Struct_2(vec2<u32>(0u, 18289u));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(countOneBits(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, 1045u, u_input.a, 76936u), vec4<u32>(u_input.a, 16289u, global0.a.x, 4294967295u)))), ~((1u >> (u_input.a % 32u)) | global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 430f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-414f)) + _wgslsmith_f_op_f32(abs(1127f))) * 1253f));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_mod_u32(_wgslsmith_div_u32(28953u ^ u_input.a, 4294967295u), ~66129u), -_wgslsmith_mod_vec3_i32(-(~vec3<i32>(1i, -2147483647i, 746i)), vec3<i32>(1i, 1i, 1i)), vec2<i32>(1i, ~(-28879i)));
    global0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(638f, -635f, 804f)))), _wgslsmith_mod_u32(38974u, ~1u), vec3<i32>(~19352i, abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 40409i, 1i), vec3<i32>(27681i, -11911i, -7548i))), vec2<i32>(_wgslsmith_add_i32(0i, -2147483647i), 1i)).a | countOneBits(~global0.a));
    var var_2 = false;
    var var_3 = Struct_1(var_0.a, ~firstTrailingBit((var_0.b | 1u) ^ 4294967295u), u_input.a >= _wgslsmith_dot_vec3_u32(var_0.a.xzy, ~vec3<u32>(u_input.a, 0u, 56479u)));
    return var_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(407f, 1000f, -406f))) + _wgslsmith_div_vec3_f32(vec3<f32>(474f, 221f, 749f), vec3<f32>(189f, 1320f, -298f))))), select(_wgslsmith_dot_vec2_u32(var_0.a.zw, ~vec2<u32>(114507u, global0.a.x)), 48155u, var_0.c) << ((4294967295u | _wgslsmith_dot_vec3_u32(~arg_0.a.yyx, min(arg_0.a.yzy, vec3<u32>(0u, 55249u, 0u)))) % 32u), select(~(-firstTrailingBit(vec3<i32>(19817i, 76316i, 1i))), _wgslsmith_mult_vec3_i32(countOneBits(countOneBits(vec3<i32>(22868i, -35446i, 62677i))), max(-vec3<i32>(-1680i, -5555i, 17770i), -vec3<i32>(1i, -1i, 2147483647i))), false), ~(-select(vec2<i32>(-1i, 15907i) >> (vec2<u32>(var_0.b, var_0.b) % vec2<u32>(32u)), ~vec2<i32>(20926i, 2147483647i), !vec2<bool>(arg_0.c, true))));
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 1i), firstTrailingBit(countOneBits(vec2<i32>(1i, -20595i))));
    var var_2 = vec3<bool>(false, true, all(vec3<bool>(var_0.c, arg_0.c, arg_0.c)));
    let var_3 = arg_0;
    return Struct_1(var_3.a, countOneBits(u_input.a), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, global0.a.x, u_input.a, global0.a.x)), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 0u), _wgslsmith_div_vec2_u32(global0.a, global0.a)), u_input.a, ~reverseBits(16876u))) | ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(53667u, global0.a.x, 4294967295u, global0.a.x), vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(global0.a.x, 0u, global0.a.x, 0u)), vec4<u32>(1u, 1u, 71497u, global0.a.x)));
    var var_1 = Struct_1(reverseBits(~reverseBits(vec4<u32>(var_0.x, 0u, 96680u, 13091u) | vec4<u32>(1u, 0u, global0.a.x, global0.a.x))), _wgslsmith_mod_u32(0u, 1u), any(vec4<bool>(true, ~1u <= ~u_input.a, !all(vec2<bool>(true, false)), true)));
    var var_2 = var_1.c;
    var var_3 = func_5(func_1());
    global0 = Struct_2(var_0.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1984f)), _wgslsmith_f_op_f32(min(-1055f, 908f)), _wgslsmith_f_op_f32(step(910f, -401f)), 1241f))), max(firstLeadingBit(~(~vec2<i32>(-2147483647i, -2147483647i))), ~vec2<i32>(-47143i, 0i)), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, global0.a.x, 1u, u_input.a), func_5(func_1()).a));
}

