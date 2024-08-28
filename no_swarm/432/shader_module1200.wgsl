struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2046f)) + _wgslsmith_f_op_f32(f32(-1f) * -902f))), countOneBits(~vec3<u32>(1u, 0u, _wgslsmith_mod_u32(70514u, u_input.c.x))), !(firstTrailingBit(u_input.c.x) < _wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x)), u_input.a.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-800f)), vec3<u32>(var_0.b.x, u_input.b.x, 53153u), var_0.c, var_0.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + var_0.a))) - _wgslsmith_f_op_f32(select(151f, 279f, any(select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, true), vec2<bool>(true, false)))))), select(var_0.b, var_0.b, select(any(vec4<bool>(false, var_0.c, true, var_0.c)), true, false) != all(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))), var_0.c, var_0.d);
    var_0 = Struct_1(1000f, abs(select(countOneBits(var_0.b >> (var_0.b % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, u_input.c.x), ~var_0.b), vec3<bool>(false || var_0.c, var_0.c, true))), var_0.c, var_0.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1298f)), _wgslsmith_div_f32(778f, var_0.a), var_0.a, var_0.a);
    return var_0.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = true & ((u_input.d.x ^ u_input.d.x) != func_3());
    var_0 = arg_1.c;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), arg_1.b, true, -u_input.d.x);
    var var_2 = _wgslsmith_sub_u32(~(~_wgslsmith_mult_u32(~arg_0.x, ~arg_1.b.x)), ~(~26477u));
    let var_3 = arg_1;
    return var_1.b;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(907f - 595f), -1045f))), ~func_2(~vec2<u32>(89813u, 25084u), Struct_1(-1000f, vec3<u32>(u_input.c.x, 4294967295u, 0u), false, -41523i)) << (func_2(countOneBits(abs(u_input.c)), Struct_1(_wgslsmith_f_op_f32(-1000f + 1258f), vec3<u32>(13321u, 92908u, u_input.c.x), true, 1i)) % vec3<u32>(32u)), all(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), u_input.a.x > u_input.d.x), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), vec2<bool>(true, all(vec4<bool>(false, true, false, false))))), -10203i);
    var var_1 = Struct_1(591f, max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(11670u, var_0.b.x, 108943u), _wgslsmith_mult_vec3_u32(var_0.b, var_0.b), ~var_0.b), vec3<u32>(1u, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_0.b.x, 7875u), var_0.b)), _wgslsmith_sub_u32(0u, var_0.b.x))), true, abs(-41637i));
    var var_2 = ~min(max(~vec2<u32>(1u, var_1.b.x), ~vec2<u32>(var_0.b.x, 0u)), var_0.b.zz);
    var_2 = _wgslsmith_clamp_vec2_u32(var_0.b.xz, ~(~(~(~vec2<u32>(var_0.b.x, 4294967295u)))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_2.x, 4359u, 4294967295u) << (vec4<u32>(var_2.x, 0u, 43317u, var_2.x) % vec4<u32>(32u)), vec4<u32>(1u, var_2.x, 15854u, var_1.b.x)), ~36370u));
    var var_3 = Struct_1(797f, vec3<u32>(countOneBits(_wgslsmith_mult_u32(var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(65748u, var_1.b.x), vec2<u32>(var_2.x, var_0.b.x)))), ~(~(var_2.x << (u_input.b.x % 32u))), 50807u), (~func_2(var_0.b.xy, var_0).x << (4294967295u % 32u)) != ~u_input.c.x, u_input.a.x);
    return func_2(~var_0.b.xx, var_0).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u, u_input.c.x, u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.b.x, 11174u, u_input.b.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 52989u, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(19738u, 0u, u_input.c.x, 1u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.c.x), abs(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 1401u))))) ^ ~vec4<u32>(12064u, ~(~u_input.b.x), func_1(), u_input.b.x);
    let var_1 = select(select(vec3<bool>(true, select(any(vec3<bool>(true, true, true)), true, true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), select(vec3<bool>(select(true, true, false), true, select(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(all(vec2<bool>(true, false)), u_input.c.x >= var_0.x, false)), !(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true)), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1443f))), 718f, true)), ~var_0.xzz, any(var_1.xy) || var_1.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1321f, var_2.a)) - _wgslsmith_f_op_f32(ceil(var_2.a))))), -vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.a.x, -1i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 9407i, var_2.d, 1i), vec4<i32>(var_2.d, -1i, -2147483647i, u_input.a.x))), abs(~(-41077i)), 0i));
}

