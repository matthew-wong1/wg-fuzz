struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true));

var<private> global1: vec4<f32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_i32(1927i, abs(arg_3.x));
    var_0 = arg_3.x;
    var_0 = 29955i;
    global0 = array<vec4<bool>, 6>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1294f, 172f, global1.x, -1905f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, -968f, global1.x, global1.x))))))));
    return -reverseBits(~select(~vec3<i32>(-2147483647i, 32268i, 2147483647i), ~vec3<i32>(arg_3.x, arg_3.x, arg_3.x), arg_2.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    return _wgslsmith_mult_vec4_i32(-min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 18402i, -61283i, 0i), vec4<i32>(-29703i, -14395i, 29983i, -19963i) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -3590i, 1i, 1i, ~24168i)), _wgslsmith_clamp_vec4_i32(abs(abs(vec4<i32>(-1i, -2147483647i, 0i, 3938i))), firstTrailingBit(~vec4<i32>(1i, -14240i, -56403i, -36004i)), vec4<i32>(-2147483647i, ~firstTrailingBit(9251i), max(min(28816i, 0i), abs(1i)), abs(3597i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global0 = array<vec4<bool>, 6>();
    return ~select(u_input.a.x, 39264u, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, false))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 122711u;
    let var_1 = _wgslsmith_dot_vec4_i32(~(~(min(vec4<i32>(-1i, arg_0.x, 1i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(92509i, arg_0.x, -2147483647i, 23013i)))), vec4<i32>(~_wgslsmith_mod_i32(-12289i, -2147483647i) | _wgslsmith_sub_i32(0i, arg_0.x), -1612i, reverseBits(-2147483647i), arg_0.x));
    let var_2 = Struct_1(all(!vec2<bool>(true, global1.x >= arg_1.x)));
    var_0 = func_4(func_3(Struct_1(true), Struct_1(var_2.a), var_2), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(sign(-913f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-182f, 1017f, -1010f), global1.zyz, vec3<bool>(false, true, var_2.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.wyy, vec3<f32>(arg_1.x, arg_1.x, -488f)))))));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = !vec2<bool>(!(!(!arg_0.a)), arg_0.a);
    let var_1 = max(arg_2.x, -43417i);
    let var_2 = u_input.a.zy;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1670f, global1.x)))), _wgslsmith_f_op_vec2_f32(arg_1.zy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.wy, arg_1.yx)))), func_2(_wgslsmith_sub_vec3_i32(min(vec3<i32>(arg_2.x, var_1, arg_2.x), vec3<i32>(32515i, -2147483647i, 0i)), -vec3<i32>(0i, var_1, var_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1291f)), _wgslsmith_f_op_vec2_f32(-global1.xx))).a)), _wgslsmith_f_op_vec2_f32(floor(arg_1.zx)));
    global0 = array<vec4<bool>, 6>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    global0 = array<vec4<bool>, 6>();
    let var_0 = ~(-_wgslsmith_add_vec3_i32(~vec3<i32>(1i, 0i, 1i), vec3<i32>(29705i, -36897i, 305i)) & vec3<i32>(0i | _wgslsmith_clamp_i32(2147483647i, -2147483647i, 0i), -2147483647i, 2147483647i));
    var var_1 = func_5(func_2(-func_1(Struct_1(true), Struct_1(false), Struct_1(true), vec2<i32>(var_0.x, var_0.x)) ^ vec3<i32>(-15738i, 42806i, var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1604f) * vec2<f32>(1141f, global1.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1038f, global1.x) + global1.zz)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1209f, 221f, global1.x) - vec3<f32>(global1.x, 1245f, global1.x)) - vec3<f32>(635f, -2213f, global1.x)) * _wgslsmith_f_op_vec3_f32(-global1.wyz)) + global1.xzz), var_0.xy);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.x, global1.x)))), 336f) * _wgslsmith_f_op_f32(-global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.zzy, _wgslsmith_f_op_vec3_f32(global1.zzz - _wgslsmith_f_op_vec3_f32(trunc(global1.www))), _wgslsmith_f_op_f32(-212f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f * 1532f))))));
}

