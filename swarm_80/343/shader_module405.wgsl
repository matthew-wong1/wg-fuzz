struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<i32> {
    global0 = vec2<i32>(12585i, firstLeadingBit(12177i));
    var var_0 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x << (min(u_input.a, 5778u) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_0.d, 1i), ~vec3<i32>(arg_0.d, global0.x, 7416i)), -2147483647i, global0.x), ~(-vec4<i32>(-1297i, 13623i, global0.x, arg_0.d))), _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, 58125u, u_input.a))), vec3<u32>(arg_2, ~1u, u_input.a) << (~abs(vec3<u32>(5534u, 4294967295u, u_input.a)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(arg_0.a + -2385f), all(vec3<bool>(any(vec3<bool>(arg_0.c, true, true)), !arg_1, all(vec4<bool>(false, arg_0.b, arg_0.b, false)))), true, ~global0.x), -762f, arg_0);
    return ~vec3<i32>(-firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(3025i, var_0.e.d, -2147483647i), var_0.a.ywy)), 2147483647i, _wgslsmith_add_i32(reverseBits(-85930i), arg_0.d));
}

fn func_2() -> vec2<i32> {
    global0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.x, 0i), vec3<i32>(10887i, global0.x, global0.x)), 11029i), global0.x), abs(firstTrailingBit(reverseBits(vec2<i32>(22710i, -1i)))));
    var var_0 = Struct_2(~vec4<i32>(1i, 44217i, global0.x, _wgslsmith_add_i32(23915i, global0.x)), select(~(~u_input.a << (u_input.a % 32u)), ~0u, 1u != (_wgslsmith_dot_vec2_u32(vec2<u32>(60933u, 51844u), vec2<u32>(4294967295u, u_input.a)) >> ((u_input.a >> (26859u % 32u)) % 32u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + -2770f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-840f)))), all(vec3<bool>(all(vec2<bool>(true, false)), true, false)), true, -1i), 267f, Struct_1(-105f, true, true, _wgslsmith_dot_vec3_i32(vec3<i32>(-26446i, _wgslsmith_sub_i32(global0.x, global0.x), -9215i), _wgslsmith_sub_vec3_i32(func_3(Struct_1(-1103f, true, false, 2147483647i), true, 4294967295u), -vec3<i32>(-56596i, global0.x, 20716i)))));
    let var_1 = var_0.e;
    return var_0.a.yy;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    global0 = _wgslsmith_add_vec2_i32(arg_0, func_2());
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f)), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), firstLeadingBit(arg_0.x));
    let var_1 = Struct_2(_wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(arg_0.x, 2147483647i, var_0.d, arg_1)), -firstLeadingBit(~vec4<i32>(-53766i, var_0.d, -2147483647i, 0i))), u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -648f)) * 167f), false, any(!(!vec2<bool>(var_0.c, true))), 2147483647i), -962f, Struct_1(-1061f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2090f, -187f, var_0.c)) + var_0.a) > _wgslsmith_f_op_f32(-var_0.a), true, global0.x));
    let var_2 = vec2<bool>(!(_wgslsmith_add_i32(arg_1, ~var_1.c.d) != (i32(-1i) * -var_1.a.x)), any(select(vec3<bool>(var_0.c, true, var_0.b), vec3<bool>(true, all(vec2<bool>(var_0.b, false)), false), select(vec3<bool>(var_1.e.b, true, false), vec3<bool>(false, true, var_1.c.b), true))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1319f, var_1.e.a, true))), var_1.c.c, all(!(!select(vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.c), var_2))), ~firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, arg_1), vec2<i32>(var_0.d, global0.x)), abs(var_1.a.zx))));
    return 36740i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(800f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1065f, 419f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1323f)), _wgslsmith_f_op_f32(select(770f, 513f, false))))));
    let var_1 = 0u;
    global0 = ~vec2<i32>(-18300i, _wgslsmith_mod_i32(-1i, (global0.x & global0.x) << (~32276u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_clamp_u32(1u, ~var_1, var_1) & u_input.a) >> (var_1 % 32u), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global0.x, 44449i), countOneBits(2147483647i)) | ~global0.x, firstLeadingBit(~global0.x ^ -24862i)), vec3<i32>(func_1(vec2<i32>(global0.x, max(global0.x, global0.x)), abs(_wgslsmith_div_i32(-1i, 25857i))), 1i, -23664i), vec4<u32>(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 72036u, 5105u, 67532u), vec4<u32>(4294967295u, 28434u, var_1, u_input.a)), ~3078u ^ ~u_input.a, all(vec3<bool>(true, false, var_0)) != (var_1 < 1u)), _wgslsmith_clamp_u32(var_1 >> (2009u % 32u), var_1 ^ 4294967295u, 0u >> (u_input.a % 32u)) << (u_input.a % 32u), _wgslsmith_add_u32(min(var_1, 40773u << (var_1 % 32u)), 1u), select(~0u, _wgslsmith_sub_u32(var_1, u_input.a), true) & var_1), abs(_wgslsmith_add_vec2_u32(~select(vec2<u32>(5870u, 808u), vec2<u32>(u_input.a, 0u), var_0), countOneBits(~vec2<u32>(var_1, var_1)))));
}

