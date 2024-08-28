struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-2450i, ~select(-44754i, arg_1, true)), _wgslsmith_sub_i32(67718i, (1i & u_input.b) ^ 1i)), _wgslsmith_mod_vec2_i32(firstLeadingBit(~vec2<i32>(1i, arg_1) >> (arg_0.xw % vec2<u32>(32u))), max(firstTrailingBit(vec2<i32>(arg_1, -25138i)), ~vec2<i32>(u_input.b, arg_1))));
    let var_1 = -var_0.x & ~(abs(arg_1) << ((_wgslsmith_mult_u32(0u, arg_0.x) & abs(u_input.a)) % 32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x | 4294967295u, 2u)]));
    global0 = array<f32, 2>();
    let var_3 = !select(vec4<bool>(true, false, true, false), vec4<bool>(arg_1 >= _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -19353i, arg_1, var_0.x), vec4<i32>(var_0.x, var_1, -2147483647i, -14207i)), false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), true), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 1i, -1i, 2147483647i), vec4<i32>(arg_1, var_1, u_input.b, -34095i)) != -_wgslsmith_div_i32(2147483647i, -23368i));
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(64612i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 2u)]), global0[_wgslsmith_index_u32(1u, 2u)]) * global0[_wgslsmith_index_u32(func_3(firstLeadingBit(vec4<u32>(u_input.a, 10029u, u_input.a, 1u)), -46696i), 2u)]), -203f), ~vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 67223u), vec3<u32>(u_input.a, 4294967295u, 4294967295u)), u_input.a, ~41482u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(u_input.a), 0u, _wgslsmith_sub_u32(55339u, u_input.a), 4294967295u), ~(vec4<u32>(u_input.a, u_input.a, 28144u, u_input.a) | vec4<u32>(1u, u_input.a, u_input.a, 50453u)), firstLeadingBit(~vec4<u32>(u_input.a, 7837u, u_input.a, 0u))), all(select(vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, true)), global0[_wgslsmith_index_u32(13383u, 2u)] >= global0[_wgslsmith_index_u32(u_input.a, 2u)]), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))));
    return Struct_1(firstLeadingBit(1849i), var_0.b, ~abs(max(var_0.c, var_0.c) >> (_wgslsmith_div_vec4_u32(vec4<u32>(9807u, 96655u, u_input.a, 35523u), var_0.c) % vec4<u32>(32u))), any(!select(vec3<bool>(var_0.d, true, false), vec3<bool>(true, true, true), !vec3<bool>(true, false, var_0.d))));
}

fn func_1() -> i32 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(40343i, u_input.b, -2147483647i, -21641i), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i))), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.b << (6163u % 32u), 3878i, u_input.b), select(~vec4<i32>(-46935i, -1i, u_input.b, u_input.b), countOneBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<bool>(true, true, true, true)))));
    var var_1 = func_2();
    var_1 = func_2();
    var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1066f, global0[_wgslsmith_index_u32(var_1.c.x, 2u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -250f), -840f, any(vec4<bool>(var_1.d, var_1.d, true, var_1.d))))))), ~((~var_1.c ^ ~vec4<u32>(u_input.a, 42201u, 0u, 16676u)) | vec4<u32>(var_1.c.x, _wgslsmith_mod_u32(u_input.a, 1u), 59522u, ~4294967295u)), (var_1.a <= 0i) || any(!vec3<bool>(false, var_1.d, var_1.d)));
    var var_2 = var_1.c.yx;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1() | -14312i, global0[_wgslsmith_index_u32(4294967295u, 2u)], vec4<u32>(min(countOneBits(u_input.a), u_input.a), 53777u, _wgslsmith_mod_u32(countOneBits(u_input.a), ~4294967295u) ^ _wgslsmith_add_u32(firstTrailingBit(0u), firstTrailingBit(u_input.a)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 29100u, 93267u, 4294967295u)), ~vec4<u32>(0u, 10391u, 0u, u_input.a) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)))), true);
    var var_1 = var_0;
    var_1 = func_2();
    var_1 = Struct_1(max(reverseBits(-2147483647i), reverseBits(-firstLeadingBit(5412i))), -1000f, vec4<u32>(var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 84337u, 76433u), vec3<u32>(16470u, 1u, var_0.c.x) ^ var_0.c.xwx) << (4294967295u % 32u), ~var_1.c.x, firstLeadingBit(var_1.c.x)), any(select(!(!vec2<bool>(var_1.d, false)), vec2<bool>(true, select(false, true, var_1.d)), select(vec2<bool>(true, false), select(vec2<bool>(var_1.d, true), vec2<bool>(true, var_1.d), true), true))));
    global0 = array<f32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(u_input.a, _wgslsmith_div_u32(69600u, 1u), 0u)), vec3<i32>(i32(-1i) * -var_0.a, u_input.b, abs(_wgslsmith_add_i32(var_1.a, -10759i))) << (select(select(var_0.c.wyw, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.x, u_input.a, var_1.c.x), var_0.c.zww), vec3<bool>(var_0.d, true, var_1.d)), var_1.c.wxz, false) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2129f, -216f, var_0.b))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -103f, var_0.b), vec3<f32>(1045f, var_1.b, global0[_wgslsmith_index_u32(u_input.a, 2u)])))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.b)), func_2().b, func_2().b) * vec3<f32>(_wgslsmith_f_op_f32(select(1657f, global0[_wgslsmith_index_u32(u_input.a, 2u)], true)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(trunc(-213f))))));
}

