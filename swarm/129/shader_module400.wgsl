struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> vec3<u32> {
    global1 = array<Struct_1, 10>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~(~u_input.a.x) | (~u_input.a.x | u_input.a.x)), _wgslsmith_sub_u32(4294967295u, select(u_input.a.x, 19180u, true)), 50251u), 10u)];
    let var_1 = 0u ^ (9340u | ~countOneBits(~u_input.a.x));
    var var_2 = Struct_2(~_wgslsmith_div_u32(5713u, var_0.b.x), u_input.a.x, -846f, global1[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_1(vec3<i32>(~(-2147483647i), -(u_input.b.x << (u_input.a.x % 32u)), firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, -27235i))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x | u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1, var_1, 500u), ~vec3<u32>(38057u, var_0.b.x, 1u)))));
    var_0 = global1[_wgslsmith_index_u32(~(0u >> (~((var_2.a | 26550u) >> (~var_2.b % 32u)) % 32u)), 10u)];
    return var_2.e.b;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(_wgslsmith_add_vec3_i32(u_input.b.ywx, ~u_input.b.xyw), vec3<u32>(~u_input.a.x, 40177u, ~24023u >> (1u % 32u)) ^ (vec3<u32>(u_input.a.x & 1u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 0u, u_input.a.x))) & func_2()));
    let var_1 = vec2<i32>(u_input.b.x, 15188i);
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.b.x, arg_0.b.x, 0u), 10u)];
    let var_1 = Struct_1(vec3<i32>(-27339i, 26246i, i32(-1i) * -59946i), _wgslsmith_mod_vec3_u32(arg_2.b, var_0.b));
    let var_2 = Struct_2(select(reverseBits(firstLeadingBit(7355u)), var_0.b.x, select(!all(vec2<bool>(false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))))), arg_1.x, 135f, func_1(), Struct_1(-(vec3<i32>(-29343i, u_input.b.x, 2147483647i) << (vec3<u32>(4294967295u, var_1.b.x, u_input.a.x) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(var_0.a ^ var_0.a, max(arg_0.a, arg_0.a)), ~(arg_0.b >> (vec3<u32>(1u, arg_0.b.x, 1u) % vec3<u32>(32u)))));
    let var_3 = Struct_2(arg_0.b.x, arg_2.b.x, 904f, Struct_1(-(vec3<i32>(-7054i, 19095i, 1i) >> (vec3<u32>(var_1.b.x, 1u, 0u) % vec3<u32>(32u))), countOneBits(arg_1.wxx)), global1[_wgslsmith_index_u32(~arg_0.b.x, 10u)]);
    var var_4 = var_2.d;
    return global1[_wgslsmith_index_u32(arg_0.b.x, 10u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mod_u32(~(0u ^ countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(36987u, u_input.a.x, 0u & u_input.a.x), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(90308u, u_input.a.x, 4294967295u), arg_1.b), vec3<u32>(41206u, arg_1.b.x, arg_1.b.x)))), u_input.a.x, _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), 1082f))), func_1(), global1[_wgslsmith_index_u32(u_input.a.x, 10u)]);
    var var_1 = func_1();
    var var_2 = u_input.b;
    var_1 = var_0.d;
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) - _wgslsmith_f_op_f32(-var_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global0 = array<vec2<bool>, 10>();
    var var_0 = reverseBits(_wgslsmith_div_i32(-2147483647i, ~(-27944i)));
    let var_1 = -410f;
    var_0 = 0i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(true, func_3(Struct_1(vec3<i32>(-66685i, -21346i, 6367i), vec3<u32>(u_input.a.x, u_input.a.x, 8238u)), vec4<u32>(17077u, 1u, u_input.a.x, u_input.a.x) ^ vec4<u32>(1u, u_input.a.x, 4294967295u, 17228u), func_1(), _wgslsmith_div_vec3_f32(vec3<f32>(579f, var_1, 487f), vec3<f32>(var_1, var_1, var_1))), -_wgslsmith_mod_i32(-1i, u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1))))));
    var var_3 = vec4<bool>(reverseBits(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(1i, -2147483647i), min(2147483647i, 2147483647i))) > (10938i | -(2147483647i & u_input.b.x)), var_2 == 296f, true, all(vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)), true, any(vec3<bool>(false, false, false)))));
    let var_4 = vec2<bool>(!((_wgslsmith_div_u32(u_input.a.x, u_input.a.x) > min(u_input.a.x, u_input.a.x)) & var_3.x), !any(select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(18497u, 10u)], var_3.wx)) && !all(vec3<bool>(var_3.x, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~min(0u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)), _wgslsmith_add_u32(1u, select(60703u, _wgslsmith_div_u32(38719u, 4488u), false))), select(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(23055u, 0u, 99642u), ~vec3<u32>(u_input.a.x, 60167u, u_input.a.x)), ~(vec3<u32>(u_input.a.x, 26702u, 0u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 46600u)), u_input.b.x != u_input.b.x), countOneBits(max(~vec3<u32>(1u, u_input.a.x, 30116u), abs(vec3<u32>(0u, 12960u, 33105u)))), var_4.x), u_input.a.x, u_input.b.xxz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(1000f * var_1)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, var_1)))));
}

