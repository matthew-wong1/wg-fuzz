struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), 0u, vec4<bool>(false, false, true, false));

var<private> global1: array<bool, 11>;

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_3(Struct_1(arg_0, ~0u, vec4<bool>(any(select(arg_0, vec2<bool>(true, global0.a.x), global0.c.x)), true && all(vec3<bool>(false, false, false)), all(vec4<bool>(global0.a.x, arg_0.x, global1[_wgslsmith_index_u32(1u, 11u)], global0.c.x)), any(!global0.c.zwz))), vec4<bool>(true, global0.a.x, any(!vec4<bool>(false, false, false, arg_0.x)), true));
    global0 = Struct_1(var_0.b.xz, global0.b, !select(!var_0.a.c, !var_0.b, global0.c));
    var var_1 = Struct_4(~(~select(~vec4<u32>(var_0.a.b, 5002u, 39735u, global0.b), u_input.a, true)));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_div_i32(abs(1i), ~(-2147483647i)), -1i, 8148i), vec4<i32>(countOneBits(_wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i, 17702i), _wgslsmith_add_i32(1i, 34537i))), abs(countOneBits(-227i)), -firstTrailingBit(-34487i) ^ ~(-28780i), -countOneBits(2147483647i)));
    let var_3 = -16919i | _wgslsmith_mult_i32(14811i, var_2.x);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_4) -> vec3<f32> {
    global1 = array<bool, 11>();
    var var_0 = _wgslsmith_dot_vec2_i32(~select(vec2<i32>(1i, 1i), -(~vec2<i32>(-36097i, -2878i)), func_3(arg_1.yz, vec4<f32>(arg_0.a, 1166f, arg_0.b, arg_0.b))), reverseBits(~vec2<i32>(1i, _wgslsmith_mult_i32(-26906i, 41438i))));
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-13392i, 0i), select(0i, -1i, global0.c.x), ~7151i) & _wgslsmith_mod_vec3_i32(max(vec3<i32>(0i, 13442i, -2147483647i), vec3<i32>(-20943i, -199i, -25019i)), vec3<i32>(46715i, -46000i, -2147483647i)), vec3<i32>(~firstLeadingBit(2147483647i), firstLeadingBit(_wgslsmith_add_i32(-11718i, -2793i)), -40348i)), firstLeadingBit(~vec3<i32>(~0i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-71268i, -2147483647i), vec2<i32>(0i, -2147483647i)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 687f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1325f, -1295f) - vec2<f32>(1220f, global2.a)))))));
    var var_3 = true;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(649f - 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b + global2.a), 175f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.a - global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-987f, var_2.x)))));
}

fn func_1() -> Struct_1 {
    global2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1243f) + -842f), global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -458f)))));
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(-137f, 1548f), global0.c, Struct_4(vec4<u32>(22310u, u_input.c, u_input.a.x, 16096u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1037f, global2.a, global2.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1580f, global2.b, 180f), vec3<f32>(-340f, -1189f, -1189f), global0.a.x))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1309f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * _wgslsmith_f_op_f32(max(var_1.x, global2.a))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global2.b)), -1000f, !all(global0.c.zyy))), -1904f, 1203f);
    return Struct_1(vec2<bool>(true, true), ~reverseBits(0u >> (~global0.b % 32u)), vec4<bool>(true, global0.b > 1u, true, all(vec4<bool>(false | global1[_wgslsmith_index_u32(u_input.a.x, 11u)], select(false, global0.c.x, true), true && global1[_wgslsmith_index_u32(1u, 11u)], any(global0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = var_0;
    global1 = array<bool, 11>();
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(-36879i, -13024i << (_wgslsmith_div_u32(u_input.a.x ^ var_0.b, u_input.a.x & u_input.a.x) % 32u), -36140i), min(_wgslsmith_mult_vec3_i32(abs(abs(vec3<i32>(-56060i, -2856i, 0i))), _wgslsmith_clamp_vec3_i32(min(vec3<i32>(2147483647i, 7161i, -2147483647i), vec3<i32>(-45021i, 1i, 29966i)), abs(vec3<i32>(-2147483647i, 19150i, 0i)), -vec3<i32>(44247i, 0i, -2833i))), ~(vec3<i32>(-1i) * -vec3<i32>(0i, -31891i, 2147483647i))));
    var var_2 = _wgslsmith_mult_i32(max(var_1.x, _wgslsmith_mod_i32(0i, var_1.x)), 26878i);
    let x = u_input.a;
    s_output = StorageBuffer(-(1i << ((95963u & _wgslsmith_mod_u32(var_0.b, global0.b)) % 32u)), vec4<i32>(~var_1.x, var_1.x, -(~var_1.x), 1i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~(~vec3<i32>(-54633i, -1i, var_1.x)), var_1), ~var_1), ~max(~(var_0.b | var_0.b), global0.b), ~min(vec4<i32>(-69038i, var_1.x | var_1.x, var_1.x, 1i ^ var_1.x), vec4<i32>(_wgslsmith_add_i32(1i, var_1.x), var_1.x, select(-23516i, var_1.x, true), 10169i)));
}

