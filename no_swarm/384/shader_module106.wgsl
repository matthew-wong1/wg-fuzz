struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 18> = array<f32, 18>(1744f, -582f, -1545f, -683f, 506f, 1341f, -3024f, 320f, 210f, 1076f, -233f, -408f, -604f, -111f, -1571f, -468f, -1761f, 1000f);

var<private> global2: vec4<i32> = vec4<i32>(-4716i, 35256i, i32(-2147483648), 2147483647i);

var<private> global3: array<f32, 2> = array<f32, 2>(-928f, 1689f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~(1u ^ global0.a.x)), 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(292f, global3[_wgslsmith_index_u32(arg_0, 2u)]) * vec2<f32>(global3[_wgslsmith_index_u32(1u, 2u)], 463f))))))));
    var var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(3385u, 18u)], global1[_wgslsmith_index_u32(u_input.a, 18u)]))), -1000f), 1f), var_0.b);
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), -920f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1603f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(-1732f + var_0.b.x)))));
    var var_2 = arg_1;
    let var_3 = Struct_3(-107f, _wgslsmith_f_op_vec2_f32(-var_0.b));
    return var_3;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(6951u ^ (global0.a.x | arg_1), _wgslsmith_div_u32(arg_1, ~global0.a.x)), 2u)] - _wgslsmith_f_op_f32(-arg_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.x, 18u)] * -1590f)))));
    let var_1 = arg_3;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(1268f * _wgslsmith_f_op_f32(-func_2(~arg_1, any(vec2<bool>(true, true))).a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(select(u_input.d.x, global0.a.x, false), 2u)], -1618f), -1141f)));
    global2 = vec4<i32>(-arg_2.a.x, min(~0i, global0.d), abs(~reverseBits(1i)), -arg_0 & _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global2.x, -9834i, arg_0) << (global0.a % vec4<u32>(32u)), max(vec4<i32>(arg_2.a.x, global2.x, global0.d, arg_0), vec4<i32>(0i, arg_2.a.x, -41934i, global0.b))), reverseBits(firstLeadingBit(1323i))));
    let var_3 = reverseBits(~(-abs(arg_0)));
    return Struct_1(firstTrailingBit(global0.a | global0.a), 0i, u_input.c << (u_input.c % vec3<u32>(32u)), _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(min(2147483647i, arg_2.a.x), -var_3)), -arg_0));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_3(1i, 1u, Struct_2(vec2<i32>(~1i, 29330i)), func_2(global0.c.x, !((i32(-1i) * -47948i) >= firstTrailingBit(arg_0.a.x))));
    let var_1 = 1u;
    let var_2 = arg_0;
    var var_3 = global2.x;
    var var_4 = func_3(2147483647i, _wgslsmith_add_u32(countOneBits(~1u), ~(~_wgslsmith_sub_u32(u_input.b, global0.c.x))), arg_0, Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.a.x | 1u, 18u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1143f), 332f))));
    return func_2(var_4.a.x, any(vec3<bool>(true, false, all(vec3<bool>(false, false, true)))) | any(select(vec2<bool>(true, false), vec2<bool>(true, false), var_2.a.x <= var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-global0.d, 1i), _wgslsmith_sub_vec2_i32(-vec2<i32>(-24957i, global0.d), abs(vec2<i32>(global0.b, global2.x))))));
    global0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(32490u, 0u) | _wgslsmith_sub_u32(0u, global0.c.x), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(47821u, u_input.b, global0.a.x, u_input.d.x), global0.a)), select(global0.a.x, global0.a.x, u_input.d.x >= countOneBits(global0.a.x)), _wgslsmith_sub_u32(~global0.c.x, ~reverseBits(1u))), global2.x, func_3(1i, _wgslsmith_sub_u32(~(~13703u), ~global0.a.x), Struct_2(global2.zx), Struct_3(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(30170u, 18u)] - 318f), any(vec2<bool>(false, false)))), var_0.b)).c, ~global0.d);
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d | -1i, -2147483647i), abs(countOneBits(vec2<i32>(global2.x, global2.x)))) ^ _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(6738i, -61392i), global2.xz), vec2<i32>(global2.x, -38104i), -vec2<i32>(-2147483647i, 22501i)), global2.xw));
    var var_2 = Struct_1(global0.a << (global0.a % vec4<u32>(32u)), _wgslsmith_sub_i32(4338i, global0.b), u_input.c, abs(-1i));
    var var_3 = 139f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-30727i));
}

