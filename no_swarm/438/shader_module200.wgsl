struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<f32>) -> vec3<f32> {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_i32(u_input.b.x, -30371i & u_input.b.x);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_0.zww, arg_0.wyw)), vec3<f32>(757f, -2689f, arg_0.x))))));
    let var_3 = var_2.a;
    var_0 = all(vec2<bool>(true | all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), true));
    return vec3<f32>(1000f, -394f, 186f);
}

fn func_1() -> Struct_3 {
    var var_0 = 2791f;
    return Struct_3(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(floor(843f)), -597f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(990f + -2454f))), _wgslsmith_f_op_f32(f32(-1f) * -113f)))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_4 {
    var var_0 = true;
    let var_1 = select(vec3<bool>(true, !(!arg_1 != true), true), select(vec3<bool>(arg_0, true, !(true || arg_1)), vec3<bool>(!arg_1, arg_0, false), vec3<bool>(select(arg_1, true, arg_0), all(select(vec4<bool>(arg_1, arg_0, arg_0, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1)), !arg_1)), vec3<bool>(any(select(vec4<bool>(true, false, arg_0, false), select(vec4<bool>(arg_0, arg_0, false, arg_1), vec4<bool>(false, arg_1, arg_0, false), vec4<bool>(false, arg_1, true, arg_0)), any(vec4<bool>(arg_0, arg_1, false, true)))), false || any(select(vec2<bool>(false, arg_0), vec2<bool>(arg_1, true), true)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 22677i, -17320i), vec3<i32>(31561i, -1i, -95887i)) >= firstTrailingBit(-2147483647i)));
    let var_2 = vec3<bool>(!arg_0, var_1.x, false);
    var_0 = true;
    let var_3 = -(_wgslsmith_mod_i32(i32(-1i) * -u_input.d, _wgslsmith_add_i32(u_input.a.x, -24802i)) << (32313u % 32u));
    return Struct_4(Struct_2(min(select(vec3<u32>(7190u, 8165u, 4294967295u), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c), select(false, arg_0, false)), ~select(vec3<u32>(4294967295u, 54171u, 0u), vec3<u32>(15986u, 0u, u_input.c.x), arg_1)), Struct_1(~u_input.c.xx, ~u_input.b.zzy)), Struct_2(_wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(1u, 1u, u_input.c.x)), u_input.c, u_input.c), Struct_1(firstLeadingBit(u_input.c.xy), _wgslsmith_mod_vec3_i32(reverseBits(u_input.a.wxz), select(u_input.b.yyz, vec3<i32>(var_3, 2147483647i, var_3), var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(true, true, func_1(), func_1());
    var var_1 = -u_input.a.wyw;
    var_1 = u_input.a.xzy;
    var_0 = func_3(false, !(!any(vec4<bool>(false, false, true, false))), func_1(), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1209f, 1730f, -726f) + vec3<f32>(-873f, 1012f, 467f)))));
    var_1 = var_0.a.b.b;
    var_0 = func_3(true, true, func_1(), Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1332f, -1000f)), _wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(-976f, 824f, 916f, 1443f))), any(vec3<bool>(false, true, true))))))));
    var var_2 = u_input.a.yx;
    var_1 = ~max(_wgslsmith_sub_vec3_i32(max(u_input.a.wxw, vec3<i32>(var_2.x, var_0.a.b.b.x, var_1.x)), -vec3<i32>(-2147483647i, var_2.x, 2147483647i)) << (max(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(u_input.c.x, 108967u, 1u), vec3<u32>(u_input.c.x, var_0.a.b.a.x, 4294967295u)), u_input.c) % vec3<u32>(32u)), -u_input.a.zzw);
    var_0 = Struct_4(var_0.b, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0.a.b.a.x, u_input.c.x, 0u, 0u)), firstTrailingBit(vec4<u32>(u_input.c.x, 50464u, 98625u, 40283u) | vec4<u32>(4294967295u, 1u, 75875u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, select(_wgslsmith_sub_u32(u_input.c.x, 0u), var_0.b.a.x, true)), _wgslsmith_clamp_vec2_u32(u_input.c.yx, u_input.c.yy, vec2<u32>(19772u, u_input.c.x)) ^ abs(u_input.c.xy)));
}

