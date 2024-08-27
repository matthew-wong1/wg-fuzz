struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(248f, -490f, 665f), vec3<f32>(-340f, 173f, -1000f), vec3<f32>(1200f, 494f, 347f), vec3<f32>(290f, -984f, 1541f), vec3<f32>(223f, -173f, 556f), vec3<f32>(-698f, 1077f, -377f), vec3<f32>(-335f, -883f, -1073f), vec3<f32>(1519f, 1115f, 331f), vec3<f32>(613f, -177f, 172f), vec3<f32>(-692f, -2186f, -679f), vec3<f32>(822f, 153f, -740f), vec3<f32>(651f, -462f, -460f), vec3<f32>(1331f, 1210f, -746f), vec3<f32>(-495f, -941f, 2104f), vec3<f32>(-1478f, -394f, -113f), vec3<f32>(-463f, -1000f, -1000f), vec3<f32>(-191f, 1772f, 534f), vec3<f32>(-1492f, -185f, 336f), vec3<f32>(-1069f, 1449f, -1961f), vec3<f32>(1384f, -1354f, -978f), vec3<f32>(1588f, -1000f, -1286f), vec3<f32>(270f, 558f, 376f), vec3<f32>(-317f, -1249f, -1000f), vec3<f32>(396f, -356f, -782f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    return arg_2.a;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = Struct_2(vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(147f * _wgslsmith_f_op_f32(trunc(1901f))), -1277f, _wgslsmith_f_op_f32(floor(-1476f))), ~_wgslsmith_sub_vec2_i32(arg_3.b & arg_3.b, -vec2<i32>(-15485i, 4530i) ^ vec2<i32>(arg_0.b.x, -1i)), vec4<u32>(arg_3.c.x, firstLeadingBit(min(_wgslsmith_dot_vec4_u32(arg_0.c, arg_3.c), _wgslsmith_mod_u32(arg_3.c.x, 52819u))), u_input.a.x, 0u));
    let var_1 = _wgslsmith_mult_i32(12598i, _wgslsmith_mod_i32(arg_3.b.x, _wgslsmith_add_i32(var_0.b.x, var_0.b.x)));
    var var_2 = arg_1;
    var_2 = true;
    let var_3 = arg_0;
    return false;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    global0 = array<vec3<f32>, 24>();
    let var_1 = vec2<bool>(true, !func_3(Struct_2(vec4<f32>(var_0.b, var_0.b, var_0.b, arg_0.b), vec2<i32>(var_0.a.x, var_0.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 38589u, 35388u), vec4<u32>(25034u, 0u, 1u, 1u))), true, _wgslsmith_f_op_f32(ceil(301f)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1741f, var_0.b, -492f, -1000f) + vec4<f32>(-1674f, -503f, -133f, -1000f)), _wgslsmith_mod_vec2_i32(arg_0.a.yz, vec2<i32>(-20253i, -1i)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x) >> (vec4<u32>(23560u, u_input.b.x, 18969u, 40708u) % vec4<u32>(32u)))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, var_0.b, 551f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -2194f, arg_0.b)))))), arg_0.a.xy, _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 1507u, u_input.a.x, u_input.b.x)) & ~vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(firstTrailingBit(u_input.a.x), 0u, ~4294967295u, u_input.b.x)) | select(vec4<u32>(_wgslsmith_add_u32(501u, 1u), 3789u, u_input.b.x, u_input.a.x), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x))), any(vec4<bool>(arg_0.c.x, var_1.x, var_0.c.x, false)) || any(vec4<bool>(var_0.c.x, arg_0.c.x, true, false))));
    global0 = array<vec3<f32>, 24>();
    return vec4<bool>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(min(var_0.b, -392f))) == var_0.b, false, var_1.x, _wgslsmith_clamp_u32(firstTrailingBit(0u) << (u_input.b.x % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, 0u), u_input.b), max(34053u, var_2.c.x) >> (~0u % 32u)) <= var_2.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + -1000f) * _wgslsmith_f_op_f32(max(arg_2.a.x, 2111f))), 1307f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), arg_0.b)), arg_0.a.yz, ~(~arg_2.c));
    let var_1 = max(arg_0.a, arg_0.a) ^ -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, arg_0.a.x), vec3<i32>(var_0.b.x, arg_2.b.x, -31334i)));
    var var_2 = 52283i;
    global0 = array<vec3<f32>, 24>();
    var var_3 = countOneBits(var_0.c) << (~max(select(~arg_2.c, vec4<u32>(17337u, 35227u, 76736u, 18849u), !arg_0.c), _wgslsmith_div_vec4_u32(var_0.c, max(vec4<u32>(1u, arg_2.c.x, 4294967295u, var_0.c.x), vec4<u32>(0u, 1u, u_input.a.x, arg_2.c.x)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -250f), -975f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(-reverseBits(~vec3<i32>(0i, 54604i, -2147483647i)));
    var var_1 = vec4<f32>(1f, 1f, 1f, 1f);
    global0 = array<vec3<f32>, 24>();
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(func_4(Struct_1(func_1(false, Struct_1(vec3<i32>(var_0.x, 2147483647i, var_0.x), var_1.x, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(2147483647i, 2147483647i, var_0.x), var_1.x, vec4<bool>(false, true, true, true)), Struct_2(vec4<f32>(-544f, var_1.x, -747f, var_1.x), var_0.xz, vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.b.x))), _wgslsmith_div_f32(var_1.x, -192f), func_2(Struct_1(var_0, var_1.x, vec4<bool>(false, false, false, false)))), all(vec2<bool>(true, false)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -503f, var_1.x, var_1.x) + vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x)), var_0.xy, vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b.x) << (vec4<u32>(u_input.a.x, 39654u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<bool>(false, func_3(Struct_2(vec4<f32>(var_1.x, -294f, -2957f, -389f), var_0.xy, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 6783u)), false, 534f, Struct_2(vec4<f32>(var_1.x, -529f, var_1.x, var_1.x), vec2<i32>(-1i, 6896i), vec4<u32>(17481u, u_input.a.x, 19902u, u_input.a.x))), true, true)))), 627f, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -600f))))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, 323f, var_1.x, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-242f, var_1.x, var_1.x, -1415f), vec4<f32>(var_1.x, -1286f, 189f, -664f), vec4<bool>(true, true, false, true)))))))), max(~vec2<i32>(41367i, var_0.x), countOneBits(firstLeadingBit(var_0.yx))), vec4<u32>(select(~1u, _wgslsmith_mult_u32(select(131683u, u_input.b.x, false), 1u), false), 1u, _wgslsmith_add_u32(~u_input.a.x, 14124u), ~(~(1u | u_input.b.x))));
    var_1 = vec4<f32>(-406f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_div_f32(1000f, 1938f))))), var_2.a.x, var_2.a.x);
    var var_3 = Struct_2(var_2.a, var_0.xy, var_2.c);
    let var_4 = Struct_2(vec4<f32>(-1035f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -596f) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(trunc(var_1.x))))), -1128f, _wgslsmith_div_f32(959f, var_1.x)), -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-1i, var_3.b.x), firstLeadingBit(var_2.b.x)), min(vec2<i32>(var_2.b.x, -2147483647i), var_3.b << (vec2<u32>(var_3.c.x, var_3.c.x) % vec2<u32>(32u)))), vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(var_2.c.wwx, var_3.c.wyx)), firstLeadingBit(var_2.c.x) | var_2.c.x), countOneBits(u_input.a.x), 0u));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(-func_1(true, Struct_1(vec3<i32>(var_0.x, var_2.b.x, 1i), var_2.a.x, vec4<bool>(false, false, false, true)), Struct_1(var_0, var_2.a.x, vec4<bool>(true, false, false, true)), Struct_2(var_2.a, var_3.b, vec4<u32>(var_2.c.x, 32852u, u_input.a.x, 42034u))).xz));
}

