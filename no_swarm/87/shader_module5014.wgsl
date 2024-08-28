struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-600f, -317f, -380f, -1375f)))), 1f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(firstTrailingBit(10824u), 1u)] + vec2<f32>(934f, 292f)) - global0[_wgslsmith_index_u32(8673u, 1u)])), Struct_2(_wgslsmith_mult_i32(abs(abs(1i)), -2147483647i), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1253f, 1055f, -659f, 211f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-944f, -1839f, -603f, -2994f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -607f)), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 1u)] + global0[_wgslsmith_index_u32(13018u, 1u)]))), true, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, i32(-1i) * -50656i)), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(39819i, 23435i), vec2<i32>(-1i, u_input.a.x), u_input.a.xz) & -u_input.a.xx)), Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1669f, -222f, 508f, 1538f) + vec4<f32>(621f, 1000f, -1510f, 1967f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-853f, -1482f, 894f, -779f)))), 940f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(34061u, 1u)])))));
    let var_1 = var_0.b.b;
    global0 = array<vec2<f32>, 1>();
    let var_2 = var_0.e;
    let var_3 = firstTrailingBit(-_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_mult_i32(1i, 14715i), firstTrailingBit(var_2.a)), _wgslsmith_sub_i32(~1i, u_input.a.x)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_2.b.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_2.b.c, vec2<f32>(-1691f, 284f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_0.a.a.x), vec2<f32>(-263f, var_2.b.b)), var_0.c))))), vec2<f32>(var_0.a.a.x, -1484f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(func_3()), arg_0, 43622u, !vec3<bool>(false, !all(vec3<bool>(false, false, true)), any(select(vec4<bool>(arg_1.d.x, arg_1.e.x, true, true), vec4<bool>(arg_1.e.x, arg_1.d.x, false, arg_1.e.x), arg_1.d.x))), vec2<bool>(any(!(!vec3<bool>(arg_1.d.x, arg_1.d.x, true))), arg_1.e.x));
    let var_2 = vec2<i32>(var_0, u_input.a.x);
    global0 = array<vec2<f32>, 1>();
    var var_3 = select(vec4<bool>(1u == var_1.c, any(!select(vec4<bool>(var_1.d.x, var_1.e.x, var_1.d.x, false), vec4<bool>(true, arg_1.e.x, true, false), false)), all(vec3<bool>(true, true, true)) | true, false), vec4<bool>(!arg_1.d.x, !(!(var_0 <= 31847i)), arg_1.d.x, false), var_1.e.x);
    return Struct_1(vec4<f32>(arg_0.b, _wgslsmith_f_op_vec2_f32(func_3()).x, -427f, _wgslsmith_f_op_f32(-var_1.b.a.x)), -1015f, _wgslsmith_f_op_vec2_f32(max(arg_0.a.xy, _wgslsmith_f_op_vec2_f32(arg_0.c + vec2<f32>(1587f, _wgslsmith_f_op_f32(f32(-1f) * -907f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_4) -> f32 {
    var var_0 = vec4<bool>(arg_3.e.x, !(~arg_3.c > ~firstLeadingBit(arg_3.c)), any(!select(arg_3.d.zx, select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(arg_3.d.x, false))), true);
    var_0 = vec4<bool>((_wgslsmith_div_i32(-24357i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x), vec4<i32>(arg_0, arg_0, 2147483647i, u_input.a.x))) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 89370i, 2147483647i, -2147483647i), vec4<i32>(u_input.a.x, 2147483647i, -72173i, arg_0)), 2147483647i & arg_0, 685i)) != u_input.a.x, !all(!select(vec4<bool>(var_0.x, true, arg_3.e.x, true), vec4<bool>(false, false, true, var_0.x), arg_3.d.x)), true, arg_2.x);
    global0 = array<vec2<f32>, 1>();
    let var_1 = -1620f;
    var var_2 = vec2<bool>(false, arg_2.x || true);
    return -222f;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = u_input.a >> (vec3<u32>(_wgslsmith_mult_u32(~41508u & ~arg_2, ~arg_2), 41342u, ~(~arg_2)) % vec3<u32>(32u));
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-468f)) + 456f), _wgslsmith_f_op_f32(func_4(-19126i, func_2(Struct_1(vec4<f32>(786f, 1000f, 144f, 431f), -2120f, global0[_wgslsmith_index_u32(arg_2, 1u)]), Struct_4(global0[_wgslsmith_index_u32(arg_2, 1u)], Struct_1(vec4<f32>(-349f, -1146f, -225f, -976f), -2424f, vec2<f32>(-1343f, 615f)), 4294967295u, vec3<bool>(true, false, false), vec2<bool>(true, false)), Struct_1(vec4<f32>(1886f, -302f, 1365f, 430f), -1645f, vec2<f32>(-2072f, 1366f))), vec2<bool>(false, arg_1), Struct_4(vec2<f32>(-585f, -751f), Struct_1(vec4<f32>(932f, 399f, -609f, 1000f), -239f, global0[_wgslsmith_index_u32(4294967295u, 1u)]), arg_2, vec3<bool>(true, arg_1, true), vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(143f, -1196f))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1022f, -1000f, -101f, 886f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(975f, 567f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(var_0.x, Struct_1(vec4<f32>(1579f, -1945f, -775f, 129f), -1782f, global0[_wgslsmith_index_u32(1u, 1u)]), vec2<bool>(arg_1, true), Struct_4(global0[_wgslsmith_index_u32(24965u, 1u)], Struct_1(vec4<f32>(265f, 1057f, 1033f, 220f), -1313f, vec2<f32>(-1000f, 803f)), 0u, vec3<bool>(true, true, false), vec2<bool>(arg_1, arg_1))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(arg_2, 1u)])))), ~firstLeadingBit(reverseBits(max(arg_2, arg_2))), vec3<bool>(false, any(select(select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), true), !vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, false, arg_1), arg_1))), false), select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), true), _wgslsmith_mod_u32(arg_2, 0u) <= abs(arg_2)), true));
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    let var_2 = ~var_0.x;
    return Struct_1(var_1.b.a, 294f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1322f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 1>();
    let var_0 = Struct_3(func_1(~((vec4<i32>(21012i, u_input.a.x, -15660i, u_input.a.x) >> (vec4<u32>(45602u, 25671u, 20543u, 25363u) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.a.x, 2147483647i, 14557i, u_input.a.x)), true, ~8183u), Struct_2(u_input.a.x, func_1(-firstLeadingBit(vec4<i32>(-1i, u_input.a.x, -63030i, u_input.a.x)), true, 5930u)), true, u_input.a.x, Struct_2(14452i, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-550f, -202f, 1430f, 626f)))), 291f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1183f, 1656f) - _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(36191u, 1u)])))));
    var var_1 = var_0.c;
    global0 = array<vec2<f32>, 1>();
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(countOneBits(~vec2<u32>(1u, 1u)), ~(~vec2<u32>(1u, 1u))), 1u);
    let var_3 = u_input.a.x >> (~(~80814u) % 32u);
    let var_4 = Struct_2(max(_wgslsmith_add_i32(_wgslsmith_div_i32(~(-18776i), u_input.a.x), var_0.d), _wgslsmith_div_i32(1i, u_input.a.x)), var_0.e.b);
    var var_5 = !var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i, ~(-_wgslsmith_mod_i32(u_input.a.x, 23928i)), select(0i << (var_2 % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.a.xy), true)));
}

