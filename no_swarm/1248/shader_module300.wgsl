struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32 = -1268f;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1504f + _wgslsmith_f_op_f32(f32(-1f) * -1277f)) + 459f), _wgslsmith_f_op_f32(trunc(-1134f))));
    let var_1 = arg_1.x;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) + _wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(121f)))))), -1007f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), u_input.a, global0.x);
    return -_wgslsmith_mult_i32(_wgslsmith_sub_i32(-25042i, var_2.b), var_2.b);
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_2.a;
    global0 = ~(vec3<u32>(3165u, ~_wgslsmith_sub_u32(18805u, arg_3), arg_3) >> (vec3<u32>(arg_2.c, abs(arg_3), _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, global0.x), max(arg_3, arg_2.c))) % vec3<u32>(32u)));
    global1 = 1577f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a));
    let var_1 = _wgslsmith_add_i32(~firstLeadingBit(1i), ~(arg_2.b & 0i));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(-firstLeadingBit(u_input.a) >> (arg_3 % 32u), 1i, _wgslsmith_clamp_i32(-func_3(-521f, vec2<i32>(var_1, arg_2.b), Struct_1(arg_2.a, arg_2.b, 23673u), arg_2), ~(i32(-1i) * -11647i), _wgslsmith_add_i32(~u_input.a, 27260i)), arg_2.b), _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, u_input.a, 44078i, 8813i), vec4<i32>(arg_2.b, 0i, arg_2.b, arg_2.b), vec4<i32>(-1i, 24575i, -5709i, var_1)) | ~select(vec4<i32>(arg_2.b, var_1, -29729i, var_1), vec4<i32>(u_input.a, 19851i, -8547i, arg_2.b), arg_0.a.x), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, var_1, -1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1, var_1, u_input.a), vec4<i32>(0i, -71036i, u_input.a, -12313i))) << (vec4<u32>(arg_2.c, _wgslsmith_mult_u32(global0.x, 1u), ~arg_3, global0.x) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = all(select(vec2<bool>(arg_0.a >= arg_1.a, all(vec3<bool>(true, false, true))), !select(vec2<bool>(false, false), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), all(vec4<bool>(true, true, true, true))));
    var var_1 = -_wgslsmith_sub_vec2_i32(vec2<i32>(8585i << (arg_1.c % 32u), func_3(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.b, arg_1.b), vec2<i32>(arg_0.b, arg_1.b), vec2<i32>(arg_1.b, 1i)), arg_1, Struct_1(arg_0.a, -1i, 0u))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a, arg_0.b) >> (vec2<u32>(arg_0.c, global0.x) % vec2<u32>(32u))), firstLeadingBit(countOneBits(vec2<i32>(u_input.a, arg_1.b)))));
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(~(i32(-1i) * -45225i), _wgslsmith_add_i32(0i, _wgslsmith_add_i32(firstLeadingBit(var_1.x), _wgslsmith_add_i32(1i, -35385i))), u_input.a), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(arg_1.b, var_1.x), 2147483647i) | var_1.x);
    let var_3 = select(select(vec4<bool>(false, firstLeadingBit(4294967295u) < arg_2, var_0, true), select(vec4<bool>(var_0, false, any(vec3<bool>(var_0, var_0, var_0)), false), select(vec4<bool>(true, var_0, true, true), vec4<bool>(var_0, var_0, var_0, var_0), !vec4<bool>(var_0, false, var_0, var_0)), select(vec4<bool>(var_0, false, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, false, var_0, false), true), vec4<bool>(false, var_0, var_0, false))), var_0), vec4<bool>(any(select(vec2<bool>(var_0, var_0), !vec2<bool>(var_0, false), all(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a))) > _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_0.a)), false, false), true);
    global1 = _wgslsmith_f_op_f32(-arg_0.a);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(floor(354f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a)))), arg_0.a, (arg_2 | (global0.x ^ 25626u)) != _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 87072u, 0u)), abs(vec3<u32>(32914u, 4294967295u, 37402u))))), _wgslsmith_f_op_f32(585f * arg_0.a)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f * 641f)), -(i32(-1i) * -2147483647i), 1u), Struct_1(1f, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 57070i, u_input.a, -32695i), func_2(Struct_3(vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, false), Struct_1(-1000f, u_input.a, global0.x), arg_0.x)), max(abs(arg_0.x), global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 20443u, global0.x, global0.x), vec4<u32>(arg_0.x, arg_0.x, 57800u, global0.x)), arg_0.x, select(arg_0.x, global0.x, false)), vec4<u32>(4294967295u, arg_0.x, 0u, arg_0.x) & (vec4<u32>(4294967295u, 0u, 34577u, 4294967295u) << (vec4<u32>(8257u, arg_0.x, arg_0.x, global0.x) % vec4<u32>(32u)))))));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-664f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1455f, 450f, false)))))), -812f));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -227f);
    let var_0 = any(select(vec2<bool>(true, true), vec2<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))), true));
    let var_1 = _wgslsmith_mult_u32(global0.x, arg_0.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(224f * 1647f), _wgslsmith_f_op_f32(f32(-1f) * -771f)), _wgslsmith_f_op_f32(-683f - -1000f)))), -2147483647i, ~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f - -1322f) + _wgslsmith_f_op_f32(1060f * 1072f)) + -212f)) - 1f);
    var var_0 = func_1(vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4155u, global0.x, global0.x), vec3<u32>(global0.x, 1u, 41588u))), _wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), 4294967295u >> (global0.x % 32u))), max(5985u, _wgslsmith_mod_u32(global0.x, ~global0.x))));
    let var_1 = Struct_3(vec4<bool>(!(_wgslsmith_f_op_f32(-656f + var_0.a) == var_0.a), _wgslsmith_f_op_f32(min(var_0.a, -1677f)) >= _wgslsmith_f_op_f32(1083f - _wgslsmith_f_op_f32(sign(826f))), true & (~global0.x <= 25485u), true));
    let var_2 = vec3<bool>(true, any(select(var_1.a.yz, vec2<bool>(true, true), var_1.a.wy)), var_0.b >= ~countOneBits(~1i));
    var var_3 = vec4<u32>(26173u, reverseBits(global0.x), 22668u, 1u);
    global1 = var_0.a;
    let var_4 = ~var_3.xyx & ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(38415u, global0.x, 1u, 6574u), vec4<u32>(4294967295u, global0.x, 1u, 1u)), ~var_3.x, _wgslsmith_dot_vec3_u32(var_3.wzz, vec3<u32>(global0.x, 0u, var_0.c))) << (var_3.zww % vec3<u32>(32u)));
    let var_5 = _wgslsmith_add_i32(u_input.a, reverseBits(~(0i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_3.yww), 1f, vec3<u32>(_wgslsmith_mod_u32(~(~var_3.x), var_4.x | 1u), 4294967295u, 41781u));
}

