struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0), -101f, true)) * arg_0), 991f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(256f * -1366f))) * arg_0), -2311f)));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = Struct_4(u_input.e, Struct_1(~u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 2333f, -2572f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-558f, 813f, -1000f, -1077f) - vec4<f32>(435f, -565f, 548f, -119f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1333f, 1218f, -771f, 1000f), vec4<f32>(1417f, 2756f, 1000f, 270f)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 718f), _wgslsmith_f_op_f32(abs(-1073f))), _wgslsmith_add_vec3_i32(~(~arg_0), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, 1i, arg_0.x), vec3<i32>(u_input.a, 3563i, arg_0.x)) << (abs(vec3<u32>(54054u, u_input.c.x, u_input.b)) % vec3<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.e, -57638i), vec4<i32>(-2147483647i, u_input.e, arg_0.x, -2147483647i)), vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x)))), u_input.b, abs(_wgslsmith_sub_vec3_i32(abs(arg_0), arg_0) ^ reverseBits(arg_0 & arg_0)), Struct_3(vec2<f32>(153f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(max(-525f, 864f))))), vec2<u32>(20498u, min(u_input.d, 0u)) | ~u_input.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1500f, 823f)), -1355f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-199f, 605f))), _wgslsmith_div_vec3_i32(arg_0, min(vec3<i32>(arg_0.x, u_input.a, arg_0.x), arg_0)) & min(~arg_0, arg_0 | arg_0)));
    var var_1 = _wgslsmith_mod_i32(arg_0.x, firstTrailingBit(-1i) | select(_wgslsmith_mod_i32(~(-20090i), 14792i), -1i, true));
    var_1 = ~((~(2147483647i & var_0.d.x) ^ var_0.a) << (u_input.b % 32u));
    let var_2 = Struct_1(17860u, var_0.b.b, _wgslsmith_f_op_f32(sign(var_0.e.c.x)), _wgslsmith_div_vec3_i32(arg_0, var_0.e.d), var_0.b.e);
    return false && (~_wgslsmith_sub_i32(-var_0.b.d.x, -34515i) >= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.e.yw, var_2.e.xy), _wgslsmith_mod_vec2_i32(var_2.e.wz, vec2<i32>(arg_0.x, u_input.a))));
}

fn func_1() -> f32 {
    let var_0 = false;
    var var_1 = func_2(-(~(~countOneBits(vec3<i32>(-2147483647i, 32778i, u_input.e)))));
    var_1 = !(false || var_0);
    var_1 = var_0;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-525f, 142f)), _wgslsmith_mod_vec2_u32(reverseBits(reverseBits(vec2<u32>(45324u, u_input.c.x))), _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~37465u), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.c, vec2<u32>(u_input.c.x, u_input.c.x) >> (vec2<u32>(u_input.d, u_input.b) % vec2<u32>(32u))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(793f - -504f)))), 1380f), (reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.a, u_input.e), vec3<i32>(u_input.e, u_input.e, u_input.a), vec3<i32>(u_input.e, u_input.a, 2147483647i))) << (~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 41785u, u_input.c.x), vec3<u32>(6342u, u_input.c.x, u_input.c.x)) % vec3<u32>(32u))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 8417u, 20317u), vec3<u32>(u_input.c.x, u_input.b, 27852u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, u_input.d) << (vec3<u32>(0u, u_input.d, 4294967295u) % vec3<u32>(32u)), vec3<u32>(39129u, 0u, 0u) >> (vec3<u32>(u_input.d, u_input.c.x, 6832u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, 275f, -1715f, 440f) * vec4<f32>(488f, 753f, -972f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2116f - 253f), -634f, _wgslsmith_f_op_f32(min(593f, 980f)), _wgslsmith_f_op_f32(func_1())) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_f_op_f32(step(1546f, -1546f)), 2225f)))));
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = vec3<bool>(true, any(!(!select(vec2<bool>(true, var_1.x), var_1.yw, var_1.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, 28546u, min(19447u, u_input.d)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(116947u, 4294967295u, u_input.b, u_input.d), vec4<u32>(u_input.b, 7559u, u_input.b, u_input.b)), vec4<u32>(0u, 1u, u_input.b, u_input.b) << (vec4<u32>(u_input.c.x, u_input.b, u_input.d, u_input.d) % vec4<u32>(32u)), !vec4<bool>(var_1.x, var_1.x, true, false))) > select(0u, 1u, !(u_input.d == 42053u)));
    var_2 = select(vec3<bool>(true, true, !select(true, u_input.d >= 1u, var_2.x)), vec3<bool>(var_1.x, any(select(!vec2<bool>(false, var_1.x), vec2<bool>(false, true), var_1.yy)), false), (~_wgslsmith_mod_u32(u_input.b, u_input.c.x) | u_input.c.x) <= _wgslsmith_mult_u32(~u_input.d, _wgslsmith_sub_u32(u_input.b, u_input.b)));
    var_2 = var_1.wyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(628f * var_0.x), u_input.c.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz), var_0.xx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2004f * var_0.x)) - 1000f)), u_input.d);
}

