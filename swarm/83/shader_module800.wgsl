struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = Struct_2(arg_0, ~abs(firstLeadingBit(vec2<u32>(4294967295u, 1u))), arg_1.xx, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.a)));
    let var_1 = arg_0.a.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.a.x, -374f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -2418f)))), 363f)), -2764f);
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 699f));
    let var_3 = ~0u;
    return vec2<i32>(~(-(~(~2147483647i))), ~abs(0i));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<i32>(~1i, -2147483647i, _wgslsmith_div_i32(u_input.b & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), func_3(Struct_1(vec4<f32>(-157f, -1000f, 1392f, -1325f)), vec4<u32>(23813u, u_input.a, u_input.a, 4294967295u))), ~((u_input.b << (24361u % 32u)) ^ ~(-53922i))));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1038f + 1000f), _wgslsmith_div_f32(-740f, 1000f), 2065f, -1034f) - vec4<f32>(151f, _wgslsmith_f_op_f32(min(1581f, 1375f)), _wgslsmith_div_f32(395f, 212f), -1225f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1532f * 854f), -692f, -1178f, -477f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1695f, -829f, 1935f, -1000f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1588f, -276f, 1316f, -149f), vec4<f32>(-551f, -1103f, 998f, 366f)))))))));
    var_0 = -(reverseBits(countOneBits(vec3<i32>(var_0.x, -42597i, -147i)) ^ (vec3<i32>(-7360i, u_input.b, 0i) & vec3<i32>(22458i, var_0.x, var_0.x))) ^ _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.b, 24651i)), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(u_input.b, 6995i, u_input.b)), vec3<i32>(~0i, 70i, _wgslsmith_clamp_i32(14640i, 52501i, 0i))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.a, var_2.a)) - vec4<f32>(-1313f, -847f, var_2.a.x, var_2.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(max(-2195f, 1074f)), _wgslsmith_f_op_f32(min(-955f, var_2.a.x)), -1326f))), min(~vec2<u32>(0u, ~6442u), select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, u_input.a)) << (vec2<u32>(15279u, 50706u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(31491u, u_input.a), vec2<u32>(39778u, 6440u)), vec2<bool>(true, true))), abs(reverseBits(~vec2<u32>(4294967295u, 4294967295u))) | (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) | vec2<u32>(u_input.a, 1u)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(step(924f, var_2.a.x)), var_2.a.x, _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, true)))))));
    return Struct_1(vec4<f32>(-1366f, _wgslsmith_f_op_f32(f32(-1f) * -1541f), -1091f, 1141f));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_2(), vec2<u32>(~10096u, _wgslsmith_clamp_u32(u_input.a ^ 0u, min(u_input.a, u_input.a), _wgslsmith_add_u32(47802u, 31385u)) | u_input.a), vec2<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(39475u, u_input.a)), ~vec2<u32>(15014u, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), -301f, 405f) - vec4<f32>(_wgslsmith_f_op_f32(max(-689f, arg_0.a.x)), _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), arg_0.a.x))));
    return Struct_2(func_2(), abs(abs(reverseBits(var_0.b))), firstTrailingBit(var_0.c) & reverseBits(~(~var_0.b)), func_2());
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(floor(-1286f))))) + _wgslsmith_f_op_f32(round(arg_0.d.a.x)))));
    var var_1 = Struct_1(arg_0.d.a);
    var var_2 = select(!(!vec4<bool>(true, true, false, all(vec2<bool>(true, false)))), vec4<bool>(1u <= abs(firstLeadingBit(arg_1.x)), true, !(~arg_1.x < 0u), arg_0.a.a.x < _wgslsmith_f_op_f32(-652f * 779f)), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)));
    var var_3 = func_1(Struct_1(vec4<f32>(var_1.a.x, 1000f, var_1.a.x, _wgslsmith_f_op_f32(trunc(func_1(Struct_1(var_1.a)).d.a.x)))));
    return select(select(vec2<bool>(!(var_1.a.x < -158f), true), var_2.wy, !var_2.zz), var_2.wx, select(select(vec2<bool>(var_2.x, false == var_2.x), var_2.xw, !(!vec2<bool>(true, var_2.x))), !var_2.wx, select(var_2.x, _wgslsmith_mod_i32(0i, u_input.b) <= (u_input.b & u_input.b), !var_2.x)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = func_1(func_2());
    var var_1 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, var_0.a.a.x, arg_2.x, arg_2.x), vec4<f32>(arg_2.x, 1791f, var_0.a.a.x, -1024f)))))).d;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 181f, _wgslsmith_div_f32(774f, arg_2.x), _wgslsmith_f_op_f32(ceil(arg_3.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 - var_1.a)), vec4<f32>(-980f, var_1.a.x, _wgslsmith_div_f32(-1083f, 754f), _wgslsmith_f_op_f32(-2417f * var_0.d.a.x))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1555f, 230f, _wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f + 752f)))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = vec4<u32>(~(~(~u_input.a) ^ u_input.a), u_input.a, ~func_1(Struct_1(vec4<f32>(arg_2.a.x, 120f, arg_1.a.x, arg_1.a.x))).c.x, _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))), vec4<u32>(~_wgslsmith_div_u32(53593u, 4294967295u), 43584u, 1u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(1u, u_input.a)))));
    let var_1 = vec4<u32>(~_wgslsmith_mod_u32(min(var_0.x, 0u), _wgslsmith_div_u32(var_0.x, 23225u)) | 4294967295u, var_0.x, countOneBits(firstTrailingBit(u_input.a) >> (_wgslsmith_clamp_u32(abs(0u), 1u, 1u) % 32u)), 4294967295u);
    var var_2 = reverseBits(0u);
    let var_3 = arg_0;
    var var_4 = func_1(func_1(func_2()).d);
    return ~select(~vec4<i32>(u_input.b, arg_0, 12862i, arg_0) >> (select(firstLeadingBit(vec4<u32>(33342u, 0u, 4294967295u, 19550u)), select(var_1, vec4<u32>(var_1.x, 4294967295u, var_4.b.x, var_0.x), true), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-(vec4<i32>(2147483647i, arg_0, var_3, 11510i) >> (var_1 % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 3737i, 0i, arg_0) << (var_0 % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(26994i, -2147483647i, arg_0, arg_0), vec4<i32>(u_input.b, u_input.b, u_input.b, arg_0)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, arg_2.a.x <= 1920f, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(vec3<u32>(u_input.a, u_input.a, 70092u) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))), vec3<u32>(~0u, ~abs(1u), _wgslsmith_mult_u32(u_input.a, 1u)), vec3<bool>(true, true, true)) ^ _wgslsmith_clamp_vec3_u32((select(vec3<u32>(1u, 7390u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), true) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))) | vec3<u32>(u_input.a, ~u_input.a, 114148u), _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(30798u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 45464u), vec3<u32>(u_input.a, 1u, u_input.a))), (vec3<u32>(u_input.a, 131059u, u_input.a) << (vec3<u32>(0u, 1678u, 4294967295u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a, 30171u, 0u) % vec3<u32>(32u))), min(vec3<u32>(50357u, 1u, _wgslsmith_add_u32(u_input.a, u_input.a)), vec3<u32>(u_input.a, ~u_input.a, u_input.a)));
    var_0 = vec3<u32>(_wgslsmith_sub_u32(1u, 1u), ~var_0.x, ~_wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(var_0.x, u_input.a))));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(abs(min(_wgslsmith_div_i32(-27298i, -43499i), i32(-1i) * -76443i)), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-16406i, -1i), _wgslsmith_add_i32(u_input.b, -1i))), min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(44981i, u_input.b), -vec2<i32>(u_input.b, u_input.b)), min(i32(-1i) * -1i, 1i)), u_input.b), vec4<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)), vec2<i32>(u_input.b, -52338i)), _wgslsmith_div_i32(firstLeadingBit(-4536i), _wgslsmith_mult_i32(select(0i, u_input.b, false), -9686i)), u_input.b, -u_input.b));
    var_0 = _wgslsmith_mult_vec3_u32(~((~vec3<u32>(1u, u_input.a, var_0.x) & vec3<u32>(var_0.x, var_0.x, 19150u)) >> (abs(vec3<u32>(var_0.x, 4294967295u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(reverseBits(~(~vec3<u32>(u_input.a, 9924u, u_input.a))), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 43507u, var_0.x), vec3<u32>(var_0.x, 1u, u_input.a) ^ vec3<u32>(39001u, u_input.a, 4294967295u))));
    var_1 = vec4<i32>(-54548i, -u_input.b, var_1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(var_1.x, 11504i, var_1.x)), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, var_1.x, var_1.x), var_1.xxx)), -4386i));
    var_1 = _wgslsmith_mod_vec4_i32(func_6(u_input.b, func_5(func_4(func_1(Struct_1(vec4<f32>(-702f, -158f, 163f, 1000f))), min(vec2<u32>(4294967295u, 1u), var_0.yx), vec2<i32>(1i, u_input.b)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0.x), var_0.yy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-167f, 1843f, 418f, 812f), vec4<f32>(646f, -324f, 508f, -1222f), vec4<bool>(false, false, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1045f, 1073f, 135f, 312f) * vec4<f32>(1513f, 2283f, -180f, -552f))), vec3<f32>(-1805f, -1000f, 1f)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1753f, -437f, 345f, -1000f), vec4<f32>(1300f, 1416f, -114f, 549f), vec4<bool>(false, true, false, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-378f, 782f, 834f, -1566f) - vec4<f32>(-2228f, -1169f, -293f, 1088f))))), func_6(var_1.x, func_5(vec2<bool>(true, true), ~(~vec2<u32>(var_0.x, 21849u)), func_2().a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(679f, 798f, -1073f), vec3<f32>(-982f, -1672f, -1178f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1332f, -426f, -497f))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-957f * -138f), 1273f, _wgslsmith_f_op_f32(f32(-1f) * -1520f), -874f))));
    var_0 = reverseBits(vec3<u32>(~(~var_0.x), 1u, ~4294967295u));
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1936f, 1030f, 115f, -105f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(788f, -1000f, 1497f, -281f)))))))).d;
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.x, 559f, 1763f, -420f), var_2.a))), select(~vec4<u32>(u_input.a, u_input.a, 61774u, u_input.a), ~vec4<u32>(u_input.a, 0u, u_input.a, var_0.x), true)).x, 942f, _wgslsmith_f_op_f32(-var_2.a.x));
}

