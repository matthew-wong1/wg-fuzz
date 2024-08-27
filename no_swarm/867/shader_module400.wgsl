struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(10986u, 0u, 10372u);

var<private> global1: u32;

var<private> global2: i32 = -6960i;

var<private> global3: array<Struct_4, 30>;

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = -18410i;
    let var_1 = false & (global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.a.zy, _wgslsmith_div_vec2_u32(arg_1.a.wx, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.a.x, 3u)], 3u)], arg_1.d))), 3u)], _wgslsmith_dot_vec3_u32(~arg_1.a.zww, arg_1.a.zyy | vec3<u32>(4294967295u, 1u, u_input.a))), 3u)] == ~0u);
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(0u), 3u)];
    return vec3<f32>(_wgslsmith_f_op_f32(-686f * -470f), _wgslsmith_f_op_f32(-arg_1.c), -119f);
}

fn func_3() -> vec4<u32> {
    global1 = ~58746u;
    let var_0 = !(!(!(!any(vec2<bool>(false, false)))));
    global0 = array<u32, 3>();
    global2 = abs(8523i);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, -345f, -428f, -176f) * vec4<f32>(885f, 1481f, -353f, 487f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-247f, 1649f, -667f, -160f), vec4<f32>(206f, 857f, -438f, -2476f))), !var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(394f, -144f, 1984f, -1000f), vec4<f32>(226f, 610f, 1345f, -1346f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-927f, 180f, -842f, 759f))))))));
    return countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(104648u, 132404u, 0u, 4294967295u), select(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], 1u) | vec4<u32>(1u, 28551u, 0u, 31779u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 26401u, 1u, u_input.b), select(vec4<bool>(false, false, false, var_0), vec4<bool>(false, false, false, true), vec4<bool>(var_0, true, var_0, var_0)))), countOneBits(vec4<u32>(u_input.b, 0u, u_input.a, 56526u) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 4294967295u, u_input.a, u_input.b))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_1(arg_2.d.a, reverseBits(~arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-609f, _wgslsmith_f_op_f32(ceil(arg_2.d.c)), arg_2.c.x)))), _wgslsmith_add_u32(max(1u, 18577u), _wgslsmith_mult_u32(arg_2.d.d, _wgslsmith_dot_vec2_u32(vec2<u32>(80079u, 0u), arg_2.d.a.xz)) >> (select(global0[_wgslsmith_index_u32(countOneBits(u_input.a), 3u)], countOneBits(0u), u_input.b != 16777u) % 32u)));
    global2 = arg_3;
    let var_1 = -13942i;
    global0 = array<u32, 3>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1816f)), arg_2.d.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 2173f) * arg_0.x)), _wgslsmith_f_op_f32(abs(2021f)), 858f));
    return _wgslsmith_add_vec4_i32(vec4<i32>(abs(_wgslsmith_mult_i32(arg_3, arg_3)), -22935i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), arg_2.a.yy), ~arg_2.d.b), arg_3) ^ -firstLeadingBit(~vec4<i32>(-1i, -18346i, 0i, arg_2.d.b)), vec4<i32>(-5465i, _wgslsmith_sub_i32(var_1, var_0.b), -19877i, var_1));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = select(func_4(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-562f + -1350f), _wgslsmith_div_f32(740f, 460f), true)), 460f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(false, Struct_1(vec4<u32>(1u, 40366u, 1u, u_input.b), -2147483647i, 914f, 10705u)))), Struct_3(vec3<i32>(~(-1i), ~6237i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-21056i, 0i))), -max(-2147483647i, 45046i), vec3<bool>(true, arg_0, u_input.a > u_input.a), Struct_1(func_3(), 1i, _wgslsmith_f_op_f32(step(-1315f, 741f)), 9029u << (global0[_wgslsmith_index_u32(u_input.b, 3u)] % 32u))), _wgslsmith_add_i32(countOneBits(60777i), select(0i, -1i, arg_0)) | max(firstLeadingBit(-2147483647i), 1i)), firstTrailingBit(vec4<i32>(-_wgslsmith_sub_i32(35984i, -1202i), 1i, ~_wgslsmith_add_i32(14301i, 0i), 1i)), true);
    var_0 = vec4<i32>(-19360i, firstLeadingBit(var_0.x) ^ abs(max(11787i, var_0.x)), ~(~(-2147483647i)), -(reverseBits(min(-3422i, 42034i)) >> (u_input.b % 32u)));
    let var_1 = Struct_3(var_0.zzx, firstTrailingBit(countOneBits(10691i)), vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], 4294967295u), vec4<u32>(u_input.a, u_input.b, 52540u, 5120u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 3u)], 19521u, 4294967295u)), select(vec4<u32>(u_input.b, 4294967295u, 44555u, 19566u), vec4<u32>(global0[_wgslsmith_index_u32(38176u, 3u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 3u)], 1u), true)) == _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.b << (0u % 32u), 3u)], ~1u, ~u_input.a), false, true & arg_0), Struct_1(~(~(vec4<u32>(global0[_wgslsmith_index_u32(65624u, 3u)], 110229u, 70759u, 46267u) | vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(22680u, 3u)], 77399u))), -2147483647i, 1302f, 60573u));
    var_0 = ~countOneBits(abs(vec4<i32>(1i, -var_0.x, var_1.b, 31626i)));
    global3 = array<Struct_4, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1115f, -1157f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.c))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<u32> {
    return ~max(arg_0.wwz, min(firstTrailingBit(vec3<u32>(0u, arg_0.x, 23243u)), arg_0.yxw));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 0i;
    let var_0 = ~u_input.a;
    global1 = 0u;
    global2 = -33691i;
    let var_1 = (vec3<i32>(_wgslsmith_mult_i32(1i, -2147483647i), 0i, _wgslsmith_mult_i32(1i, 0i)) >> (func_5(~vec4<u32>(var_0, 65818u, 14650u, global0[_wgslsmith_index_u32(6729u, 3u)]), Struct_2(0u, _wgslsmith_f_op_f32(func_1(true)))) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(-select(min(vec3<i32>(2668i, -1i, -1i), vec3<i32>(-23020i, 1i, -42756i)), vec3<i32>(30746i, 42134i, -14534i), vec3<bool>(true, true, true)), -vec3<i32>(1i, 1i, 1i));
    let var_2 = Struct_4(Struct_1(vec4<u32>(1u >> (1u % 32u), ~4294967295u, global0[_wgslsmith_index_u32(22071u, 3u)], u_input.a), var_1.x, -1960f, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(22258u, 9954u, var_0)), func_3().zxx)), ~var_1);
    var var_3 = Struct_4(var_2.a, _wgslsmith_sub_vec3_i32(abs(-var_1) >> (firstTrailingBit(select(vec3<u32>(var_2.a.a.x, global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.b), var_2.a.a.zww, true)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(var_1.x, var_1.x), 1i, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.c)))), firstLeadingBit(var_3.a.a));
}

