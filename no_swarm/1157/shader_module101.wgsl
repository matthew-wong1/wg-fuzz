struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(4294967295u, -42411i, 48267u, vec2<bool>(true, true), -1332f), Struct_1(0u, 2147483647i, 25265u, vec2<bool>(true, false), 1194f), Struct_1(0u, 12129i, 41818u, vec2<bool>(false, true), 940f), Struct_1(38179u, 27869i, 1u, vec2<bool>(true, false), -2749f), Struct_1(0u, 69860i, 4294967295u, vec2<bool>(false, true), 154f), Struct_1(24966u, -6185i, 1u, vec2<bool>(false, true), -1961f), Struct_1(4294967295u, 2147483647i, 0u, vec2<bool>(false, true), 469f), Struct_1(16009u, -1i, 14967u, vec2<bool>(false, false), -1712f), Struct_1(27038u, -11174i, 0u, vec2<bool>(false, true), -1000f), Struct_1(43879u, -20290i, 4294967295u, vec2<bool>(false, true), 981f), Struct_1(4294967295u, i32(-2147483648), 4294967295u, vec2<bool>(true, true), 151f), Struct_1(1u, 1i, 106053u, vec2<bool>(true, false), -1180f), Struct_1(65652u, i32(-2147483648), 4294967295u, vec2<bool>(false, true), 973f), Struct_1(1u, -44903i, 0u, vec2<bool>(true, false), -1000f));

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -883f) > _wgslsmith_f_op_f32(484f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f) * -1000f))));
    global1 = array<Struct_1, 14>();
    return ~1635u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>) -> bool {
    let var_0 = Struct_1(func_3(u_input.d.ywz, ~4294967295u, ~(~(vec4<i32>(arg_1.x, global2.x, -68902i, arg_1.x) | arg_1)), -reverseBits(~2147483647i)), global2.x, _wgslsmith_div_u32(4294967295u >> (reverseBits(u_input.d.x) % 32u), u_input.d.x << (~(~1u) % 32u)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), select(false, false, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = any(select(vec4<bool>(!all(vec3<bool>(var_0.d.x, true, false)), any(vec3<bool>(true, var_0.d.x, true)), -arg_1.x > (2147483647i | global2.x), var_0.d.x), !vec4<bool>(var_0.d.x, var_0.d.x, true, true), !select(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), select(vec4<bool>(false, var_0.d.x, true, var_0.d.x), vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), true), var_0.d.x)));
    let var_2 = var_0;
    var var_3 = true;
    var var_4 = var_0;
    return true;
}

fn func_1() -> StorageBuffer {
    var var_0 = vec3<bool>(false, true, true);
    var var_1 = vec3<bool>(false, false, func_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-407f * 1958f))), _wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-448f - -755f)), _wgslsmith_f_op_f32(188f + _wgslsmith_f_op_f32(-1921f - 1035f))), _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(183i, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 22670i), vec4<i32>(u_input.c, u_input.b.x, -10093i, 2147483647i))), -abs(vec4<i32>(-1i, 19899i, 1i, u_input.b.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1568f, _wgslsmith_f_op_f32(trunc(-1244f)), _wgslsmith_f_op_f32(f32(-1f) * -373f), _wgslsmith_f_op_f32(floor(-275f))) - vec4<f32>(-292f, _wgslsmith_f_op_f32(-1825f * 256f), _wgslsmith_div_f32(-475f, -735f), _wgslsmith_f_op_f32(154f - -1000f)))));
    let var_3 = Struct_1(u_input.d.x, max(_wgslsmith_add_i32(u_input.b.x, global2.x), i32(-1i) * -(~global0[_wgslsmith_index_u32(28389u, 27u)])), u_input.d.x, vec2<bool>(true, !all(vec3<bool>(var_0.x, var_1.x, var_0.x))), var_2.x);
    var var_4 = var_3;
    return StorageBuffer(vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(0u, 52028u, 1u, u_input.d.x)), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(u_input.d.xx, u_input.d.xy)), ~(~4294967295u)) & vec3<u32>(u_input.d.x, _wgslsmith_clamp_u32(~var_3.a, 29965u, var_4.c), firstTrailingBit(var_4.c)), vec2<i32>(countOneBits(min(2147483647i, countOneBits(u_input.c))), var_4.b ^ 28509i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec3<i32>(u_input.b.x, ~global2.x, global2.x) << (u_input.d.ywy % vec3<u32>(32u));
    var var_0 = Struct_1(u_input.d.x, -1i, 1u, !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), false)), _wgslsmith_div_f32(180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(190f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -601f), 811f))));
    global0 = array<i32, 27>();
    let var_1 = Struct_1(u_input.d.x, u_input.b.x, var_0.c, select(var_0.d, !vec2<bool>(true, 39026u == var_0.a), var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))));
    global0 = array<i32, 27>();
    let var_2 = vec4<i32>(global0[_wgslsmith_index_u32(7867u, 27u)], 78525i, 0i, ~(~var_1.b));
    let var_3 = ~vec3<i32>(var_2.x, var_2.x, u_input.c);
    let x = u_input.a;
    s_output = func_1();
}

