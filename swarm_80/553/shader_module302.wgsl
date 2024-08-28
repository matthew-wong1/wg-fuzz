struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(abs(vec4<i32>(u_input.a.x | u_input.a.x, -21860i, -74143i, max(-1i, -2147483647i)) >> (~u_input.b % vec4<u32>(32u))), !(!(all(vec4<bool>(true, true, false, true)) | true)));
    var var_1 = select(u_input.a.x, countOneBits(-1i & (-u_input.a.x >> (reverseBits(u_input.b.x) % 32u))), !var_0.b);
    let var_2 = Struct_1(~var_0.a ^ _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-3975i, u_input.a.x, 2147483647i, var_0.a.x)), vec4<i32>(_wgslsmith_sub_i32(0i, -3634i), u_input.a.x, u_input.a.x, max(var_0.a.x, var_0.a.x))), var_0.b);
    var_0 = Struct_1(vec4<i32>(1i, 2147483647i, ~1i, var_0.a.x), false);
    var var_3 = Struct_1(-(var_0.a >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(17719u, u_input.b.x, u_input.b.x, 4294967295u), u_input.b, u_input.b) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), true | all(vec2<bool>(false, true)));
    return !any(!select(vec3<bool>(var_0.b, false, var_2.b), !vec3<bool>(var_3.b, var_3.b, var_0.b), all(vec3<bool>(var_3.b, false, var_2.b))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_2;
    let var_2 = vec3<bool>(!var_0.b, select(false, false, false), func_3());
    var var_3 = -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -2147483647i, _wgslsmith_add_i32(arg_2.a.x, u_input.a.x), _wgslsmith_mod_i32(65778i, u_input.a.x)), ~select(vec4<i32>(u_input.a.x, 2147483647i, arg_2.a.x, var_0.a.x), var_0.a, var_1.b)), vec4<i32>(-2147483647i, _wgslsmith_add_i32(13488i, 46236i), arg_2.a.x, firstTrailingBit(var_0.a.x)) ^ var_0.a);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(589f - -528f) - _wgslsmith_div_f32(330f, 106f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1572f * 1113f)), 187f))));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(~min(vec4<i32>(u_input.a.x, 13118i, arg_2.a.x, arg_2.a.x), _wgslsmith_mod_vec4_i32(arg_3.a, arg_2.a)) & arg_2.a, false);
    var var_1 = var_0;
    var_1 = func_2(5701i, !(!arg_1.xx), Struct_1(vec4<i32>(min(-2147483647i, 59469i), var_1.a.x, var_1.a.x, var_0.a.x) ^ min(-vec4<i32>(arg_2.a.x, 2147483647i, -2147483647i, arg_3.a.x), var_1.a), true), u_input.b.x);
    return !arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(vec4<bool>((u_input.a.x <= u_input.a.x) && select(false, true, true), true, u_input.a.x == _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), !func_1(u_input.b.x, vec3<bool>(true, true, true), Struct_1(vec4<i32>(12506i, 44466i, -1i, u_input.a.x), false), Struct_1(vec4<i32>(u_input.a.x, 9730i, u_input.a.x, u_input.a.x), false))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)), u_input.a.x <= -21430i), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), false)));
    let var_1 = func_2(6465i, select(select(!select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(false, false)), !(!vec2<bool>(var_0, true)), vec2<bool>(var_0, func_3())), vec2<bool>(true, true), var_0), Struct_1(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.a.x, -30143i, -22704i, 53282i) & vec4<i32>(u_input.a.x, -1i, u_input.a.x, 27053i)), ~vec4<i32>(-23947i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-44154i, 2147483647i, u_input.a.x, u_input.a.x) >> (~u_input.b % vec4<u32>(32u))), true), ~_wgslsmith_dot_vec3_u32((u_input.b.wyz & u_input.b.yww) & ~u_input.b.zyx, abs(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_2 = _wgslsmith_clamp_vec2_i32(select(-(~var_1.a.zy), abs(vec2<i32>(u_input.a.x, u_input.a.x)), vec2<bool>(var_1.b || false, true)) << (u_input.b.yz % vec2<u32>(32u)), u_input.a, max(var_1.a.ww, vec2<i32>(22181i, 0i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1188f, 495f, 762f)), vec3<f32>(1000f, -2579f, -492f)))))));
    var var_4 = var_3;
    let var_5 = vec3<bool>(var_4.x < var_3.x, func_3(), !any(!vec3<bool>(false, var_1.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(802f * 933f))), _wgslsmith_f_op_f32(step(var_4.x, _wgslsmith_f_op_f32(f32(-1f) * -548f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(var_3.xy, var_4.zx))))), countOneBits(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw) & u_input.b.x)), abs(61941u));
}

