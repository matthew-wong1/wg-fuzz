struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> bool {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    global1 = global0[_wgslsmith_index_u32(32992u, 18u)];
    return !all(!(!vec4<bool>(arg_2.x, false, false, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(abs(-31833i), 2147483647i, _wgslsmith_sub_i32(0i, -11223i), -1i), firstLeadingBit(vec4<i32>(5101i, 2147483647i, 8977i, 2147483647i)))));
    let var_1 = 1i;
    let var_2 = 1i;
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    return !(!(!select(vec4<bool>(arg_0.x, global1.a.x, false, false), !vec4<bool>(false, arg_0.x, true, false), false)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = u_input.b.zy;
    let var_1 = vec4<bool>(global1.a.x, !all(vec3<bool>(select(global1.a.x, global1.a.x, false), global1.a.x | arg_0.a.x, any(vec4<bool>(false, arg_0.a.x, global1.a.x, arg_0.a.x)))), global1.a.x | !select(true, any(vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)), !global1.a.x), false);
    let var_2 = func_4(select(!vec3<bool>(false, true, any(var_1)), var_1.yxw, var_0.x >= ~firstLeadingBit(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)))), Struct_1(vec3<bool>(false, ~var_0.x >= max(1u, u_input.b.x), func_3(vec4<u32>(10653u, 4294967295u, 0u, 1u), 18848i, vec4<bool>(global1.a.x, true, true, true), 21230i) | arg_0.a.x)));
    var var_3 = Struct_1(var_1.yww);
    global0 = array<Struct_1, 18>();
    return 855f;
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(abs(~4294967295u), 18u)];
    global0 = array<Struct_1, 18>();
    var_0 = global0[_wgslsmith_index_u32(u_input.a, 18u)];
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 45509u), countOneBits(u_input.b)), _wgslsmith_div_vec3_u32(abs(u_input.b), vec3<u32>(1u, 1540u, _wgslsmith_div_u32(u_input.a, 0u)))), 18u)];
    let var_2 = Struct_1(!vec3<bool>(var_1.a.x, u_input.a == ~19821u, var_1.a.x));
    return Struct_1(func_4(select(global1.a, global1.a, any(!var_0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))), Struct_1(global1.a)).yyy);
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_sub_vec3_u32(~(~(~u_input.b)), vec3<u32>(~27635u, 4294967295u, ~80785u));
    var var_1 = 2147483647i;
    global1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1726f - 703f) + 962f)) + _wgslsmith_f_op_f32(max(-915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a, 18u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(940f, 1007f, _wgslsmith_div_f32(-272f, -1253f), _wgslsmith_f_op_f32(select(288f, -1101f, true)))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-129f, 183f, -954f, -521f), vec4<f32>(-194f, -880f, -196f, 752f))))))));
    let var_2 = u_input.b;
    let var_3 = select(min(~firstTrailingBit(vec2<u32>(52122u, 55790u)), ~vec2<u32>(var_2.x >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_2.x, u_input.a), vec3<u32>(4349u, var_2.x, 88741u)))), vec2<u32>(~(~var_2.x), 4294967295u), !global1.a.x);
    return _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 0i, -45323i), global1.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), vec3<i32>(~1i, i32(-1i) * -52372i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f + -1860f)), _wgslsmith_div_f32(-904f, -1315f), 974f, 2117f)))));
    let var_1 = min(-(~0i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-17089i, -8398i, 18246i), vec3<i32>(-29012i, 46574i, -1i)), ~vec3<i32>(-1i, -22871i, 1i), vec3<i32>(1i, 0i, 1i)), ~select(vec3<i32>(-4617i, 28482i, -1i), vec3<i32>(2147483647i, -24433i, -2147483647i), global1.a.x)), firstTrailingBit(min(func_1(), i32(-1i) * -2147483647i)));
    global0 = array<Struct_1, 18>();
    global1 = Struct_1(!global1.a);
    var var_2 = (reverseBits(~(vec4<u32>(81022u, u_input.a, 0u, 21447u) & vec4<u32>(u_input.a, u_input.a, 20458u, 42911u))) >> ((_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x)), ~vec4<u32>(4294967295u, 42898u, 4294967295u, 0u)) >> (firstTrailingBit(firstTrailingBit(vec4<u32>(70923u, u_input.a, 41056u, 79073u))) % vec4<u32>(32u))) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x) & select(vec4<u32>(u_input.b.x, 0u, u_input.a, 4294967295u), vec4<u32>(0u, u_input.a, 5079u, 4294967295u), global1.a.x)), vec4<u32>(~(~9381u), ~_wgslsmith_mult_u32(u_input.b.x, 5768u), u_input.a, 0u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_u32(max(_wgslsmith_add_vec2_u32(var_2.wy, vec2<u32>(72026u, 37386u)), ~vec2<u32>(var_2.x, 18510u)), select(vec2<u32>(1072u, 40218u), u_input.b.yy, global1.a.x) >> (var_2.yz % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), 1000f, var_0.x, _wgslsmith_f_op_f32(step(1989f, var_0.x))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1016f, var_0.x), vec2<f32>(-115f, var_0.x)) - _wgslsmith_f_op_vec2_f32(step(var_0.zy, vec2<f32>(275f, -1597f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 479f), var_0.wy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-675f, -553f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.x))) * var_0.yw))));
}

