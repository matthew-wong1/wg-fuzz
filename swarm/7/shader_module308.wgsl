struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec2<u32>(0u, 7145u), vec4<u32>(1u, 0u, 4294967295u, 28789u), vec4<bool>(true, true, false, true), vec3<bool>(true, false, false)), 2196f, vec2<i32>(-11478i, -52373i), false), Struct_2(Struct_1(vec2<u32>(36670u, 0u), vec4<u32>(0u, 23304u, 4294967295u, 101003u), vec4<bool>(true, false, true, true), vec3<bool>(false, true, true)), 272f, vec2<i32>(11477i, 25518i), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 37687u), vec4<u32>(6848u, 1u, 4294967295u, 0u), vec4<bool>(false, false, true, true), vec3<bool>(false, true, false)), -372f, vec2<i32>(-33888i, -1i), true), Struct_2(Struct_1(vec2<u32>(15541u, 1u), vec4<u32>(71261u, 42056u, 0u, 1u), vec4<bool>(false, false, true, false), vec3<bool>(false, false, true)), 1000f, vec2<i32>(-38467i, 1i), true), Struct_2(Struct_1(vec2<u32>(0u, 58498u), vec4<u32>(4294967295u, 46975u, 0u, 1u), vec4<bool>(true, true, true, false), vec3<bool>(true, true, false)), -175f, vec2<i32>(5350i, 2147483647i), true), Struct_2(Struct_1(vec2<u32>(66852u, 4294967295u), vec4<u32>(1u, 65328u, 0u, 1u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)), 1227f, vec2<i32>(1i, 0i), true), Struct_2(Struct_1(vec2<u32>(54562u, 36450u), vec4<u32>(6603u, 4294967295u, 36906u, 35823u), vec4<bool>(false, false, false, true), vec3<bool>(true, true, false)), 195f, vec2<i32>(14139i, 2147483647i), true), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u), vec4<bool>(false, false, true, true), vec3<bool>(true, false, true)), -434f, vec2<i32>(12711i, -22287i), true), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(1u, 38761u, 25293u, 47193u), vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), 179f, vec2<i32>(-49126i, 16612i), false), Struct_2(Struct_1(vec2<u32>(4294967295u, 39711u), vec4<u32>(1u, 4294967295u, 0u, 17266u), vec4<bool>(true, false, false, false), vec3<bool>(false, false, false)), -1485f, vec2<i32>(2147483647i, 10793i), true), Struct_2(Struct_1(vec2<u32>(61358u, 6560u), vec4<u32>(1u, 1u, 55827u, 3261u), vec4<bool>(false, true, true, true), vec3<bool>(false, true, false)), 1928f, vec2<i32>(1i, -2027i), false), Struct_2(Struct_1(vec2<u32>(43724u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<bool>(false, true, true, false), vec3<bool>(true, false, false)), -180f, vec2<i32>(-8722i, -28932i), false), Struct_2(Struct_1(vec2<u32>(0u, 55427u), vec4<u32>(13492u, 94205u, 57143u, 1u), vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)), 1806f, vec2<i32>(16129i, -1i), true), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec4<u32>(9923u, 4294967295u, 89865u, 0u), vec4<bool>(true, false, true, true), vec3<bool>(false, true, true)), 217f, vec2<i32>(i32(-2147483648), 2147483647i), true), Struct_2(Struct_1(vec2<u32>(74496u, 15496u), vec4<u32>(76080u, 0u, 0u, 4294967295u), vec4<bool>(true, false, true, false), vec3<bool>(false, true, false)), 508f, vec2<i32>(23068i, 0i), true), Struct_2(Struct_1(vec2<u32>(82153u, 23303u), vec4<u32>(4294967295u, 1598u, 15595u, 15815u), vec4<bool>(true, false, false, true), vec3<bool>(true, true, false)), -1308f, vec2<i32>(64514i, -30365i), false), Struct_2(Struct_1(vec2<u32>(0u, 78192u), vec4<u32>(0u, 36582u, 16485u, 32546u), vec4<bool>(true, false, true, false), vec3<bool>(false, false, false)), -185f, vec2<i32>(-1i, 7856i), false), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 1u, 71397u, 42773u), vec4<bool>(true, true, false, false), vec3<bool>(false, true, true)), -969f, vec2<i32>(2147483647i, 2147483647i), true));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(4294967295u, 85233u), vec4<u32>(1u, 0u, 62417u, 37486u), vec4<bool>(true, false, true, true), vec3<bool>(true, false, true)), Struct_1(vec2<u32>(0u, 4294967295u), vec4<u32>(71092u, 1870u, 4294967295u, 0u), vec4<bool>(true, false, true, true), vec3<bool>(false, false, true)), Struct_1(vec2<u32>(51607u, 25897u), vec4<u32>(54753u, 4294967295u, 4294967295u, 33374u), vec4<bool>(false, true, true, true), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(4294967295u, 25777u), vec4<u32>(29894u, 1u, 0u, 447u), vec4<bool>(false, false, false, true), vec3<bool>(false, false, false)), Struct_1(vec2<u32>(1u, 87941u), vec4<u32>(108996u, 4294967295u, 0u, 29349u), vec4<bool>(false, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec2<u32>(27347u, 29200u), vec4<u32>(1u, 0u, 26398u, 0u), vec4<bool>(true, true, false, true), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<u32>(33031u, 110544u, 4294967295u, 6997u), vec4<bool>(false, true, false, true), vec3<bool>(false, true, true)), Struct_1(vec2<u32>(0u, 83043u), vec4<u32>(17801u, 45671u, 1u, 32747u), vec4<bool>(true, false, false, true), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(42821u, 30555u), vec4<u32>(4294967295u, 11744u, 62989u, 4294967295u), vec4<bool>(false, false, false, true), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(1u, 0u, 7415u, 26729u), vec4<bool>(false, false, true, true), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(1u, 0u), vec4<u32>(4294967295u, 49709u, 4406u, 1u), vec4<bool>(true, true, false, false), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(32221u, 78878u), vec4<u32>(1u, 7975u, 46327u, 39853u), vec4<bool>(true, false, true, false), vec3<bool>(true, false, false)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.a.b.x, 12u)];
    global1 = array<Struct_1, 12>();
    global0 = array<Struct_2, 18>();
    var var_1 = arg_0;
    global0 = array<Struct_2, 18>();
    return arg_0.a.a.x;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = select(arg_0.a.d.xy, select(arg_1.d.zx, !(!arg_0.a.c.zy), vec2<bool>(true, any(vec4<bool>(arg_1.c.x, true, arg_1.c.x, false)) & false)), arg_1.c.x);
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_sub_u32(select(arg_1.b.x, reverseBits(4294967295u), true), max(u_input.b.x, 1u));
    let var_2 = Struct_1(u_input.b.wy, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.b.x, var_1, 32377u, 88751u), vec4<u32>(1u, u_input.b.x, 21676u, arg_1.a.x)), select(u_input.b.x, 0u, true)), u_input.a), abs(arg_1.a.x), abs(arg_1.a.x), ~((90284u | arg_0.a.b.x) | (arg_1.a.x << (0u % 32u)))), select(select(vec4<bool>(arg_1.c.x, any(arg_0.a.c.zx), arg_0.b > -595f, !arg_1.d.x), select(arg_0.a.c, vec4<bool>(arg_0.d, arg_0.a.c.x, var_0.x, arg_1.c.x), select(vec4<bool>(arg_1.c.x, false, arg_1.c.x, false), vec4<bool>(arg_0.d, arg_0.a.c.x, arg_1.d.x, true), arg_0.a.d.x)), var_0.x), select(select(vec4<bool>(true, true, true, true), !arg_0.a.c, true), select(arg_1.c, arg_1.c, vec4<bool>(var_0.x, false, arg_0.d, arg_1.c.x)), !(arg_0.d && true)), vec4<bool>(all(select(vec4<bool>(true, false, arg_1.d.x, arg_0.d), arg_0.a.c, arg_1.c)), ~arg_1.a.x > arg_0.a.b.x, var_0.x & arg_0.d, true)), vec3<bool>(arg_0.d, var_0.x == true, arg_1.c.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1961f, arg_0.b, 764f, arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -246f, arg_0.b, arg_0.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-309f, arg_0.b, arg_0.b, arg_0.b) - vec4<f32>(arg_0.b, -543f, 1430f, 1000f)))))))));
    return var_3.x == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b)))), _wgslsmith_f_op_f32(abs(672f))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.a & (u_input.a & u_input.b.x);
    let var_1 = vec2<u32>(~min(~u_input.a, 112437u) | u_input.a, u_input.b.x);
    return Struct_1(firstTrailingBit(_wgslsmith_div_vec2_u32(select(vec2<u32>(var_1.x, 38565u), vec2<u32>(1u, var_1.x), vec2<bool>(true, false)), abs(u_input.b.yw)) ^ ~_wgslsmith_div_vec2_u32(var_1, vec2<u32>(u_input.b.x, var_1.x))), ~(~_wgslsmith_add_vec4_u32(u_input.b & u_input.b, reverseBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec4<bool>(true, true, false, true)), (14725i | _wgslsmith_dot_vec4_i32(vec4<i32>(-33157i, 2147483647i, -28605i, 67266i), vec4<i32>(5394i, -1i, -9923i, 2147483647i))) != 1i, !any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), vec3<bool>(!any(vec2<bool>(false, true)), func_3(global0[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]) || (~var_1.x < 1u), !all(vec4<bool>(false, true, false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b))))))), arg_0.b, 509f, _wgslsmith_f_op_f32(max(-1566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * -361f))))));
    let var_1 = arg_0.a.b;
    let var_2 = -(vec2<i32>(min(~arg_3, -arg_1), max(arg_3, ~arg_3)) << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.b.wx, min(vec2<u32>(arg_0.a.b.x, u_input.b.x), vec2<u32>(u_input.b.x, arg_2.b.x))), vec2<u32>(~0u, var_1.x)) % vec2<u32>(32u)));
    global1 = array<Struct_1, 12>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    var var_0 = global0[_wgslsmith_index_u32(16097u, 18u)];
    let var_1 = vec4<bool>(false | var_0.d, !var_0.d, var_0.a.d.x, true);
    var var_2 = var_0.b;
    var_0 = global0[_wgslsmith_index_u32(1u, 18u)];
    let var_3 = func_4(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(var_0.a.a.x, u_input.a << (0u % 32u)) | func_1(Struct_2(Struct_1(u_input.b.zw, var_0.a.b, vec4<bool>(false, true, false, var_0.a.d.x), vec3<bool>(var_1.x, false, var_1.x)), var_0.b, var_0.c, true))), 18u)], reverseBits(0i), func_2(), ~_wgslsmith_dot_vec2_i32(var_0.c, firstTrailingBit(var_0.c) & (var_0.c << (vec2<u32>(23319u, var_0.a.a.x) % vec2<u32>(32u)))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1274f);
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, var_0.b, -292f, var_0.b) + vec4<f32>(-2147f, -271f, var_0.b, -1271f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, var_0.b, -643f, 617f))))))), countOneBits(firstLeadingBit(vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b)), -911f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1345f * var_0.b)))));
}

