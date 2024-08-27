struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(60616u, true, vec3<bool>(true, true, true)), Struct_1(1u, true, vec3<bool>(false, false, false)), Struct_1(0u, true, vec3<bool>(false, true, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 3u)];
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(186f * -207f), _wgslsmith_f_op_f32(404f + -192f))))))));
    var var_2 = _wgslsmith_mult_vec3_i32(u_input.d.yyw, vec3<i32>(i32(-1i) * -15776i, max(~u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, -1i, -2147483647i)), 21120i)) & max(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, u_input.a, u_input.a), u_input.d.yzx), reverseBits(u_input.d.xwy >> (vec3<u32>(var_0.a, 6057u, 0u) % vec3<u32>(32u))), ~vec3<i32>(7967i, u_input.c.x, -2147483647i) >> (~vec3<u32>(u_input.b, arg_0.a, 4294967295u) % vec3<u32>(32u))), max(~u_input.d.xzz, vec3<i32>(~global1.x, max(global1.x, global1.x), -1i)));
    let var_3 = var_0.c;
    return firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(u_input.d), -firstLeadingBit(u_input.d)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<f32> {
    global1 = vec2<i32>(i32(-1i) * -_wgslsmith_div_i32(-u_input.d.x, func_3(arg_2, vec2<bool>(arg_0.x, true))), arg_1.x);
    global0 = array<vec4<u32>, 31>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(668f, arg_3)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -1626f) + vec2<f32>(arg_3, -643f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -345f, var_0.x, arg_3)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(818f, arg_3, -731f, arg_3) * vec4<f32>(arg_3, 1328f, arg_3, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_0.x, var_0.x, -1450f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, 1000f, arg_3, 503f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, -444f), _wgslsmith_f_op_f32(-arg_3), arg_3) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, var_0.x, var_0.x, 864f))), _wgslsmith_div_vec4_f32(vec4<f32>(1046f, arg_3, var_0.x, arg_3), vec4<f32>(arg_3, arg_3, var_0.x, var_0.x)))))));
}

fn func_1() -> vec3<bool> {
    global2 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1724f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -994f) * _wgslsmith_f_op_f32(f32(-1f) * -617f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) - _wgslsmith_f_op_f32(915f - -291f)), _wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-102f, -875f, 1575f, -1000f), vec4<f32>(1000f, 684f, 507f, -1141f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-473f, 260f, -534f, 878f) * vec4<f32>(-166f, -1097f, 188f, -453f)))))));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_2 = false;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1409f, var_0.x, 103f) + vec4<f32>(var_0.x, 1583f, -334f, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 841f) - vec4<f32>(1203f, 663f, -635f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, -1678f, -353f, -943f))))) - vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_1.c.zz, -u_input.d.yyz << (countOneBits(vec3<u32>(u_input.b, u_input.b, var_1.a)) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(var_1.a, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!any(vec3<bool>(false, false, false)), false, true && all(vec4<bool>(true, true, true, false)), all(func_1())), vec4<bool>(firstLeadingBit(_wgslsmith_clamp_u32(u_input.b, 17479u, 1u)) > 18865u, global1.x < ~u_input.c.x, false, _wgslsmith_div_i32(~(-63701i), u_input.d.x ^ -42270i) >= abs(0i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var_0 = vec4<bool>(!var_0.x, true, !(!var_0.x), var_0.x);
    let var_1 = (~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 0u, 1u), firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, 4294967295u))) | select(~max(vec3<u32>(0u, u_input.b, 48659u), vec3<u32>(4294967295u, u_input.b, 6219u)), ~(~vec3<u32>(4294967295u, 16663u, u_input.b)), var_0.www)) ^ max(vec3<u32>(select(4294967295u, 62969u, func_1().x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1927u, 6082u), vec3<u32>(0u, u_input.b, 14282u)), u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) << (select(vec3<u32>(11668u, u_input.b, 1u), vec3<u32>(u_input.b, u_input.b, u_input.b), true) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(60981u, u_input.b, 19233u)), ~vec3<u32>(8326u, 0u, 20400u) << (~vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-538f)) - -804f);
    var var_3 = Struct_1(8235u, any(select(!var_0.xzz, var_0.xww, !(!var_0.x))), vec3<bool>(true, any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), all(select(vec4<bool>(false, false, var_0.x, true), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, false, var_0.x, var_0.x)), false && var_0.x))));
    var var_4 = global2[_wgslsmith_index_u32(~(~(0u >> (0u % 32u))), 3u)];
    var_0 = select(vec4<bool>(true, !var_4.c.x, false, true), !select(select(select(vec4<bool>(var_3.b, var_3.b, false, var_4.c.x), vec4<bool>(var_3.c.x, var_4.b, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false), true), vec4<bool>(var_0.x, u_input.b == 4079u, var_3.b | true, true), false), ~0u >= _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(var_1.x, 31u)], ~global0[_wgslsmith_index_u32(var_3.a, 31u)]), global0[_wgslsmith_index_u32(4294967295u, 31u)]));
    var var_5 = Struct_1(firstLeadingBit(1u), ~(1i >> (min(var_1.x, var_4.a) % 32u)) <= _wgslsmith_clamp_i32(~2147483647i, max(u_input.a, -43446i) >> (~59902u % 32u), 1i), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstLeadingBit(abs(countOneBits(vec4<u32>(16705u, var_4.a, var_5.a, 1u) >> (global0[_wgslsmith_index_u32(22318u, 31u)] % vec4<u32>(32u))))));
}

