struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 12272i;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(4294967295u, vec4<bool>(true, true, false, true), vec4<u32>(0u, 0u, 4294967295u, 0u)), Struct_1(4294967295u, vec4<bool>(true, true, true, false), vec4<u32>(0u, 53758u, 0u, 0u)), Struct_1(4294967295u, vec4<bool>(true, false, true, false), vec4<u32>(0u, 27668u, 0u, 0u)), Struct_1(0u, vec4<bool>(false, true, false, false), vec4<u32>(41489u, 0u, 1u, 0u)), Struct_1(0u, vec4<bool>(true, false, false, false), vec4<u32>(28133u, 2654u, 1u, 0u)), Struct_1(1u, vec4<bool>(false, false, true, true), vec4<u32>(33965u, 1u, 0u, 7241u)), Struct_1(21209u, vec4<bool>(true, true, false, false), vec4<u32>(21637u, 42556u, 95866u, 68748u)), Struct_1(31833u, vec4<bool>(false, true, false, false), vec4<u32>(1u, 7449u, 52669u, 31474u)), Struct_1(75558u, vec4<bool>(false, true, true, false), vec4<u32>(1u, 1u, 0u, 0u)), Struct_1(4294967295u, vec4<bool>(true, true, false, false), vec4<u32>(0u, 0u, 0u, 46111u)), Struct_1(0u, vec4<bool>(false, false, true, false), vec4<u32>(0u, 89667u, 24524u, 1u)), Struct_1(0u, vec4<bool>(false, true, true, false), vec4<u32>(19602u, 1u, 85245u, 1u)), Struct_1(27219u, vec4<bool>(false, false, false, false), vec4<u32>(10060u, 37091u, 68153u, 39347u)));

var<private> global2: i32;

var<private> global3: array<Struct_1, 31>;

var<private> global4: f32 = 249f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> u32 {
    global3 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_1)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1, 761f), _wgslsmith_f_op_f32(-arg_1), 717f) - vec3<f32>(-192f, arg_2, -322f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(arg_1 - -744f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-194f, arg_1, -318f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, 636f, 1742f))), vec3<bool>(false, true, false))))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(var_0.zy)), _wgslsmith_dot_vec3_u32(arg_0.yzz, max(u_input.d, ~abs(arg_0.zwx))));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -254f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))))))));
    let var_2 = arg_1;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_0.x), 4294967295u), countOneBits(_wgslsmith_mod_vec2_u32(abs(u_input.d.zy), u_input.d.yx)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 31u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -651f)))) + _wgslsmith_div_f32(1000f, arg_1.x));
    let var_2 = var_0.c;
    let var_3 = func_3(_wgslsmith_clamp_vec4_u32(~vec4<u32>(94887u & var_2.x, arg_3 | 4294967295u, 4294967295u, arg_3), vec4<u32>(arg_3, 4964u, 1u, u_input.b) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, 11947u, arg_3, u_input.b), var_0.c), var_0.c), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1350f))))));
    return Struct_3(_wgslsmith_f_op_f32(-arg_0.x), var_0.c.yyw | vec3<u32>(12460u, abs(firstLeadingBit(var_3)), 27519u), vec2<bool>(~countOneBits(u_input.d.x) < abs(_wgslsmith_sub_u32(var_3, var_3)), var_0.b.x), global3[_wgslsmith_index_u32(~11081u, 31u)], Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 70834u), vec2<u32>(u_input.b, 45096u)), vec4<bool>(!select(false, var_0.b.x, var_0.b.x), false, all(select(var_0.b.zy, vec2<bool>(true, true), var_0.b.x)), var_0.b.x), vec4<u32>(arg_3, var_0.a & u_input.d.x, 4294967295u >> (max(var_0.a, 14282u) % 32u), u_input.b)));
}

fn func_1() -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-971f, 1230f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f * -1080f) - -1097f)))));
    let var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 31u)];
    global2 = u_input.a.x;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = func_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-487f)), -958f, var_0.x, _wgslsmith_f_op_f32(-1767f + _wgslsmith_f_op_f32(var_0.x - var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -582f), 1302f, var_0.x, _wgslsmith_f_op_f32(floor(-1526f)))), vec3<f32>(530f, 1926f, var_0.x), _wgslsmith_f_op_f32(step(var_0.x, -224f)), var_1.a << (60598u % 32u));
    return Struct_5(all(vec3<bool>(all(var_1.b) != true, !var_2.d.b.x, var_1.b.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_2.a)), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 31>();
    var var_0 = func_1();
    global0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c)), 863f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-708f - _wgslsmith_f_op_f32(trunc(1332f))) * -574f)))));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, 1u, reverseBits(19630u)), abs(max(reverseBits(abs(vec3<u32>(u_input.b, 0u, u_input.c))), reverseBits(vec3<u32>(u_input.b, 49625u, 0u) & vec3<u32>(u_input.b, 1u, 7251u)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(3459f - var_0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(348f, -890f), vec2<f32>(-1008f, 681f), var_0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(651f, 758f)))))), 54038u);
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, -382f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, -574f, var_3.a.x, var_0.c), vec4<f32>(-251f, 504f, var_3.a.x, var_3.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, 405f, var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a.x))), min(4294967295u, u_input.d.x ^ 1u)).a, 1917f), 603f));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_sub_vec3_u32(vec3<u32>(64073u, var_2.x, var_3.b), vec3<u32>(u_input.d.x, var_3.b, 7064u)) | vec3<u32>(reverseBits(9552u), var_2.x, _wgslsmith_mod_u32(4294967295u, var_3.b)), _wgslsmith_div_vec3_u32(u_input.d, vec3<u32>(var_2.x >> (10765u % 32u), ~0u, ~u_input.d.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.a.x, 1000f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x), _wgslsmith_f_op_f32(-var_3.a.x), true))), var_3.a.x));
}

