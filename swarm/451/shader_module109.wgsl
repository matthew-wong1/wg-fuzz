struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global0 = array<vec2<u32>, 6>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-304f, 529f, 631f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, 503f, 175f) + vec3<f32>(-1522f, -591f, -303f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, 145f, 2051f) * vec3<f32>(-546f, 1188f, 324f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1496f, -746f, -2041f)), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(935f, -1335f, 1108f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-220f, -128f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-823f, 261f, 1735f) * vec3<f32>(-147f, -1243f, 308f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1675f)), vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xz - _wgslsmith_f_op_vec2_f32(-var_0.xx)))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(var_0.x, 548f))), true);
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    return all(select(!select(!vec3<bool>(true, false, var_1.c), vec3<bool>(var_1.c, var_1.c, true), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(false, true, var_1.c), vec3<bool>(false, var_1.c, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.c, true), true), vec3<bool>(true, true, true), var_1.c), vec3<bool>(select(false, true, true), true, var_1.c), !any(vec2<bool>(true, var_1.c))), !any(vec4<bool>(false, var_1.c, true, false))));
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)), -789f, true);
    global0 = array<vec2<u32>, 6>();
    let var_1 = select(vec3<bool>(all(vec3<bool>(var_0.c, !var_0.c, u_input.a <= 1u)), true, var_0.c), vec3<bool>(true, ~(~0u) != firstTrailingBit(1u), !var_0.c), !(!vec3<bool>(true, true, func_3())));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 1504f), 1f, any(select(!vec2<bool>(false, var_0.c), !vec2<bool>(arg_0.c, false), !var_1.xx)) && arg_0.c);
    global0 = array<vec2<u32>, 6>();
    return firstLeadingBit(~vec4<u32>(0u, u_input.a, select(firstLeadingBit(1u), _wgslsmith_add_u32(u_input.a, 51468u), true), u_input.a));
}

fn func_1() -> vec3<f32> {
    var var_0 = ~vec4<u32>(min(36129u, 21790u), u_input.a, u_input.a, _wgslsmith_clamp_u32(u_input.a & u_input.a, _wgslsmith_div_u32(8255u, u_input.a), u_input.a >> (u_input.a % 32u))) | ~(vec4<u32>(5402u, 1u, ~u_input.a, select(u_input.a, 0u, false)) << (func_2(Struct_1(vec2<f32>(-564f, 795f), 115f, false)) % vec4<u32>(32u)));
    let var_1 = true;
    var var_2 = _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(-6509i, 63752i)), ~vec2<i32>(-2147483647i, 1i)) | ~_wgslsmith_mult_vec2_i32(vec2<i32>(~10843i, ~32029i), max(vec2<i32>(1i, 1i), vec2<i32>(-1i, 57693i)));
    let var_3 = ~(-min(var_2.x, 63075i));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-295f, -1212f))), vec2<f32>(-379f, _wgslsmith_f_op_f32(max(-220f, 388f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-208f * -950f), -498f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-592f, _wgslsmith_f_op_f32(-714f + -1000f), any(select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, false, var_1), var_1)))) * _wgslsmith_f_op_f32(612f * _wgslsmith_f_op_f32(f32(-1f) * -437f))), all(select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, true, var_1), true), select(vec3<bool>(true, false, var_1), select(vec3<bool>(var_1, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, var_1)), select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, false, true), false)), var_1)));
    return vec3<f32>(var_4.a.x, 415f, var_4.a.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_2, Struct_1(vec2<f32>(arg_0.x, arg_0.x), -582f, arg_2.c));
    var var_1 = arg_2;
    global0 = array<vec2<u32>, 6>();
    var var_2 = ~(~vec2<u32>(1u, 15803u));
    global0 = array<vec2<u32>, 6>();
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(120f, -236f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, 562f)))), var_1.a), -195f, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-533f, 557f, 614f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1142f, -2302f, -1398f) * vec3<f32>(205f, -1000f, 178f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(112f, 2513f, -332f), vec3<f32>(-494f, 2039f, -412f))) - _wgslsmith_f_op_vec3_f32(func_1()))), vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(168f, 1556f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, -594f) + vec2<f32>(110f, -321f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(394f, 820f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f))), true && select(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b), var_0.b, -225f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 2423f, -1345f, var_0.b) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.x, var_0.b, var_0.a.x, var_0.a.x))))))));
    let var_2 = Struct_2(func_4(var_1.xyz, select(vec3<bool>(var_0.c, var_0.c, var_0.c), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_0.c), vec3<bool>(true, var_0.c, var_0.c), var_0.c), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, var_0.c, true), false)), select(select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(var_0.c, true, false), vec3<bool>(false, false, true)), !vec3<bool>(var_0.c, var_0.c, var_0.c), !vec3<bool>(true, true, var_0.c))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-395f + var_0.a.x), 632f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-463f + var_1.x) - _wgslsmith_div_f32(var_0.a.x, var_0.b)), var_0.c)), func_4(var_1.xzy, !vec3<bool>(func_3(), var_0.c, !var_0.c), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1785f, 133f)), var_1.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, 955f, false)) + -1220f), !var_0.c | var_0.c)));
    global0 = array<vec2<u32>, 6>();
    var_0 = var_2.a;
    let var_3 = ~u_input.a;
    var var_4 = ~u_input.a;
    var_0 = var_2.b;
    let var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_5, 2147483647i), vec2<i32>(var_5, -53104i)) | ~vec2<i32>(1i, 0i), ~(vec2<i32>(24299i, 2147483647i) | vec2<i32>(var_5, var_5)))), _wgslsmith_sub_i32(var_5 ^ 1i, var_5), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_3, 42773u) ^ vec3<u32>(1u, var_3, 4449u), vec3<u32>(var_3, u_input.a, var_3) << (vec3<u32>(u_input.a, var_3, u_input.a) % vec3<u32>(32u)), vec3<u32>(4294967295u, 9430u, u_input.a) ^ vec3<u32>(u_input.a, 0u, 0u))));
}

