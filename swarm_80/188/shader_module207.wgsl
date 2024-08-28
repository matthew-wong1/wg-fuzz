struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<bool>(false, true, false, true), -1421f, vec2<i32>(-9697i, 23477i));

var<private> global1: array<u32, 12>;

var<private> global2: array<Struct_1, 2>;

var<private> global3: u32;

var<private> global4: f32 = 508f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<Struct_1, 2>();
    global3 = 9520u;
    global1 = array<u32, 12>();
    global4 = -165f;
    var var_0 = -34340i;
    return 1254f;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    global2 = array<Struct_1, 2>();
    var var_0 = Struct_1(arg_1.a ^ arg_1.a, !(!select(!global0.b, select(vec4<bool>(global0.b.x, global0.b.x, true, false), vec4<bool>(arg_0, true, arg_0, global0.b.x), global0.b), arg_1.b)), global0.c, _wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_div_vec2_i32(arg_1.d, vec2<i32>(-1i, arg_1.d.x))), ~(vec2<i32>(u_input.a, 39985i) & vec2<i32>(u_input.a, -1i)), vec2<i32>(-1i) * -vec2<i32>(global0.d.x, 0i)) | (vec2<i32>(1i, -13371i) | -_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(global0.d.x, arg_1.d.x), vec2<i32>(arg_1.d.x, u_input.a))));
    return -global0.d.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 2>();
    var var_0 = arg_1;
    var var_1 = 45737u;
    var_0 = Struct_1(abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, global1[_wgslsmith_index_u32(arg_1.a.x, 12u)], 83374u, global1[_wgslsmith_index_u32(30742u, 12u)]), vec4<u32>(4294967295u, 4294967295u, var_0.a.x, 0u)) << (_wgslsmith_clamp_vec4_u32(global0.a, var_0.a, arg_2.a) % vec4<u32>(32u))) ^ (arg_2.a >> (vec4<u32>(54191u, min(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.x, 12u)], 12u)]), arg_1.a.x, ~arg_1.a.x) % vec4<u32>(32u))), !global0.b, _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c + -1648f) - arg_0.x)))), ~_wgslsmith_add_vec2_i32(arg_2.d, arg_2.d) | vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, -1i, u_input.a, var_0.d.x), vec4<i32>(arg_2.d.x, 0i, 2147483647i, -7522i))), func_3(!global0.b.x, arg_2)));
    let var_2 = var_0.c;
    return Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, 0u) | firstLeadingBit(min(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(25175u, 12u)])), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4355u, var_0.a.x), _wgslsmith_mult_u32(arg_2.a.x, 54795u)), firstLeadingBit(arg_1.a.x | _wgslsmith_add_u32(0u, var_0.a.x)), ~var_0.a.x), var_0.b, 1520f, vec2<i32>(~1i, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, arg_1.d.x), arg_2.d), arg_1.d)));
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = -1i;
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-570f - -536f) - arg_0.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1780f, -2568f))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(1121f + _wgslsmith_f_op_f32(exp2(arg_0.c)))))), _wgslsmith_f_op_f32(-arg_0.c));
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1335f, var_1.x, arg_0.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_1)))))), global2[_wgslsmith_index_u32(~abs(countOneBits(~2400u)), 2u)], global2[_wgslsmith_index_u32((min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, global1[_wgslsmith_index_u32(29375u, 12u)]), vec2<u32>(0u, 68967u)), global1[_wgslsmith_index_u32(global0.a.x, 12u)]) & 3275u) << (_wgslsmith_mult_u32(51486u, select(0u, global1[_wgslsmith_index_u32(arg_0.a.x, 12u)], true) ^ ~4294967295u) % 32u), 2u)]);
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.x, 1i), ~_wgslsmith_add_vec2_i32(var_2.d, vec2<i32>(var_2.d.x, -arg_0.d.x)));
    global3 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + 2205f) * -742f), _wgslsmith_f_op_f32(max(global0.c, -834f)))), global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(~97901u, 2u)]).a.x;
    return !all(!vec4<bool>(!var_2.b.x, true, arg_0.b.x, false & arg_0.b.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    let var_0 = !global0.b;
    return min(~abs(~arg_2.a.x) << (~abs(30952u) % 32u), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(global0.a);
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-589f, _wgslsmith_f_op_f32(func_1(Struct_1(global0.a, vec4<bool>(false, false, global0.b.x, global0.b.x), global0.c, global0.d)))))), !vec3<bool>(false, func_4(func_2(vec3<f32>(-521f, 851f, global0.c), Struct_1(vec4<u32>(0u, 14432u, global1[_wgslsmith_index_u32(64158u, 12u)], global1[_wgslsmith_index_u32(global0.a.x, 12u)]), global0.b, -1061f, vec2<i32>(u_input.a, u_input.a)), global2[_wgslsmith_index_u32(global0.a.x, 2u)])), all(vec4<bool>(global0.b.x, false, global0.b.x, false))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.c, 1142f, -1636f))), vec3<f32>(global0.c, global0.c, global0.c), global0.b.x))), func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-382f, 764f, global0.c), vec3<f32>(global0.c, global0.c, -1705f))))), Struct_1(min(vec4<u32>(0u, global0.a.x, 4294967295u, 60400u), global0.a), select(global0.b, global0.b, vec4<bool>(false, global0.b.x, global0.b.x, true)), 1753f, -global0.d), global2[_wgslsmith_index_u32(43059u, 2u)]), global2[_wgslsmith_index_u32(~global0.a.x, 2u)]));
    var var_2 = global0.d.x;
    var var_3 = _wgslsmith_sub_i32(u_input.b, u_input.b);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c, -1000f, 312f))))) - vec3<f32>(1000f, -509f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c, global0.c), _wgslsmith_f_op_f32(global0.c - global0.c))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, -405f, global0.c))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1441f), -151f, -1217f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, -1000f, 318f), vec3<f32>(628f, global0.c, global0.c), vec3<bool>(global0.b.x, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1338f, 591f, global0.c) + vec3<f32>(global0.c, global0.c, 1278f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global0.a.x, 13965u, firstTrailingBit(1u), 11176u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.c, _wgslsmith_f_op_f32(max(446f, 334f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_4.x)) - global0.c), 708f))), var_4.x, firstLeadingBit(vec3<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(90684u), ~global1[_wgslsmith_index_u32(4294967295u, 12u)]), 44407u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-623f)) + 385f)))));
}

