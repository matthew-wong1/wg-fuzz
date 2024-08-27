struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<u32>(34738u, 44975u), vec4<u32>(13124u, 63142u, 4294967295u, 49865u), vec2<i32>(-588i, -1i), 538f), Struct_1(vec2<u32>(22394u, 10866u), vec4<u32>(0u, 1u, 1u, 1u), vec2<i32>(1i, i32(-2147483648)), -123f));

var<private> global1: bool = false;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<Struct_1, 2>();
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = Struct_1(~var_0.c.b.xw, var_0.c.b, countOneBits(countOneBits(~var_0.a.yw)) ^ -arg_2.c.c, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1060f)))))));
    var_0 = arg_2;
    return select(vec4<bool>(arg_1.x, false, all(vec2<bool>(true & arg_1.x, !arg_1.x)), arg_1.x), vec4<bool>(any(!vec4<bool>(arg_1.x, true, false, arg_1.x)), true, false, false), select(select(!(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, true, arg_1.x, arg_1.x), arg_1.x), arg_1.x), !(!vec4<bool>(false, arg_1.x, arg_1.x, false)), arg_1.x));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !vec3<bool>(false, any(func_3(max(arg_0.b.xy, arg_0.a), vec3<bool>(true, true, true), Struct_2(vec4<i32>(2147483647i, arg_0.c.x, 1i, 0i), vec3<i32>(arg_0.c.x, 30988i, arg_0.c.x), arg_0, 1u))), ((-2147483647i ^ arg_0.c.x) >= ~arg_0.c.x) != (_wgslsmith_f_op_f32(max(404f, arg_0.d)) >= global2.x));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1676f, -1680f, -1546f)))) + vec4<f32>(_wgslsmith_div_f32(398f, arg_1.d), 556f, 1844f, _wgslsmith_f_op_f32(exp2(global2.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - -234f) * _wgslsmith_f_op_f32(-global2.x))), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(956f))), -416f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-201f)), func_2(Struct_1(vec2<u32>(47405u, u_input.a), arg_1.b, arg_1.c, -138f)).d))))), _wgslsmith_f_op_f32(-834f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(811f, var_0.x))))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-334f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.x, global2.x))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1365f, arg_1.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_div_f32(-1118f, var_1.x)), 2219f, var_0.x));
    global0 = array<Struct_1, 2>();
    return vec3<i32>(i32(-1i) * -(~_wgslsmith_add_i32(-1i, arg_3.x)), i32(-1i) * -15818i, select(arg_3.x, ~(-arg_1.c.x), arg_0 != true));
}

fn func_1() -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -614f))))));
    let var_0 = Struct_2(countOneBits(vec4<i32>(-49788i, -2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-41006i, -29227i, -2147483647i), reverseBits(-10447i)), -2147483647i)), -func_4(true, func_2(global0[_wgslsmith_index_u32(15300u, 2u)]), 4294967295u, ~abs(vec2<i32>(0i, -17674i))), global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_mult_u32(u_input.a, u_input.a));
    let var_1 = ~_wgslsmith_mult_u32(reverseBits(abs(var_0.d) >> (var_0.c.a.x % 32u)), ~(0u ^ ~var_0.d));
    var var_2 = func_2(global0[_wgslsmith_index_u32(u_input.a, 2u)]).d;
    global2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, global2.x, 686f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0.c.d, 1435f, global2.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, 245f, -725f, -269f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2506f, global2.x, 599f, 697f) + vec4<f32>(133f, -580f, var_0.c.d, -1146f))))))));
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

