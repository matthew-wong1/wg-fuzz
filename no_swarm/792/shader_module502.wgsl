struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-576f, vec3<bool>(true, false, true), 1i, 4294967295u, vec4<u32>(1u, 3439u, 38296u, 0u)), Struct_1(-687f, vec3<bool>(false, true, true), 0i, 1u, vec4<u32>(19959u, 47713u, 0u, 4294967295u)), Struct_1(-170f, vec3<bool>(true, false, true), 1i, 0u, vec4<u32>(40532u, 61224u, 1u, 31062u)), Struct_1(-1270f, vec3<bool>(true, false, true), 9541i, 15779u, vec4<u32>(8468u, 39004u, 1u, 1u)), Struct_1(-633f, vec3<bool>(false, true, true), 9129i, 32828u, vec4<u32>(7355u, 33941u, 1u, 4294967295u)), Struct_1(1466f, vec3<bool>(true, false, false), -36502i, 32070u, vec4<u32>(88798u, 66430u, 0u, 0u)), Struct_1(-534f, vec3<bool>(false, true, true), 16740i, 11103u, vec4<u32>(0u, 27756u, 0u, 0u)), Struct_1(686f, vec3<bool>(true, false, false), 34628i, 2642u, vec4<u32>(4294967295u, 1u, 27021u, 30906u)), Struct_1(507f, vec3<bool>(false, false, false), -41610i, 1u, vec4<u32>(12464u, 12515u, 4294967295u, 72789u)), Struct_1(772f, vec3<bool>(true, false, true), 2147483647i, 13184u, vec4<u32>(26236u, 0u, 52399u, 1u)), Struct_1(240f, vec3<bool>(true, true, true), 30543i, 130860u, vec4<u32>(29520u, 0u, 4294967295u, 9393u)), Struct_1(-606f, vec3<bool>(true, false, true), 1i, 4862u, vec4<u32>(35294u, 41426u, 29674u, 30116u)), Struct_1(-778f, vec3<bool>(false, true, false), 1i, 0u, vec4<u32>(17704u, 4182u, 43707u, 1u)), Struct_1(-1268f, vec3<bool>(false, true, true), 39167i, 56778u, vec4<u32>(1u, 55737u, 11108u, 5560u)), Struct_1(384f, vec3<bool>(false, false, false), 22997i, 1u, vec4<u32>(0u, 0u, 45766u, 18074u)), Struct_1(260f, vec3<bool>(true, true, true), -2878i, 21291u, vec4<u32>(44420u, 4294967295u, 1u, 20499u)), Struct_1(-236f, vec3<bool>(true, true, true), 0i, 1u, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), Struct_1(-417f, vec3<bool>(false, true, true), -12699i, 4294967295u, vec4<u32>(0u, 34871u, 0u, 80799u)), Struct_1(-410f, vec3<bool>(true, false, true), 30617i, 0u, vec4<u32>(1u, 0u, 43767u, 15154u)), Struct_1(-686f, vec3<bool>(false, true, false), i32(-2147483648), 24351u, vec4<u32>(0u, 1u, 18632u, 1u)), Struct_1(769f, vec3<bool>(false, false, true), -1i, 76355u, vec4<u32>(0u, 41199u, 23510u, 31694u)), Struct_1(-1346f, vec3<bool>(true, false, true), 0i, 51609u, vec4<u32>(0u, 0u, 1u, 1u)), Struct_1(-399f, vec3<bool>(true, true, true), i32(-2147483648), 11278u, vec4<u32>(18654u, 30656u, 4294967295u, 1u)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> bool {
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(4294967295u << (0u % 32u))), 23u)];
    return false;
}

fn func_2() -> vec3<bool> {
    let var_0 = -firstTrailingBit(~(vec4<i32>(u_input.b, 0i, 49009i, -27910i) | u_input.c));
    var var_1 = select(vec3<bool>(true, false, !func_3(_wgslsmith_f_op_f32(trunc(-594f)), ~u_input.c.wz)), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true))), select(_wgslsmith_f_op_f32(round(-452f)) <= _wgslsmith_div_f32(-1243f, 558f), false, true & all(vec2<bool>(true, false)))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), u_input.a >= 0u), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))));
    global0 = array<Struct_1, 23>();
    var_1 = select(!(!vec3<bool>(any(vec4<bool>(var_1.x, true, var_1.x, false)), var_1.x, var_1.x)), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, true, !var_1.x));
    let var_2 = all(select(vec2<bool>(func_3(_wgslsmith_f_op_f32(ceil(-831f)), -vec2<i32>(u_input.b, -1085i)), true), vec2<bool>(var_1.x, true || any(var_1.zy)), true));
    return select(vec3<bool>(true, true, !(!(var_1.x && true))), vec3<bool>(!(!(!var_2)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-362f)))) <= 622f, true), select(vec3<bool>(!all(var_1.yx), false, var_1.x), select(!(!vec3<bool>(var_1.x, false, true)), select(select(vec3<bool>(var_2, false, var_1.x), vec3<bool>(true, var_1.x, true), vec3<bool>(false, var_2, var_2)), !vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(true, false, var_2)), vec3<bool>(var_2, var_1.x, all(vec4<bool>(var_2, var_1.x, var_1.x, false)))), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(arg_0.e.x, 0u, arg_0.d);
    var_0 = max(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.e.x, 1u), ~0u), 4294967295u), _wgslsmith_mult_u32(1u, u_input.a), ~(~24184u)), ~(~arg_0.e.zxz));
    let var_1 = !((u_input.c.x >> (_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_0.e.ywz), _wgslsmith_mult_vec3_u32(arg_0.e.xzw, vec3<u32>(0u, 4294967295u, 69406u))) % 32u)) < _wgslsmith_dot_vec3_i32(vec3<i32>(-14889i, arg_0.c, u_input.c.x >> (72326u % 32u)), vec3<i32>(arg_0.c, arg_0.c, ~1i)));
    let var_2 = _wgslsmith_div_u32(73033u, abs(select(0u, abs(1u), true)));
    global0 = array<Struct_1, 23>();
    return Struct_1(arg_0.a, arg_0.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(10278i, arg_0.c), u_input.b), ~0u, ~(~arg_0.e));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: u32) -> f32 {
    global0 = array<Struct_1, 23>();
    var var_0 = _wgslsmith_f_op_f32(step(2088f, arg_1.x));
    global0 = array<Struct_1, 23>();
    var var_1 = func_4(Struct_1(1915f, select(func_2(), func_2(), vec3<bool>(func_3(arg_1.x, vec2<i32>(u_input.c.x, -25520i)), false, true)), i32(-1i) * -1i, u_input.a, _wgslsmith_sub_vec4_u32(select(vec4<u32>(10064u, 52712u, u_input.a, arg_2), firstLeadingBit(vec4<u32>(u_input.a, arg_2, u_input.a, 1u)), any(vec2<bool>(true, true))), max(firstLeadingBit(vec4<u32>(u_input.a, 27884u, 48825u, arg_2)), abs(vec4<u32>(71568u, u_input.a, u_input.a, 4294967295u))))), vec4<bool>(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), false, true, min(-47496i, u_input.b) < -7630i));
    let var_2 = ~23532u;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_1(vec2<i32>(2147483647i, 0i), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2351f, 887f, -442f)))))), ~_wgslsmith_sub_u32(1u, u_input.a))), !vec3<bool>(any(func_4(Struct_1(-1572f, vec3<bool>(true, true, false), u_input.c.x, 1u, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), vec4<bool>(false, true, false, true)).b.zz), false, true), _wgslsmith_sub_i32(u_input.b, 1656i), ~abs(~4845u), vec4<u32>(1u, ~u_input.a >> ((u_input.a ^ u_input.a) % 32u), firstLeadingBit(~(~u_input.a)), ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(-668f);
}

