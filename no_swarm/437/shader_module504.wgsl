struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-1469f, 1000f), vec2<f32>(1379f, 1000f), vec2<f32>(-268f, 611f), vec2<f32>(1678f, -613f), vec2<f32>(334f, -492f), vec2<f32>(-2145f, -1860f), vec2<f32>(-388f, -1238f), vec2<f32>(652f, -635f), vec2<f32>(-924f, -579f), vec2<f32>(-795f, 602f), vec2<f32>(-967f, 127f), vec2<f32>(391f, 114f), vec2<f32>(-1067f, -1412f), vec2<f32>(-867f, -382f), vec2<f32>(206f, -2660f), vec2<f32>(-1000f, 1000f), vec2<f32>(1191f, -529f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_1(!vec3<bool>(arg_0.x, u_input.e != firstTrailingBit(u_input.a), !(u_input.a != u_input.d.x)), min(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)), select(vec4<u32>(~1u, 4294967295u, ~72856u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, ~5507u), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, true, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2314f * -1017f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-353f, 1933f))), _wgslsmith_f_op_f32(round(566f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1204f, -178f, 106f), vec3<f32>(-868f, -284f, 198f)))))))), !arg_0);
    var var_1 = -abs(vec3<i32>(u_input.b, 1i, -countOneBits(6741i)));
    global0 = array<vec2<f32>, 17>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-588f)) + -1503f), false)))) + _wgslsmith_f_op_f32(-var_0.c.x));
    var_0 = Struct_1(!vec3<bool>(all(select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(arg_0.x, false), arg_0.xx)), !var_0.d.x, true), ~(~(~var_0.b) & var_0.b), _wgslsmith_f_op_vec3_f32(-var_0.c), select(!vec3<bool>(any(vec4<bool>(true, true, true, true)), var_0.a.x, arg_0.x), select(arg_0, select(arg_0, select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), arg_0, vec3<bool>(var_0.a.x, false, true)), !arg_0.x), vec3<bool>(true, true, false)), arg_0));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(-42961i), 15758i, var_1.x & u_input.d.x, max(u_input.a, u_input.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(21936i, -2147483647i, -2147483647i, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 20510i, u_input.a, 6989i), vec4<i32>(u_input.a, var_1.x, -1i, var_1.x)))), vec4<i32>(-(2147483647i >> (u_input.c % 32u)), _wgslsmith_clamp_i32(i32(-1i) * -1i, -1i ^ u_input.d.x, 2147483647i), var_1.x, _wgslsmith_clamp_i32(0i, u_input.b, 25454i) & min(u_input.e, -13969i))) | u_input.b;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(func_3(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x)) >= u_input.d.x, arg_0.x, any(select(vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true))), (firstTrailingBit(~vec4<u32>(23057u, u_input.c, u_input.c, u_input.c)) ^ vec4<u32>(5239u, ~1u, ~41187u, reverseBits(52345u))) << (vec4<u32>(select(u_input.c, u_input.c, arg_0.x), ~4294967295u, u_input.c, ~u_input.c) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-768f, -1268f, -1786f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(291f, -1988f, 711f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-360f, -909f, 873f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, -1000f, 219f) * vec3<f32>(241f, -879f, -255f)))), !(!vec3<bool>(all(vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x, !arg_0.x)));
    var var_1 = -_wgslsmith_sub_vec2_i32(countOneBits(u_input.d.zz | u_input.d.xz), u_input.d.yx << ((vec2<u32>(var_0.b.x, 1763u) | vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(vec2<u32>(25579u, _wgslsmith_mult_u32(~1u, var_0.b.x)), vec2<u32>(_wgslsmith_mult_u32(15325u, 2316u), 33203u)) % vec2<u32>(32u));
    let var_2 = !(!(!select(select(vec4<bool>(arg_0.x, var_0.a.x, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, arg_0.x, var_0.d.x, arg_0.x), var_0.d.x), vec4<bool>(true, arg_0.x, false, var_0.d.x), select(vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x), vec4<bool>(arg_0.x, var_0.a.x, var_0.a.x, false), true))));
    global0 = array<vec2<f32>, 17>();
    global0 = array<vec2<f32>, 17>();
    return Struct_2(_wgslsmith_mod_vec3_u32(var_0.b.xwx, ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.x, 0u, 50461u), vec3<u32>(123328u, 37945u, u_input.c)) | ~vec3<u32>(35549u, u_input.c, 12829u)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec2<u32> {
    global0 = array<vec2<f32>, 17>();
    var var_0 = reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_1.x, -2147483647i, u_input.b), firstLeadingBit(vec4<i32>(0i, arg_1.x, 1i, arg_1.x))) & arg_1);
    let var_1 = ~_wgslsmith_mult_u32(u_input.c, max(~0u, countOneBits(arg_2.x)));
    let var_2 = select(vec2<bool>(_wgslsmith_f_op_f32(round(-542f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(922f, 938f))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), all(vec2<bool>(false, true))))), vec2<bool>(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.x, 0u), 14513u) < ~_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(var_1, 38710u, arg_2.x, 11106u))), true);
    var_0 = arg_1;
    return vec2<u32>(_wgslsmith_div_u32(0u, arg_2.x), _wgslsmith_div_u32(_wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(var_1, 37311u, arg_3.x), 67710u), ~func_2(vec2<bool>(var_2.x, var_2.x)).a.x), ~(firstTrailingBit(arg_2.x) ^ ~var_1)));
}

fn func_1() -> u32 {
    return _wgslsmith_dot_vec2_u32(func_4(func_2(select(vec2<bool>(true, false), vec2<bool>(false, true), u_input.a >= u_input.e)), -firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 7322i, u_input.b, u_input.d.x), vec4<i32>(1i, u_input.a, 1i, 2147483647i))), firstTrailingBit(countOneBits(vec4<u32>(u_input.c, 76172u, u_input.c, u_input.c) | vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1041u, 0u, u_input.c, 3147u) | vec4<u32>(44290u, u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.c, u_input.c, 0u), select(vec4<u32>(50435u, u_input.c, 1u, 123972u), vec4<u32>(u_input.c, 37857u, u_input.c, 4501u), vec4<bool>(true, true, true, true)), min(vec4<u32>(u_input.c, u_input.c, u_input.c, 32557u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.c, u_input.c), ~4294967295u, u_input.c))), ~vec2<u32>(countOneBits(0u) >> (_wgslsmith_add_u32(1u, 1u) % 32u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(_wgslsmith_mult_i32(1i, -2147483647i), 1i)));
    global0 = array<vec2<f32>, 17>();
    var var_1 = abs(_wgslsmith_mult_vec4_u32(max(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c) & vec4<u32>(u_input.c, 1u, u_input.c, 1u)), vec4<u32>(countOneBits(21456u), u_input.c, _wgslsmith_mult_u32(1u, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 13493u), vec3<u32>(10717u, u_input.c, 1u)))), vec4<u32>(~(u_input.c ^ u_input.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(69134u, 4294967295u), vec2<u32>(2206u, u_input.c)), ~4294967295u, ~func_1())));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-353f * _wgslsmith_f_op_f32(trunc(257f))))), _wgslsmith_f_op_f32(389f * -104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(912f, 1184f)))), -859f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -867f, -1356f, 519f), vec4<f32>(1888f, 816f, -278f, -1000f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, -1195f, 1000f, -772f)), vec4<f32>(-933f, -734f, 496f, 1000f))))), vec4<bool>(all(vec3<bool>(true, true, var_1.x > 23281u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(179f - 1088f), _wgslsmith_f_op_f32(1000f * -920f))) == 687f, all(vec4<bool>(true, true, true, true)) & true, true)));
    let var_3 = !select(vec2<bool>(true, false), vec2<bool>(true, true), _wgslsmith_mult_u32(19652u, func_1()) != _wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(u_input.c, u_input.c)));
    var_0 = firstLeadingBit(i32(-1i) * -(~_wgslsmith_div_i32(u_input.a, u_input.e)));
    var_0 = _wgslsmith_mult_i32(-35977i, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(u_input.e, 2147483647i) << (select(var_1.wy, var_1.xx, var_3) % vec2<u32>(32u))) ^ ~(firstTrailingBit(vec2<i32>(15126i, -9601i)) << (~vec2<u32>(1u, var_1.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -375f))))));
}

