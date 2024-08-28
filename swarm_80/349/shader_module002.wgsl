struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~39328u ^ ~select(u_input.a, _wgslsmith_add_u32(u_input.a, firstLeadingBit(4294967295u)), arg_0.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - -686f);
    global0 = vec2<bool>(!arg_2.b.x, true);
    var var_2 = arg_0;
    let var_3 = vec4<i32>(-1i, max(arg_1.x << (0u % 32u), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(arg_1.wxz, vec3<i32>(arg_1.x, 1i, arg_1.x))), vec3<i32>(-50536i, arg_1.x, abs(0i)))), 1i | (-(-18045i | arg_1.x) & abs(reverseBits(2147483647i))), arg_1.x);
    return arg_2;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(arg_2.x));
    var var_1 = arg_0;
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), vec2<bool>(true, true)), ~(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 3460i, 10131i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, -3147i))) << (max(firstLeadingBit(~vec4<u32>(1u, arg_1.x, arg_1.x, u_input.a)), arg_1) % vec4<u32>(32u)), func_2(Struct_1(arg_0.a, func_2(arg_0, vec4<i32>(1i, 1i, 1i, 1i), arg_0).b), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (arg_1 % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 52423i, -2999i, 0i), vec4<i32>(-1i, 55240i, -1i, 2147483647i))), arg_0)).b;
    var var_3 = _wgslsmith_f_op_f32(1035f * arg_2.x);
    global0 = arg_0.b;
    return var_2;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !(!(!vec2<bool>(arg_0.b.x, arg_0.b.x)));
    global0 = !select(!vec2<bool>(arg_0.b.x, global0.x), func_3(func_2(arg_0, vec4<i32>(1i, 1i, 1i, 1i), arg_0), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 38873u, 25632u, u_input.a)), ~vec4<u32>(57360u, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-483f, arg_0.a, arg_0.a, arg_0.a)))))), var_0.x);
    global0 = vec2<bool>(true || arg_0.b.x, true);
    global0 = vec2<bool>(~(~u_input.a & ~u_input.a) <= u_input.a, true);
    var var_1 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2236f, _wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(min(-1925f, 491f))) - vec3<f32>(1f, 1f, 1f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1389f, 266f, 138f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1212f, -949f, 1000f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(113f, 519f, -1106f))))))));
    var var_1 = -1688f;
    let var_2 = func_1(Struct_1(var_0.x, vec2<bool>(global0.x && !global0.x, true)));
    var var_3 = var_2;
    global0 = var_2.b;
    var var_4 = abs(firstLeadingBit(vec3<i32>(-23715i, -73201i << (u_input.a % 32u), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(617f, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-40148i, var_4.x, -2147483647i, var_4.x) << (~vec4<u32>(u_input.a, 0u, 57218u, 0u) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-25725i, var_4.x, var_4.x, var_4.x), vec4<i32>(-2147483647i, var_4.x, var_4.x, -2147483647i)))), _wgslsmith_sub_vec4_i32(-min(vec4<i32>(var_4.x, 2147483647i, var_4.x, -29879i), vec4<i32>(var_4.x, var_4.x, 2147483647i, var_4.x)), select(vec4<i32>(1i, 0i, var_4.x, var_4.x) | vec4<i32>(var_4.x, var_4.x, 41400i, var_4.x), -vec4<i32>(0i, var_4.x, 1i, 86272i), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, false, var_3.b.x, false))))), _wgslsmith_f_op_f32(select(var_3.a, var_0.x, global0.x)), ~60483u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1058f)) * _wgslsmith_f_op_f32(ceil(var_3.a))))));
}

