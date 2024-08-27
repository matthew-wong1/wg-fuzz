struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: f32) -> u32 {
    var var_0 = reverseBits(vec2<u32>(arg_1.x, 17818u));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-919f, _wgslsmith_f_op_f32(abs(-899f))))), arg_3, any(select(arg_0.zxx, vec3<bool>(true, true, true), !(arg_3 != arg_3)))));
    var var_2 = ~(~vec4<u32>((arg_1.x >> (var_0.x % 32u)) << (~2270u % 32u), arg_1.x, ~(arg_1.x ^ arg_1.x), arg_1.x));
    var_2 = vec4<u32>(75082u, arg_1.x, 10958u, ~var_2.x);
    global1 = arg_0.x;
    return _wgslsmith_mod_u32(110888u, var_2.x) | arg_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global1 = true;
    global1 = !global0.x;
    let var_0 = arg_0;
    var var_1 = !(!(true | global0.x));
    var var_2 = Struct_1(var_0.a);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global0 = !arg_2.zy;
    var var_0 = -_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a ^ u_input.b, _wgslsmith_mult_i32(u_input.a, 0i)), vec2<i32>(1i | _wgslsmith_add_i32(411i, u_input.a), -2147483647i));
    var var_1 = func_2(Struct_1(arg_1.a), 0i);
    var var_2 = reverseBits(vec3<i32>(1i, u_input.c, ~1i));
    var var_3 = -191f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, global0.x, global0.x, max(firstTrailingBit(115767u) | ~16270u, _wgslsmith_div_u32(func_1(vec4<bool>(false, false, true, false), vec2<u32>(84532u, 97334u), vec2<bool>(global0.x, false), -537f), 12918u)) > 1u);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(422f * 114f)), -2359f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(3169f - 1028f), _wgslsmith_f_op_f32(f32(-1f) * -1765f))))));
    global1 = global0.x;
    global1 = all(var_0);
    var var_2 = func_3(func_2(var_1, _wgslsmith_mult_i32(~1i, abs(u_input.a) << (~0u % 32u))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_1.a))), -u_input.b), var_0);
    var var_3 = -945f;
    var var_4 = countOneBits(countOneBits(vec4<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(87480u, 64516u, 1u, 83440u), vec4<u32>(825u, 41785u, 51275u, 1u)), ~3442u, global0.x), min(_wgslsmith_sub_u32(33710u, 1u), abs(34306u)), 4294967295u, 4294967295u)));
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(max(var_2.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-825f, -1000f)))))));
    let var_6 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_5.a.x)) * -877f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1075f, 1000f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_5.a.x - 215f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, select(-1i, 0i, true) >> (var_4.x % 32u), u_input.b), _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, u_input.b, u_input.b) & vec3<i32>(u_input.c, -55755i, u_input.c), abs(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -34608i, u_input.c), vec3<i32>(-3135i, 0i, u_input.c))))), 0u, var_2.a.x);
}

