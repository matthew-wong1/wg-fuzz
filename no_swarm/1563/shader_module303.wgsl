struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-112f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -482f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = any(!vec4<bool>(true, _wgslsmith_mod_i32(u_input.b, -7008i) > -25323i, true, false));
    let var_2 = vec4<i32>(56650i, -22555i, max(43042i, ~(-1i)), ~40911i);
    global0 = ~_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.b, u_input.c.x)) << (0u % 32u), ~u_input.c.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~u_input.a.x, countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)))))));
    return Struct_1(~_wgslsmith_add_u32(reverseBits(1u), u_input.a.x), abs(reverseBits(min(4294967295u >> (1u % 32u), 1u))), var_1);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = !(!(!var_0.a.c)) && all(select(select(vec2<bool>(arg_2.b.c, true), select(vec2<bool>(arg_1.a.c, false), vec2<bool>(var_0.a.c, true), vec2<bool>(arg_2.b.c, arg_2.b.c)), all(vec4<bool>(arg_1.a.c, false, false, var_0.a.c))), !select(vec2<bool>(arg_1.a.c, false), vec2<bool>(false, true), vec2<bool>(true, arg_1.a.c)), !(!vec2<bool>(arg_1.a.c, var_0.a.c))));
    var var_2 = func_2();
    let var_3 = arg_2.b.c;
    var var_4 = var_0.a.c;
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_4 {
    global0 = _wgslsmith_div_i32(~(i32(-1i) * -arg_1), ~abs(-29689i) << (u_input.a.x % 32u)) << (~(u_input.a.x & u_input.a.x) % 32u);
    return Struct_4(_wgslsmith_f_op_f32(977f * 1060f), func_4(arg_1, Struct_2(func_2(), vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.x, 2106f)), -622f, _wgslsmith_f_op_f32(-1302f - 335f)), u_input.a.x), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1081f)) * _wgslsmith_div_f32(arg_0.x, 500f)), Struct_1(u_input.a.x, ~u_input.a.x, all(vec2<bool>(false, arg_2.x))), u_input.c, u_input.a.x)), _wgslsmith_mod_vec2_i32(-max(u_input.c, u_input.c) >> (vec2<u32>(firstLeadingBit(0u), u_input.a.x) % vec2<u32>(32u)), vec2<i32>(1i ^ u_input.b, u_input.b) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14925u, 42139u), vec2<u32>(u_input.a.x, 0u)), _wgslsmith_div_vec2_u32(u_input.a, u_input.a), vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(27662u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~(~vec3<u32>(20174u, u_input.a.x, u_input.a.x))) ^ 5291u);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(trunc(arg_1.a)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a)))));
    global0 = firstLeadingBit(-(_wgslsmith_mult_i32(max(-49640i, arg_0.c.x), -u_input.b) ^ ~arg_1.c.x));
    var var_2 = ~2147483647i;
    var var_3 = vec2<i32>(-2147483647i, arg_0.c.x);
    return Struct_2(arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1019f, 171f)))))), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.b.a, _wgslsmith_mod_u32(arg_3, arg_1.d ^ arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1085f, 1000f)) + vec2<f32>(1352f, -654f)))), u_input.b, select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), true)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-687f))))), func_1(vec2<f32>(_wgslsmith_f_op_f32(-267f + -2078f), _wgslsmith_f_op_f32(select(1474f, -626f, false))), ~0i, !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))).b, ~max(u_input.c, -vec2<i32>(u_input.c.x, 2147483647i)), abs(1u)), select(select(vec3<bool>(true, all(vec2<bool>(false, false)), select(false, false, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true), u_input.a.x);
    global0 = u_input.c.x;
    global0 = -1i;
    let var_1 = Struct_3(countOneBits(u_input.a), Struct_2(Struct_1(1u >> (0u % 32u), 1u, select(false, false == var_0.a.c, var_0.a.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2622f), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1132f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1986f, -1672f, -1516f)) * var_0.b)), ~_wgslsmith_mult_u32(u_input.a.x, func_4(-21455i, Struct_2(var_0.a, vec3<f32>(var_0.b.x, 111f, 1324f), u_input.a.x), Struct_4(var_0.b.x, Struct_1(4585u, 60620u, var_0.a.c), u_input.c, 4294967295u)).a)));
    let var_2 = var_1.b.a.c;
    global0 = u_input.c.x;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.b.x))))), Struct_1(~81808u, var_1.a.x, false), -(firstLeadingBit(vec2<i32>(2147483647i, 23598i)) & u_input.c), u_input.a.x);
    var var_4 = var_1;
    var var_5 = min(select(min(-vec4<i32>(2359i, u_input.c.x, -1931i, 25560i), ~(vec4<i32>(var_3.c.x, 21051i, u_input.c.x, var_3.c.x) | vec4<i32>(u_input.c.x, var_3.c.x, 23588i, var_3.c.x))), vec4<i32>(1i, -2147483647i, ~_wgslsmith_clamp_i32(-2147483647i, -63327i, 0i), -1i), !select(select(vec4<bool>(var_0.a.c, var_4.b.a.c, var_0.a.c, var_1.b.a.c), vec4<bool>(true, true, var_0.a.c, var_3.b.c), var_2), select(vec4<bool>(false, false, var_3.b.c, var_0.a.c), vec4<bool>(true, true, var_1.b.a.c, var_3.b.c), var_2), vec4<bool>(true, true, var_4.b.a.c, true))), _wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.b, u_input.c.x, -57839i), max(vec4<i32>(-15918i, u_input.b, 25468i, var_3.c.x), vec4<i32>(2147483647i, 49892i, -2147483647i, -13746i)) << (vec4<u32>(31503u, 35916u, var_1.b.c, 1u) % vec4<u32>(32u))) ^ (countOneBits(vec4<i32>(-1i, var_3.c.x, -1i, 0i)) | vec4<i32>(-6140i, u_input.b, -1i, _wgslsmith_sub_i32(u_input.c.x, var_3.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-28651i, ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_4.a.x, 1u), vec2<u32>(u_input.a.x, 0u)), select(u_input.a, vec2<u32>(0u, 20292u), vec2<bool>(var_2, true))), vec2<u32>(firstTrailingBit(23501u), 1u)), func_2().a & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.a.x, u_input.a.x, 15749u), vec3<u32>(1u, 84780u, u_input.a.x)), func_4(var_3.c.x, Struct_2(Struct_1(1u, var_1.b.a.b, true), var_4.b.b, 1u), func_1(var_0.b.zz, 0i, vec4<bool>(var_3.b.c, false, var_4.b.a.c, false))).b));
}

