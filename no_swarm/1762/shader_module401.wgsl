struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-386f, 1000f, -214f, 1725f), vec4<f32>(207f, 1086f, -918f, 1000f), vec4<f32>(-145f, 1245f, -538f, -600f), vec4<f32>(1670f, 896f, 319f, -2008f), vec4<f32>(-182f, -671f, 107f, 465f), vec4<f32>(222f, 443f, -636f, -259f), vec4<f32>(1000f, -891f, 542f, -1355f), vec4<f32>(964f, -295f, 1000f, -2185f), vec4<f32>(558f, -1219f, 724f, 2315f), vec4<f32>(-460f, 305f, -1000f, -1000f), vec4<f32>(1000f, -1054f, -1090f, -1364f), vec4<f32>(-224f, -341f, -249f, 1596f), vec4<f32>(-1000f, -348f, 1412f, 1356f), vec4<f32>(-599f, -584f, 445f, -537f), vec4<f32>(579f, 1407f, -223f, -1000f), vec4<f32>(-1228f, 125f, 1000f, -386f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: i32) -> vec4<i32> {
    let var_0 = !(!(!vec3<bool>(all(vec4<bool>(true, arg_1, arg_1, true)), arg_1, !arg_1)));
    let var_1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-_wgslsmith_clamp_i32(-39408i, u_input.b, arg_2), (u_input.d << (u_input.c % 32u)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), vec2<i32>(2147483647i, u_input.d)), arg_2, arg_2)), vec4<i32>(_wgslsmith_div_i32(~u_input.e, _wgslsmith_mod_i32(u_input.e, ~arg_2)), select(-18214i, 13943i, !arg_1), -2147483647i, 481i));
    let var_2 = ~u_input.e;
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    return ((~reverseBits(var_1) & (_wgslsmith_sub_vec4_i32(vec4<i32>(25287i, var_2, 61670i, var_2), vec4<i32>(-182i, 0i, 14579i, 27640i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, var_1.x, 40720i), vec4<i32>(22233i, u_input.e, 0i, var_1.x), var_1))) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 26631u, u_input.c), reverseBits(vec4<u32>(u_input.a, u_input.c, 0u, u_input.a))) | ~(vec4<u32>(4294967295u, 19302u, 0u, u_input.a) >> (vec4<u32>(u_input.c, u_input.a, 11995u, u_input.c) % vec4<u32>(32u)))) % vec4<u32>(32u))) ^ var_1;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = 13944u;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(642f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-616f - -682f))))))), _wgslsmith_f_op_f32(sign(370f))));
    let var_2 = select(vec4<i32>(i32(-1i) * -5227i, ~u_input.e & u_input.d, ~u_input.b, u_input.e), -((vec4<i32>(u_input.e, 0i, u_input.e, u_input.b) & func_3(global0[_wgslsmith_index_u32(u_input.a, 16u)], arg_0, 18062i)) & (abs(vec4<i32>(u_input.b, 1i, u_input.d, u_input.b)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(5423u, u_input.c, var_0, 0u), vec4<u32>(55035u, 0u, 0u, u_input.c)) % vec4<u32>(32u)))), vec4<bool>(arg_0, true, ~var_0 <= ~firstTrailingBit(u_input.a), arg_0));
    global0 = array<vec4<f32>, 16>();
    global0 = array<vec4<f32>, 16>();
    return Struct_3(~min((vec2<u32>(0u, var_0) << (vec2<u32>(u_input.a, 42436u) % vec2<u32>(32u))) & (vec2<u32>(1u, var_0) << (vec2<u32>(1u, 32426u) % vec2<u32>(32u))), firstTrailingBit(~vec2<u32>(var_0, 35604u))), reverseBits(firstTrailingBit(0u)), firstTrailingBit(~(~vec4<u32>(var_0, u_input.c, u_input.c, 1u) << (vec4<u32>(20480u, 37348u, u_input.a, 86293u) % vec4<u32>(32u)))), true);
}

fn func_4(arg_0: Struct_4, arg_1: f32) -> vec3<f32> {
    global0 = array<vec4<f32>, 16>();
    var var_0 = arg_0;
    var var_1 = func_2(select(_wgslsmith_f_op_f32(-1f) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(max(arg_0.b, arg_0.b))), !var_0.a.d, !arg_0.a.d));
    var var_2 = ~_wgslsmith_sub_vec2_i32(func_3(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(arg_0.a.a.x, 16u)]), any(vec4<bool>(false, var_0.a.d, arg_0.a.d, var_1.d)), u_input.d).yw | -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.e), vec2<i32>(44549i, u_input.b), vec2<i32>(u_input.d, u_input.b)), -func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, var_0.b, var_0.b, -1000f))), var_1.d, u_input.d ^ u_input.e).xy);
    var var_3 = true || !select(!(!var_1.d), true, var_1.d);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 198f, 936f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, var_0.b, 766f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, -789f, var_0.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(525f, -1000f)), 1128f)) - vec3<f32>(-535f, arg_1, _wgslsmith_f_op_f32(step(var_0.b, var_0.b)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(max(108366u, ~39853u), 1u)), abs(~countOneBits(~arg_2.a.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(Struct_4(func_2(false), _wgslsmith_f_op_f32(abs(arg_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-1307f - 710f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b, arg_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1357f) + -523f)))));
    var var_2 = var_1;
    var var_3 = ~34697u >> ((~reverseBits(_wgslsmith_mod_u32(arg_1, 4294967295u)) | 39863u) % 32u);
    var var_4 = vec3<bool>(arg_2.a.d, any(!(!vec2<bool>(arg_2.a.d, false))), select(_wgslsmith_div_u32(5924u, 65912u) != ~arg_1, !(_wgslsmith_div_i32(u_input.b, 0i) < -u_input.d), !(~1u < (arg_1 >> (21200u % 32u)))));
    return 12824u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~(~(~vec2<u32>(1u, u_input.a))), ~1u, vec4<u32>(u_input.a, ~(~abs(u_input.a)), 1u, firstLeadingBit(func_1(4294967295u <= u_input.a, _wgslsmith_mult_u32(20538u, 1785u), Struct_4(Struct_3(vec2<u32>(u_input.a, 54512u), u_input.c, vec4<u32>(u_input.c, 4294967295u, 4294967295u, 30077u), false), 1010f)))), !select(true, true, any(vec4<bool>(true, false, true, true))) && any(vec4<bool>(true, select(true, false, false), false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

