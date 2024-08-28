struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(39800i, -1i, 2147483647i), vec2<bool>(true, true), 536f, false), Struct_1(vec3<i32>(0i, 17445i, i32(-2147483648)), vec2<bool>(true, true), -667f, false), Struct_1(vec3<i32>(-78764i, 2943i, 1i), vec2<bool>(true, true), -284f, true), Struct_1(vec3<i32>(2147483647i, 0i, -51785i), vec2<bool>(true, true), -1019f, true), Struct_1(vec3<i32>(43477i, 9824i, -1i), vec2<bool>(false, false), -123f, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<i32>(-1i) * -select(-vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0.a.x, -2147483647i, arg_0.a.x) ^ vec4<i32>(arg_0.a.x, -27942i, 2147483647i, -5609i), firstTrailingBit(vec4<i32>(arg_0.a.x, 1i, -1i, arg_0.a.x))), vec4<bool>(arg_0.b.x, true, any(vec2<bool>(arg_0.d, false)), true));
    global0 = array<vec2<u32>, 32>();
    let var_1 = !any(vec4<bool>(true, arg_0.d, any(vec3<bool>(arg_0.b.x, true, arg_0.d)), !all(vec2<bool>(arg_0.b.x, arg_0.d))));
    return 0u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_1, 5>();
    global0 = array<vec2<u32>, 32>();
    var var_0 = global1[_wgslsmith_index_u32(func_3(Struct_1(-firstLeadingBit(countOneBits(vec3<i32>(10069i, -2147483647i, 89489i))), vec2<bool>(true, arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), 1176f)) - arg_1.x), !(!(!arg_0.x)))), 5u)];
    global0 = array<vec2<u32>, 32>();
    var_0 = global1[_wgslsmith_index_u32(~4294967295u, 5u)];
    return Struct_1(firstTrailingBit(max(min(~vec3<i32>(46850i, -43817i, 51994i), ~vec3<i32>(-31926i, -2147483647i, var_0.a.x)), var_0.a)), !arg_0.zz, _wgslsmith_f_op_f32(step(var_0.c, -904f)), true);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = vec3<bool>(!(!arg_0.b.x | false) || all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), false)), arg_0.b.x, false);
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~39227u, ~u_input.a, 1u), vec3<u32>(1u, 1u, 4294967295u));
    global0 = array<vec2<u32>, 32>();
    global1 = array<Struct_1, 5>();
    global0 = array<vec2<u32>, 32>();
    return var_0.x;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: u32) -> vec4<bool> {
    let var_0 = arg_0.x > 0u;
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    global1 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(791f, _wgslsmith_f_op_f32(f32(-1f) * -1170f))), 704f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-121f * _wgslsmith_f_op_f32(round(1070f)))))) * vec3<f32>(-399f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1487f, -1251f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2519f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -119f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(198f, -944f)))));
    return !select(arg_1, !(!(!arg_1)), arg_1);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = !func_5(vec3<u32>(_wgslsmith_add_u32(~36804u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 27198u, 16227u, 1u), vec4<u32>(113447u, 6785u, u_input.a, u_input.a))), 1u, _wgslsmith_add_u32(max(26129u, u_input.a), 1166u)), vec4<bool>(u_input.a <= _wgslsmith_sub_u32(59016u, u_input.a), func_4(func_2(vec4<bool>(arg_0.d, arg_0.b.x, arg_0.b.x, arg_0.d), vec3<f32>(522f, arg_0.c, -1011f))), true, func_2(!vec4<bool>(arg_0.d, true, false, arg_0.d), vec3<f32>(1394f, arg_0.c, arg_0.c)).b.x), 16743u);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 5u)];
    global0 = array<vec2<u32>, 32>();
    global0 = array<vec2<u32>, 32>();
    global1 = array<Struct_1, 5>();
    return (~func_3(Struct_1(vec3<i32>(arg_0.a.x, -43191i, 8670i), vec2<bool>(false, true), -435f, arg_0.d)) ^ 79117u) | 32775u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<i32>(1i, -1710i, 1i), vec2<bool>(false, false), 762f, true)), 32u)]), vec2<u32>(min(u_input.a, u_input.a), 0u)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a & 5145u))), u_input.a, 0u);
    var var_1 = vec2<i32>(-1i) * -vec2<i32>(min(firstLeadingBit(-9531i), _wgslsmith_mult_i32(-1i, -20421i)), 17914i >> (var_0.x % 32u));
    var var_2 = false;
    var var_3 = vec2<bool>(all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false)))), true);
    global0 = array<vec2<u32>, 32>();
    global1 = array<Struct_1, 5>();
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(50766u >> ((var_0.x & var_0.x) % 32u), var_0.x)), ~(~var_0.x >> (u_input.a % 32u))), 5u)];
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_4.c);
}

