struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_1 = Struct_1(-1i, 343f, 2147483647i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))), 0i);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, -2147483647i, 87323i), vec3<i32>(u_input.a, 58227i, u_input.a)), vec3<i32>(var_0.a, 0i, -44195i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(14450i, arg_0.a, -42034i) << (vec3<u32>(1u, arg_1.x, arg_1.x) % vec3<u32>(32u)), vec3<i32>(abs(arg_0.a), global1.c, 2147483647i))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1390f * -455f)))), _wgslsmith_f_op_f32(-global1.b))), 2147483647i);
    global0 = array<Struct_1, 18>();
    global1 = Struct_1(min(global1.c, ~_wgslsmith_clamp_i32(global1.c, 0i, u_input.a | global1.c)), 287f, _wgslsmith_dot_vec4_i32(-vec4<i32>(-12088i, -1i, -10339i, 1i) << ((vec4<u32>(0u, arg_1.x, arg_1.x, arg_1.x) ^ vec4<u32>(4294967295u, 0u, 38409u, arg_1.x)) % vec4<u32>(32u)), ~vec4<i32>(var_0.a, u_input.a, global1.c, -1i)) << ((arg_1.x ^ arg_1.x) % 32u));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(-var_2.b);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(countOneBits(~0u), 18u)], _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 74830u, 4294967295u), vec3<u32>(21347u, 0u, 0u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.b)), 147f)), -718f));
    let var_1 = max(~1142i, _wgslsmith_add_i32(i32(-1i) * -min(u_input.a, global1.c), ~abs(_wgslsmith_mult_i32(-34422i, u_input.a))));
    var var_2 = global0[_wgslsmith_index_u32(406u, 18u)];
    var var_3 = global0[_wgslsmith_index_u32(84444u, 18u)];
    let var_4 = global0[_wgslsmith_index_u32(1u, 18u)];
    return 924f;
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(global1.b, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_div_f32(_wgslsmith_div_f32(722f, _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(func_2(true)))), -377f));
    global1 = Struct_1(19689i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-614f)), 1f)), ~global1.c);
    global0 = array<Struct_1, 18>();
    global1 = Struct_1(firstTrailingBit(reverseBits(-57694i)), var_0.x, global1.c);
    global1 = Struct_1(2147483647i, -735f, u_input.a);
    return _wgslsmith_dot_vec4_u32(~max(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 45800u, 9407u, 55631u), vec4<u32>(1u, 94771u, 1u, 4294967295u), true), vec4<u32>(0u, 4989u, 69987u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(18448u, 4294967295u, 21988u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(6584u, 31073u, 73176u, 0u))), firstTrailingBit(vec4<u32>(8255u, 14181u, 56925u, 5345u)) & vec4<u32>(1u, 11301u, 0u, 18061u)), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = global0[_wgslsmith_index_u32(~func_1() ^ 1u, 18u)];
    var var_1 = Struct_1(-_wgslsmith_clamp_i32(14085i, global1.c, u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global1.b)))), var_0.c);
    var var_2 = _wgslsmith_div_u32(min(29016u, 1u), max(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), min(vec3<u32>(34342u, 0u, 4294967295u), vec3<u32>(14323u, 1u, 29484u))), 9375u));
    let var_3 = select(!vec3<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true)), false), vec3<bool>(true, true, true & any(vec4<bool>(true, true, true, true))), vec3<bool>(all(vec2<bool>(true, global1.b < 1314f)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), any(vec2<bool>(false, true))));
    var_0 = Struct_1(var_1.c, 495f, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(0u, 18u)], vec3<u32>(1u, 38777u, 4294967295u)))) + var_0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-633f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, -280f, var_0.b)) + vec3<f32>(-1105f, var_0.b, -501f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1451f, -149f, var_1.b)))), -(~u_input.a >> (11079u % 32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, 510f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 339f)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), abs(vec2<u32>(1u, 1u))));
}

