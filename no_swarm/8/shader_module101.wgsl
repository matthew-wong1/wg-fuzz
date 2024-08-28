struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: f32 = 303f;

var<private> global2: array<f32, 2>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_f32(-1000f - global2[_wgslsmith_index_u32(13065u, 2u)]);
    global2 = array<f32, 2>();
    global0 = array<vec4<u32>, 32>();
    var var_0 = vec4<bool>(global2[_wgslsmith_index_u32(~(~12577u) << (u_input.b.x % 32u), 2u)] < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(u_input.a, 2u)]), true)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(1u, u_input.a)), ~0u), 2u)])), all(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, false))), u_input.a < firstLeadingBit(u_input.a))), !(_wgslsmith_dot_vec3_i32(vec3<i32>(-79939i, -28299i, -33164i), -vec3<i32>(-1i, 1i, 16884i)) != _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, i32(-1i) * -6544i, _wgslsmith_mod_i32(36383i, 2665i))), (u_input.b.x & select(33964u, u_input.b.x, select(false, true, true))) < u_input.a);
    var var_1 = Struct_1(abs(-11968i), all(var_0.ywy));
    return ~u_input.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = 0u;
    return func_3();
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = ((_wgslsmith_mod_u32(reverseBits(23490u), u_input.a) | u_input.a) >= func_2(u_input.b.yy, vec2<u32>(~0u, _wgslsmith_clamp_u32(u_input.a, u_input.b.x, u_input.b.x)), Struct_1(arg_2.a, true), firstLeadingBit(-11267i) >> (u_input.a % 32u))) && arg_1;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)] * global2[_wgslsmith_index_u32(1u, 2u)]))));
    let var_1 = Struct_2(Struct_1(arg_2.a, true), select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_2.b, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1)), arg_2.b), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20919u, u_input.b.x, 15521u), vec4<u32>(1u, 53217u, 0u, u_input.b.x)) <= ~34388u, abs(u_input.a) >= 1u), !select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), false), vec2<bool>(true, arg_2.b), arg_2.b)));
    var var_2 = Struct_2(var_1.a, !(!var_1.b));
    var var_3 = Struct_2(Struct_1(46339i, all(!vec4<bool>(true, var_2.a.b, var_2.a.b, true))), !var_2.b);
    return true | var_3.b.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, false);
    var var_1 = func_1(vec2<f32>(global2[_wgslsmith_index_u32(0u, 2u)], 809f), func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1289f, 703f))))), true, arg_1), arg_1);
    global1 = -1000f;
    global0 = array<vec4<u32>, 32>();
    let var_2 = min(_wgslsmith_sub_vec3_i32(~vec3<i32>(~var_0.a, 1i, arg_1.a), abs(abs(vec3<i32>(arg_1.a, var_0.a, 24847i) | vec3<i32>(-1i, var_0.a, 2147483647i)))), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_1.a, -67550i), vec3<i32>(1i, arg_1.a, var_0.a)), -vec3<i32>(var_0.a, arg_1.a, -2147483647i)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = var_0;
    global0 = array<vec4<u32>, 32>();
    let var_2 = ~abs(0i);
    var var_3 = func_4(all(vec4<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(22804i, var_2)) < _wgslsmith_clamp_i32(var_2, 0i, -1i), select(func_1(vec2<f32>(global2[_wgslsmith_index_u32(66144u, 2u)], -706f), true, Struct_1(0i, var_1)), var_1, !var_1))), Struct_1(i32(-1i) * -(~(-47665i)), any(vec3<bool>(true, true, true)) & !all(vec4<bool>(false, var_1, var_0, true))));
    let var_4 = select(select(!vec2<bool>(true, var_3.a > 47857i), !vec2<bool>(true, all(vec4<bool>(false, false, var_1, false))), !select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), var_3.b), select(vec2<bool>(var_3.b, false), vec2<bool>(true, var_1), true), all(vec2<bool>(false, var_3.b)))), !vec2<bool>(var_3.b, var_3.b), !var_3.b);
    var var_5 = max(-20357i, ~(~(_wgslsmith_div_i32(var_2, var_2) | firstLeadingBit(var_2))));
    var var_6 = var_2 | firstTrailingBit(~(_wgslsmith_mult_i32(var_2, -29977i) | (var_2 << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, 1u, u_input.a, 54531u) & _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), 0u, 0u, min(1u, u_input.a)), _wgslsmith_clamp_vec4_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(u_input.a, 32u)], vec4<u32>(u_input.a, 1u, 56053u, 462u)), countOneBits(global0[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_div_f32(-471f, global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(37261u)), 2u)]), 79644i);
}

