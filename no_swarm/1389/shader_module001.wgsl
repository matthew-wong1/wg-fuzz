struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(28913u, vec3<u32>(68698u, 2733u, 37613u), -164f), Struct_1(4294967295u, vec3<u32>(1u, 60531u, 34843u), -133f), Struct_1(0u, vec3<u32>(73891u, 22120u, 3036u), 495f), Struct_1(98146u, vec3<u32>(27161u, 346u, 0u), -1078f), Struct_1(8517u, vec3<u32>(4294967295u, 4294967295u, 1u), -349f), Struct_1(25934u, vec3<u32>(71110u, 10087u, 18651u), -1094f), Struct_1(1u, vec3<u32>(0u, 0u, 47412u), 2043f), Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), 211f), Struct_1(0u, vec3<u32>(28683u, 0u, 0u), 214f), Struct_1(4294967295u, vec3<u32>(79436u, 4294967295u, 4294967295u), -1000f), Struct_1(35230u, vec3<u32>(88036u, 154110u, 64649u), -282f), Struct_1(23737u, vec3<u32>(4294967295u, 4294967295u, 0u), 823f), Struct_1(14867u, vec3<u32>(0u, 0u, 1139u), -849f), Struct_1(6521u, vec3<u32>(4294967295u, 4294967295u, 1u), 1000f), Struct_1(4294967295u, vec3<u32>(36219u, 0u, 1u), 586f), Struct_1(24509u, vec3<u32>(0u, 4294967295u, 57556u), -321f), Struct_1(59174u, vec3<u32>(26117u, 43141u, 1u), 657f), Struct_1(0u, vec3<u32>(36035u, 0u, 33616u), 235f), Struct_1(4294967295u, vec3<u32>(1u, 18710u, 15876u), -1863f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3.c;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_3.c, 1000f, any(!vec2<bool>(arg_2.x, true)))))));
    let var_1 = select(arg_2.yx, arg_2.zz, arg_2.x);
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return 28675u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> bool {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = 9379u;
    global0 = array<Struct_1, 19>();
    let var_1 = Struct_1(~(arg_0.b.x | func_2(arg_0.b, 2147483647i & arg_2, select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), Struct_1(u_input.b.x, vec3<u32>(76595u, u_input.e.x, arg_0.b.x), arg_0.c))), arg_0.b, _wgslsmith_f_op_f32(step(-394f, arg_0.c)));
    return min(u_input.a, u_input.a) > min(arg_2, arg_2);
}

fn func_3() -> f32 {
    var var_0 = true;
    var var_1 = max(~(~_wgslsmith_clamp_u32(~64028u, 20053u, 88438u << (u_input.c % 32u))), 25367u);
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_div_i32(-1i, u_input.a), ~u_input.a), vec2<i32>(abs(-22318i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a))))));
    var_1 = u_input.b.x;
    let var_3 = Struct_1(u_input.c, vec3<u32>(u_input.d.x, abs(_wgslsmith_div_u32(u_input.d.x & 37116u, countOneBits(u_input.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7311u, 0u), u_input.e), _wgslsmith_add_u32(u_input.b.x, u_input.d.x), u_input.c), vec3<u32>(_wgslsmith_mod_u32(u_input.d.x, 4294967295u), ~0u, 91155u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1082f, _wgslsmith_f_op_f32(round(-278f)))));
    return -526f;
}

fn func_4(arg_0: u32, arg_1: f32) -> bool {
    var var_0 = Struct_1(abs(1u), abs(countOneBits(select(vec3<u32>(42943u, u_input.d.x, u_input.b.x), vec3<u32>(u_input.e.x, 0u, 4294967295u), vec3<bool>(false, false, true)) & vec3<u32>(4294967295u, u_input.e.x, 48068u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f * _wgslsmith_f_op_f32(f32(-1f) * -239f)) + -1583f));
    global0 = array<Struct_1, 19>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), arg_1, !any(vec4<bool>(true, true, false, true)) & true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), var_0.c, any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)))));
    let var_2 = Struct_1(~4294967295u, vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 92435u) << (u_input.d % vec2<u32>(32u)), vec2<u32>(var_0.a, 23949u)), 86031u << (u_input.b.x % 32u), ~4119u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(floor(994f)))))));
    let var_3 = ~var_2.b;
    return !(~_wgslsmith_mult_u32(var_2.b.x, ~4294967295u) >= arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(any(vec2<bool>(func_1(global0[_wgslsmith_index_u32(u_input.c, 19u)], 75717u, 25408i), true)), any(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), !any(vec3<bool>(true, false, true))), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), true), vec3<bool>(false, func_4(u_input.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3())))), any(vec2<bool>(any(vec3<bool>(true, false, true)), true))));
    let var_1 = -1744f;
    let var_2 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mult_u32(select(4294967295u, 0u, var_0.x), firstLeadingBit(20025u)))), 19u)];
    var var_3 = select(_wgslsmith_clamp_vec3_u32(var_2.b, vec3<u32>(~u_input.c, u_input.c, select(0u, var_2.b.x, var_0.x)), ~max(var_2.b, var_2.b)), max(firstTrailingBit(firstTrailingBit(var_2.b)), abs(var_2.b)), var_0) | max(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(15507u, var_2.a, u_input.d.x)), 0u, abs(94123u))), max(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.d.x, u_input.d.x), vec3<u32>(6274u, 4294967295u, u_input.e.x)) << (var_2.b % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(u_input.e.x, var_2.a), _wgslsmith_mod_u32(var_2.b.x, 63008u), u_input.d.x)));
    global0 = array<Struct_1, 19>();
    var var_4 = ~u_input.a;
    var var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-5548i) >> (var_2.b.x % 32u), 48470i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-24954i, select(u_input.a, -2147483647i, false)), u_input.a), ~(~u_input.a) ^ u_input.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(-372f - var_1))))), vec4<u32>(u_input.c, var_5.x, 0u, 78743u), ~(~vec2<u32>(firstTrailingBit(var_2.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, var_3.x, 4294967295u, var_5.x), vec4<u32>(var_2.a, 4344u, var_5.x, u_input.c)))), countOneBits(vec2<i32>(u_input.a, ~(-2147483647i)) ^ (select(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, -18463i), vec2<bool>(false, var_0.x)) << (abs(vec2<u32>(var_2.a, var_3.x)) % vec2<u32>(32u)))));
}

