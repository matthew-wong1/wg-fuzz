struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(1i, u_input.a));
    global1 = array<Struct_1, 29>();
    return Struct_1(arg_0.a);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, ((0u ^ u_input.b.x) ^ abs(1u)) & u_input.b.x), 11u)]);
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_2 = func_1(global1[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -218f))), 49275u, func_1(func_1(var_0, 488f, ~u_input.b.x, Struct_1(true)), -1116f, ~u_input.b.x, func_1(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], -1515f, u_input.b.x, Struct_1(true))));
    global0 = array<bool, 11>();
    let var_3 = true;
    return var_2;
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    global0 = array<bool, 11>();
    var var_0 = !select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)] || true, true, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), !select(vec3<bool>(true, false, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), true), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(25081u, 33718u) << (~u_input.b.x % 32u), 11u)]);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(211f, _wgslsmith_f_op_f32(1000f * -1462f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(424f, 761f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1174f + _wgslsmith_f_op_f32(f32(-1f) * -1759f))))));
    let var_2 = func_2(arg_0.x, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 44277i, -40436i, -2147483647i), vec4<i32>(u_input.d.x, -20324i, arg_0.x, u_input.a))));
    let var_3 = -59902i > -(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 28208i, 2147483647i) & vec4<i32>(arg_0.x, u_input.a, u_input.c, arg_0.x), -vec4<i32>(-60000i, 52417i, 1i, -13353i)));
    return _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.x, u_input.d.x, _wgslsmith_mod_i32(-41775i, u_input.d.x | -1i))), vec3<i32>(arg_0.x, ~(-32310i), i32(-1i) * -2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-990f - -315f), _wgslsmith_f_op_f32(-728f + 650f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1543f, 399f)), vec2<f32>(1f, 1f), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_1.a))))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 29u)];
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    return var_0.x;
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = reverseBits(reverseBits(_wgslsmith_div_i32(-(~(-2147483647i)), u_input.c)));
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(u_input.b.x, u_input.b.x), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(10426u, 27000u), ~1u >> (~u_input.b.x % 32u), 4294967295u)), 11u)], true & all(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 11u)], false)));
    global0 = array<bool, 11>();
    var var_2 = -49761i;
    var var_3 = _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 30374u, u_input.b.x)), 4294967295u & u_input.b.x, arg_0) & u_input.b.x, ~u_input.b.x, ~1u));
    return func_2(-1i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 359f;
    global0 = array<bool, 11>();
    global1 = array<Struct_1, 29>();
    var var_1 = func_5(true, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1021f, -1000f, var_0, _wgslsmith_f_op_f32(func_4(func_1(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 11u)]), var_0, 4294967295u, Struct_1(true)), func_2(u_input.c, -1i), func_3(u_input.d)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1190f)), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], func_2(u_input.a, u_input.c), reverseBits(vec3<i32>(u_input.a, -2147483647i, 23032i)))))))), reverseBits(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.c, u_input.a, u_input.a)), max(vec4<i32>(1i, u_input.c, u_input.a, -75258i), vec4<i32>(u_input.a, -1820i, 52672i, u_input.c)))) << (vec4<u32>(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(15183u, 0u), 1u), 0u, u_input.b.x) % vec4<u32>(32u)));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    global1 = array<Struct_1, 29>();
    var var_2 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-266f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1029f, -503f)))) - -649f));
    let x = u_input.a;
    s_output = StorageBuffer(1512f, max(_wgslsmith_mult_i32(-1i, ~1i), ~(-1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(530f * var_0)), -1484f, var_0)), -1555f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-833f, var_0, 1441f) - vec3<f32>(var_0, var_0, var_0)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, -1454f, -797f), vec3<f32>(1383f, -901f, -1744f)))))));
}

