struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(vec4<i32>(u_input.c, abs(1i), u_input.e.x | u_input.d.x, reverseBits(_wgslsmith_sub_i32(u_input.d.x, -21792i))), _wgslsmith_f_op_f32(arg_0.b.b - _wgslsmith_f_op_f32(abs(684f))));
    global0 = arg_0.a;
    var var_1 = var_0.a.zzx;
    var var_2 = Struct_2(-_wgslsmith_div_vec3_i32(arg_0.b.a.www, -_wgslsmith_mult_vec3_i32(var_0.a.wwz, var_0.a.xyy)), ~firstTrailingBit(~_wgslsmith_sub_u32(23084u, u_input.b.x)), arg_0.b, select(vec3<u32>(~(u_input.b.x ^ 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(44332u, u_input.b.x), u_input.b.xw & vec2<u32>(u_input.a.x, u_input.a.x)), 0u), u_input.b.ywy, !select(!vec3<bool>(arg_0.a, true, arg_1), vec3<bool>(arg_1, arg_0.a, arg_0.a), !vec3<bool>(true, false, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, arg_3, arg_2.x)) * vec3<f32>(1105f, var_0.b, -1847f)))) + vec3<f32>(1000f, var_0.b, 973f)));
    var var_3 = abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), abs(var_2.d.zx) & var_2.d.zy), u_input.b.wz));
    return arg_2.x;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    global0 = all(!select(arg_1.yz, vec2<bool>(true, true), select(!arg_1.xz, vec2<bool>(false, arg_1.x), arg_1.x)));
    let var_0 = Struct_3(Struct_2(-(countOneBits(vec3<i32>(53294i, u_input.c, u_input.e.x)) & vec3<i32>(u_input.c, u_input.c, 20139i)), 0u, Struct_1(~select(vec4<i32>(0i, u_input.e.x, 4429i, 37290i), vec4<i32>(u_input.d.x, u_input.e.x, u_input.d.x, u_input.e.x), arg_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_4(true, Struct_1(vec4<i32>(u_input.e.x, -10810i, -9575i, -36592i), -330f), u_input.e.x), false, vec4<f32>(829f, 1883f, 1661f, 451f), arg_0)), _wgslsmith_f_op_f32(func_3(Struct_4(true, Struct_1(vec4<i32>(u_input.d.x, u_input.e.x, 22718i, u_input.c), -282f), -2147483647i), arg_1.x, vec4<f32>(arg_0, arg_0, arg_0, arg_0), arg_0))))), ~(~abs(u_input.b.xyx)), vec3<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(393f + -733f), arg_0), -236f)), u_input.b.zy, ~(~firstLeadingBit(vec3<i32>(0i, u_input.c, 14446i))), Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.c), -vec3<i32>(u_input.d.x, -13946i, u_input.c)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x) ^ vec3<i32>(u_input.d.x, u_input.e.x, u_input.d.x), vec3<i32>(10047i, -1i, u_input.d.x), vec3<i32>(u_input.e.x, 0i, u_input.d.x)), u_input.b.x, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -42100i, -2911i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.d.x, u_input.e.x, -1i)) >> (vec4<u32>(0u, u_input.b.x, 62680u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_4(false, Struct_1(vec4<i32>(2147483647i, -1i, u_input.c, u_input.d.x), arg_0), u_input.e.x), arg_1.x, vec4<f32>(arg_0, arg_0, -707f, -688f), arg_0)), _wgslsmith_f_op_f32(func_3(Struct_4(false, Struct_1(vec4<i32>(u_input.c, -9243i, -1884i, 2147483647i), -1445f), 0i), true, vec4<f32>(870f, arg_0, -949f, 775f), arg_0)))), vec3<u32>(~firstLeadingBit(u_input.a.x), u_input.b.x, 1579u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1405f, -632f, arg_0) + _wgslsmith_div_vec3_f32(vec3<f32>(-1102f, 1138f, arg_0), vec3<f32>(2812f, arg_0, 938f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -659f, -591f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, arg_0, arg_0))))))));
    var var_1 = !select(!(!arg_1), arg_1, arg_1);
    return _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.e.x), vec2<i32>(-2147483647i, var_0.c.x)), min(0i, 2147483647i)), ~countOneBits(u_input.e.x)), -_wgslsmith_sub_i32(u_input.d.x, min(u_input.e.x, u_input.e.x))));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(func_2(-327f, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), u_input.e.x, _wgslsmith_clamp_i32(~16329i, u_input.d.x, 0i), _wgslsmith_add_i32(-88404i, u_input.d.x) >> (max(u_input.a.x, 4294967295u) % 32u)), ~vec4<i32>(36884i, reverseBits(u_input.c), u_input.c, select(u_input.e.x, u_input.e.x, true)), vec4<i32>(0i, u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c, 1i, -1i), min(u_input.c, -13247i)), -u_input.e.x | _wgslsmith_div_i32(u_input.d.x, 1i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + -140f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1000f)), -296f, true))), _wgslsmith_f_op_f32(select(-106f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1270f + -902f))), all(vec4<bool>(true, true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(-var_1.b);
    var var_3 = vec3<u32>(u_input.b.x, ~0u, ~22201u);
    let var_4 = vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), u_input.a.x, 1u);
    var var_5 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1276f), var_0.b))));
}

