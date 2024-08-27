struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-35409i, i32(-2147483648), -1i, 12469i, 13109i, -30658i, -25017i, -3333i, i32(-2147483648), -5895i, -1i, -71212i, 34207i, -8470i, 1i, 2147483647i, 4355i, -13436i);

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f + -217f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), -2355f), -2342f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), -1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, global1.x))))), ~(1u >> (~(1u | u_input.c.x) % 32u)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec3<f32> {
    var var_0 = !vec4<bool>(true, _wgslsmith_f_op_f32(select(-1419f, _wgslsmith_f_op_f32(-762f + global1.x), true)) == _wgslsmith_f_op_f32(-global1.x), 2782f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 * -511f))), select(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), true, _wgslsmith_f_op_f32(-arg_1) >= -1945f));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-509f, -1626f) * vec2<f32>(-2965f, 772f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), vec2<f32>(-165f, 1213f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -302f), global1.x)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(global1.x, -456f), arg_1, arg_1), 0u);
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.x) < _wgslsmith_f_op_f32(-global1.x);
    let var_3 = Struct_2(min(u_input.b, _wgslsmith_mult_u32(~0u, var_1.b)), -firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.a, ~u_input.a, u_input.a)));
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = any(!vec3<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), false));
    let var_2 = Struct_2(_wgslsmith_mod_u32(arg_2, ~abs(48338u)), ~u_input.a);
    let var_3 = Struct_1(arg_3.a, var_0.b);
    let var_4 = func_2(~arg_1.b, ~6808i, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_2.b.x), vec2<i32>(~global2[_wgslsmith_index_u32(var_0.b, 8u)] >> (~var_3.b % 32u), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(9093u, 8u)], 41347i) ^ -48164i)));
    return countOneBits(4294967295u);
}

fn func_1() -> vec3<f32> {
    global0 = array<i32, 18>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1516f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, 676f))))))));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -351f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -2193f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(-2288f, global1.x), false))))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-810f + global1.x) * _wgslsmith_f_op_f32(max(208f, global1.x))), global1.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))))));
    var var_1 = _wgslsmith_div_u32(func_4(func_2(~min(u_input.c.x, u_input.c.x), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, -2147483647i), ~u_input.a.x), vec2<i32>(~(-2147483647i), global0[_wgslsmith_index_u32(~37445u, 18u)])), Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_u32(u_input.c.x, 41202u), _wgslsmith_div_f32(376f, -913f), 15909u)), ~u_input.b), u_input.b, func_2(4294967295u, 15528i, ~(u_input.a.wx << (vec2<u32>(0u, u_input.b) % vec2<u32>(32u))))), ~5941u);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(-1366f + -171f), global1.x);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>) -> vec2<f32> {
    global1 = arg_0.a.yx;
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(max(abs(-28787i), 17165i), firstTrailingBit(min(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(arg_0.b, 18u)]))), u_input.a.x), _wgslsmith_div_vec2_i32(firstLeadingBit(u_input.a.zx) & arg_2, select(~_wgslsmith_mod_vec2_i32(arg_2, vec2<i32>(u_input.a.x, global2[_wgslsmith_index_u32(0u, 8u)])), abs(max(u_input.a.wz, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_2.x))), true)));
    var var_1 = -arg_2;
    var var_2 = ~1i | u_input.a.x;
    let var_3 = select(select(vec3<bool>(true == any(vec3<bool>(false, false, false)), !any(vec2<bool>(false, true)), true), vec3<bool>(true, true || all(vec3<bool>(true, false, false)), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(arg_0.b, 8u)] != arg_2.x))), !vec3<bool>(_wgslsmith_div_f32(1526f, arg_0.a.x) == global1.x, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), all(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, true, false)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), true)));
    return _wgslsmith_f_op_vec2_f32(arg_0.a.zy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(arg_0.a.yx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) - vec2<f32>(-1000f, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)), global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(func_1()), 4294967295u | u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -943f), abs(firstLeadingBit(u_input.a.xx))))));
    global2 = array<i32, 8>();
    var var_0 = vec3<bool>(true, any(vec3<bool>(false | all(vec2<bool>(true, false)), false, false)), !(!(!select(true, true, true))));
    var var_1 = select(u_input.a.xz, u_input.a.xx, vec2<bool>(!any(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-125f - 1299f), _wgslsmith_f_op_f32(round(global1.x)))) == global1.x));
    var var_2 = Struct_2(~firstLeadingBit(~u_input.c.x), vec4<i32>(-1i, var_1.x, -_wgslsmith_sub_i32(~2147483647i, -12151i), firstTrailingBit(-u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(57249i, _wgslsmith_mult_vec3_u32(u_input.c ^ vec3<u32>(~4294967295u, ~4294967295u, ~1u), countOneBits(select(u_input.c, countOneBits(vec3<u32>(35514u, u_input.d, var_2.a)), select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x))))), ~vec4<u32>(1u, 23028u, ~25587u, ~44120u), vec4<i32>(_wgslsmith_div_i32(2147483647i, abs(var_2.b.x)), var_1.x, -14331i, _wgslsmith_mod_i32(u_input.a.x, -u_input.a.x)) & ~(~(~vec4<i32>(global2[_wgslsmith_index_u32(var_2.a, 8u)], 1i, -1i, 13703i))));
}

