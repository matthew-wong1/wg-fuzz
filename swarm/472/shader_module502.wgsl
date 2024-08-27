struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: array<u32, 20> = array<u32, 20>(44947u, 49017u, 50521u, 62416u, 0u, 16819u, 99980u, 0u, 9459u, 4294967295u, 4294967295u, 71620u, 27727u, 65881u, 1u, 4294967295u, 0u, 17626u, 28823u, 0u);

var<private> global2: array<vec3<i32>, 12>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> u32 {
    global0 = array<vec2<bool>, 11>();
    var var_0 = arg_2.e.xy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, arg_2.b, 1024f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-986f, -415f, arg_2.d.b.x))))))));
    var_0 = vec2<u32>(arg_2.e.x, global1[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 20u)]), 20u)]) | arg_0.c;
    var_0 = arg_3.a.c;
    return 1u >> (~abs(_wgslsmith_clamp_u32(var_0.x, 6568u, _wgslsmith_mod_u32(9062u, 61772u))) % 32u);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    global0 = array<vec2<bool>, 11>();
    global2 = array<vec3<i32>, 12>();
    var var_0 = !arg_1;
    var_0 = vec4<bool>(false, true, all(!(!vec3<bool>(true, var_0.x, false))), 588f >= arg_0);
    let var_1 = -vec2<i32>(2147483647i, u_input.c.x);
    return Struct_2(Struct_1(u_input.d.x << (arg_2 % 32u), u_input.c.x, _wgslsmith_sub_vec2_u32(~vec2<u32>(70488u, 0u), vec2<u32>(1u, 1u))), vec2<f32>(arg_0, arg_0), u_input.d, func_3(Struct_1(-2147483647i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 10169i) ^ _wgslsmith_clamp_i32(var_1.x, 1i, 2147483647i), _wgslsmith_clamp_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], 19821u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 20u)], 20u)], 0u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2, 20u)], 20u)], 1u)) | vec2<u32>(u_input.a, 28932u)), Struct_1(_wgslsmith_clamp_i32(~(-2147483647i), -2147483647i, countOneBits(var_1.x)), -1i << (arg_2 % 32u), vec2<u32>(_wgslsmith_clamp_u32(34735u, 4294967295u, arg_2), global1[_wgslsmith_index_u32(0u, 20u)] << (arg_2 % 32u))), Struct_4(select(all(arg_1), !var_0.x, any(global0[_wgslsmith_index_u32(arg_2, 11u)])), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -126f)), Struct_2(Struct_1(1i, 32548i, vec2<u32>(arg_2, arg_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1096f) - vec2<f32>(arg_0, arg_0)), u_input.d, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2, u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14820u, 20u)], 20u)]), vec4<u32>(0u, arg_2, 1u, arg_2)), ~11582u, u_input.a & 1u)), Struct_2(Struct_1(var_1.x | 2147483647i, 1i, ~vec2<u32>(91797u, arg_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(403f, arg_0)), -vec4<i32>(-75722i, u_input.b, var_1.x, 0i), u_input.a)));
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_i32(u_input.d, u_input.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1291f, -367f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(729f, -1000f) + vec2<f32>(865f, 1445f)), vec2<f32>(-679f, 165f), !global0[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, 155f)))))));
    var var_2 = func_2(_wgslsmith_f_op_f32(round(var_1.x)), !(!vec4<bool>(any(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21677u, 20u)], 11u)]), true, all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)] <= 85968u)), ~_wgslsmith_div_u32(1u, 7673u));
    let var_3 = var_1.x;
    let var_4 = Struct_3(reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6447u, global1[_wgslsmith_index_u32(u_input.a, 20u)], var_2.d), vec3<u32>(var_2.a.c.x, var_2.a.c.x, 1u)), firstLeadingBit(vec3<u32>(0u, u_input.a, 0u))), ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 20u)], var_2.a.c.x, 18830u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(func_2(var_1.x, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), true), 1u).b.x, 1000f))));
    return Struct_3(var_4.a, vec2<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(var_1.x * var_2.b.x), vec4<bool>(true, true, true, true), 4294967295u).b.x), var_4.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b.x;
    var_1 = -1697f;
    let var_2 = Struct_4(!((firstTrailingBit(u_input.d.x) ^ _wgslsmith_mod_i32(-1i, u_input.d.x)) >= (reverseBits(u_input.d.x) & u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b.x, -1074f)) * _wgslsmith_f_op_f32(f32(-1f) * -101f)), _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-1126f + var_0.b.x))), Struct_2(func_2(_wgslsmith_f_op_f32(-var_0.b.x), vec4<bool>(-1i < u_input.b, true, true, true), _wgslsmith_clamp_u32(u_input.a, func_1().a.x, 0u)).a, var_0.b, ~(~vec4<i32>(u_input.d.x, -2147483647i, -2147483647i, 1i)), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, var_0.a.x), ~abs(var_0.a.x))), vec3<u32>(abs(~abs(global1[_wgslsmith_index_u32(14840u, 20u)])), global1[_wgslsmith_index_u32(75344u & u_input.a, 20u)], min(9285u, select(~global1[_wgslsmith_index_u32(u_input.a, 20u)], select(global1[_wgslsmith_index_u32(u_input.a, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], false), u_input.c.x < 33611i))));
    let var_3 = Struct_2(var_2.d.a, var_2.d.b, u_input.d, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.e.x, 4294967295u), 20u)], ~var_0.a.x), 438u));
    global0 = array<vec2<bool>, 11>();
    var_0 = Struct_3(~(~vec3<u32>(37448u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(90953u, var_2.d.a.c.x)), 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -732f) - vec2<f32>(var_3.b.x, -826f)), var_0.b, !global0[_wgslsmith_index_u32(1u, 11u)])), vec2<f32>(479f, _wgslsmith_f_op_f32(floor(-550f))), vec2<bool>(any(vec3<bool>(false, false, false)), var_2.a))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c + var_2.c), 100f), -457f)));
    let var_4 = select(var_2.a, true, any(select(select(!vec2<bool>(var_2.a, var_2.a), !vec2<bool>(false, var_2.a), !vec2<bool>(var_2.a, var_2.a)), vec2<bool>(all(vec4<bool>(var_2.a, var_2.a, var_2.a, false)), true), false || var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(var_2.e | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_3.d, u_input.a), var_2.e, vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(var_2.d.d, 20u)], 14395u)))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.a.b, max(var_3.c.x, var_3.c.x)), var_2.d.c.xz), _wgslsmith_sub_vec2_i32(u_input.d.yy, reverseBits(_wgslsmith_mult_vec2_i32(u_input.d.zw, var_2.d.c.wz)))));
}

