struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29>;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    return global1.xw;
}

fn func_4(arg_0: Struct_2) -> i32 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = all(select(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), 2147483647i > global1.x), vec4<bool>(true, !any(vec2<bool>(true, false)), false, !all(vec3<bool>(false, false, true))), false));
    global0 = array<vec3<u32>, 29>();
    let var_1 = vec4<f32>(arg_0.c, -633f, _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(-arg_0.a)), -112f);
    var var_2 = vec3<bool>(!(true != all(vec4<bool>(true, true, true, true))), true, !any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), vec3<bool>(false, true, false))));
    return -13366i;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> f32 {
    global1 = vec4<i32>(func_4(Struct_2(_wgslsmith_f_op_f32(max(-457f, _wgslsmith_f_op_f32(-arg_0.a.x))), Struct_1(~vec3<i32>(1i, arg_2.d, 1i), _wgslsmith_f_op_f32(trunc(-1131f))), _wgslsmith_f_op_f32(-584f + 1f), _wgslsmith_sub_vec2_i32(global1.zw, vec2<i32>(-6707i, 2147483647i)) | func_3(0i))), ~abs(_wgslsmith_sub_i32(arg_0.d, -global1.x)), -2273i, -abs(arg_0.d));
    var var_0 = u_input.a >> (1u % 32u);
    let var_1 = _wgslsmith_div_u32(countOneBits(31580u), select(arg_0.e.x, ~(~countOneBits(arg_0.e.x)), arg_0.b.x & any(!vec2<bool>(true, arg_0.b.x))));
    global0 = array<vec3<u32>, 29>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(abs(-2036f)), abs(global1.x) > func_4(Struct_2(804f, Struct_1(vec3<i32>(arg_2.d, 0i, global1.x), 430f), 1000f, global1.zy)))), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(38300i << (u_input.b.x % 32u), ~arg_0.d, _wgslsmith_mult_i32(-1i, global1.x)), ~global1.x & (global1.x << (arg_0.e.x % 32u)), _wgslsmith_add_i32(global1.x << (arg_2.e.x % 32u), arg_2.d)), 143f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) + 611f))), -(vec2<i32>(arg_0.d, i32(-1i) * -1712i) | _wgslsmith_add_vec2_i32(countOneBits(global1.yz), ~vec2<i32>(0i, arg_2.d))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_0.a.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    global1 = abs(max(_wgslsmith_sub_vec4_i32(~vec4<i32>(-33975i, 0i, arg_1.x, arg_1.x), select(vec4<i32>(arg_0.d, 47786i, -37782i, arg_2.a.x), vec4<i32>(arg_1.x, global1.x, arg_0.d, global1.x), arg_0.b.x)) | vec4<i32>(arg_0.d, firstTrailingBit(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, global1.x, global1.x), vec4<i32>(global1.x, -12383i, arg_0.d, arg_2.a.x)), abs(26913i)), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(-46799i, arg_2.a.x, 1i, -46993i), vec4<i32>(-45562i, 1i, arg_1.x, global1.x))), min(vec4<i32>(-1i, global1.x, arg_1.x, arg_1.x) ^ vec4<i32>(global1.x, -6978i, -36068i, global1.x), -vec4<i32>(37423i, arg_2.a.x, arg_2.a.x, arg_2.a.x)), reverseBits(vec4<i32>(arg_2.a.x, -2147483647i, 72148i, 1i)))));
    global1 = countOneBits(-select(-vec4<i32>(arg_0.d, arg_1.x, 45237i, arg_1.x), select(vec4<i32>(global1.x, arg_0.d, -2147483647i, -2147483647i), vec4<i32>(3092i, global1.x, global1.x, arg_2.a.x), false) ^ -vec4<i32>(2147483647i, -19034i, arg_0.d, arg_1.x), !vec4<bool>(false, true, true, arg_0.b.x)));
    let var_0 = arg_0.b.yz;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32((select(arg_0.e, vec4<u32>(4294967295u, arg_3, arg_3, arg_0.e.x), vec4<bool>(true, var_0.x, true, false)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.e.x, 4294967295u, 4294967295u, u_input.b.x), arg_0.e)) << (vec4<u32>(1u >> (0u % 32u), 34288u, 18854u, 4294967295u) % vec4<u32>(32u)), arg_0.e), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(24436u & arg_0.e.x), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_3, arg_0.e.x)))), abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 42675u), ~arg_0.e.ww))), arg_0.e.x, arg_3);
    let var_2 = -global1.x;
    return -1i;
}

fn func_1() -> Struct_3 {
    var var_0 = ~global0[_wgslsmith_index_u32(min(26157u, _wgslsmith_mod_u32(abs(~0u), ~(~u_input.b.x))), 29u)];
    global1 = vec4<i32>(global1.x, firstLeadingBit(global1.x), ~_wgslsmith_mult_i32(~(-3696i), ~(-6824i << (1u % 32u))), func_5(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(701f, 173f) * vec2<f32>(-1050f, -1949f)) - vec2<f32>(1f, 1f)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), false, global1.x, ~(vec4<u32>(u_input.b.x, 61772u, 38771u, var_0.x) ^ vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec2<i32>(-(~2147483647i), 30017i), Struct_1(vec3<i32>(-1i) * -vec3<i32>(global1.x, global1.x, 1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f), _wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(-1113f, 1090f), vec4<bool>(false, true, false, true), true, global1.x, vec4<u32>(63816u, var_0.x, var_0.x, u_input.a)), false, Struct_3(vec2<f32>(279f, 319f), vec4<bool>(true, true, false, false), false, 64034i, vec4<u32>(21052u, 58672u, 1u, 54461u)))))), abs(_wgslsmith_clamp_u32(8531u ^ var_0.x, _wgslsmith_clamp_u32(u_input.b.x, 1u, 2035u), ~18382u))));
    var var_1 = ~(_wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(var_0.x, var_0.x, u_input.a, 0u)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(0u, 0u), var_0.x ^ var_0.x, 4294967295u)) ^ ~(~min(vec4<u32>(u_input.a, 2220u, 37938u, var_0.x), vec4<u32>(0u, 27083u, u_input.b.x, u_input.b.x))));
    let var_2 = ~vec3<i32>(abs(global1.x ^ _wgslsmith_div_i32(-742i, -6754i)), ~_wgslsmith_sub_i32(_wgslsmith_sub_i32(25874i, -18212i), abs(2147483647i)), ~countOneBits(select(0i, global1.x, true)));
    let var_3 = Struct_2(_wgslsmith_div_f32(-1207f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-544f - 1248f)))))), Struct_1(vec3<i32>(func_3(global1.x).x, 1i, _wgslsmith_sub_i32(var_2.x, _wgslsmith_mult_i32(var_2.x, global1.x))), 1038f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-130f - 1610f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1438f - 427f)) - 1f)), vec2<i32>(0i >> (var_1.x % 32u), var_2.x) >> (~reverseBits(var_0.zz) % vec2<u32>(32u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(877f, -572f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(948f, -1531f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, var_3.b.b))))), !(!vec4<bool>(any(vec4<bool>(true, true, false, false)), var_3.c <= -1000f, false, true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) | true, var_2.x, ~min(abs(vec4<u32>(var_1.x, 48625u, var_0.x, var_1.x) << (vec4<u32>(var_0.x, 0u, 1u, 35231u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_1.x, 41754u, var_1.x), ~vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.b.x))));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = select(!arg_0.b.x, arg_0.b.x, true);
    let var_1 = all(vec3<bool>(false, arg_0.b.x, true)) | !arg_0.c;
    global1 = -(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, arg_0.d, -4207i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-40489i, arg_0.d, global1.x, -1i), vec4<i32>(-34934i, -31113i, 10655i, -61940i))), vec4<i32>(global1.x, func_4(arg_2), max(arg_2.d.x, 0i), firstLeadingBit(arg_2.b.a.x))) | ((vec4<i32>(-1i) * -vec4<i32>(arg_2.b.a.x, -1i, global1.x, arg_0.d)) ^ -vec4<i32>(global1.x, global1.x, arg_2.d.x, -18821i)));
    global1 = (_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -40072i, 2147483647i >> (arg_0.e.x % 32u), 0i >> (arg_0.e.x % 32u)), vec4<i32>(24360i >> (arg_0.e.x % 32u), ~(-55152i), abs(arg_2.b.a.x), 2147483647i >> (1u % 32u))) ^ vec4<i32>(func_5(arg_0, vec2<i32>(13070i, global1.x), arg_2.b, select(u_input.b.x, 70041u, false)), firstLeadingBit(func_1().d), func_1().d, ~_wgslsmith_clamp_i32(arg_2.d.x, arg_0.d, 0i))) & -((~vec4<i32>(2147483647i, global1.x, -2147483647i, arg_0.d) << (reverseBits(arg_0.e) % vec4<u32>(32u))) ^ vec4<i32>(-12110i, -97307i, _wgslsmith_add_i32(-1i, 33583i), -global1.x));
    let var_2 = 6511i;
    return arg_2.b;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    let var_0 = -375f;
    global0 = array<vec3<u32>, 29>();
    var var_1 = vec3<i32>(arg_2.a.x, -2147483647i, _wgslsmith_div_i32(12713i, ~_wgslsmith_div_i32(max(arg_3.d, arg_1.b.a.x), _wgslsmith_mult_i32(arg_0.a.x, -2147483647i))));
    return func_6(Struct_3(arg_3.a, select(vec4<bool>(arg_3.b.x, 1u < u_input.b.x, arg_2.b >= arg_2.b, func_1().c), select(!arg_3.b, arg_3.b, !arg_3.c), func_1().b), any(vec2<bool>(arg_3.c, arg_3.c)), 0i, arg_3.e), vec2<f32>(-1787f, -210f), Struct_2(248f, arg_1.b, -1000f, _wgslsmith_sub_vec2_i32(-vec2<i32>(-47693i, arg_0.a.x), abs(-var_1.xy))));
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global1 = -vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_mod_i32(global1.x, 11472i)), arg_1.a.x), func_1().d >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(26373u, 29u)], vec3<u32>(103780u, 60757u, u_input.a)), min(u_input.a, u_input.a), reverseBits(u_input.a)) % 32u), -13527i, -countOneBits(global1.x | global1.x));
    var var_0 = ~arg_1.a.x;
    let var_1 = _wgslsmith_div_vec3_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(u_input.a, 4294967295u), 46063u), 29u)]);
    let var_2 = _wgslsmith_mod_u32(u_input.b.x, u_input.b.x) >> (u_input.a % 32u);
    let var_3 = arg_1;
    return vec3<i32>(_wgslsmith_add_i32(-19199i, -1i), ~firstTrailingBit(-reverseBits(arg_1.a.x)), func_6(Struct_3(vec2<f32>(1f, arg_1.b), vec4<bool>(true, true, true, true), true, -2147483647i, max(vec4<u32>(var_2, u_input.a, 4294967295u, var_1.x) & vec4<u32>(57361u, var_2, u_input.a, 0u), reverseBits(vec4<u32>(72023u, var_1.x, 20132u, u_input.b.x)))), vec2<f32>(var_3.b, _wgslsmith_f_op_f32(-920f + _wgslsmith_f_op_f32(select(465f, -251f, true)))), Struct_2(var_3.b, func_7(Struct_1(global1.zyw, var_3.b), Struct_2(-548f, arg_0, var_3.b, arg_0.a.xz), Struct_1(arg_1.a, arg_0.b), func_1()), _wgslsmith_f_op_f32(-var_3.b), arg_0.a.xy)).a.x);
}

fn func_9(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_div_f32(arg_1.x, -916f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(531f, -518f), arg_1.yx)), _wgslsmith_f_op_vec2_f32(-arg_1.yz)))))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), func_1().b, vec4<bool>(true, true, true, true)), select(func_1().b, func_1().b, select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true)), true), false), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), true)), 20897i, _wgslsmith_mult_vec4_u32(vec4<u32>(~abs(u_input.b.x), u_input.a, ~1u, 105950u), select(vec4<u32>(1u, 4294967295u, 29668u, u_input.a & u_input.b.x), ~(vec4<u32>(u_input.b.x, 0u, 0u, 69979u) >> (vec4<u32>(1u, 0u, 1u, u_input.a) % vec4<u32>(32u))), !all(vec4<bool>(true, false, true, false)))));
    let var_1 = vec2<f32>(219f, var_0.a.x);
    let var_2 = func_7(Struct_1(func_8(func_7(func_7(Struct_1(arg_0, -630f), Struct_2(var_0.a.x, Struct_1(vec3<i32>(var_0.d, arg_0.x, -54718i), -1101f), var_0.a.x, global1.zw), Struct_1(global1.wzz, 1000f), Struct_3(arg_1.yz, vec4<bool>(false, false, false, false), var_0.c, global1.x, var_0.e)), Struct_2(-1370f, Struct_1(global1.zzy, 469f), var_1.x, arg_0.zx), func_7(Struct_1(global1.wyz, 446f), Struct_2(arg_1.x, Struct_1(arg_0, 1263f), 1009f, global1.yw), Struct_1(vec3<i32>(var_0.d, global1.x, arg_0.x), 150f), Struct_3(vec2<f32>(var_0.a.x, -445f), vec4<bool>(var_0.c, var_0.c, false, false), var_0.c, var_0.d, vec4<u32>(4294967295u, u_input.b.x, 13292u, u_input.a))), func_1()), func_6(Struct_3(var_1, var_0.b, var_0.c, -2147483647i, vec4<u32>(4294967295u, var_0.e.x, var_0.e.x, 4294967295u)), vec2<f32>(279f, var_1.x), Struct_2(429f, Struct_1(vec3<i32>(44414i, arg_0.x, arg_0.x), -930f), arg_1.x, global1.yz))), 1f), Struct_2(646f, Struct_1(_wgslsmith_add_vec3_i32(arg_0, vec3<i32>(0i, global1.x, -1i)), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-201f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), 843f)), global1.zx), Struct_1(vec3<i32>(-1i, -1i, -(global1.x ^ -16430i)), var_0.a.x), Struct_3(var_1, var_0.b, var_0.b.x, _wgslsmith_mult_i32(-55917i, abs(~global1.x)), firstLeadingBit(func_1().e)));
    global1 = -((firstLeadingBit(~vec4<i32>(64377i, -32641i, arg_0.x, -14758i)) << (vec4<u32>(67252u, 47577u, ~u_input.b.x, 0u) % vec4<u32>(32u))) ^ ~(-(vec4<i32>(var_2.a.x, -72995i, arg_0.x, -1i) & vec4<i32>(59697i, 81079i, -1123i, -1i))));
    var var_3 = vec2<u32>(30844u, (u_input.b.x & ~1u) << (_wgslsmith_mod_u32(36384u, 4294967295u) % 32u));
    return Struct_1(~(-(firstTrailingBit(global1.yyy) ^ (var_2.a << (vec3<u32>(12252u, u_input.a, 45941u) % vec3<u32>(32u))))), var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 29>();
    let var_0 = i32(-1i) * -global1.x;
    global1 = -vec4<i32>(-1i, global1.x, var_0, firstTrailingBit(0i));
    var var_1 = func_9(func_8(Struct_1(vec3<i32>(1i, -77876i, 2147483647i) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 1u), vec3<u32>(u_input.b.x, 1u, u_input.a), vec3<u32>(u_input.b.x, 1u, 44675u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(1f))), func_7(func_6(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1041f, -877f)), Struct_2(-622f, Struct_1(vec3<i32>(14683i, 28744i, var_0), 208f), -1500f, vec2<i32>(global1.x, 4138i))), Struct_2(_wgslsmith_f_op_f32(-1599f + 494f), func_6(Struct_3(vec2<f32>(2054f, -1275f), vec4<bool>(false, false, false, true), false, var_0, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b.x)), vec2<f32>(-660f, 862f), Struct_2(1463f, Struct_1(global1.xzx, -1736f), -656f, global1.wz)), func_6(Struct_3(vec2<f32>(411f, -743f), vec4<bool>(true, true, true, true), true, 1i, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 1u)), vec2<f32>(1304f, -1935f), Struct_2(-1793f, Struct_1(global1.xzz, 959f), 2118f, global1.wx)).b, global1.xw), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 25213i, -53235i), global1.wyw), -915f), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, -530f) - vec2<f32>(240f, -534f)), vec4<bool>(true, true, true, true), true, ~(-49741i), ~vec4<u32>(u_input.a, 12870u, u_input.a, u_input.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -924f), _wgslsmith_f_op_f32(max(321f, -365f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1811f), _wgslsmith_div_f32(-1187f, 843f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1217f)))), 972f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -172f), Struct_1(max(global1.zxx, vec3<i32>(var_0, _wgslsmith_div_i32(-1i, var_0), ~var_1.a.x)), 1069f), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(1053f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1318f - var_1.b))))), func_6(Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, -130f), vec2<f32>(var_1.b, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, var_1.b)))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), true, abs(1i), select(func_1().e, ~vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.b.x), any(vec3<bool>(true, true, true)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -905f)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, -154f) - _wgslsmith_f_op_f32(-956f + -1118f)), func_9(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, var_0, var_1.a.x), var_1.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-276f, -922f, var_1.b), vec3<f32>(-1479f, var_1.b, 1189f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1344f)))), vec2<i32>(0i, var_1.a.x))).a.xy);
    var var_3 = func_1().e.x;
    var var_4 = Struct_3(vec2<f32>(var_2.a, var_1.b), vec4<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), false, false, false), true, _wgslsmith_sub_i32(abs(firstLeadingBit(2147483647i)), ~func_9(var_2.b.a | var_2.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, var_1.b, 1826f) - vec3<f32>(-570f, 334f, -322f))).a.x), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, 8241u, u_input.a) | vec4<u32>(u_input.a, 1u, 0u, 4294967295u)), vec4<u32>(~u_input.b.x, firstLeadingBit(u_input.b.x), u_input.b.x, ~1u)), ~(abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 0u)) | reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 9753u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(-23838i) >> ((var_4.e.x ^ firstTrailingBit(61934u)) % 32u), 57957i, -46196i), ~_wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, var_4.e.x), firstLeadingBit(u_input.b.x & u_input.a)), u_input.a, ~(~var_4.e.x));
}

