struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(2147483647i, -1i, 15934i, -1i, i32(-2147483648), -1i, 1i, -30228i, -15763i, -55196i, -7746i, -21033i, -10175i, -11881i);

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(2147483647i, -1i, 58991i), vec3<i32>(1i, -1i, 7191i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(521i, -38886i, 1i), vec3<i32>(0i, -34760i, 0i), vec3<i32>(i32(-2147483648), -2818i, i32(-2147483648)), vec3<i32>(-2399i, 12339i, 31645i), vec3<i32>(-3744i, -36090i, -13621i), vec3<i32>(-25432i, 2147483647i, i32(-2147483648)), vec3<i32>(-2963i, -5478i, 2147483647i), vec3<i32>(0i, 0i, 0i), vec3<i32>(2147483647i, 12109i, -31035i), vec3<i32>(19242i, -19934i, -39186i), vec3<i32>(-4744i, 19582i, -21167i), vec3<i32>(36241i, -36072i, -23455i), vec3<i32>(10425i, -31085i, -24635i), vec3<i32>(25882i, 17544i, 0i), vec3<i32>(1i, 0i, 0i), vec3<i32>(-18044i, -14797i, 1i), vec3<i32>(2147483647i, 0i, -19177i), vec3<i32>(53656i, -24214i, i32(-2147483648)), vec3<i32>(2147483647i, 27710i, 1i), vec3<i32>(-18861i, i32(-2147483648), 8494i), vec3<i32>(1i, 0i, 14368i), vec3<i32>(25033i, 0i, i32(-2147483648)), vec3<i32>(10615i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, -1i, -29597i), vec3<i32>(20634i, i32(-2147483648), -1i));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    return arg_0.x & arg_0.x;
}

fn func_2() -> i32 {
    global1 = array<vec3<i32>, 28>();
    let var_0 = !vec3<bool>(_wgslsmith_sub_u32(~u_input.a, u_input.b.x & u_input.a) <= ~func_3(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), 1u, vec3<bool>(false, false, true), false), ~_wgslsmith_div_u32(u_input.b.x, u_input.a) < _wgslsmith_clamp_u32(1u, u_input.a, 0u), false);
    var var_1 = select(vec4<bool>(var_0.x, !all(select(var_0, vec3<bool>(var_0.x, true, var_0.x), true)), !all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0, var_0)), var_0.x | !(!var_0.x)), !vec4<bool>(~u_input.a > max(u_input.b.x, 3972u), false, _wgslsmith_dot_vec4_i32(vec4<i32>(-26950i, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -29619i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], 1i, -27130i, global0[_wgslsmith_index_u32(1u, 14u)])) <= ~(-1i), select(all(var_0.yy), true, var_0.x)), vec4<bool>(all(var_0.yy), var_0.x, var_0.x, true));
    var_1 = select(vec4<bool>(all(!(!vec3<bool>(var_0.x, var_1.x, var_1.x))), var_1.x, var_1.x, any(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_1.x, true, var_0.x, var_1.x), vec4<bool>(true, false, var_1.x, true)))), !select(!select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, false, var_0.x), vec4<bool>(false, var_1.x, true, true)), !select(vec4<bool>(var_1.x, true, false, var_0.x), vec4<bool>(var_0.x, false, var_1.x, var_1.x), vec4<bool>(false, true, false, var_1.x)), false), u_input.a > u_input.b.x);
    var var_2 = Struct_4(u_input.a);
    return _wgslsmith_mult_i32(0i, global0[_wgslsmith_index_u32(0u ^ u_input.a, 14u)]);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_5 {
    let var_0 = -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_2.a.x, 14u)], (i32(-1i) * -global0[_wgslsmith_index_u32(arg_1.a.x, 14u)]) ^ func_2());
    global1 = array<vec3<i32>, 28>();
    let var_1 = ~firstTrailingBit(abs(~vec4<u32>(50885u, arg_2.a.x, 4294967295u, 49364u)));
    let var_2 = 3996i;
    var var_3 = Struct_2(arg_2, var_1);
    return Struct_5(Struct_3(Struct_1(countOneBits(abs(arg_2.a)), select(select(var_3.a.b, vec3<bool>(arg_3, var_3.a.b.x, true), var_3.a.b.x), vec3<bool>(false, var_3.a.b.x, arg_3), arg_2.b)), arg_2.b, !vec2<bool>(global0[_wgslsmith_index_u32(83554u, 14u)] > -23989i, false), max(arg_1.a.x, ~(~arg_0.x))), firstLeadingBit(global1[_wgslsmith_index_u32(firstTrailingBit(100305u), 28u)]), max(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.a, arg_0), vec2<u32>(16622u, 4294967295u), ~arg_0), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.a.a.x, 1u), vec2<u32>(4294967295u, u_input.a)) | min(arg_0, vec2<u32>(23987u, u_input.a))) | vec2<u32>(abs(var_3.a.a.x), _wgslsmith_add_u32(108030u, arg_2.a.x) & var_1.x), countOneBits(~(~(~vec3<u32>(17453u, arg_1.a.x, 29038u)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), 542f)))), _wgslsmith_div_f32(-559f, arg_0.x));
    var var_1 = vec2<bool>(arg_3.a.b.x, arg_3.a.a.b.x);
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-993f)))) <= -1611f, arg_2.b.x);
    var_1 = !arg_2.b.xx;
    let var_2 = Struct_2(arg_3.a.a, ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 23596u, 4043u)), u_input.a), u_input.b.x, min(~4657u, ~arg_2.a.x), ~u_input.b.x));
    return -976f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-857f, 445f)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), vec3<u32>(1u, 6440u, 1u), u_input.b.zzy), Struct_1(vec2<u32>(u_input.b.x, 43597u), vec3<bool>(false, false, false)), func_1(u_input.b.wx, Struct_1(vec2<u32>(43803u, 1u), vec3<bool>(true, false, true)), Struct_1(u_input.b.yz, vec3<bool>(false, true, false)), false))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(904f, 2205f) * vec2<f32>(-1000f, -1272f)), vec3<u32>(u_input.a, 26012u, u_input.b.x), func_1(u_input.b.wz, Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(1u, u_input.a), vec3<bool>(false, false, false)), true).a.a, func_1(u_input.b.zw, Struct_1(vec2<u32>(0u, u_input.a), vec3<bool>(true, true, true)), Struct_1(u_input.b.xx, vec3<bool>(false, true, false)), false)))) > _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1557f, -1625f, false))))) & ((false | any(vec2<bool>(true, true))) || true);
    let var_1 = global0[_wgslsmith_index_u32(min(max(_wgslsmith_mod_u32(func_1(_wgslsmith_clamp_vec2_u32(u_input.b.wz, u_input.b.xw, vec2<u32>(u_input.b.x, u_input.a)), func_1(vec2<u32>(u_input.a, u_input.b.x), Struct_1(vec2<u32>(26437u, 1u), vec3<bool>(var_0, true, var_0)), Struct_1(u_input.b.yy, vec3<bool>(true, true, var_0)), var_0).a.a, Struct_1(u_input.b.yx, vec3<bool>(true, false, var_0)), var_0).d.x, u_input.a), _wgslsmith_mod_u32(u_input.a, ~(~u_input.b.x))), abs(~(~firstLeadingBit(33581u)))), 14u)];
    var var_2 = func_1(_wgslsmith_sub_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, u_input.a))), ~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.a, u_input.a)), ~u_input.b.xx)), Struct_1(~(u_input.b.zy & ~u_input.b.zy), select(!select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, true, var_0), var_0), vec3<bool>(any(vec2<bool>(false, var_0)), true, var_0), vec3<bool>(0u <= u_input.a, var_0, var_0 & var_0))), func_1(abs(max(~u_input.b.zy, vec2<u32>(u_input.a, u_input.a))), func_1(abs(select(u_input.b.zw, u_input.b.yy, vec2<bool>(var_0, true))), Struct_1(~vec2<u32>(u_input.a, u_input.b.x), func_1(vec2<u32>(u_input.b.x, 64041u), Struct_1(u_input.b.zw, vec3<bool>(true, var_0, false)), Struct_1(vec2<u32>(0u, u_input.a), vec3<bool>(var_0, var_0, true)), true).a.b), func_1(_wgslsmith_div_vec2_u32(vec2<u32>(28783u, 1u), u_input.b.yx), Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<bool>(var_0, var_0, var_0)), func_1(vec2<u32>(30947u, u_input.a), Struct_1(u_input.b.yx, vec3<bool>(false, var_0, false)), Struct_1(u_input.b.wz, vec3<bool>(var_0, false, var_0)), true).a.a, true).a.a, true).a.a, Struct_1(vec2<u32>(u_input.a, u_input.a), !func_1(vec2<u32>(41859u, u_input.b.x), Struct_1(u_input.b.wz, vec3<bool>(true, var_0, var_0)), Struct_1(vec2<u32>(u_input.a, u_input.b.x), vec3<bool>(true, false, var_0)), false).a.a.b), false).a.a, true);
    global1 = array<vec3<i32>, 28>();
    let var_3 = _wgslsmith_f_op_f32(299f - _wgslsmith_f_op_f32(f32(-1f) * -332f));
    var_2 = Struct_5(var_2.a, vec3<i32>(-1i) * -(-global1[_wgslsmith_index_u32(17831u, 28u)] & (vec3<i32>(var_2.b.x, 27525i, 915i) << (vec3<u32>(u_input.b.x, 4294967295u, 0u) % vec3<u32>(32u)))), _wgslsmith_mod_vec2_u32(vec2<u32>(1115u, ~u_input.a), _wgslsmith_add_vec2_u32(~(~var_2.a.a.a), ~(var_2.a.a.a >> (var_2.c % vec2<u32>(32u))))), vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 28785u, var_2.d.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 50554u, 1u), u_input.b) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 0u, var_2.d.x, u_input.a)), _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_2.a.d, 4294967295u, 18173u, var_2.d.x)))), _wgslsmith_add_u32(u_input.b.x, 38422u), ~abs(var_2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b.x, abs(~min(min(vec2<i32>(0i, 1i), var_2.b.xy), abs(var_2.b.zx))));
}

