struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_5 {
    global0 = array<Struct_3, 9>();
    let var_0 = Struct_3(vec4<u32>(arg_2.b, _wgslsmith_div_u32(min(_wgslsmith_dot_vec2_u32(u_input.e, arg_0.a.wx), arg_0.a.x), ~30535u), 1u, u_input.d.x));
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(-arg_2.a), ~(~(~53159u)), !(!arg_2.c), -701f), Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(232f * arg_2.d), _wgslsmith_f_op_f32(-1494f - arg_2.d), _wgslsmith_f_op_f32(-arg_2.d)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, arg_2.d, arg_2.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1385f, arg_2.a, arg_2.a) * vec3<f32>(arg_2.a, arg_2.a, -1343f)))), _wgslsmith_clamp_u32(firstTrailingBit(78202u), 4294967295u, 26948u)), !vec3<bool>(any(!arg_2.c), arg_2.c.x, false));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: u32) -> bool {
    let var_0 = arg_1.a.c.x;
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1894f)), _wgslsmith_f_op_f32(-arg_1.b.b.x))) - arg_1.a.d), arg_1.b.a.x), u_input.d.x, vec3<bool>(true, false || (_wgslsmith_f_op_f32(select(276f, arg_1.a.a, arg_1.a.c.x)) != _wgslsmith_f_op_f32(173f * arg_1.b.b.x)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 12752i, -7788i, -76029i), u_input.b) <= _wgslsmith_clamp_i32(u_input.c, 2147483647i, u_input.a.x), _wgslsmith_div_i32(u_input.c, 12839i) >= select(u_input.b.x, -22288i, var_0), !any(arg_1.a.c.yy))), _wgslsmith_f_op_f32(-1541f * -902f));
    var_1 = Struct_1(-757f, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(85710u, 1u, 95371u, 0u), vec4<u32>(0u, arg_0.x, 363u, var_1.b))), ~(~vec4<u32>(3544u, 0u, arg_0.x, 56204u)), vec4<u32>(64645u, abs(u_input.d.x), ~var_1.b, max(arg_2, 1u))), vec4<u32>(arg_1.a.b, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x, arg_2), 1u), 1u, var_1.b)), arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b.b.x)))))));
    let var_2 = 13560u;
    let var_3 = var_1.c;
    return select(var_3.x, all(var_1.c.zy), var_1.c.x);
}

fn func_1(arg_0: vec3<u32>) -> vec4<bool> {
    global0 = array<Struct_3, 9>();
    let var_0 = !(!vec4<bool>(true, true, func_3(vec3<u32>(97701u, u_input.e.x, 38175u) & u_input.d, func_2(Struct_3(vec4<u32>(44758u, 4294967295u, u_input.e.x, u_input.d.x)), -20722i, Struct_1(-1781f, 4294967295u, vec3<bool>(false, true, true), -1000f)), 47154u), true));
    global0 = array<Struct_3, 9>();
    var var_1 = -2147483647i;
    let var_2 = -vec2<i32>(i32(-1i) * -countOneBits(u_input.a.x), abs(0i));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yzw;
    let var_1 = !vec2<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !(!any(vec4<bool>(true, false, true, false))));
    let var_2 = func_1(u_input.d);
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(-17232i, u_input.c, 742i, var_0.x);
    global0 = array<Struct_3, 9>();
    var_0 = _wgslsmith_mult_vec3_i32(var_3.ywz, vec3<i32>(~(-14803i), _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.b & u_input.b, var_3)), countOneBits(-var_3.x)));
    var var_4 = Struct_3(vec4<u32>(countOneBits(66411u), 1u, u_input.d.x, ~_wgslsmith_add_u32(27280u, func_2(global0[_wgslsmith_index_u32(21414u, 9u)], -14198i, Struct_1(782f, 1u, vec3<bool>(var_1.x, true, false), 676f)).b.c)));
    var var_5 = !(!var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(1f, var_3.x);
}

