struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(true, false, true, true), false), Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, true, false, false), false), Struct_1(vec4<bool>(true, true, false, true), false), Struct_1(vec4<bool>(false, false, false, false), true), Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, true, true, false), true), Struct_1(vec4<bool>(false, false, false, false), false), Struct_1(vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(true, true, true, true), false), Struct_1(vec4<bool>(false, true, true, false), true), Struct_1(vec4<bool>(true, false, false, true), false), Struct_1(vec4<bool>(false, true, true, true), true), Struct_1(vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(false, false, true, true), false), Struct_1(vec4<bool>(true, true, true, true), true), Struct_1(vec4<bool>(false, true, false, true), false), Struct_1(vec4<bool>(false, false, false, true), true));

var<private> global1: bool;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(848f, 1039f)), _wgslsmith_f_op_f32(f32(-1f) * -516f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1276f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, 1000f, -530f))))));
    return _wgslsmith_f_op_f32(step(1462f, var_0.a.x));
}

fn func_2() -> vec4<bool> {
    global1 = select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true))), -1436f))) > -656f, min(-16545i, -_wgslsmith_mult_i32(u_input.c, u_input.c)) > 16185i, true);
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1391f)))), _wgslsmith_f_op_f32(f32(-1f) * -1311f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(step(-875f, -1121f)))), 222f));
    global0 = array<Struct_1, 21>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(var_0.x - -699f), all(vec3<bool>(false, false, true)))) + _wgslsmith_f_op_f32(var_0.x + -841f))));
    let var_2 = select(vec2<i32>(18048i, u_input.c), -abs(vec2<i32>(u_input.c, 2147483647i)), all(vec2<bool>(true, true)));
    return !vec4<bool>(var_0.x > -1217f, !(!any(vec2<bool>(false, true))), false, false);
}

fn func_1() -> f32 {
    global1 = all(select(!(!func_2()), !func_2(), false));
    var var_0 = global0[_wgslsmith_index_u32(25414u, 21u)];
    var var_1 = -64814i;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    return 727f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(2147483647i, firstTrailingBit(firstLeadingBit(u_input.c)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1069f * 614f))), _wgslsmith_f_op_f32(func_1()));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_3 = var_2.a.zxz;
    global0 = array<Struct_1, 21>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1422f) * vec2<f32>(var_1.x, var_1.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(259f, var_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(862f, 741f))) * vec2<f32>(var_1.x, -503f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), var_2.b)))))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    var var_5 = vec3<f32>(_wgslsmith_div_f32(-2262f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)), var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f * var_1.x) + 243f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))))), -502f);
    let var_6 = Struct_1(vec4<bool>(false, var_2.b, !(_wgslsmith_f_op_f32(max(363f, 932f)) <= _wgslsmith_div_f32(var_5.x, var_5.x)), var_4.b), !any(!select(vec4<bool>(false, false, var_3.x, true), vec4<bool>(false, var_3.x, true, var_2.b), var_4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, -1457i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, 1481f, 737f)) + vec3<f32>(var_5.x, 596f, var_5.x)), vec3<f32>(1196f, _wgslsmith_f_op_f32(trunc(-108f)), 1122f)))), abs(u_input.b.x), 0i);
}

