struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> bool {
    let var_0 = true;
    let var_1 = vec3<f32>(arg_1.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)));
    var var_2 = min(firstTrailingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.c.x, 29019u), abs(vec4<u32>(1u, 27757u, u_input.a, 16098u)))), ~(~(~(~vec4<u32>(4294967295u, u_input.c.x, 4294967295u, u_input.c.x)))));
    var_2 = abs(~(~(~vec4<u32>(var_2.x, var_2.x, u_input.a, var_2.x))));
    var var_3 = !(!select(true, any(select(vec2<bool>(arg_2, arg_1.c.b.a.x), arg_1.a.a.xy, var_0)), false));
    return arg_1.c.b.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = arg_0.a.x != true;
    var var_1 = firstTrailingBit(1i) == abs(firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(5843i), 5712i, -26608i)));
    var_0 = 8160i == _wgslsmith_dot_vec2_i32(~(-vec2<i32>(-36639i, -40151i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(29807i, -34968i), -(~vec2<i32>(2147483647i, 8053i))));
    let var_2 = Struct_3(Struct_1(arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3 * 241f)))), Struct_1(!arg_2.a)));
    let var_3 = -vec3<i32>(-57453i, reverseBits(~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-41911i, 0i), ~2147483647i, _wgslsmith_clamp_i32(0i, 18738i, 38958i)), -(~vec3<i32>(-27942i, 2147483647i, 1i))));
    return !all(!select(!vec4<bool>(true, arg_0.a.x, arg_2.a.x, arg_2.a.x), select(vec4<bool>(true, var_2.a.a.x, false, arg_2.a.x), arg_0.a, false), var_2.a.a));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = any(select(arg_1, vec3<bool>(true, true, true), _wgslsmith_div_f32(-543f, _wgslsmith_f_op_f32(f32(-1f) * -856f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1146f + 1005f)))));
    var_0 = ~(~arg_0) == (43975i & abs(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-65400i, 1i)), vec2<i32>(1i, 1i))));
    let var_1 = ~(-vec3<i32>(~1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, arg_0), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, arg_0, arg_0), vec4<i32>(-1i, arg_0, -16260i, 1i) << (vec4<u32>(1u, u_input.b, 11349u, u_input.b) % vec4<u32>(32u)))));
    var var_2 = reverseBits(vec2<u32>(~44048u, 1u));
    var var_3 = -1935i > _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(select(arg_0, -12721i, arg_1.x), arg_0, ~var_1.x, -1288i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, var_1.x, arg_0, -1i), vec4<i32>(arg_0, arg_0, var_1.x, arg_0)), reverseBits(vec4<i32>(57735i, -1i, var_1.x, 1i))));
    return Struct_1(!vec4<bool>(arg_1.x, false, arg_1.x & true, any(arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(i32(-1i) * -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 86262i, -20728i, 75554i), vec4<i32>(-2147483647i, -9841i, 17790i, 0i)), -1i));
    let var_1 = Struct_1(select(vec4<bool>(false, false, func_1(-906f, Struct_3(Struct_1(vec4<bool>(false, false, false, false)), 128f, Struct_2(vec2<f32>(576f, -603f), Struct_1(vec4<bool>(false, true, true, false)))), false) && (u_input.a >= 0u), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), true));
    let var_2 = func_3(firstLeadingBit(_wgslsmith_clamp_i32(max(_wgslsmith_mult_i32(518i, -1i), i32(-1i) * -1i), ~7139i, _wgslsmith_sub_i32(~0i, _wgslsmith_add_i32(-31769i, 61587i)))), select(select(vec3<bool>(true, !var_1.a.x, true), var_1.a.zzw, false), vec3<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), true != var_1.a.x, any(var_1.a) | true), select(!var_1.a.zyw, vec3<bool>(var_1.a.x, var_1.a.x && true, !var_1.a.x), !func_2(Struct_1(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)), u_input.a, Struct_1(var_1.a), 1605f))));
    var var_3 = ~(~_wgslsmith_add_vec3_i32(~vec3<i32>(14760i, 0i, 28857i), vec3<i32>(1i, 1i, 1i)) >> (select(_wgslsmith_sub_vec3_u32(~u_input.c, vec3<u32>(u_input.c.x, 10318u, 1u)), u_input.c, var_1.a.wyz) % vec3<u32>(32u)));
    var_0 = ~1i;
    let var_4 = reverseBits(_wgslsmith_add_i32(var_3.x, -4905i));
    var_0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, u_input.c.x));
}

