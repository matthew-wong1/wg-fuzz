struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: array<bool, 29>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    global0 = array<bool, 29>();
    var var_0 = ~abs(-arg_2);
    let var_1 = Struct_1(_wgslsmith_div_vec2_i32(max(-vec2<i32>(0i, -30076i), max(vec2<i32>(43543i, u_input.c), vec2<i32>(u_input.d, 34111i))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_2), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_2), vec2<i32>(48829i, u_input.c)))) | vec2<i32>(~(~4765i), u_input.c), select(vec2<i32>(_wgslsmith_mod_i32(-28923i, arg_2 >> (arg_3.x % 32u)), arg_2), -vec2<i32>(1i, 1i), true));
    let var_2 = select(vec4<bool>((-2147483647i & arg_2) < abs(~53354i), true, true | all(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(arg_3.x, 29u)])), false), !(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(1044u, 29u)], false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, true, global0[_wgslsmith_index_u32(1u, 29u)]), arg_0))), global0[_wgslsmith_index_u32(4294967295u, 29u)]);
    let var_3 = Struct_1(var_1.a, -firstLeadingBit(var_1.b));
    return abs(_wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(0u, arg_3.x, arg_1, arg_3.x)), ~arg_3), vec4<u32>(~arg_1, ~(~1u), u_input.b.x, arg_1)));
}

fn func_2() -> bool {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_0 = u_input.e;
    let var_1 = _wgslsmith_clamp_u32(func_3(true || any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 29u)], true, global0[_wgslsmith_index_u32(u_input.e, 29u)])), 8663u, u_input.c, ~(~(~vec4<u32>(34953u, 72278u, 0u, 36275u)))), u_input.a, 1u);
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-481f)), _wgslsmith_f_op_f32(1415f + 838f))) - 1223f) < 409f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 4294967295u, var_1, var_0) << (firstLeadingBit(vec4<u32>(u_input.e, 103860u, 37232u, var_0)) % vec4<u32>(32u))), max(~(~vec4<u32>(1u, var_0, 23060u, var_0)), firstTrailingBit(reverseBits(vec4<u32>(var_1, var_1, u_input.b.x, var_1))))), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(var_0 << (~var_0 % 32u)), func_3(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], true, true)), _wgslsmith_mult_u32(var_0, 1u), -1i, vec4<u32>(1u, 0u, var_1, 40666u)) << (~0u % 32u)), 29u)], true);
    return !((true | global0[_wgslsmith_index_u32(~59652u, 29u)]) || (u_input.e > ~0u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(16056u, 18977u);
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(f32(-1f) * -721f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-634f, -594f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - -223f) + _wgslsmith_f_op_f32(-164f - 842f)) * 988f))));
    let var_3 = u_input.e;
    var_1 = !all(select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(8686u, 29u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_3, 29u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(var_3, 29u)])), !vec2<bool>(global0[_wgslsmith_index_u32(var_3, 29u)], false), vec2<bool>(true, true)), vec2<bool>(global0[_wgslsmith_index_u32(~var_3, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(43220u, 40475u), 29u)]), false));
    return Struct_1(select(reverseBits(max(firstTrailingBit(vec2<i32>(u_input.d, -26299i)), ~vec2<i32>(u_input.c, 130210i))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 17389i), ~vec2<i32>(0i, u_input.d)), vec2<bool>(false, !(u_input.c <= u_input.c))), countOneBits(vec2<i32>(31434i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(31573i, u_input.d, 11283i, -28121i), vec4<i32>(u_input.d, -15572i, 1i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(-20652i, u_input.c, 0i, u_input.d), vec4<i32>(-61387i, -2147483647i, u_input.c, u_input.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1000f * -255f)), -607f)));
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_1 = func_1();
    var var_2 = !global0[_wgslsmith_index_u32(u_input.e, 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-205f, -357f, global0[_wgslsmith_index_u32(u_input.e, 29u)])))))));
}

