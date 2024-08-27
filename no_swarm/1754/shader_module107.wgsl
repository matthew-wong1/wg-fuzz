struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(15474u, 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(u_input.a.zw);
    var var_1 = arg_1;
    let var_2 = arg_2;
    let var_3 = Struct_2(var_2.a, var_2.b, ~var_0.a.x & 13130u);
    let var_4 = select(6966i, i32(-1i) * -25649i, any(select(select(select(vec4<bool>(var_3.a.x, true, true, true), vec4<bool>(arg_3.a.x, false, var_2.a.x, false), vec4<bool>(arg_2.a.x, var_2.a.x, var_2.a.x, arg_2.a.x)), !vec4<bool>(false, var_2.a.x, arg_2.a.x, false), vec4<bool>(var_3.a.x, var_3.a.x, var_2.a.x, false)), vec4<bool>(all(vec3<bool>(var_2.a.x, false, false)), !var_3.a.x, true, arg_0), true)));
    return ~_wgslsmith_mod_u32(~(~global1.a.x), arg_1.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> Struct_2 {
    global0 = array<i32, 29>();
    var var_0 = vec3<i32>(-(~_wgslsmith_div_i32(global0[_wgslsmith_index_u32(global1.a.x, 29u)], 2147483647i)), -(~(~_wgslsmith_sub_i32(arg_0.x, global0[_wgslsmith_index_u32(global1.a.x, 29u)]))), 1i);
    global0 = array<i32, 29>();
    global1 = Struct_1(vec2<u32>(~52829u, _wgslsmith_mult_u32(countOneBits(~4294967295u), func_3(arg_1, Struct_1(global1.a), Struct_2(vec2<bool>(false, arg_1), vec2<f32>(-374f, 3018f), 4294967295u), Struct_2(vec2<bool>(true, false), vec2<f32>(151f, -1209f), u_input.a.x)))));
    global0 = array<i32, 29>();
    return Struct_2(!vec2<bool>(all(select(vec3<bool>(arg_1, true, true), vec3<bool>(true, arg_1, true), true)), _wgslsmith_mult_i32(var_0.x, arg_0.x) == -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_2), vec2<f32>(-512f, arg_2), vec2<bool>(false, false))))))), 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = ~vec3<i32>((global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, arg_0.c), 29u)] | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.c, global1.a.x), 29u)]) ^ 0i, -arg_1.x, ~(-arg_1.x));
    let var_1 = vec4<i32>(~1i, reverseBits(-2147483647i), 2147483647i, -abs(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 63920u), u_input.a.yx), 29u)], 37661i)));
    var var_2 = var_0;
    let var_3 = arg_0;
    let var_4 = arg_0.a;
    return vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_2.x, countOneBits(var_0.x)), countOneBits(arg_1.x)) ^ arg_1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_1, var_1), -20245i));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = select(vec2<bool>(true && select(any(vec3<bool>(false, true, false)), select(true, true, false), any(vec4<bool>(true, true, false, true))), all(vec2<bool>(true, false))), vec2<bool>(func_2(-abs(vec3<i32>(0i, -1i, arg_1.x)), true, _wgslsmith_div_f32(435f, -1541f)).a.x, true), true);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1617f, -152f, var_0.x)), _wgslsmith_f_op_f32(1149f - 108f))), -982f)), -299f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -795f))))));
    var var_2 = ~(~countOneBits(~49394u)) << ((4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(81638u, reverseBits(44009u), ~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~vec4<u32>(28283u, u_input.b.x, u_input.a.x, arg_2) << (~vec4<u32>(arg_2, 1u, 14069u, arg_2) % vec4<u32>(32u))) % 32u)) % 32u);
    var var_3 = func_2(~(~max(select(vec3<i32>(-30450i, 24643i, 2147483647i), vec3<i32>(arg_0, -1i, -1i), vec3<bool>(var_0.x, false, var_0.x)), vec3<i32>(arg_0, global0[_wgslsmith_index_u32(global1.a.x, 29u)], arg_0))), all(vec2<bool>(all(!vec4<bool>(true, false, false, var_0.x)), !(arg_1.x != global0[_wgslsmith_index_u32(29567u, 29u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_1))));
    var var_4 = 1784f;
    return Struct_1(_wgslsmith_mult_vec2_u32(u_input.a.yw, global1.a >> (global1.a % vec2<u32>(32u))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 773f)), _wgslsmith_f_op_f32(round(-363f)))), 1u);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = 62950i >> (arg_2.c % 32u);
    let var_1 = firstTrailingBit(-(~(-vec3<i32>(var_0, var_0, var_0))));
    let var_2 = -2147483647i;
    global0 = array<i32, 29>();
    var var_3 = var_1.yy;
    return func_5(var_2, -(~var_1.xz), ~global1.a.x);
}

fn func_1(arg_0: bool) -> u32 {
    global1 = func_7(func_6(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(12693u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global1.a.x, 29u)], -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]))) >> (~reverseBits(global1.a) % vec2<u32>(32u)), func_5(12832i, func_4(func_2(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], -25319i), arg_0, -105f), -vec2<i32>(global0[_wgslsmith_index_u32(83417u, 29u)], 18379i), func_2(vec3<i32>(global0[_wgslsmith_index_u32(29990u, 29u)], -2147483647i, global0[_wgslsmith_index_u32(1426u, 29u)]), true, 771f)), min(select(u_input.b.x, 1u, arg_0), 32538u))), func_5(max(-global0[_wgslsmith_index_u32(u_input.a.x, 29u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 1i), vec4<i32>(global0[_wgslsmith_index_u32(54982u, 29u)], 416i, -48823i, -1i))) << (~u_input.b.x % 32u), vec2<i32>(-(2147483647i | global0[_wgslsmith_index_u32(7761u, 29u)]), -(~2147483647i)), u_input.b.x), func_2(vec3<i32>(-(~(-30799i)), ~(i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(-2147483647i, 1i)), _wgslsmith_f_op_f32(-func_2(vec3<i32>(-22445i, -26792i, -2147483647i), true, -1612f).b.x) > 1661f, _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(global1.a.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(33278u, 29u)])), false, 2762f).b.x * _wgslsmith_f_op_f32(sign(-889f)))));
    let var_0 = true && (!(arg_0 & !arg_0) && !func_2(select(vec3<i32>(-26492i, global0[_wgslsmith_index_u32(16422u, 29u)], 20644i), vec3<i32>(global0[_wgslsmith_index_u32(37186u, 29u)], global0[_wgslsmith_index_u32(global1.a.x, 29u)], global0[_wgslsmith_index_u32(32359u, 29u)]), arg_0), any(vec4<bool>(false, arg_0, false, false)), -586f).a.x);
    let var_1 = vec2<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, 61664u), ~u_input.a), ~func_7(Struct_2(vec2<bool>(true, true), vec2<f32>(1149f, -1807f), global1.a.x), Struct_1(vec2<u32>(global1.a.x, global1.a.x)), Struct_2(vec2<bool>(arg_0, false), vec2<f32>(-1654f, 926f), 0u)).a.x), 29u)], ~global0[_wgslsmith_index_u32(~(~(u_input.a.x | 75339u)), 29u)]);
    let var_2 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(var_0, arg_0), vec2<bool>(true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1179f, _wgslsmith_f_op_f32(-1000f + -523f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(584f, 597f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(800f, -1141f))))), ~(~_wgslsmith_mult_u32(global1.a.x, global1.a.x)) & ~u_input.b.x);
    var var_3 = 1399f;
    return min(~global1.a.x, 56088u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false);
    let var_1 = global0[_wgslsmith_index_u32(~(~11638u >> (global1.a.x % 32u)), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-451f)), _wgslsmith_f_op_f32(-1122f - -434f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2266f, -291f)), 1472f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1023f, -274f, -322f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1318f, -122f, -647f) + vec3<f32>(-1716f, -1379f, -827f)))))));
}

