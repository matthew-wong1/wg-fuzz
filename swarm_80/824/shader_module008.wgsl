struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool) -> u32 {
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = -1294f;
    let var_1 = abs(_wgslsmith_mult_vec3_i32(((u_input.e ^ u_input.e) | ~u_input.e) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(6997u, 51707u, u_input.b)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i), u_input.e, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), -(~vec3<i32>(arg_1, -2147483647i, -2147483647i)))));
    var var_2 = ~11849u >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(10295u, 0u), vec2<u32>(u_input.b, 1u)), u_input.b), u_input.b) % 32u);
    var var_3 = ~func_3(~vec3<u32>(29534u, 4294967295u, u_input.a.x ^ 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(902f * -622f))) * -1050f), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(0u, u_input.a.x), 1u) != _wgslsmith_div_u32(~1u, 4294967295u));
    var var_4 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 403f) < arg_2.x) & true, _wgslsmith_f_op_f32(f32(-1f) * -1470f), abs(-38941i));
    return Struct_1(any(select(select(vec3<bool>(true, true, true), !vec3<bool>(false, true, var_4.a), var_1.x < var_1.x), vec3<bool>(var_4.a, true, var_4.a), vec3<bool>(false, select(var_4.a, false, var_4.a), !var_4.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.x)))), i32(-1i) * -19800i);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(821f))) - _wgslsmith_f_op_f32(step(-852f, 1000f))), -410f)));
    var var_1 = func_2(u_input.d << (u_input.a.x % 32u), -1i, _wgslsmith_div_vec3_f32(vec3<f32>(-1125f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-643f, -1897f))), vec3<f32>(971f, -378f, _wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(trunc(431f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, 1720f, 107f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(455f, -1864f, -1483f) + vec3<f32>(-140f, 404f, -1000f)), false)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1352f, -1428f, -423f)), vec3<f32>(1000f, 130f, 589f), u_input.a.x <= 27538u))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1152f)))), -973f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(233f)))))));
    var var_2 = Struct_1(any(select(vec4<bool>(true, 6648u > u_input.b, !var_1.a, true), select(vec4<bool>(true, var_1.a, false, false), !vec4<bool>(true, var_1.a, var_1.a, true), any(vec4<bool>(var_1.a, var_1.a, var_1.a, true))), !vec4<bool>(false, var_1.a, true, true))), 1f, _wgslsmith_div_i32(-func_2(global0[_wgslsmith_index_u32(14598u, 14u)], -u_input.e.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1211f, 1133f, -1234f), vec3<f32>(-1378f, var_1.b, -1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, -482f, var_1.b), vec3<f32>(-797f, -183f, 385f))).c, i32(-1i) * -1i));
    let var_3 = !(!all(select(!vec2<bool>(var_1.a, var_1.a), !vec2<bool>(var_1.a, var_1.a), true)));
    global0 = array<i32, 14>();
    return StorageBuffer(_wgslsmith_div_f32(var_1.b, -510f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    global1 = u_input.b;
    var var_0 = _wgslsmith_div_f32(-1253f, _wgslsmith_f_op_f32(f32(-1f) * -613f));
    let var_1 = vec3<f32>(290f, _wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-734f - 241f), -310f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -101f));
    let var_2 = ~firstTrailingBit(-u_input.d) | global0[_wgslsmith_index_u32(u_input.a.x, 14u)];
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(-var_1.x), 0i | var_2);
    let x = u_input.a;
    s_output = func_1();
}

