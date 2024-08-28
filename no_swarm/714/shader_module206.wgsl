struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(461f, 761f, -1391f), vec3<f32>(1000f, 1253f, -161f), vec3<f32>(-392f, -562f, -1235f), vec3<f32>(664f, 1000f, 863f), vec3<f32>(219f, -489f, 1014f), vec3<f32>(1213f, 1896f, -1920f), vec3<f32>(1602f, 227f, -244f), vec3<f32>(-250f, -879f, -1110f), vec3<f32>(-393f, -539f, -1752f), vec3<f32>(-892f, 841f, -978f));

var<private> global1: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-40022i, -1i, 0i), vec3<i32>(1i, 2147483647i, -44108i), vec3<i32>(3563i, -12052i, 35048i), vec3<i32>(-66469i, 0i, -1i), vec3<i32>(-26694i, i32(-2147483648), 10983i), vec3<i32>(2147483647i, 17900i, -40459i), vec3<i32>(1i, -24233i, 36775i), vec3<i32>(8028i, 71385i, -1i), vec3<i32>(-7471i, 0i, 15009i), vec3<i32>(2147483647i, -4646i, 1i), vec3<i32>(2147483647i, 21723i, -1i), vec3<i32>(295i, 8435i, -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global2 = array<vec3<i32>, 12>();
    global0 = array<vec3<f32>, 10>();
    global1 = array<vec2<bool>, 7>();
    let var_0 = vec3<i32>(reverseBits(arg_0.b), arg_0.b, arg_0.b);
    global2 = array<vec3<i32>, 12>();
    return select(vec3<bool>(true, select(arg_0.d.x, arg_0.b < (-36176i & var_0.x), true), !any(arg_0.d.xx)), arg_0.d, arg_0.d.x);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    global2 = array<vec3<i32>, 12>();
    var var_0 = arg_0;
    var var_1 = u_input.a.ww;
    let var_2 = arg_0;
    var var_3 = arg_0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 + arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1141f), any(select(global1[_wgslsmith_index_u32(var_1.x ^ u_input.a.x, 7u)], select(var_2.d.yy, var_0.d.yx, arg_0.c), select(vec2<bool>(true, var_0.c), vec2<bool>(arg_0.c, true), var_0.d.x))))));
}

fn func_1(arg_0: u32) -> vec4<f32> {
    var var_0 = true;
    var var_1 = vec4<bool>(all(vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, false, false)))) && any(select(func_2(Struct_1(vec4<f32>(410f, -500f, 894f, 1000f), u_input.c, true, vec3<bool>(true, false, true))), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), false)), true, !(!(!(u_input.c > -2147483647i))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-878f, -819f, 166f, 774f), u_input.c | 1i, true, select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -109f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1354f - -109f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(250f + -1679f), _wgslsmith_f_op_f32(round(-906f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 501f, -1186f, -1022f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, 1516f, -1000f, 1170f) - vec4<f32>(-109f, 511f, 545f, 1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, -2423f, 151f, 1000f)) * vec4<f32>(396f, 485f, -364f, -299f)))), ~firstLeadingBit(_wgslsmith_div_i32(~0i, 1i)), !(true && any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x))), var_1.xxx);
    var_0 = false;
    var var_3 = -17098i;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(534f)), _wgslsmith_div_f32(127f, var_2.a.x), var_2.a.x, var_2.a.x) + vec4<f32>(_wgslsmith_div_f32(var_2.a.x, var_2.a.x), -292f, _wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -378f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(279f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(625f * -2137f), _wgslsmith_f_op_f32(ceil(-203f))))), -464f, 1188f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -503f))))), u_input.c, true, !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, -1i < u_input.c, all(vec3<bool>(true, false, true)))));
    let var_1 = 4294967295u;
    global2 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(14673u, countOneBits(-55421i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, var_0.a.x, 829f), _wgslsmith_f_op_vec4_f32(func_1(u_input.a.x)))), var_0.a), ~(~u_input.b), global2[_wgslsmith_index_u32(max(var_1, u_input.a.x) >> (62421u % 32u), 12u)]);
}

