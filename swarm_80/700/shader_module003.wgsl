struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b <= ~(1i >> (~(4592u << (u_input.c % 32u)) % 32u));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(795f)), _wgslsmith_f_op_f32(select(-1122f, 176f, var_0)), _wgslsmith_div_f32(1000f, -759f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-852f))), 917f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(473f))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> i32 {
    var var_0 = 12722u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b)) * arg_1.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(221f, arg_1.b.x))))))));
    var var_2 = 2147483647i;
    let var_3 = arg_1;
    global0 = any(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), select(vec3<bool>(any(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true)), false), vec3<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, false, true)), false), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true))), true));
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) ^ -23106i)), 11611i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = vec2<i32>(0i, 2147483647i);
    var_0 = vec2<i32>(_wgslsmith_mult_i32(-1i | var_0.x, _wgslsmith_sub_i32(reverseBits(-7034i), u_input.a.x)), i32(-1i) * -78412i);
    var var_1 = Struct_3(Struct_2(arg_1.a), arg_0);
    var var_2 = Struct_4(Struct_1(arg_2, true, 14913u));
    var_2 = Struct_4(var_2.a);
    return Struct_3(Struct_2(vec3<f32>(-179f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-465f)), _wgslsmith_f_op_f32(f32(-1f) * -474f)), arg_0.x)), _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x + arg_0.x), _wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_div_f32(421f, -643f)))));
}

fn func_1(arg_0: vec2<bool>) -> StorageBuffer {
    global0 = any(!vec4<bool>(arg_0.x, true, true, false));
    global0 = (any(vec3<bool>(all(vec2<bool>(arg_0.x, false)), true, -34163i < u_input.b)) | arg_0.x) | any(vec2<bool>(all(select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(false, false, arg_0.x, true))), true));
    let var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1f)), func_2(), ~select(0i, firstLeadingBit(func_3(vec4<u32>(u_input.c, 4294967295u, u_input.c, 10343u), Struct_3(Struct_2(vec3<f32>(-256f, 1709f, 350f)), vec2<f32>(-519f, -1313f)))), true));
    let var_1 = Struct_1(u_input.a.x, true & arg_0.x, u_input.c);
    var var_2 = Struct_4(Struct_1(u_input.d, -var_1.a < _wgslsmith_mult_i32(u_input.d, 2147483647i), 1u));
    return StorageBuffer(vec3<i32>(abs(-firstTrailingBit(var_2.a.a)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_2.a.a, -1i, u_input.d), firstTrailingBit(vec3<i32>(37750i, 27476i, -43800i))), select(~vec3<i32>(-13034i, 21177i, var_1.a), abs(vec3<i32>(-12975i, 1i, -21781i)), vec3<bool>(var_1.b, true, arg_0.x))), 3635i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(max(var_0.a.a.x, var_0.b.x)))), var_0.a.a.x, -412f, _wgslsmith_f_op_f32(round(-496f))))), _wgslsmith_div_f32(-1000f, var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c < 1u;
    let x = u_input.a;
    s_output = func_1(vec2<bool>(true, true));
}

