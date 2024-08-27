struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<u32, 20>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = abs((select(~vec2<u32>(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(8550u, 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20073u, 20u)], 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)]), !vec2<bool>(true, global1.a)) | (_wgslsmith_div_vec2_u32(vec2<u32>(1u, global2[_wgslsmith_index_u32(74083u, 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(8522u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15486u, 20u)], 20u)])) >> (vec2<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 20u)]) % vec2<u32>(32u)))) ^ (vec2<u32>(~global2[_wgslsmith_index_u32(1u, 20u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)]) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(24511u, global2[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(19820u, 20u)], 1u), vec2<u32>(35238u, 64665u)) % vec2<u32>(32u))));
    var var_1 = Struct_1(all(!select(vec4<bool>(false, true, false, true), vec4<bool>(global1.a, true, true, global1.a), false)) | true, vec3<i32>(u_input.a, -min(u_input.a, global1.b.x) ^ global1.b.x, ~(-24696i)));
    global1 = Struct_1(any(!(!vec4<bool>(false, global1.a, var_1.a, global1.a))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.b.x, -29408i, global1.b.x) << (vec3<u32>(global2[_wgslsmith_index_u32(0u, 20u)], 1u, 4294967295u) % vec3<u32>(32u)), select(global1.b, global1.b, select(vec3<bool>(global1.a, false, false), vec3<bool>(false, true, true), false)), vec3<i32>(-2147483647i, u_input.a & 0i, -14047i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f - _wgslsmith_f_op_f32(-204f + 796f)) * _wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(round(-582f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2358f + 2212f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(480f)) + _wgslsmith_f_op_f32(min(359f, 422f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(227f, 608f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(265f - 205f))), _wgslsmith_f_op_f32(1367f * -1173f))));
    var var_3 = Struct_1(!global1.a && all(!select(vec4<bool>(true, false, global1.a, false), vec4<bool>(false, var_1.a, false, true), true)), vec3<i32>(~(~(50497i & global1.b.x)), reverseBits(u_input.a), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(var_1.b, var_1.b)), -vec3<i32>(68241i, 0i, -19663i))));
    return !vec3<bool>(any(!(!vec3<bool>(var_3.a, global1.a, false))), !all(!vec2<bool>(var_1.a, global1.a)), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_add_u32(arg_1, 4294967295u);
    let var_1 = true;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-617f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-331f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(180f, -1000f), -751f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-683f))))));
    let var_3 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(select(~vec3<u32>(23644u, var_0, 32930u), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(59315u, var_0, global2[_wgslsmith_index_u32(0u, 20u)])), ~vec3<u32>(var_0, 4294967295u, var_0)), false)), vec3<u32>(_wgslsmith_add_u32(68626u >> (global2[_wgslsmith_index_u32(firstLeadingBit(39960u), 20u)] % 32u), firstTrailingBit(var_0)), var_0, global2[_wgslsmith_index_u32(1u, 20u)]), min(vec3<u32>(0u, 33920u, ~reverseBits(arg_1)), vec3<u32>(4294967295u, var_0, _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0, global2[_wgslsmith_index_u32(29223u, 20u)]), var_0 ^ arg_1))));
    var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(889f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1845f * -2097f) - var_2.x)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2299f, -875f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, 1205f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, var_2.x) * vec2<f32>(203f, 746f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(var_2.x, var_2.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-640f, var_2.x)) * vec2<f32>(_wgslsmith_div_f32(-769f, var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-158f, 955f)), vec2<f32>(981f, -2712f), !var_1)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, 2682f)))))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-346f, 232f)), -206f))))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-103f, 493f))), 257f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1303f, -400f) - vec2<f32>(-1159f, 1257f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(852f, -923f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1193f, 137f) - vec2<f32>(114f, -1473f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-780f, -1896f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -819f), _wgslsmith_div_vec2_f32(vec2<f32>(-195f, 139f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1722f, 1327f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_4(!select(func_3(), !vec3<bool>(false, global1.a, global1.a), !(!vec3<bool>(global1.a, global1.a, false))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(1u, global2[_wgslsmith_index_u32(49315u, 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70424u, 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24985u, 20u)], 20u)], 20u)]) % vec2<u32>(32u)), select(global1.a, global1.a, global1.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(58479u, 0u), ~vec2<u32>(4294967295u, 4294967295u))), max(vec2<u32>(17624u, 20535u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(65263u, 20u)], 20u)], 17690u))))));
    var var_2 = select(vec2<bool>(global1.a || false, any(select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, true, global1.a), !vec3<bool>(false, global1.a, global1.a)))), vec2<bool>(all(!vec3<bool>(true, global1.a, global1.a)) & any(vec3<bool>(true, true, true)), (true != all(vec4<bool>(global1.a, false, global1.a, global1.a))) & false), !all(func_3().xy));
    return Struct_1(true, ~(~vec3<i32>(u_input.a | u_input.a, u_input.a, _wgslsmith_clamp_i32(global1.b.x, 6287i, 0i))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -(-(~vec3<i32>(global1.b.x, -1i, global1.b.x)) & -abs(vec3<i32>(-10890i, u_input.a, -47241i) | vec3<i32>(1i, -16419i, arg_1.b.x)));
    var_0 = -(vec3<i32>(_wgslsmith_sub_i32(global1.b.x, u_input.a), 0i, -4919i >> (arg_0 % 32u)) ^ global1.b) << (~vec3<u32>(abs(firstLeadingBit(0u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u) ^ vec2<u32>(11727u, arg_0), ~vec2<u32>(0u, 35326u)), 20u)], _wgslsmith_mod_u32(~10493u, 1u)) % vec3<u32>(32u));
    let var_1 = !vec4<bool>((all(vec4<bool>(global1.a, arg_1.a, false, true)) || any(vec2<bool>(arg_1.a, global1.a))) == false, var_0.x < 2147483647i, false, global1.a);
    global1 = func_2();
    let var_2 = ~max(~(_wgslsmith_clamp_i32(26503i, 32759i, global1.b.x) & -u_input.a), 0i);
    return Struct_1(!(~0u == _wgslsmith_add_u32(35147u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12435u, 50381u), vec3<u32>(global2[_wgslsmith_index_u32(79862u, 20u)], global2[_wgslsmith_index_u32(14820u, 20u)], 31044u)))), _wgslsmith_sub_vec3_i32(global1.b, vec3<i32>(-1567i, ~(-1004i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(-70136i, var_2), arg_1.b.zz), vec2<i32>(arg_1.b.x, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1132f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(f32(-1f) * -1227f), true)), -1176f, select(true, global1.a, true)))), _wgslsmith_f_op_f32(min(-2974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f * _wgslsmith_div_f32(-1000f, 751f)))))));
    let var_1 = func_1(69570u, Struct_1(global1.a, vec3<i32>(abs(-12186i), u_input.a, firstLeadingBit(u_input.a)) | -vec3<i32>(-31662i, global1.b.x, 78632i)));
    let var_2 = func_2();
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -5437i, global1.b.x, ~1i | max(var_2.b.x, 0i)), vec3<i32>(select(var_1.b.x, ~(-5292i), func_3().x), _wgslsmith_div_i32(global1.b.x, 0i), var_2.b.x)) ^ -firstLeadingBit(global1.b);
    var var_4 = -(select(1i, 0i, !global1.a) ^ _wgslsmith_div_i32(abs(~(-8241i)), -11325i));
    var var_5 = global2[_wgslsmith_index_u32(0u, 20u)];
    let var_6 = !vec3<bool>(true, !global1.a, _wgslsmith_clamp_u32(min(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(132192u, 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)], 20u)]), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52365u, 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55998u, 20u)], 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17952u, 20u)], 20u)], 20u)], 20u)]))) >= max(global2[_wgslsmith_index_u32(47834u, 20u)] >> (0u % 32u), firstLeadingBit(27692u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -560f, -385f), vec3<f32>(536f, -3203f, 1925f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, 1134f)))), vec4<i32>(countOneBits(-(var_1.b.x << (global2[_wgslsmith_index_u32(0u, 20u)] % 32u))), ~max(var_1.b.x & -8858i, i32(-1i) * -2147483647i), u_input.a, _wgslsmith_div_i32(53454i, func_1(1u, func_2()).b.x)));
}

