struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.b.x, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-921f * -695f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1275f) * _wgslsmith_f_op_f32(-2199f + 208f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f))));
    var var_2 = u_input.b.x | abs(u_input.b.x);
    var_2 = _wgslsmith_clamp_u32(u_input.b.x, firstTrailingBit(u_input.b.x), var_0.a);
    var var_3 = var_0;
    return 35719u;
}

fn func_2() -> vec2<f32> {
    let var_0 = -950f;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(22703i, -33049i, u_input.a.x, u_input.a.x), u_input.a >> (vec4<u32>(u_input.b.x, 9103u, 1u, u_input.b.x) % vec4<u32>(32u))), reverseBits(vec4<i32>(18635i, u_input.a.x, u_input.a.x, u_input.a.x)) ^ firstTrailingBit(u_input.a)), 0i), u_input.a.wz);
    let var_2 = 16190u;
    var var_3 = Struct_1(~var_2, true);
    var_3 = Struct_1(func_3() << (_wgslsmith_mod_u32(~min(var_3.a, 3185u), _wgslsmith_sub_u32(0u ^ var_3.a, ~u_input.b.x)) % 32u), true);
    return vec2<f32>(_wgslsmith_div_f32(732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-990f + -1000f), -807f)), -1000f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_2.x;
    let var_1 = ~u_input.a.x | -countOneBits(reverseBits(u_input.a.x));
    var var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(~arg_0.x, u_input.b.x << (arg_0.x % 32u))), true);
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    return Struct_1(arg_0.x & 74028u, false);
}

fn func_5(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f) - _wgslsmith_f_op_f32(1169f - _wgslsmith_f_op_f32(-156f - -1142f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-342f)))))));
    let var_1 = Struct_1(u_input.b.x, true);
    return func_4(vec4<u32>(select(10984u, 1u | u_input.b.x, true), 1u, abs(max(arg_2.a | 23805u, 0u)), firstTrailingBit(arg_1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -807f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, var_0)))), vec2<f32>(-2410f, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(449f, var_0)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = func_5(58691i, ~u_input.b, func_4(~reverseBits(vec4<u32>(u_input.b.x, 36693u, u_input.b.x, 1u)), _wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(853f, 308f))))));
    let var_1 = func_5(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(23897i, reverseBits(-2147483647i)), 4780i), vec3<u32>(func_3(), _wgslsmith_clamp_u32(~max(1u, 0u), firstLeadingBit(u_input.b.x), u_input.b.x), func_3()), Struct_1(~var_0.a, arg_0.x));
    var_0 = Struct_1(u_input.b.x, all(vec2<bool>(false, any(vec2<bool>(true, var_1.b)))));
    let var_2 = ~u_input.b.x;
    let var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a.zyz, u_input.a.xxx << (abs(u_input.b) % vec3<u32>(32u))), ~min(vec3<i32>(u_input.a.x, u_input.a.x, 36609i), u_input.a.ywz)), u_input.a.x);
    return 1u <= var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = -(0i | u_input.a.x);
    var_0 = u_input.a.x;
    var var_1 = false;
    var_1 = true;
    var_1 = all(vec3<bool>(true, true | func_1(vec4<bool>(true, true, true, true), false, false), false)) != !(!(func_5(-2147483647i, u_input.b, Struct_1(96238u, true)).b & true));
    var var_2 = select(true, !(!select(true, true, true)), true);
    var_2 = ~2147483647i >= min(u_input.a.x, -2147483647i);
    let var_3 = ~vec2<u32>(func_3(), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yz, vec2<bool>(false, false)), vec2<u32>(~u_input.b.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-200f, 1f, _wgslsmith_div_f32(378f, -1272f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-219f, -2261f))))))), _wgslsmith_clamp_vec2_u32(~(~u_input.b.xy << (u_input.b.zz % vec2<u32>(32u))), vec2<u32>(_wgslsmith_div_u32(func_4(vec4<u32>(u_input.b.x, u_input.b.x, 28869u, var_3.x), vec2<f32>(-475f, 960f), vec2<f32>(494f, -444f)).a, _wgslsmith_add_u32(var_3.x, 16547u)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(20776u, 4294967295u, u_input.b.x), u_input.b), _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, 10071u, 4294967295u), u_input.b))), var_3), ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(var_3, var_3)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(var_3.x, var_3.x)), firstLeadingBit(u_input.b.yy)), ~vec2<u32>(0u, u_input.b.x)));
}

