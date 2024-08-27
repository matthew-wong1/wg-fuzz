struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(4294967295u, 4294967295u, 1u, 71172u, 1u, 6076u, 4294967295u, 5513u, 14243u, 40754u, 1u, 4294967295u);

var<private> global1: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    let var_0 = ~(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(79521u, global0[_wgslsmith_index_u32(global1.c, 12u)])), (u_input.d.zw & vec2<u32>(global1.c, 4294967295u)) >> (u_input.d.wz % vec2<u32>(32u))) ^ u_input.c);
    let var_1 = Struct_1(global1.a.b, global1.d.b);
    global1 = Struct_3(Struct_2(-_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_1.b, 12657i, 6616i, 2729i)), vec4<i32>(u_input.b, global1.a.d.x, global1.d.b, u_input.b) << (vec4<u32>(var_0, var_0, 0u, 1u) % vec4<u32>(32u))), (all(vec2<bool>(false, false)) && true) || var_1.a, global1.a.c, vec3<i32>(~global1.e.x, 10307i, global1.a.d.x << (1u % 32u)) ^ -vec3<i32>(-13107i, 1i, 2147483647i)), firstTrailingBit(-2147483647i), 51041u, global1.d, global1.e);
    var var_2 = Struct_5(abs(vec4<i32>(~(-51983i), var_1.b, var_1.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, u_input.b, -2147483647i), vec4<i32>(34183i, -54435i, -4645i, global1.a.a)), _wgslsmith_mult_i32(-27528i, -55946i), 1i))), ~(~4294967295u), reverseBits(_wgslsmith_sub_vec3_i32(abs(~global1.a.d), abs(-global1.e))), vec2<i32>(1i, _wgslsmith_clamp_i32(435i, _wgslsmith_dot_vec2_i32(-global1.a.d.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, 1i), global1.e.yx, global1.a.d.xz)), global1.a.a)), min(~global1.e.yx, ~vec2<i32>(global1.b << (51892u % 32u), 20629i << (global1.c % 32u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -241f), -892f)), _wgslsmith_f_op_f32(-784f + _wgslsmith_div_f32(873f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-617f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(216f, -850f, -588f, -2690f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-418f, 1000f, -601f, 1189f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(508f - 971f));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))) >= _wgslsmith_f_op_f32(-1972f + 1251f);
    var var_1 = Struct_1(global1.d.a, -(-(~(-35240i)) & ~u_input.b));
    var_1 = Struct_1(true, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b, -25089i, -1i), vec3<i32>(-2147483647i, 2147483647i, -43349i)), var_1.b), ~global1.b));
    let var_2 = 68066u;
    global1 = Struct_3(global1.a, 11116i, _wgslsmith_sub_u32(abs(u_input.a), global0[_wgslsmith_index_u32(global1.c, 12u)]), global1.d, -_wgslsmith_sub_vec3_i32(global1.a.d, vec3<i32>(8479i, -30433i, u_input.b)));
    return _wgslsmith_div_i32(countOneBits(reverseBits(var_1.b)), global1.e.x | 17136i);
}

fn func_1(arg_0: f32) -> u32 {
    global1 = Struct_3(global1.a, -2195i, 26221u, Struct_1(any(select(vec2<bool>(global1.a.b, global1.a.b), select(vec2<bool>(global1.a.b, true), vec2<bool>(false, true), false), vec2<bool>(false, false))), countOneBits(~1i ^ global1.a.a)), firstLeadingBit(vec3<i32>(-1i, global1.e.x, global1.d.b) | ~vec3<i32>(u_input.b, -1i, 2147483647i)) & vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-13727i, -2147483647i, 2147483647i, global1.e.x), vec4<i32>(1i, 2147483647i, global1.b, 1i)), _wgslsmith_dot_vec3_i32(global1.a.d, global1.e), 1i));
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_2() >> (u_input.c % 32u), -((u_input.b | -16729i) | 0i)), vec2<i32>(_wgslsmith_clamp_i32(-global1.b, global1.d.b, global1.b), _wgslsmith_clamp_i32(-595i, _wgslsmith_div_i32(-2147483647i, global1.a.c), -19866i)) | -vec2<i32>(-33001i ^ global1.d.b, func_2()));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1000f, -495f, arg_0), vec4<f32>(-1032f, 1409f, arg_0, -397f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, -1000f, arg_0, -1277f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 1177f, 1095f, 1000f)))), vec4<bool>(true, true, true, true))))));
    var var_2 = vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(-1i, u_input.b, u_input.b, var_0.x)), countOneBits(vec4<i32>(var_0.x, global1.e.x, global1.d.b, u_input.b)) | _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i, 24752i), vec4<i32>(var_0.x, 1i, 0i, u_input.b))), vec4<i32>(1i, 9312i, -16432i, -2147483647i)), global1.d.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(global1.a.d), vec3<i32>(-1640i, -1i, global1.a.a)), -global1.a.d) >> (global1.c % 32u));
    let var_3 = ~((u_input.a ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c, 0u, 0u), u_input.d), 15040u, ~18507u)) << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.d.xwx, vec3<u32>(0u, 14255u, 4294967295u)), ~global1.c), u_input.a), 12u)] % 32u));
    return ~_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(30485u, 1u), vec2<u32>(var_3, 15853u)), select(vec2<u32>(global0[_wgslsmith_index_u32(var_3, 12u)], 0u), u_input.d.xw, global1.d.a))), vec2<u32>(countOneBits(_wgslsmith_div_u32(31707u, global0[_wgslsmith_index_u32(1u, 12u)])), reverseBits(4294967295u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_2(1i, global1.d.a, arg_0.x >> (global1.c % 32u), _wgslsmith_clamp_vec3_i32(vec3<i32>(min(arg_0.x, ~u_input.b), 1i, -arg_0.x << (global1.c % 32u)), vec3<i32>(-34645i, firstTrailingBit(67567i), ~global1.e.x), vec3<i32>(~(~arg_0.x), abs(u_input.b), -reverseBits(global1.e.x))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_2.x))));
    var var_2 = ~u_input.d;
    return Struct_3(global1.a, -3244i, ~_wgslsmith_clamp_u32(arg_1, u_input.a << (~global1.c % 32u), 843u), Struct_1(false, _wgslsmith_add_i32(-44735i, _wgslsmith_dot_vec2_i32(arg_0, global1.a.d.xy)) >> (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, firstTrailingBit(4294967295u)), 12u)] % 32u)), abs(abs(~abs(var_0.d))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_4 {
    global1 = arg_2;
    global1 = arg_2;
    global1 = arg_1;
    var var_0 = ~arg_2.c;
    var_0 = _wgslsmith_mult_u32(1u, ~arg_1.c);
    return Struct_4(~arg_2.c, arg_1.a, Struct_1(arg_3, arg_1.a.a));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, firstLeadingBit(~24242u), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(0u, global0[_wgslsmith_index_u32(67119u, 12u)], false), global0[_wgslsmith_index_u32(arg_0.a, 12u)], u_input.d.x), abs(vec3<u32>(u_input.c, 93856u, 1u)), ~abs(vec3<u32>(91757u, global0[_wgslsmith_index_u32(global1.c, 12u)], u_input.c))));
    var var_1 = select(vec2<i32>(select(abs(abs(arg_0.c.b)), -9322i, arg_0.c.a), func_2()), reverseBits(vec2<i32>(1i, -arg_2.c.b)) ^ global1.e.xy, !vec2<bool>((55135u < arg_2.a) && true, false));
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32((_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_2.b.a, 21253i), vec4<i32>(var_1.x, -1i, -2147483647i, global1.e.x)) >> (vec4<u32>(global0[_wgslsmith_index_u32(65183u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 4294967295u, u_input.c) % vec4<u32>(32u))) ^ select(_wgslsmith_mult_vec4_i32(vec4<i32>(-10627i, arg_0.b.a, u_input.b, 2147483647i), vec4<i32>(-10104i, -2147483647i, arg_0.b.d.x, arg_2.b.c)), max(vec4<i32>(global1.d.b, var_1.x, -1i, u_input.b), vec4<i32>(0i, -26567i, global1.d.b, -24516i)), 1u != arg_2.a), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, arg_2.c.b, global1.e.x, arg_2.b.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-64288i, 2147483647i, 12744i, arg_0.c.b), vec4<i32>(41088i, arg_0.b.a, 12360i, -1375i))), ~(-global1.b), ~u_input.b, arg_2.c.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.b, ~global1.e.x), vec4<i32>(arg_2.b.a, 45563i, firstLeadingBit(arg_1.x), select(24055i, 0i, false && arg_2.b.b))));
    let var_3 = 11801i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1710f + -1421f), _wgslsmith_f_op_f32(abs(1504f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1225f, -1128f)))) * vec2<f32>(-635f, -907f))));
    return Struct_3(Struct_2(~_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_2.b.a, -6776i), ~7911i), true, u_input.b, vec3<i32>(_wgslsmith_sub_i32(-2147483647i << (arg_0.a % 32u), _wgslsmith_sub_i32(var_2.x, global1.e.x)), max(-87182i, -9314i), _wgslsmith_mult_i32(arg_1.x, ~arg_1.x))), -2147483647i << (reverseBits(_wgslsmith_sub_u32(global1.c | global0[_wgslsmith_index_u32(0u, 12u)], arg_2.a)) % 32u), 59886u, global1.d, arg_2.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(global1.a, func_4(vec2<i32>(u_input.b ^ 1i, _wgslsmith_add_i32(u_input.b, global1.e.x)), ~func_1(-880f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(387f, 140f, 106f, -823f))), !select(vec3<bool>(global1.a.b, false, false), vec3<bool>(global1.a.b, false, false), vec3<bool>(global1.a.b, false, false))), Struct_3(global1.a, u_input.b, global1.c & func_4(global1.e.zx, global1.c, vec4<f32>(495f, 347f, -777f, 607f), vec3<bool>(false, global1.a.b, global1.a.b)).c, global1.d, vec3<i32>(~0i, global1.b | 262i, _wgslsmith_div_i32(u_input.b, -1i))), !(!any(vec4<bool>(global1.d.a, global1.a.b, true, global1.a.b)))), -(~abs(min(vec3<i32>(global1.b, -74912i, 1i), vec3<i32>(2147483647i, global1.e.x, global1.a.d.x)))), Struct_4(_wgslsmith_sub_u32(0u ^ global1.c, 1823u) << (global1.c % 32u), func_5(Struct_2(33028i, true, u_input.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32557u, 12u)], 12u)] % 32u), ~global1.e), Struct_3(func_5(Struct_2(1i, false, u_input.b, global1.e), Struct_3(global1.a, -1i, global1.c, Struct_1(global1.a.b, global1.b), vec3<i32>(global1.d.b, u_input.b, global1.e.x)), Struct_3(global1.a, -655i, u_input.c, Struct_1(global1.d.a, 1i), global1.e), false).b, 53191i, ~4294967295u, Struct_1(true, -2147483647i), global1.e), Struct_3(global1.a, u_input.b, 4294967295u | global0[_wgslsmith_index_u32(u_input.c, 12u)], global1.d, global1.e), true).b, func_4(_wgslsmith_div_vec2_i32(global1.a.d.yy, global1.a.d.yy) ^ global1.a.d.zz, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 12u)], 12u)], vec4<f32>(-1256f, _wgslsmith_f_op_f32(1205f * 365f), _wgslsmith_f_op_f32(step(1180f, -1000f)), -701f), vec3<bool>(true, !global1.d.a, true)).d));
    let var_1 = Struct_1(!(!all(!vec3<bool>(false, false, var_0.a.b))), func_4(~vec2<i32>(34669i, global1.e.x), 0u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(509f, 637f, 1565f, -1482f), vec4<f32>(-159f, 529f, 358f, 1135f), vec4<bool>(var_0.d.a, global1.a.b, true, global1.a.b))))), select(vec3<bool>(false, true, true), select(vec3<bool>(var_0.d.a, global1.a.b, true), vec3<bool>(var_0.d.a, false, global1.d.a), vec3<bool>(true, global1.d.a, var_0.a.b)), select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.a.b, var_0.d.a), vec3<bool>(var_0.a.b, var_0.d.a, global1.a.b)))).e.x & var_0.d.b);
    global1 = Struct_3(var_0.a, 20387i, ~_wgslsmith_dot_vec4_u32(~u_input.d, u_input.d ^ vec4<u32>(9665u, 50040u, u_input.c, 5812u)) | firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(var_0.c, 12u)]) | ~global0[_wgslsmith_index_u32(0u, 12u)]), var_0.d, _wgslsmith_clamp_vec3_i32(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), var_0.a.d, var_0.a.d)), var_0.e, -vec3<i32>(_wgslsmith_sub_i32(global1.a.a, var_1.b), func_5(global1.a, Struct_3(global1.a, 14575i, u_input.c, var_0.d, var_0.a.d), Struct_3(Struct_2(var_0.d.b, var_0.a.b, -23557i, vec3<i32>(-3825i, 0i, global1.b)), 2147483647i, global1.c, Struct_1(true, var_0.d.b), vec3<i32>(var_0.e.x, var_0.e.x, var_0.d.b)), var_1.a).c.b, 0i)));
    let var_2 = func_5(global1.a, Struct_3(Struct_2(u_input.b, var_1.a, ~2147483647i, vec3<i32>(_wgslsmith_mult_i32(var_1.b, -17427i), ~(-9514i), _wgslsmith_dot_vec3_i32(vec3<i32>(11498i, u_input.b, 2147483647i), var_0.e))), firstTrailingBit(-2147483647i), _wgslsmith_sub_u32(global1.c, var_0.c << (_wgslsmith_dot_vec2_u32(u_input.d.wy, vec2<u32>(1u, 0u)) % 32u)), func_5(Struct_2(global1.a.a, global1.d.a, var_1.b << (1u % 32u), vec3<i32>(-29969i, -1i, 29557i)), func_4(vec2<i32>(1i, -2147483647i), _wgslsmith_mult_u32(4294967295u, u_input.d.x), vec4<f32>(-570f, 525f, 327f, 277f), select(vec3<bool>(true, var_0.d.a, false), vec3<bool>(var_1.a, var_0.d.a, var_1.a), vec3<bool>(true, false, false))), Struct_3(var_0.a, min(-231i, -1153i), ~global0[_wgslsmith_index_u32(global1.c, 12u)], func_6(Struct_4(26759u, global1.a, var_0.d), global1.e, Struct_4(global0[_wgslsmith_index_u32(u_input.c, 12u)], var_0.a, global1.d)).d, vec3<i32>(1i, 2147483647i, u_input.b)), func_4(~vec2<i32>(var_1.b, global1.e.x), u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, 641f, 1851f, 1098f) + vec4<f32>(437f, -1000f, -1272f, 1000f)), vec3<bool>(false, true, var_0.a.b)).d.a).c, vec3<i32>(_wgslsmith_mult_i32(-1i << (global0[_wgslsmith_index_u32(u_input.c, 12u)] % 32u), _wgslsmith_add_i32(-5998i, 8007i)), -reverseBits(-1i), -global1.b ^ -7800i)), Struct_3(func_4(vec2<i32>(1i, -285i), firstTrailingBit(4294967295u), vec4<f32>(-2046f, _wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_div_f32(585f, -655f), _wgslsmith_f_op_f32(trunc(-639f))), select(vec3<bool>(false, false, false), vec3<bool>(false, var_0.a.b, false), !vec3<bool>(false, var_1.a, var_1.a))).a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(35580i, -2147483647i), global1.e.xy), _wgslsmith_add_u32(~u_input.c << (57480u % 32u), 1u), var_1, ~(~vec3<i32>(u_input.b, -17490i, u_input.b))), false);
    global0 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.c) >> (12994u % 32u), global1.e.yy << ((~(u_input.d.zz | u_input.d.wy) | (vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11917u, 12u)], 12u)]) ^ ~u_input.d.yz)) % vec2<u32>(32u)), -select(_wgslsmith_sub_vec3_i32(vec3<i32>(35208i, -25404i, 51930i), var_2.b.d << (u_input.d.xxw % vec3<u32>(32u))), global1.a.d, select(select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, var_1.a, var_2.c.a), vec3<bool>(false, var_1.a, true)), vec3<bool>(var_0.a.b, false, true), var_0.d.a)), vec4<f32>(-671f, -1338f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1727f - -398f), _wgslsmith_f_op_f32(f32(-1f) * -891f))), 1826f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), -267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1799f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1000f, -295f, false)), _wgslsmith_f_op_f32(-1887f + -135f), _wgslsmith_f_op_f32(f32(-1f) * -223f), -1173f)) + vec4<f32>(1f, 1f, 1f, 1f)));
}

