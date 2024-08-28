struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: u32;

var<private> global1: array<Struct_1, 12>;

var<private> global2: i32 = -16413i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(min(abs(1u) | firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 7955u))), _wgslsmith_mod_u32(54245u, ~_wgslsmith_mod_u32(74154u, 110754u))), ~(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 46995u), vec2<u32>(3216u, 0u))) & abs(~37371u)));
    global1 = array<Struct_1, 12>();
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(var_0.x, 0u & ~var_0.x), max(var_0.x, countOneBits((var_0.x | var_0.x) ^ var_0.x)));
    var var_2 = Struct_1(vec3<bool>(true, (u_input.a | 0i) > -(u_input.a & u_input.b), true), vec4<f32>(135f, _wgslsmith_f_op_f32(f32(-1f) * -1426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(892f, 1000f))))), _wgslsmith_f_op_f32(sign(577f))), (u_input.b & (_wgslsmith_mult_i32(u_input.b, 21263i) | u_input.a)) > _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-20660i, u_input.a), _wgslsmith_mod_i32(-1i, 2147483647i)), max(~0i, 22384i)), all(!vec4<bool>(true, true, all(vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(ceil(-691f)));
    global1 = array<Struct_1, 12>();
    return u_input.a & ~firstLeadingBit(firstLeadingBit(17050i));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32) -> u32 {
    global2 = _wgslsmith_sub_i32(func_3(), 0i);
    var var_0 = select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(false, true, true), all(vec4<bool>(false, false, false, false)))), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false))), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), u_input.a > 83567i)), false));
    global0 = ~(36246u << ((_wgslsmith_mod_u32(~arg_0, 78831u & arg_0) | ~_wgslsmith_sub_u32(18305u, 1648u)) % 32u));
    global2 = u_input.a;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1680f))), 964f, arg_1.x), arg_1);
    return arg_0 ^ 4294967295u;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(32424u, ~7439u), 16693u, ~arg_0.x), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, arg_0.x, 71684u), ~arg_0.x), arg_0.x << (select(8686u, 1u, arg_1.c) % 32u), 1u)) | func_2(_wgslsmith_sub_u32(abs(abs(1u)), arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(-1000f, arg_1.b.x, -1000f, arg_1.e)))), ~(-1i));
    let var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(~countOneBits(_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, u_input.a, u_input.b))), -1i), 58316i);
    let var_1 = countOneBits(i32(-1i) * -1i) <= u_input.a;
    global2 = ~arg_2.x & var_0;
    global0 = arg_0.x;
    return firstLeadingBit(_wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(arg_2, arg_2) ^ u_input.b, _wgslsmith_mod_i32(66085i, min(11918i, _wgslsmith_dot_vec2_i32(vec2<i32>(24910i, u_input.b), vec2<i32>(-35024i, 40701i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-16952i, u_input.b, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a), func_1(vec4<u32>(52897u, 0u, 43803u, 1u), Struct_1(vec3<bool>(true, true, true), vec4<f32>(453f, 217f, -131f, -1476f), false, false, 117f), vec3<i32>(0i, u_input.a, u_input.a)), u_input.b), vec3<i32>(0i << (0u % 32u), ~(-1i), ~u_input.b))), 9144i ^ countOneBits(u_input.b));
    let var_0 = ~(~4294967295u);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(var_0, 1u))) << (select(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), ~vec2<u32>(38607u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(var_0, 4294967295u)), false) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(5122u, countOneBits(var_0)), func_2(var_0 ^ var_0, vec4<f32>(-424f, -523f, 1064f, -697f), func_3())), max(~(~vec2<u32>(var_0, 4294967295u)), countOneBits(vec2<u32>(var_0, var_0))))), 12u)];
    var var_2 = 4294967295u;
    global0 = ~_wgslsmith_mult_u32(~(~(~4294967295u)), 0u);
    let var_3 = countOneBits(countOneBits(reverseBits(vec2<u32>(var_0, var_0))) | _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(31580u, 0u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(var_0, var_0))) | _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(0u, 1u), ~vec2<u32>(var_0, 0u), vec2<bool>(true, var_1.a.x)), ~max(vec2<u32>(var_0, var_0), vec2<u32>(11793u, 48664u))), vec2<u32>(var_0, ~31267u));
    global1 = array<Struct_1, 12>();
    let var_4 = reverseBits(vec3<i32>(~u_input.b & (_wgslsmith_sub_i32(u_input.b, u_input.b) ^ _wgslsmith_mult_i32(u_input.b, u_input.a)), -4698i, 2147483647i >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_3.x, var_0, var_3.x, 4294967295u)), ~vec4<u32>(var_0, var_3.x, var_3.x, 29041u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(abs(56369i), 45204i) ^ (~var_4.x & ~_wgslsmith_clamp_i32(var_4.x, 26447i, -3169i)));
}

