struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -923f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1278f)))), select(any(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x)), arg_0.d.x, arg_0.d.x))), _wgslsmith_f_op_f32(1130f - 1660f), !all(select(arg_0.d, arg_0.d, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) - _wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(exp2(arg_1.a)))))));
    var var_1 = Struct_2(48658u, arg_1, u_input.a.zy, arg_1);
    var var_2 = Struct_5(~vec3<u32>(arg_0.c, arg_2, ~(~4294967295u)));
    let var_3 = arg_0.b;
    var var_4 = var_1.a;
    return !all(!vec4<bool>(true, arg_2 <= 7221u, arg_0.d.x && true, true));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> bool {
    var var_0 = !(min(_wgslsmith_sub_u32(reverseBits(6110u), reverseBits(29290u)), _wgslsmith_mult_u32(min(0u, 27847u), ~17666u)) > firstLeadingBit(1u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 22479u), vec2<u32>(4294967295u, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, -320f, arg_0));
    var var_2 = abs(firstTrailingBit(~vec4<u32>(~40271u, 12246u, ~11468u, 13116u)));
    var var_3 = Struct_1(arg_0);
    let var_4 = false;
    return var_4;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_4) -> vec4<u32> {
    let var_0 = true;
    global0 = 899f;
    var var_1 = !(!select(any(vec3<bool>(false, arg_1.d.x, var_0)), arg_1.d.x || true, all(arg_1.d.zx))) | (var_0 != true);
    var_1 = arg_1.d.x;
    var_1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1967f))))), !select(vec4<bool>(true, func_3(arg_1, Struct_1(-1731f), 1u), arg_1.d.x, var_0), vec4<bool>(var_0, !arg_1.d.x, false, true), any(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.d.x, true, false), vec3<bool>(true, arg_1.d.x, false)))));
    return select(~vec4<u32>(_wgslsmith_sub_u32(51226u, arg_2.b.x), _wgslsmith_mult_u32(max(arg_1.a.x, 0u), _wgslsmith_add_u32(0u, arg_1.a.x)), arg_2.b.x, arg_1.c | (arg_2.b.x | arg_2.b.x)), arg_2.b, false);
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_4(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.a.x, -1i, u_input.a.x, 0i), ~vec4<i32>(u_input.a.x, -1i, -1i, 21496i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), (vec4<i32>(-5583i, 0i, u_input.a.x, 1i) << (vec4<u32>(1u, 0u, 0u, 20360u) % vec4<u32>(32u))) & -vec4<i32>(u_input.a.x, -1i, 1i, u_input.a.x)), ~min(0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a.x)), ~(~_wgslsmith_clamp_vec4_u32(func_2(14216i, Struct_3(vec4<u32>(1u, 1u, 35958u, 0u), -18993i, 44090u, vec3<bool>(false, false, false)), Struct_4(vec4<i32>(u_input.a.x, 22420i, u_input.a.x, u_input.a.x), vec4<u32>(17168u, 14110u, 1u, 85533u))), max(vec4<u32>(4997u, 1019u, 0u, 3865u), vec4<u32>(13802u, 0u, 0u, 19989u)), vec4<u32>(104856u, 8168u, 15226u, 0u))));
    let var_1 = Struct_3(vec4<u32>(~((var_0.b.x | 4294967295u) << (_wgslsmith_div_u32(1u, 1u) % 32u)), _wgslsmith_clamp_u32(1u, 4294967295u, 0u), var_0.b.x, _wgslsmith_add_u32(53621u, _wgslsmith_mod_u32(var_0.b.x << (30893u % 32u), 5885u))), (firstTrailingBit(16889i) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(34769u, var_0.b.x), abs(var_0.b.x)) % 32u)) ^ ~max(_wgslsmith_sub_i32(u_input.a.x, var_0.a.x), 0i), firstLeadingBit(19597u), vec3<bool>(true, !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = Struct_5(countOneBits(vec3<u32>(_wgslsmith_div_u32(4294967295u, var_0.b.x >> (57006u % 32u)), _wgslsmith_mod_u32(var_1.c >> (4294967295u % 32u), select(0u, var_1.c, true)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, var_1.c, 4294967295u), ~var_1.c))));
    var_0 = Struct_4(var_0.a >> (var_0.b % vec4<u32>(32u)), var_1.a);
    var_0 = Struct_4(_wgslsmith_mod_vec4_i32(var_0.a, countOneBits(var_0.a)), countOneBits(vec4<u32>(~var_1.a.x, ~0u, (var_0.b.x >> (58346u % 32u)) << (reverseBits(30885u) % 32u), ~var_1.c >> (var_1.a.x % 32u))));
    return !var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(select(func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1560f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true | (u_input.a.x != u_input.a.x), false), false);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(-139f - -1490f)))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-877f, -919f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1903f, -824f, var_0.x)), _wgslsmith_f_op_f32(trunc(1875f)))))));
    var_0 = vec2<bool>(true, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-995f, 516f)) - vec2<f32>(1f, 1071f))));
    let var_1 = abs(countOneBits(max(-vec4<i32>(44369i, 8201i, u_input.a.x, -2147483647i), ~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(-876i, -75538i, -8102i, u_input.a.x), vec4<i32>(-25247i, -34595i, -1i, u_input.a.x)) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_2 = Struct_5(vec3<u32>(1u ^ _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(53097u, 120325u)), countOneBits(vec2<u32>(0u, 1u))), ~(~0u), ~(~1u)));
    var_0 = vec2<bool>(((var_1.x > -12515i) | var_0.x) & true, !var_0.x || true);
    global0 = -656f;
    var var_3 = Struct_5(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1498f, -720f), vec2<u32>(~(~var_2.a.x), 43030u) ^ var_3.a.zx, ~(~vec3<u32>(0u, var_3.a.x & var_3.a.x, max(0u, 1u))), countOneBits(var_1) << (select(reverseBits(vec4<u32>(69504u, 4294967295u, 41307u, var_3.a.x)) >> (countOneBits(vec4<u32>(0u, 0u, var_2.a.x, var_2.a.x)) % vec4<u32>(32u)), firstTrailingBit(min(vec4<u32>(25740u, 7233u, var_3.a.x, var_3.a.x), vec4<u32>(126245u, var_2.a.x, 0u, 23118u))), false & any(vec3<bool>(false, var_0.x, var_0.x))) % vec4<u32>(32u)));
}

