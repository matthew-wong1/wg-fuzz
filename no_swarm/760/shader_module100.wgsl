struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(56191i, vec2<i32>(-1i, -16842i), vec3<bool>(false, true, true)), Struct_1(1i, vec2<i32>(0i, 7825i), vec3<bool>(false, true, true)), Struct_1(-67220i, vec2<i32>(2147483647i, 0i), vec3<bool>(false, false, false)), Struct_1(0i, vec2<i32>(-7601i, 0i), vec3<bool>(true, false, false)));

var<private> global1: array<Struct_3, 6>;

var<private> global2: array<Struct_2, 13>;

var<private> global3: array<Struct_2, 18>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = all(!select(select(vec4<bool>(arg_0.a.a.c.x, arg_0.d.d.c.x, false, false), vec4<bool>(arg_0.d.d.c.x, true, arg_0.c, arg_0.a.a.c.x), true), vec4<bool>(true, arg_0.c || true, true, true && arg_0.c), false || !arg_0.a.a.c.x));
    var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), arg_0.d.c, ~u_input.c, arg_0.d.c), ~vec4<u32>(25969u, 34756u, arg_0.d.c, 1u)) >= 4294967295u;
    let var_1 = Struct_4(Struct_1(arg_0.a.a.b.x, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -51825i), u_input.b), 43943i >> (0u % 32u), arg_0.a.a.a), -u_input.b.x & min(-7857i, -37060i)), arg_0.d.d.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.d.b, arg_0.d.b))))), arg_0.a, _wgslsmith_f_op_f32(-arg_0.d.b));
    global0 = array<Struct_1, 4>();
    let var_2 = var_1;
    return ~(_wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_sub_i32(var_1.c.a.b.x, 1i), ~(-2147483647i)) | u_input.a);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~(-2147483647i), max(_wgslsmith_mod_vec2_i32((vec2<i32>(u_input.b.x, u_input.d.x) >> (vec2<u32>(1u, 21645u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u)), vec2<i32>(-1i, arg_0.a) << (vec2<u32>(53609u, u_input.c) % vec2<u32>(32u))), vec2<i32>(u_input.d.x, ~abs(u_input.d.x))), vec3<bool>(arg_0.c.x, arg_0.c.x, !arg_0.c.x));
    let var_1 = vec2<bool>(!any(!vec4<bool>(arg_0.c.x, var_0.c.x, false, true)) & var_0.c.x, _wgslsmith_f_op_f32(round(-168f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f)));
    global3 = array<Struct_2, 18>();
    global3 = array<Struct_2, 18>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1242f))) * 1176f);
    return select(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(55077u, 0u, 40974u, u_input.c) >> (~vec4<u32>(0u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), firstLeadingBit(vec4<u32>(u_input.c, 20514u, u_input.c, u_input.c)) >> (vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_add_u32(56287u, 1u), 4294967295u ^ u_input.c, ~u_input.c) % vec4<u32>(32u))), u_input.c, all(select(!(!vec3<bool>(arg_0.c.x, false, var_1.x)), select(!vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(true, true, true), select(arg_0.c, vec3<bool>(false, var_1.x, var_1.x), false)), select(select(vec3<bool>(var_0.c.x, arg_0.c.x, true), var_0.c, arg_0.c), select(arg_0.c, arg_0.c, var_0.c.x), arg_0.c.x))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))))));
    global3 = array<Struct_2, 18>();
    let var_1 = global0[_wgslsmith_index_u32(func_4(Struct_1(~func_3(Struct_5(global1[_wgslsmith_index_u32(15589u, 6u)], 1i, false, Struct_2(2147483647i, var_0.x, 84727u, Struct_1(1i, vec2<i32>(-2147483647i, u_input.d.x), vec3<bool>(true, true, false))))) | 1i, u_input.b, select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec3<bool>(false, true, true)), true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), 4u)];
    let var_2 = !vec4<bool>(select(var_1.c.x && var_1.c.x, select(false, false, any(vec2<bool>(true, var_1.c.x))), var_1.c.x), any(!vec4<bool>(var_1.c.x, var_1.c.x, true, false)), select(!var_1.c.x, ~(-74154i) >= (-62724i ^ var_1.a), var_1.c.x), true);
    var var_3 = !(!all(vec3<bool>(var_1.c.x, false, true))) || true;
    return Struct_5(global1[_wgslsmith_index_u32(arg_0.x, 6u)], 1i, true, Struct_2(1i, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(1074f - var_0.x)))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_0.x, ~1u), arg_0.x, ~abs(u_input.c)), Struct_1(var_1.a, vec2<i32>(reverseBits(13518i), -2147483647i), vec3<bool>(all(vec4<bool>(var_1.c.x, var_2.x, false, var_1.c.x)), true != var_1.c.x, var_0.x <= -1265f))));
}

fn func_5(arg_0: Struct_5) -> vec2<bool> {
    let var_0 = Struct_5(Struct_3(arg_0.a.a, 35265i), u_input.d.x | ~(-9644i), ~func_4(Struct_1(-1i, u_input.b, vec3<bool>(false, true, false))) >= ~1u, func_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.d.c, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 130578u, u_input.c, u_input.c)), ~(~vec4<u32>(u_input.c, 24162u, 2161u, u_input.c)))).d);
    var var_1 = Struct_2(arg_0.d.d.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.b - _wgslsmith_div_f32(-661f, 2100f)))), ~u_input.c, func_2(~vec4<u32>(_wgslsmith_mod_u32(0u, 1230u), arg_0.d.c, ~arg_0.d.c, _wgslsmith_sub_u32(var_0.d.c, u_input.c))).d.d);
    var var_2 = func_2((~(vec4<u32>(0u, var_0.d.c, var_1.c, var_1.c) | vec4<u32>(u_input.c, 4294967295u, 37686u, 1u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(4995u, arg_0.d.c, 17993u, 1u), vec4<u32>(4294967295u, 26421u, 4294967295u, u_input.c)) % vec4<u32>(32u))) & ~(~countOneBits(vec4<u32>(1u, 59605u, u_input.c, 0u))));
    return func_2(vec4<u32>(abs(u_input.c), var_2.d.c, firstLeadingBit(min(_wgslsmith_div_u32(var_0.d.c, var_2.d.c), 0u)), _wgslsmith_div_u32(min(arg_0.d.c, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(29306u, var_0.d.c))), var_2.d.c))).a.a.c.yy;
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.e.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-430f, 1000f, -451f))) - vec3<f32>(-343f, 602f, 688f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1484f, 620f)) - vec3<f32>(_wgslsmith_f_op_f32(293f + -106f), 422f, -2721f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(311f * var_1.x)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zy) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(430f, -179f)), var_1.xx, func_5(func_2(vec4<u32>(u_input.c, 1u, 1u, 47931u)))))));
    let var_3 = ~(~firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(u_input.c, u_input.c), u_input.c)));
    var var_4 = _wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(countOneBits(func_2(max(vec4<u32>(var_3.x, 1u, u_input.c, var_3.x), vec4<u32>(4294967295u, u_input.c, 4294967295u, 21704u))).b), -u_input.b.x, -27014i));
    return Struct_3(global0[_wgslsmith_index_u32(1u, 4u)], firstLeadingBit(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(countOneBits(~vec4<u32>(0u, u_input.c, 4294967295u, u_input.c)));
    var var_1 = -587f;
    var var_2 = func_1();
    var_1 = -286f;
    let var_3 = func_1();
    let var_4 = func_1().a;
    global3 = array<Struct_2, 18>();
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-661f, -1536f))) + _wgslsmith_f_op_f32(f32(-1f) * -880f)))), ~vec4<u32>(~var_0.x, 15864u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.x, var_0.x, 0u), vec4<u32>(var_0.x, var_0.x, u_input.c, 0u))), ~(~u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, 859f, 240f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(755f, -1409f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1069f)), _wgslsmith_f_op_f32(ceil(-1000f)), var_2.a.c.x))) - _wgslsmith_f_op_f32(f32(-1f) * -318f)), min(-2147483647i, u_input.b.x >> (94413u % 32u)));
}

