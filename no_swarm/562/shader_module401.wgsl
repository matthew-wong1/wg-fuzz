struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_add_vec4_i32(-(~(~_wgslsmith_div_vec4_i32(vec4<i32>(-29690i, 10215i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 46918i)))), vec4<i32>(u_input.a.x >> (1u % 32u), 1i, _wgslsmith_sub_i32(-1i, firstTrailingBit(u_input.a.x)), ((u_input.a.x << (40418u % 32u)) << (13773u % 32u)) | u_input.a.x));
    var var_1 = countOneBits(~vec3<u32>(16364u, _wgslsmith_dot_vec4_u32(vec4<u32>(75828u, 4294967295u, 29112u, 100219u), vec4<u32>(17385u, 3323u, 55635u, 13488u)), 1u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(96539u, 48529u)), _wgslsmith_div_u32(~1u, ~3163u)), reverseBits(vec3<u32>(~4294967295u, ~33141u, 22621u))) % vec3<u32>(32u));
    let var_2 = !select(vec4<bool>(true & select(true, true, true), _wgslsmith_div_u32(1u, var_1.x) >= var_1.x, any(vec4<bool>(false, false, false, false)) | true, false), vec4<bool>(true, true, true, true), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), ~var_1.x >= var_1.x, !any(vec4<bool>(true, false, true, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))));
    var_1 = select(_wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, var_1.x, 4294967295u) ^ vec3<u32>(var_1.x, var_1.x, var_1.x)), min(select(vec3<u32>(109515u, 59815u, var_1.x), vec3<u32>(var_1.x, 0u, var_1.x), var_2.x), vec3<u32>(82807u, var_1.x, 1u))) ^ ((firstTrailingBit(vec3<u32>(var_1.x, var_1.x, var_1.x)) | vec3<u32>(18590u, var_1.x, var_1.x)) ^ ~vec3<u32>(var_1.x, var_1.x, var_1.x)), ~vec3<u32>(33665u, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, var_1.x), var_1.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(46857u, 4294967295u, 48798u), vec3<u32>(4294967295u, var_1.x, 39373u)))), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(581f, -2142f, -127f), vec3<f32>(865f, 268f, 687f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(809f, 1037f, 1096f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -220f, 265f)) + vec3<f32>(_wgslsmith_f_op_f32(floor(-431f)), _wgslsmith_f_op_f32(-155f * -1000f), _wgslsmith_f_op_f32(-941f + 1000f))))));
    return ~u_input.a.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2099f, -1254f))));
    var var_1 = 14849i;
    var var_2 = 2147483647i;
    let var_3 = vec3<i32>(23383i, u_input.a.x, -(i32(-1i) * -25269i));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(round(var_0.a.x)))), var_0.a.x)));
    return ~(-vec4<i32>(-1i, var_3.x, func_3(), -1i)) & vec4<i32>(u_input.a.x, u_input.a.x, 65861i, 41602i);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec2<bool>(!(firstLeadingBit(~1u) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(56900u, 1u, 1u, 1u), ~vec4<u32>(0u, 0u, 18717u, 1u))), !(!select(true, -1071f >= arg_0.a.x, true)));
    let var_1 = abs(max(_wgslsmith_sub_vec4_i32(func_2(), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -29589i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -45611i), vec4<i32>(u_input.a.x, -10651i, u_input.a.x, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 47095i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 35113i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a.x, 45627i), vec4<i32>(u_input.a.x, 3024i, 2147483647i, 1303i))) << (reverseBits(abs(vec4<u32>(45667u, 17923u, 77052u, 4294967295u))) % vec4<u32>(32u))));
    var var_2 = select(vec4<bool>(all(select(!var_0, var_0, true)), any(select(!vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(true, true, true)), var_0.x | var_0.x)), !var_0.x, true), select(select(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, var_0.x, false, false), false), !select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true), !(!vec4<bool>(true, false, var_0.x, var_0.x)), select(select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, false, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, true)), var_0.x)), vec4<bool>(all(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false)), any(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), true)) | var_0.x, var_0.x, var_0.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<f32>(-501f, 287f))), vec2<f32>(-2034f, arg_0.a.x))))))));
    var_2 = vec4<bool>(!(!(!var_2.x)), false || any(!(!var_2.zyy)), -1025f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), !(var_2.x == var_0.x) | !var_0.x);
    return 993f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))) * arg_1.a));
    let var_1 = _wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(4294967295u, arg_2, 6296u)), vec3<u32>(4294967295u, select(arg_2, 0u, false), abs(arg_2))), countOneBits(abs(vec3<u32>(arg_2, 1u, 0u))));
    var var_2 = func_2().yy;
    var var_3 = ~abs(~_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(1u, var_1.x, arg_2)), vec3<u32>(arg_2, var_1.x, 44880u)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-224f - _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(min(-831f, -763f)))), var_0.a.x));
    return firstLeadingBit(62112u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 675f;
    var var_1 = ~vec4<u32>(~4294967295u, abs(func_4(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(var_0, var_0)))), Struct_1(vec2<f32>(913f, 134f)), 0u)), 4294967295u, 1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, -1000f, 1299f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1346f, var_0, 2332f)), var_1.x > var_1.x))), vec3<f32>(-237f, -385f, _wgslsmith_f_op_f32(ceil(-948f)))));
    var_1 = vec4<u32>(67296u, firstLeadingBit(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(17446u, var_1.x, 4294967295u, var_1.x), vec4<u32>(36090u, var_1.x, var_1.x, 4294967295u)), ~vec4<u32>(4294967295u, 1u, var_1.x, 0u) & (vec4<u32>(1u, 46766u, 0u, var_1.x) & vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_clamp_u32(var_1.x, 32765u, 1u), ~(~(_wgslsmith_div_u32(0u, var_1.x) >> ((22036u ^ var_1.x) % 32u))));
    var_1 = max(_wgslsmith_mult_vec4_u32((~vec4<u32>(var_1.x, 12753u, 28624u, var_1.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(60452u, 0u, 1u, var_1.x), vec4<u32>(31379u, var_1.x, var_1.x, var_1.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(71960u, 85957u, 1u, var_1.x)), var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, 88566u), var_1.yxx), 117529u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(firstTrailingBit(select(vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x), vec4<u32>(1u, var_1.x, var_1.x, 1u), vec4<bool>(false, false, false, true))), ~min(vec4<u32>(0u, 4294967295u, 14901u, var_1.x), vec4<u32>(0u, 0u, 29375u, 79283u)))), vec4<u32>(~firstLeadingBit(var_1.x ^ 1u), 0u, _wgslsmith_dot_vec2_u32(~var_1.xx, var_1.yw), ~var_1.x));
    let var_3 = !(!any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.xx));
    let var_5 = var_4;
    var_1 = firstLeadingBit(max(vec4<u32>(8867u, ~60945u, ~var_1.x, ~30073u), firstTrailingBit(~vec4<u32>(1u, var_1.x, 31434u, var_1.x))) >> (~vec4<u32>(max(1u, 18613u), var_1.x, firstLeadingBit(var_1.x), max(11625u, 4294967295u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz) | vec2<i32>(func_2().x, abs(u_input.a.x))) & _wgslsmith_div_vec2_i32(-u_input.a.yz, u_input.a.xy), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-2133f - -1605f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0, var_0)), -1731f), _wgslsmith_f_op_f32(step(var_4.a.x, -1173f)), _wgslsmith_f_op_f32(var_2.x - var_2.x)))), (reverseBits(-vec4<i32>(-1i, 41998i, 9961i, u_input.a.x)) | func_2()) >> (countOneBits(vec4<u32>(var_1.x, 84394u, 23740u, max(var_1.x, var_1.x))) % vec4<u32>(32u)));
}

