struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(18626u, 39028u);

var<private> global1: array<u32, 11> = array<u32, 11>(40871u, 0u, 4294967295u, 0u, 4294967295u, 1u, 4294967295u, 4294967295u, 0u, 16447u, 4294967295u);

var<private> global2: array<u32, 4>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = arg_0;
    global1 = array<u32, 11>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, -1000f), _wgslsmith_f_op_f32(exp2(arg_2.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x)))), -1000f)), Struct_1(_wgslsmith_mod_i32((6164i | arg_0) >> (18987u % 32u), ~(~(-2147483647i))), arg_3.yy, vec4<i32>(~arg_0, abs(arg_0), abs(-1i), arg_0) ^ _wgslsmith_mult_vec4_i32(min(vec4<i32>(45052i, -2147483647i, 3243i, 7247i), vec4<i32>(-2147483647i, arg_0, 0i, arg_0)), ~vec4<i32>(arg_0, arg_0, arg_0, arg_0))));
    let var_2 = Struct_1(-1i, var_1.b.b, ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.c.x, 6684i, var_1.b.c.x, var_1.b.a), var_1.b.c), var_1.b.c ^ var_1.b.c, var_1.b.c));
    let var_3 = Struct_3(abs(_wgslsmith_mod_u32(~(u_input.a ^ 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(8044u, 3380u, 5770u) << (u_input.b.yzy % vec3<u32>(32u)), ~vec3<u32>(26558u, 25649u, 26362u)))), _wgslsmith_add_vec3_i32(var_2.c.yxx, var_2.c.wxy), vec3<u32>(59001u, max(arg_1 >> (global2[_wgslsmith_index_u32(~1u, 4u)] % 32u), ~58518u), 51015u));
    return _wgslsmith_mod_vec4_i32(-abs(~var_2.c), -var_1.b.c);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = array<u32, 11>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(2048f, _wgslsmith_f_op_f32(min(1763f, 172f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1128f)), -302f)), _wgslsmith_f_op_f32(-2093f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2514f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1121f, _wgslsmith_f_op_f32(round(-451f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1168f, 100f)), -221f)))));
    var var_1 = Struct_2(1108f, Struct_1(1i, vec2<bool>(true, true & all(vec4<bool>(true, false, false, false))), ~func_3(-61578i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 11u)], 4u)], var_0.zyz, vec3<bool>(true, true, false)) | (vec4<i32>(-1i) * -vec4<i32>(-1i, 0i, 21611i, -38367i))));
    global0 = _wgslsmith_clamp_vec2_u32(u_input.b.yz, u_input.b.yy, ~abs(~vec2<u32>(global2[_wgslsmith_index_u32(arg_0, 4u)], 0u) ^ (vec2<u32>(117612u, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 11u)]) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)))));
    var_1 = Struct_2(var_1.a, Struct_1(abs(2147483647i), select(!var_1.b.b, select(select(var_1.b.b, vec2<bool>(false, false), var_1.b.b.x), vec2<bool>(false, var_1.b.b.x), true), !(!vec2<bool>(var_1.b.b.x, var_1.b.b.x))), var_1.b.c));
    return Struct_2(1f, var_1.b);
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = func_2(countOneBits(~4294967295u));
    var var_1 = select(vec2<bool>(true, true), !vec2<bool>(all(select(vec3<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec3<bool>(true, true, var_0.b.b.x), false)), var_0.b.b.x), true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(trunc(560f)), Struct_1(_wgslsmith_div_i32(var_0.b.c.x, 16006i), var_0.b.b, -(firstTrailingBit(var_0.b.c) & select(vec4<i32>(arg_0.b.x, -1165i, arg_0.b.x, arg_0.b.x), var_0.b.c, vec4<bool>(false, var_1.x, true, false)))));
    let var_3 = Struct_1(i32(-1i) * -17292i, var_2.b.b, -vec4<i32>(-countOneBits(var_0.b.a), _wgslsmith_sub_i32(arg_0.b.x, var_2.b.c.x) | -var_2.b.c.x, i32(-1i) * -1i, ~_wgslsmith_add_i32(var_0.b.a, -43733i)));
    var_2 = Struct_2(var_2.a, var_2.b);
    return -1870f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-14984i, 0i, 0i), vec3<i32>(1272i, 0i, 1i)), vec3<u32>(101065u, 9542u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31529u, 4u)], 4u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    global0 = vec2<u32>(firstLeadingBit(~global1[_wgslsmith_index_u32(max(u_input.b.x, 1u) >> (27083u % 32u), 11u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~0u, 11u)], 4u)]);
    global1 = array<u32, 11>();
    let var_1 = Struct_3(4294967295u, vec3<i32>(-40714i, 0i >> (abs(u_input.b.x) % 32u), ~firstLeadingBit(reverseBits(-1i))), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4654u, global2[_wgslsmith_index_u32(26996u, 4u)], 4294967295u), vec3<u32>(global0.x, 21894u, global2[_wgslsmith_index_u32(u_input.b.x, 4u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(var_1.a, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~22984u, firstLeadingBit(global1[_wgslsmith_index_u32(var_1.a, 11u)]), 0u), 11u)]), vec4<u32>(~(~4294967295u << (_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 41779u, global0.x) % 32u)), _wgslsmith_clamp_u32(min(4294967295u, 2789u), global0.x, _wgslsmith_mod_u32(0u, 19836u)) ^ 4294967295u, _wgslsmith_mod_u32(~7691u, 10794u), 3958u), var_0.x, var_1.b.x);
}

