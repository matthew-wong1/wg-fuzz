struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0u, vec2<bool>(true, false)), Struct_1(4294967295u, vec2<bool>(true, false)), Struct_1(4294967295u, vec2<bool>(false, false)), Struct_1(40872u, vec2<bool>(false, false)), Struct_1(62293u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(true, false)), Struct_1(42168u, vec2<bool>(true, true)), Struct_1(39120u, vec2<bool>(false, true)), Struct_1(1u, vec2<bool>(true, true)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(16528u, vec2<bool>(true, true)), Struct_1(0u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(true, true)));

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u, vec2<bool>(true, false)), Struct_1(28983u, vec2<bool>(true, true)), Struct_1(31236u, vec2<bool>(false, true)), Struct_1(52276u, vec2<bool>(false, false)), Struct_1(4008u, vec2<bool>(false, false)), Struct_1(34750u, vec2<bool>(true, true)), Struct_1(1u, vec2<bool>(false, false)), Struct_1(0u, vec2<bool>(false, true)), Struct_1(44948u, vec2<bool>(true, true)), Struct_1(48824u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(true, false)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(0u, vec2<bool>(false, true)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(38931u, vec2<bool>(true, false)), Struct_1(0u, vec2<bool>(true, true)), Struct_1(0u, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(false, false)), Struct_1(4294967295u, vec2<bool>(false, false)), Struct_1(19148u, vec2<bool>(false, false)), Struct_1(4294967295u, vec2<bool>(true, true)), Struct_1(50615u, vec2<bool>(false, false)), Struct_1(42531u, vec2<bool>(true, false)), Struct_1(4294967295u, vec2<bool>(false, true)), Struct_1(0u, vec2<bool>(true, true)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1247f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-153f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1196f - var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x)))), vec2<bool>(true, _wgslsmith_f_op_f32(-1047f - _wgslsmith_f_op_f32(select(var_0.x, -203f, false))) < var_0.x)));
    var var_1 = ~(-39459i);
    let var_2 = -23953i;
    global1 = _wgslsmith_add_i32(select(firstTrailingBit(-(~37519i)), var_2, any(vec4<bool>(false, false, all(vec3<bool>(false, false, true)), true))), arg_0);
    return vec2<u32>(1774u, ~u_input.b);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = 1u << (arg_1.a % 32u);
    global0 = array<Struct_1, 15>();
    global1 = -26i;
    var var_1 = ~(~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, 11579i), min(-14388i, 1i), ~2147483647i), _wgslsmith_mult_i32(i32(-1i) * -23109i, _wgslsmith_sub_i32(71723i, 5313i))));
    var_1 = vec2<i32>(1i, var_1.x) << (_wgslsmith_mult_vec2_u32(u_input.a.yy ^ func_3(var_1.x), u_input.a.zz) % vec2<u32>(32u));
    return !arg_1.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 15u)];
    var var_1 = Struct_1(96902u, !vec2<bool>(select(true, any(vec4<bool>(false, true, arg_0.b.x, var_0.b.x)), !var_0.b.x), false));
    global0 = array<Struct_1, 15>();
    var_1 = global2[_wgslsmith_index_u32(~var_1.a, 25u)];
    global0 = array<Struct_1, 15>();
    return Struct_1(~(~50041u), select(select(vec2<bool>(!arg_1.b.x, arg_1.b.x), !func_2(-1174f, Struct_1(var_1.a, arg_0.b)), !var_0.b.x), !vec2<bool>(false, func_2(155f, Struct_1(arg_1.a, vec2<bool>(false, arg_0.b.x))).x), select(true, !(!arg_0.b.x), all(vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let var_0 = func_1(global2[_wgslsmith_index_u32(u_input.c ^ u_input.b, 25u)], Struct_1(4294967295u, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(363f + 1000f), _wgslsmith_f_op_f32(abs(1394f)))))));
    var var_2 = ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~0i, 0i), min(vec2<i32>(45500i, -5756i), vec2<i32>(-13350i, 1i))), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(37425i, -3234i)));
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.a, vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(14062u, 94420u, 1u, var_0.a), ~vec4<u32>(1u, 4294967295u, 11147u, 4294967295u)), u_input.a.x), vec4<u32>(_wgslsmith_mult_u32(var_0.a, u_input.c), func_3(var_2.x).x, 24544u, var_0.a), var_2.x);
}

