struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    global0 = array<vec4<bool>, 9>();
    global2 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1395f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(313f, 496f))))));
    var var_1 = Struct_3(1i, Struct_1(arg_0, arg_1.d.b), Struct_2(global1.x, ~_wgslsmith_mult_u32(~30960u, 0u ^ arg_0), arg_1.d, Struct_1(1u, max(select(vec3<u32>(arg_1.c.a, arg_1.b, 88406u), arg_1.d.b, arg_1.a), ~vec3<u32>(4294967295u, u_input.b, 1u)))), Struct_2(any(global1.yy) & (_wgslsmith_f_op_f32(-598f + -327f) == _wgslsmith_f_op_f32(sign(var_0.x))), 1u, arg_1.d, Struct_1(1u, ~arg_1.c.b)));
    let var_2 = Struct_2(true, ~_wgslsmith_add_u32(~arg_1.b, ~var_1.c.c.a), Struct_1(1u, ~(vec3<u32>(u_input.b, 0u, arg_0) >> (vec3<u32>(1u, arg_0, arg_1.b) % vec3<u32>(32u)))), var_1.b);
    return ~52908u;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    var var_0 = vec3<u32>(~4294967295u, 0u | _wgslsmith_clamp_u32(4294967295u, 38983u | func_3(4294967295u, global2[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_clamp_u32(13874u, u_input.b, ~47124u)), u_input.b);
    let var_1 = all(!select(vec2<bool>(true, true), !(!global1.ww), !global1.zz));
    var_0 = ~(~abs(vec3<u32>(9327u, var_0.x, var_0.x) << (vec3<u32>(u_input.b, 0u, 0u) % vec3<u32>(32u)))) << (min(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_0.x, 4294967295u, var_0.x)), ~(firstLeadingBit(vec3<u32>(75084u, u_input.b, u_input.b)) << ((vec3<u32>(81529u, u_input.b, 1u) << (vec3<u32>(var_0.x, var_0.x, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_dot_vec4_u32(~min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, var_0.x), vec4<u32>(0u, var_0.x, 21183u, u_input.b))), abs(vec4<u32>(u_input.b, 28046u, 4294967295u, u_input.b))), vec4<u32>(~(~u_input.b), var_0.x, 0u, var_0.x) >> (countOneBits(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 36994u, var_0.x), vec4<u32>(63496u, 11897u, var_0.x, u_input.b))) % vec4<u32>(32u)));
    var_2 = 0u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1433f, -1997f), vec2<f32>(1000f, arg_0))))))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    global2 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, 407f)))) - _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(trunc(1624f)))))))));
    global2 = array<Struct_2, 18>();
    let var_1 = Struct_2(true, arg_0.c.c.a, arg_2.b, Struct_1(reverseBits(arg_2.c.c.b.x), reverseBits(~arg_0.c.c.b)));
    var var_2 = arg_0;
    return !global1.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    let var_0 = -(u_input.a.x >> (1u % 32u));
    global2 = array<Struct_2, 18>();
    global1 = vec4<bool>(any(select(!func_1(Struct_3(var_0, Struct_1(u_input.b, vec3<u32>(0u, u_input.b, 1u)), Struct_2(global1.x, u_input.b, Struct_1(51134u, vec3<u32>(0u, u_input.b, u_input.b)), Struct_1(4294967295u, vec3<u32>(u_input.b, u_input.b, u_input.b))), Struct_2(global1.x, u_input.b, Struct_1(1u, vec3<u32>(1u, 63069u, u_input.b)), Struct_1(68797u, vec3<u32>(u_input.b, 20981u, u_input.b)))), global1.x, Struct_3(u_input.a.x, Struct_1(1u, vec3<u32>(u_input.b, 117859u, u_input.b)), global2[_wgslsmith_index_u32(u_input.b, 18u)], Struct_2(global1.x, u_input.b, Struct_1(51588u, vec3<u32>(u_input.b, 48827u, u_input.b)), Struct_1(12444u, vec3<u32>(35425u, u_input.b, u_input.b))))), global1.yx, func_1(Struct_3(u_input.a.x, Struct_1(109823u, vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_2(true, u_input.b, Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 1u)), Struct_1(48021u, vec3<u32>(u_input.b, u_input.b, u_input.b))), global2[_wgslsmith_index_u32(0u, 18u)]), all(vec2<bool>(global1.x, false)), Struct_3(-5143i, Struct_1(u_input.b, vec3<u32>(u_input.b, 37287u, u_input.b)), Struct_2(false, 2561u, Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 26775u)), Struct_1(u_input.b, vec3<u32>(u_input.b, 1u, 0u))), Struct_2(true, 43437u, Struct_1(17059u, vec3<u32>(0u, 4294967295u, u_input.b)), Struct_1(26062u, vec3<u32>(u_input.b, 14187u, u_input.b))))).x)), false, any(!select(global1.yy, func_1(Struct_3(var_0, Struct_1(u_input.b, vec3<u32>(35223u, 73529u, u_input.b)), global2[_wgslsmith_index_u32(36346u, 18u)], Struct_2(false, u_input.b, Struct_1(13991u, vec3<u32>(u_input.b, u_input.b, 63579u)), Struct_1(30826u, vec3<u32>(13699u, 61486u, 4294967295u)))), false, Struct_3(u_input.a.x, Struct_1(1u, vec3<u32>(13418u, 0u, 49297u)), Struct_2(global1.x, u_input.b, Struct_1(u_input.b, vec3<u32>(0u, 0u, 26345u)), Struct_1(u_input.b, vec3<u32>(u_input.b, 79079u, 0u))), global2[_wgslsmith_index_u32(74223u, 18u)])), select(vec2<bool>(true, false), global1.xw, global1.x))), var_0 <= -(~3183i ^ var_0));
    let var_1 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(~u_input.b, u_input.b)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 1u), vec2<u32>(u_input.b, 74722u)) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 8370u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)))));
    let var_2 = vec3<bool>(global1.x, true, global1.x);
    let var_3 = global2[_wgslsmith_index_u32(func_3(37899u, Struct_2(-21751i < var_0, select(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_1, var_1)), select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(21874u, var_1), true)), 73274u, select(!global1.x, false | var_2.x, true)), Struct_1(31854u, _wgslsmith_div_vec3_u32(vec3<u32>(14880u, 34763u, var_1), vec3<u32>(u_input.b, 0u, 2590u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 26476u, u_input.b), vec3<u32>(1u, 1802u, 54353u)) % vec3<u32>(32u))), Struct_1(var_1, _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, var_1, 29631u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, var_1, 1u), vec3<u32>(4294967295u, u_input.b, 30411u)))))), 18u)];
    global1 = select(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 9u)], !vec4<bool>(!all(vec4<bool>(var_3.a, false, true, true)), true, true, true), select(!vec4<bool>(var_3.a, all(global1.wxy), false, true), select(global0[_wgslsmith_index_u32(~var_1 ^ ~var_1, 9u)], select(select(vec4<bool>(var_2.x, true, var_3.a, true), vec4<bool>(global1.x, var_2.x, false, false), var_2.x), !global0[_wgslsmith_index_u32(0u, 9u)], var_3.a), true), var_2.x));
    var var_4 = Struct_3(1i & reverseBits(u_input.a.x), Struct_1(~var_3.c.b.x, firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.d.b, var_3.c.b), var_3.c.b))), Struct_2(false, abs(abs(1u) | reverseBits(var_3.d.a)), var_3.d, Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_3.c.b.xz, vec2<u32>(var_3.d.b.x, 14301u)), vec2<u32>(var_3.c.a, 55533u)), var_3.c.b ^ (vec3<u32>(var_3.b, 36369u, var_3.d.b.x) ^ vec3<u32>(var_1, var_1, 24634u)))), Struct_2(!(!var_3.a), reverseBits(_wgslsmith_div_u32(4294967295u, u_input.b)), var_3.c, var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1479f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-721f)))), var_3.d.a, var_3.c.b, -1105f);
}

