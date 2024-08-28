struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: Struct_2 = Struct_2(vec4<bool>(true, true, true, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<vec4<f32>, 7>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2182f)))))));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3()), 807f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1002u, 1u), 7u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, arg_0, -187f, -1021f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 7u)] * vec4<f32>(arg_0, arg_0, arg_0, arg_0))))))), u_input.c);
    let var_1 = ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, 42792i), u_input.c);
    var var_2 = ~(vec4<u32>(1u, 85136u, ~_wgslsmith_clamp_u32(70871u, 4294967295u, 4294967295u), select(~46736u, 1u, all(vec2<bool>(global0[_wgslsmith_index_u32(3934u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)])))) & countOneBits(~vec4<u32>(1u, 1u, 1u, 1u)));
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(vec4<bool>(false, true, select(true, !all(vec3<bool>(global0[_wgslsmith_index_u32(19390u, 18u)], arg_0.a.x, false)), _wgslsmith_f_op_f32(arg_1 - arg_1) < _wgslsmith_f_op_f32(abs(724f))), func_2(-423f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 2200f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1096f, -930f, 361f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, arg_1, -1152f)))))));
    let var_2 = max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b, min(-3637i, -39389i)), ~firstTrailingBit(vec3<i32>(1i, -59110i, u_input.a)) >> (~vec3<u32>(23969u, 45586u, 37151u) % vec3<u32>(32u)), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.b, -5006i << (0u % 32u)), 71345i)), (_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-42133i, u_input.b, u_input.c)), vec3<i32>(u_input.c, u_input.c, 30508i) ^ vec3<i32>(u_input.c, 17332i, u_input.b)) | (max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.c, 14828i, -1i)) | -vec3<i32>(-15610i, -18155i, u_input.b))) ^ ~(-vec3<i32>(50014i, u_input.c, u_input.b)));
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -212f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(func_3()), -1105f)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-413f, var_1.x, -629f)))))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_1), var_3.x);
    return Struct_2(select(select(vec4<bool>(arg_0.a.x, false, var_0.a.x, true), select(!global4.a, vec4<bool>(true, global4.a.x, arg_0.a.x, var_0.a.x), arg_0.a.x), global4.a), !var_0.a, false));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(arg_1.x, 7u)] - global1[_wgslsmith_index_u32(arg_1.x, 7u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(53225u, 7u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, arg_0, arg_0, arg_0) - vec4<f32>(1462f, -1000f, arg_0, -687f)), global1[_wgslsmith_index_u32(arg_1.x, 7u)]))))), u_input.c);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1608f) + var_0.a.x) != _wgslsmith_f_op_f32(abs(var_0.b.x));
    global2 = -24541i < (select(countOneBits(1i), i32(-1i) * -415i, !global0[_wgslsmith_index_u32(arg_1.x, 18u)]) >> (13785u % 32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b.xx))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.x, 262f), -1030f)))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))) - arg_0)), -5269i);
    let var_1 = Struct_2(arg_2.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.b.xy), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 18u)]))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-920f, -1457f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(-713f, max(vec3<u32>(4294967295u, 1756u, 4294967295u), vec3<u32>(54503u, 1u, 1u)), func_1(Struct_2(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 18u)], global4.a.x, global4.a.x)), 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(1u, 7u)] - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(520f, 1000f, -547f, 158f))))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(30117u, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c, 87250i, 50618i), vec3<i32>(0i, 0i, 2147483647i)), min(vec3<i32>(76860i, var_0.c | var_0.c, select(u_input.b, -44951i, false)), -select(vec3<i32>(2147483647i, u_input.a, 36612i), vec3<i32>(-1i, 30453i, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 18u)]))), reverseBits(1u), vec2<u32>(1u, 117622u));
}

