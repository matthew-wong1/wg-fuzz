struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-663f, 173f, -2943f), vec3<f32>(954f, 1000f, -1538f), vec3<f32>(-1591f, -375f, -1038f), vec3<f32>(950f, -193f, 658f), vec3<f32>(-1077f, -183f, -176f), vec3<f32>(-857f, 2067f, 463f), vec3<f32>(124f, 1194f, -1087f), vec3<f32>(-534f, -817f, -433f), vec3<f32>(-1656f, 803f, 477f), vec3<f32>(-451f, 751f, 441f), vec3<f32>(1165f, 446f, 2121f), vec3<f32>(482f, 429f, 267f), vec3<f32>(1000f, 971f, -1328f), vec3<f32>(-1469f, 420f, 566f), vec3<f32>(-146f, 236f, -450f), vec3<f32>(226f, -800f, -577f), vec3<f32>(149f, -1000f, -110f), vec3<f32>(-635f, 219f, 1843f), vec3<f32>(-386f, -614f, -1189f), vec3<f32>(1491f, -1277f, -1612f), vec3<f32>(1659f, -807f, 597f), vec3<f32>(-1796f, 271f, -1045f), vec3<f32>(1175f, 108f, -835f), vec3<f32>(1005f, -674f, 506f), vec3<f32>(172f, 1029f, -1437f), vec3<f32>(1071f, 672f, 2184f), vec3<f32>(1000f, -859f, 1000f), vec3<f32>(389f, -1000f, 1235f), vec3<f32>(587f, -163f, -249f));

var<private> global1: Struct_1 = Struct_1(-424f, 34388u, vec3<i32>(-37859i, -51963i, 42937i), vec2<i32>(-15236i, 0i));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: array<vec4<f32>, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global2 = !select(vec4<bool>(any(!global2.yyz), true, !all(vec2<bool>(global2.x, true)), global2.x), vec4<bool>(global2.x && global2.x, select(any(vec4<bool>(true, global2.x, global2.x, global2.x)), true, global2.x), true, all(vec4<bool>(global2.x, global2.x, global2.x, false)) || true), select(global2.x, global2.x, true || (0u >= arg_0.b)));
    global1 = arg_1;
    let var_0 = -2147483647i;
    global1 = arg_1;
    var var_1 = vec3<i32>(arg_0.c.x, -_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.c.x, _wgslsmith_sub_i32(1631i, arg_1.d.x)), global1.d.x, global1.d.x), ~(var_0 >> (select(_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.zy), arg_1.b, any(vec2<bool>(global2.x, global2.x))) % 32u)));
    return u_input.b.xz;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a, global1.a), _wgslsmith_f_op_f32(f32(-1f) * -331f), global2.x)) + global1.a) * -545f), global1.b, _wgslsmith_add_vec3_i32(~(-vec3<i32>(-1i, 55726i, global1.c.x)), _wgslsmith_mod_vec3_i32(firstLeadingBit(~global1.c), ~vec3<i32>(0i, 41909i, global1.d.x))), global1.c.yx << (func_3(Struct_1(_wgslsmith_div_f32(global1.a, -1045f), 24883u, vec3<i32>(global1.d.x, 2147483647i, global1.c.x), global1.d), Struct_1(-1334f, ~24658u, vec3<i32>(-41273i, global1.c.x, global1.c.x), vec2<i32>(global1.d.x, -27790i))) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, global1.a))), global1.a, global2.x)));
    let var_1 = _wgslsmith_f_op_f32(-global1.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-539f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 116f))))))));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 59429i, countOneBits(0i)), vec3<i32>(2147483647i, global1.c.x, _wgslsmith_mult_i32(global1.c.x, reverseBits(global1.d.x))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))), reverseBits(~reverseBits(abs(u_input.b.x))), ~(~vec3<i32>(var_2.x, var_2.x, 46285i) ^ firstLeadingBit(-global1.c)), global1.c.xz);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = ~(-25094i);
    global1 = func_2();
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(111691u, global1.b), u_input.a.yy), vec2<u32>(max(global1.b, var_1.b), 19044u)), u_input.a.ww & (u_input.a.ww | u_input.b.zw));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.xz;
    let var_1 = func_1(!global2.x, ~(~global1.b), vec3<i32>(38589i, -32251i, countOneBits(2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(global1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) - global1.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-570f, 1000f) + 314f))));
}

