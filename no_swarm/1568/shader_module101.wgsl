struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<f32, 8>();
    var var_0 = Struct_2(Struct_1(~(~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], -1649f, global0[_wgslsmith_index_u32(51826u, 8u)], 417f), vec4<f32>(953f, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], arg_0), false)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.a, 8u)], -879f, -656f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-404f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6040u, u_input.a, 3642u), vec3<u32>(1u, 9052u, 1u)), 8u)], -371f, global0[_wgslsmith_index_u32(~u_input.a, 8u)]) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(172175u, 8u)], arg_0, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(10033u, 8u)])))))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)));
    var var_1 = select(!select(!vec4<bool>(var_0.d.x, true, true, true), vec4<bool>(false, !var_0.d.x, true, false | var_0.d.x), select(!var_0.d, select(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), var_0.d, var_0.d), select(vec4<bool>(false, var_0.d.x, var_0.d.x, true), vec4<bool>(var_0.d.x, false, true, true), var_0.d))), select(select(var_0.d, select(select(var_0.d, vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), var_0.d), var_0.d, select(var_0.d, var_0.d, var_0.d.x)), true), !(!select(var_0.d, vec4<bool>(var_0.d.x, true, var_0.d.x, true), var_0.d.x)), vec4<bool>(false, var_0.d.x, var_0.d.x, !var_0.d.x)), select(var_0.d, select(var_0.d, select(var_0.d, select(vec4<bool>(false, true, var_0.d.x, false), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false), var_0.d.x), !var_0.d.x), !vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)] <= arg_0, true, -1i <= var_0.b.x, true), var_0.d, !(var_0.d.x && false))));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, ~abs(~1u)), countOneBits(~var_0.a.a.zz) << (var_0.a.a.wy % vec2<u32>(32u)));
    let var_3 = !var_1.x;
    return _wgslsmith_sub_i32(~_wgslsmith_mult_i32(reverseBits(u_input.b.x), var_0.b.x), 1i);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-u_input.b.x, func_3(global0[_wgslsmith_index_u32(37280u, 8u)]), u_input.b.x | u_input.c, u_input.b.x | -2147483647i), abs(vec4<i32>(u_input.b.x, 1i, u_input.d.x, -29579i))), u_input.d), u_input.d);
    var var_1 = Struct_1(~vec4<u32>(~1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 6808u), _wgslsmith_clamp_u32(firstTrailingBit(u_input.a), u_input.a ^ 1u, 14720u << (u_input.a % 32u)), countOneBits(~u_input.a)));
    var_1 = Struct_1(~((countOneBits(var_1.a) | ~var_1.a) | vec4<u32>(4294967295u, _wgslsmith_mod_u32(1u, u_input.a), ~u_input.a, u_input.a)));
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(var_1.a);
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, u_input.a, u_input.a), var_1.a), 1u)), u_input.a | select(~var_1.a.x, 53363u, any(vec3<bool>(false, false, false))), ((var_1.a.x | 4294967295u) ^ 4294967295u) & _wgslsmith_mult_u32(u_input.a << (var_1.a.x % 32u), var_1.a.x), _wgslsmith_dot_vec4_u32(var_1.a, _wgslsmith_sub_vec4_u32(abs(var_1.a), var_1.a))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = func_2();
    global0 = array<f32, 8>();
    let var_1 = -2147483647i & max(0i, abs(abs(abs(u_input.e.x))));
    var var_2 = _wgslsmith_mult_vec2_u32(min(var_0.a.wz, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(25454u, 83326u), var_0.a.zz))), vec2<u32>(u_input.a, 10602u));
    let var_3 = _wgslsmith_clamp_vec4_i32(~u_input.d, min(u_input.d, select(-u_input.d, vec4<i32>(-2147483647i, var_1, 4989i, 0i), true) & -u_input.d), -reverseBits(vec4<i32>(var_1, u_input.c, u_input.c, 15995i) & vec4<i32>(2147483647i, u_input.e.x, -2147483647i, 2147483647i)));
    return 0u;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = min(~arg_3.x, 29323u);
    let var_1 = !(!vec4<bool>(true, arg_1, any(vec3<bool>(false, arg_1, false)), true));
    let var_2 = arg_3.x;
    let var_3 = reverseBits(~u_input.b ^ ~vec2<i32>(_wgslsmith_div_i32(u_input.e.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.d.wx, vec2<i32>(-2147483647i, arg_2))));
    var_0 = 90937u;
    return Struct_1(arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 8u)], 1708f, 1772f))))))));
    global0 = array<f32, 8>();
    let var_1 = -723f;
    let var_2 = Struct_2(func_4(var_0.xy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-873f)) * -341f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1))), u_input.d.x, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a), func_1(u_input.a, vec2<f32>(var_1, 1291f), 1519u, global0[_wgslsmith_index_u32(26136u, 8u)])), ~vec4<u32>(72304u, u_input.a, u_input.a, 41337u))), _wgslsmith_mult_vec2_i32(vec2<i32>(select(-u_input.c, _wgslsmith_div_i32(u_input.e.x, u_input.e.x), true), _wgslsmith_mult_i32(-u_input.d.x, -29351i)), _wgslsmith_div_vec2_i32(vec2<i32>(1849i, -2147483647i), u_input.b) << (select(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(1u, 40887u), vec2<bool>(false, true)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.a, 8u)], var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1047f, -122f, -1491f)))))), select(!vec4<bool>(false, any(vec3<bool>(false, true, false)), true, false), !vec4<bool>(true, true, true, any(vec2<bool>(false, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.a.a >> (select(var_2.a.a, vec4<u32>(390u, 0u, 27009u, 4294967295u), vec4<bool>(var_2.d.x, var_2.d.x, false, true)) % vec4<u32>(32u)))), firstTrailingBit(max(vec3<u32>(~3009u, ~4294967295u, 1u), var_2.a.a.zxz)), -(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.e.x, var_2.b.x, 0i, -51431i), vec4<i32>(var_2.b.x, u_input.d.x, 9957i, var_2.b.x) << (vec4<u32>(u_input.a, u_input.a, var_2.a.a.x, 101574u) % vec4<u32>(32u)))), _wgslsmith_mult_i32(0i, var_2.b.x), max(vec2<u32>(max(1u, u_input.a | var_2.a.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 45379u)), _wgslsmith_dot_vec3_u32(var_2.a.a.xyw, vec3<u32>(var_2.a.a.x, var_2.a.a.x, 4294967295u)))), vec2<u32>(~u_input.a, var_2.a.a.x) << (~var_2.a.a.wx % vec2<u32>(32u))));
}

