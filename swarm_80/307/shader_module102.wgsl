struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(vec4<u32>(select(71875u, 13355u >> (u_input.d % 32u), !arg_0.c), _wgslsmith_sub_u32(arg_0.a.x & 4294967295u, 1u), 4790u, 0u) << (~(~vec4<u32>(15002u, arg_0.e, arg_0.d.x, u_input.d)) % vec4<u32>(32u)), arg_0.b, false, vec4<u32>(u_input.d, arg_0.d.x, 1u, 0u), firstTrailingBit(arg_0.d.x));
    var var_1 = ~u_input.d < var_0.d.x;
    var_1 = false;
    var var_2 = countOneBits(vec4<u32>(abs(24236u) << (select(0u, 1u, arg_0.c) % 32u), firstLeadingBit(_wgslsmith_div_u32(1u, 1u)), ~1u, _wgslsmith_mod_u32(arg_0.e, 32907u))) ^ countOneBits(~var_0.a);
    return var_0.b.d;
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -220f))))));
    var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c - -297f), arg_0.d.x, _wgslsmith_f_op_f32(select(arg_0.c, arg_0.a, false))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_div_f32(arg_0.d.x, arg_0.d.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.d)), _wgslsmith_f_op_vec3_f32(ceil(arg_0.d)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, arg_0.d.x, -1752f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<u32>(arg_0.b.x, 4294967295u, arg_0.b.x, u_input.d), Struct_1(arg_0.d.x, vec2<u32>(arg_0.b.x, u_input.d), -118f, vec3<f32>(-283f, -1591f, arg_0.d.x)), false, vec4<u32>(u_input.d, arg_0.b.x, 0u, 19784u), u_input.d))))))));
    let var_2 = select(reverseBits(vec2<i32>(-2147483647i, (u_input.c.x | u_input.a) | u_input.b)), vec2<i32>(-(_wgslsmith_mult_i32(u_input.a, 0i) & 1i), firstLeadingBit(-(-1i & u_input.a))), arg_0.d.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
    let var_3 = ~vec4<u32>(0u, u_input.d, 81394u, u_input.d);
    return u_input.d;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = true;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(~(~_wgslsmith_clamp_u32(u_input.d, 4294967295u, 0u)), _wgslsmith_mod_u32(~u_input.d, countOneBits(76436u)) ^ 0u), abs(_wgslsmith_add_vec2_u32(abs(abs(vec2<u32>(u_input.d, 0u))), firstTrailingBit(~vec2<u32>(46894u, u_input.d)))), ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(26029u, u_input.d), firstTrailingBit(vec2<u32>(u_input.d, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, u_input.d, 63217u, 15360u) >> ((vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(1u, u_input.d, 0u, 13829u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(10293u, 11432u, 0u, 63458u), vec4<u32>(61701u, 0u, 1u, u_input.d)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, func_1(Struct_1(-516f, vec2<u32>(u_input.d, u_input.d), 300f, vec3<f32>(1397f, -516f, -813f))), 14359u, ~80129u), ~vec4<u32>(~9686u, u_input.d, u_input.d, 1u)), Struct_1(-156f, _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d, u_input.d), func_3(-5789i, vec4<bool>(true, true, true, true))), -559f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1605f, 280f, 805f) - vec3<f32>(1000f, 1429f, -1000f))), vec3<f32>(-497f, _wgslsmith_f_op_f32(f32(-1f) * -338f), -1399f)))), all(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), true)), vec4<u32>(45667u, _wgslsmith_add_u32(firstTrailingBit(u_input.d), 33894u), _wgslsmith_add_u32(21951u, 69737u << (u_input.d % 32u)), u_input.d), ~(~(~(~0u))));
    var var_1 = !vec3<bool>(any(!vec4<bool>(false, var_0.c, var_0.c, true)), !var_0.c, var_0.c);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.a, var_0.b.d.x, 457f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.b.d - vec3<f32>(var_0.b.d.x, 1640f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-595f, var_0.b.c, var_0.b.a))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), var_0.b.d.x, var_0.b.a), _wgslsmith_f_op_vec3_f32(select(var_0.b.d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-744f, -476f, 1375f), _wgslsmith_f_op_vec3_f32(trunc(var_0.b.d)))), select(vec3<bool>(var_0.c, true, var_1.x), vec3<bool>(var_0.c, var_1.x, true), var_0.c))))));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(var_0.b.d));
    let var_3 = Struct_2(_wgslsmith_div_vec4_u32(select(var_0.a, vec4<u32>(30629u | var_0.e, ~u_input.d, var_0.d.x >> (29297u % 32u), u_input.d | 5385u), !(var_0.c & false)), abs(select(var_0.d, var_0.d, var_0.c)) & select(_wgslsmith_mod_vec4_u32(var_0.d, var_0.d), vec4<u32>(27388u, var_0.d.x, 30763u, u_input.d) | vec4<u32>(4258u, u_input.d, 14256u, 1u), var_1.x)), Struct_1(-301f, var_0.a.zw, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec4<u32>(u_input.d, 10344u, u_input.d, var_0.a.x), var_0.b, var_1.x, var_0.d, 7060u))).x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a), 1313f, true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -634f, var_2.x) - _wgslsmith_f_op_vec3_f32(var_0.b.d * vec3<f32>(756f, var_2.x, -149f)))))), all(!(!(!vec4<bool>(false, false, false, var_0.c)))), ~var_0.a, _wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_0.a.x, u_input.d, var_0.b.b.x), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 2013u, u_input.d), var_0.d.xxw), _wgslsmith_mult_vec3_u32(var_0.a.xzx, var_0.a.xxx))), max(var_0.d.wxx, select(~var_0.a.zxx, firstLeadingBit(var_0.a.ywx), select(vec3<bool>(var_0.c, true, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, false, true))))));
    var_0 = var_3;
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.b.d, _wgslsmith_f_op_vec3_f32(-var_3.b.d))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.b >> (~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 0u), var_0.a.yx)) % vec2<u32>(32u)), var_3.b.b.x, vec3<f32>(_wgslsmith_f_op_f32(sign(-373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_3.b.d.x)))) - var_0.b.a), 166f), vec4<i32>(1i >> (0u % 32u), -2147483647i & (u_input.b >> ((var_3.b.b.x & var_0.e) % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 30508i), -u_input.c), _wgslsmith_div_i32(-(~1i), firstTrailingBit(_wgslsmith_sub_i32(u_input.b, u_input.b)))));
}

