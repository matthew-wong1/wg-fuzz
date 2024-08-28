struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    let var_0 = 1i <= u_input.a.x;
    let var_1 = Struct_1(u_input.a.zy, vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(-u_input.a.x, -u_input.a.x ^ 2168i, -39440i), -12163i & min(_wgslsmith_clamp_i32(-2147483647i, 1i, u_input.a.x), firstLeadingBit(-1i)), i32(-1i) * -_wgslsmith_sub_i32(0i, -2147483647i)), -1033f, abs(u_input.a.x));
    let var_2 = Struct_1(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, u_input.a.x), _wgslsmith_add_vec2_i32(var_1.b.yx, vec2<i32>(_wgslsmith_add_i32(-2147483647i, -1i), var_1.a.x))), _wgslsmith_mod_vec4_i32(firstTrailingBit(var_1.b), ~vec4<i32>(1i, var_1.b.x, abs(-1i), 1i)), _wgslsmith_f_op_f32(var_1.c * 1197f), -(~abs(695i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, -1268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)))));
    let var_4 = _wgslsmith_add_vec3_u32(reverseBits(abs(firstLeadingBit(~vec3<u32>(18830u, 488u, 44254u)))), ~vec3<u32>(1u, 1u, 1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.c * -1485f))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = ~arg_3;
    var var_1 = Struct_1(abs(arg_0.yy), select(firstTrailingBit(vec4<i32>(-30286i, -50748i, u_input.a.x, -23430i)), arg_3, select(arg_1.x, arg_1.x, false) < ~20919u) << (firstTrailingBit(vec4<u32>(~34399u, 0u, ~4294967295u, arg_1.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_i32(38254i, var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, 835f, _wgslsmith_f_op_f32(-153f - 827f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, -1098f) * vec3<f32>(var_1.c, 1048f, var_1.c)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-555f, 1603f, -162f), vec3<f32>(722f, var_1.c, -1749f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, -198f, var_1.c))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 1082f, 309f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, var_1.c) + vec3<f32>(var_1.c, var_1.c, -295f)))))), true));
    var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(0i, 48874i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1089i, 17915i, 0i) & arg_3, var_0)), -((var_0.zz ^ vec2<i32>(-67513i, -38932i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(arg_1.x, arg_1.x)) % vec2<u32>(32u)))), vec4<i32>(var_0.x, -49912i, -20429i, _wgslsmith_sub_i32(2147483647i, arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1i);
    var var_3 = ~select(~abs(vec3<u32>(27227u, arg_1.x, arg_1.x) << (vec3<u32>(1u, arg_1.x, arg_1.x) % vec3<u32>(32u))), vec3<u32>(arg_1.x, reverseBits(4294967295u), select(_wgslsmith_clamp_u32(arg_1.x, 18511u, arg_1.x), 3370u, all(vec3<bool>(false, false, arg_2)))), false);
    return Struct_1(_wgslsmith_mod_vec2_i32(arg_0.xy, vec2<i32>(reverseBits(var_1.d), ~0i)), ((vec4<i32>(var_0.x, -1i, u_input.a.x, -30919i) << (_wgslsmith_div_vec4_u32(vec4<u32>(33424u, var_3.x, var_3.x, 69985u), vec4<u32>(0u, 69593u, var_3.x, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(24798u, var_3.x >> (4294967295u % 32u), arg_1.x, 1u) % vec4<u32>(32u))) >> (vec4<u32>(1u, ~(~40722u), 1u, ~firstLeadingBit(1u)) % vec4<u32>(32u)), var_2.x, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> vec4<i32> {
    let var_0 = vec3<u32>(~80704u, _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(~(~1u), 1u)), 1u);
    let var_1 = vec3<u32>(~abs(_wgslsmith_mod_u32(var_0.x, var_0.x)), _wgslsmith_sub_u32(~var_0.x, 34191u), _wgslsmith_clamp_u32(min(var_0.x, var_0.x ^ var_0.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x)), _wgslsmith_add_u32(var_0.x, var_0.x) | _wgslsmith_clamp_u32(var_0.x, var_0.x, 0u))) ^ ((~vec3<u32>(15636u, 0u, var_0.x) & max(vec3<u32>(var_0.x, 0u, var_0.x) ^ vec3<u32>(52344u, 66553u, var_0.x), var_0)) ^ abs(var_0));
    var var_2 = arg_0.c >= -494f;
    var var_3 = func_2(~u_input.a, vec2<u32>(min(var_0.x, _wgslsmith_sub_u32(var_1.x, var_1.x)), var_1.x), arg_2.x, arg_1.b);
    let var_4 = ~(~vec4<u32>(max(0u, var_1.x), 1u, 0u, var_0.x)) & select(firstTrailingBit(~vec4<u32>(var_1.x, var_1.x, var_1.x, var_0.x)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(18667u, 23858u, var_0.x, var_0.x), vec4<u32>(61507u, var_0.x, 54371u, 17003u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, 4294967295u), vec4<u32>(92639u, 1725u, 114064u, var_0.x)) ^ vec4<u32>(firstTrailingBit(var_0.x), abs(var_0.x), _wgslsmith_mod_u32(4294967295u, 4294967295u), ~var_0.x), !select(select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, true, true), vec4<bool>(true, true, arg_2.x, arg_2.x)), vec4<bool>(false, arg_2.x, arg_2.x, true), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)));
    return vec4<i32>(u_input.a.x, 26256i, -(~_wgslsmith_sub_i32(i32(-1i) * -29089i, _wgslsmith_add_i32(-1i, arg_1.a.x))), 2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec4<i32> {
    return countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(15538i, arg_1.x, reverseBits(-1i), countOneBits(arg_1.x)), firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, -1i, -35110i) | vec4<i32>(arg_1.x, arg_1.x, arg_1.x, 19275i))), func_4(Struct_1(_wgslsmith_clamp_vec2_i32(arg_1, vec2<i32>(-2147483647i, 1i), arg_1), max(vec4<i32>(u_input.a.x, -2562i, arg_1.x, u_input.a.x), vec4<i32>(arg_1.x, u_input.a.x, -33823i, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1445f), -arg_1.x), func_2(firstLeadingBit(u_input.a), vec2<u32>(47099u, arg_0) ^ vec2<u32>(arg_0, arg_0), true, _wgslsmith_mod_vec4_i32(vec4<i32>(-36266i, -3949i, arg_1.x, arg_1.x), vec4<i32>(64217i, u_input.a.x, 2147483647i, arg_1.x))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(step(513f, -1887f)))));
}

fn func_5(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = func_2(-abs(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_0.a.x), u_input.a, vec3<i32>(2147483647i, arg_0.a.x, -1i)))), ~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 28910u), vec2<u32>(36333u, 68581u), vec2<u32>(10428u, 1u))) << ((~(~vec2<u32>(0u, 14670u)) << (_wgslsmith_mod_vec2_u32(select(vec2<u32>(20913u, 4294967295u), vec2<u32>(0u, 63168u), vec2<bool>(false, true)), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) % vec2<u32>(32u)), true, _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 14332i, arg_0.a.x, -41424i), vec4<i32>(arg_0.b.x, 2147483647i, arg_0.a.x, 31485i), vec4<i32>(arg_0.d, -1i, 11687i, u_input.a.x)), _wgslsmith_mult_vec4_i32(select(arg_0.b, arg_0.b, vec4<bool>(true, true, true, true)), func_4(Struct_1(vec2<i32>(u_input.a.x, 2147483647i), vec4<i32>(-1i, arg_0.b.x, u_input.a.x, u_input.a.x), arg_0.c, u_input.a.x), arg_0, vec3<bool>(true, true, false), arg_0.c))) >> (~abs(countOneBits(vec4<u32>(0u, 25997u, 9453u, 0u))) % vec4<u32>(32u)));
    var_0 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -830f))))), min(abs(12722i), ~u_input.a.x | _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(45461i, arg_0.a.x, -29792i), var_0.b.wzy), ~vec3<i32>(33247i, var_0.d, -1i))));
    var var_1 = max(_wgslsmith_mult_vec2_u32(vec2<u32>(17589u, 37020u) & vec2<u32>(~43099u, _wgslsmith_clamp_u32(4294967295u, 1u, 37075u)), vec2<u32>(1u, 1u)), vec2<u32>(~_wgslsmith_mult_u32(max(59278u, 41986u), _wgslsmith_dot_vec3_u32(vec3<u32>(17488u, 0u, 49849u), vec3<u32>(2346u, 0u, 59770u))), 1u));
    var_0 = arg_0;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(~arg_0.b.x, arg_0.b.x, -u_input.a.x) & (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.d, -23472i, arg_0.d), arg_0.b) >> ((49277u & var_1.x) % 32u)), _wgslsmith_sub_i32(0i, -2147483647i)) >= arg_0.a.x;
    return ~vec3<i32>(firstLeadingBit(select(u_input.a.x, 0i, !var_2)), 2147483647i >> (var_1.x % 32u), -44061i);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(8173i, arg_2.d), arg_2.b.zy) << (~(~vec2<u32>(var_0, var_0)) % vec2<u32>(32u)), func_5(func_2(-vec3<i32>(52129i, -1i, arg_2.d), ~vec2<u32>(49948u, 43907u), arg_0.c < -630f, vec4<i32>(arg_0.b.x, arg_2.d, -10202i, var_1))).xx), vec4<i32>(32990i, 1i, arg_2.a.x, var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c - -899f), _wgslsmith_f_op_f32(floor(-2137f))))), _wgslsmith_add_i32(-13269i | _wgslsmith_mod_i32(_wgslsmith_add_i32(-23686i, 0i), ~var_1), arg_1.x));
    let var_3 = vec4<u32>(var_0 & ~max(var_0 << (var_0 % 32u), var_0), ~_wgslsmith_clamp_u32(reverseBits(firstLeadingBit(var_0)), var_0 << (7105u % 32u), ~4294967295u), _wgslsmith_mult_u32(firstLeadingBit(~var_0), min(~(1u & var_0), ~(~var_0))), select(~var_0, firstTrailingBit(var_0), false));
    var var_4 = Struct_1(arg_1.xy, vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(var_2.b.x, arg_0.b.x)), arg_0.b.xw), func_2(abs(vec3<i32>(0i, -15027i, u_input.a.x)), ~var_3.xx, true, -arg_0.b).d), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a, arg_2.b.wyy), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, arg_2.d, var_2.b.x, u_input.a.x), vec4<i32>(var_1, var_1, 1i, 25496i))), firstLeadingBit(-var_2.b.x >> ((var_0 >> (26880u % 32u)) % 32u)), reverseBits(countOneBits(func_2(vec3<i32>(0i, var_1, 17467i), vec2<u32>(var_0, 4294967295u), true, vec4<i32>(-21335i, arg_0.d, arg_0.b.x, 24130i)).b.x))), arg_0.c, select(~func_1(96086u, _wgslsmith_sub_vec2_i32(arg_0.a, vec2<i32>(33583i, 10001i))).x, ~(~38313i) & select(-1i, -arg_1.x, all(vec3<bool>(false, false, true))), true));
    return Struct_1(-func_2(firstTrailingBit(arg_2.b.xzw), var_3.yw, true, ~(arg_0.b >> (var_3 % vec4<u32>(32u)))).b.wy, countOneBits(vec4<i32>(~u_input.a.x, abs(-1i), ~var_4.a.x, ~(-17391i))), -570f, 57043i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(~firstTrailingBit(~vec2<i32>(2147483647i, -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a.x, ~u_input.a.x, -1i, u_input.a.x & 37329i), vec4<i32>(-10536i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-2147483647i, ~u_input.a.x, u_input.a.x | u_input.a.x, 24276i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f - _wgslsmith_f_op_f32(202f + -667f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1476f, -1000f))), firstLeadingBit(_wgslsmith_div_i32(13782i, u_input.a.x))), -func_5(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), func_1(779u, u_input.a.zz), -713f, -1i)), func_2(abs(~max(vec3<i32>(u_input.a.x, 1i, 2147483647i), vec3<i32>(19093i, 2147483647i, 39881i))), select(reverseBits(vec2<u32>(48035u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 65258u), abs(vec2<u32>(65563u, 0u))), true), true, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 33790i, u_input.a.x, u_input.a.x), vec4<i32>(-11503i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(u_input.a.x, 16234i, u_input.a.x, -27198i))), firstTrailingBit(~vec4<i32>(u_input.a.x, 2147483647i, -1i, 2147483647i)), -vec4<i32>(u_input.a.x, -20140i, 18118i, -3675i))));
    let var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.c), 1268f, var_0.c) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-980f, -583f, var_0.c, 1000f) * vec4<f32>(var_0.c, var_0.c, -1441f, var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, -2046f)))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(floor(var_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1767f), 304f), vec4<f32>(_wgslsmith_f_op_f32(max(1509f, -1000f)), _wgslsmith_div_f32(-426f, var_0.c), _wgslsmith_f_op_f32(min(696f, var_0.c)), _wgslsmith_f_op_f32(-var_0.c)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, var_0.c)), true))), true)));
    let var_3 = vec3<bool>(!select(true, true, true), true, ((any(vec2<bool>(false, true)) || any(vec4<bool>(false, false, false, false))) || any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))) && true);
    var var_4 = Struct_1(vec2<i32>(var_1.x, _wgslsmith_mod_i32(45995i, -1i)), -func_1(4294967295u, vec2<i32>(1i, ~(-2147483647i))), var_2.x, var_0.b.x);
    let var_5 = reverseBits(_wgslsmith_mult_u32(firstLeadingBit(86657u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(74779u, 0u)), vec2<u32>(select(4294967295u, 61201u, false), 1u))));
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-416f, 371f, var_4.c, 1388f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(822f, -1531f, var_4.c, var_4.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, var_4.c, var_2.x, var_2.x) * vec4<f32>(741f, 652f, var_2.x, var_2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(abs(var_4.b.wxy ^ vec3<i32>(var_1.x, var_0.d, var_1.x)) & (vec3<i32>(var_4.a.x, var_4.b.x, var_4.b.x) | firstTrailingBit(vec3<i32>(var_1.x, 1i, u_input.a.x))), ~(~(vec2<u32>(1u, var_5) >> (vec2<u32>(var_5, 4294967295u) % vec2<u32>(32u)))), false, ~var_0.b).d, ~firstTrailingBit(0i), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -543f, var_2.x, _wgslsmith_f_op_f32(min(1500f, _wgslsmith_f_op_f32(2079f * var_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.c, var_0.c, var_0.c, var_4.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -211f, -1000f)))), max(~countOneBits(vec2<u32>(var_5, 0u)), max(vec2<u32>(18989u, firstTrailingBit(var_5)), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_5, 62704u), vec2<u32>(var_5, 4294967295u)))));
}

