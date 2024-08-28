struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, vec3<f32>(-1427f, 1499f, 310f), 1766f, 63993u, 1u), Struct_1(true, vec3<f32>(1010f, -1172f, -166f), -203f, 0u, 36075u), Struct_1(false, vec3<f32>(900f, 362f, 675f), 2188f, 2713u, 15004u), Struct_1(true, vec3<f32>(333f, 434f, 196f), 945f, 4294967295u, 25990u), Struct_1(false, vec3<f32>(-625f, 615f, 1378f), 201f, 14975u, 49750u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    global2 = array<Struct_1, 26>();
    global1 = array<vec3<i32>, 26>();
    let var_0 = select(all(vec2<bool>(arg_2.c.a, any(!vec3<bool>(arg_2.c.a, arg_2.c.a, arg_2.c.a)))), arg_2.c.a && any(vec4<bool>(true, !arg_2.c.a, arg_2.c.a | arg_2.c.a, any(vec3<bool>(arg_2.c.a, true, arg_2.c.a)))), !arg_2.c.a);
    let var_1 = ~(~32219u);
    let var_2 = -4681i;
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, 50679u, 3538u)), ~arg_1.zzz), abs(~arg_1.xzz)));
}

fn func_2() -> Struct_2 {
    var var_0 = all(!vec3<bool>(!all(vec2<bool>(false, false)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), false));
    global2 = array<Struct_1, 26>();
    global0 = firstTrailingBit(~_wgslsmith_add_u32(firstLeadingBit(u_input.d), u_input.d) & func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f + -1752f)), ~select(vec4<u32>(u_input.d, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(55638u, 185u, 1u, u_input.a.x), vec4<bool>(true, true, false, false)), Struct_2(u_input.a.x, vec4<f32>(802f, -454f, -496f, -416f), global2[_wgslsmith_index_u32(49413u, 26u)], _wgslsmith_add_i32(-2147483647i, u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -684f)));
    var_0 = true;
    var_0 = u_input.a.x >= ~(~abs(u_input.d | 4294967295u));
    return Struct_2(~34548u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2192f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(648f, -724f)), 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 846f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-289f, -1151f), _wgslsmith_div_f32(1000f, -1115f), -423f, _wgslsmith_f_op_f32(sign(2321f))), vec4<f32>(-790f, -271f, -754f, _wgslsmith_f_op_f32(max(-1000f, -1181f))))))), global2[_wgslsmith_index_u32(4294967295u, 26u)], -abs(reverseBits(-1i)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = 52632u > u_input.d;
    var var_1 = func_2();
    var var_2 = func_2();
    var_1 = Struct_2(firstTrailingBit(~_wgslsmith_sub_u32(u_input.a.x, 55332u)) >> (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.b.x, 483f), 433f), 547f, var_1.c.c, 273f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)) - vec4<f32>(_wgslsmith_f_op_f32(-794f + var_2.b.x), _wgslsmith_f_op_f32(-var_2.c.b.x), var_2.b.x, -1677f))), func_2().c, firstLeadingBit(-2147483647i));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.c.c, var_2.b.x)))))) * var_2.b.yy);
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<f32>, arg_3: i32) -> vec4<f32> {
    global2 = array<Struct_1, 26>();
    let var_0 = Struct_1(!(9803i == -arg_0.d), vec3<f32>(_wgslsmith_f_op_f32(floor(-669f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-200f, func_1(vec3<i32>(arg_0.d, 0i, arg_0.d)).c.c)), func_2().b.x), arg_0.b.x), -126f, _wgslsmith_clamp_u32(arg_0.c.d, arg_0.a & 16317u, arg_0.c.e << (~arg_0.c.e % 32u)), ~u_input.d);
    global2 = array<Struct_1, 26>();
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(floor(arg_2)), _wgslsmith_f_op_f32(step(1f, -629f)), _wgslsmith_sub_u32(~17467u, _wgslsmith_sub_u32(44768u, _wgslsmith_clamp_u32(arg_0.c.d, ~u_input.d, var_0.d))), 48045u);
    let var_2 = arg_0.d;
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1225f, 702f, -758f, var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(u_input.b.yyw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) - -1124f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-719f, 1000f, -1519f)))), countOneBits(0i)))), func_2().c, i32(-1i) * -2147483647i);
    global2 = array<Struct_1, 26>();
    let var_1 = func_2().c;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, _wgslsmith_f_op_f32(max(var_0.c.b.x, var_1.b.x)), var_0.b.x, _wgslsmith_f_op_vec4_f32(func_4(Struct_2(4294967295u, vec4<f32>(var_1.b.x, var_1.b.x, 1144f, -190f), Struct_1(true, vec3<f32>(-547f, var_0.b.x, var_0.b.x), -881f, var_1.d, 4294967295u), var_0.d), -679f, vec3<f32>(var_0.b.x, var_0.c.b.x, var_0.c.b.x), 2147483647i)).x)), _wgslsmith_f_op_vec4_f32(-var_0.b)));
    let var_3 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(44722u, countOneBits(var_1.d), ~26143u) & ~(vec3<u32>(111500u, 1u, 42083u) ^ vec3<u32>(var_3.e, u_input.d, 70979u))), 1i);
}

