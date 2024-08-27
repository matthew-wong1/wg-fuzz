struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    let var_0 = vec3<i32>(u_input.e.x, 0i, _wgslsmith_mult_i32(10460i, ~(-9411i)) & _wgslsmith_clamp_i32(~(-1i), -14595i, u_input.e.x));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(u_input.b, u_input.a, u_input.c.x, u_input.a)), _wgslsmith_add_vec4_u32((vec4<u32>(24575u, u_input.a, 17127u, u_input.c.x) | vec4<u32>(u_input.b, 1u, u_input.a, 72031u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.c.x), vec4<u32>(60758u, 0u, u_input.c.x, u_input.a)), vec4<u32>(21720u, _wgslsmith_add_u32(4294967295u, u_input.b), 4294967295u | u_input.b, max(u_input.a, 1u)))), u_input.b, min(u_input.b, u_input.c.x)), 5u)];
    let var_2 = arg_0;
    let var_3 = ~(~firstLeadingBit(vec4<u32>(0u, var_1.c.x ^ 15618u, _wgslsmith_clamp_u32(var_1.a.x, 797u, 11328u), max(32852u, var_1.c.x))));
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - 2518f);
}

fn func_2(arg_0: f32) -> f32 {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_1(u_input.c.xz, ~countOneBits(_wgslsmith_clamp_i32(-u_input.e.x, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec2_u32(~select(u_input.c.xz ^ vec2<u32>(65319u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.a), true), firstLeadingBit(~(~vec2<u32>(44161u, 59205u)))), (min(u_input.e.zww, u_input.e.wxy) >> (vec3<u32>(u_input.c.x, u_input.b, ~u_input.b) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.e.x, 29034i, u_input.e.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d.x, u_input.e.x, 1i), -u_input.e.xwy)));
    return _wgslsmith_f_op_f32(-1722f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-143f + 331f) + arg_0) + _wgslsmith_f_op_f32(1592f + _wgslsmith_f_op_f32(func_3(Struct_2(false), vec2<bool>(true, false))))) + -1080f));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(~u_input.a, _wgslsmith_mod_u32(32534u << (u_input.b % 32u), countOneBits(u_input.a)) & 0u), _wgslsmith_add_u32(u_input.b, 63313u), 31802u);
    return Struct_2(select(!any(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true && arg_0.x, ~26702u < _wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(var_0.x, 77883u))));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = vec4<u32>(1u, ~_wgslsmith_mult_u32(u_input.a | max(4294967295u, 56577u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_add_u32(u_input.a, 24808u))), ~(1u & ((27264u & u_input.a) >> (1u % 32u))), u_input.a);
    var var_1 = func_4(select(select(select(select(vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, arg_0, true, true)), vec4<bool>(false, false, arg_0, false), vec4<bool>(true, true, true, arg_0)), vec4<bool>(arg_0, !arg_0, any(vec4<bool>(arg_0, false, arg_0, arg_0)), true), vec4<bool>(any(vec4<bool>(true, arg_0, arg_0, true)), !arg_0, !arg_0, false && arg_0)), !vec4<bool>(true, arg_0 != arg_0, arg_0, true), !(!(!vec4<bool>(true, false, arg_0, false)))), abs((vec4<i32>(-2147483647i, 1i, 1i, -51804i) << (vec4<u32>(u_input.a, u_input.b, 4294967295u, 1u) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(u_input.d.x, -1i, -2147483647i, -2147483647i), vec4<i32>(14810i, 856i, u_input.e.x, 29268i))) | vec4<i32>(-4012i, 2147483647i << (u_input.b % 32u), _wgslsmith_div_i32(4867i, u_input.d.x & 48835i), u_input.e.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-1443f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(min(-484f, -432f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-742f, -1419f))) * _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(-2123f)))))));
    var var_2 = !(!(!vec3<bool>(arg_0, var_1.a, select(true, arg_0, true))));
    var_2 = select(select(select(!vec3<bool>(true, var_2.x, var_2.x), select(!vec3<bool>(arg_0, false, false), !vec3<bool>(var_2.x, var_2.x, true), true), var_1.a), vec3<bool>(any(vec3<bool>(true, var_1.a, arg_0)), 1u >= _wgslsmith_add_u32(u_input.c.x, var_0.x), all(vec3<bool>(var_2.x, true, arg_0))), select(select(vec3<bool>(true, true, false), !vec3<bool>(var_1.a, var_1.a, false), !vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, any(vec3<bool>(arg_0, true, var_1.a)), u_input.b == var_0.x), var_2.x)), vec3<bool>(true, func_4(vec4<bool>(false, arg_0, true, var_2.x), vec4<i32>(u_input.d.x, u_input.e.x, -2147483647i, u_input.e.x) >> (vec4<u32>(var_0.x, 4294967295u, 27575u, u_input.a) % vec4<u32>(32u)), 752f).a & all(!vec4<bool>(true, var_1.a, var_2.x, true)), arg_0), true);
    var var_3 = Struct_2(!all(vec4<bool>(!arg_0, true, all(vec4<bool>(var_1.a, var_1.a, true, var_1.a)), var_1.a)));
    return var_0.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = u_input.e.yyx & -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(-54340i, u_input.e.x), -u_input.e.x), -min(u_input.e.x, arg_0.b), 0i);
    var var_1 = -2147483647i;
    global0 = array<Struct_1, 5>();
    var_0 = u_input.e.zwz;
    var_1 = _wgslsmith_clamp_i32(arg_1.d.x ^ (max(_wgslsmith_mod_i32(1i, arg_1.d.x), var_0.x << (arg_0.a.x % 32u)) >> (_wgslsmith_add_u32(arg_1.c.x, 1u) % 32u)), max(arg_0.b, ((var_0.x | arg_0.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(56111u, 0u, arg_1.c.x, 0u), vec4<u32>(arg_1.c.x, 4294967295u, 61338u, 27701u)) % 32u)) << (arg_0.a.x % 32u)), -7866i);
    return !(!vec4<bool>(true, all(vec2<bool>(false, false)) | true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = u_input.d.x;
    let var_1 = ~firstTrailingBit(u_input.c);
    let var_2 = select(!func_5(Struct_1(vec2<u32>(43279u, u_input.c.x), reverseBits(0i), vec2<u32>(u_input.b, 0u), firstTrailingBit(u_input.e.zww)), global0[_wgslsmith_index_u32(func_1(true), 5u)]), !select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), all(vec4<bool>(false, false, false, false))), func_5(global0[_wgslsmith_index_u32(~96386u, 5u)], global0[_wgslsmith_index_u32(~48336u, 5u)]), vec4<bool>(true, true, true, true)), !(!vec4<bool>(all(vec2<bool>(true, true)), true, true, any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_div_u32(15431u, 37602u), ~4294967295u), (var_1 ^ u_input.c) >> (u_input.c % vec3<u32>(32u))), countOneBits(select(vec2<u32>(~4294967295u, 13017u), select(var_1.zz, var_1.xy & vec2<u32>(4294967295u, 1u), any(var_2.xyy)), var_2.x)));
}

