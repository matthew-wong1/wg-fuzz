struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<bool, 2>;

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(6021u, 124670u, 37824u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 29u)] * global0[_wgslsmith_index_u32(u_input.c, 29u)]), 186f, _wgslsmith_f_op_f32(f32(-1f) * -694f), global0[_wgslsmith_index_u32(4294967295u, 29u)])))));
    let var_1 = !select(select(!(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false, false)), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 2u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c, 2u)])), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 2u)], false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), false)), global1[_wgslsmith_index_u32(u_input.e.x, 2u)]), !(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 2u)]))), all(!vec4<bool>(false, global1[_wgslsmith_index_u32(48397u, 2u)], true, false)) || (true || (u_input.c >= u_input.c)));
    var var_2 = Struct_1(33435u);
    let var_3 = -10653i;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)], -592f)))));
    return ~(~vec4<u32>(1u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 623u, 47228u), vec4<u32>(var_2.a, 4294967295u, u_input.c, var_2.a)), u_input.c, u_input.e.x, 43236u));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-588f - global0[_wgslsmith_index_u32(36544u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-958f, 790f) * global0[_wgslsmith_index_u32(11016u, 29u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28462u, 29u)] + global0[_wgslsmith_index_u32(u_input.c, 29u)]))))));
    let var_1 = func_3(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x & u_input.d, u_input.d, -u_input.b.x), vec3<i32>(1i, ~47605i, -1i)), vec3<i32>(-(~u_input.b.x), abs(u_input.d | u_input.b.x), u_input.a.x)));
    global2 = true;
    var var_2 = u_input.b.x;
    var var_3 = abs(vec3<i32>(~max(countOneBits(u_input.b.x), -u_input.d), firstTrailingBit(1i | _wgslsmith_dot_vec4_i32(vec4<i32>(23496i, 2147483647i, u_input.b.x, -4276i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))), -39978i));
    return Struct_1(33508u & u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global0 = array<f32, 29>();
    var var_0 = func_2();
    let var_1 = ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_1.a), ~u_input.e)) | u_input.e;
    var_0 = func_2();
    let var_2 = Struct_5(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, arg_0.a, 10276u, 36052u), vec4<u32>(~16875u, _wgslsmith_clamp_u32(var_1.x, 45457u, 1u), _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(var_0.a, 1u)], global3[_wgslsmith_index_u32(45646u, 1u)]), func_2().a)));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(312f, global0[_wgslsmith_index_u32(var_2.a, 29u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-540f, global0[_wgslsmith_index_u32(48943u, 29u)]) * vec2<f32>(global0[_wgslsmith_index_u32(var_2.a, 29u)], global0[_wgslsmith_index_u32(17067u, 29u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_2.a, 29u)], 2343f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(u_input.e.x, 29u)]) + vec2<f32>(464f, global0[_wgslsmith_index_u32(1u, 29u)])))))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    global0 = array<f32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(~(~_wgslsmith_add_u32(455u, u_input.c))), func_2()));
    let var_1 = func_2();
    var var_2 = (func_3(select(abs(vec3<i32>(0i, u_input.b.x, u_input.d)), vec3<i32>(u_input.d, -2147483647i, 1i), arg_0)) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(func_3(vec3<i32>(u_input.d, u_input.b.x, -46328i)), min(vec4<u32>(var_1.a, var_1.a, 4294967295u, u_input.c), vec4<u32>(1u, var_1.a, 2474u, 2709u))), firstLeadingBit(_wgslsmith_div_u32(3537u, u_input.e.x)), 34795u, var_1.a) % vec4<u32>(32u))) << ((abs(vec4<u32>(28159u, u_input.c, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.e, u_input.e))) | (select(~vec4<u32>(u_input.e.x, var_1.a, 5236u, var_1.a), ~vec4<u32>(var_1.a, u_input.e.x, 0u, u_input.c), vec4<bool>(false, arg_0.x, false, true)) << (abs(vec4<u32>(6993u, 3784u, var_1.a, 1u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_3 = vec4<i32>(-(~(-2147483647i)), -19033i, -1i, u_input.d ^ _wgslsmith_add_i32(-49950i, -1i));
    return vec2<bool>(true, u_input.e.x == (var_1.a >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, var_1.a, 1u, 0u), vec4<u32>(u_input.e.x, 1u, var_2.x, u_input.c)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(69464u, 29u)], 709f, global0[_wgslsmith_index_u32(u_input.c, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-254f * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), 29u)]) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(48587u) << (select(u_input.e.x, u_input.c, global1[_wgslsmith_index_u32(0u, 2u)]) % 32u), 1u), 29u)]), !(!func_1(select(vec3<bool>(global1[_wgslsmith_index_u32(41754u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false, false)))), _wgslsmith_mod_vec2_i32(-vec2<i32>(-29698i, u_input.a.x & u_input.d), _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.d, 95619i), _wgslsmith_sub_vec2_i32(~u_input.a.xy, -u_input.a.xx))), func_2());
    global3 = array<vec3<u32>, 1>();
    global1 = array<bool, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_div_u32(1u, 137723u) ^ func_2().a), func_2())), -vec2<i32>(countOneBits(u_input.d), -1i) & abs(countOneBits(~vec2<i32>(-43741i, 16809i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -750f), -1056f));
}

