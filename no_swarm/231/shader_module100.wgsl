struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> i32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.zx, reverseBits(u_input.b.yx)), -u_input.d.x ^ _wgslsmith_add_i32(0i, 781i)) ^ abs(-arg_0.yz);
    var var_1 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, 30029i)), max(firstTrailingBit(var_0), -var_0)), firstTrailingBit(var_0)), Struct_1(vec4<f32>(1f, _wgslsmith_f_op_f32(-293f - _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-811f)), 2389f), -252f), ~u_input.a.x, u_input.a.x), 2147483647i);
    var_1 = Struct_2(arg_0.x, var_1.b, -_wgslsmith_mod_i32(~(-40218i), -(24115i >> (var_1.b.c % 32u))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.a.x)));
    var var_3 = var_2;
    return -_wgslsmith_sub_i32(-(~_wgslsmith_mod_i32(arg_0.x, u_input.d.x)), 1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = func_3(firstTrailingBit((u_input.c >> (u_input.a % vec4<u32>(32u))) << (~(~vec4<u32>(56780u, u_input.a.x, arg_0.c, 0u)) % vec4<u32>(32u))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec2<bool>(false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, arg_2.c >= u_input.a.x)), !vec4<bool>(all(vec3<bool>(true, false, false)), 1268f == arg_1.b.a.x, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = !select(vec3<bool>(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), any(vec2<bool>(true, true))), vec3<bool>(any(vec3<bool>(true, true, true)), false, select(false, false, true) | all(vec4<bool>(true, true, false, false))), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b.a.x, arg_1.b.a.x, arg_0.a.x), vec3<f32>(arg_0.a.x, arg_1.b.a.x, -806f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(660f, -588f, arg_1.b.a.x)))))));
    let var_3 = u_input.a.xx;
    var var_4 = Struct_2(2147483647i, arg_2, max(u_input.c.x, select(i32(-1i) * -arg_3, -33108i, (i32(-1i) * -51637i) < u_input.d.x)));
    return var_4.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec4<i32>(abs(~(-2147483647i)), ~_wgslsmith_clamp_i32(-(~arg_1.x), u_input.d.x, _wgslsmith_div_i32(~(-2147483647i), -4313i)), 2147483647i, -38742i);
    let var_1 = ~(~_wgslsmith_div_vec3_u32(~(~u_input.a.wxx), select(vec3<u32>(0u, arg_0.c, u_input.a.x), select(u_input.a.wzy, vec3<u32>(arg_0.b, 30305u, u_input.a.x), vec3<bool>(false, true, true)), vec3<bool>(false, false, false))));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(min(1i, -(var_0.x & var_0.x)), _wgslsmith_mod_i32(abs(max(var_0.x, u_input.b.x)), _wgslsmith_dot_vec3_i32(~var_0.wwy, var_0.xyw >> (u_input.a.xwz % vec3<u32>(32u)))), -min(1i, arg_1.x), func_2(Struct_1(arg_0.a, u_input.a.x, var_1.x), Struct_2(-28321i, Struct_1(vec4<f32>(-1000f, 1000f, 2456f, arg_0.a.x), 1u, u_input.a.x), 797i), arg_0, arg_1.x)), arg_1);
    var_0 = ~vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(~(~var_0.x), countOneBits(u_input.d.x)), -(u_input.b.x | ~u_input.d.x), u_input.c.x);
    var var_2 = select(vec2<i32>(arg_1.x ^ var_0.x, select(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1563i, var_0.x, -46907i, 2147483647i), vec4<i32>(-13247i, var_0.x, var_0.x, -2147483647i)), vec4<i32>(37971i, 47918i, 1i, arg_1.x)), ~(~5750i), any(vec2<bool>(true, true)))), u_input.c.xx, !select(true, true, all(vec2<bool>(true, true))));
    return -570f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, -1971f, -502f, 1672f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-882f, 776f, 904f, -639f), vec4<f32>(-1000f, -732f, -1349f, 704f), false))) + vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1183f, -264f, 597f, -149f) * vec4<f32>(1839f, -384f, -591f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-807f, 1202f, 814f, 476f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-867f)), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-1156f, -119f, 678f, -260f), u_input.a.x, u_input.a.x), u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -2406f), -208f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(min(-1397f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(-975f, 408f, -1000f, 862f), u_input.a.x, 9934u), vec4<i32>(u_input.c.x, u_input.b.x, -63981i, 2147483647i))) + 2362f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1377f, -1034f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1811f)) * _wgslsmith_div_f32(-1080f, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, 496f, 2026f, 1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1129f, 1266f, 367f, 818f) + vec4<f32>(420f, -514f, 716f, -2077f))))));
    var var_1 = true;
    var var_2 = vec2<i32>(1i, 8545i);
    let var_3 = any(vec2<bool>(false, !any(vec2<bool>(true, true))));
    var var_4 = select(!var_3, all(select(vec3<bool>(true, !var_3, u_input.b.x <= 27041i), vec3<bool>(true, false, true), all(select(vec2<bool>(true, true), vec2<bool>(var_3, true), vec2<bool>(var_3, var_3))))), _wgslsmith_sub_u32(44513u, ~u_input.a.x) <= ~u_input.a.x);
    var_2 = -(u_input.b.yw >> (max(vec2<u32>(_wgslsmith_mult_u32(99805u, u_input.a.x), select(u_input.a.x, u_input.a.x, var_3)), _wgslsmith_sub_vec2_u32(u_input.a.wy, u_input.a.ww)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(u_input.a.xyy, select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.yxw, vec3<bool>(true, var_3, var_3)))));
}

