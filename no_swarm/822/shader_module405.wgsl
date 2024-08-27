struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<u32>(16959u, 1u, 1u, 0u), vec2<bool>(false, false)), Struct_1(vec4<u32>(1u, 0u, 0u, 104636u), vec2<bool>(false, true)), Struct_1(vec4<u32>(2256u, 60928u, 47686u, 1u), vec2<bool>(false, false)), Struct_1(vec4<u32>(4294967295u, 19421u, 1u, 118570u), vec2<bool>(true, true)), Struct_1(vec4<u32>(4294967295u, 1u, 132945u, 1u), vec2<bool>(true, false)), Struct_1(vec4<u32>(0u, 56964u, 2459u, 11841u), vec2<bool>(true, true)));

var<private> global2: array<vec4<i32>, 4>;

var<private> global3: f32;

var<private> global4: i32 = 1i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    global2 = array<vec4<i32>, 4>();
    global0 = !vec2<bool>(!(_wgslsmith_f_op_f32(sign(1254f)) < 1219f), true);
    let var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = select(vec2<i32>(_wgslsmith_clamp_i32(1i, -6895i, arg_1.x), select(15558i, 18578i, firstTrailingBit(u_input.a.x) <= firstLeadingBit(20369i))), -firstTrailingBit(vec2<i32>(u_input.b.x << (arg_0.a.x % 32u), ~u_input.a.x)), global0.x || !all(!vec3<bool>(global0.x, true, arg_0.b.x)));
    return min(var_1.x << (~firstLeadingBit(22719u) % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.a.wyw, min(min(u_input.a.xyz, vec3<i32>(-2147483647i, 2147483647i, 2147483647i)), vec3<i32>(u_input.b.x, -2147483647i, 2934i))), u_input.a.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 6u)];
    let var_1 = 57666u & _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 28280u, var_0.a.x), select(vec3<u32>(u_input.c, u_input.d, u_input.c), var_0.a.zxw, var_0.b.x)), ~(var_0.a.zzy ^ var_0.a.xxw));
    var var_2 = vec4<i32>(func_3(Struct_1(~vec4<u32>(4294967295u, 1u, 1u, 91445u), var_0.b), ~arg_1.xy) >> ((~(~u_input.d) ^ ~(~8295u)) % 32u), -15760i, arg_1.x, countOneBits(_wgslsmith_div_i32(firstLeadingBit(arg_1.x), abs(-60828i))));
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1 ^ 4294967295u, u_input.c, min(14260u, ~121306u), min(_wgslsmith_sub_u32(var_1, var_1), var_1 ^ 29503u)), reverseBits(abs(~var_0.a))), var_0.b);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(2407f, -947f)));
    return _wgslsmith_mult_vec4_u32(~abs(select(var_0.a >> (vec4<u32>(var_0.a.x, var_1, 4294967295u, u_input.d) % vec4<u32>(32u)), firstLeadingBit(var_0.a), select(vec4<bool>(var_0.b.x, global0.x, true, false), vec4<bool>(var_0.b.x, var_0.b.x, true, true), vec4<bool>(var_0.b.x, var_0.b.x, true, true)))), vec4<u32>(1u, 1u, ~firstLeadingBit(var_1 ^ var_0.a.x), abs(_wgslsmith_sub_u32(~var_1, var_1))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = vec3<bool>(global0.x, arg_0.b.x, true);
    var var_1 = !select(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), select(vec4<bool>(false, true, arg_0.b.x, !global0.x), !(!vec4<bool>(global0.x, false, true, true)), !all(vec4<bool>(var_0.x, arg_0.b.x, false, var_0.x))), global0.x);
    global0 = select(!select(arg_0.b, !(!arg_0.b), !(!vec2<bool>(global0.x, false))), !(!(!vec2<bool>(var_0.x, true))), var_0.zz);
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(select(~arg_1, ~vec4<u32>(u_input.c, u_input.d, 77233u, arg_2.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, arg_0.b.x, var_0.x), vec4<bool>(arg_0.b.x, false, false, global0.x))), ~firstTrailingBit(vec4<u32>(32653u, arg_0.a.x, u_input.c, 94983u)))), vec2<bool>(any(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(arg_0.b.x, true, var_1.x, global0.x), vec4<bool>(true, false, true, var_1.x))), true));
    global1 = array<Struct_1, 6>();
    return -11845i;
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = 900f;
    var var_1 = func_4(arg_0, func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), u_input.a.xyx), ~vec3<u32>(arg_0.a.x, countOneBits(~0u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.d)), firstTrailingBit(arg_0.a.zz))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 227f) * vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(585f, var_0) * vec2<f32>(var_0, -1619f))))))));
    let var_3 = ~_wgslsmith_mod_vec2_u32(select(arg_0.a.xz, ~select(arg_0.a.zw, arg_0.a.xw, arg_0.b), arg_0.b.x), abs(~max(arg_0.a.wy, vec2<u32>(u_input.c, 69813u))));
    let var_4 = ~(u_input.a.zxx ^ vec3<i32>(~u_input.a.x, u_input.b.x, firstTrailingBit(func_4(arg_0, arg_0.a, arg_0.a.wyx))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(37174u, 6u)];
    var var_1 = firstLeadingBit(43735u);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(abs(u_input.c) | var_0.a.x, func_1(global1[_wgslsmith_index_u32(19122u, 6u)]), ~83147u, ~_wgslsmith_dot_vec2_u32(var_0.a.wz, vec2<u32>(var_0.a.x, var_0.a.x))), var_0.a), 6u)];
    global0 = select(select(var_2.b, var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -2051f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(717f)))), select(vec2<bool>(min(u_input.b.x, -31100i) < ~9456i, all(!vec3<bool>(true, global0.x, var_0.b.x))), select(select(!vec2<bool>(global0.x, var_0.b.x), vec2<bool>(var_2.b.x, var_2.b.x), vec2<bool>(false, false)), !vec2<bool>(global0.x, global0.x), !global0.x), !any(!var_0.b)), var_2.b);
    let var_3 = ~u_input.c;
    var_1 = min(1u, u_input.c) << (~69679u % 32u);
    global3 = 150f;
    let var_4 = -min(-_wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(u_input.b.x, 2147483647i, u_input.a.x, -1i), global0.x), ~vec4<i32>(u_input.b.x, -4866i, u_input.a.x, -28527i)), u_input.a.x);
    let var_5 = global1[_wgslsmith_index_u32(4294967295u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~_wgslsmith_dot_vec3_i32(min(u_input.a.xww, u_input.a.zzx), firstTrailingBit(u_input.a.zyx)) & -2147483647i, u_input.c, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-2147483647i), 26744i, -17371i, u_input.a.x), global2[_wgslsmith_index_u32(min(u_input.c ^ 0u, var_0.a.x << (0u % 32u)), 4u)]), ~global2[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-988f, 1098f, -1475f))));
}

