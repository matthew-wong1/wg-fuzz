struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_mod_u32(1u, arg_1);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -538f)))))) - -2499f);
    let var_3 = !vec3<bool>(any(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, false, false)), any(vec3<bool>(true, true, true)), !(arg_1 > arg_1));
    var_0 = Struct_1(global1.a);
    return Struct_1(global1.a);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    let var_0 = arg_1;
    var var_1 = var_0.a;
    var var_2 = select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, all(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), all(vec4<bool>(false, true, true, true))), vec2<bool>(true, all(vec4<bool>(true, true, false, false))), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), true), false)), !select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(arg_0.x == arg_0.x, true), vec2<bool>(true, true)));
    let var_3 = arg_2.x;
    let var_4 = Struct_1(arg_1.a ^ ~(~global0.a));
    return (var_4.a.x & 1i) << (91614u % 32u);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global1 = Struct_1(firstTrailingBit(arg_0.yx));
    var var_0 = -min(-(abs(arg_0.x) & 68443i), ~(-1i));
    var_0 = max(countOneBits(global0.a.x), func_3(vec2<u32>(1u, 1u), Struct_1(vec2<i32>(arg_0.x, 0i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(733f, 983f), vec2<f32>(224f, -893f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-103f, 582f))))))));
    var var_1 = Struct_1(global1.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -807f), 514f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, _wgslsmith_f_op_f32(f32(-1f) * -1511f), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_f_op_f32(sign(-102f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1730f, 592f, -574f, 324f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1574f, 1443f, -333f, -575f) * vec4<f32>(1190f, 226f, 649f, 1209f))))));
    return 8157u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_1(_wgslsmith_mod_vec2_i32(max(~global1.a, abs(vec2<i32>(0i, global1.a.x))), u_input.b.yx)), ~reverseBits(0u));
    var var_0 = false;
    var_0 = !(false & all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)));
    let var_1 = reverseBits(-_wgslsmith_sub_vec2_i32(~(vec2<i32>(global0.a.x, global1.a.x) | vec2<i32>(15545i, u_input.a.x)), vec2<i32>(max(global1.a.x, global1.a.x), global1.a.x)));
    var_0 = false;
    let var_2 = vec3<bool>(true, true, -1023f >= _wgslsmith_f_op_f32(step(-668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1487f - 643f) + _wgslsmith_f_op_f32(311f + -1514f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-602f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1088f, _wgslsmith_div_f32(-1017f, _wgslsmith_div_f32(2203f, -919f)), var_2.x)));
    let var_4 = true;
    global1 = func_1(func_1(func_1(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, global1.a.x), vec2<i32>(16378i, global1.a.x))), ~func_2(u_input.b.ywz)), 1u), reverseBits(1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-346f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-751f - -831f))), _wgslsmith_f_op_f32(1641f + -1672f)), -19996i);
}

