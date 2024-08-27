struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec3<bool> {
    var var_0 = vec4<bool>(1i >= (-1i & u_input.b.x), false, (~1i < (1i ^ _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.d, -26791i, u_input.c.x)))) & false, true);
    var var_1 = Struct_4(Struct_3(abs(_wgslsmith_add_vec3_u32(arg_0.xzy, arg_0.ywy))), var_0.yz, _wgslsmith_f_op_f32(sign(-1759f)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, _wgslsmith_mod_vec2_i32(select(u_input.b.xx, vec2<i32>(1i, 638i), var_0.x), u_input.b.xx)), vec2<i32>(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mod_i32(-2147483647i, u_input.c.x)), u_input.b.x)), u_input.c.x);
    let var_2 = Struct_2(Struct_1(var_1.c, arg_0), ~u_input.d, Struct_1(var_1.c, arg_0), false, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_1.c, -1140f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(641f, 423f, -1135f, var_1.c) + vec4<f32>(arg_1, -621f, -566f, -381f)))))));
    let var_3 = var_2.c;
    var var_4 = all(select(!(!(!vec2<bool>(false, var_2.d))), vec2<bool>(var_2.d, false), any(select(!var_1.b, vec2<bool>(var_2.d, var_2.d), var_0.xy))));
    return vec3<bool>(!any(var_0.xwz) || var_1.b.x, var_2.d, any(select(!vec4<bool>(var_0.x, false, var_1.b.x, false), !select(vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(false, true, var_1.b.x, true), var_0.x), !vec4<bool>(var_0.x, var_1.b.x, var_0.x, true))));
}

fn func_2() -> Struct_3 {
    let var_0 = any(select(func_3(vec4<u32>(max(u_input.a, 118314u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 83685u, 4294967295u), vec4<u32>(u_input.a, 52970u, 49891u, u_input.a)), 0u, ~u_input.a), -1000f), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), true));
    let var_1 = Struct_1(-443f, abs(~(~(vec4<u32>(u_input.a, 1u, 90907u, u_input.a) >> (vec4<u32>(u_input.a, 40107u, u_input.a, 29278u) % vec4<u32>(32u))))));
    let var_2 = ~vec3<u32>(var_1.b.x, var_1.b.x, _wgslsmith_sub_u32(~1u, ~_wgslsmith_mod_u32(var_1.b.x, var_1.b.x)));
    var var_3 = Struct_4(Struct_3(var_2), select(select(!select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, true), true), select(vec2<bool>(var_0, true), vec2<bool>(true, true), true)), !select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0 || false), select(!select(vec2<bool>(var_0, false), vec2<bool>(false, true), var_0), !vec2<bool>(true, var_0), vec2<bool>(any(vec3<bool>(var_0, false, true)), all(vec2<bool>(var_0, var_0))))), var_1.a, firstLeadingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(3106i, 1i), u_input.b.zw, vec2<i32>(u_input.b.x, u_input.d))), u_input.b.x & _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, 34774i), u_input.b.x));
    let var_4 = _wgslsmith_add_i32(u_input.d, ~var_3.d.x ^ max(2147483647i, _wgslsmith_div_i32(-42482i, -var_3.e)));
    return Struct_3(var_2);
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_4 {
    let var_0 = countOneBits(_wgslsmith_mult_u32(select(arg_1, _wgslsmith_clamp_u32(u_input.a, 7467u, ~1u), arg_0), 15561u));
    let var_1 = vec2<i32>(select(0i, u_input.b.x, !(!arg_0)), max(_wgslsmith_mult_i32(firstLeadingBit(-36580i), u_input.b.x), firstTrailingBit(-13955i))) << (vec2<u32>(~(~countOneBits(var_0)), 1u) % vec2<u32>(32u));
    var var_2 = ~0u;
    let var_3 = vec2<bool>(true, true);
    var_2 = 1u;
    return Struct_4(func_2(), func_3(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 43474u, 59737u, 4294967295u)) >> (vec4<u32>(4294967295u, arg_1, 1u, 14664u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(u_input.a, 0u, 23774u, 0u)), false | (u_input.a <= var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1652f)), _wgslsmith_f_op_f32(-719f * -315f))))).xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + 784f)), vec2<i32>(select(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(306i, u_input.d, 39483i, u_input.d), u_input.b), -vec4<i32>(-2147483647i, 21392i, var_1.x, -40683i)), -1i, !arg_0), countOneBits(var_1.x | min(u_input.b.x, -19006i))), -var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(false, !all(vec3<bool>(false, false, false)), false));
    let var_1 = _wgslsmith_f_op_f32(round(1805f));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(var_1 * var_1))), 1438f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-433f, 536f))))), vec4<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1659f + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-var_1)), 297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1007f))) * -1080f))));
    let var_3 = func_1(!var_0.x, ~24259u);
    let var_4 = -548f;
    let var_5 = Struct_1(1465f, ~(~(~(~vec4<u32>(var_3.a.a.x, u_input.a, 28241u, 4294967295u)))));
    let var_6 = func_1(true, var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_5.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_6.c, 140f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2384f, var_1)), _wgslsmith_f_op_f32(exp2(var_3.c)))), var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_5.a, var_6.c, 553f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-419f, var_5.a, var_5.a, -1080f) - vec4<f32>(-1944f, 392f, -292f, 850f))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_4), var_4, _wgslsmith_f_op_f32(-var_6.c))), false)), vec3<i32>(2147483647i, 8681i, u_input.d), -u_input.b.wzy << ((~vec3<u32>(60036u, 1u, 4294967295u) ^ var_6.a.a) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(125f, _wgslsmith_f_op_f32(round(var_6.c)))), 908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f - -1611f))))));
}

