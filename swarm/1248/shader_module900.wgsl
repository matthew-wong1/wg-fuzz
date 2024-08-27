struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: vec3<bool>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: i32) -> vec4<bool> {
    global1 = !(!vec3<bool>(!global0[_wgslsmith_index_u32(~arg_2.x, 21u)], true || any(global1.zx), global1.x));
    let var_0 = ~(u_input.c.x << (~(~arg_2.x) % 32u));
    let var_1 = u_input.a;
    let var_2 = -1681f;
    global0 = array<bool, 21>();
    return vec4<bool>(true, all(select(select(select(vec4<bool>(global1.x, arg_0.x, false, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global1.x, false, true), false), select(vec4<bool>(true, global1.x, false, true), vec4<bool>(arg_0.x, false, global0[_wgslsmith_index_u32(32960u, 21u)], global1.x), true), arg_0.x | true), vec4<bool>(52006u > arg_2.x, arg_0.x, arg_2.x != 51148u, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.x, false, arg_0.x), true))), global0[_wgslsmith_index_u32(arg_2.x, 21u)], global1.x);
}

fn func_2() -> i32 {
    var var_0 = vec2<f32>(222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(888f * -1857f))))));
    var var_1 = Struct_3(all(func_3(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)] & false), 0u, vec2<u32>(u_input.c.x & 51348u, 1u), -_wgslsmith_sub_i32(-2147483647i, u_input.a.x))), Struct_2(0u), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, 1u), 1u, _wgslsmith_div_u32(0u, u_input.c.x)), ~abs(vec3<u32>(43254u, 15691u, 1u))), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global1.x, true), !vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(38943u, 21u)], true), func_3(global1.yy, u_input.c.x, u_input.c, -38916i)), ~_wgslsmith_clamp_u32(~u_input.c.x, 0u, u_input.c.x), u_input.c), Struct_2(min(~u_input.c.x, 1u)));
    let var_2 = var_0.x;
    global1 = vec3<bool>(select(!var_1.a, !(!var_1.c.b.x), any(var_1.c.b)), !global1.x, global0[_wgslsmith_index_u32(~u_input.c.x & (~_wgslsmith_add_u32(var_1.b.a, 30772u) ^ u_input.c.x), 21u)]);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    return min(u_input.a.x, _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, reverseBits(u_input.b)), -u_input.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: u32) -> i32 {
    global1 = select(!vec3<bool>(all(func_3(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false), arg_2, u_input.c, -1i).xxy), true | global1.x, global1.x), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c.x, arg_2) & _wgslsmith_clamp_u32(1u, ~4294967295u, arg_2), 21u)], _wgslsmith_f_op_f32(arg_1 + arg_1) > _wgslsmith_f_op_f32(-1000f * 491f), global0[_wgslsmith_index_u32(~(arg_2 ^ u_input.c.x) & u_input.c.x, 21u)]), !(global0[_wgslsmith_index_u32(arg_2 >> (12503u % 32u), 21u)] == false));
    var var_0 = vec2<f32>(arg_1, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -559f)));
    var var_1 = Struct_2(0u);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, var_0.x))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(837f, var_0.x), vec2<f32>(var_0.x, -412f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))));
    global1 = vec3<bool>(false, true, false);
    return _wgslsmith_div_i32(-arg_0.x, u_input.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec2<i32>(func_4(vec4<i32>(reverseBits(u_input.b) >> (~7447u % 32u), u_input.b, 24814i, _wgslsmith_sub_i32(func_2(), 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 733f)))), _wgslsmith_div_u32(~firstTrailingBit(arg_1.a), ~1u & arg_1.a)), u_input.b);
    var var_1 = 4294967295u >> (arg_1.a % 32u);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1197f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1185f, -3003f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f * -134f) * _wgslsmith_f_op_f32(trunc(-722f)))))));
    var var_4 = vec2<i32>(-27195i, _wgslsmith_mod_i32(1i, var_0.x) << (~_wgslsmith_mod_u32(~arg_1.a, 1u) % 32u));
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.c.x, 37445u, arg_1.a) | vec4<u32>(4294967295u, arg_1.a, 67163u, 18356u)), countOneBits(countOneBits(vec4<u32>(21034u, u_input.c.x, arg_1.a, arg_1.a)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(6228u, 4294967295u, 1u, arg_1.a)), max(vec4<u32>(arg_1.a, u_input.c.x, 0u, 4294967295u), vec4<u32>(u_input.c.x, arg_1.a, 4294967295u, arg_1.a)) | max(vec4<u32>(arg_1.a, 1u, 54637u, u_input.c.x), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u))), (arg_1.a << ((4294967295u | u_input.c.x) % 32u)) & arg_1.a), vec4<bool>(all(vec4<bool>(true, any(global1.zz), !var_2, arg_0.x & false)), true, true, var_2), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(49476u, u_input.c.x, 4294967295u, arg_1.a)), firstLeadingBit(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 0u))), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(26959u, 4294967295u), ~arg_1.a, 68388u), arg_1.a, ~(arg_1.a | 4294967295u), 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(75163u, ~(~4294967295u)), vec2<u32>(firstLeadingBit(arg_1.a << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 15169u, 4294967295u), vec3<u32>(0u, 8651u, 61759u)))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global1 = arg_1.c.b.wyw;
    var var_0 = Struct_5(arg_0, -706f);
    global0 = array<bool, 21>();
    var var_1 = Struct_4(arg_0.a, -vec2<i32>(u_input.b, _wgslsmith_sub_i32(arg_0.d.x >> (36143u % 32u), -1202i)), arg_1.c, -_wgslsmith_clamp_vec4_i32(-select(var_0.a.d, arg_0.d, vec4<bool>(false, false, false, global1.x)), var_0.a.d, vec4<i32>(-1i, firstTrailingBit(var_0.a.d.x), 42731i, _wgslsmith_mult_i32(arg_0.d.x, arg_0.d.x))));
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-790f, _wgslsmith_f_op_f32(ceil(770f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - -197f)))), var_0.b)) + -814f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_4(Struct_2(1u), vec2<i32>(u_input.a.x, -2147483647i), func_1(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(4294967295u, 21u)]), Struct_2(22563u)), u_input.a), Struct_3(false, Struct_2(u_input.c.x), func_1(vec2<bool>(global1.x, global1.x), Struct_2(u_input.c.x)), Struct_2(u_input.c.x))))));
    let var_2 = u_input.a.x;
    var var_3 = vec2<bool>(func_3(func_3(select(func_1(vec2<bool>(false, true), Struct_2(4294967295u)).b.xx, select(vec2<bool>(false, true), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 21u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), vec2<bool>(true, true)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 8281u, u_input.c.x), vec3<u32>(45501u, 0u, u_input.c.x)), ~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_add_i32(-u_input.b, u_input.b ^ 1i)).xz, u_input.c.x, func_1(vec2<bool>(u_input.c.x >= u_input.c.x, global1.x | global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), Struct_2(abs(u_input.c.x))).a.xz, 25603i).x, select(true, global1.x, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]));
    global0 = array<bool, 21>();
    var var_4 = -198f;
    var_3 = vec2<bool>(~u_input.c.x < 0u, any(!vec3<bool>(global0[_wgslsmith_index_u32(~0u, 21u)], func_3(vec2<bool>(true, true), u_input.c.x, vec2<u32>(1u, 4294967295u), 32779i).x, true)));
    var var_5 = abs(vec3<u32>(~select(~u_input.c.x, 0u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, ~u_input.c.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 15729u, 42576u), vec4<u32>(u_input.c.x, 35546u, u_input.c.x, 42945u)), _wgslsmith_div_u32(u_input.c.x, 0u))), func_1(select(!vec2<bool>(false, var_3.x), global1.xx, !vec2<bool>(global0[_wgslsmith_index_u32(55929u, 21u)], false)), Struct_2(~4294967295u)).a.x));
    let var_6 = Struct_4(Struct_2(~u_input.c.x), -vec2<i32>(18382i, var_2), func_1(global1.xx, Struct_2(~u_input.c.x)), ~min(-vec4<i32>(-24513i, var_2, u_input.a.x, -36335i), -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1036f, 1851f), vec2<f32>(-1489f, 701f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-186f, -163f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-201f, 1088f) - vec2<f32>(245f, -1000f))))), vec2<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-980f))))), !vec2<bool>(func_3(vec2<bool>(true, var_3.x), var_6.c.a.x, vec2<u32>(0u, var_6.a.a), u_input.b).x, true))), -431f, -817f);
}

