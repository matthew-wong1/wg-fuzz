struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(1318f), Struct_1(-130f), Struct_1(-807f), Struct_1(898f), Struct_1(1000f), Struct_1(-272f), Struct_1(-228f), Struct_1(-1125f), Struct_1(1096f));

var<private> global2: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_1, 9>();
    global0 = select(~(-(~(~(-73234i)))), i32(-1i) * -45207i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstTrailingBit(-16019i), abs(42942i), -1i), -firstLeadingBit(-1i)) != 1707i);
    let var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 9u)];
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(min(arg_2.a, -678f))), !(!(!(39710u < u_input.c))), Struct_1(-486f), u_input.c, arg_2);
    var var_2 = -1000f;
    return _wgslsmith_div_f32(201f, arg_2.a);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 9u)];
    var var_1 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, -220f, var_0.a, var_0.a))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, 262f, var_0.a, 517f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(685f, 1461f, 1000f, var_0.a), vec4<f32>(var_0.a, 1670f, -115f, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1375f, 621f, var_0.a) * vec4<f32>(var_0.a, -1223f, var_0.a, -2192f))))))), true | ((arg_1.x <= 118987u) != (arg_0 & false)), Struct_1(_wgslsmith_f_op_f32(-1458f * var_0.a)), ~abs(arg_1.x), global1[_wgslsmith_index_u32(1u, 9u)]);
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a + vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(-1079f + var_1.a.x)), -1962f)), arg_2, Struct_1(var_0.a), var_1.d, global1[_wgslsmith_index_u32(var_1.d, 9u)]);
    let var_3 = Struct_2(vec4<f32>(var_1.a.x, 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), _wgslsmith_f_op_f32(-var_0.a))), 157f), all(vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(round(-1000f))), u_input.b, var_1.e);
    var var_4 = var_0.a;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(u_input.a.yx, var_1.a, var_2.c)), _wgslsmith_f_op_f32(trunc(var_0.a))))))), var_3.c.a);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(true, u_input.a.xz, any(vec3<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(false, true)))))));
    global0 = ~7156i;
    var var_1 = -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_i32(-vec4<i32>(-109992i, 2147483647i, -1191i, -52291i), vec4<i32>(27542i, 6515i, 32025i, -19460i)), ~(-vec4<i32>(1i, -15228i, 29435i, 0i))));
    var_1 = ~select(countOneBits(vec4<i32>(var_1.x, 17574i, 2147483647i, 18753i)) ^ ~select(vec4<i32>(var_1.x, 1i, var_1.x, var_1.x), vec4<i32>(-1i, -1i, -8711i, -5878i), vec4<bool>(false, false, true, true)), (vec4<i32>(var_1.x, 2147483647i, var_1.x, 20783i) & (vec4<i32>(var_1.x, 16682i, var_1.x, var_1.x) | vec4<i32>(var_1.x, -11844i, var_1.x, var_1.x))) << (firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, 40040u, u_input.b)) % vec4<u32>(32u)), all(vec3<bool>(true, true, true)));
    var var_2 = abs(-((reverseBits(-74773i) & var_1.x) << ((~u_input.c >> (1u % 32u)) % 32u)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(abs(~u_input.b), 9u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(13855u, u_input.b), vec4<f32>(var_0.a, var_0.a, 579f, 117f), Struct_1(var_0.a))))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, var_1.a, var_0.a, -762f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(862f, var_1.a, var_0.a, var_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1189f, 341f, var_1.a, var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-985f, var_1.a, -1000f, var_1.a)))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wyy * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x), var_2.x)) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f - var_1.a) - _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(914f - -990f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(182f * var_2.x), var_2.x, true))))));
    global0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(166f - _wgslsmith_f_op_f32(sign(var_1.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1940f, -1000f) + var_3.yx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1333f, var_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_1.a) + vec2<f32>(723f, var_3.x)))) + var_2.zw));
}

