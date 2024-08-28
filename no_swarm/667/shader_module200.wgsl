struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = firstLeadingBit(select(vec4<i32>(-(~13109i), 34109i, min(1i, i32(-1i) * -2011i), _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -30643i, 2147483647i, -34464i), vec4<i32>(1i, 1i, -15781i, -31964i)), vec4<i32>(-56401i, 0i, 56434i, 33623i))), -(-vec4<i32>(-2147483647i, 2147483647i, -28057i, 1i) >> (arg_0.c % vec4<u32>(32u))), all(select(select(vec2<bool>(arg_0.b.a.b, arg_0.a.x), vec2<bool>(arg_1.b, false), arg_0.a.yz), arg_0.a.yx, false))));
    var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(33804i & max(var_0.x, 1i), _wgslsmith_sub_i32(var_0.x, var_0.x ^ var_0.x), _wgslsmith_sub_i32(firstTrailingBit(-4882i), ~var_0.x), max(var_0.x, 107i)), vec4<i32>(reverseBits(countOneBits(var_0.x)), -var_0.x << (_wgslsmith_dot_vec4_u32(arg_0.c, vec4<u32>(1u, 0u, 0u, u_input.a.x)) % 32u), abs(0i), 0i)), _wgslsmith_div_vec4_i32(-firstTrailingBit(select(vec4<i32>(2147483647i, var_0.x, 11398i, 2147483647i), vec4<i32>(var_0.x, var_0.x, -12494i, -75316i), true)), -reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.x, -20509i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_1 = Struct_4(~58751u, arg_0, arg_0.b, true);
    var_0 = reverseBits(vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0.x, 1i), 3257i, 0i, ~var_0.x));
    let var_2 = var_1;
    return ~(var_0.yy & _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2807i, var_0.x, var_0.x), vec4<i32>(var_0.x, 22860i, var_0.x, -49812i)), _wgslsmith_add_i32(-16489i, -1i)), vec2<i32>(min(var_0.x, 13539i), firstLeadingBit(26461i))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_dot_vec2_i32(func_3(Struct_3(arg_2, Struct_2(arg_3, Struct_1(vec4<f32>(-1000f, -1333f, 176f, var_0.a.x), arg_1.x)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 3727u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, var_0.a.x)))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 3913u)))), arg_3), abs(_wgslsmith_sub_vec2_i32(arg_0, arg_0)));
    var_0 = arg_3;
    var_0 = Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(150f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1822f)), var_0.a.x)), var_0.a.x), false);
    var var_2 = arg_3;
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<i32> {
    var var_0 = ~vec4<i32>(0i, 2147483647i, abs(-arg_1.x), arg_2.x);
    let var_1 = true || (any(!select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(true, false, arg_0.b), true)) & !(~u_input.a.x <= u_input.a.x));
    var var_2 = Struct_4(arg_3, Struct_3(vec4<bool>(func_2(vec2<i32>(2481i, -1151i), vec2<bool>(var_1, false), vec4<bool>(true, var_1, true, var_1), arg_0) < 1u, false, var_1, var_1), Struct_2(Struct_1(arg_0.a, true), Struct_1(vec4<f32>(-322f, arg_0.a.x, 865f, arg_0.a.x), var_1)), select(reverseBits(vec4<u32>(26143u, 80975u, 0u, 24362u)), vec4<u32>(u_input.a.x, u_input.a.x, 24504u, arg_3) | ~vec4<u32>(31479u, arg_3, 17671u, 30031u), arg_0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.wz)), _wgslsmith_f_op_vec2_f32(-arg_0.a.yx))) * _wgslsmith_f_op_vec2_f32(-arg_0.a.yw)), reverseBits(abs(reverseBits(vec3<u32>(1u, 17263u, u_input.a.x))))), Struct_2(Struct_1(vec4<f32>(216f, -460f, 792f, _wgslsmith_f_op_f32(767f * 1519f)), false), Struct_1(arg_0.a, var_1)), arg_0.b);
    var var_3 = ~select(~_wgslsmith_mod_i32(~0i, _wgslsmith_mod_i32(2147483647i, var_0.x)), -arg_2.x, var_1);
    let var_4 = -1058f;
    return abs(firstTrailingBit(firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(2147483647i, arg_1.x), arg_1.x, arg_1.x << (var_2.b.e.x % 32u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_3.d.x * -928f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-750f)), _wgslsmith_f_op_f32(arg_3.b.b.a.x * -586f)))))));
    var var_1 = arg_3.b;
    var var_2 = 2453u;
    var var_3 = Struct_3(select(arg_3.a, !(!select(vec4<bool>(true, arg_3.a.x, var_1.a.b, false), vec4<bool>(var_1.a.b, true, true, var_1.b.b), vec4<bool>(arg_3.b.b.b, var_1.b.b, arg_3.a.x, var_1.a.b))), (!var_1.b.b & false) & (arg_3.b.a.b != arg_3.a.x)), Struct_2(arg_3.b.a, var_1.b), ~arg_3.c, arg_3.d, ~(~arg_3.c.ywy));
    let var_4 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, ~arg_0.x), vec2<i32>(arg_2.x, _wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(arg_0.x, arg_2.x))));
    return 1570f;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2.c;
    let var_1 = ~1i;
    let var_2 = arg_2;
    var var_3 = var_2.b.c.xzy;
    var var_4 = var_2.b.b.a.a.wwx;
    return (17222u & (arg_2.b.c.x ^ 37582u)) | u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(_wgslsmith_f_op_f32(func_4(vec3<i32>(-2147483647i, 51541i, -47843i) & func_1(Struct_1(vec4<f32>(610f, -213f, 2685f, 2398f), false), vec4<i32>(-1i, -49257i, 65344i, 33004i), vec3<i32>(-43454i, 0i, 2147483647i), u_input.a.x), 3962u, vec2<i32>(1i, 1i), Struct_3(vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec4<f32>(-133f, 487f, -464f, -1000f), true), Struct_1(vec4<f32>(-910f, 1097f, 1000f, -1199f), true)), ~vec4<u32>(93703u, 1u, 17142u, 4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1680f, 1319f)), vec3<u32>(u_input.a.x, u_input.a.x, 21210u)))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), Struct_4(0u, Struct_3(vec4<bool>(true, true, false, true), Struct_2(Struct_1(vec4<f32>(-598f, -466f, 1389f, 721f), true), Struct_1(vec4<f32>(-264f, -653f, 525f, -1033f), true)), min(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 47194u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1744f, 1126f) + vec2<f32>(1739f, -811f)), reverseBits(vec3<u32>(1u, 7814u, 58968u))), Struct_2(Struct_1(vec4<f32>(-1197f, 171f, -979f, -1332f), false), Struct_1(vec4<f32>(-847f, -358f, -494f, 542f), false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-802f, -1000f, 1591f, -499f))))), true)), Struct_3(select(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, false), true)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1782f, -421f, -2167f, -1303f))), all(vec4<bool>(false, false, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-360f, 180f, -371f, 1539f)), true)), _wgslsmith_mod_vec4_u32(vec4<u32>(min(20109u, u_input.a.x), 1u, ~u_input.a.x, 60651u), abs(vec4<u32>(20499u, u_input.a.x, u_input.a.x, u_input.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(253f))), -586f), vec3<u32>(14564u, max(u_input.a.x, 16378u) | ~4294967295u, u_input.a.x)), Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-900f, -604f, -496f, -601f), vec4<f32>(-327f, 737f, -3156f, -1033f))), vec4<f32>(1977f, 2221f, 230f, -607f)), true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1617f, 623f, -1699f, 1372f) + vec4<f32>(-277f, -1000f, -1283f, 894f)) * vec4<f32>(-1549f, 203f, -517f, 464f)), true)), select(!(_wgslsmith_f_op_f32(func_4(vec3<i32>(57584i, 2147483647i, -27811i), u_input.a.x, vec2<i32>(-2147483647i, 1i), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(vec4<f32>(-1280f, 376f, -107f, 2293f), true), Struct_1(vec4<f32>(235f, -793f, -1520f, -266f), true)), vec4<u32>(u_input.a.x, 14355u, 4294967295u, 35128u), vec2<f32>(1000f, -631f), vec3<u32>(53815u, u_input.a.x, u_input.a.x)))) <= _wgslsmith_f_op_f32(901f * 470f)), select(true, true, true), true));
    var var_1 = var_0;
    var_1 = Struct_4(48566u, Struct_3(vec4<bool>(!any(vec3<bool>(false, var_1.d, true)), false, all(vec2<bool>(var_1.b.b.b.b, var_1.d)), any(select(var_1.b.a.zy, vec2<bool>(var_1.b.a.x, true), vec2<bool>(false, true)))), var_0.b.b, var_1.b.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.a.a.x, -2001f) * var_0.c.a.a.zx)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 0u, var_1.a), var_1.b.e), vec3<u32>(4294967295u, u_input.a.x, 0u))), var_1.b.b, true);
    var var_2 = Struct_3(vec4<bool>(select(true, any(vec2<bool>(var_1.b.a.x, var_1.b.a.x)), var_0.b.b.b.b), !any(select(var_1.b.a.wz, vec2<bool>(var_1.b.b.a.b, var_0.b.b.b.b), vec2<bool>(false, var_0.b.b.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.b.a.a.x, var_0.c.a.a.x)) - var_1.c.a.a.x) >= 713f, var_1.b.a.x), Struct_2(var_1.c.b, var_0.c.a), _wgslsmith_sub_vec4_u32(abs(~(var_1.b.c << (vec4<u32>(var_1.b.e.x, 19573u, var_1.b.c.x, var_1.b.e.x) % vec4<u32>(32u)))), var_1.b.c), var_1.c.b.a.wy, _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(max(var_0.b.e, vec3<u32>(var_0.a, 1u, 4294967295u)), ~var_0.b.c.xzx) & var_1.b.e, var_1.b.c.yyx));
    let var_3 = firstTrailingBit(36038i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.d.x * var_0.b.b.b.a.x), _wgslsmith_f_op_f32(var_1.b.b.b.a.x + -597f), _wgslsmith_f_op_f32(var_2.b.a.a.x + 502f), var_2.d.x)), u_input.a.x, var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_0.c.b.a.x, -582f, var_2.b.b.a.x), var_0.b.b.b.a) * vec4<f32>(var_2.b.a.a.x, var_2.d.x, 1440f, var_2.b.b.a.x)), var_2.b.a.a)));
}

