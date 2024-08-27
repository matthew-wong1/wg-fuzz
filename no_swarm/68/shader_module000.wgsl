struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7518u;

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 20>;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, -7756i);

var<private> global4: array<vec4<u32>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = vec4<i32>(countOneBits(~(-global1.x)) >> ((arg_0.a & _wgslsmith_mod_u32(32225u, arg_0.a)) % 32u), ~_wgslsmith_mod_i32(1i, 2147483647i), ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(abs(firstTrailingBit(43491u)), 20u)], _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~93445u, 20u)], 28249i)), _wgslsmith_mod_i32(global3.x, -_wgslsmith_dot_vec2_i32(countOneBits(arg_2.b), u_input.d >> (vec2<u32>(u_input.b, arg_0.a) % vec2<u32>(32u)))));
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e & 1u, select(u_input.e, 26635u, false)), min(9386u, 61148u) | ~u_input.e), 71702u), -5824i);
    let var_2 = Struct_2(var_1.a, _wgslsmith_div_i32(firstTrailingBit(var_1.b | arg_0.b) | -_wgslsmith_mod_i32(global1.x, var_1.b), ~(select(-1i, 0i, true) << (var_1.a % 32u))));
    var var_3 = ~min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, abs(u_input.d.x), arg_2.b.x, max(var_0.x, global1.x)), abs(var_0) & vec4<i32>(var_0.x, arg_3, var_2.b, 0i)), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.x), u_input.d)));
    global3 = ~var_0.zyz;
    return _wgslsmith_mod_i32(firstTrailingBit(6682i), reverseBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(~1i, -34643i), -1i)));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global3 = firstLeadingBit(vec3<i32>(-28700i, _wgslsmith_div_i32(8558i, max(-1i, arg_3.b.x)), global3.x) | select(vec3<i32>(_wgslsmith_add_i32(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 20u)]), 1i, u_input.a), -vec3<i32>(-9662i, arg_3.b.x, global1.x), !(!vec3<bool>(arg_2.a, arg_2.a, true))));
    return false;
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = vec2<i32>(global1.x, ~0i);
    let var_1 = ~(~(~u_input.b));
    let var_2 = Struct_1(true, _wgslsmith_add_vec2_i32(firstTrailingBit(global3.yy), -var_0));
    return vec2<bool>(var_2.a, !func_4(func_3(Struct_2(var_1, global1.x), _wgslsmith_f_op_f32(-975f * arg_0), var_2, ~(-52699i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -137f))), var_2, var_2));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global4 = array<vec4<u32>, 10>();
    let var_0 = func_2(-1070f);
    let var_1 = Struct_3(vec2<bool>(~abs(u_input.b) <= 69461u, var_0.x), Struct_2(28825u, u_input.a), true, Struct_1(!(false || !var_0.x), ~(_wgslsmith_div_vec2_i32(vec2<i32>(49579i, global1.x), vec2<i32>(-3487i, 6125i)) ^ countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], arg_1.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -658f)), -997f)), _wgslsmith_f_op_f32(f32(-1f) * -888f), true)), 1502f);
    let var_3 = var_1;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(true & select(true, all(vec3<bool>(false, false, true)), true), _wgslsmith_clamp_vec2_i32(global3.yx, u_input.d, u_input.d)), vec3<i32>(global1.x, _wgslsmith_div_i32(~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 20u)], -2906i), global3.x), _wgslsmith_mult_i32(u_input.c, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(54317u, u_input.e), 20u)]) ^ 0i));
    global4 = array<vec4<u32>, 10>();
    global4 = array<vec4<u32>, 10>();
    let var_1 = global4[_wgslsmith_index_u32(~(~(~35851u)), 10u)];
    var var_2 = Struct_3(!select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), func_2(_wgslsmith_f_op_f32(select(-835f, -514f, false)))), Struct_2(firstLeadingBit(0u), min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b), max(u_input.d, u_input.d)), -func_3(Struct_2(var_1.x, var_0.b), -1492f, Struct_1(false, vec2<i32>(-1i, u_input.a)), global1.x))), !select(true, any(vec4<bool>(true, false, false, true)), false), Struct_1(true, -global3.yy));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(vec4<i32>(2147483647i, global3.x, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(19673u, 20u)]) | vec4<i32>(var_0.b, global1.x, 2147483647i, -2147483647i))));
}

