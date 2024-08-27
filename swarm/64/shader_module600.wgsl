struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -20190i, -1i, u_input.a.x), firstTrailingBit(-abs(vec4<i32>(u_input.b.x, 2147483647i, 26795i, 49471i)))), -42577i);
    let var_1 = Struct_1(!vec4<bool>(!all(vec3<bool>(false, false, true)), select(select(true, true, false), any(vec4<bool>(false, true, false, false)), true), !any(vec2<bool>(false, false)), false), select(min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), abs(u_input.b.x), countOneBits(u_input.a.x)), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x ^ u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 1i))), ~u_input.b.x, true), true);
    return any(select(var_1.a.xzz, vec3<bool>(var_1.a.x, var_1.a.x, any(vec2<bool>(false, var_1.c))), select(all(var_1.a) && all(vec3<bool>(var_1.c, false, var_1.a.x)), all(vec4<bool>(true, var_1.a.x, false, true)), var_1.c)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), true)), u_input.a.x | u_input.a.x, func_3());
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-279f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1089f)))));
    let var_1 = reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.e.x, arg_0.x, arg_0.x)), ~abs(vec3<u32>(u_input.e.x, 61751u, u_input.e.x))), 1u));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -846f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, -912f)), -1445f)));
    return -1000f;
}

fn func_1(arg_0: i32) -> u32 {
    global0 = _wgslsmith_f_op_f32(-730f - 1584f);
    let var_0 = 0u;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)) * -813f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * _wgslsmith_f_op_f32(f32(-1f) * -623f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(var_0, var_0))) * -304f)));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x), ~u_input.b.x), abs(vec2<i32>(u_input.b.x, -57199i)))), abs(reverseBits(vec2<i32>(u_input.b.x, -3853i))));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-207f)), 883f)))))));
    return _wgslsmith_sub_u32(var_0, ~(~firstTrailingBit(u_input.c) & ~abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false)), -u_input.b.x, (!(-2147483647i < u_input.b.x) | !select(false, true, false)) || true);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(func_1(var_0.b), u_input.c ^ 26263u), max(u_input.e.x, reverseBits(u_input.d))), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(12314u, u_input.e.x)), vec2<u32>(38997u, ~1u))), abs(u_input.e.x));
    let var_2 = countOneBits(1u);
    var var_3 = ~34351u;
    var_0 = Struct_1(!vec4<bool>(var_0.c, var_0.a.x, countOneBits(var_2) != u_input.c, true), -38291i, any(select(!(!var_0.a.xx), vec2<bool>(true, true), !vec2<bool>(var_0.a.x, var_0.a.x))));
    var_3 = u_input.e.x;
    var_1 = ~4294967295u;
    var var_4 = Struct_1(vec4<bool>(true, var_0.c, var_0.c, true), -u_input.b.x, true);
    var_0 = Struct_1(!var_4.a, _wgslsmith_clamp_i32(-1i, -1i, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_4.b, var_0.b), vec4<i32>(30350i, var_0.b, 8896i, -1i)), max(var_4.b, _wgslsmith_mod_i32(var_4.b, u_input.b.x)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(min(var_4.b, 7194i), select(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 4294967295u, u_input.d, 1u) >> (vec4<u32>(4294967295u, u_input.d, var_2, u_input.e.x) % vec4<u32>(32u))), ~(~vec4<u32>(var_2, 0u, var_2, 12084u))), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, firstLeadingBit(51298u)), abs(_wgslsmith_div_u32(u_input.c, 1u))), var_4.a.x), 40367u, -122f);
}

