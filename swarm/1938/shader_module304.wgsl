struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<u32>, 1>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<i32>(2147483647i, -54631i), -1374f), Struct_1(vec2<i32>(-16511i, i32(-2147483648)), 1693f), Struct_1(vec2<i32>(17792i, -27939i), -1282f), Struct_1(vec2<i32>(42219i, 54527i), -1115f), Struct_1(vec2<i32>(-1i, 0i), 287f), Struct_1(vec2<i32>(1i, 2054i), 422f), Struct_1(vec2<i32>(1i, 0i), -168f), Struct_1(vec2<i32>(2360i, -1i), 1000f), Struct_1(vec2<i32>(24097i, 96980i), 1236f), Struct_1(vec2<i32>(15618i, 13169i), -235f), Struct_1(vec2<i32>(1i, 42306i), 570f), Struct_1(vec2<i32>(-42191i, -2527i), -1840f), Struct_1(vec2<i32>(29068i, 1i), 552f), Struct_1(vec2<i32>(-32178i, i32(-2147483648)), 2249f), Struct_1(vec2<i32>(0i, -16558i), 828f), Struct_1(vec2<i32>(0i, 5084i), 617f));

var<private> global3: bool = true;

var<private> global4: array<i32, 3> = array<i32, 3>(-23924i, 40882i, 25369i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = -33690i;
    let var_1 = _wgslsmith_f_op_f32(-2290f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f - _wgslsmith_f_op_f32(round(-994f)))));
    let var_2 = true;
    let var_3 = (abs(-vec4<i32>(2147483647i, -2147483647i, var_0, 0i)) & vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.a ^ global4[_wgslsmith_index_u32(0u, 3u)]), 26008i, -23306i, min(var_0, ~u_input.a))) ^ firstTrailingBit(min(countOneBits(vec4<i32>(var_0, -2147483647i, u_input.a, var_0)), ~(vec4<i32>(var_0, var_0, -2147483647i, u_input.a) | vec4<i32>(var_0, -1i, global4[_wgslsmith_index_u32(60699u, 3u)], -2971i))));
    global2 = array<Struct_1, 16>();
    return Struct_2(-191f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(436f, var_1) * vec2<f32>(var_1, var_1)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(707f, var_1) - 325f), var_1)), global2[_wgslsmith_index_u32(~(~abs(~20556u)), 16u)]);
}

fn func_3() -> f32 {
    global4 = array<i32, 3>();
    global0 = !vec2<bool>(global0.x, all(!vec4<bool>(true, global0.x, false, global0.x)));
    global1 = array<vec4<u32>, 1>();
    global4 = array<i32, 3>();
    return -1000f;
}

fn func_2() -> bool {
    let var_0 = vec3<f32>(-564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))) * -363f), 744f);
    let var_1 = vec2<bool>(global0.x, true);
    global3 = -188i > u_input.a;
    global1 = array<vec4<u32>, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-var_0);
    return !all(select(select(vec4<bool>(global0.x, global0.x, var_1.x, global0.x), select(vec4<bool>(false, false, global0.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, false, var_1.x, true)), true), vec4<bool>(true, !global0.x, true, any(vec2<bool>(true, true))), vec4<bool>(all(var_1), false, false, false)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(max(0u, 0u << (~max(_wgslsmith_dot_vec3_u32(vec3<u32>(28365u, 13109u, 30309u), vec3<u32>(99181u, 598u, 48954u)), ~1u) % 32u)), 1u)];
    var var_1 = select(vec3<bool>(all(!vec2<bool>(true, arg_1)), true, !(!select(false, global0.x, arg_1))), select(!(!vec3<bool>(false, true, arg_1)), select(!vec3<bool>(arg_1, false, arg_1), vec3<bool>(any(vec4<bool>(arg_1, arg_1, true, arg_1)), false, any(vec2<bool>(arg_1, false))), vec3<bool>(!global0.x, any(vec3<bool>(global0.x, global0.x, arg_1)), arg_1 | true)), arg_1), true);
    var var_2 = _wgslsmith_f_op_f32(-549f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2, 1086f)))))));
    global3 = var_1.x;
    global2 = array<Struct_1, 16>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(_wgslsmith_clamp_u32(min(4294967295u, 4294967295u), 1u, 0u) <= func_4(func_1(vec3<bool>(global0.x, global0.x, false)), func_2(), _wgslsmith_f_op_f32(344f - -658f)), !(true | select(false, global0.x, true)));
    global4 = array<i32, 3>();
    var var_0 = _wgslsmith_add_vec2_i32(~(~(~(~vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_sub_vec2_i32(~_wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a, -1i), vec2<i32>(2147483647i, u_input.a)), -vec2<i32>(-1i, -22654i)), vec2<i32>(-34419i, u_input.a)));
    var_0 = reverseBits((vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -9239i), vec2<i32>(-2147483647i, -1i))) ^ _wgslsmith_clamp_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(19966i, -9897i), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 3u)], -28203i)), abs(vec2<i32>(2147483647i, -5304i))), select(vec2<i32>(var_0.x, 16740i), vec2<i32>(-47692i, global4[_wgslsmith_index_u32(79783u, 3u)]) >> (vec2<u32>(4294967295u, 50254u) % vec2<u32>(32u)), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, false))), -(~vec2<i32>(global4[_wgslsmith_index_u32(1u, 3u)], -42670i))));
    let var_1 = vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u), 3u)], u_input.a, -11861i, func_1(!vec3<bool>(true, true, select(global0.x, false, false))).c.a.x);
    global3 = var_1.x > (min(-u_input.a, select(var_0.x, _wgslsmith_sub_i32(19081i, var_1.x), true)) | u_input.a);
    global4 = array<i32, 3>();
    var var_2 = Struct_1(~var_1.xy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(3727u, 1u, 0u, 4294967295u) << (global1[_wgslsmith_index_u32(4294967295u, 1u)] % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_2.b * var_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), var_2.b, _wgslsmith_f_op_f32(exp2(var_2.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2330f, var_2.b, -438f), vec3<f32>(-1156f, -3029f, var_2.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(696f, var_2.b, 429f))))));
}

