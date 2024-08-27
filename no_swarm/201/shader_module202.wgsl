struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<u32, 21>;

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, false, false, false, true, true, true, false, false, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<i32> {
    let var_0 = countOneBits(abs(u_input.a.yww));
    let var_1 = vec2<i32>(1i, 1i);
    global2 = array<bool, 12>();
    global0 = abs(1u);
    var var_2 = Struct_2(Struct_1(countOneBits(vec2<i32>(-2147483647i, ~var_1.x)), min(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, -22779i, 2147483647i), vec3<i32>(2147483647i, 79170i, var_1.x)), abs(firstTrailingBit(vec3<i32>(-23226i, var_1.x, 0i))))), -21595i, Struct_1(~vec2<i32>(var_1.x | var_1.x, -92709i), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_1.x, 1776i, -27018i), reverseBits(76634i), var_1.x), reverseBits(vec3<i32>(var_1.x, 59212i, 18540i) << (var_0 % vec3<u32>(32u))))));
    return var_2.a.a;
}

fn func_2() -> bool {
    let var_0 = Struct_1(func_3(), -reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 32619i, -1i), vec3<i32>(-11113i, -13582i, 1i))));
    global1 = array<u32, 21>();
    var var_1 = Struct_1(var_0.a ^ _wgslsmith_sub_vec2_i32(~var_0.b.zy, ~(-vec2<i32>(-1i, var_0.b.x))), _wgslsmith_div_vec3_i32(select(_wgslsmith_mult_vec3_i32(var_0.b << (u_input.a.yxw % vec3<u32>(32u)), ~var_0.b), select(var_0.b, vec3<i32>(var_0.a.x, var_0.a.x, -26803i), true) << (u_input.a.xyw % vec3<u32>(32u)), select(select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global2[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true)), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(8857u, 12u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 21u)], 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)]), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), reverseBits(vec3<i32>(-19329i, _wgslsmith_div_i32(var_0.b.x, -37189i), var_0.b.x))));
    let var_2 = Struct_2(var_0, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0.a.x, 0i, var_1.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, var_1.a.x, -6179i), var_0.b)) | var_0.b, _wgslsmith_add_vec3_i32(var_1.b, -var_1.b)), var_0);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-780f)) * _wgslsmith_f_op_f32(1295f - -1591f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(500f)), -1000f)))), _wgslsmith_f_op_f32(-493f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(round(1945f))))))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = 6103i;
    global1 = array<u32, 21>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(255f, -621f))) - _wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(trunc(-676f))))), Struct_3(abs(_wgslsmith_dot_vec2_u32(u_input.a.wz | u_input.a.xy, _wgslsmith_div_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, 12099u))))));
    var var_2 = 2147483647i;
    return var_1.b;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(42498i, ~arg_3, _wgslsmith_mod_i32(arg_3, arg_3) & -13886i, arg_3), -(_wgslsmith_sub_vec4_i32(vec4<i32>(1432i, -1666i, arg_3, 45201i), vec4<i32>(12860i, arg_3, -2147483647i, arg_3)) & _wgslsmith_sub_vec4_i32(vec4<i32>(11193i, -1i, 30000i, arg_3), vec4<i32>(37511i, arg_3, arg_3, arg_3)))) ^ -vec4<i32>(2147483647i, ~(-arg_3), -23717i, ~(-1i));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -371f), func_4(vec4<bool>(func_2(), !all(vec3<bool>(false, true, false)), !(!arg_1), !global2[_wgslsmith_index_u32(~u_input.a.x, 12u)]), true));
    global1 = array<u32, 21>();
    let var_2 = u_input.a.x;
    var var_3 = true;
    return countOneBits(~vec3<i32>(abs(arg_3), select(-1i, arg_3, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(20858u, 21u)], 86755u), 12u)]), firstTrailingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(4294967295u);
    let var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(50918i, 2147483647i, 16316i)), min(vec3<i32>(42889i, 24717i, 24031i) >> (u_input.a.zwy % vec3<u32>(32u)), func_1(true, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, 0i)) & _wgslsmith_clamp_vec3_i32(-vec3<i32>(-30541i, -1i, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -23955i), vec3<i32>(-2284i, 7469i, -38382i)), vec3<i32>(-2147483647i, 36109i, 24694i)));
    var var_1 = Struct_4(1505f, Struct_3(_wgslsmith_div_u32(~(~10632u), ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 21u)], 21u)] << (u_input.a.x % 32u)))));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(918f, _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - var_1.a))), var_1.a, var_1.a);
    let var_3 = func_2();
    let var_4 = Struct_4(-130f, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-899f, _wgslsmith_f_op_f32(sign(406f)))) * _wgslsmith_f_op_f32(var_4.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f * var_4.a)))), ~(~11181u), _wgslsmith_f_op_vec2_f32(-var_2.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_4.a, 147f), vec3<f32>(var_4.a, -1749f, var_1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 121f, var_4.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_4.a, var_1.a, var_2.x), vec3<f32>(var_2.x, var_2.x, var_4.a))))));
}

