struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_clamp_i32(~(-4691i), u_input.b, 2147483647i);
    var var_1 = ~u_input.b;
    var_0 = firstTrailingBit(u_input.b);
    var_0 = (i32(-1i) * -7632i) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(abs(u_input.c)), _wgslsmith_mult_vec4_u32(~u_input.c, u_input.c)), ~firstLeadingBit(u_input.c)) % 32u);
    let var_2 = true;
    return -(reverseBits(vec4<i32>(u_input.b, _wgslsmith_mod_i32(0i, u_input.b), _wgslsmith_sub_i32(u_input.b, 0i), 36469i)) & abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 34164i), abs(vec4<i32>(1i, u_input.b, 8945i, -6720i)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = ~(~u_input.a);
    let var_1 = arg_2;
    let var_2 = ~vec3<u32>(u_input.a | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a) >> (vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), u_input.c.xz), 1u, 57801u);
    let var_3 = func_2();
    var_0 = max(19821u, firstTrailingBit(~46191u));
    return _wgslsmith_div_vec3_u32(u_input.c.xxy, ~u_input.c.wyx);
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = 56114u;
    let var_1 = _wgslsmith_sub_i32(arg_1, arg_1);
    var var_2 = Struct_1(select(!(!arg_2.a), select(!vec3<bool>(true, arg_0.x, arg_0.x), select(vec3<bool>(arg_0.x, true, arg_2.a.x), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_2.a.x, true, true), arg_0.x), arg_2.a.x), true), (select(-1i, -23286i, true) | -1i) >= (abs(21246i) & _wgslsmith_div_i32(-20760i, var_1))), 1116f, arg_2.c);
    var var_3 = 1i;
    var var_4 = vec2<i32>(-_wgslsmith_dot_vec2_i32(~(-vec2<i32>(-16562i, -1i)), vec2<i32>(firstLeadingBit(-1i), u_input.b)), 1i);
    return ~12564u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a, 1350f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.b)), arg_1.c.x, var_0.b) * vec3<f32>(-212f, _wgslsmith_f_op_f32(select(arg_1.c.x, var_0.b, true)), _wgslsmith_f_op_f32(-var_0.c.x))))));
    let var_2 = var_1.a.yy;
    let var_3 = select(select(vec4<bool>(true, !any(vec3<bool>(var_0.a.x, var_1.a.x, var_1.a.x)), true || (u_input.d <= 0u), !var_1.a.x | select(var_1.a.x, true, arg_1.a.x)), vec4<bool>(all(!vec4<bool>(false, var_0.a.x, var_2.x, false)), false, true, !arg_1.a.x || var_0.a.x), select(vec4<bool>(true, false, true, any(vec4<bool>(var_2.x, var_1.a.x, arg_1.a.x, false))), !vec4<bool>(false, true, var_0.a.x, var_1.a.x), 1i > u_input.b)), vec4<bool>(!arg_1.a.x, true, all(arg_1.a), true), false != var_0.a.x);
    var var_4 = arg_2.x;
    return -_wgslsmith_mod_vec3_i32(vec3<i32>(select(abs(-48320i), ~u_input.b, u_input.b >= u_input.b), 1i, -2147483647i), _wgslsmith_div_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(0i, 16404i, u_input.b))), reverseBits(abs(vec3<i32>(u_input.b, u_input.b, 108652i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.c.zwx | abs(u_input.c.xzz), ~func_1(vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, true, false), 1000f, vec3<f32>(-1000f, -203f, 1000f)), 1259f, vec2<f32>(846f, -1436f))), vec3<u32>(0u, u_input.c.x, u_input.c.x));
    var var_1 = func_4(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) | func_3(vec2<bool>(true, -2147483647i <= u_input.b), u_input.b, Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(select(768f, 423f, true)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 915f, -1346f), vec3<f32>(-704f, 432f, -240f)))), Struct_1(vec3<bool>(u_input.b >= _wgslsmith_sub_i32(2147483647i, 1i), false, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-1148f * _wgslsmith_f_op_f32(785f - _wgslsmith_f_op_f32(1000f - -1269f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-703f, -176f, -580f) * vec3<f32>(-1080f, 1000f, 1072f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1092f, 234f) + vec3<f32>(619f, -841f, -463f))))), countOneBits(min(~(vec4<u32>(4294967295u, u_input.d, 103544u, 33330u) << (u_input.c % vec4<u32>(32u))), ~firstLeadingBit(u_input.c))));
    let var_2 = Struct_1(!select(vec3<bool>(any(vec2<bool>(true, false)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), 1985f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-357f * -295f))), -959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-106f, -926f)) + _wgslsmith_f_op_f32(select(-1110f, 283f, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, -837f, -2171f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1566f, -2112f, 529f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, -1745f, -646f))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))))));
    var var_3 = var_2;
    var var_4 = !vec4<bool>(var_2.a.x, var_1.x > u_input.b, !var_3.a.x, var_3.a.x);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(var_1.x, 58021i, -2147483647i)) | -vec3<i32>(-u_input.b, 47591i >> (1u % 32u), _wgslsmith_div_i32(2147483647i, -77936i)), _wgslsmith_sub_vec3_i32(select(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 2147483647i, u_input.b), vec3<i32>(-36282i, -2147483647i, u_input.b))), -firstLeadingBit(vec3<i32>(11866i, 2147483647i, var_1.x)), select(vec3<bool>(var_5.a.x, var_2.a.x, var_3.a.x), var_2.a, true)), vec3<i32>(abs(var_1.x), 15826i, -52103i)));
}

