struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: vec3<u32> = vec3<u32>(0u, 1u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = firstTrailingBit(select((_wgslsmith_mod_u32(67734u, global1.x) << (firstLeadingBit(u_input.b) % 32u)) << (51275u % 32u), 14163u, !select(true, select(true, true, false), false)));
    global1 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(arg_0.a.x, global1.x, 72116u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, var_0, 42095u), vec3<u32>(var_0, arg_0.a.x, 1u), vec3<u32>(78950u, 1u, 1u))), vec3<u32>(~31348u, 1u, 164014u) & select(vec3<u32>(40415u, global1.x, 117818u), vec3<u32>(global1.x, u_input.c, global1.x) << (vec3<u32>(1u, arg_0.a.x, 69983u) % vec3<u32>(32u)), vec3<bool>(true, false, false)), max(~(vec3<u32>(111704u, 4294967295u, u_input.b) << (vec3<u32>(87226u, 6754u, 73459u) % vec3<u32>(32u))), vec3<u32>(u_input.c, ~99237u, ~43020u))));
    global0 = array<vec4<u32>, 26>();
    return vec3<u32>(_wgslsmith_mod_u32(arg_0.a.x, 30612u), u_input.b, 0u) ^ vec3<u32>(0u, 1u, 1u);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-arg_0)));
    global0 = array<vec4<u32>, 26>();
    global1 = ~_wgslsmith_add_vec3_u32(~max(func_3(Struct_1(arg_1.a)), ~vec3<u32>(u_input.c, 1u, arg_1.a.x)), vec3<u32>(4294967295u, ~0u, select(11037u, 24419u, true) & ~4828u));
    var var_1 = vec4<bool>(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true)), true, !any(vec4<bool>(true, true, true, true)), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), true != !all(vec4<bool>(true, false, false, false)), true));
    var var_2 = u_input.d.wxw;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -712f, arg_0)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1130f, -1000f, arg_0)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -382f, 2135f), vec3<f32>(var_0, var_0, -228f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(sign(883f)), _wgslsmith_f_op_f32(-arg_0)))), true));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, 184f, 936f) - vec3<f32>(-649f, -1000f, -951f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, -421f, 1000f))))) + _wgslsmith_f_op_vec3_f32(func_2(1f, Struct_1(~min(vec2<u32>(global1.x, global1.x), vec2<u32>(0u, 6548u))), -2147483647i)));
    global1 = ~(~abs(firstTrailingBit(vec3<u32>(global1.x, 48107u, 1u))));
    var var_1 = 29747u;
    var var_2 = Struct_1(global1.xx >> (~vec2<u32>(24006u, global1.x & 0u) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(-2016f - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - -1000f)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -723f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(142f, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 898f, -509f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -901f, -426f), vec3<f32>(var_0.x, 675f, 366f), true)))))), vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.e), _wgslsmith_add_i32(18068i, 1i)) != -u_input.a)));
    return Struct_1(vec2<u32>(_wgslsmith_add_u32(var_2.a.x >> (~global1.x % 32u), global1.x >> (4294967295u % 32u)), 0u));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    var var_0 = vec3<bool>(true, select(true, select(false & all(vec2<bool>(false, false)), true, any(vec2<bool>(false, true))), false), all(vec3<bool>(true, true, true)));
    var_0 = !(!select(vec3<bool>(all(var_0.xx), true, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), any(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), false))));
    global0 = array<vec4<u32>, 26>();
    return _wgslsmith_mod_vec3_u32(func_3(arg_2), reverseBits(vec3<u32>(~global1.x ^ ~1u, ~arg_2.a.x, ~(u_input.c << (u_input.b % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~abs(vec3<u32>(~(~1u), _wgslsmith_div_u32(firstTrailingBit(global1.x), 0u), global1.x));
    let var_0 = vec3<f32>(375f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-603f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f))))) * 377f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f) + _wgslsmith_f_op_f32(f32(-1f) * -1293f)));
    var var_1 = ~firstLeadingBit(~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-229f, var_0.x) + vec2<f32>(var_0.x, -334f)), func_1(u_input.a), Struct_1(global1.yz)));
    global1 = ~vec3<u32>(~u_input.c, 4294967295u, 1u);
    global0 = array<vec4<u32>, 26>();
    global1 = firstLeadingBit(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.x, u_input.b, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(64530u, global1.x, var_1.x), vec3<u32>(u_input.b, 9817u, u_input.b)), vec3<u32>(0u, global1.x, var_1.x)) | vec3<u32>(11630u, ~0u, ~var_1.x)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(func_4(vec2<f32>(-2269f, -546f), Struct_1(vec2<u32>(u_input.b, global1.x)), Struct_1(global1.xz)).x, _wgslsmith_div_u32(21193u, global1.x), 23140u), ~vec3<u32>(global1.x, u_input.c, 4294967295u)) % vec3<u32>(32u));
    global0 = array<vec4<u32>, 26>();
    let var_2 = ~(-u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0, var_0) - var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))))), _wgslsmith_dot_vec3_i32(-abs(_wgslsmith_div_vec3_i32(vec3<i32>(-27830i, -17056i, 15295i), vec3<i32>(-10718i, var_2, var_2))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.e.x, 1i, 12082i), countOneBits(u_input.d.zzw))), ~(~(~1u) << (global1.x % 32u)), ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(22721u, 26u)], vec4<u32>(1488u, 4294967295u, u_input.c, u_input.b)), _wgslsmith_mod_u32(select(var_1.x, 69827u, false), u_input.b)));
}

