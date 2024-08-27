struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1022f))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-121f, -1000f), _wgslsmith_f_op_f32(292f + -2360f)))))));
    var var_1 = 277f;
    var_0 = Struct_1(var_0.a);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 1106f) + vec2<f32>(-1204f, var_0.a)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, -599f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 129f) - vec2<f32>(var_0.a, -1000f)))))));
    return Struct_1(_wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-var_3.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = ~vec4<u32>(1u, ~max(_wgslsmith_dot_vec3_u32(u_input.a.yxy, u_input.a.yww), ~5819u), u_input.a.x, u_input.a.x);
    var_0 = vec4<u32>(u_input.a.x, countOneBits(firstTrailingBit(u_input.a.x << (u_input.a.x % 32u))), ~_wgslsmith_sub_u32(select(45826u, 4294967295u, false), select(4294967295u, var_0.x, false)), 14959u) >> (~firstLeadingBit(vec4<u32>(27807u, abs(4294967295u), var_0.x, _wgslsmith_add_u32(u_input.a.x, 45104u))) % vec4<u32>(32u));
    var var_1 = func_2();
    let var_2 = ~(~(~40374u));
    let var_3 = var_0.wwz;
    return !(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), true));
}

fn func_1() -> bool {
    global0 = array<i32, 32>();
    let var_0 = select(!select(vec4<bool>(true, true, true, true), func_3(func_2(), Struct_1(2098f)), true), select(vec4<bool>(true, select(false, false, false) && true, true, true), !func_3(Struct_1(-243f), func_2()), !(!any(vec3<bool>(true, false, true)))), true);
    var var_1 = vec3<i32>(54531i, _wgslsmith_dot_vec2_i32(vec2<i32>(-global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(25461u, 32u)]), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(17306u, 32u)], -22298i))), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(abs(u_input.a.x), 32u)], global0[_wgslsmith_index_u32(~(u_input.a.x | 1u), 32u)])) << (reverseBits(~u_input.a.zxy) % vec3<u32>(32u));
    var var_2 = 8426i;
    let var_3 = Struct_1(1715f);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = !arg_3;
    let var_1 = any(select(var_0.zy, func_3(Struct_1(132f), Struct_1(_wgslsmith_f_op_f32(-arg_0.a))).xy, arg_3.yy));
    return Struct_1(_wgslsmith_f_op_f32(trunc(arg_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(-636f);
    global0 = array<i32, 32>();
    let var_1 = func_4(func_4(Struct_1(1f), !((arg_1.a != arg_3.a) && true), u_input.a.ywz, vec3<bool>(false, false, true)), true, ~(~vec3<u32>(~u_input.a.x, 0u, max(1u, u_input.a.x))), vec3<bool>(true, true, true));
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -575f)), 331f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a, arg_3.a), vec2<f32>(arg_3.a, -999f), false)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.a, var_0.a))))))), vec2<f32>(567f, arg_1.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a)) * 687f))) * arg_2.a), -504f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-3248f + _wgslsmith_f_op_f32(func_5(Struct_1(-820f), func_4(Struct_1(_wgslsmith_div_f32(1765f, 1182f)), func_1(), vec3<u32>(u_input.a.x, u_input.a.x & u_input.a.x, _wgslsmith_mod_u32(4294967295u, u_input.a.x)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), Struct_1(-1316f), Struct_1(func_4(Struct_1(-681f), true, u_input.a.yxx, func_3(Struct_1(-893f), Struct_1(349f)).wwz).a))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2870f - _wgslsmith_f_op_f32(808f * 1442f)))));
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1519f)), any(vec3<bool>(true, true, true)), vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_div_u32(firstLeadingBit(min(75875u, 55123u)), ~_wgslsmith_sub_u32(u_input.a.x, 29987u))), func_3(Struct_1(_wgslsmith_f_op_f32(-func_4(Struct_1(-837f), true, u_input.a.wxx, vec3<bool>(true, false, false)).a)), Struct_1(1964f)).zwz);
    var var_2 = vec2<u32>(reverseBits(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(17907u, 0u, u_input.a.x), u_input.a.xxy), ~u_input.a.yyy)), 13859u);
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(min(max(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i) & vec2<i32>(-33194i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), ~vec2<i32>(2147483647i, -53719i), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(2205u, 32u)]))), ~(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(var_2.x, 32u)]))), ~min(vec2<i32>(-1i, 704i), vec2<i32>(55521i, global0[_wgslsmith_index_u32(4294967295u, 32u)])) | countOneBits(reverseBits(vec2<i32>(-35742i, global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))), ~reverseBits(_wgslsmith_sub_vec3_u32(u_input.a.xww, min(u_input.a.wxx, u_input.a.zzz))), vec2<i32>(-(i32(-1i) * -101186i), -global0[_wgslsmith_index_u32(57733u, 32u)]));
}

