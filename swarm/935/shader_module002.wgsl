struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5946u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_3) -> bool {
    global0 = abs(max(~(~17488u), reverseBits(arg_0.a.x) << ((_wgslsmith_sub_u32(arg_0.a.x, 65283u) | _wgslsmith_dot_vec4_u32(vec4<u32>(111564u, u_input.b, u_input.b, 0u), vec4<u32>(arg_0.a.x, u_input.a, arg_0.a.x, arg_0.a.x))) % 32u)));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f + arg_0.b.x) * arg_0.b.x), arg_0.b.x);
    global0 = arg_0.a.x;
    global0 = 0u;
    var var_1 = vec3<i32>(17179i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(-26343i, 11856i, 1i)), ~vec3<i32>(-2147483647i, _wgslsmith_mult_i32(-38349i, -49517i), _wgslsmith_clamp_i32(1i, -1i, -2147483647i))));
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    var var_0 = false;
    return _wgslsmith_div_i32((_wgslsmith_sub_i32(firstTrailingBit(arg_1.a), arg_1.a) ^ 1i) & _wgslsmith_sub_i32(-1i, -2147483647i), _wgslsmith_clamp_i32(2147483647i, -52468i, ~arg_1.b));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = 0u;
    var var_0 = Struct_2(arg_2, Struct_1(-7225i, func_3(Struct_3(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-701f, 386f)), !vec2<bool>(false, arg_1)), Struct_1(arg_2.b & arg_2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, arg_2.a), vec2<i32>(arg_2.a, arg_2.b))))));
    var var_1 = arg_1;
    let var_2 = max(min(abs(vec3<i32>(arg_2.a, arg_2.a, -1i) << (vec3<u32>(0u, u_input.a, u_input.d.x) % vec3<u32>(32u))), firstLeadingBit(select(vec3<i32>(18038i, var_0.a.b, -25385i), vec3<i32>(arg_2.a, var_0.b.a, 5444i), vec3<bool>(true, false, true)))) | abs(_wgslsmith_mod_vec3_i32(vec3<i32>(3005i, -22482i, var_0.a.b), vec3<i32>(-1269i, -5772i, var_0.b.b) >> (vec3<u32>(1u, u_input.d.x, 67583u) % vec3<u32>(32u)))), min(vec3<i32>(var_0.a.b, firstTrailingBit(-1i), 1i), _wgslsmith_clamp_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a, 0i, 0i), vec3<i32>(var_0.a.b, arg_2.a, var_0.a.a), vec3<i32>(25131i, arg_2.a, arg_2.b)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b, arg_2.a, 4035i), firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, arg_2.a))), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-2147483647i, 0i, 2147483647i)), -vec3<i32>(-4989i, 2147483647i, arg_2.b)))));
    global0 = _wgslsmith_mult_u32(~(~u_input.a), 0u);
    return Struct_1(42592i, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51274i;
    var var_1 = func_2(1f, all(select(vec2<bool>(func_1(Struct_3(vec3<u32>(u_input.c, 0u, 1u), vec2<f32>(106f, -675f), vec2<bool>(false, true))), true), vec2<bool>(true, true), false)), Struct_1(-1i, -(i32(-1i) * -39980i)));
    var_1 = Struct_1(-countOneBits(-_wgslsmith_div_i32(var_1.a, var_1.b)), -45464i);
    let var_2 = vec2<bool>(any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false))), !func_1(Struct_3(~vec3<u32>(4294967295u, 12209u, u_input.a), _wgslsmith_div_vec2_f32(vec2<f32>(-1293f, -216f), vec2<f32>(1535f, -1000f)), vec2<bool>(false, false))));
    let var_3 = Struct_3(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 2389u, u_input.c), vec3<u32>(u_input.a, 0u, 2387u)), ~(~vec3<u32>(u_input.d.x, 1u, 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(302f, -946f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(2601f, 1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1538f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-732f, -1937f))))), !select(!(!var_2), var_2, var_2));
    var var_4 = ~select(abs(firstLeadingBit(-vec4<i32>(26057i, 2147483647i, var_1.b, var_1.a))), vec4<i32>(-1i, var_1.a, reverseBits(1i), var_1.a), select(!(!vec4<bool>(true, var_3.c.x, false, false)), vec4<bool>(var_3.b.x >= -620f, true, !var_3.c.x, all(vec4<bool>(var_2.x, var_3.c.x, var_2.x, var_2.x))), any(vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, var_2.x))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -309f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_3.b.x))))))));
    var_0 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~vec4<u32>(62432u, var_3.a.x >> (56796u % 32u), _wgslsmith_div_u32(14212u, u_input.c), firstTrailingBit(var_3.a.x))), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_1.b, var_4.x & -2147483647i), -vec2<i32>(var_4.x, 1i), !select(vec2<bool>(true, false), var_2, var_2)), min(firstTrailingBit(countOneBits(var_4.ww)), -vec2<i32>(-28113i, var_1.b)), -vec2<i32>(_wgslsmith_div_i32(var_4.x, -23192i), _wgslsmith_div_i32(-13474i, 53337i))), 2452u, ~(_wgslsmith_add_vec2_u32(~vec2<u32>(var_3.a.x, 1u), ~u_input.d) & min(firstTrailingBit(u_input.d), vec2<u32>(1u, var_3.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, var_3.b.x, var_3.b.x, -1621f)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, -808f, -143f), vec4<f32>(var_3.b.x, var_3.b.x, var_3.b.x, -214f)), _wgslsmith_div_vec4_f32(vec4<f32>(901f, -1511f, 700f, var_3.b.x), vec4<f32>(var_3.b.x, 1527f, var_3.b.x, 343f)), vec4<bool>(false, var_3.c.x, var_3.c.x, true)))))));
}

