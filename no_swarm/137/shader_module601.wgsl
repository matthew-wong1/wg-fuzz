struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = !(!vec4<bool>(any(!vec3<bool>(false, arg_2, true)), select(arg_2, any(vec4<bool>(arg_2, arg_2, arg_2, false)), any(vec3<bool>(arg_2, arg_2, true))), !arg_2, true));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-100f, 307f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.c.x, arg_0.a.c.x) - _wgslsmith_f_op_f32(arg_0.b.c.x - -1249f)), arg_0.a.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1299f, -800f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.b.c.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.c) * _wgslsmith_f_op_vec3_f32(-arg_0.b.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(317f, 516f, -171f), arg_0.b.c) - arg_0.a.c), arg_2))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), arg_0.b.x >> (arg_0.b.x % 32u)), 4294967295u, arg_0.b.x), u_input.a), ~(~max(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, u_input.a.x), u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(1u, 11208u, u_input.a.x), vec3<f32>(-397f, 1000f, -1384f), u_input.d, u_input.c), Struct_1(arg_0.b.wyz, arg_0.b.wzz, vec3<f32>(-3167f, -309f, 376f), vec4<i32>(638i, -13871i, -1i, 0i), u_input.c)), u_input.a, false, Struct_4(Struct_2(u_input.d.x, vec4<u32>(u_input.a.x, arg_0.b.x, arg_0.b.x, u_input.a.x)))))))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, u_input.c.x, u_input.c.x), u_input.d) << ((vec4<u32>(0u, 16290u, arg_0.b.x, u_input.a.x) >> (vec4<u32>(4294967295u, 1u, arg_0.b.x, arg_0.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & (u_input.c ^ u_input.c), ~u_input.c ^ abs(select(vec4<i32>(arg_0.a, -24206i, u_input.c.x, 28454i), u_input.c, vec4<bool>(false, true, false, false)) << (vec4<u32>(4294967295u, u_input.a.x, arg_0.b.x, 4294967295u) % vec4<u32>(32u))));
    let var_1 = !(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)))));
    var var_2 = _wgslsmith_add_i32(-(~(~var_0.e.x) ^ arg_0.a), 1i);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(var_0.c.x, -609f), _wgslsmith_div_f32(363f, 1000f), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x));
    let var_4 = Struct_1(_wgslsmith_mult_vec3_u32(var_0.b, ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_0.b.x, 12933u), var_0.b)), ~(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, arg_0.b.x, 25086u), arg_0.b.wyw)) ^ arg_0.b.xyy), _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), var_3.x, var_3.x)), -firstTrailingBit(-vec4<i32>(u_input.d.x, -2147483647i, -5211i, arg_0.a) & var_0.d), countOneBits(u_input.d));
    return var_4;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = select(abs(vec4<u32>(u_input.a.x, ~(~u_input.a.x), countOneBits(~u_input.a.x), _wgslsmith_mult_u32(~u_input.a.x, arg_2.a.b.x ^ 31312u))), vec4<u32>(~1u, arg_0 | firstTrailingBit(select(arg_0, arg_0, true)), u_input.a.x, min(~_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(744u, 2834u)), 4294967295u)), any(vec4<bool>(true, true, true, true)) && select(true, true, !select(true, false, false)));
    let var_1 = func_2(Struct_2(-(arg_2.b.e.x << (0u % 32u)), var_0));
    var var_2 = _wgslsmith_f_op_f32(exp2(var_1.c.x));
    let var_3 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1140f - var_1.c.x))) + 180f));
    return var_0 & abs(firstTrailingBit(~(~var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (u_input.a % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~(firstLeadingBit(u_input.a) ^ (u_input.a >> (u_input.a % vec3<u32>(32u)))), reverseBits(reverseBits(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-117f)), -464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(max(-1234f, -275f))) - -255f)), abs(_wgslsmith_clamp_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(u_input.d, u_input.c), -u_input.c), countOneBits(vec4<i32>(u_input.c.x, u_input.d.x, -8011i, u_input.b.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 39316u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), ((vec4<i32>(-2147483647i, -5099i, u_input.d.x, u_input.b.x) >> ((vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.b.x, -1i, 0i, u_input.c.x)) << ((~vec4<u32>(1u, 35286u, 75128u, 1u) ^ _wgslsmith_add_vec4_u32(func_1(1u, u_input.d.x, Struct_3(Struct_1(u_input.a, vec3<u32>(u_input.a.x, 109488u, 377u), vec3<f32>(567f, 286f, -489f), vec4<i32>(u_input.c.x, u_input.b.x, u_input.d.x, u_input.b.x), vec4<i32>(u_input.d.x, u_input.b.x, u_input.c.x, -1i)), Struct_1(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a, vec3<f32>(1000f, -806f, -1127f), vec4<i32>(u_input.c.x, -11911i, u_input.c.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, -40412i, u_input.c.x)))), ~vec4<u32>(14937u, 6923u, 16036u, 1u))) % vec4<u32>(32u)));
    var var_1 = ~(~(~vec4<u32>(4294967295u, var_0.a.x, u_input.a.x, u_input.a.x))) << (~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_0.b.x, 2112u, 0u), vec4<u32>(72084u, var_0.b.x, 0u, var_0.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(10889u, var_0.b.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, var_0.a.x, 47822u, 17825u))), u_input.a.x, ~0u, countOneBits(24446u << (1u % 32u))) % vec4<u32>(32u));
    var_1 = vec4<u32>(66450u, u_input.a.x, ~_wgslsmith_clamp_u32(~12146u, abs(4294967295u), 4294967295u), ~((u_input.a.x << (var_0.b.x % 32u)) | u_input.a.x) & u_input.a.x);
    var_1 = vec4<u32>(u_input.a.x, abs(_wgslsmith_clamp_u32(abs(0u) >> (var_1.x % 32u), countOneBits(12292u) | (0u << (var_0.b.x % 32u)), var_0.a.x)), ~0u, var_1.x >> (_wgslsmith_sub_u32(func_1(_wgslsmith_mod_u32(var_1.x, 2458u), -var_0.d.x, Struct_3(var_0, var_0)).x, ~1u | u_input.a.x) % 32u));
    var_1 = ~vec4<u32>(var_0.a.x, countOneBits(abs(var_1.x)), var_0.a.x, var_1.x) ^ vec4<u32>(select(4294967295u, select(var_0.a.x, ~0u, var_1.x >= 1u), select(all(vec2<bool>(true, false)), false, any(vec2<bool>(true, true)))), abs(39923u), _wgslsmith_div_u32(var_0.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, var_1.x), 0u)), var_1.x);
    var var_2 = vec4<bool>(true, any(vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), select(any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, false))), any(vec3<bool>(true, true, true)))), false, any(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true))));
    var_1 = select(vec4<u32>(57488u, u_input.a.x, reverseBits(_wgslsmith_mult_u32(var_0.a.x >> (var_1.x % 32u), var_1.x)), _wgslsmith_sub_u32(1u ^ firstTrailingBit(1u), var_1.x)), vec4<u32>(~(~var_1.x), _wgslsmith_div_u32(var_0.a.x, var_0.a.x), u_input.a.x ^ _wgslsmith_sub_u32(var_0.a.x, u_input.a.x | u_input.a.x), 1u), !select(vec4<bool>(true, true, false, var_2.x), !select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(var_2.x, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x << (61662u % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), var_0.c.x)) - -1222f), var_0.c.x)), -(~u_input.d.zyx), select(var_0.b, var_1.xww, all(select(vec3<bool>(var_2.x, true, true), var_2.yxz, var_2.x))));
}

