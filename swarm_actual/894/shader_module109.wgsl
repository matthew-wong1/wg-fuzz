struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.a.a;
    var_0 = -min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(arg_2.a.a, vec3<i32>(arg_2.a.b, u_input.b, arg_2.a.b)), abs(u_input.b)), arg_2.a.a), countOneBits(vec3<i32>(_wgslsmith_div_i32(1i, arg_0), var_0.x, firstTrailingBit(-2147483647i))));
    var_0 = _wgslsmith_mod_vec3_i32(abs(vec3<i32>(~32691i, _wgslsmith_dot_vec3_i32(arg_2.a.a, vec3<i32>(-1i, -38281i, arg_0)), 1i)) & (-arg_2.a.a | arg_2.a.a), abs(vec3<i32>(_wgslsmith_add_i32(-u_input.b, _wgslsmith_mod_i32(u_input.b, var_0.x)), ~_wgslsmith_mult_i32(1i, arg_0), abs(arg_0))));
    let var_1 = arg_2.a;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - var_1.c) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.a.c)), _wgslsmith_div_f32(arg_2.a.c, var_1.c)))))));
    return 144f;
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(743f - 2492f))))), -627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -277f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~54941i, vec3<u32>(u_input.a, 0u, 7990u), Struct_2(Struct_1(vec3<i32>(-2147483647i, u_input.b, u_input.b), u_input.b, -435f)))) * -1337f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1638f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 837f), _wgslsmith_f_op_f32(abs(1000f)))), vec3<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-910f + var_0.x)), _wgslsmith_f_op_f32(-381f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_div_f32(336f, var_0.x)))));
    let var_1 = vec2<bool>(!(u_input.b != (u_input.b & u_input.b)), false);
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a, 0u, 13818u), abs(vec4<u32>(53422u, u_input.c, 68359u, u_input.c))), countOneBits(vec4<u32>(u_input.c, u_input.a, 19358u, u_input.c) & vec4<u32>(u_input.a, u_input.c, 0u, 4294967295u))) | ~reverseBits(u_input.c), u_input.c ^ 4294967295u);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(328f + _wgslsmith_f_op_f32(-2155f + _wgslsmith_f_op_f32(f32(-1f) * -1132f))), 616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.b, vec3<u32>(var_2.x, 1u, 1u), Struct_2(Struct_1(vec3<i32>(16877i, u_input.b, 18952i), u_input.b, var_0.x)))))))));
    return Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.b, 0i), -vec3<i32>(1i, u_input.b, u_input.b) ^ select(vec3<i32>(u_input.b, 1i, u_input.b), vec3<i32>(u_input.b, u_input.b, -1i), false)), _wgslsmith_sub_vec3_i32(abs(-vec3<i32>(u_input.b, u_input.b, -2147483647i)), max(reverseBits(vec3<i32>(u_input.b, u_input.b, -15565i)), vec3<i32>(95100i, u_input.b, -1i) & vec3<i32>(1i, 66397i, u_input.b)))), _wgslsmith_dot_vec4_i32(reverseBits(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), -vec4<i32>(u_input.b, -25377i, u_input.b, -2147483647i) | vec4<i32>(firstTrailingBit(74805i), -4538i, firstLeadingBit(-1i), -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-812f, var_0.x)) + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = 17927i;
    var_0 = Struct_1(var_0.a, var_0.a.x, _wgslsmith_f_op_f32(max(582f, 1071f)));
    let var_2 = Struct_1(var_0.a, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(var_1, _wgslsmith_sub_i32(-1i, reverseBits(u_input.b))), _wgslsmith_add_i32(0i, _wgslsmith_div_i32(-71979i, -var_1))), -2157f);
    var_0 = var_2;
    return Struct_2(var_2);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = select(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.a.a.a.x, arg_1.a.a.b, ~(-1i), arg_1.b.b), vec4<i32>(~2913i, arg_1.b.b, -11147i, u_input.b)), vec4<i32>(countOneBits(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.a.x, arg_1.b.a.x, -24187i, arg_1.a.a.b), vec4<i32>(u_input.b, u_input.b, 13081i, 40784i))), ~arg_1.a.a.b, ~8132i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2441i, 22243i, 50826i), arg_1.b.a)), vec4<bool>(false, arg_3, !(!any(arg_0)), false));
    var var_1 = ~reverseBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(80818u, 6769u, u_input.a, 14245u), vec4<u32>(u_input.c, 29102u, 50364u, u_input.a) & vec4<u32>(u_input.c, 0u, 0u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~vec4<u32>(41144u, u_input.c, 9558u, u_input.c))));
    let var_2 = (!(arg_3 | (u_input.c <= var_1.x)) || false) | !arg_3;
    let var_3 = select(66016u, 4294967295u, arg_3);
    let var_4 = arg_1.b;
    return Struct_2(var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec4<bool>(false, _wgslsmith_f_op_f32(select(-104f, -1000f, true)) < -1876f, true, true), Struct_3(func_1(~(~vec3<u32>(7838u, 5029u, 61111u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1322f, -1611f, -207f, 1003f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1142f, -1514f, -790f, 512f) - vec4<f32>(-862f, 367f, -802f, 299f)))), Struct_1(vec3<i32>(func_1(vec3<u32>(u_input.a, 25857u, 13434u), vec4<f32>(-428f, -1284f, -537f, 203f)).a.b, u_input.b, ~u_input.b), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f * -518f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -437f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(152f, -773f))))), vec2<f32>(_wgslsmith_f_op_f32(max(-563f, _wgslsmith_f_op_f32(f32(-1f) * -1097f))), -163f)), 1i < firstTrailingBit(u_input.b));
    var_0 = Struct_2(Struct_1(-select(max(var_0.a.a, var_0.a.a), var_0.a.a, false), ~(u_input.b ^ (i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)) * -732f)));
    let var_1 = !vec4<bool>(false, !all(vec2<bool>(true, true)), true, true);
    let var_2 = var_0.a;
    var_0 = func_4(select(vec4<bool>(true, all(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1, vec4<bool>(var_1.x, var_1.x, var_1.x, false))), var_1.x, true), !var_1, !(false || var_1.x)), Struct_3(func_1(select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 19042u, 4294967295u), vec3<u32>(u_input.c, u_input.a, 41912u)), vec3<u32>(u_input.a, 4568u, u_input.c) << (vec3<u32>(u_input.c, 18102u, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_0.a.c, 985f, -1170f))))), func_1(~(vec3<u32>(u_input.c, u_input.a, u_input.a) & vec3<u32>(4294967295u, u_input.a, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(-var_2.c), var_2.c, -260f, func_1(vec3<u32>(30856u, 4294967295u, 14047u), vec4<f32>(var_2.c, var_2.c, -2267f, var_0.a.c)).a.c)).a), vec2<f32>(var_0.a.c, 132f), true);
    let var_3 = ~_wgslsmith_add_u32(u_input.a, u_input.a);
    let var_4 = min(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_3, u_input.c, 30575u), ~vec3<u32>(var_3, 1u, 41671u)), ~reverseBits(vec3<u32>(u_input.a, 0u, 25296u))), ~(~select(vec3<u32>(33854u, u_input.a, var_3), vec3<u32>(u_input.c, u_input.c, 0u), var_1.zwx))), firstTrailingBit(_wgslsmith_div_u32(var_3, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-150f * _wgslsmith_f_op_f32(-var_0.a.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1661f, var_2.c) - vec2<f32>(-590f, 639f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-459f, -1000f) * vec2<f32>(-1315f, var_2.c)), select(var_1.zz, vec2<bool>(false, var_1.x), true)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(var_2.c * var_2.c)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1032f, 187f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1232f, var_2.c))))), ~(~(firstTrailingBit(u_input.c) | firstTrailingBit(u_input.c))));
}

