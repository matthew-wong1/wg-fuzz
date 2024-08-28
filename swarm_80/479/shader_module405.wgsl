struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<u32>;

var<private> global2: vec2<f32> = vec2<f32>(-1861f, -1166f);

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(-47428i, 0u, vec3<u32>(49565u, 79086u, 0u), vec3<f32>(895f, -805f, -742f)), Struct_1(29739i, 0u, vec3<u32>(60094u, 690u, 1u), vec3<f32>(-165f, 867f, -1559f)), Struct_1(1i, 18636u, vec3<u32>(1u, 6663u, 4294967295u), vec3<f32>(1123f, -145f, 100f)), Struct_1(62718i, 46654u, vec3<u32>(58830u, 4294967295u, 0u), vec3<f32>(-881f, 432f, 1005f)), Struct_1(0i, 15671u, vec3<u32>(4294967295u, 34239u, 1u), vec3<f32>(-859f, -1588f, 2162f)), Struct_1(-10473i, 1u, vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-383f, -220f, 252f)), Struct_1(2147483647i, 1u, vec3<u32>(42397u, 1u, 0u), vec3<f32>(-1858f, -1741f, -430f)), Struct_1(1i, 3065u, vec3<u32>(0u, 4294967295u, 1u), vec3<f32>(-721f, 789f, 1349f)), Struct_1(i32(-2147483648), 0u, vec3<u32>(4294967295u, 40489u, 36919u), vec3<f32>(-1916f, 908f, 395f)), Struct_1(33881i, 87076u, vec3<u32>(29810u, 24538u, 25819u), vec3<f32>(1277f, 772f, -1279f)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> vec2<u32> {
    var var_0 = global0.d;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f * global2.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 204f) * _wgslsmith_f_op_f32(f32(-1f) * -432f))) + _wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -996f), 867f);
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.c.d.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1408f, 985f)), !global0.d.d.wx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))))))));
    let var_2 = _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(arg_0, _wgslsmith_sub_u32(reverseBits(var_0.c.x), ~(~global0.d.c.x)), min(~37005u, ~u_input.b.x)));
    return vec2<u32>(var_2.x, 1u);
}

fn func_2() -> vec3<f32> {
    global0 = Struct_4(global0.a, all(!select(vec2<bool>(global0.d.d.x, true), vec2<bool>(global0.d.d.x, global0.b), !global0.d.d.zw)), global0.c, Struct_3(-global0.c.a << (~_wgslsmith_mult_u32(global0.d.b.x, global0.c.c.x) % 32u), _wgslsmith_div_vec2_u32(global0.d.b | u_input.b.yy, global0.c.c.yz | func_3(u_input.b.x, u_input.a.wwx)), vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(38945u, 1u) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)), global1.zy)), vec4<bool>(!(global0.d.d.x || global0.d.d.x), !global0.d.d.x, all(!global0.d.d), true)));
    global1 = vec3<u32>(firstLeadingBit(1u), u_input.b.x, 23144u);
    let var_0 = global0.d.d;
    let var_1 = Struct_1(-25281i, ~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b.x, 44840u, global1.x), vec4<u32>(4294967295u, u_input.b.x, 40328u, global1.x)), vec4<u32>(u_input.b.x, u_input.b.x, 22438u, 20775u) << (countOneBits(vec4<u32>(22985u, u_input.b.x, global0.d.b.x, 63309u)) % vec4<u32>(32u))), u_input.b, _wgslsmith_f_op_vec3_f32(-global0.c.d));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.d.x, 468f));
    return _wgslsmith_f_op_vec3_f32(var_1.d * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(global2.x * 973f), -720f))));
}

fn func_1() -> Struct_1 {
    global1 = ~firstTrailingBit((min(vec3<u32>(u_input.b.x, 18734u, 1u), vec3<u32>(global0.d.c.x, 0u, global1.x)) << (vec3<u32>(4564u, global1.x, global1.x) % vec3<u32>(32u))) << (firstTrailingBit(u_input.b) % vec3<u32>(32u)));
    global1 = global0.c.c;
    global1 = vec3<u32>(u_input.b.x >> (global0.c.b % 32u), ~24564u, 44545u);
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c.d, global0.c.d, vec3<bool>(global0.d.d.x, true, true)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1392f, -845f)))) + _wgslsmith_f_op_vec3_f32(func_2()));
    return Struct_1(min(~firstTrailingBit(~global0.c.a), -firstLeadingBit(2147483647i)), 63731u, ~(~min(select(vec3<u32>(0u, 4294967295u, u_input.b.x), u_input.b, global0.d.d.xzy), global0.c.c)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), global2.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global0.c.d.x * _wgslsmith_f_op_f32(-global0.c.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.d.x) * _wgslsmith_f_op_f32(-global0.c.d.x)), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(global2.x - 184f)))), vec3<u32>(select(4294967295u, 0u, global0.b), global0.d.c.x, _wgslsmith_mult_u32(25430u, 46680u)));
    var var_1 = global0.d;
    let var_2 = u_input.a;
    var_1 = global0.d;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1443f, 547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -983f))))));
    var_0 = Struct_2(func_1(), global0.c.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1552f, 1309f)) - var_0.c), var_0.c) + var_0.c), vec3<u32>(func_1().c.x, firstTrailingBit(27789u) >> (25729u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(118217u, 7143u, 4294967295u, var_0.d.x), vec4<u32>(global0.d.c.x, 4294967295u, u_input.b.x, 1u)), vec4<u32>(7871u, 33161u, 25172u, var_0.d.x))) << (firstLeadingBit(min(select(var_0.d, u_input.b, var_1.d.x), vec3<u32>(global1.x, global1.x, 0u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(~(~42506u)), u_input.b.x, u_input.b.x, 0u), var_2, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(-358f - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1443f, -1207f, true)) + _wgslsmith_f_op_f32(abs(var_3.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-1554f - -1575f), func_1().d.x, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_2()).x * -263f))), _wgslsmith_f_op_f32(-899f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1089f), global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a.yx))))));
}

