struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 3>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    return !vec3<bool>(false, true, arg_1.b.x);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> vec2<f32> {
    let var_0 = !select(!(!vec4<bool>(true, arg_1.x, false, true)), vec4<bool>(true, true, !arg_1.x, arg_1.x), vec4<bool>(!arg_1.x, !(true & arg_1.x), true, !(arg_1.x & true)));
    var var_1 = select(select(vec4<bool>(false, false, arg_1.x && true, true), var_0, vec4<bool>(var_0.x, ~2147483647i != u_input.a.x, arg_1.x, var_0.x)), !vec4<bool>(var_0.x, arg_1.x, all(!vec4<bool>(arg_1.x, var_0.x, false, arg_1.x)), var_0.x), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1693f, 127f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(266f * arg_2))), -1030f, -307f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, arg_2, 932f, arg_2) + vec4<f32>(arg_2, 636f, -1885f, 505f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_2, arg_2, arg_2)))))));
    let var_3 = Struct_2(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(34964u, 47706u, 68968u, 11645u)), vec4<u32>(108347u, 0u, 0u, 0u)), ~reverseBits(vec4<u32>(76871u, 0u, 36317u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(11505u, 1u, 1u, 20256u), _wgslsmith_clamp_vec4_u32(vec4<u32>(46162u, 15037u, 15944u, 7869u), vec4<u32>(21761u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 36262u, 4294967295u, 38004u)))), var_0.zz);
    var var_4 = Struct_4(global2[_wgslsmith_index_u32(0u, 3u)], var_2.x, ~var_3.a.wzx, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~_wgslsmith_mod_u32(var_3.a.x, 1u)), max(countOneBits(var_3.a.ww), firstTrailingBit(vec2<u32>(19053u, 11141u)) | ~vec2<u32>(49146u, 1u))), 3u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f * arg_2)) >= arg_2));
    return var_2.zz;
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(select(_wgslsmith_mod_vec2_u32(firstLeadingBit(abs(arg_1.c.a.yy)), (vec2<u32>(arg_1.c.a.x, 58997u) << (vec2<u32>(arg_1.c.a.x, arg_1.c.a.x) % vec2<u32>(32u))) << (vec2<u32>(arg_1.c.a.x, 11382u) % vec2<u32>(32u))), ~arg_1.c.a.wy, !func_1(vec3<i32>(0i, 0i, arg_0), Struct_2(arg_1.c.a, vec2<bool>(true, false)), arg_1.c.a.x).xy), ~(vec2<u32>(7985u, ~arg_1.c.a.x) | _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c.a.x, arg_1.c.a.x), vec2<u32>(arg_1.c.a.x, arg_1.c.a.x) >> (vec2<u32>(arg_1.c.a.x, arg_1.c.a.x) % vec2<u32>(32u)))));
    let var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, reverseBits(arg_1.c.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(48108u, 83018u), max(vec2<u32>(arg_1.c.a.x, 1u), vec2<u32>(var_0.x, 79143u))), min(vec2<u32>(47704u, var_0.x), vec2<u32>(4294967295u, 0u)) | vec2<u32>(arg_1.c.a.x, arg_1.c.a.x)) ^ vec2<u32>(var_0.x, arg_1.c.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_add_u32(~0u, _wgslsmith_div_u32(arg_1.c.a.x, 25091u)), max(~var_0.x, ~1u)), abs(vec3<u32>(var_0.x, abs(57019u), var_0.x))), Struct_1(arg_1.d.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(264f)), arg_1.a.x, 450f, _wgslsmith_f_op_f32(max(-1248f, _wgslsmith_f_op_f32(-433f - arg_1.a.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, arg_1.b.x, 684f, -611f)), vec4<f32>(_wgslsmith_f_op_f32(select(1506f, -652f, true)), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(sign(arg_1.b.x)), arg_1.a.x)))));
    var var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.yy), var_2.yw) - var_2.zy)), var_2.wwy, Struct_2(~arg_1.c.a, vec2<bool>(false, arg_1.c.b.x)), arg_1.d);
    global2 = array<Struct_3, 3>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1570f);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_4(u_input.a.x, Struct_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1051f, _wgslsmith_f_op_f32(-1000f + 553f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(-2147483647i, arg_2, -326f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, -359f))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-561f, 629f, -796f))), Struct_2(~min(vec4<u32>(arg_0.x, 7132u, 0u, arg_0.x), vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x)), vec2<bool>(!arg_1, true)), vec4<bool>(true, true, !select(arg_2.x, arg_1, false), arg_1)), arg_1));
    var var_1 = Struct_2(~vec4<u32>(~(~36521u), reverseBits(1u), 11827u, countOneBits(reverseBits(58789u))), arg_2.xz);
    let var_2 = false;
    var_1 = Struct_2(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a, var_1.a), var_1.a | vec4<u32>(17349u, 1u, var_1.a.x, 3104u)) << (~countOneBits(var_1.a) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(18176u, arg_0.x, var_1.a.x, 70309u))), vec2<bool>(any(select(select(vec2<bool>(arg_1, false), var_1.b, vec2<bool>(arg_2.x, true)), !vec2<bool>(arg_1, true), arg_2.xx)), true));
    global0 = array<vec4<i32>, 6>();
    return Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, var_0)))))), vec3<f32>(1010f, _wgslsmith_f_op_f32(select(-336f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(924f + var_0))), select(any(vec4<bool>(arg_1, var_2, true, var_1.b.x)), true, var_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1765f + var_0)))), Struct_2(~var_1.a, !vec2<bool>(var_0 < var_0, true)), !vec4<bool>(any(vec3<bool>(false, false, false)), !(!var_2), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~vec3<u32>(firstTrailingBit(~75119u), ~1u, ~min(9603u, 5504u)), all(vec2<bool>(true, true)), func_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2050i, u_input.a.x) ^ vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<i32>(22351i, 2147483647i, -1i))), Struct_2(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), vec2<bool>(true, true)), 1u));
    var var_1 = var_0.a.x;
    var var_2 = Struct_1(!(!(var_0.c.b.x && true)));
    global1 = var_0.c.a.x;
    global2 = array<Struct_3, 3>();
    global0 = array<vec4<i32>, 6>();
    global2 = array<Struct_3, 3>();
    var var_3 = _wgslsmith_mult_u32(~var_0.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~var_0.c.a.x, 0u, 1u), var_0.c.a.zxz));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.x, u_input.a.x);
}

