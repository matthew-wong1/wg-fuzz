struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(!((_wgslsmith_f_op_f32(-1000f - -2093f) > _wgslsmith_f_op_f32(floor(-560f))) || true));
    var_0 = Struct_2(true);
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(any(vec3<bool>(var_0.a, var_0.a, var_0.a)));
    var var_1 = _wgslsmith_mult_u32(~min(~u_input.a.x >> (4294967295u % 32u), _wgslsmith_mod_u32(u_input.a.x, ~4294967295u)), 69738u);
    return vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a);
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = arg_1.b.d.xz;
    let var_1 = arg_1.e;
    let var_2 = Struct_3(Struct_1(arg_1.b.a << (_wgslsmith_mod_u32(0u & arg_1.a.d.x, _wgslsmith_mod_u32(var_0.x, var_0.x)) % 32u), !func_3(), !(!(!arg_1.b.c)), vec3<u32>(29947u, 7539u, _wgslsmith_div_u32(arg_1.b.a, reverseBits(5977u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.e.x, -544f, arg_1.e) * arg_1.b.e) - _wgslsmith_div_vec3_f32(arg_1.a.e, arg_1.a.e)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, arg_1.b.e.x, arg_1.a.e.x)))), arg_1.b, func_3().x, reverseBits(arg_1.d & -firstLeadingBit(-37961i)), -188f);
    var var_3 = Struct_3(arg_1.a, var_2.a, !(var_2.b.c || false), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1132f + var_1)));
    var_3 = Struct_3(Struct_1(var_0.x, func_3(), var_2.a.c, ~firstTrailingBit(var_2.b.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), 211f, _wgslsmith_f_op_f32(max(var_1, arg_1.e))))), Struct_1(_wgslsmith_add_u32(~arg_1.a.d.x | countOneBits(var_2.a.d.x), 17911u), !select(var_3.a.b, select(vec4<bool>(var_2.c, true, var_2.b.c, var_3.b.b.x), vec4<bool>(var_3.a.b.x, arg_1.a.c, true, var_2.b.c), true), func_3()), !(!any(vec3<bool>(arg_1.c, false, var_3.c))), _wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(var_2.a.d.x, 20622u, var_0.x)), _wgslsmith_mod_vec3_u32(arg_1.a.d, min(var_3.a.d, vec3<u32>(4294967295u, 26535u, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.e + vec3<f32>(var_3.e, 2484f, -2840f)) - vec3<f32>(var_3.b.e.x, -1000f, var_1))), !arg_1.c, var_2.d, -393f);
    return Struct_2(arg_1.a.c);
}

fn func_4(arg_0: Struct_2) -> bool {
    var var_0 = arg_0;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(6689i), _wgslsmith_mod_i32(25272i, -5846i), 1138i, firstLeadingBit(2147483647i)), firstTrailingBit(firstTrailingBit(vec4<i32>(-32724i, 36032i, 1i, -9599i)))), select(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 1i, 0i, 0i), ~vec4<i32>(0i, 0i, -1i, 2147483647i)), arg_0.a)), abs(-20793i));
    var_1 = max(min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -27964i, var_1.x, 1i), vec4<i32>(var_1.x, -45950i, -5042i, 8658i)), var_1.x) | vec2<i32>(-23580i, _wgslsmith_sub_i32(var_1.x, -1054i)), abs(-vec2<i32>(var_1.x, 2147483647i)) << (max(u_input.a.xz, u_input.a.yx & u_input.a.wx) % vec2<u32>(32u))), vec2<i32>(var_1.x, max(-43804i, -34360i)));
    var_0 = arg_0;
    let var_2 = Struct_2(arg_0.a);
    return any(vec4<bool>(var_2.a, select(true, true, true), all(vec4<bool>(true, false, false, false)), var_0.a)) == !var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec3_u32(abs(~u_input.a.wxy), vec3<u32>(min(_wgslsmith_div_u32(4294967295u, u_input.a.x), ~u_input.b | ~u_input.b), 0u, 4294967295u));
    let var_1 = !(!vec2<bool>(true, func_4(func_2(0i, Struct_3(Struct_1(90963u, vec4<bool>(false, false, true, true), true, u_input.a.zzx, vec3<f32>(956f, 957f, 813f)), Struct_1(var_0.x, vec4<bool>(true, false, true, false), true, vec3<u32>(var_0.x, 148527u, var_0.x), vec3<f32>(959f, -524f, 142f)), false, -23386i, -1739f)))));
    let var_2 = firstLeadingBit(select(vec4<u32>(~u_input.a.x, ~18360u, var_0.x | 25196u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_0.x, var_0.x), vec4<u32>(35998u, u_input.a.x, 16988u, var_0.x), vec4<u32>(80790u, 10202u, u_input.b, var_0.x)) & vec4<u32>(u_input.b, 0u, u_input.a.x, 4294967295u), func_3()) ^ _wgslsmith_sub_vec4_u32(~select(vec4<u32>(42409u, 99529u, var_0.x, var_0.x), vec4<u32>(u_input.a.x, 4294967295u, var_0.x, u_input.a.x), false), ~(vec4<u32>(5209u, u_input.a.x, 1162u, var_0.x) >> (u_input.a % vec4<u32>(32u)))));
    let var_3 = Struct_1(299u, vec4<bool>((31773u >= countOneBits(var_0.x)) & all(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, true, false), var_1.x)), false, var_1.x, var_1.x), !(!(_wgslsmith_clamp_i32(2370i, 1i, -1i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, 1i, -45762i), vec4<i32>(-2147483647i, 1i, 7808i, 1i)))), ~(~reverseBits(~u_input.a.ywy)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-261f, -633f, -795f)))))));
    let var_4 = abs(-2147483647i);
    return Struct_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = func_1();
    let var_2 = false;
    var var_3 = firstLeadingBit(0u | u_input.b);
    let var_4 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(~(-58746i) >> (var_0.x % 32u)), select(-12983i, 19736i, !func_3().x)), -2147483647i);
    var var_5 = func_3();
    var var_6 = ~vec4<u32>(0u, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(38461u, var_0.x)), ~u_input.b)), abs(4294967295u ^ ~var_0.x), max(~_wgslsmith_div_u32(6594u, 1u), ~(~803u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_0, select(~(var_0 & vec4<u32>(13809u, 1u, 1u, 10068u)), countOneBits(~vec4<u32>(u_input.a.x, var_6.x, u_input.b, u_input.a.x)), vec4<bool>(true, true | var_2, !var_1.a, any(vec3<bool>(var_2, var_2, true)))), vec4<u32>(u_input.b, _wgslsmith_div_u32(1u, var_0.x) & 33002u, _wgslsmith_div_u32(17148u, var_6.x), u_input.a.x)), ~u_input.a.xyw >> (max(var_6.xyz, firstTrailingBit(vec3<u32>(4294967295u, var_6.x, u_input.a.x))) % vec3<u32>(32u)), 0u);
}

