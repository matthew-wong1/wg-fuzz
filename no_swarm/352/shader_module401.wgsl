struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-603f, -604f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(562f + -514f), false))))));
    var var_1 = Struct_1(select(-vec4<i32>(-40784i, 6209i, 41848i, -u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -12884i, -53052i, -u_input.a.x, ~u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 1i)), all(vec4<bool>(!arg_0, arg_1.x | false, any(arg_1.xx), arg_0))), vec4<bool>(arg_1.x, !(!all(arg_1.yz)), true, true));
    let var_2 = Struct_2(_wgslsmith_mod_i32(1092i, 9176i), _wgslsmith_f_op_f32(-var_0));
    var var_3 = any(vec3<bool>(select(any(vec3<bool>(arg_1.x, arg_1.x, arg_0)), false || arg_1.x, !arg_0), arg_1.x, arg_0)) && false;
    var_1 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -9144i, var_2.a, 2147483647i) ^ var_1.a, var_1.a & vec4<i32>(var_2.a, -2147483647i, 0i, u_input.a.x)), vec4<bool>(-1i != _wgslsmith_mod_i32(var_2.a, _wgslsmith_mod_i32(2147483647i, var_1.a.x)), arg_0, any(vec3<bool>(false, var_1.b.x, true)) | true, true));
    return ~vec4<i32>(firstTrailingBit(u_input.a.x), var_2.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 15979i, -26258i, u_input.a.x), abs(vec4<i32>(var_1.a.x, 2147483647i, u_input.a.x, var_2.a))), ~var_1.a.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_1(func_3(all(vec2<bool>(true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))), vec4<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), true)), true, all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true)) || all(vec4<bool>(true, true, true, true))));
    var var_1 = 2147483647i;
    var_0 = Struct_1(-(~(vec4<i32>(arg_1.x, u_input.a.x, 1i, 0i) << (min(vec4<u32>(0u, 0u, 12467u, 0u), vec4<u32>(18034u, 0u, 68780u, 26390u)) % vec4<u32>(32u)))), !var_0.b);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-487f * arg_0.x), 1473f))) + _wgslsmith_f_op_f32(f32(-1f) * -1069f))));
    let var_3 = Struct_2(31673i, -1221f);
    return select(~vec3<u32>(_wgslsmith_sub_u32(~32756u, ~80158u), ~4294967295u, 1u), max(vec3<u32>(_wgslsmith_clamp_u32(min(1u, 0u), 47629u, _wgslsmith_dot_vec3_u32(vec3<u32>(5308u, 9899u, 1u), vec3<u32>(4294967295u, 0u, 1u))), 1u, 1u), select(_wgslsmith_mod_vec3_u32(vec3<u32>(70189u, 33044u, 1u), vec3<u32>(16179u, 4294967295u, 69632u)), vec3<u32>(1u, 1u, 1u), var_0.b.x)), all(select(var_0.b.wxx, vec3<bool>(true, true, arg_0.x == var_3.b), var_0.b.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(countOneBits(1u), ~4294967295u);
    return Struct_1(~(-vec4<i32>(i32(-1i) * -19184i, _wgslsmith_div_i32(-8388i, arg_2.a.x), 1i, _wgslsmith_mod_i32(arg_2.a.x, 2147483647i))), arg_2.b);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = var_0.x;
    let var_2 = func_4(firstLeadingBit(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(731f, -747f, -1305f), vec3<f32>(599f, 1574f, -942f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(810f, -1320f, 1702f))), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, -34359i), 13123i, u_input.a.x >> (11439u % 32u), _wgslsmith_div_i32(0i, -2147483647i)))), vec3<u32>(select(~38920u, ~76074u, var_0.x & var_0.x) ^ func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, 758f, -191f)), -vec4<i32>(2147483647i, -9514i, -1i, 36802i)).x, 15184u, 1u), Struct_1(select(vec4<i32>(u_input.a.x, i32(-1i) * -1i, u_input.a.x << (29345u % 32u), u_input.a.x), select(vec4<i32>(-50121i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -29957i, u_input.a.x, u_input.a.x), var_0.x), select(select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, false, var_0.x, true), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), select(true, var_0.x, true))), !(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))));
    var_1 = false;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-147f, -259f)))))), -693f);
    return Struct_2((_wgslsmith_div_i32(~var_2.a.x, -3044i) ^ 1i) >> (_wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(0u, 4294967295u), vec2<u32>(25034u, 56904u))), min(vec2<u32>(4294967295u, 0u), ~vec2<u32>(20601u, 97915u))) % 32u), 894f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 554f;
    let var_1 = func_1();
    let var_2 = vec3<bool>(~var_1.a == ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.a, 50293i), vec3<i32>(var_1.a, var_1.a, u_input.a.x)), true, !func_4(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(16272u, 6714u, 1u), vec3<u32>(1u, 10110u, 4294967295u), vec3<u32>(330u, 0u, 4294967295u))), vec3<u32>(abs(43297u), ~27854u, 0u), func_4(reverseBits(vec3<u32>(51365u, 1u, 0u)), vec3<u32>(17574u, 19908u, 8803u), func_4(vec3<u32>(14072u, 7786u, 0u), vec3<u32>(0u, 1u, 1u), Struct_1(vec4<i32>(var_1.a, -22428i, var_1.a, 0i), vec4<bool>(true, false, false, true))))).b.x);
    let var_3 = select(select(var_2.yy, !var_2.yx, var_2.zz), select(vec2<bool>(false, any(!vec4<bool>(false, var_2.x, var_2.x, var_2.x))), vec2<bool>(all(vec4<bool>(var_2.x, var_2.x, true, true)), _wgslsmith_f_op_f32(193f - var_1.b) >= var_1.b), true), select(!var_2.x, reverseBits(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yz)) < u_input.a.x, !select(var_2.x, 27957i >= var_1.a, var_2.x)));
    let var_4 = vec3<i32>(select(-func_4(select(vec3<u32>(2544u, 62269u, 4294967295u), vec3<u32>(9083u, 28743u, 77244u), vec3<bool>(true, false, true)), ~vec3<u32>(1u, 0u, 52219u), Struct_1(vec4<i32>(-34174i, var_1.a, -1i, -2147483647i), vec4<bool>(false, var_2.x, var_3.x, var_2.x))).a.x, select(u_input.a.x, -44231i & abs(u_input.a.x), true), var_3.x), 1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2631i, -41685i, -2147483647i, -16498i), func_4(~countOneBits(vec3<u32>(4294967295u, 10415u, 9989u)), reverseBits(vec3<u32>(27622u, 20444u, 1u)), Struct_1(vec4<i32>(12057i, var_1.a, var_1.a, u_input.a.x), !vec4<bool>(var_2.x, true, var_2.x, var_3.x))).a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(ceil(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-434f, 818f, var_2.x)), _wgslsmith_f_op_f32(var_1.b - var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))));
}

