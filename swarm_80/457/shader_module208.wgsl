struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<bool>(false, false), Struct_1(-391f, -13121i, 46023u)), Struct_2(vec2<bool>(true, true), Struct_1(1405f, i32(-2147483648), 0u)), Struct_2(vec2<bool>(false, true), Struct_1(-1551f, 1i, 4294967295u)), Struct_2(vec2<bool>(false, false), Struct_1(419f, -1i, 1u)), Struct_2(vec2<bool>(true, false), Struct_1(-603f, 0i, 1u)), Struct_2(vec2<bool>(false, false), Struct_1(881f, -1i, 1u)), Struct_2(vec2<bool>(false, false), Struct_1(-889f, 24391i, 66171u)), Struct_2(vec2<bool>(true, true), Struct_1(-146f, i32(-2147483648), 32847u)), Struct_2(vec2<bool>(false, true), Struct_1(932f, -1i, 0u)), Struct_2(vec2<bool>(true, false), Struct_1(-469f, 16911i, 75175u)), Struct_2(vec2<bool>(true, false), Struct_1(-999f, 2126i, 115264u)), Struct_2(vec2<bool>(false, true), Struct_1(-1000f, 1i, 102975u)), Struct_2(vec2<bool>(false, true), Struct_1(391f, 3714i, 0u)), Struct_2(vec2<bool>(true, true), Struct_1(1000f, -37476i, 4294967295u)), Struct_2(vec2<bool>(false, false), Struct_1(1354f, 30546i, 84549u)), Struct_2(vec2<bool>(false, true), Struct_1(-1600f, -1i, 4294967295u)), Struct_2(vec2<bool>(true, false), Struct_1(1000f, 15012i, 13498u)), Struct_2(vec2<bool>(true, false), Struct_1(628f, -3877i, 13201u)), Struct_2(vec2<bool>(true, true), Struct_1(289f, 30682i, 5106u)), Struct_2(vec2<bool>(false, true), Struct_1(-1328f, 1i, 0u)), Struct_2(vec2<bool>(false, false), Struct_1(-1000f, -22147i, 13166u)), Struct_2(vec2<bool>(true, true), Struct_1(-385f, 1i, 0u)), Struct_2(vec2<bool>(false, false), Struct_1(1000f, i32(-2147483648), 1u)), Struct_2(vec2<bool>(true, true), Struct_1(-3249f, 161i, 63216u)), Struct_2(vec2<bool>(false, false), Struct_1(-1422f, i32(-2147483648), 1u)));

var<private> global1: i32 = -27546i;

var<private> global2: array<Struct_1, 8>;

var<private> global3: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1276f, _wgslsmith_div_f32(288f, _wgslsmith_div_f32(1253f, -1334f))))), _wgslsmith_mod_i32(1i, -(~(-26314i)) >> (u_input.b.x % 32u)), _wgslsmith_add_u32(u_input.b.x, ~1u << (u_input.c.x % 32u)));
    global0 = array<Struct_2, 25>();
    var var_1 = arg_1.x;
    global3 = 56393u;
    var var_2 = _wgslsmith_mult_i32(~reverseBits(var_0.b), 1i);
    return abs(var_0.c);
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_add_u32(u_input.c.x, ~(~_wgslsmith_add_u32(1u, func_3(true, vec4<bool>(false, false, false, true)))));
    global2 = array<Struct_1, 8>();
    global1 = -_wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(-37553i, 84030i, -1i, -4052i))), abs(-vec4<i32>(3737i, -1i, 0i, 2147483647i)));
    return _wgslsmith_clamp_u32(1u, 30374u, ~(~min(38563u, u_input.a.x))) ^ var_0;
}

fn func_1(arg_0: bool) -> vec3<u32> {
    let var_0 = vec3<bool>(!all(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0))), true, arg_0);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, (u_input.c.x | _wgslsmith_div_u32(1u, 90021u)) ^ ~firstTrailingBit(71053u)), _wgslsmith_add_u32(firstLeadingBit(~u_input.c.x), ~u_input.a.x | 4294967295u) << (func_2() % 32u)), 8u)];
    global2 = array<Struct_1, 8>();
    global0 = array<Struct_2, 25>();
    var var_2 = vec4<i32>(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_1.b, 8636i, var_1.b), vec4<i32>(var_1.b, var_1.b, -2147483647i, var_1.b)) & var_1.b), 1i << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 13025u, var_1.c, 0u), vec4<u32>(u_input.a.x, u_input.b.x, 1u, 56592u)) | ~1u) % 32u), 1i, var_1.b) >> (select(u_input.a, ~(~(~vec4<u32>(0u, 1u, u_input.a.x, 18291u))), !(44122u != var_1.c) || true) % vec4<u32>(32u));
    return abs(~reverseBits(min(_wgslsmith_sub_vec3_u32(u_input.a.ywx, vec3<u32>(4294967295u, var_1.c, 0u)), min(u_input.a.xzz, vec3<u32>(4294967295u, var_1.c, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32((~(~36760u) ^ u_input.c.x) << (reverseBits(u_input.b.x) % 32u), 8u)];
    global3 = u_input.b.x << (~((min(u_input.c.x, 59257u) >> (min(0u, 77742u) % 32u)) & ~var_0.c) % 32u);
    let var_1 = abs(func_1(true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-234f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 1341f))), 734f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1323f))));
    global3 = _wgslsmith_clamp_u32(32038u, 1u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u >> (0u % 32u), _wgslsmith_sub_u32(~(~1u), _wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(1u, 4294967295u, 7874u, 30747u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(55244u, u_input.a.x, 103867u, var_1.x), vec4<u32>(4294967295u, u_input.a.x, 0u, var_0.c)))), countOneBits(abs(abs(65114u)))), -1416f, 27794i);
}

