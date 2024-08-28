struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = any(vec3<bool>(any(vec3<bool>(true, all(vec3<bool>(arg_1.b.x, false, true)), 17471i < u_input.b.x)), any(!vec2<bool>(arg_1.b.x, arg_1.b.x)), any(!select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, arg_1.b.x)))));
    let var_1 = Struct_1(max(u_input.a, -(u_input.b.x ^ arg_1.a) ^ -arg_1.a), vec3<bool>(any(vec4<bool>(arg_1.b.x, true, arg_1.b.x, false)), arg_1.b.x, !(!arg_1.b.x) | true));
    let var_2 = max(vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(u_input.a, 0i, arg_1.a)), i32(-1i) * -1i, 7413i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.a, -1i, reverseBits(-1i)) | vec4<i32>(~var_1.a, 0i, ~0i, arg_1.a)) << (vec4<u32>(_wgslsmith_clamp_u32(abs(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6050u, 21864u), vec3<u32>(35818u, 1u, 4294967295u)), ~4294967295u), ~_wgslsmith_div_u32(84654u, 46760u) >> (firstLeadingBit(1u) % 32u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 132675u, 4294967295u)), ~4294967295u) % vec4<u32>(32u));
    var var_3 = arg_1;
    var_0 = var_3.b.x;
    return _wgslsmith_sub_u32(~1u, select(_wgslsmith_add_u32(44149u, 1u), ~1u, false));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    global0 = vec4<f32>(-965f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-840f)), global0.x))), 226f), arg_0, arg_0);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -624f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -230f, global0.x) - vec4<f32>(-435f, arg_2, arg_2, -736f)))))), vec4<f32>(arg_2, arg_0, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), -324f));
    let var_0 = vec2<u32>(~((func_3(arg_2, Struct_1(-1i, arg_1.yxy)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(19048u, 1u, 0u), vec3<u32>(45292u, 1u, 19117u)) % 32u)) << (4294967295u % 32u)), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(23508u, 0u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, 33961u), _wgslsmith_dot_vec2_u32(vec2<u32>(37062u, 1u), vec2<u32>(0u, 66649u)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-1632f - -533f))))), arg_2, _wgslsmith_f_op_f32(global0.x + -826f), 742f);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(370f - -909f)))), 541f);
    return 4294967295u;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.ywy, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, -819f, 755f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1191f, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(515f, -1597f))), 379f) - global0.xzy));
    let var_1 = vec4<i32>(-42124i, -372i, _wgslsmith_clamp_i32(max(arg_2.a >> (func_2(1000f, vec4<bool>(arg_1, false, arg_1, false), 210f) % 32u), _wgslsmith_clamp_i32(u_input.a, abs(u_input.a), _wgslsmith_mult_i32(u_input.a, arg_0))), _wgslsmith_mult_i32(0i, 4243i) << (1u % 32u), _wgslsmith_sub_i32(~arg_0, abs(-14355i)) >> ((27411u >> (_wgslsmith_mult_u32(22338u, 0u) % 32u)) % 32u)), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), ~vec3<i32>(-6192i, arg_0, 1i)), ~(-(u_input.b.x << (72773u % 32u)))));
    var_0 = global0.xxy;
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(global0.xxx))));
    var var_2 = select(!(!vec4<bool>(true, true, !arg_2.b.x, true)), !(!vec4<bool>(!arg_1, true, arg_2.b.x, true)), false);
    return Struct_1(arg_0, !select(!(!vec3<bool>(true, arg_1, arg_1)), select(vec3<bool>(var_2.x, false, true), var_2.zzz, select(arg_2.b, var_2.yzy, false)), select(!arg_2.b, vec3<bool>(false, true, false), select(vec3<bool>(true, false, arg_1), vec3<bool>(true, true, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.b.x, true, Struct_1(-firstTrailingBit(1i), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), any(vec4<bool>(false, false, false, false))), vec3<bool>(all(vec2<bool>(false, false)), true, all(vec4<bool>(true, true, false, true))), -26349i >= _wgslsmith_mult_i32(u_input.b.x, u_input.a))));
    let var_1 = func_1(~select(-61851i, u_input.b.x, !var_0.b.x) << ((22518u << (min(_wgslsmith_add_u32(0u, 1u), 1u) % 32u)) % 32u), all(!select(func_1(var_0.a, var_0.b.x, var_0).b.zz, func_1(-2147483647i, false, Struct_1(45399i, vec3<bool>(var_0.b.x, false, true))).b.zy, select(var_0.b.zz, var_0.b.zx, var_0.b.xz))), func_1(43789i, select(-u_input.a != u_input.b.x, func_1(0i, true, Struct_1(u_input.b.x, vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))).a <= 1i, var_0.b.x), var_0));
    let var_2 = -reverseBits(abs(countOneBits(vec3<i32>(-3768i, var_1.a, u_input.a)) >> (abs(vec3<u32>(77526u, 4294967295u, 32364u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1000f, -184f, 387f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(224f, global0.x, -155f, 1156f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 149f), vec4<f32>(global0.x, -877f, global0.x, -589f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 890f, global0.x))), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(744f, -417f, global0.x, -1235f), vec4<f32>(global0.x, global0.x, global0.x, -1006f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, 528f, -1074f, 288f) * vec4<f32>(2381f, -520f, 808f, -1000f)))))));
    let var_3 = Struct_1(var_2.x & 1i, vec3<bool>(var_1.b.x, func_3(_wgslsmith_f_op_f32(floor(-770f)), Struct_1(var_0.a, vec3<bool>(var_1.b.x, var_1.b.x, false))) < 4294967295u, true));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(433f, 1128f, global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-502f * -516f)))))));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1116f, -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1930f + -1201f), _wgslsmith_f_op_f32(max(-782f, -1083f)), false)) - _wgslsmith_f_op_f32(min(global0.x, global0.x))), global0.x) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(767f * _wgslsmith_f_op_f32(global0.x + 1134f)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 1056f, global0.x), vec4<f32>(-329f, global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1904f, 1047f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1456f, global0.x, global0.x) * vec4<f32>(global0.x, global0.x, global0.x, 299f)))), vec4<bool>(all(vec2<bool>(true, true)), !var_1.b.x, false, false)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1729f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 18972u)), vec2<u32>(14138u, 4294967295u))), ~vec3<i32>(u_input.b.x, 1i, min(23373i, var_0.a)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)));
}

