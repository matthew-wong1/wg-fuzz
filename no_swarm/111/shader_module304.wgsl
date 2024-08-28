struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> bool {
    var var_0 = true;
    var_0 = ((u_input.b == ~max(u_input.b, -2147483647i)) || true) || false;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), 1119f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-134f, -1467f) + vec2<f32>(1438f, 233f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(377f, 1764f) + vec2<f32>(748f, -197f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(411f - 1086f), _wgslsmith_f_op_f32(-963f + -261f)), _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-744f, 1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-666f, -618f), vec2<f32>(-534f, -1298f)))))));
    let var_2 = -1565f;
    var_0 = true;
    return true;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<i32>) -> i32 {
    var var_0 = abs(~5861i);
    let var_1 = true;
    var_0 = ~firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c) & arg_3, _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 24921i, u_input.b), arg_3), select(vec3<i32>(8877i, -2147483647i, -21717i), arg_3, arg_1.c.wxx)), firstLeadingBit(arg_3 ^ arg_3)));
    let var_2 = _wgslsmith_f_op_f32(arg_2.x * 916f);
    var_0 = u_input.b;
    return -8775i;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1057f)));
    var var_1 = Struct_1(~func_3(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.x), vec2<u32>(arg_0, 59320u)), arg_0 & arg_1.x), Struct_1(-1i, firstTrailingBit(u_input.b), vec4<bool>(true, false, true, false), u_input.b, select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, -369f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(195f, 638f))), -select(vec3<i32>(u_input.c, u_input.b, u_input.c), vec3<i32>(u_input.b, 50974i, u_input.b), true)), u_input.b, vec4<bool>(u_input.c > firstTrailingBit(-60233i), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), any(vec3<bool>(true, any(vec2<bool>(true, true)), true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), u_input.c << (1269u % 32u), vec4<bool>(true, true, false, all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_2 = _wgslsmith_add_u32(arg_1.x, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 35778u, arg_0, 53006u), vec4<u32>(arg_0, u_input.a, arg_0, 0u))) ^ abs(~vec4<u32>(arg_1.x, u_input.a, arg_0, 1u)), vec4<u32>(max(arg_0, firstLeadingBit(74102u)), 3721u >> (_wgslsmith_sub_u32(75837u, u_input.a) % 32u), 0u, 4294967295u)));
    var_0 = -1091f;
    var var_3 = Struct_1(abs(func_3(0u, Struct_1(var_1.d, 1628i, select(vec4<bool>(false, var_1.c.x, true, var_1.e.x), vec4<bool>(var_1.c.x, true, var_1.c.x, var_1.e.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.e.x, false)), u_input.c ^ u_input.b, !vec4<bool>(var_1.c.x, true, true, var_1.c.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1641f, -838f))), vec3<i32>(var_1.b, -u_input.b, _wgslsmith_mod_i32(7513i, -62297i)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(var_1.b, 46020i), u_input.b), _wgslsmith_mod_i32(-var_1.a, u_input.b)), -1i), vec4<bool>(true, any(!select(vec4<bool>(true, true, var_1.e.x, true), var_1.e, vec4<bool>(false, var_1.c.x, var_1.e.x, var_1.c.x))), select(_wgslsmith_sub_i32(var_1.a, var_1.d) != ~1878i, true, false), any(var_1.c.ww)), 0i, !vec4<bool>(false, var_1.e.x, any(vec3<bool>(false, true, var_1.c.x)), var_1.e.x));
    return !select(select(vec4<bool>(false, func_1(), var_1.e.x, true), var_3.c, true), select(!vec4<bool>(var_1.c.x, false, true, true), var_3.e, var_3.c), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(~(-1i), 31053i, select(!vec4<bool>(false, true, u_input.a != u_input.a, u_input.a == u_input.a), vec4<bool>(false, select(false, true, true), func_1() & func_1(), false), !((u_input.b > -57805i) || any(vec4<bool>(false, true, true, true)))), ~u_input.c, select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), func_2(u_input.a, vec3<u32>(0u, 4294967295u, 0u)), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true || all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), true));
    let var_2 = vec2<u32>(0u, ~(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(30977u, 1u))));
    var_0 = min(u_input.a, 4294967295u);
    let var_3 = !func_1();
    var var_4 = _wgslsmith_dot_vec3_i32(~select(countOneBits(vec3<i32>(var_1.d, 0i, var_1.a)), -vec3<i32>(-1i, 43141i, var_1.a), all(vec3<bool>(var_3, var_3, var_3))), vec3<i32>(-_wgslsmith_sub_i32(1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_1.d, u_input.c), vec3<i32>(u_input.c, 14240i, 3111i)), var_1.b << (var_2.x % 32u))) & -14551i;
    let var_5 = select(!(!var_1.e.yx), select(vec2<bool>(true, var_1.e.x), vec2<bool>(_wgslsmith_mod_u32(4294967295u, u_input.a) != u_input.a, true), _wgslsmith_mult_i32(var_1.b, 2147483647i) != u_input.b), var_1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

