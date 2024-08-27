struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: vec3<f32>) -> bool {
    let var_0 = arg_2 & u_input.a.x;
    let var_1 = i32(-1i) * -2147483647i;
    var var_2 = !(!(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))));
    var_2 = !select(vec4<bool>(false, false, true, var_2.x), !select(select(vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(true, !var_2.x, true, arg_1 <= arg_1), !vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)));
    let var_3 = _wgslsmith_f_op_f32(-arg_3.x);
    return true;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(u_input.a.x, abs(_wgslsmith_add_vec2_u32(~u_input.b, reverseBits(~vec2<u32>(u_input.b.x, 1u)))));
    let var_1 = vec3<bool>(!all(vec3<bool>(u_input.a.x < var_0.a, true, true)), true, true);
    return var_0.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = Struct_1(-2147483647i, vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(arg_1.x, 21904u, u_input.b.x), reverseBits(reverseBits(arg_1.x))), ~4294967295u));
    var_1 = var_0;
    var_1 = arg_3;
    var var_2 = (_wgslsmith_clamp_i32(reverseBits(func_3()), arg_2.x, ~arg_0.x) != -(var_1.a ^ _wgslsmith_dot_vec4_i32(arg_0, arg_0))) && (!select(any(vec4<bool>(true, true, true, false)), true, true) && any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(~(-30732i), _wgslsmith_add_i32(-1i, arg_3.a), ~var_1.a, 16930i), arg_0), vec2<u32>(15746u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 0u), vec2<u32>(arg_1.x, 75644u)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(select(vec3<bool>(true & (u_input.a.x != u_input.a.x), true, true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
    var var_1 = !vec4<bool>(false, var_0, false, _wgslsmith_mod_i32(-1i, ~u_input.a.x) <= ~abs(0i));
    var_1 = select(vec4<bool>(1i > u_input.a.x, !all(var_1.xzw) && (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 62847u, u_input.b.x), vec3<u32>(arg_1.b.x, u_input.b.x, 12052u)) != ~u_input.b.x), var_1.x, var_1.x && (!var_0 && true)), !(!select(select(vec4<bool>(false, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, false, var_0), vec4<bool>(false, true, var_0, var_1.x)), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, false, var_0, true), vec4<bool>(false, var_0, var_0, var_1.x)), vec4<bool>(false, var_0, false, var_0))), vec4<bool>((u_input.b.x >= (73371u >> (1u % 32u))) && !(false && var_1.x), false, true != (false | func_1(arg_0.yy, -18296i, u_input.a.x, arg_0)), var_1.x && var_0));
    var_1 = !(!vec4<bool>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, 1117f)), 18559i, -2147483647i, arg_0), true, any(var_1.yy), var_1.x));
    let var_2 = (69272u | ~(~arg_1.b.x)) >> (1u % 32u);
    return Struct_1(-1i << (0u % 32u), abs(select(~arg_1.b, ~vec2<u32>(25245u, arg_1.b.x), !var_1.xy) | u_input.b));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_5(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(208f, -906f) - vec2<f32>(-851f, 1551f)), vec2<f32>(653f, -683f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2772f) - vec2<f32>(-181f, -1000f)))), ~(~1i), _wgslsmith_mult_i32(1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1105f, -736f, 368f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-378f, 136f, 887f) + vec3<f32>(-881f, 1342f, 959f))))), reverseBits(~(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(769f, -338f, -688f))), func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -63283i, u_input.a.x), vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.a.x)), select(vec3<u32>(7017u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true), firstTrailingBit(vec3<i32>(8798i, 1i, -2147483647i)), Struct_1(-7858i, u_input.b)))), func_2(vec4<i32>(u_input.a.x, abs(~(-12154i)), _wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a.x)), select(countOneBits(~vec3<u32>(5275u, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 34123u)), (u_input.a.x >= -22641i) & false), -(reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, 2824i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(89517u, 73993u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1385f, -1254f, -599f), vec3<f32>(-1042f, -1647f, -877f)))), Struct_1(-204i, abs(u_input.b)))));
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(348f + 1000f), -988f, 801f)), Struct_1(u_input.a.x, ~vec2<u32>(u_input.b.x, 1u))));
    let var_3 = Struct_1(func_3(), ~var_2.a.b);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    let var_5 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_i32(~u_input.a, -vec2<i32>(var_3.a, var_5)), reverseBits(vec2<i32>(-7682i, -1i))), var_2.a.b);
}

