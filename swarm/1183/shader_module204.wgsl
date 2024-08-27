struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-207f, 1000f), vec2<f32>(-1126f, 195f), vec2<f32>(-658f, -805f), vec2<f32>(934f, -584f), vec2<f32>(-1847f, -393f), vec2<f32>(1698f, 2672f), vec2<f32>(1030f, -524f), vec2<f32>(1000f, 1045f), vec2<f32>(902f, 741f), vec2<f32>(-1018f, 1000f), vec2<f32>(-2128f, -1000f), vec2<f32>(-550f, -361f), vec2<f32>(-667f, 669f), vec2<f32>(166f, -662f), vec2<f32>(1000f, -678f), vec2<f32>(-641f, 1016f), vec2<f32>(109f, -454f), vec2<f32>(-647f, -235f), vec2<f32>(-1884f, -884f), vec2<f32>(-736f, -176f), vec2<f32>(180f, -336f), vec2<f32>(-850f, 1000f), vec2<f32>(1526f, -1000f), vec2<f32>(820f, -2339f), vec2<f32>(-1011f, -727f), vec2<f32>(-691f, -509f), vec2<f32>(-1000f, -499f), vec2<f32>(283f, 1327f), vec2<f32>(-370f, -233f), vec2<f32>(1720f, 241f), vec2<f32>(-1000f, 389f), vec2<f32>(-823f, 107f));

var<private> global1: i32;

var<private> global2: array<vec4<f32>, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    var var_0 = Struct_3(-8182i);
    return u_input.d;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_add_vec3_i32(reverseBits(countOneBits(firstTrailingBit(vec3<i32>(35570i, 1i, -42678i)))), ~vec3<i32>(countOneBits(_wgslsmith_sub_i32(arg_2.a, arg_2.a)), countOneBits(-41576i), -1i));
    global0 = array<vec2<f32>, 32>();
    var var_2 = arg_1;
    var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(~max(vec2<u32>(1u, 4294967295u), vec2<u32>(19315u, 121412u)), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_1.a, 20851u), u_input.b)), !var_0.b, _wgslsmith_f_op_f32(-arg_0));
    return Struct_1(arg_1.a, arg_3.a.zxz, -973f);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = false;
    var var_1 = ~_wgslsmith_sub_vec3_u32(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_1, 1u), vec3<u32>(4294967295u, 8791u, 83990u), vec3<u32>(0u, 17123u, 4294967295u))), vec3<u32>(arg_1, ~arg_1 ^ ~0u, abs(0u)));
    var var_2 = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f * 1144f))), _wgslsmith_f_op_f32(max(-620f, _wgslsmith_f_op_f32(f32(-1f) * -719f))))), Struct_1(7695u, vec3<bool>(arg_2.x, arg_2.x, var_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -941f)))), Struct_3(func_2()), Struct_2(!(!select(vec4<bool>(var_0, false, true, arg_0), vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_2.x, true, arg_0, var_0))), arg_2, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(14426u, var_1.x, 6787u), countOneBits(vec3<u32>(arg_1, var_1.x, 62507u))), vec3<bool>(true, !arg_0, false), -445f), vec3<bool>(true, true, arg_2.x), arg_2.x));
    global0 = array<vec2<f32>, 32>();
    let var_3 = Struct_1(4294967295u, !vec3<bool>(true, !(!var_2.b.x), firstLeadingBit(1u) >= func_3(-241f, Struct_1(4294967295u, vec3<bool>(arg_0, true, false), 618f), Struct_3(11099i), Struct_2(vec4<bool>(arg_2.x, true, arg_2.x, var_2.b.x), arg_2, Struct_1(58412u, vec3<bool>(var_2.b.x, arg_0, false), 1524f), vec3<bool>(arg_2.x, var_0, true), false)).a), _wgslsmith_f_op_f32(var_2.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))));
    return var_3;
}

fn func_4(arg_0: Struct_2) -> f32 {
    return arg_0.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, vec3<bool>(false, true, select(all(vec4<bool>(false, false, false, false)), true, any(vec4<bool>(false, false, false, false)) && true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec4<bool>(true, true, true, true), vec2<bool>(true, true), func_1(false, 0u, vec2<bool>(false, true)), func_3(539f, Struct_1(0u, vec3<bool>(false, true, true), -418f), Struct_3(51991i), Struct_2(vec4<bool>(true, true, false, true), vec2<bool>(false, true), Struct_1(u_input.a, vec3<bool>(false, false, true), -165f), vec3<bool>(false, true, false), false)).b, false)))));
    global1 = -(~_wgslsmith_mod_i32(~1i, ~u_input.d)) & (1i << ((u_input.b.x & 14014u) % 32u));
    let var_1 = -216f;
    let var_2 = ~vec4<i32>(firstLeadingBit(min(_wgslsmith_mult_i32(0i, u_input.d), firstLeadingBit(2147483647i))), u_input.d, -1005i, -2147483647i);
    var var_3 = func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-865f, var_1) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(Struct_2(vec4<bool>(false, true, var_0.b.x, var_0.b.x), var_0.b.zy, Struct_1(var_0.a, vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.c), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), true)))))), func_1(!(!any(vec2<bool>(false, var_0.b.x))), ~(~abs(4294967295u)), vec2<bool>(all(!vec3<bool>(var_0.b.x, true, true)), false)), Struct_3(~(~(-u_input.d))), Struct_2(select(!(!vec4<bool>(true, false, false, var_0.b.x)), !(!vec4<bool>(var_0.b.x, true, false, true)), (var_0.a << (0u % 32u)) >= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54094u, u_input.b.x, 0u), vec4<u32>(146440u, 33611u, 28116u, var_0.a))), vec2<bool>(any(vec2<bool>(true, true)), false), func_1(var_0.b.x, reverseBits(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), vec2<bool>(var_0.b.x, any(var_0.b.xz))), !(!var_0.b), var_0.b.x));
    let var_4 = func_1(_wgslsmith_clamp_i32(31989i, min(-13974i, -25826i), _wgslsmith_mod_i32(u_input.d, var_2.x)) > func_2(), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 38515u, 30510u), vec3<u32>(74061u, var_0.a, var_3.a)), 4294967295u), var_3.a), var_3.b.yz);
    let var_5 = true;
    var var_6 = Struct_3(_wgslsmith_dot_vec2_i32(var_2.wy, -abs(_wgslsmith_sub_vec2_i32(var_2.wz, vec2<i32>(var_2.x, var_2.x)))));
    global0 = array<vec2<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(610f, ~(~(vec4<u32>(var_4.a, u_input.a, var_0.a, var_0.a) >> (abs(vec4<u32>(var_3.a, var_3.a, var_0.a, 4294967295u)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(var_4.a, var_0.a))), vec2<u32>(~1u, 88151u & var_3.a)), abs(var_6.a));
}

