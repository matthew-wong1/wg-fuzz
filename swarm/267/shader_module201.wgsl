struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)), arg_2.b.x);
    var var_1 = arg_0.x;
    global0 = _wgslsmith_clamp_i32(-19362i, abs(_wgslsmith_clamp_i32(firstTrailingBit(-7431i), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_3.a, -18987i, 1i), vec4<i32>(arg_3.a, 1i, 0i, u_input.a)))) >> (firstLeadingBit(~min(1u, arg_1)) % 32u), ~u_input.a);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(arg_2.b + vec2<f32>(arg_2.b.x, 1079f))), arg_2.a))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.a, arg_2.a, arg_0)))))), _wgslsmith_f_op_f32(trunc(var_0)));
    let var_3 = Struct_2(abs(_wgslsmith_mod_i32(~arg_3.a, reverseBits(arg_3.a))));
    return -15779i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0.b.x));
    global0 = u_input.a;
    global0 = _wgslsmith_add_i32(u_input.a, reverseBits(min(-9949i, ~_wgslsmith_mod_i32(2147483647i, u_input.a))));
    global0 = -2147483647i & reverseBits(_wgslsmith_mult_i32(-u_input.a, func_3(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), true), min(2928u, 1u), arg_0, Struct_2(78251i))));
    let var_1 = Struct_3(firstLeadingBit(vec2<i32>(-1i) * -min(vec2<i32>(38515i, u_input.a), vec2<i32>(u_input.a, u_input.a))), ~22443u, vec3<bool>(false, !(all(vec4<bool>(true, true, arg_1.x, false)) | arg_1.x), all(!vec3<bool>(arg_1.x, false, arg_1.x))));
    return arg_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_5 {
    global0 = _wgslsmith_mod_i32(-1196i, countOneBits(-57272i));
    global0 = u_input.a << (21515u % 32u);
    let var_0 = firstTrailingBit(~(~vec2<i32>(274i, 2147483647i)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.yzw)), 93768u);
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-466f, 834f))), _wgslsmith_div_vec2_f32(vec2<f32>(714f, 430f), vec2<f32>(1000f, -1832f)), _wgslsmith_f_op_f32(384f - -1027f)), vec2<bool>(false, arg_1 > 45420u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, -1000f) + vec2<f32>(1527f, 1198f))) + vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 1165f)), 261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -462f), -1361f)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1999f, 891f)), -876f, 1074f, _wgslsmith_f_op_f32(f32(-1f) * -588f)), vec4<f32>(_wgslsmith_div_f32(1000f, -500f), _wgslsmith_f_op_f32(1111f + 171f), -1217f, _wgslsmith_f_op_f32(trunc(767f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1130f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-697f, -1444f)))), Struct_2(firstLeadingBit(u_input.a)));
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), u_input.a);
    let var_2 = !(!vec3<bool>(true, true, !select(true, false, true)));
    var var_3 = -8660i;
    var var_4 = abs(select((vec3<i32>(-50169i, var_1.x, arg_2) | vec3<i32>(2147483647i, 1i, -8744i)) >> (min(vec3<u32>(87237u, 38945u, arg_1), vec3<u32>(arg_0.x, var_0.b, arg_1) >> (vec3<u32>(arg_0.x, 1u, 70489u) % vec3<u32>(32u))) % vec3<u32>(32u)), (vec3<i32>(-2147483647i, var_1.x, -19039i) << ((vec3<u32>(var_0.b, arg_1, 1u) << (vec3<u32>(arg_1, 0u, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u))) << (abs(~vec3<u32>(0u, var_0.b, 25780u)) % vec3<u32>(32u)), !var_2.x));
    return Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2, var_4.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a, var_4.x), 1i)) >> (func_4(Struct_1(var_0.a.zy, var_0.a.yx, _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec2<f32>(var_0.a.x, 630f), var_0.a.zy, -683f), vec2<bool>(true, true))).x), !select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, false, false, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1633f, 1316f, var_0.a.x))), Struct_2(-arg_2)).b % 32u));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    let var_0 = countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(select(arg_1.b, ~arg_1.b, !arg_1.c.x), firstLeadingBit(1u ^ arg_1.b)), vec2<u32>(1u, arg_1.b)));
    let var_1 = 4294967295u;
    global0 = func_3(!vec2<bool>(select(!arg_1.c.x, true, !arg_1.c.x), !arg_1.c.x), 3769u, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(987f, -392f) * _wgslsmith_f_op_f32(-2181f - -683f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, -446f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-940f, 944f), vec2<f32>(-755f, 482f), arg_1.c.xz)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(900f, -335f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1526f, -1286f)))), func_1(var_0, min(_wgslsmith_div_u32(~4294967295u, var_1), var_0.x), -2147483647i));
    let var_2 = select(select(vec4<bool>(true, !(!arg_1.c.x), 0i >= firstTrailingBit(2147483647i), any(vec2<bool>(arg_1.c.x, false))), vec4<bool>(!(u_input.a >= arg_0.a), true, arg_1.c.x, any(select(arg_1.c, vec3<bool>(true, true, arg_1.c.x), arg_1.c))), vec4<bool>(all(select(vec4<bool>(false, false, arg_1.c.x, arg_1.c.x), vec4<bool>(false, arg_1.c.x, arg_1.c.x, arg_1.c.x), false)), (false & arg_1.c.x) & arg_1.c.x, !arg_1.c.x, any(!vec4<bool>(false, arg_1.c.x, false, false)))), vec4<bool>(arg_1.c.x, !arg_1.c.x, true, (_wgslsmith_f_op_f32(floor(-384f)) == 1303f) && !any(vec2<bool>(arg_1.c.x, arg_1.c.x))), any(!vec3<bool>(any(arg_1.c.yx), !arg_1.c.x, !arg_1.c.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1287f)), -1000f);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-198f - _wgslsmith_div_f32(-1081f, -357f)))), _wgslsmith_f_op_f32(-var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_i32(-u_input.a & u_input.a, 0i);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-100f * -340f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-393f - -214f))), 1211f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_5(func_1(vec2<u32>(6244u, 31752u), _wgslsmith_sub_u32(87416u, 25409u), u_input.a), Struct_3(max(vec2<i32>(60945i, -32477i), vec2<i32>(u_input.a, u_input.a)), ~4294967295u, vec3<bool>(true, true, true)))), -1426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(var_0.x))))));
    let var_2 = vec3<bool>(!(countOneBits(func_1(vec2<u32>(21684u, 4294967295u), 1u, 29981i).a) > -(u_input.a << (61252u % 32u))), true, all(!vec3<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, false, true, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.xx);
    let var_4 = ~(~(~(~vec4<i32>(-7874i, -1i, u_input.a, u_input.a))) ^ vec4<i32>(func_1(_wgslsmith_div_vec2_u32(vec2<u32>(67703u, 32654u), vec2<u32>(11957u, 3701u)), abs(34642u), -u_input.a).a, firstTrailingBit(u_input.a), -func_3(vec2<bool>(true, var_2.x), 1u, Struct_1(var_3, vec2<f32>(516f, -303f), var_0.x), Struct_2(u_input.a)), u_input.a));
    var var_5 = 29053u;
    var_5 = 1u;
    var_5 = firstTrailingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(~26175u), 1u));
}

