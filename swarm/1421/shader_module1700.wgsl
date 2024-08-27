struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

var<private> global1: u32 = 0u;

var<private> global2: f32 = -1703f;

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec2<f32>(398f, 1211f), vec4<bool>(false, false, true, true), vec3<f32>(1469f, 427f, 371f), Struct_3(4307i, 5562u, vec4<i32>(-1i, -42731i, -98537i, 1i))), Struct_4(vec2<f32>(-336f, -339f), vec4<bool>(false, false, true, false), vec3<f32>(-175f, -1907f, -1000f), Struct_3(1i, 0u, vec4<i32>(-1i, -1i, -40958i, -1i))), Struct_4(vec2<f32>(633f, 1426f), vec4<bool>(false, false, true, false), vec3<f32>(426f, -227f, 798f), Struct_3(50551i, 0u, vec4<i32>(-13435i, 21287i, 5330i, 0i))), Struct_4(vec2<f32>(196f, 948f), vec4<bool>(false, true, true, false), vec3<f32>(199f, 964f, 543f), Struct_3(-14962i, 36475u, vec4<i32>(14994i, 1i, 1i, -1i))), Struct_4(vec2<f32>(1000f, -814f), vec4<bool>(false, true, false, true), vec3<f32>(-2051f, -1466f, -1023f), Struct_3(-21047i, 0u, vec4<i32>(-27550i, -25464i, 2147483647i, 27337i))), Struct_4(vec2<f32>(-820f, 352f), vec4<bool>(false, true, false, true), vec3<f32>(679f, -154f, 519f), Struct_3(i32(-2147483648), 4294967295u, vec4<i32>(-22845i, -1i, -1i, 1i))), Struct_4(vec2<f32>(277f, -1000f), vec4<bool>(false, false, false, true), vec3<f32>(616f, -329f, 308f), Struct_3(i32(-2147483648), 4294967295u, vec4<i32>(i32(-2147483648), 9287i, -8517i, 13906i))), Struct_4(vec2<f32>(-2321f, -242f), vec4<bool>(false, false, true, true), vec3<f32>(694f, 1291f, 168f), Struct_3(24352i, 0u, vec4<i32>(2147483647i, 1i, i32(-2147483648), -37790i))), Struct_4(vec2<f32>(2423f, 394f), vec4<bool>(false, true, true, true), vec3<f32>(3260f, -1492f, -1753f), Struct_3(12993i, 64457u, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 2147483647i))), Struct_4(vec2<f32>(-834f, 149f), vec4<bool>(true, false, false, false), vec3<f32>(-106f, -1791f, -570f), Struct_3(-11743i, 1u, vec4<i32>(3757i, -76498i, 0i, 5226i))), Struct_4(vec2<f32>(417f, 315f), vec4<bool>(true, false, false, true), vec3<f32>(180f, -1303f, 905f), Struct_3(-1i, 1u, vec4<i32>(64757i, -1i, -5087i, 7818i))), Struct_4(vec2<f32>(1471f, -1825f), vec4<bool>(false, false, false, true), vec3<f32>(1000f, 513f, 830f), Struct_3(2147483647i, 49431u, vec4<i32>(1i, 6114i, -1i, 1i))), Struct_4(vec2<f32>(761f, -548f), vec4<bool>(true, true, true, false), vec3<f32>(566f, 1005f, -1443f), Struct_3(1i, 15015u, vec4<i32>(0i, -1i, -1i, 68079i))), Struct_4(vec2<f32>(2191f, 328f), vec4<bool>(true, false, false, true), vec3<f32>(1558f, -628f, 452f), Struct_3(1i, 42594u, vec4<i32>(1i, 12796i, 2147483647i, 1i))), Struct_4(vec2<f32>(-1000f, 183f), vec4<bool>(true, false, true, false), vec3<f32>(-680f, 465f, 199f), Struct_3(-14801i, 1u, vec4<i32>(2147483647i, -76132i, 1i, 284i))), Struct_4(vec2<f32>(1843f, 269f), vec4<bool>(false, true, true, false), vec3<f32>(-524f, 2743f, -1714f), Struct_3(-1i, 48603u, vec4<i32>(-13005i, 38841i, 39461i, 7855i))), Struct_4(vec2<f32>(-1000f, 172f), vec4<bool>(false, false, false, false), vec3<f32>(-1069f, 182f, -1236f), Struct_3(-15597i, 4294967295u, vec4<i32>(i32(-2147483648), 46293i, -16220i, 0i))), Struct_4(vec2<f32>(-377f, -1214f), vec4<bool>(false, true, true, true), vec3<f32>(-725f, -991f, 1832f), Struct_3(i32(-2147483648), 162899u, vec4<i32>(1i, 13834i, 40147i, 27056i))), Struct_4(vec2<f32>(1635f, 113f), vec4<bool>(false, true, true, false), vec3<f32>(680f, -753f, 254f), Struct_3(2147483647i, 13684u, vec4<i32>(-29874i, 1i, -1i, 2147483647i))), Struct_4(vec2<f32>(-425f, 962f), vec4<bool>(false, true, true, false), vec3<f32>(-1117f, 1000f, -548f), Struct_3(0i, 0u, vec4<i32>(-1i, -10527i, 1i, -1i))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: Struct_5) -> i32 {
    return arg_3.a.x ^ arg_3.b.d.a;
}

fn func_3(arg_0: Struct_3) -> bool {
    global3 = array<Struct_4, 20>();
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(852f)), -120f);
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.d.c.x, 1i, _wgslsmith_div_i32(func_2(arg_0.x, true, Struct_3(arg_1.d.a, 5907u, arg_1.d.c), Struct_5(vec3<i32>(-25122i, arg_1.d.a, arg_1.d.a), Struct_4(arg_1.a, arg_1.b, vec3<f32>(-245f, -2193f, 950f), arg_1.d), arg_1.a.x, arg_1.b.x, 700f)), -9894i), arg_1.d.c.x), arg_1.d.c);
    var var_2 = vec2<bool>(arg_1.b.x, arg_1.b.x);
    let var_3 = vec3<bool>(true, true, false);
    global3 = array<Struct_4, 20>();
    return func_3(Struct_3(arg_1.d.c.x, arg_1.d.b, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.d.c, vec4<i32>(arg_1.d.a, arg_1.d.a, arg_1.d.a, -2308i)), ~arg_1.d.c) << (~min(vec4<u32>(arg_1.d.b, 26014u, 29175u, 0u), vec4<u32>(arg_0.x, arg_1.d.b, 144422u, 61389u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.b;
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    let var_0 = vec3<bool>(select(true, func_1(~(vec2<u32>(9569u, 1u) << (u_input.c.zy % vec2<u32>(32u))), global0[_wgslsmith_index_u32(20447u, 14u)]), true), false, (_wgslsmith_mult_u32(abs(56721u), u_input.c.x ^ u_input.a) & select(u_input.a, 4080u, all(vec2<bool>(false, true)))) <= (~(~u_input.c.x) & 1u));
    var var_1 = Struct_1(28212i, vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(27500u, u_input.a, 4294967295u), ~u_input.c)), ~u_input.c.x >> (~_wgslsmith_add_u32(3353u, 11373u) % 32u)), var_0.zz, 0u);
    var var_2 = Struct_3(min(var_1.a, -13090i), firstTrailingBit(min(~var_1.b.x, 1u)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-13722i, var_1.a), vec2<i32>(49641i, var_1.a)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.a, -1i), vec2<i32>(var_1.a, 0i))) & var_1.a, i32(-1i) * -1i, -1i, var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-415f, 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(119f, -1000f)) - vec2<f32>(-278f, -388f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(892f, 315f)), vec2<f32>(-372f, 292f), true))))), 2147483647i, 475f);
}

