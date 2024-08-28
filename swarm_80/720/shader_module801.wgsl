struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(986f, -1090f, -407f), vec3<f32>(-1139f, -116f, -129f), vec3<f32>(1724f, 553f, -1000f), vec3<f32>(-354f, 1336f, -1345f), vec3<f32>(-381f, 1086f, 1447f), vec3<f32>(1401f, -248f, -303f), vec3<f32>(-810f, -164f, -1890f), vec3<f32>(-521f, -767f, 760f), vec3<f32>(-885f, -1260f, -1135f), vec3<f32>(-218f, -1539f, -146f), vec3<f32>(416f, 783f, 348f), vec3<f32>(-2103f, 581f, -114f), vec3<f32>(1468f, -1473f, -887f), vec3<f32>(-753f, 926f, -1225f));

var<private> global1: i32 = 2147483647i;

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_3, 9>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<vec3<f32>, 14>();
    var var_0 = select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) < -1367f), vec3<bool>(true, true, true));
    var var_1 = -16747i & abs(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(26789i, -57188i, u_input.b.x), ~u_input.b.x));
    var var_2 = u_input.a.wx | ~(u_input.a.zx << (vec2<u32>(~arg_0.b.x, 64271u) % vec2<u32>(32u)));
    let var_3 = true;
    return vec2<u32>(23147u >> (0u % 32u), u_input.a.x);
}

fn func_2() -> bool {
    global3 = array<Struct_3, 9>();
    let var_0 = Struct_4(Struct_2(1i, 1u), min(u_input.a.x, _wgslsmith_div_u32(34425u << (~4294967295u % 32u), _wgslsmith_add_u32(18276u, u_input.a.x >> (u_input.a.x % 32u)))), Struct_3(~_wgslsmith_add_vec2_u32(u_input.a.yw, u_input.c >> (u_input.c % vec2<u32>(32u)))), 16814u, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(521f - -391f), _wgslsmith_f_op_f32(abs(228f)))), vec2<u32>(4294967295u, ~0u ^ u_input.c.x), ~(~(~vec4<u32>(0u, 7471u, 1u, 25970u))), vec3<u32>(30575u, ~(~1u), ~u_input.e.x)));
    var var_1 = Struct_1(var_0.e.a, func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(max(84836u, u_input.c.x), 14u)]), vec2<u32>(1u, select(67604u, var_0.b, true)), var_0.e.c, vec3<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(var_0.e.c, var_0.e.c), ~var_0.b))), ~(~(~vec4<u32>(49098u, 1u, 4294967295u, u_input.d.x))) ^ _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, u_input.e.x, var_0.b, 0u)) | reverseBits(vec4<u32>(var_0.e.c.x, 687u, 39043u, 138122u)), ~_wgslsmith_div_vec4_u32(u_input.d, u_input.a)), _wgslsmith_div_vec3_u32(firstTrailingBit(firstTrailingBit(~vec3<u32>(var_0.e.b.x, u_input.a.x, 29657u))), firstTrailingBit(var_0.e.d)));
    var var_2 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.b.x, 31407u, firstTrailingBit(select(var_1.c.x, 4294967295u, true))), var_1.d));
    return all(vec2<bool>(!(!all(vec3<bool>(false, false, false))), true));
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    let var_0 = arg_0.zz;
    var var_1 = u_input.b.xz;
    let var_2 = u_input.e.x;
    var var_3 = vec2<bool>(func_2(), !(!arg_0.x));
    let var_4 = Struct_2(-var_1.x, var_2);
    return Struct_4(var_4, var_2, Struct_3(countOneBits(u_input.c ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_4.b, 4294967295u), vec2<u32>(var_2, 4294967295u)))), 4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 466f, 492f) * global0[_wgslsmith_index_u32(var_4.b, 14u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_mult_vec2_u32(vec2<u32>(73841u, 5487u) << (u_input.c % vec2<u32>(32u)), func_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<u32>(var_2, 4899u), vec4<u32>(u_input.a.x, 53468u, u_input.d.x, 20596u), vec3<u32>(u_input.e.x, 1u, var_4.b)))), countOneBits(firstTrailingBit(~vec4<u32>(9796u, u_input.c.x, var_4.b, var_4.b))), vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x), 27763u, 43065u) << (~min(u_input.d.zwz, u_input.a.wzx) % vec3<u32>(32u))));
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> vec3<bool> {
    global3 = array<Struct_3, 9>();
    global0 = array<vec3<f32>, 14>();
    let var_0 = Struct_2(max(arg_1.a.a, ~1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 20361u), _wgslsmith_mod_vec2_u32(arg_1.e.d.zx, u_input.a.wz)) % 32u)), arg_1.d);
    global1 = 0i;
    var var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), select(vec2<bool>(_wgslsmith_add_u32(33990u, arg_1.d) >= var_0.b, all(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), true), func_2()), true);
    return !vec3<bool>(true, any(!vec2<bool>(var_1.x, var_1.x)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 0i;
    global1 = -1i;
    var var_0 = _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -614f)));
    var var_1 = all(select(select(func_4(_wgslsmith_f_op_f32(floor(1081f)), func_1(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), true), select(func_4(_wgslsmith_f_op_f32(369f + 730f), func_1(vec3<bool>(false, true, true))), vec3<bool>(false, true, func_2()), true), vec3<bool>(false, false, false)));
    global3 = array<Struct_3, 9>();
    global1 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) * _wgslsmith_f_op_f32(548f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1291f, 1116f)) - _wgslsmith_div_f32(-1071f, 730f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-984f)) * _wgslsmith_f_op_f32(trunc(-528f))), _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(236f, -352f) + _wgslsmith_f_op_f32(f32(-1f) * -1342f)) - 881f)));
}

