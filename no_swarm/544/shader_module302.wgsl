struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 6>();
    let var_0 = !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))));
    let var_1 = var_0;
    let var_2 = ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(4735i, u_input.b.x, -27417i, arg_0.a.x)), reverseBits(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-10465i, -2147483647i, arg_0.a.x, arg_0.a.x)), firstLeadingBit(vec4<i32>(77488i, u_input.b.x, arg_0.a.x, -2147483647i)))));
    var var_3 = Struct_1(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(arg_0.a, _wgslsmith_add_vec3_i32(~vec3<i32>(var_2.x, u_input.b.x, 1i), var_2.xyw)), 33003i), ~vec3<u32>(abs(_wgslsmith_add_u32(104517u, 0u)), arg_0.e.x | ~u_input.a.x, max(countOneBits(2968u), _wgslsmith_div_u32(arg_0.b.x, 55524u))), _wgslsmith_f_op_vec2_f32(floor(arg_0.c)), ~vec4<u32>(~0u, arg_0.e.x, _wgslsmith_mod_u32(0u, ~102885u), ~abs(3560u)), vec3<u32>(~4294967295u, _wgslsmith_mult_u32(16828u, u_input.a.x >> (arg_0.d.x % 32u)) & 4294967295u, arg_0.d.x));
    return any(vec3<bool>(true, true, true));
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    var var_0 = -abs((_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, -9666i), vec3<i32>(-13803i, u_input.b.x, u_input.b.x)) << (~u_input.a.wzy % vec3<u32>(32u))) | (u_input.b ^ -u_input.b));
    var var_1 = select(select(vec3<bool>(any(vec2<bool>(true, true)), true, func_3(global0[_wgslsmith_index_u32(498u, 6u)])), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.b.x <= 1i, false), vec3<bool>(true, true, true))), !(!vec3<bool>(any(vec3<bool>(false, true, false)), false, false)), !any(vec2<bool>(true, true)));
    return !var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(step(arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_0.c.x, true)))))), -1162f);
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_1 = select(!vec2<bool>(!all(vec2<bool>(true, true)), true), !vec2<bool>(true, func_2(~0u, ~arg_0.e.x)), false);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1235f * _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c.x - 1276f), arg_1.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -381f), -270f, arg_0.c.x);
    return global0[_wgslsmith_index_u32(4294967295u, 6u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec2<f32> {
    global0 = array<Struct_1, 6>();
    let var_0 = arg_3;
    global0 = array<Struct_1, 6>();
    var var_1 = -935f;
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(arg_1.d.x, ~(func_1(Struct_1(vec3<i32>(0i, arg_0.a.x, u_input.b.x), arg_1.d.wwx, vec2<f32>(-1000f, 108f), vec4<u32>(arg_0.d.x, arg_1.e.x, arg_0.d.x, arg_0.d.x), vec3<u32>(arg_0.b.x, 30916u, u_input.a.x)), arg_1).b.x & 36349u)), u_input.a.x, func_1(func_1(func_1(func_1(global0[_wgslsmith_index_u32(arg_1.d.x, 6u)], arg_0), Struct_1(vec3<i32>(2147483647i, arg_1.a.x, 0i), u_input.a.yxw, vec2<f32>(arg_0.c.x, arg_1.c.x), vec4<u32>(0u, 6540u, 10685u, u_input.a.x), vec3<u32>(arg_1.b.x, 1u, 0u))), global0[_wgslsmith_index_u32(abs(arg_1.b.x), 6u)]), Struct_1(vec3<i32>(~(-24133i), reverseBits(arg_1.a.x), max(-56618i, 27770i)), select(~vec3<u32>(28645u, 18759u, arg_0.b.x), ~vec3<u32>(89610u, u_input.a.x, arg_1.b.x), true), func_1(arg_1, func_1(Struct_1(vec3<i32>(arg_1.a.x, -2225i, arg_1.a.x), arg_0.b, vec2<f32>(-1444f, arg_0.c.x), u_input.a, arg_0.d.xww), Struct_1(vec3<i32>(1i, 16811i, arg_1.a.x), u_input.a.ywy, vec2<f32>(-456f, -1007f), vec4<u32>(0u, 11025u, arg_0.b.x, 97208u), arg_1.e))).c, ~arg_1.d, (u_input.a.zzx ^ u_input.a.xzx) & countOneBits(u_input.a.wxy))).d.x);
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) * _wgslsmith_div_f32(arg_1.c.x, 641f)), arg_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) + -502f)), -156f);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = !(!vec4<bool>(true, true | func_3(Struct_1(vec3<i32>(arg_0.a.x, u_input.b.x, u_input.b.x), arg_0.d.yyy, arg_0.c, vec4<u32>(u_input.a.x, u_input.a.x, arg_0.b.x, 111942u), u_input.a.ywz)), true, true));
    global0 = array<Struct_1, 6>();
    let var_1 = ~(~_wgslsmith_mult_u32(arg_0.e.x, ~1u));
    var var_2 = max(vec2<i32>(-4576i, _wgslsmith_div_i32(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -31616i, -92747i, 0i), vec4<i32>(u_input.b.x, u_input.b.x, arg_0.a.x, 12095i)))), u_input.b.yz);
    var_2 = -(~arg_0.a.yz);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(62169u, var_1), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_mod_vec3_i32(-u_input.b, vec3<i32>(-1i, u_input.b.x, u_input.b.x) & select(u_input.b, u_input.b, vec3<bool>(false, false, false))), _wgslsmith_mod_vec3_u32(u_input.a.wyx, _wgslsmith_div_vec3_u32(min(u_input.a.xwz, u_input.a.xzz), ~u_input.a.yyx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_1(vec3<i32>(-53183i, u_input.b.x, u_input.b.x), u_input.a.xxy, vec2<f32>(937f, 250f), u_input.a, u_input.a.yzy), Struct_1(u_input.b, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(792f, -1597f), vec4<u32>(0u, u_input.a.x, 22612u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 1u))), func_1(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(39277u, u_input.a.x, u_input.a.x), vec2<f32>(686f, -2732f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 23216u), u_input.a.zzy)), u_input.b.x, any(vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-235f, -373f) - vec2<f32>(-1578f, -1327f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -352f))))), countOneBits(vec4<u32>(37721u, u_input.a.x, 4294967295u, u_input.a.x)), u_input.a.yyy), -565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f * -1262f) - -296f) + _wgslsmith_f_op_f32(f32(-1f) * -1175f))), 582f);
    var var_1 = ~var_0.e.x;
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 1876f)))))));
    var_3 = 1158f;
    var var_4 = var_0.c.x;
    var var_5 = var_0.a.x;
    let var_6 = _wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.a.x, u_input.a.x, 1u), vec3<u32>(~_wgslsmith_add_u32(1u, u_input.a.x), abs(4294967295u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 38517u), u_input.a.yzx)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, ~abs(~4294967295u), ~firstTrailingBit(vec2<u32>(~u_input.a.x, ~4294967295u)), vec3<u32>(~1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 52534u, u_input.a.x), u_input.a << (vec4<u32>(var_0.e.x, 1u, var_0.e.x, var_6.x) % vec4<u32>(32u))), _wgslsmith_mod_u32(func_5(Struct_1(vec3<i32>(var_0.a.x, 0i, var_2), vec3<u32>(17469u, var_6.x, 4294967295u), vec2<f32>(-1557f, -460f), var_0.d, var_6), var_0.c.x, -494f, var_0.c.x).b.x, _wgslsmith_sub_u32(var_6.x, 0u))), _wgslsmith_add_u32(12895u, u_input.a.x) | abs(_wgslsmith_mod_u32(var_0.b.x, 0u))));
}

