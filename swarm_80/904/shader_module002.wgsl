struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(57865u, 0u)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(55494u, 23477u)), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 92906u)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(80906u, 4294967295u)), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 4294967295u)));

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 7252u, 4294967295u);

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(12999i, -1i, -70353i), vec3<i32>(2147483647i, -31516i, -17279i), vec3<i32>(3235i, 2147483647i, -21259i), vec3<i32>(2147483647i, 6535i, -1i), vec3<i32>(36036i, 1i, 29133i), vec3<i32>(-3130i, -19752i, 0i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 0i, -22037i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(-34631i, 2147483647i, -54811i), vec3<i32>(0i, 14387i, 1i));

var<private> global4: vec3<f32> = vec3<f32>(2001f, -106f, -601f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    let var_1 = var_0;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, -1000f))))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.a.x << (0u % 32u), u_input.a.x), vec3<i32>(1i, u_input.a.x, ~firstTrailingBit(-3388i)));
    let var_3 = -_wgslsmith_div_i32(-2147483647i, -1i);
    return arg_0.x;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_i32(firstLeadingBit(1i), firstTrailingBit(_wgslsmith_mult_i32(-5404i, -u_input.a.x))) | ~_wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -1181i), -65676i);
    var var_1 = _wgslsmith_div_vec3_u32(global1.zxx, ~(~_wgslsmith_div_vec3_u32(vec3<u32>(50526u, 82941u, 4294967295u), ~global1.zwy)));
    var var_2 = Struct_1(!vec4<bool>(false, func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), false, global0[_wgslsmith_index_u32(~15350u, 5u)]), any(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, true))), vec2<u32>(0u, _wgslsmith_div_u32(min(54346u, global1.x), ~4294967295u)));
    var_2 = global0[_wgslsmith_index_u32(~14434u, 5u)];
    var var_3 = global3[_wgslsmith_index_u32(~4156u, 11u)];
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global3 = array<vec3<i32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1845f)))), _wgslsmith_f_op_f32(-arg_3))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - global4.x)), any(select(arg_2.a.zyy, arg_2.a.wzx, vec3<bool>(arg_2.a.x, false, arg_2.a.x))) || all(arg_2.a.yzw))));
    let var_1 = true;
    var var_2 = arg_2.a.x;
    global0 = array<Struct_1, 5>();
    return Struct_1(select(arg_2.a, !(!select(arg_2.a, vec4<bool>(true, arg_2.a.x, var_1, arg_2.a.x), var_1)), select(arg_2.a, vec4<bool>(false, !arg_2.a.x, var_1, any(arg_2.a.xxy)), all(arg_2.a.zxz))), vec2<u32>(~(~(~80127u)), _wgslsmith_clamp_u32(arg_1.x, min(arg_1.x, ~62482u), 0u)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(abs(~vec4<u32>(56376u, global1.x, global1.x, 4294967295u)) & vec4<u32>(global1.x, abs(0u), ~67980u << (0u % 32u), ~func_2()), global1.ywx, Struct_1(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false), vec4<bool>(false, true, true, true), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false))), _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 4294967295u << (global1.x % 32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1.x, 90940u), global1.zw))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(-global4.x))) * -883f));
    let var_1 = vec4<u32>(global1.x, func_4(~(~(~vec4<u32>(var_0.b.x, 4294967295u, 52361u, var_0.b.x))), ~global1.yxx, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(var_0.b.x | global1.x), min(17952u, 57300u)), 5u)], -1002f).b.x, var_0.b.x & _wgslsmith_add_u32(_wgslsmith_add_u32(~0u, _wgslsmith_mod_u32(global1.x, var_0.b.x)), countOneBits(func_2())), ~var_0.b.x);
    var var_2 = func_4(max(~vec4<u32>(~15104u, _wgslsmith_div_u32(var_0.b.x, 0u), _wgslsmith_dot_vec3_u32(global1.yxz, vec3<u32>(1u, 1u, 64451u)), firstTrailingBit(0u)), var_1), var_1.www, global0[_wgslsmith_index_u32(var_1.x, 5u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f), global4.x), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))))));
    let var_3 = -1460f;
    var var_4 = abs(u_input.a.x);
    return func_4(var_1, vec3<u32>(var_2.b.x, ~var_0.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1, vec4<u32>(15885u, 3505u, 1u, 1u), vec4<u32>(var_1.x, var_2.b.x, 25899u, var_1.x)) << ((var_1 ^ var_1) % vec4<u32>(32u)), var_1)), Struct_1(!(!select(var_0.a, vec4<bool>(false, true, true, var_2.a.x), true)), var_2.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * 855f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-305f, _wgslsmith_div_f32(_wgslsmith_div_f32(global4.x, global4.x), -540f))), global4.x), global4.x);
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, 251f) * vec3<f32>(-211f, global4.x, 723f)))) * vec3<f32>(_wgslsmith_f_op_f32(global4.x + global4.x), global4.x, global4.x)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(global4.x, global4.x, true)), _wgslsmith_f_op_f32(-1000f * global4.x), global4.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, 1724f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1241f, 1000f, 238f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 878f, global4.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, -188f, global4.x), vec3<f32>(1097f, -410f, -511f), var_0.a.x))))));
    let var_2 = global4.x;
    let var_3 = 1u;
    let var_4 = abs(vec2<u32>(~68282u, ~var_0.b.x));
    let var_5 = ~(~u_input.a.x);
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global4.x, global4.x, 1400f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, -407f) + vec3<f32>(358f, global4.x, 869f)), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1572f, global4.x, global4.x), vec3<f32>(-432f, global4.x, -893f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(425f, 561f)));
}

