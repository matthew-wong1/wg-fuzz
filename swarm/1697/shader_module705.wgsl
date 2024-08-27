struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(1i, Struct_1(vec2<f32>(-320f, 1f)), true, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(755f, -373f)))), vec2<f32>(_wgslsmith_f_op_f32(-146f - -458f), _wgslsmith_f_op_f32(select(-271f, -1618f, false))), true))));
    global0 = -2147483647i;
    let var_1 = (~firstTrailingBit(0u) ^ ~u_input.b.x) >= u_input.b.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.a.x), 545f)))), Struct_1(var_0.d.a));
    var var_3 = i32(-1i) * -11025i;
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> i32 {
    return _wgslsmith_sub_i32(-1i, -2147483647i);
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = arg_1.x;
    global0 = ~arg_1.x << (~0u % 32u);
    global0 = _wgslsmith_add_i32(max(var_1, func_3(func_2().b, Struct_4(vec3<u32>(0u, u_input.c, 0u)), Struct_3(vec2<f32>(var_0.a.x, var_0.b.a.x), Struct_1(vec2<f32>(var_0.a.x, 1401f))))) & 0i, var_1);
    let var_2 = vec2<u32>(reverseBits(_wgslsmith_sub_u32(5058u, u_input.d)), u_input.a.x) << (u_input.a % vec2<u32>(32u));
    return func_2();
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = select(~27656i, 0i, true);
    global0 = firstTrailingBit(-1i);
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(-arg_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f - -520f) - _wgslsmith_f_op_f32(arg_0.a.x + -1000f)))) - _wgslsmith_f_op_f32(-1021f - _wgslsmith_f_op_f32(trunc(arg_0.a.x))));
    let var_2 = arg_0.a.x;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(max(1i, 1i), -28797i), select(~(vec2<i32>(1i, 1i) ^ firstTrailingBit(vec2<i32>(2147483647i, -60528i))), abs(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(46557i, 6405i)), ~vec2<i32>(-25639i, -1i))), vec2<bool>(true, true)));
    var var_0 = select(vec2<bool>(!all(vec4<bool>(true, true, true, true)), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true);
    var var_1 = Struct_2(_wgslsmith_mod_i32(-1354i, -8747i), func_4(func_1(_wgslsmith_f_op_f32(-1f), ~vec3<i32>(-1i, 30797i, -7074i), !vec3<bool>(var_0.x, true, var_0.x))), !(!var_0.x | all(vec3<bool>(false, var_0.x, true))) | !all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-135f, -791f))));
    global0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a.x, 171f, -517f, -1000f) + vec4<f32>(972f, -1000f, var_1.d.a.x, var_1.b.a.x)), vec4<f32>(var_1.d.a.x, var_1.b.a.x, 1880f, var_1.b.a.x)))));
}

