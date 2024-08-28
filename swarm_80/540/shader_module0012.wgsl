struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1204f, arg_0.a.x, -417f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(420f, 1523f, arg_0.a.x, arg_0.a.x) * vec4<f32>(558f, -523f, 697f, -532f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1695f, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec4<f32>(-1000f, arg_0.a.x, 1000f, -372f)))))));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = arg_0;
    let var_3 = abs(abs(min(23557u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 1u)), 1u, true))));
    return -_wgslsmith_clamp_vec3_i32(abs(u_input.c), ~u_input.b.zzz, vec3<i32>(abs(_wgslsmith_mult_i32(-54501i, 17725i)), 0i, arg_0.b.x));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1674f, -532f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, arg_1))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 499f)))))), max(vec2<i32>(reverseBits(arg_2.x & u_input.c.x), _wgslsmith_add_i32(u_input.d, arg_2.x >> (4294967295u % 32u))), u_input.b.yw));
    let var_1 = true;
    global0 = array<i32, 13>();
    var var_2 = vec2<i32>(-arg_2.x, -29376i);
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(ceil(arg_1));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -500f), _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_div_f32(arg_0.a.x, 637f)), -1333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(16176u, _wgslsmith_f_op_f32(max(224f, -232f)), func_3(arg_0))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, -968f, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1162f, arg_0.a.x, arg_0.a.x, 340f) + vec4<f32>(-1408f, -376f, 1018f, arg_1.a.x))))))));
    var var_1 = true & !(!(!all(vec4<bool>(true, true, false, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_1.a.x, arg_1.a.x)), var_0.wwy)))))));
    return ~(~(~(~vec4<u32>(4294967295u, 45812u, 4294967295u, u_input.a.x))));
}

fn func_1(arg_0: f32, arg_1: i32) -> vec2<f32> {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    var var_0 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, 25418u, 0u)), vec4<u32>(1u, u_input.a.x, 4223u, 1u)) << (~(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 27019u)) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, u_input.a.x, 66534u, u_input.a.x), func_2(Struct_1(vec2<f32>(arg_0, -1081f), vec2<i32>(u_input.d, 1i)), Struct_1(vec2<f32>(1520f, arg_0), u_input.b.zx)), any(vec2<bool>(true, false))), _wgslsmith_div_u32(31268u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(u_input.a.x, 44418u))) < (_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) & u_input.a.x)), vec4<u32>(u_input.a.x >> (min(1u, u_input.a.x) % 32u), _wgslsmith_mult_u32(select(1u, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x)), true), u_input.a.x), reverseBits(firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), ~func_2(Struct_1(vec2<f32>(arg_0, 513f), vec2<i32>(arg_1, u_input.d)), Struct_1(vec2<f32>(-1065f, arg_0), u_input.c.yz)).x));
    let var_1 = reverseBits((countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, var_0.x, 56675u), vec4<u32>(30082u, 0u, 6619u, var_0.x))) ^ var_0.x) >> (u_input.a.x % 32u));
    return vec2<f32>(_wgslsmith_f_op_f32(func_4(1u, arg_0, vec3<i32>(-1i) * -u_input.b.wyw)), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-357f, -1720f), vec2<f32>(2610f, 1527f)))), vec2<f32>(_wgslsmith_f_op_f32(-473f - -278f), _wgslsmith_f_op_f32(f32(-1f) * -835f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(select(-895f, _wgslsmith_f_op_f32(298f + 1008f), false)), u_input.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(528f, -1282f) * vec2<f32>(-969f, 1221f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, 1029f) - vec2<f32>(-950f, 1000f)), true)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(400f, -953f))))));
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1085f) * vec2<f32>(-933f, var_0.x)), var_0, vec2<bool>(select(true, false, false), all(vec3<bool>(true, false, true)))))), _wgslsmith_mult_vec2_i32(~u_input.b.xx, _wgslsmith_add_vec2_i32(u_input.c.yz, vec2<i32>(u_input.d, u_input.c.x))));
    var_1 = ~1u << (~(25549u << (u_input.a.x % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_mult_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.a.x)), ~vec2<u32>(u_input.a.x, 70313u))), _wgslsmith_add_vec2_u32(~u_input.a.yz, ~(~u_input.a.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * -2301f)), -2147483647i);
}

