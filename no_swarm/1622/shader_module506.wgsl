struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-213f, 802f, -1117f, -667f), vec2<f32>(185f, 149f), 39583u, -210f), Struct_1(vec3<bool>(true, true, false), vec4<f32>(101f, 937f, -966f, -1000f), vec2<f32>(-1542f, -976f), 0u, -547f), Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1885f, -718f, -492f, -1132f), vec2<f32>(667f, -381f), 0u, 498f));

var<private> global3: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(-805f, -297f), vec2<f32>(704f, 354f), vec2<f32>(117f, -803f), vec2<f32>(794f, -505f), vec2<f32>(664f, -556f), vec2<f32>(141f, 246f), vec2<f32>(-121f, 2074f), vec2<f32>(1000f, -772f), vec2<f32>(1431f, -1621f), vec2<f32>(-1278f, 917f), vec2<f32>(374f, 356f), vec2<f32>(-1366f, -1587f), vec2<f32>(-116f, 323f), vec2<f32>(-497f, 1275f), vec2<f32>(-216f, -1525f), vec2<f32>(439f, -435f), vec2<f32>(798f, -824f), vec2<f32>(-2439f, -916f), vec2<f32>(1880f, 1042f), vec2<f32>(660f, 1197f));

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec4<f32>(-1000f, 1739f, -1000f, -547f), vec2<f32>(-1169f, -584f), 0u, 1854f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global3 = array<vec2<f32>, 20>();
    var var_0 = Struct_2(Struct_1(vec3<bool>(all(global4.a), false, !global4.a.x), _wgslsmith_f_op_vec4_f32(select(global4.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, 549f, 617f, global4.c.x) - global4.b)), !global4.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(global4.d, 20u)] - vec2<f32>(global4.c.x, global4.c.x)), _wgslsmith_f_op_vec2_f32(-global4.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.c), _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(global4.d, 20u)])))), ~_wgslsmith_sub_u32(~28010u, ~arg_0.x), 2169f));
    var var_1 = Struct_4(Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(var_0.a.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.b - var_0.a.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(global4.c)))), countOneBits(global4.d), _wgslsmith_f_op_f32(select(2517f, var_0.a.c.x, true || (u_input.a == 11480u)))), Struct_2(global0[_wgslsmith_index_u32(min(~_wgslsmith_dot_vec3_u32(arg_0, arg_0), ~_wgslsmith_mod_u32(global4.d, 44400u)), 28u)]), Struct_2(Struct_1(select(vec3<bool>(global4.a.x, var_0.a.a.x, true), select(vec3<bool>(true, true, false), vec3<bool>(false, global4.a.x, var_0.a.a.x), true), vec3<bool>(var_0.a.a.x, global4.a.x, false)), var_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.b.wz, vec2<f32>(var_0.a.c.x, -677f), true))), global4.d, _wgslsmith_f_op_f32(trunc(var_0.a.b.x)))), u_input.a);
    let var_2 = global4.e;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.x * -623f), -1010f, global4.e, _wgslsmith_f_op_f32(-var_0.a.c.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-679f, -372f, var_0.a.c.x, -1163f))))) + var_1.c.a.b));
    return _wgslsmith_sub_u32(var_0.a.d, abs(~(1u << (0u % 32u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = Struct_5(Struct_4(global2[_wgslsmith_index_u32(~(~9589u << (_wgslsmith_clamp_u32(31437u, 0u, 10738u) % 32u)), 3u)], Struct_2(global0[_wgslsmith_index_u32(func_3(vec3<u32>(global4.d, 18658u, 1u)), 28u)]), Struct_2(global2[_wgslsmith_index_u32(~firstLeadingBit(0u), 3u)]), abs(arg_0.x)), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.d, u_input.b.x, arg_0.x), ~vec3<u32>(u_input.b.x, 1u, u_input.b.x)), 1u)), 28u)], firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, u_input.b.x, 4294967295u) ^ vec3<u32>(arg_0.x, global4.d, global4.d), select(vec3<u32>(33993u, 41563u, arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.x, 87104u, u_input.b.x), vec3<u32>(64872u, arg_0.x, arg_0.x)), global4.a.x))), global4.a.x);
    var var_1 = 0u;
    var var_2 = select(select(global4.a.xx, !select(!vec2<bool>(true, global4.a.x), vec2<bool>(false, false), global4.a.yx), var_0.a.c.a.a.x), !(!var_0.a.a.a.yy), false);
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(max(u_input.b.x, 0u), 28u)]);
    global0 = array<Struct_1, 28>();
    return Struct_5(Struct_4(var_3.a, Struct_2(Struct_1(vec3<bool>(var_2.x, true, var_3.a.a.x), global4.b, vec2<f32>(arg_1.x, -889f), 64073u, global4.c.x)), var_0.a.c, 26332u), Struct_1(select(vec3<bool>(var_0.a.c.a.a.x, any(var_3.a.a), true), select(vec3<bool>(false, true, false), !vec3<bool>(var_2.x, var_0.a.a.a.x, var_2.x), 858f >= global4.e), vec3<bool>(true, !var_3.a.a.x, var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, var_3.a.e, var_3.a.e, -1454f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(943f, 1142f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1765f, global4.e), var_3.a.c, false)))), 57706u & _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 21975u), _wgslsmith_sub_u32(var_3.a.d, 0u)), global4.b.x), max(arg_0, vec3<u32>(_wgslsmith_sub_u32(15996u, var_3.a.d) ^ global4.d, ~1u, _wgslsmith_mod_u32(global4.d << (69973u % 32u), global4.d & 1u))), global4.a.x);
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = func_2(~((min(vec3<u32>(global4.d, 79452u, 34783u), vec3<u32>(u_input.b.x, u_input.a, global4.d)) | ~vec3<u32>(u_input.b.x, global4.d, u_input.b.x)) << (reverseBits(min(vec3<u32>(u_input.a, global4.d, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, 71118u))) % vec3<u32>(32u))), _wgslsmith_div_vec2_f32(vec2<f32>(753f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.b.x, global4.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(215f)), _wgslsmith_f_op_f32(1174f - global4.c.x))));
    var var_1 = Struct_3(func_2(var_0.c, vec2<f32>(1925f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-679f, global4.b.x))))).b, select(vec4<bool>((16878u & var_0.a.b.a.d) <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 23686u), vec3<u32>(var_0.c.x, u_input.a, 8889u)), 429f <= global4.c.x, true, true), vec4<bool>(select(true, true, any(vec3<bool>(false, false, global4.a.x))), all(func_2(var_0.c, vec2<f32>(1146f, 148f)).a.b.a.a.xx), !(!var_0.b.a.x), true), global4.a.x), global2[_wgslsmith_index_u32(abs(select(var_0.c.x, abs(select(global4.d, var_0.a.a.d, global4.a.x)), true)), 3u)], Struct_1(vec3<bool>(true, func_2(~vec3<u32>(global4.d, 45130u, 16678u), _wgslsmith_f_op_vec2_f32(-global4.c)).b.a.x, global4.a.x), global4.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(sign(global4.c.x))))), 1u, _wgslsmith_div_f32(1185f, _wgslsmith_f_op_f32(-var_0.a.c.a.c.x))), vec2<f32>(208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(733f + -459f) * _wgslsmith_f_op_f32(-global4.c.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-889f + 415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.e)))), var_0.b.b.x)));
    let var_3 = var_0.a.c;
    global4 = func_2(vec3<u32>(~(~2233u), var_3.a.d, ~0u), _wgslsmith_f_op_vec2_f32(-var_3.a.b.yy)).b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.b.b.x, var_3.a.e, global4.e)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-317f, -799f, -862f, var_2.x) - vec4<f32>(var_0.b.e, var_1.a.c.x, global4.c.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, var_3.a.b.x, -1135f, 1174f)), var_0.b.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(min(1u, firstTrailingBit(4294967295u)), 3u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_1(true && !(global4.b.x >= _wgslsmith_f_op_f32(-var_0.a.e))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * -1978f)));
    let var_3 = true;
    global2 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~31433i << (~var_0.a.d % 32u)), max(-17605i, _wgslsmith_add_i32(-1i, abs(abs(-2147483647i)))), ~(~vec4<u32>(0u, ~var_0.a.d, select(90373u, 32292u, var_3), _wgslsmith_clamp_u32(10585u, 0u, 37666u))), global4.b, _wgslsmith_sub_vec4_u32(min((vec4<u32>(25125u, global4.d, 4294967295u, u_input.a) & vec4<u32>(var_0.a.d, 30752u, global4.d, global4.d)) & ~vec4<u32>(var_0.a.d, 53382u, global4.d, u_input.b.x), vec4<u32>(25100u, abs(41655u), global4.d, reverseBits(0u))), ~(~vec4<u32>(35176u, u_input.a, u_input.a, 4294967295u)) & firstTrailingBit(vec4<u32>(u_input.a, global4.d, u_input.b.x, 4294967295u) | vec4<u32>(4294967295u, var_0.a.d, u_input.b.x, 1u))));
}

