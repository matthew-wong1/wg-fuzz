struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-904f, -1568f)))))) != _wgslsmith_f_op_f32(f32(-1f) * -2932f), true, any(!vec2<bool>(select(arg_1.b, arg_1.b, true), arg_0.b.x != u_input.d)));
    var var_1 = Struct_2(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-664f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1167f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(select(-459f, 829f, arg_1.b))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-685f))))), vec3<u32>(9959u, u_input.c.x, (abs(1u) & _wgslsmith_add_u32(arg_1.a.x, arg_0.a)) << (arg_1.a.x % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(2944f, 1000f, 428f) * vec3<f32>(1527f, 615f, 1000f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(153f, -376f, 1801f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, -1421f, 1208f)))), arg_1.b & (arg_1.b && arg_1.b)))));
    var_0 = select(select(vec3<bool>(arg_1.b, all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, arg_1.b), vec3<bool>(arg_1.b, true, true))), any(vec3<bool>(arg_1.b, true, false)) | all(vec4<bool>(arg_1.b, true, false, arg_1.b))), select(!vec3<bool>(arg_1.b, false, arg_1.b), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), var_0.x), !select(vec3<bool>(arg_1.b, true, false), vec3<bool>(arg_1.b, arg_1.b, true), arg_1.b)), vec3<bool>(var_0.x, !all(!vec3<bool>(true, false, arg_1.b)), any(vec4<bool>(true, arg_1.b, false, true))), select(vec3<bool>(true, arg_1.b, all(vec2<bool>(false, false))), !vec3<bool>(arg_1.b | var_0.x, var_0.x, !var_0.x), vec3<bool>(true, select(true, true, u_input.b != var_1.a), all(vec3<bool>(var_0.x, true, arg_1.b)))));
    let var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~min(vec2<u32>(var_1.c.x, var_1.c.x), var_1.c.zx), min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 63334u), arg_1.a), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 8789u), vec2<u32>(1u, var_1.c.x)))), var_1.c.xz), select(~(vec2<u32>(27039u, arg_0.a) ^ vec2<u32>(u_input.c.x, 47289u)), countOneBits(vec2<u32>(var_1.c.x, 105639u)) | var_1.c.zx, !var_0.xz));
    var_0 = vec3<bool>(arg_1.b, true, false && all(var_0.xy));
    return ~_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.b.zyx << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.x, u_input.c.x, var_2.x), vec3<u32>(arg_0.a, arg_1.a.x, arg_1.a.x)) % vec3<u32>(32u))), ~arg_0.b.xxz);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(abs(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1000f, -228f, -946f), vec4<f32>(704f, -117f, 572f, 725f), vec4<bool>(false, true, false, false))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1015f, -1431f, 157f, -454f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1974f, 2629f)) * _wgslsmith_div_f32(-1556f, -539f)), -362f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-811f, 569f)), -1236f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f + -512f)))), vec3<u32>(reverseBits(22142u), ~u_input.c.x, ~5424u) | vec3<u32>(~u_input.c.x ^ ~u_input.c.x, ~(u_input.c.x >> (1691u % 32u)), u_input.c.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1914f)), _wgslsmith_f_op_f32(-1417f * -643f))), _wgslsmith_f_op_f32(f32(-1f) * -2061f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(193f, -733f)))))));
    let var_1 = vec4<bool>(false, any(vec2<bool>(true, true)), -600f >= _wgslsmith_f_op_f32(-var_0.d.x), true);
    var var_2 = abs(vec3<i32>(func_3(Struct_1(1u, select(vec4<i32>(u_input.d, u_input.b, -2147483647i, var_0.a), vec4<i32>(var_0.a, 0i, var_0.a, var_0.a), var_1.x)), Struct_3(var_0.c.zx, true)), u_input.b, _wgslsmith_div_i32(max(~var_0.a, var_0.a | var_0.a), _wgslsmith_sub_i32(u_input.d, _wgslsmith_div_i32(24759i, var_0.a)))));
    var var_3 = var_1.x;
    let var_4 = var_0.d.yz;
    return !vec4<bool>(true, all(select(var_1.wx, vec2<bool>(true, var_1.x), !vec2<bool>(true, var_1.x))), var_1.x, var_1.x);
}

fn func_1() -> vec4<i32> {
    let var_0 = all(select(vec3<bool>(any(func_2()), true, true), vec3<bool>(-31572i > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(u_input.a, -71275i, -1i)), true, any(vec2<bool>(false, true))), true));
    var var_1 = -37080i;
    let var_2 = any(vec2<bool>(false, false));
    var_1 = u_input.b;
    let var_3 = !(any(func_2().yxw) & !var_0);
    return vec4<i32>(50271i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, u_input.a, 0i, -1i), vec4<i32>(-1i, 25722i, u_input.b, 8292i)), firstTrailingBit(vec4<i32>(u_input.b, u_input.a, 58319i, u_input.d))), u_input.d), countOneBits(select(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.d)), vec2<i32>(-7661i, -4188i), !vec2<bool>(var_3, var_0)))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.d, -1i, u_input.a, 81964i)), _wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 15639i, -65032i, u_input.a), select(vec4<i32>(32703i, u_input.d, 33894i, u_input.d), vec4<i32>(u_input.b, u_input.d, 1i, 2147483647i), true))), _wgslsmith_div_vec4_i32(func_1(), -(~vec4<i32>(7884i, -1990i, u_input.b, u_input.d)))) & ~(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.d), vec4<i32>(52259i, -68306i, u_input.b, u_input.b), true), vec4<i32>(u_input.b, u_input.b, 1i, 48408i) << (vec4<u32>(132084u, 4294967295u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, 10285u, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 79394u)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_mod_u32(~(~1u), _wgslsmith_mod_u32(~max(92454u, 4357u), u_input.c.x));
    var var_2 = Struct_3(vec2<u32>(~(~(~6258u)), countOneBits(0u)), true);
    var_2 = Struct_3(var_2.a, false);
    var var_3 = Struct_2(~(-2147483647i), vec4<f32>(-311f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(898f)), _wgslsmith_f_op_f32(336f - 946f)) + _wgslsmith_f_op_f32(-350f - _wgslsmith_f_op_f32(-1645f - -2053f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -344f) - -363f)), 1734f), _wgslsmith_sub_vec3_u32(select(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(50601u, u_input.c.x, u_input.c.x), vec3<u32>(0u, var_2.a.x, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 12099u, 2909u), vec3<u32>(21348u, 103868u, 1u))), ~vec3<u32>(u_input.c.x, var_2.a.x, 15355u) >> (firstLeadingBit(vec3<u32>(30209u, 4294967295u, 4294967295u)) % vec3<u32>(32u)), !vec3<bool>(var_2.b, false, true)), ~select(vec3<u32>(3655u, 25277u, 4294967295u) << (vec3<u32>(var_2.a.x, 8484u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(12953u, 4294967295u, var_2.a.x), vec3<bool>(false, true, var_2.b))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -940f))), -1055f, 970f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(vec4<u32>(var_1, var_3.c.x, 8317u, var_1) | vec4<u32>(1u, u_input.c.x, 4294967295u, var_3.c.x)))));
}

