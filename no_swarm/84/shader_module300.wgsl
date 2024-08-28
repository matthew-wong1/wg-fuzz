struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1652f, -759f, 1000f), vec3<f32>(499f, -480f, -2423f), vec3<f32>(-1360f, -1803f, -501f), vec3<f32>(-1044f, 1000f, 1000f), vec3<f32>(-618f, -1082f, -1044f), vec3<f32>(-1000f, 743f, 190f), vec3<f32>(1037f, 111f, 1000f), vec3<f32>(1579f, 334f, 987f), vec3<f32>(1000f, -678f, 996f), vec3<f32>(390f, 386f, -1000f), vec3<f32>(1517f, -1358f, -219f), vec3<f32>(-659f, -580f, 1050f), vec3<f32>(1896f, 432f, -1494f), vec3<f32>(485f, 660f, 270f));

var<private> global1: array<i32, 4>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(832f - _wgslsmith_div_f32(arg_1.x, 380f)))));
    let var_1 = (-_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b.x, -1i, -2147483647i, u_input.b.x), vec4<i32>(40788i, -65494i, global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(68528u, 4u)])), vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], -11745i, u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])) >> (_wgslsmith_mod_vec4_u32(u_input.a, ~u_input.d) % vec4<u32>(32u))) | reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -1i, 15691i, u_input.b.x), abs(vec4<i32>(16512i, u_input.b.x, 29044i, global1[_wgslsmith_index_u32(23603u, 4u)]))), 30748i, u_input.b.x, -(5391i >> (1u % 32u))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-747f)), _wgslsmith_f_op_f32(floor(-791f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1000f))) * arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(abs(arg_1.x)))));
    var var_3 = Struct_1(select(select(select(!vec4<bool>(arg_0, true, false, true), select(vec4<bool>(true, arg_0, arg_2, arg_2), vec4<bool>(true, arg_0, false, arg_2), vec4<bool>(false, arg_2, arg_0, true)), vec4<bool>(true, true, false, false)), !select(vec4<bool>(true, arg_0, false, false), vec4<bool>(true, arg_0, arg_0, true), arg_0), !select(false, true, true)), vec4<bool>(arg_0, arg_2, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.c, 4u)], -2147483647i) < -u_input.b.x, true), !(!select(vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(false, false, true, false), arg_0))), vec4<f32>(_wgslsmith_f_op_f32(435f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0, 1403f, false)), 334f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_2.x)), -495f))), 1f, var_0), -u_input.b.x);
    var var_4 = 626f;
    return vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, min(31106i, -3101i)), ~var_1.ww);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(select(-func_3(select(false, false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, 510f, -1084f, -119f) + vec4<f32>(401f, 839f, 1000f, -1096f)), true), u_input.b, all(vec3<bool>(true, true, true))), func_3(true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-647f)) * _wgslsmith_f_op_f32(max(1780f, -167f))), 485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(853f, -654f, false)) + 1068f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-322f, -1808f, false)))), !(true & any(vec3<bool>(false, true, false)))));
    global1 = array<i32, 4>();
    let var_1 = Struct_1(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-149f, -1744f, 1194f, 666f))))), var_0.x);
    let var_2 = var_1;
    var var_3 = Struct_1(!select(!var_2.a, select(!var_1.a, select(vec4<bool>(true, false, var_1.a.x, true), vec4<bool>(false, var_2.a.x, false, var_2.a.x), false), !var_2.a), any(!vec2<bool>(true, var_1.a.x))), var_2.b, ~firstLeadingBit(_wgslsmith_sub_i32(-global1[_wgslsmith_index_u32(29477u, 4u)], var_1.c)));
    return Struct_1(vec4<bool>(true, true, true || (var_1.b.x != 672f), true), var_3.b, ~_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(var_3.c, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), i32(-1i) * -24690i), u_input.b.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = ~(-abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(36833i, -1i, 2147483647i, u_input.b.x), vec4<i32>(-49430i, 13306i, 1i, 1655i)), min(vec4<i32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(9057u, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], 1i), vec4<i32>(-2147483647i, -7381i, -1i, -48048i)), vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, 23120i))));
    let var_1 = func_2();
    let var_2 = var_1.b.x;
    global1 = array<i32, 4>();
    return ~38632u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.d.x, u_input.c, _wgslsmith_dot_vec3_u32(u_input.a.zzy | vec3<u32>(95495u, u_input.a.x, u_input.d.x), vec3<u32>(1u, u_input.a.x, 1u)), reverseBits(_wgslsmith_mult_u32(u_input.a.x, 4294967295u))), ~vec4<u32>(firstLeadingBit(36993u), 1u, min(4294967295u, u_input.c), u_input.a.x)), ~vec3<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(18531i, u_input.b.x, 20592i, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.b.x, u_input.b.x)), -28542i), _wgslsmith_add_i32(-34014i, -26377i) >> (_wgslsmith_mult_u32(u_input.d.x, u_input.c) % 32u)), vec3<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c, 4u)], 1i), reverseBits(u_input.b.x) >> (func_1(vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(4294967295u, u_input.c))) % 32u), -global1[_wgslsmith_index_u32(u_input.a.x, 4u)] ^ _wgslsmith_sub_i32(u_input.b.x, -1i)) << (~((vec3<u32>(1u, 1u, u_input.d.x) << (u_input.d.yxz % vec3<u32>(32u))) ^ abs(vec3<u32>(u_input.c, 35846u, u_input.d.x))) % vec3<u32>(32u)));
}

