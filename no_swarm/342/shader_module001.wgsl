struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, i32(-2147483648)), Struct_1(false, i32(-2147483648)), Struct_1(true, 20474i), Struct_1(false, -45432i), Struct_1(false, -4493i), Struct_1(false, 2147483647i), Struct_1(false, i32(-2147483648)), Struct_1(false, 12120i), Struct_1(true, 15637i), Struct_1(true, -13950i), Struct_1(false, 53550i), Struct_1(true, 34380i), Struct_1(true, i32(-2147483648)), Struct_1(false, 0i), Struct_1(false, 26691i), Struct_1(false, 23356i), Struct_1(false, -1i), Struct_1(true, -1i), Struct_1(false, 13616i), Struct_1(true, -56414i), Struct_1(true, 1i));

var<private> global1: array<vec3<f32>, 19>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_1, 21>();
    let var_0 = Struct_1(arg_3.b.a, u_input.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * _wgslsmith_f_op_f32(floor(arg_0)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 218f)), _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(abs(293f)))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 - arg_0)))));
    let var_3 = Struct_1(arg_3.b.a, -59062i);
    return select(!select(vec4<bool>(arg_3.b.a, true, arg_3.b.a, true), vec4<bool>(true, arg_3.b.b > var_3.b, false, false), var_3.a), select(!(!(!vec4<bool>(true, var_3.a, false, var_3.a))), select(vec4<bool>(!arg_3.b.a, !var_0.a, 4294967295u >= arg_1, false), !select(vec4<bool>(arg_2.x, true, arg_3.a.x, false), vec4<bool>(var_0.a, false, false, var_0.a), var_3.a), !(!vec4<bool>(arg_3.a.x, true, arg_2.x, arg_2.x))), any(vec4<bool>(all(vec4<bool>(arg_3.a.x, true, false, false)), all(vec4<bool>(true, var_3.a, true, true)), true && var_0.a, !arg_2.x))), !vec4<bool>(var_3.a, true, !arg_3.b.a, true));
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = max(min(min(vec4<u32>(17927u, u_input.d.x, 19639u, 67677u) & (vec4<u32>(73465u, u_input.a, 0u, 1u) ^ vec4<u32>(26833u, 0u, u_input.c, 63285u)), ~(vec4<u32>(1u, 4294967295u, u_input.e.x, u_input.e.x) & vec4<u32>(11612u, 55833u, u_input.e.x, u_input.d.x))), ~min(vec4<u32>(4176u, 0u, 1u, u_input.d.x), vec4<u32>(u_input.a, 11824u, 6201u, u_input.a)) | ~select(vec4<u32>(31672u, u_input.a, u_input.d.x, u_input.e.x), vec4<u32>(u_input.e.x, 6759u, u_input.d.x, 57900u), vec4<bool>(false, true, false, true))), ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c, u_input.a, 1u, u_input.d.x), max(vec4<u32>(0u, 0u, 56219u, u_input.c), vec4<u32>(68493u, u_input.c, 0u, u_input.e.x))), vec4<u32>(~u_input.d.x, ~u_input.c, _wgslsmith_mult_u32(54081u, u_input.e.x), 0u)));
    var var_1 = 1u;
    let var_2 = any(!select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, true), true), !func_3(756f, 0u, vec2<bool>(false, true), Struct_2(vec3<bool>(true, false, true), Struct_1(false, 0i))), false));
    let var_3 = Struct_5(Struct_4(Struct_3(true, Struct_2(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(false, var_2, var_2), true), Struct_1(false, -8787i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(882f, 1464f, -136f, -141f), vec4<f32>(1000f, -586f, 865f, 1891f))))), _wgslsmith_dot_vec3_u32(max(var_0.xzz, vec3<u32>(0u, 0u, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(21967u, u_input.d.x, 0u), vec3<u32>(1u, 15041u, u_input.c))), global0[_wgslsmith_index_u32(u_input.c, 21u)])), Struct_3(!all(!vec3<bool>(true, var_2, var_2)), Struct_2(select(!vec3<bool>(false, var_2, var_2), select(vec3<bool>(false, false, true), vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, false)), !var_2), Struct_1(false, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2147483647i, -32057i), vec3<i32>(47219i, -20168i, u_input.b)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(943f, 1656f, -1393f, -144f)))))), ~(~u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x >> (u_input.c % 32u), ~abs(var_0.x)), 21u)]));
    let var_4 = !select(vec4<bool>(var_2, var_3.a.a.e.a, select(true || var_3.a.a.e.a, any(vec4<bool>(var_2, true, var_2, true)), true), ~u_input.b < (-9924i >> (var_0.x % 32u))), !(!select(vec4<bool>(false, var_3.b.b.a.x, false, var_3.b.b.a.x), vec4<bool>(true, var_2, true, false), true)), vec4<bool>(true, true, true, true));
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5) -> bool {
    let var_0 = func_2(2147483647i);
    return !arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!func_1(Struct_1(false, u_input.b), Struct_5(Struct_4(Struct_3(false, Struct_2(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<f32>(-479f, -1000f, -945f, 262f), 59065u, global0[_wgslsmith_index_u32(u_input.c, 21u)])), Struct_3(true, Struct_2(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec4<f32>(825f, -1451f, 1000f, 173f), 8601u, Struct_1(true, -21551i)))), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)))), select(vec2<bool>(true, !any(vec4<bool>(false, false, false, false))), func_3(_wgslsmith_f_op_f32(1395f * 689f), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.c), _wgslsmith_mod_u32(4294967295u, 7964u)), vec2<bool>(true, true), func_2(_wgslsmith_mod_i32(-21701i, u_input.b)).b.b).zx, _wgslsmith_mod_i32(min(u_input.b, u_input.b), _wgslsmith_div_i32(0i, u_input.b)) >= u_input.b), true);
    var var_1 = Struct_2(!vec3<bool>(false, func_3(_wgslsmith_f_op_f32(-572f * 1542f), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.d), var_0, Struct_2(vec3<bool>(true, false, var_0.x), Struct_1(false, u_input.b))).x, true), func_2(u_input.b).a.a.b.b);
    var_1 = func_2(max(var_1.b.b | func_2(u_input.b | 1i).b.b.b.b, -12909i & ~_wgslsmith_clamp_i32(u_input.b, 47249i, var_1.b.b))).b.b;
    var_1 = func_2(42022i).b.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1356f, 849f)), _wgslsmith_div_f32(-1269f, -502f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-862f - 650f)))) * -594f));
    let var_3 = u_input.c;
    var var_4 = 19195u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_3, u_input.e.x, 4294967295u)), u_input.e, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, u_input.a, 4294967295u), u_input.e, vec3<u32>(u_input.e.x, 1098u, u_input.e.x))), countOneBits(u_input.e)), 1u ^ func_2(u_input.b).a.a.d), var_3, abs(var_1.b.b));
}

