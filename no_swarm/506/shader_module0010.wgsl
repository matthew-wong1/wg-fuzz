struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = 700f;
    let var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(492f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -681f)) + 470f)));
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    return ~max(1u, ~1u);
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(-1764f > _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)), -(-u_input.a << (arg_1 % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1653f, arg_0, arg_0)), global0[_wgslsmith_index_u32(~arg_1, 19u)]))))), false, vec4<u32>(arg_1, ~(~125140u & arg_1), _wgslsmith_sub_u32(min(4294967295u ^ arg_1, arg_1), countOneBits(_wgslsmith_sub_u32(arg_1, 44282u))), select(abs(arg_1), ~(~4294967295u), global0[_wgslsmith_index_u32(22562u, 19u)])), -34372i);
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    var var_1 = all(!(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.d.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], var_0.a.a), vec4<bool>(global0[_wgslsmith_index_u32(0u, 19u)], var_0.c, true, false), false))) != var_0.c;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_3 {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_0 = arg_1.a;
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    return Struct_3(abs(~(~vec3<u32>(1u, 1469u, 14941u))) ^ vec3<u32>(~(~11017u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 32474u, 0u), vec3<u32>(57804u, 39560u, 4294967295u)), vec3<u32>(1u, 33760u, 61405u)), ~(~4294967295u)), 1u != ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 110905u, 0u, 0u), abs(vec4<u32>(0u, 45293u, 1u, 1u))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<bool, 19>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(327f, arg_2.a.b.x)), 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2.b.x, func_2())) * _wgslsmith_f_op_f32(min(arg_2.a.b.x, _wgslsmith_f_op_f32(min(962f, 870f)))))), arg_2.c);
    global0 = array<bool, 19>();
    var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~max(vec3<u32>(arg_1.x, var_0.a.x, arg_2.a.d.x), _wgslsmith_mult_vec3_u32(arg_0.zyw, arg_2.a.d.wyx)), arg_2.a.d.zww), arg_3.a & false);
    let var_1 = arg_0.x ^ arg_1.x;
    return firstTrailingBit(arg_2.a.d.wzy);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> i32 {
    let var_0 = !vec4<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 19u)], true, global0[_wgslsmith_index_u32(arg_1.a.x, 19u)], arg_1.b), vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1.b, false, false))), !arg_1.b, !(~1u == ~arg_1.a.x), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(vec4<u32>(0u, 9452u, arg_1.a.x, arg_1.a.x), arg_1.a.zy, Struct_4(Struct_2(Struct_1(true, -2147483647i), vec3<f32>(471f, -1473f, -825f), arg_1.b, vec4<u32>(1u, 4294967295u, 22370u, arg_1.a.x), u_input.a), vec4<f32>(-380f, arg_0, 608f, 636f), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], u_input.a)), Struct_1(true, u_input.a)).zy, abs(vec2<u32>(25670u, arg_1.a.x))), 19u)]);
    let var_1 = ~abs(~vec4<u32>(~95216u, arg_1.a.x, arg_1.a.x, 4294967295u));
    global0 = array<bool, 19>();
    let var_2 = countOneBits(u_input.b.xyx ^ abs(countOneBits(~u_input.b.zzx)));
    global0 = array<bool, 19>();
    return ~(u_input.a >> (~reverseBits(arg_1.a.x >> (115475u % 32u)) % 32u));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    let var_0 = Struct_3(_wgslsmith_sub_vec3_u32(countOneBits(max(arg_0.d.zzx, reverseBits(arg_0.d.wzw))), select(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, arg_2, 148138u), vec3<u32>(31147u, arg_0.d.x, arg_2)), vec3<u32>(5519u, 1u, arg_2) ^ vec3<u32>(arg_2, 8443u, arg_0.d.x)), arg_0.d.ywx, true)), arg_1);
    var var_1 = !select(select(select(select(vec4<bool>(true, arg_0.a.a, false, true), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(40162u, 19u)]), arg_0.c), !vec4<bool>(arg_0.c, var_0.b, arg_0.c, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.d.x, 19u)], false, false, false)), vec4<bool>(any(vec2<bool>(arg_1, global0[_wgslsmith_index_u32(7342u, 19u)])), !global0[_wgslsmith_index_u32(arg_2, 19u)], false, !global0[_wgslsmith_index_u32(var_0.a.x, 19u)]), !vec4<bool>(false, arg_1, var_0.b, arg_0.a.a)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, var_0.b, true, false), arg_0.c), !vec4<bool>(true, global0[_wgslsmith_index_u32(6685u, 19u)], var_0.b, arg_0.a.a), !vec4<bool>(true, arg_1, arg_1, false)), !(!arg_1));
    global0 = array<bool, 19>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 19u)], u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1253f, 187f, 890f)))), !(!(!global0[_wgslsmith_index_u32(13799u, 19u)])), vec4<u32>(1u, 1u, 1u, 1u), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2040f + -278f)), Struct_3(func_1(vec4<u32>(76354u, 4294967295u, 4294967295u, 0u), vec2<u32>(41486u, 7973u), Struct_4(Struct_2(Struct_1(global0[_wgslsmith_index_u32(1u, 19u)], -40897i), vec3<f32>(-494f, 759f, -1607f), global0[_wgslsmith_index_u32(36382u, 19u)], vec4<u32>(19089u, 25613u, 17131u, 30131u), 1i), vec4<f32>(-226f, -652f, -1999f, -100f), Struct_1(global0[_wgslsmith_index_u32(41558u, 19u)], u_input.a)), Struct_1(true, -1i)), true || global0[_wgslsmith_index_u32(4294967295u, 19u)]))), global0[_wgslsmith_index_u32(max(max(1u, ~_wgslsmith_add_u32(4650u, 343u)), reverseBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), abs(vec2<u32>(4294967295u, 0u))))), 19u)], _wgslsmith_div_u32(0u, 1u));
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~84519u, 0u), 28841u), countOneBits(max(vec2<u32>(50634u, 39153u), vec2<u32>(1u, 0u)))), _wgslsmith_f_op_f32(-1103f * 724f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-415f, -1107f, -1000f)))))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(210f + 745f), _wgslsmith_f_op_f32(1521f * 788f), -990f, _wgslsmith_f_op_f32(1616f + 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2154f, 1395f, -1000f, -941f) - vec4<f32>(893f, 466f, -136f, 333f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1056f - -995f), _wgslsmith_f_op_f32(sign(1142f))), _wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(-1471f * 917f), 1000f)));
}

