struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-835f, -431f, 2891f, -183f, 538f, -2472f, -1000f, -1138f, 588f, 648f, -179f, 152f, -373f, -647f, -107f, -767f, -406f, -183f, -483f, -845f, 728f, -175f, -603f, 141f, 1997f, -907f, 1000f);

var<private> global1: u32 = 49794u;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(vec2<bool>(true, true)), vec3<i32>(1i, 7337i, -15119i), vec3<i32>(0i, 2147483647i, -1i)), Struct_2(Struct_1(vec2<bool>(false, false)), vec3<i32>(-834i, 3347i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, 1i)), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(28373i, -1i, 2147483647i), vec3<i32>(76845i, 40385i, -28999i)), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(3894i, -43753i, 0i), vec3<i32>(-3456i, -5381i, -11984i)), Struct_2(Struct_1(vec2<bool>(false, true)), vec3<i32>(-18684i, 2147483647i, -1i), vec3<i32>(-53956i, 26359i, -19842i)), Struct_2(Struct_1(vec2<bool>(true, true)), vec3<i32>(-1i, i32(-2147483648), -30914i), vec3<i32>(7040i, 8963i, 1i)), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<i32>(35384i, 1i, -1i), vec3<i32>(9543i, 1i, -12402i)), Struct_2(Struct_1(vec2<bool>(true, false)), vec3<i32>(-18194i, -1i, 2147483647i), vec3<i32>(0i, 88374i, -15209i)));

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(65283u & abs(u_input.a.x), 32u)], vec3<i32>(-21885i, abs(-24725i), _wgslsmith_mult_i32(u_input.b, -_wgslsmith_mult_i32(u_input.b, u_input.b))), ~vec3<i32>(-4385i, ~(-u_input.b), firstLeadingBit(u_input.b)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1406f * global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x), 27u)])));
}

fn func_3() -> i32 {
    var var_0 = 0u;
    var var_1 = true;
    var_0 = 1u;
    var var_2 = Struct_2(Struct_1(!vec2<bool>(all(vec4<bool>(false, false, false, true)), true)), select(firstTrailingBit(vec3<i32>(14802i, u_input.b, u_input.b)), vec3<i32>(50483i & max(u_input.b, u_input.b), -47489i, _wgslsmith_div_i32(countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(6770i, u_input.b, 4846i, 1i)))), vec3<bool>(true, true, true)), vec3<i32>(~1i, u_input.b | max(2147483647i, -32588i), u_input.b));
    var var_3 = _wgslsmith_mult_vec2_u32(~u_input.a, ~(~u_input.a));
    return 2147483647i << (countOneBits(u_input.a.x) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> vec3<u32> {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(abs(~35620u | _wgslsmith_sub_u32(u_input.a.x, arg_2)), 27u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(1i >> (~(~arg_1.x) % 32u), func_3()), -1i);
    global3 = array<Struct_1, 32>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-747f * _wgslsmith_f_op_f32(select(1774f, _wgslsmith_f_op_f32(-var_1), false))), var_1, -836f));
    return vec3<u32>(1u, ~(~(u_input.a.x >> ((arg_1.x & 4294967295u) % 32u))), ~arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~func_1(global3[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 32u)], u_input.a, u_input.a.x)));
    var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(select(~(~vec3<u32>(u_input.a.x, var_0.x, 0u)), ~select(vec3<u32>(21170u, var_0.x, var_0.x), vec3<u32>(1u, var_0.x, 5591u), vec3<bool>(false, true, true)), vec3<bool>(all(vec2<bool>(false, false)), true, false)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~vec3<u32>(var_0.x, 58135u, 43044u), max(vec3<u32>(4980u, var_0.x, var_0.x), vec3<u32>(var_0.x, u_input.a.x, u_input.a.x))))), max(reverseBits(vec3<u32>(var_0.x >> (u_input.a.x % 32u), ~var_0.x, reverseBits(0u))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, u_input.a.x, var_0.x)) & (vec3<u32>(58292u, var_0.x, 23929u) ^ vec3<u32>(1u, u_input.a.x, 1u)), vec3<u32>(u_input.a.x, ~u_input.a.x, ~21423u), vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(46571u, u_input.a.x, var_0.x)), ~var_0.x))));
    var_0 = vec3<u32>(max(1u, _wgslsmith_mult_u32(4294967295u >> (var_0.x % 32u), 1u)) & countOneBits(firstTrailingBit(u_input.a.x)), 1u, u_input.a.x);
    var var_1 = !(!vec4<bool>(u_input.b > 34981i, true, false, select(false, true, false) != true));
    var_0 = _wgslsmith_clamp_vec3_u32(~abs(func_1(Struct_1(vec2<bool>(true, var_1.x)), var_0.xy, u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, 15692u, var_0.x)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.x, u_input.a.x), vec3<u32>(24066u, 100748u, 1u)), vec3<u32>(var_0.x, var_0.x, u_input.a.x))), _wgslsmith_add_vec3_u32(vec3<u32>(11999u & u_input.a.x, u_input.a.x, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4836u, var_0.x), vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, 34704u)), 1u, var_0.x))), _wgslsmith_mult_vec3_u32(func_1(global3[_wgslsmith_index_u32(4936u, 32u)], _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 67111u), u_input.a), 0u) << (vec3<u32>(_wgslsmith_mod_u32(var_0.x, u_input.a.x), _wgslsmith_mult_u32(var_0.x, 1u), ~29247u) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(var_0.x), 50497u, _wgslsmith_mod_u32(1u, u_input.a.x))));
    var var_2 = -465f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-657f, -470f, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<f32>(313f, global0[_wgslsmith_index_u32(1u, 27u)], 1621f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1728f, 757f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1055f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) * vec3<f32>(-625f, -595f, global0[_wgslsmith_index_u32(47242u, 27u)]))))));
}

