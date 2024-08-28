struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: array<f32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-min(_wgslsmith_clamp_i32(0i, arg_3.x, 1i), u_input.d.x), (firstTrailingBit(arg_3.x) << (~0u % 32u)) | -2787i, min(1i, -arg_3.x), arg_3.x), u_input.a, vec4<i32>(-1i) * -select(u_input.d, vec4<i32>(u_input.a.x, 1026i, arg_3.x, arg_3.x), select(vec4<bool>(arg_2, true, true, arg_2), vec4<bool>(false, arg_2, true, arg_2), vec4<bool>(true, false, arg_2, true))));
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(max(arg_1 ^ arg_0.a, abs(arg_0.a)) ^ max(_wgslsmith_div_u32(arg_1, 4294967295u), 0u)), 19u)] != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(arg_0.a, 19u)])))));
    global2 = array<f32, 19>();
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(arg_1, 19u)], global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~30971u, select(~arg_0.a, _wgslsmith_mult_u32(4294967295u, arg_0.a), false)), arg_0.a), 19u)], _wgslsmith_mod_u32(42587u, arg_1), any(vec4<bool>(!any(vec3<bool>(true, true, arg_2)), global2[_wgslsmith_index_u32(~arg_1, 19u)] != _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 19u)]), arg_2, arg_2)));
    global0 = firstTrailingBit(_wgslsmith_mult_i32(-(~(-var_0.x)), var_0.x));
    return u_input.c.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec4<bool> {
    var var_0 = -_wgslsmith_div_vec4_i32(min(u_input.d, vec4<i32>(func_3(Struct_1(0u), u_input.b, true, u_input.d), u_input.c.x, ~(-9759i), arg_1)), firstLeadingBit(-max(u_input.d, u_input.d)));
    let var_1 = arg_0.x;
    var var_2 = Struct_1(reverseBits(select(1u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 1u, 0u, 35765u), vec4<u32>(var_1, 4294967295u, u_input.b, var_1))), any(vec2<bool>(true, false)) | true)));
    var_2 = Struct_1(min(~(~u_input.e.x << ((var_2.a >> (4294967295u % 32u)) % 32u)), arg_0.x));
    let var_3 = -2147483647i;
    return select(!vec4<bool>(true, !(global2[_wgslsmith_index_u32(4294967295u, 19u)] >= global2[_wgslsmith_index_u32(var_1, 19u)]), true, any(vec4<bool>(false, true, false, true)) | true), select(vec4<bool>(~var_2.a != 4294967295u, _wgslsmith_div_u32(var_1, u_input.e.x) >= 0u, true, false), !vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(var_2.a, 4294967295u), 19u)] - _wgslsmith_f_op_f32(f32(-1f) * -465f)) <= global2[_wgslsmith_index_u32(1u << (countOneBits(arg_0.x) % 32u), 19u)]), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false)), true));
}

fn func_1() -> Struct_3 {
    global0 = -33210i;
    global0 = -_wgslsmith_div_i32(firstTrailingBit(u_input.a.x | _wgslsmith_mult_i32(u_input.c.x, 29007i)), u_input.a.x);
    var var_0 = vec2<bool>(any(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), all(vec4<bool>(true, any(func_2(vec2<u32>(4294967295u, u_input.b), 75173i)), false, true == (u_input.d.x <= u_input.a.x))));
    var var_1 = Struct_3(-223f, -245f, countOneBits(u_input.b), !(~u_input.e.x < 1u));
    var var_2 = Struct_1((select(0u, 35405u, var_1.a < global2[_wgslsmith_index_u32(75410u, 19u)]) | _wgslsmith_sub_u32(u_input.b, 615u)) >> (~_wgslsmith_clamp_u32(~var_1.c, ~var_1.c, ~var_1.c) % 32u));
    return Struct_3(global2[_wgslsmith_index_u32(var_1.c, 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.b + 1000f)))) + -1115f), 24060u << (u_input.e.x % 32u), all(!vec4<bool>(var_0.x, var_0.x, all(vec2<bool>(var_0.x, false)), all(vec2<bool>(false, var_0.x)))));
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    global0 = u_input.a.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2574f, -185f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, -1946f) - vec2<f32>(arg_0.a, global2[_wgslsmith_index_u32(83224u, 19u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0.a)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(17057u, 19u)], arg_0.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global2[_wgslsmith_index_u32(u_input.e.x, 19u)])))))));
    let var_1 = _wgslsmith_sub_i32(u_input.a.x, u_input.c.x);
    global1 = var_1;
    let var_2 = ~(~firstTrailingBit(1u));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 19u)])))), -258f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(290f, arg_0.b) - _wgslsmith_div_f32(arg_0.b, -683f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.c, 19u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1393f, -1000f, arg_0.a, var_0.x) + vec4<f32>(192f, var_0.x, global2[_wgslsmith_index_u32(49373u, 19u)], -396f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1181f, arg_0.b, -800f, arg_0.b), vec4<f32>(713f, arg_0.a, var_0.x, -584f)))))))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zy, ~((u_input.d.zz >> (u_input.e % vec2<u32>(32u))) | ~u_input.d.xw)), u_input.a.x, u_input.a.x, ~(-(44667i ^ -u_input.c.x)));
    global0 = ~(-2147483647i);
    global2 = array<f32, 19>();
    global2 = array<f32, 19>();
    var var_1 = arg_0;
    return Struct_1(10759u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b);
    var var_1 = u_input.a;
    var var_2 = func_5(Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), u_input.e)), _wgslsmith_f_op_vec4_f32(func_4(func_1())), Struct_1(firstLeadingBit(40047u))));
    let var_3 = var_1.x;
    var_2 = func_5(Struct_2(func_5(Struct_2(var_0, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 19u)], -2203f, 2241f, global2[_wgslsmith_index_u32(var_2.a, 19u)]))), Struct_1(52711u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-404f, global2[_wgslsmith_index_u32(var_0.a, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<f32>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(64650u, 19u)], global2[_wgslsmith_index_u32(u_input.b, 19u)]))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(381f, global2[_wgslsmith_index_u32(var_2.a, 19u)], -133f, global2[_wgslsmith_index_u32(5212u, 19u)]), vec4<f32>(2479f, 1907f, 437f, global2[_wgslsmith_index_u32(var_0.a, 19u)]))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(211f, global2[_wgslsmith_index_u32(14261u, 19u)], 2285f, global2[_wgslsmith_index_u32(0u, 19u)]))))), Struct_1(var_2.a >> (4294967295u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-357f, global2[_wgslsmith_index_u32(var_0.a, 19u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(var_0.a, 19u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 19u)], -619f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1774f, -551f)), vec2<f32>(796f, global2[_wgslsmith_index_u32(var_0.a, 19u)]))))), var_2.a);
}

