struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = abs(_wgslsmith_mod_i32(-52815i ^ _wgslsmith_mult_i32(-arg_1.x, u_input.d), ~u_input.d));
    var var_1 = u_input.c.xxw;
    var_1 = u_input.e;
    var_1 = _wgslsmith_mult_vec3_u32(u_input.e, ~(vec3<u32>(_wgslsmith_clamp_u32(7613u, var_1.x, u_input.b.x), arg_2.x, _wgslsmith_clamp_u32(u_input.e.x, 4294967295u, arg_0.x)) | u_input.e));
    var var_2 = all(!(!vec2<bool>(select(true, false, true), false)));
    return var_0;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(u_input.c.x, u_input.c.x, abs(~(~(~20126u))));
    let var_1 = 19958u;
    let var_2 = vec2<i32>(-28099i, func_3(var_0.yx, -vec2<i32>(u_input.d, ~u_input.d), firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), 1u))));
    var_0 = _wgslsmith_sub_vec3_u32(u_input.c.xyz, u_input.e ^ vec3<u32>(0u, u_input.e.x, 67908u));
    let var_3 = select(var_0.x, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, u_input.c.x), vec2<u32>(_wgslsmith_mod_u32(var_1, u_input.e.x), firstTrailingBit(var_0.x))) != ~59543u);
    return Struct_3(vec3<i32>(-1i) * -(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(58598i, 1i, -2147483647i)) >> (~vec3<u32>(0u, var_3, var_3) % vec3<u32>(32u))), vec2<bool>(!select(false, true, true), true), Struct_2(vec4<bool>(true, true, true, true), 354f), var_2 & vec2<i32>(47519i, abs(-var_2.x)));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = !(!(!(!vec2<bool>(var_0.b.x, var_0.b.x))));
    let var_2 = reverseBits(vec4<i32>(0i, u_input.d, u_input.d, _wgslsmith_clamp_i32(-17367i, i32(-1i) * -1i, _wgslsmith_add_i32(countOneBits(1i), u_input.d ^ var_0.d.x))));
    var_0 = Struct_3(~var_2.xzx, select(vec2<bool>((var_0.c.a.x && var_1.x) || var_0.c.a.x, any(!vec3<bool>(var_1.x, var_1.x, var_1.x))), vec2<bool>(true, !var_0.b.x), var_1), Struct_2(var_0.c.a, var_0.c.b), _wgslsmith_sub_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(73046i, var_2.x), var_2.wy) | countOneBits(var_2.zy), var_2.xw, var_0.c.a.wx), abs(func_2().d)));
    let var_3 = var_0.c.b > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.c.b))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(786f * var_0.c.b) - _wgslsmith_f_op_f32(494f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f - -419f) - var_0.c.b))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_add_vec2_u32(~(~(~countOneBits(arg_2.e.wy))), countOneBits(u_input.c.ww));
    let var_2 = -max(arg_2.d.x, _wgslsmith_div_i32(~_wgslsmith_div_i32(18827i, -39995i), -1i));
    var var_3 = Struct_4(func_3(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(31076u, var_1.x), var_1), arg_2.e.wx >> (u_input.c.yw % vec2<u32>(32u)), vec2<u32>(arg_2.e.x, arg_2.e.x) >> (var_1 % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 0u), ~var_1, vec2<u32>(0u, arg_2.e.x))), vec2<i32>(var_2, -34831i), ~vec2<u32>(u_input.b.x, u_input.c.x | 15521u)), arg_2.b, _wgslsmith_sub_vec4_i32(vec4<i32>(82520i, ~(-var_0), -57436i, ~min(-10345i, 0i)), arg_2.c), countOneBits(~(-vec2<i32>(arg_2.a, var_2))), _wgslsmith_div_vec4_u32(~u_input.c, ~(~vec4<u32>(var_1.x, arg_2.e.x, u_input.b.x, arg_1))));
    let var_4 = var_3.b;
    return ~_wgslsmith_add_u32(1u, ~var_1.x) != max(~max(arg_1, firstTrailingBit(11415u)), 24146u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), 256u, Struct_4(-1i, true, (vec4<i32>(-1i, u_input.d, u_input.d, 1i) | ~vec4<i32>(u_input.d, 30139i, 50367i, -2147483647i)) ^ vec4<i32>(~1i, u_input.d, 0i >> (u_input.a % 32u), _wgslsmith_sub_i32(u_input.d, u_input.d)), ~firstTrailingBit(vec2<i32>(u_input.d, u_input.d)), vec4<u32>(abs(select(1u, 0u, true)), u_input.c.x, 10198u, abs(_wgslsmith_mod_u32(4294967295u, u_input.e.x)))));
    let var_1 = _wgslsmith_sub_i32(12593i, 23286i);
    var var_2 = Struct_4(11982i, true, _wgslsmith_add_vec4_i32((-vec4<i32>(42390i, u_input.d, 23969i, var_1) & vec4<i32>(-1i, -2147483647i, 1i, -1i)) | max(select(vec4<i32>(2147483647i, var_1, -1i, var_1), vec4<i32>(1349i, var_1, u_input.d, var_1), vec4<bool>(true, true, true, false)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, u_input.d, -10116i, var_1), vec4<i32>(-22017i, var_1, 0i, var_1))), abs(min(vec4<i32>(1i, var_1, u_input.d, 2147483647i), abs(vec4<i32>(-10084i, -2147483647i, u_input.d, -45316i))))), _wgslsmith_add_vec2_i32(select(~select(vec2<i32>(26627i, u_input.d), vec2<i32>(u_input.d, u_input.d), false), vec2<i32>(_wgslsmith_clamp_i32(var_1, 30225i, 1i), u_input.d), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<i32>(-var_1, 25909i)), ~(vec4<u32>(~0u, 156670u, u_input.c.x, abs(u_input.a)) | _wgslsmith_add_vec4_u32(~u_input.c, u_input.c)));
    let var_3 = Struct_4(-746i, !var_2.b, ((vec4<i32>(-1i) * -vec4<i32>(2147483647i, -2147483647i, var_2.c.x, u_input.d)) | vec4<i32>(var_1, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, var_1, u_input.d), vec4<i32>(var_2.d.x, -34593i, var_1, var_2.c.x)), var_2.a)) << (((vec4<u32>(0u, var_2.e.x, u_input.c.x, u_input.e.x) ^ u_input.c) << (var_2.e % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec2<i32>(var_1 ^ countOneBits(u_input.d), 15316i), ~(-var_2.d), !select(select(vec2<bool>(false, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, false)), vec2<bool>(var_2.b, false), any(vec4<bool>(true, var_2.b, var_2.b, var_2.b)))), ~var_2.e);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f + -755f)) - -1024f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1525f))));
    var var_5 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(~var_2.e.xz, ~vec2<u32>(u_input.a, var_2.e.x)), _wgslsmith_div_u32(1u, 1u)), 79307u, var_2.e.x);
    let var_6 = Struct_5(vec4<bool>(var_2.b, var_3.b, true, var_2.b), Struct_2(select(!(!vec4<bool>(var_3.b, true, false, var_3.b)), vec4<bool>(!var_2.b, true, var_3.b, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f))), Struct_1(max(var_1, -abs(2147483647i)), 468f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_div_u32(u_input.c.x | (var_3.e.x & 37591u), _wgslsmith_add_u32(0u, var_5.x)), 23546u, reverseBits(1u)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1399f - var_6.c.b)))), 152f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_6.b.b, var_6.c.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1699f, var_6.b.b), vec2<f32>(-718f, var_6.c.b), vec2<bool>(false, false))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(684f)), _wgslsmith_f_op_f32(func_1())))), max(var_2.d.x << (12548u % 32u), _wgslsmith_dot_vec2_i32(func_2().a.zz, var_2.c.yy)), -2147483647i);
}

