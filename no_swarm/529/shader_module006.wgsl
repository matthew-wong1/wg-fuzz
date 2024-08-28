struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<f32, 27>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<f32>) -> vec4<u32> {
    global0 = array<i32, 18>();
    let var_0 = ~(-u_input.b);
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2) + _wgslsmith_f_op_vec2_f32(-arg_2)), select(firstTrailingBit(-1i), (-global0[_wgslsmith_index_u32(arg_1, 18u)] >> (firstLeadingBit(0u) % 32u)) ^ u_input.b, true), 26952i);
    let var_2 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b & 1i, var_1.c << (66985u % 32u)), vec2<i32>(~firstLeadingBit(global0[_wgslsmith_index_u32(22687u, 18u)]), max(_wgslsmith_mod_i32(17924i, global0[_wgslsmith_index_u32(arg_1, 18u)]), -u_input.b)));
    let var_3 = ~_wgslsmith_add_vec2_u32(vec2<u32>(~(~arg_1), ~(arg_1 ^ 4294967295u)), countOneBits(select(select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, arg_1), arg_0.x), vec2<u32>(u_input.a, arg_1) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), true)));
    return countOneBits(countOneBits(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_3, vec2<u32>(arg_1, 0u)), 21675u, ~4294967295u, 0u)));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_add_vec4_u32(~((func_3(vec4<bool>(true, false, false, true), 28165u, vec2<f32>(-2809f, global1[_wgslsmith_index_u32(39115u, 27u)])) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))) << (vec4<u32>(u_input.a, u_input.a >> (6952u % 32u), u_input.a, 1u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 3172u) ^ (vec4<u32>(0u, 4294967295u, 4294967295u, 46245u) | vec4<u32>(60344u, u_input.a, u_input.a, 83018u))), ~max(~vec4<u32>(4294967295u, 1u, 46859u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 19779u, 46707u, u_input.a), vec4<u32>(u_input.a, 0u, 40053u, 21317u)))));
    var var_1 = Struct_3(!vec3<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(false, true)) & select(true, false, false), u_input.b == firstTrailingBit(20016i)));
    var var_2 = var_1.a;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(~reverseBits(75308u)), u_input.a), 4294967295u), 18u)];
    let var_4 = Struct_1(-_wgslsmith_sub_i32(~u_input.b, -u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-766f))), _wgslsmith_f_op_f32(sign(235f)))), -abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(4211i, u_input.b, 5651i, u_input.b), vec4<i32>(-13536i, global0[_wgslsmith_index_u32(u_input.a, 18u)], 0i, 1i)), ~0i, global0[_wgslsmith_index_u32(~0u, 18u)])), 2147483647i);
    return select(-(~vec3<i32>(-u_input.b, i32(-1i) * -1i, max(u_input.b, 2147483647i))), vec3<i32>(u_input.b, 0i, u_input.b << (~22030u % 32u)), !select(vec3<bool>(!var_2.x, all(vec3<bool>(true, false, var_2.x)), !var_2.x), vec3<bool>(!var_2.x, any(vec4<bool>(var_2.x, var_2.x, var_1.a.x, var_2.x)), !var_2.x), !(!vec3<bool>(var_1.a.x, true, false))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<i32> {
    global0 = array<i32, 18>();
    var var_0 = true;
    global0 = array<i32, 18>();
    var var_1 = ~1i;
    global1 = array<f32, 27>();
    return _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, ~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.a, 18u)] ^ u_input.b, ~global0[_wgslsmith_index_u32(2708u, 18u)]), reverseBits(_wgslsmith_add_i32(0i, 20109i))), _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(func_2(), countOneBits(vec3<i32>(-5200i, -20935i, -25377i)))), reverseBits(vec3<i32>(~6647i, _wgslsmith_add_i32(u_input.b, 2147483647i), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~44242u, 27u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(50453u, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(680f)) - global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 27u)]))), -min(vec4<i32>(global0[_wgslsmith_index_u32(7760u, 18u)], 32559i ^ global0[_wgslsmith_index_u32(38218u, 18u)], -1885i, ~u_input.b), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-46741i, global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.b, u_input.b), vec4<i32>(-36937i, global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], 81198i), vec4<bool>(true, false, false, true)), -vec4<i32>(0i, -11632i, u_input.b, 30894i))));
    global1 = array<f32, 27>();
    var var_1 = -672f;
    let var_2 = -func_1(vec4<bool>(true, true, true, true)) ^ var_0.b.zzx;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(684f, var_0.a.x, false)), var_0.a.x))), var_0.a.x) + global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 37769u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) | (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), ~vec3<u32>(27338u, 9739u, 4294967295u)) >> (1u % 32u)), 27u)]);
    var var_4 = select(vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), false, !(_wgslsmith_f_op_f32(-1000f + var_0.a.x) > var_0.a.x)), vec3<bool>((true | any(vec3<bool>(false, false, true))) || all(vec4<bool>(true, true, true, true)), all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false)), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)))), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, false), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 1058f, var_3))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, -279f, -391f))))), false || (countOneBits(103974u) == min(u_input.a, u_input.a)))), ~vec2<u32>(~1u, _wgslsmith_div_u32(max(u_input.a, 4294967295u), u_input.a)), global1[_wgslsmith_index_u32(u_input.a, 27u)], _wgslsmith_add_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) & ~vec3<u32>(u_input.a, 20512u, 2552u)), _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 19069u, u_input.a), vec3<u32>(4294967295u, 1u, 33387u)), ~(~vec3<u32>(u_input.a, 1u, u_input.a)))));
}

