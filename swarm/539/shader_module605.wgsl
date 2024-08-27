struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global1 = u_input.a.x;
    return _wgslsmith_dot_vec4_i32((-_wgslsmith_sub_vec4_i32(vec4<i32>(-7840i, 20557i, 7843i, -74453i), vec4<i32>(1i, 1i, 0i, -22146i)) & min(vec4<i32>(1355i, 1i, -30083i, -43907i), firstTrailingBit(vec4<i32>(-33294i, 1i, -2147483647i, 18721i)))) & ~(vec4<i32>(-1i) * -vec4<i32>(-17996i, 2147483647i, 10343i, 0i)), -select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2111i, 0i, -23999i), vec3<i32>(-1i, -2147483647i, -2870i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-2147483647i, 0i)), ~(-15885i), ~11088i), vec4<i32>(-5248i, -9051i, -2147483647i, 89215i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 90347u), u_input.a) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)));
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, u_input.a.x), 4u)];
    global1 = u_input.b;
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b * var_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), _wgslsmith_f_op_f32(min(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, 861f), vec2<f32>(-1550f, 1064f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-647f, var_0.b), vec2<f32>(var_0.b, var_0.b)), vec2<f32>(var_0.b, 657f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))))));
    global1 = firstTrailingBit(_wgslsmith_add_u32(u_input.a.x, 89716u) >> (u_input.b % 32u));
    var var_2 = 993f;
    return 4370u;
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec3<u32>(~u_input.b, 27438u, 1u), vec3<u32>(_wgslsmith_div_u32(u_input.b, ~firstTrailingBit(1u)), func_2(), 0u), all(select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(any(vec3<bool>(false, true, false)), true), vec2<bool>(true, true))));
    let var_1 = 1938f;
    var var_2 = min(_wgslsmith_mult_i32(~1i, ~0i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -3511i, -2147483647i) << (var_0 % vec3<u32>(32u)), reverseBits(vec3<i32>(-54472i, 2147483647i, -53524i)), all(vec4<bool>(false, false, false, true))), vec3<i32>(1i, select(countOneBits(8126i), 2147483647i, true), -2587i)));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -992f) * _wgslsmith_f_op_f32(-var_1)))))));
    global1 = ~_wgslsmith_mod_u32(~(~u_input.b), 1u);
    return global0[_wgslsmith_index_u32(52965u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(var_0, max(u_input.a, ~(~vec4<u32>(2304u, 1u, u_input.b, 50586u) >> (~vec4<u32>(u_input.b, 0u, 49876u, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1356f, -310f, 487f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1126f, 2016f, 1258f) * vec4<f32>(-723f, -1385f, 662f, -1010f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, var_1.a.b, var_0.b, -1250f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.b, var_0.b, var_1.a.b, var_1.a.b), vec4<f32>(var_1.a.b, var_0.b, var_0.b, -2318f))))))));
    var_1 = Struct_2(func_1(), _wgslsmith_add_vec4_u32(var_1.b, var_1.b));
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 4u)];
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(abs(var_1.b.wyx), min(var_1.b.wxx, vec3<u32>(var_1.b.x, u_input.b, 8938u)))), var_1.b.zww);
    var var_4 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 4u)], _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(abs(select(u_input.a, u_input.a, vec4<bool>(true, true, false, false))), vec4<u32>(abs(var_1.b.x), 21680u, 20172u, var_1.b.x)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, var_1.b.x), vec4<u32>(0u, var_1.b.x, 45245u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(46480u);
}

