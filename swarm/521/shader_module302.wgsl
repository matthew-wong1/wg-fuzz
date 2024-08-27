struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<bool>(true, false, true), vec4<i32>(1i, 1i, 1i, 0i)), Struct_2(vec3<bool>(true, false, false), vec4<i32>(-1i, i32(-2147483648), 1i, 2147483647i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(31224i, 1i, 6058i, 29003i)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(-1i, 118853i, 23353i, -1i)), Struct_2(vec3<bool>(false, false, true), vec4<i32>(-6483i, i32(-2147483648), 56312i, 21185i)));

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(Struct_2(vec3<bool>(false, true, true), vec4<i32>(-1i, 2147483647i, 58842i, 2472i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(17381i, i32(-2147483648), -39020i, 2147483647i)), vec4<bool>(false, false, true, true)), Struct_3(Struct_2(vec3<bool>(true, true, true), vec4<i32>(-1i, -1i, 1i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, true), vec4<i32>(7873i, i32(-2147483648), 882i, i32(-2147483648))), vec4<bool>(false, true, true, true)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec4<i32>(-2405i, -1i, 0i, 40415i)), Struct_2(vec3<bool>(true, false, false), vec4<i32>(15473i, 2147483647i, -30783i, i32(-2147483648))), vec4<bool>(false, true, false, false)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec4<i32>(-1i, 2147483647i, 7888i, 16124i)), Struct_2(vec3<bool>(false, false, false), vec4<i32>(-23128i, -1i, 1283i, -9708i)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec4<i32>(-11270i, 2147483647i, -37451i, -22064i)), Struct_2(vec3<bool>(false, false, true), vec4<i32>(-56861i, 5700i, -64014i, 6972i)), vec4<bool>(true, false, true, true)), Struct_3(Struct_2(vec3<bool>(true, false, true), vec4<i32>(-5813i, i32(-2147483648), 45735i, i32(-2147483648))), Struct_2(vec3<bool>(true, true, true), vec4<i32>(0i, 2147483647i, 1i, 58656i)), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(vec3<bool>(true, true, true), vec4<i32>(-25891i, 11362i, -13325i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, true), vec4<i32>(-61554i, 0i, -1i, -1i)), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(vec3<bool>(true, true, false), vec4<i32>(-658i, -2514i, 2147483647i, -36462i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(1i, 0i, -32205i, -45191i)), vec4<bool>(false, true, false, false)), Struct_3(Struct_2(vec3<bool>(false, false, true), vec4<i32>(2147483647i, -1i, 22423i, 891i)), Struct_2(vec3<bool>(false, true, false), vec4<i32>(2147483647i, 0i, 0i, i32(-2147483648))), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec4<i32>(2147483647i, i32(-2147483648), -22236i, i32(-2147483648))), Struct_2(vec3<bool>(false, true, false), vec4<i32>(-25224i, i32(-2147483648), -53192i, i32(-2147483648))), vec4<bool>(false, false, false, true)), Struct_3(Struct_2(vec3<bool>(false, false, true), vec4<i32>(-1676i, -12544i, i32(-2147483648), 1i)), Struct_2(vec3<bool>(false, false, false), vec4<i32>(-26239i, 2147483647i, 35666i, 0i)), vec4<bool>(false, true, true, false)), Struct_3(Struct_2(vec3<bool>(true, true, false), vec4<i32>(27096i, i32(-2147483648), -4887i, -1i)), Struct_2(vec3<bool>(true, true, true), vec4<i32>(23562i, 0i, -1i, 33969i)), vec4<bool>(false, false, true, false)), Struct_3(Struct_2(vec3<bool>(false, false, false), vec4<i32>(1i, 1i, 22890i, 0i)), Struct_2(vec3<bool>(false, true, false), vec4<i32>(0i, 0i, 1i, 1i)), vec4<bool>(true, true, true, true)), Struct_3(Struct_2(vec3<bool>(false, false, false), vec4<i32>(0i, 34349i, 22944i, 84206i)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(23747i, 4307i, 2147483647i, -13897i)), vec4<bool>(false, true, false, true)), Struct_3(Struct_2(vec3<bool>(false, true, true), vec4<i32>(0i, -34356i, -1i, 0i)), Struct_2(vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), -1i, 79605i, 62732i)), vec4<bool>(false, false, true, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f * 1175f)))), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -364f), 315f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, -739f, 1366f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -208f), _wgslsmith_div_f32(-1147f, 437f), _wgslsmith_f_op_f32(-729f - -904f))))));
    var var_1 = abs(max(~arg_3.x, ~arg_3.x));
    return select(select(!arg_2.xw, select(arg_1.a.yz, vec2<bool>(true, 0u >= arg_0.x), vec2<bool>(arg_2.x, true && arg_2.x)), false), select(vec2<bool>(false, all(vec3<bool>(arg_2.x, false, false))), arg_2.xz, !(!any(vec3<bool>(arg_1.a.x, arg_1.a.x, false)))), !vec2<bool>(arg_2.x, arg_1.a.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    global1 = array<Struct_3, 15>();
    var var_0 = max(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 1u, 25336u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), (abs(vec3<u32>(9798u, 0u, 1u)) | vec3<u32>(_wgslsmith_div_u32(28832u, 1u), _wgslsmith_mod_u32(1u, 9728u), _wgslsmith_clamp_u32(86968u, 1u, 20198u))) ^ _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = vec2<u32>(select(76759u, 0u >> (firstLeadingBit(1126u) % 32u), all(func_3(var_0.xz, Struct_2(vec3<bool>(arg_2, arg_0.x, true), vec4<i32>(u_input.a, 2147483647i, arg_3.x, arg_3.x)), vec4<bool>(true, false, false, arg_0.x), vec2<u32>(var_0.x, 51142u)))) | 0u, var_0.x);
    var var_2 = global1[_wgslsmith_index_u32(var_1.x, 15u)];
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-150f - -182f))), _wgslsmith_f_op_f32(558f - _wgslsmith_f_op_f32(round(-565f))))), ~(min(~vec4<u32>(var_1.x, 4294967295u, var_1.x, 4294967295u), abs(vec4<u32>(var_0.x, 632u, var_1.x, 97317u))) ^ ~(~vec4<u32>(var_1.x, 115541u, var_1.x, 4294967295u))), -628i);
    return _wgslsmith_div_u32(~countOneBits(~_wgslsmith_div_u32(var_3.b.x, var_0.x)), select(~min(0u, var_3.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 30841u), var_3.b.wwy), !(var_2.c.x & true)));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(699f, -681f)), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1696f * -1046f))), _wgslsmith_f_op_f32(-965f * _wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(610f, -509f, 537f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1075f, -1012f, 380f, 464f)))), true))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(396f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1f))))));
    let var_2 = u_input.a;
    var_1 = var_0.x;
    var var_3 = vec4<i32>(-firstLeadingBit(u_input.a) | var_2, var_2, ~u_input.a | ~_wgslsmith_add_i32(var_2, 0i), (-1847i ^ u_input.a) | u_input.a);
    return global0[_wgslsmith_index_u32(~reverseBits(arg_1.x), 5u)];
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(func_4(_wgslsmith_mod_u32(52504u, _wgslsmith_div_u32(1u, 1u)), vec2<u32>(func_2(vec3<bool>(false, false, false), u_input.a, select(true, false, true), ~vec3<i32>(-1i, u_input.a, -33532i)), firstLeadingBit(~4294967295u))), func_4(4294967295u, vec2<u32>(~_wgslsmith_mult_u32(26133u, 13954u), 4294967295u)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.a <= u_input.a), true), vec4<bool>(false, true, true, true), true));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) - 716f)), 1f)));
    global1 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_f_op_f32(max(-1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1157f)))))));
    var var_3 = Struct_1(-187f, vec4<u32>(~_wgslsmith_clamp_u32(8234u, min(7667u, 99063u), ~0u), 1u, ~(~_wgslsmith_mult_u32(10140u, 1u)), abs(0u >> (_wgslsmith_div_u32(0u, 24916u) % 32u))), ~0i);
    return var_0;
}

fn func_5(arg_0: Struct_3) -> u32 {
    let var_0 = vec3<u32>(abs(1u), 0u, abs(~firstTrailingBit(_wgslsmith_mod_u32(3119u, 1u))));
    let var_1 = select(var_0.xx, var_0.yx, !select(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(960f, -549f)))).a.a.xy, vec2<bool>(any(vec3<bool>(false, arg_0.c.x, arg_0.b.a.x)), true), arg_0.a.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1291f))))), ~(~(~firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, var_0.x)))), u_input.a);
    var var_3 = _wgslsmith_clamp_vec4_i32(min(firstLeadingBit(vec4<i32>(1i, u_input.a, var_2.c, ~(-7158i))), vec4<i32>(-27675i, -54635i, _wgslsmith_dot_vec4_i32(~arg_0.a.b, arg_0.b.b), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i) << (vec2<u32>(1u, var_1.x) % vec2<u32>(32u)), arg_0.a.b.yw))), -(~min(arg_0.b.b, vec4<i32>(-1i, -67797i, var_2.c, -83612i) << (var_2.b % vec4<u32>(32u)))), select(arg_0.a.b, vec4<i32>(countOneBits(-3089i) & arg_0.a.b.x, var_2.c, -2147483647i, select(~u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.c, arg_0.a.b.x), vec3<i32>(arg_0.a.b.x, var_2.c, 1i)), func_3(vec2<u32>(var_0.x, 1u), global0[_wgslsmith_index_u32(0u, 5u)], arg_0.c, var_2.b.zy).x)), arg_0.c));
    global1 = array<Struct_3, 15>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 36312u, func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2285f, 803f))))), vec3<u32>(1u, 1u, 1u)), 15u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(51289u, 25759u, 28539u, 1u), vec4<u32>(92007u, 1u, 2067u, 55360u))), abs(1u), 4294967295u) % vec3<u32>(32u)), vec3<u32>(27040u, ~(~max(0u, 0u)), 4294967295u | firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 53161u, 0u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u))))), 15u)];
    global0 = array<Struct_2, 5>();
    let var_2 = Struct_1(1155f, ~vec4<u32>(~46107u, abs(1u), select(0u, 17467u, var_0.c.x), _wgslsmith_sub_u32(42248u, 1u)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), var_0.a.b.x);
    let var_3 = ~select(max(5776u, var_2.b.x), countOneBits(~(0u << (1u % 32u))), var_1.a.a.x);
    global1 = array<Struct_3, 15>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

