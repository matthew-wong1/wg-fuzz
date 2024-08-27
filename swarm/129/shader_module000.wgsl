struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(4294967295u, -1098f, vec4<bool>(true, true, false, true), i32(-2147483648)), Struct_2(14545u, 148f, vec4<bool>(false, false, true, false), -36918i), Struct_2(4294967295u, 699f, vec4<bool>(true, false, false, false), -37829i), Struct_2(1u, 241f, vec4<bool>(false, true, false, false), 1i), Struct_2(1060u, 1000f, vec4<bool>(true, true, false, false), 1079i), Struct_2(1u, -2100f, vec4<bool>(false, true, true, true), -1i), Struct_2(0u, -362f, vec4<bool>(true, false, true, true), 24305i), Struct_2(2386u, 214f, vec4<bool>(false, true, true, false), -60805i), Struct_2(58833u, -1516f, vec4<bool>(true, false, true, true), 9555i), Struct_2(70233u, -1303f, vec4<bool>(false, false, false, true), -523i), Struct_2(4294967295u, 1155f, vec4<bool>(true, true, false, true), 1i), Struct_2(4294967295u, -763f, vec4<bool>(false, false, true, false), -1i), Struct_2(0u, 194f, vec4<bool>(false, true, false, false), 1i), Struct_2(4294967295u, -672f, vec4<bool>(true, false, true, false), -1i), Struct_2(1u, -379f, vec4<bool>(true, false, true, false), 0i), Struct_2(4294967295u, -1409f, vec4<bool>(true, false, false, false), -20434i), Struct_2(21988u, -1000f, vec4<bool>(false, true, true, true), -14763i), Struct_2(8307u, -582f, vec4<bool>(false, false, true, true), 1i), Struct_2(13057u, 533f, vec4<bool>(false, true, false, true), 54334i), Struct_2(48286u, -893f, vec4<bool>(true, false, false, true), 2147483647i), Struct_2(1u, -1824f, vec4<bool>(true, true, false, false), 2147483647i), Struct_2(1042u, -661f, vec4<bool>(false, true, false, true), 0i), Struct_2(21415u, 536f, vec4<bool>(false, true, true, true), -6062i), Struct_2(30802u, -645f, vec4<bool>(false, false, true, true), 2147483647i), Struct_2(6767u, 1056f, vec4<bool>(false, false, false, false), 33111i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = firstLeadingBit(~15570u);
    let var_1 = reverseBits(u_input.c);
    let var_2 = Struct_2(~(~(~22384u << (select(var_0, var_0, arg_0.x) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(108f)) + -1110f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1434f, 181f), _wgslsmith_f_op_f32(step(-606f, -424f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1769f))))), select(vec4<bool>(arg_0.x, arg_0.x, any(select(vec4<bool>(false, arg_0.x, true, true), arg_0, arg_0)), arg_0.x), vec4<bool>(arg_0.x, any(vec4<bool>(arg_0.x, true, false, arg_0.x)), false, arg_0.x), vec4<bool>(arg_0.x || arg_0.x, arg_0.x | true, any(!arg_0.xzx), !arg_0.x)), var_1);
    var var_3 = vec3<u32>(u_input.a.x, ~(~firstTrailingBit(u_input.b)), ~countOneBits(var_2.a));
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(~abs(~var_3.x), _wgslsmith_mult_u32(28639u, ~var_3.x), ~(~_wgslsmith_add_u32(var_0, 4294967295u)), ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_add_u32(var_3.x, 1u))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(18105u, 0u, 0u, 1721u), ~vec4<u32>(var_2.a, 55768u, var_0, u_input.b))));
    return !(!select(var_2.c, vec4<bool>(any(var_2.c.yzx), true, !var_2.c.x, true), select(select(var_2.c, arg_0, true), arg_0, !var_2.c)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = (u_input.c << (~(~u_input.b) % 32u)) & select(~u_input.c, u_input.c, all(func_3(vec4<bool>(var_0.a.x, false, true, false))) | var_0.a.x);
    var var_2 = !(u_input.c == _wgslsmith_div_i32(-(i32(-1i) * -1i), -2147483647i));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(u_input.c), _wgslsmith_sub_i32(-(~49624i), _wgslsmith_clamp_i32(-2147483647i, -38993i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 27991i, reverseBits(u_input.c)), -vec3<i32>(-1i, 21516i, u_input.c)), 4893i), vec4<i32>(u_input.c, -u_input.c, reverseBits(_wgslsmith_mult_i32(11131i, u_input.c)), 2147483647i) >> (min(arg_2, ~select(vec4<u32>(u_input.b, 0u, 12854u, u_input.b), arg_2, vec4<bool>(true, false, var_0.a.x, false))) % vec4<u32>(32u)));
    var var_4 = u_input.b;
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.x, u_input.c, -u_input.c, max(-33145i, 2147483647i)), vec4<i32>(var_3.x, 2147483647i, firstLeadingBit(-(var_3.x << (u_input.a.x % 32u))), -_wgslsmith_dot_vec2_i32(~var_3.yy, countOneBits(var_3.zx))));
}

fn func_1() -> u32 {
    let var_0 = true;
    global0 = array<Struct_2, 25>();
    let var_1 = vec4<i32>((_wgslsmith_div_i32(func_2(vec4<f32>(525f, 1331f, -1788f, -2992f), Struct_1(vec2<bool>(var_0, var_0)), vec4<u32>(2052u, 4294967295u, 4294967295u, 77874u)), ~0i) & u_input.c) ^ ~u_input.c, (-u_input.c ^ -2147483647i) >> (countOneBits(1u) % 32u), abs(2147483647i), select(-2147483647i, -44913i, false));
    let var_2 = 66106u;
    global0 = array<Struct_2, 25>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_1() >> ((reverseBits(16510u) | _wgslsmith_mod_u32(u_input.a.x, u_input.b)) % 32u), ~countOneBits(abs(~u_input.b)), _wgslsmith_mod_u32(~u_input.a.x, 4294967295u), _wgslsmith_div_u32(_wgslsmith_div_u32(~max(u_input.a.x, u_input.b), u_input.a.x), 15255u));
    var var_1 = ~(~14713u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(669f)) + _wgslsmith_f_op_f32(1477f - 127f))))));
    let var_3 = func_3(select(vec4<bool>(true, (u_input.a.x >= u_input.a.x) || true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(1242f == var_2, true, true, true))).yz;
    global0 = array<Struct_2, 25>();
    let var_4 = Struct_1(!(!select(var_3, var_3, vec2<bool>(var_3.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(64915u, ~var_0.xz, ~vec3<i32>(u_input.c, -2147483647i, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, 140f, var_2))), Struct_1(vec2<bool>(false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(47372u, 0u, var_0.x, 58947u), vec4<u32>(var_0.x, 29247u, u_input.b, var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(ceil(var_2)))))));
}

