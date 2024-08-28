struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, false, false, true, false, false, false, false, false);

var<private> global2: bool = false;

var<private> global3: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<i32>) -> bool {
    global1 = array<bool, 11>();
    let var_0 = !(!vec2<bool>(global1[_wgslsmith_index_u32(108135u, 11u)], false));
    let var_1 = Struct_3(u_input.a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4866u, 9487u), vec2<u32>(1u, 1u)), vec2<u32>(~8124u, ~0u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(1i, arg_0.x, arg_0.x)) | _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, u_input.a, arg_0.x), vec3<i32>(arg_0.x, var_1.a, u_input.a) >> (vec3<u32>(0u, 20665u, var_1.c.x) % vec3<u32>(32u))), ~vec3<i32>(~var_1.a, 1i, i32(-1i) * -30412i)) | ~(-6121i);
    global2 = all(vec3<bool>(var_0.x, !(var_0.x & !global1[_wgslsmith_index_u32(var_1.c.x, 11u)]), any(vec3<bool>(!global1[_wgslsmith_index_u32(30150u, 11u)], false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.c.zz, var_1.c.wy), 11u)]))));
    return true;
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-186f - 237f), _wgslsmith_f_op_f32(f32(-1f) * -1512f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2304f), _wgslsmith_f_op_f32(332f + 201f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1100f + 434f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = abs(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a, -1i, abs(arg_1.b.x), -2147483647i), vec4<i32>(abs(u_input.a), -2147483647i, ~(-5224i), arg_1.b.x ^ u_input.a), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_0, 11u)] == true, all(vec4<bool>(true, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_1.c.x)))), vec4<i32>(-_wgslsmith_sub_i32(20077i, -27119i), -18131i, 21304i, ~16053i)));
    var var_1 = vec4<f32>(arg_1.d, arg_1.e, arg_1.e, arg_1.e);
    let var_2 = vec4<i32>(min(arg_1.b.x, arg_1.b.x), u_input.a, ~firstLeadingBit(~(-1i << (0u % 32u))), _wgslsmith_mod_i32(-u_input.a, ~firstLeadingBit(u_input.a)));
    let var_3 = ~reverseBits(reverseBits(vec3<u32>(arg_0, arg_0, 52469u)) | ~vec3<u32>(arg_0, arg_0, arg_0)) ^ min(~firstLeadingBit(vec3<u32>(0u, arg_0, arg_0)) << (countOneBits(reverseBits(vec3<u32>(arg_0, arg_0, arg_0))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, 21348u), vec3<u32>(arg_0, 9638u, 33456u), vec3<u32>(648u, arg_0, arg_0)), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(23365u, arg_0, arg_0))));
    let var_4 = ~vec4<u32>(abs(arg_0), _wgslsmith_mod_u32(var_3.x, 2075u) | arg_0, 1u, ~(~arg_0));
    return Struct_3(-u_input.a, _wgslsmith_add_u32(var_4.x, 30026u), ~vec4<u32>(36153u, 0u, ~(arg_0 ^ 20858u), arg_0));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-990f + 1261f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-370f)), _wgslsmith_div_f32(475f, 234f)) + _wgslsmith_f_op_f32(f32(-1f) * -380f))))));
    var_1 = -2020f;
    global0 = array<vec4<bool>, 3>();
    global3 = global1[_wgslsmith_index_u32(var_0.c.x, 11u)];
    return Struct_2(Struct_1(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(19592u, 11u)], false, true), vec4<bool>(!global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(19937u, 11u)], func_2(arg_0.xy), global1[_wgslsmith_index_u32(81737u, 11u)]), true & global1[_wgslsmith_index_u32(~var_0.c.x, 11u)]), true, false, false), true, min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u >> (arg_1.c.x % 32u), abs(4610u), 0u), arg_1.c.zyz << (~var_0.c.zxz % vec3<u32>(32u))), vec3<u32>(arg_1.c.x, ~0u, var_0.c.x)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<i32>) -> u32 {
    let var_0 = func_5(vec4<i32>(~u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, 35459i), 49842i), func_4(48254u, Struct_5(firstTrailingBit(u_input.a) == _wgslsmith_div_i32(u_input.a, u_input.a), vec3<i32>(arg_2.x, u_input.a, -2147483647i) & _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.x, u_input.a, arg_2.x), vec3<i32>(15846i, u_input.a, 47752i)), vec3<bool>(func_2(vec2<i32>(0i, 1i)), global1[_wgslsmith_index_u32(arg_0, 11u)] && global1[_wgslsmith_index_u32(arg_0, 11u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(ceil(arg_1)))), -2147483647i, 12438i);
    let var_1 = var_0.c.x;
    global3 = true;
    global3 = !(!(!(-29922i <= -arg_2.x)));
    global1 = array<bool, 11>();
    return ~(~var_1) >> (_wgslsmith_add_u32(arg_0, arg_0) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, 4294967295u), 11u)];
    global1 = array<bool, 11>();
    var var_0 = !(!all(!vec3<bool>(true, global1[_wgslsmith_index_u32(15889u, 11u)], global1[_wgslsmith_index_u32(1523u, 11u)]))) & true;
    let var_1 = ~(~1u);
    let var_2 = u_input.a;
    global2 = _wgslsmith_clamp_u32(var_1, var_1, _wgslsmith_div_u32(_wgslsmith_clamp_u32(126u | var_1, var_1 >> (var_1 % 32u), _wgslsmith_add_u32(1u, var_1)), func_1(var_1, -604f, abs(vec2<i32>(-23637i, var_2))))) < var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(select(min(vec4<i32>(-19011i, 30333i, var_2, -16298i) << (vec4<u32>(var_1, var_1, 38806u, var_1) % vec4<u32>(32u)), -vec4<i32>(45445i, 2147483647i, u_input.a, var_2)), ~abs(vec4<i32>(25705i, var_2, 1i, var_2)), func_5(vec4<i32>(30054i, u_input.a, var_2, u_input.a) & vec4<i32>(-3619i, -2147483647i, 12686i, u_input.a), func_4(var_1, Struct_5(global1[_wgslsmith_index_u32(var_1, 11u)], vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], true, true), -147f, -779f)), -u_input.a, ~var_2).a.a), vec4<i32>(_wgslsmith_add_i32(var_2 | u_input.a, abs(u_input.a)), ~(-15740i), countOneBits(var_2), ~1i)), _wgslsmith_sub_vec3_u32(~(~reverseBits(vec3<u32>(1u, 0u, var_1))), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_1), vec3<u32>(var_1, 14026u, 242u)))), 7466u);
}

