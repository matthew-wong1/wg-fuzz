struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<bool>, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = u_input.b;
    return 1u;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = abs(vec4<u32>(arg_1, ~22429u, ~4294967295u, min(4294967295u, func_2(arg_0.x))));
    let var_1 = true;
    var var_2 = arg_2.a.x;
    var_0 = firstTrailingBit(~(~arg_0 & arg_0) & max(vec4<u32>(arg_0.x ^ 4294967295u, arg_0.x, 0u, 1u | var_0.x), arg_0));
    let var_3 = arg_2;
    return max(global1.x, global1.x & select(global1.x, global1.x, !var_1));
}

fn func_3(arg_0: Struct_3) -> vec3<u32> {
    let var_0 = vec4<i32>(-(~countOneBits(~(-1i))), 0i, max(_wgslsmith_clamp_i32(global1.x, global1.x, firstLeadingBit(18170i & global1.x)), ~global1.x), min(firstLeadingBit(abs(select(global1.x, 15481i, arg_0.e.d))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-22417i, global1.x), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, -2147483647i), vec2<i32>(1i, global1.x)), ~vec2<i32>(-767i, -39620i)), vec2<i32>(2147483647i, 2147483647i))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.a)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-509f, -883f, -1518f))))));
    var var_2 = arg_0;
    let var_3 = select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.e.b.x, arg_0.b), 7u)], select(global2[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(13320u, global0[_wgslsmith_index_u32(4294967295u, 23u)])), 7u)], global2[_wgslsmith_index_u32(~(~firstTrailingBit(43283u)), 7u)], vec4<bool>(true, true, any(vec2<bool>(true, true)), u_input.a.x >= (u_input.b.x ^ 42878u))), all(vec2<bool>(arg_0.e.d, var_2.e.d)));
    let var_4 = !var_3;
    return vec3<u32>(~_wgslsmith_dot_vec2_u32(var_2.e.b, var_2.e.b), ~_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42724u, 23u)], 23u)], var_2.b, u_input.b.x), u_input.a), select(false, true, false)), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), ~37294u, 87732u)), firstTrailingBit(abs(1u)) & 2069u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(global1.x, -2147483647i);
    var_0 = _wgslsmith_mod_i32(i32(-1i) * -func_1(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.b.x, 41466u), 1u, Struct_2(vec3<f32>(-1199f, 1028f, 1258f))), 50089i);
    var var_1 = firstLeadingBit(~(~(~u_input.a) & ~vec3<u32>(82638u, global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(26238u, 23u)])));
    var_0 = _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 2147483647i ^ global1.x, _wgslsmith_mult_i32(-37243i, global1.x)), ~firstTrailingBit(vec3<i32>(global1.x, -2147483647i, 0i)))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, global1.x), vec3<i32>(global1.x, global1.x, 10558i) ^ vec3<i32>(2147483647i, global1.x, -30623i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(39904i, 2147483647i, global1.x), vec3<i32>(-1i, global1.x, global1.x))), select(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-23689i, 0i, global1.x), vec3<i32>(-17364i, global1.x, 36871i))), ~vec3<i32>(-37141i, 13668i, global1.x), vec3<bool>(true, true, true))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1273f, 1352f, -3314f), vec3<f32>(-1000f, -1142f, 201f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1089f, -541f, -498f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(658f, 804f, 450f))))), 1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1251f)) - _wgslsmith_f_op_f32(min(-1000f, -590f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1105f * -796f), _wgslsmith_f_op_f32(min(204f, 1000f))), _wgslsmith_f_op_f32(-161f * 1f))), Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-840f - 1708f), _wgslsmith_div_f32(-1000f, 292f), _wgslsmith_f_op_f32(round(493f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-273f, 1443f, -805f)))))), Struct_1(4294967295u, ~_wgslsmith_div_vec2_u32(~u_input.b, vec2<u32>(45845u, 6896u)), _wgslsmith_f_op_f32(f32(-1f) * -318f), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    let var_3 = var_2;
    global2 = array<vec4<bool>, 7>();
    var_1 = func_3(var_2);
    let var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, _wgslsmith_f_op_f32(var_2.a.a.x + 1079f));
}

