struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = -_wgslsmith_mult_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(u_input.b, u_input.b));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-835f, 773f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-548f, 1786f, true)))) + -2557f), vec3<bool>(false, any(vec2<bool>(true, true)), true), -20990i);
    var_1 = Struct_1(-698f, vec3<bool>(!(var_1.b.x == true), any(vec3<bool>(!var_1.b.x, !var_1.b.x, any(vec4<bool>(var_1.b.x, false, var_1.b.x, false)))), false), var_0.x);
    var_1 = Struct_1(var_1.a, select(vec3<bool>(true, var_1.b.x, !var_1.b.x), !(!var_1.b), abs(max(39023i, u_input.a)) > _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_1.c, 2147483647i, 2147483647i), vec4<i32>(var_1.c, -13746i, var_1.c, var_1.c)), -18197i)), abs(countOneBits(~1i)));
    var var_2 = 30771i;
    return 4294967295u;
}

fn func_2() -> bool {
    var var_0 = Struct_3(func_3());
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-431f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(451f)))) < -943f);
    var var_2 = var_0.a;
    var var_3 = vec4<f32>(2071f, -1716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-893f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(198f)) * _wgslsmith_f_op_f32(-2042f + 1000f)))), 1f);
    var var_4 = select(!vec3<bool>(_wgslsmith_sub_i32(u_input.b.x, -2147483647i) <= u_input.b.x, true, true && (50148u != var_0.a)), select(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, true))), any(vec4<bool>(true, true, false, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return all(select(vec3<bool>(var_4.x & any(vec3<bool>(var_4.x, true, false)), var_4.x, all(select(vec4<bool>(var_4.x, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, var_4.x, true), var_4.x))), select(!select(vec3<bool>(true, true, false), vec3<bool>(var_4.x, false, var_4.x), var_4.x), !vec3<bool>(false, var_4.x, var_4.x), select(!vec3<bool>(var_4.x, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, var_4.x))), vec3<bool>(true, var_4.x, ~1u >= countOneBits(var_0.a))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_div_u32(0u, arg_1));
    var_0 = Struct_3(arg_1);
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(21400u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_3 * _wgslsmith_f_op_vec2_f32(arg_3 + arg_3)), vec2<f32>(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), 629f), 963f == _wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-329f)), -375f))));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f - 286f) + 893f))));
    let var_1 = u_input.b.x;
    var_0 = func_4(select(select(vec3<bool>(var_0.a.x >= -206f, true, func_2()), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, all(vec4<bool>(false, true, false, true))))), firstTrailingBit(4294967295u) | ~(~(~1u)), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0.a));
    var var_2 = -14462i;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + var_0.a.x), var_0.a.x) * _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-func_4(vec3<bool>(false, true, true), 30513u, false, vec2<f32>(var_0.a.x, var_0.a.x)).a.x))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true))), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, any(vec2<bool>(true, true))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), 0i);
    return _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a | -34286i, firstTrailingBit(2147483647i), -u_input.b.x, -61091i) | vec4<i32>(-2147483647i, firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, -22598i), vec2<i32>(var_1, u_input.b.x)), _wgslsmith_div_i32(15634i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 6078i, var_1), u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_3.c), vec2<i32>(var_3.c, 77771i))), -(vec4<i32>(2844i, var_1, var_3.c, -15431i) ^ vec4<i32>(u_input.b.x, -1i, u_input.a, 42511i)))), ~vec4<i32>(var_1, abs(var_1), var_3.c, min(var_1, var_1) | firstLeadingBit(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, select(u_input.b.x, 1i, true), -49943i, _wgslsmith_add_i32(u_input.a, 1i)), abs(vec4<i32>(-33699i, -2147483647i, 41298i, u_input.b.x) >> (vec4<u32>(0u, 1u, 49977u, 0u) % vec4<u32>(32u)))) & _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, u_input.a, u_input.b.x), vec4<i32>(u_input.a, -2147483647i, 25742i, 7863i)), vec4<i32>(u_input.a, 0i, 2147483647i, -24573i) << (vec4<u32>(0u, 59359u, 4876u, 4294967295u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), min(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 33542i, -9026i)) | func_1())) >> ((vec4<u32>(~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 121857u, 0u), vec4<u32>(31267u, 53376u, 1u, 101129u)) >> (func_3() % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 11219u, 0u)), 32225u) ^ ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 91256u, 26353u, 4294967295u), vec4<u32>(1u, 38558u, 4294967295u, 4294967295u)), ~vec4<u32>(4294967295u, 67434u, 28303u, 4294967295u))) % vec4<u32>(32u));
    var var_1 = vec2<i32>(countOneBits(-(3965i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, u_input.b.x, u_input.a), vec4<i32>(-2147483647i, 48297i, var_0.x, 1i)))), ~15559i);
    let var_2 = abs(_wgslsmith_div_u32(_wgslsmith_add_u32(~20255u, firstTrailingBit(86213u)), _wgslsmith_dot_vec3_u32(vec3<u32>(6163u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u))) ^ 0u);
    var var_3 = Struct_3(_wgslsmith_add_u32(0u, firstTrailingBit(~44794u)));
    let var_4 = Struct_1(-195f, select(vec3<bool>(true, select(true, true, any(vec3<bool>(true, false, true))), any(vec2<bool>(true, true)) != true), select(vec3<bool>(var_2 != 51703u, true, var_0.x != 13021i), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), vec3<bool>(_wgslsmith_clamp_u32(1u, 115548u, 1u) > var_3.a, !(var_3.a != var_2), false)), -11705i);
    var var_5 = vec3<u32>(12328u, 1u, var_3.a) << (firstTrailingBit(min(reverseBits(vec3<u32>(var_3.a, 0u, 1u)) >> (~vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u)), ~vec3<u32>(4513u, var_3.a, 102564u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(842f, var_4.a, 280f, 2269f))) * vec4<f32>(-232f, _wgslsmith_f_op_f32(sign(var_4.a)), var_4.a, -239f)) + vec4<f32>(func_4(select(var_4.b, vec3<bool>(true, true, var_4.b.x), var_4.b), max(var_3.a, 6031u), var_2 > 0u, _wgslsmith_div_vec2_f32(vec2<f32>(-1153f, var_4.a), vec2<f32>(var_4.a, 1780f))).a.x, var_4.a, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2854f - -863f) * _wgslsmith_f_op_f32(sign(1045f))))), var_4.c, var_4.a, _wgslsmith_f_op_f32(-1576f * _wgslsmith_f_op_f32(-var_4.a)), 0i);
}

