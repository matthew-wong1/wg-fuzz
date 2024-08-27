struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 0i, 14967i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> u32 {
    global2 = vec3<i32>(i32(-1i) * -38213i, 17663i ^ _wgslsmith_add_i32(0i, reverseBits(u_input.a.x) ^ u_input.a.x), u_input.a.x);
    var var_0 = 148f;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_0.x, 82644u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_sub_u32(arg_0.x, arg_0.x)), firstLeadingBit(_wgslsmith_add_vec2_u32(arg_0.xz, vec2<u32>(arg_0.x, arg_0.x))))), arg_0.x), 24u)];
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(994f * 716f))));
    let var_2 = Struct_1(!var_1.a);
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.x, abs(arg_0.x) & ~15877u, 10786u, arg_0.x) >> (~(~vec4<u32>(12223u, arg_0.x, arg_0.x, arg_0.x) | (vec4<u32>(4294967295u, arg_0.x, 14219u, 49151u) >> (vec4<u32>(67643u, arg_0.x, 46488u, arg_0.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), countOneBits(~vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_0.x), 30912u, arg_0.x | 1u, _wgslsmith_add_u32(arg_0.x, 0u))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(func_3(~(~vec3<u32>(arg_2, min(arg_2, 26147u), 68545u)), -2359f), 8u)];
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_1 = vec4<bool>(!(!(any(vec4<bool>(false, false, var_0.a, false)) || true)), true, true, any(!(!select(vec4<bool>(var_0.a, false, var_0.a, arg_1), vec4<bool>(true, false, true, false), true))));
    let var_2 = 1148f;
    return ~_wgslsmith_div_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 78887u), vec2<u32>(48180u, 37871u)) & arg_2), _wgslsmith_div_u32(24619u << (arg_2 % 32u), _wgslsmith_add_u32(func_3(vec3<u32>(arg_2, 0u, arg_2), var_2), ~arg_2)));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(16169u, 45967u, 5269u, 29105u), vec4<u32>(29017u, 0u, 25004u, 0u), ~vec4<u32>(12836u, 47804u, 4294967295u, 0u)))), _wgslsmith_mult_vec4_u32(reverseBits(firstLeadingBit(~vec4<u32>(1u, 4294967295u, 120392u, 4294967295u))), max(vec4<u32>(abs(0u), ~1u, func_2(vec4<i32>(global2.x, -10540i, u_input.a.x, global2.x), false, 1u), 4294967295u >> (1u % 32u)), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = Struct_1(false);
    global2 = u_input.a.zzw;
    var var_2 = ~select(_wgslsmith_add_vec2_u32(vec2<u32>(37715u, 23449u) & var_0.wx, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u))) << (~vec2<u32>(44543u, var_0.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~var_0.yw, var_0.wy), select(true, var_1.a, !(!var_1.a)));
    return -(~select(1i, -38743i >> (var_0.x % 32u), var_1.a) >> (var_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_i32(u_input.a.x, ~func_1());
    var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(~57155u, 4294967295u, _wgslsmith_mult_u32(51391u, 38993u), ~14101u), min(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(41927u, 26561u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global2 = u_input.a.xzx;
    let var_2 = 32743u;
    var var_3 = min(~var_1.zwx, ~select(countOneBits(vec3<u32>(var_1.x, 17846u, var_1.x)), (vec3<u32>(4294967295u, 4294967295u, 48786u) | var_1.zyw) >> (countOneBits(vec3<u32>(1u, var_1.x, var_1.x)) % vec3<u32>(32u)), -u_input.a.x <= global2.x));
    let var_4 = global2.zx;
    var var_5 = 17481u;
    let x = u_input.a;
    s_output = StorageBuffer(88302u);
}

