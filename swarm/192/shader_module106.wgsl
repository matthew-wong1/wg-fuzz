struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(false, false, false)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = array<Struct_2, 21>();
    var var_0 = ~firstTrailingBit(~(vec3<u32>(31453u, 0u, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 0u)));
    let var_1 = ~u_input.a;
    global0 = array<Struct_2, 21>();
    var var_2 = Struct_2(!(!(!arg_2.a)));
    return abs(~abs(1u));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<i32>) -> vec2<f32> {
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-375f * 2622f)));
    global0 = array<Struct_2, 21>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)))) * vec2<f32>(_wgslsmith_f_op_f32(-1633f + arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1817f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -1867f), vec2<f32>(_wgslsmith_f_op_f32(abs(197f)), _wgslsmith_f_op_f32(694f - -583f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_2(arg_0.a);
    var var_1 = !var_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_3(1391f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1666f))), var_0, Struct_2(select(vec3<bool>(arg_0.a.x, false, false), var_0.a, vec3<bool>(true, false, true)))), vec2<i32>(-countOneBits(1i), -_wgslsmith_div_i32(1i, 30793i)), _wgslsmith_f_op_f32(f32(-1f) * -1159f), vec2<i32>(1i, 1i))));
    let var_3 = Struct_1(~_wgslsmith_dot_vec4_i32(-(vec4<i32>(-4080i, 65282i, -7221i, -38794i) >> (arg_1 % vec4<u32>(32u))), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_4 = var_3;
    return any(select(select(select(!vec4<bool>(var_0.a.x, false, true, arg_0.a.x), vec4<bool>(false, var_0.a.x, false, var_0.a.x), select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(var_0.a.x, true, false, var_0.a.x), false)), vec4<bool>(u_input.a > 14533u, !var_1.x, true, all(vec4<bool>(var_0.a.x, var_1.x, false, false))), select(select(vec4<bool>(false, var_1.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, var_1.x, true, arg_0.a.x), vec4<bool>(var_1.x, var_0.a.x, true, var_0.a.x)), !vec4<bool>(true, true, var_0.a.x, var_1.x), true)), select(vec4<bool>(true, any(var_0.a), var_0.a.x, arg_0.a.x != false), vec4<bool>(any(arg_0.a.yx), all(arg_0.a), all(var_0.a), var_0.a.x), true), true));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = !vec2<bool>(_wgslsmith_mult_u32(34698u, abs(u_input.a)) <= (firstLeadingBit(4294967295u) << (~u_input.a % 32u)), arg_1.a.x && !func_2(arg_1, vec4<u32>(78714u, u_input.a, 100603u, u_input.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(190f - _wgslsmith_f_op_f32(1726f - -552f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1420f, -1040f)) - _wgslsmith_f_op_f32(max(-385f, 170f)))))), _wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_vec2_f32(func_4(abs(23764u), _wgslsmith_div_vec2_i32(-vec2<i32>(-70171i, -31421i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -35102i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1628f))), firstTrailingBit(vec2<i32>(1i, 1i)))).x), _wgslsmith_f_op_f32(2568f + -936f));
    global0 = array<Struct_2, 21>();
    let var_2 = Struct_1(-(~(-(-3194i << (u_input.a % 32u)))));
    let var_3 = _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.a, -48831i), vec2<i32>(var_2.a, var_2.a)), -vec2<i32>(1i, -2732i)), ~max(vec2<i32>(var_2.a, -46121i), vec2<i32>(var_2.a, var_2.a))), select(vec2<i32>(var_2.a, 60976i) << (~vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), reverseBits(vec2<i32>(var_2.a, var_2.a)) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), var_0.x | (true && var_0.x))), select(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.a, var_2.a) ^ vec2<i32>(var_2.a, 0i), vec2<i32>(56295i, 1i)), ~(~vec2<i32>(var_2.a, 0i))), vec2<i32>(var_2.a, var_2.a), !(!(!arg_1.a.xx))));
    return func_2(Struct_2(arg_1.a), _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 72704u, 27547u), vec4<u32>(41632u, u_input.a, 1u, 0u), vec4<u32>(32170u, arg_0, 0u, 11401u)), ~(~vec4<u32>(0u, 5283u, 8299u, 58740u)))) & !(!arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -37397i;
    var_0 = reverseBits(-(-1i | min(_wgslsmith_clamp_i32(41652i, 0i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 65584i, 0i, 1i), vec4<i32>(1i, 0i, 11142i, 26633i)))));
    let var_1 = select(select(vec3<bool>(true, all(vec2<bool>(false, true)), func_1(~u_input.a, Struct_2(vec3<bool>(false, false, false)))), vec3<bool>(true, true, true), !(_wgslsmith_f_op_f32(f32(-1f) * -595f) < _wgslsmith_f_op_f32(round(-646f)))), !(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, false)), true || select(func_1(u_input.a, Struct_2(vec3<bool>(true, false, false))), true, false));
    global0 = array<Struct_2, 21>();
    var var_2 = Struct_1(2147483647i);
    global0 = array<Struct_2, 21>();
    global0 = array<Struct_2, 21>();
    let var_3 = Struct_2(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(16888i | var_2.a, var_2.a)), ~vec2<i32>(var_2.a, 25675i), ~vec2<i32>(var_2.a & 3825i, 4156i)), ~firstTrailingBit(u_input.a) << (max(u_input.a, 18015u) % 32u), ~(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, 10622u, u_input.a, 4294967295u)), ~vec4<u32>(28895u, u_input.a, 16351u, u_input.a))));
}

