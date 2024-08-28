struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1000f, -730f, -998f, -918f, -1877f, 1703f, -935f, 1000f, 389f, 2507f, 589f, 955f, -625f, -680f, -1145f, 201f, 1511f, -607f, -209f, 845f, -1000f, -1040f, 741f, 471f, 392f, 2124f, -1000f, -838f);

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(172f, -554f, 1302f, 589f), vec4<f32>(1134f, -604f, -248f, -612f), vec4<f32>(-477f, -1671f, -1148f, 385f), vec4<f32>(142f, 1000f, 156f, -850f), vec4<f32>(-153f, 1034f, -2159f, 1555f), vec4<f32>(1207f, -589f, -1000f, -611f), vec4<f32>(388f, 1649f, -1001f, -1631f), vec4<f32>(1000f, -401f, -173f, 227f), vec4<f32>(-711f, 1067f, 567f, 1000f), vec4<f32>(1163f, 1552f, -1074f, 1252f), vec4<f32>(-1000f, -661f, 1611f, 999f), vec4<f32>(-1000f, -367f, -721f, -795f), vec4<f32>(100f, 537f, 313f, -360f), vec4<f32>(-789f, 447f, -970f, 661f), vec4<f32>(-2095f, -916f, -1961f, -1692f), vec4<f32>(1000f, 830f, -374f, 342f), vec4<f32>(-847f, -1049f, -392f, -763f), vec4<f32>(-1321f, 2307f, 911f, 1490f));

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(54512u, 18u)];
    var var_1 = Struct_2(Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(4291u, arg_1.x, 0u, 37877u), arg_1 | vec4<u32>(4294967295u, 1u, 4294967295u, 43836u)), any(vec3<bool>(true, true, true)), arg_1.zw & ~(~u_input.c), u_input.a));
    var var_2 = -(_wgslsmith_mod_i32(var_1.a.d.x, i32(-1i) * -11804i) & 34068i);
    var var_3 = ((vec3<u32>(abs(arg_1.x), arg_1.x, 1u) ^ vec3<u32>(0u, var_1.a.a.x & arg_1.x, _wgslsmith_clamp_u32(1u, var_1.a.a.x, 16445u))) ^ (countOneBits(var_1.a.a.wyw) >> (~arg_1.ywz % vec3<u32>(32u)))) ^ _wgslsmith_add_vec3_u32(var_1.a.a.xzw << (~vec3<u32>(u_input.c.x, 1415u, arg_1.x) % vec3<u32>(32u)), ~(~var_1.a.a.zww));
    let var_4 = Struct_2(var_1.a);
    return Struct_2(var_4.a);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    return global1.x;
}

fn func_3(arg_0: f32) -> StorageBuffer {
    let var_0 = 0u;
    global0 = array<f32, 28>();
    global0 = array<f32, 28>();
    var var_1 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(var_0, 17525u, 0u), vec3<u32>(u_input.c.x, var_0, u_input.c.x))), abs(firstTrailingBit(vec3<u32>(u_input.c.x, 4294967295u, var_0)))), func_1(-407f, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(9440u, u_input.c.x, var_0, var_0), vec4<u32>(u_input.c.x, u_input.c.x, 79143u, var_0), vec4<u32>(1u, u_input.c.x, 23134u, var_0)), abs(17907i)).a.a.x));
    return StorageBuffer(0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 1u), ~vec2<u32>(1u, var_2.x)) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), 833f)) - _wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-2353f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))), 550f, -588f), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, 1u), u_input.c.x >> (u_input.c.x % 32u), 57311u, 1u), _wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(9534u, u_input.c.x, var_0, var_2.x), vec4<u32>(1u, var_0, 4294967295u, u_input.c.x))), ~(~vec4<u32>(31931u, 4294967295u, var_2.x, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !all(vec3<bool>(false, false, true))), !vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), all(vec4<bool>(true, true, true, true)))));
    global2 = array<vec4<f32>, 18>();
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, 11475u, 6260u), true, u_input.c, u_input.a)), reverseBits(~vec4<u32>(51097u, 1u, 1u, 2891u)), func_1(global0[_wgslsmith_index_u32(~0u, 28u)], ~vec4<u32>(8840u, 4294967295u, u_input.c.x, 25108u), ~0i)))));
}

