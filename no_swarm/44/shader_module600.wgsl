struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_3(Struct_2(vec4<f32>(-1009f, 156f, -1000f, -535f), vec4<u32>(118725u, 27620u, 4294967295u, 0u), true), vec4<u32>(12815u, 0u, 1u, 32428u), true), Struct_3(Struct_2(vec4<f32>(-629f, -546f, 1000f, 1059f), vec4<u32>(80342u, 18624u, 12879u, 64300u), false), vec4<u32>(37914u, 4294967295u, 4294967295u, 4294967295u), true), Struct_3(Struct_2(vec4<f32>(1000f, -476f, -380f, -1712f), vec4<u32>(1534u, 4294967295u, 98325u, 8227u), true), vec4<u32>(4294967295u, 91784u, 13509u, 1u), false)), Struct_4(Struct_3(Struct_2(vec4<f32>(1377f, -335f, -1000f, 748f), vec4<u32>(11850u, 81540u, 1u, 0u), true), vec4<u32>(1u, 1u, 54446u, 9049u), false), Struct_3(Struct_2(vec4<f32>(-1000f, -468f, 845f, -170f), vec4<u32>(4294967295u, 1u, 1u, 0u), true), vec4<u32>(32119u, 4294967295u, 8648u, 12473u), true), Struct_3(Struct_2(vec4<f32>(1588f, -1274f, 501f, 1938f), vec4<u32>(4294967295u, 4294967295u, 38495u, 49880u), false), vec4<u32>(4294967295u, 61969u, 5109u, 0u), false)), Struct_4(Struct_3(Struct_2(vec4<f32>(2013f, -1506f, 168f, 195f), vec4<u32>(0u, 37738u, 36808u, 1u), true), vec4<u32>(65189u, 53369u, 56509u, 118903u), true), Struct_3(Struct_2(vec4<f32>(1047f, 350f, 1000f, 487f), vec4<u32>(4763u, 0u, 42553u, 44327u), false), vec4<u32>(1u, 4294967295u, 25343u, 49200u), true), Struct_3(Struct_2(vec4<f32>(-1000f, -227f, -294f, -1290f), vec4<u32>(1u, 0u, 33821u, 4294967295u), true), vec4<u32>(58037u, 4294967295u, 1u, 1u), true)));

var<private> global1: array<vec3<f32>, 6>;

var<private> global2: Struct_4 = Struct_4(Struct_3(Struct_2(vec4<f32>(-377f, -140f, 1101f, -363f), vec4<u32>(26023u, 0u, 19779u, 23273u), false), vec4<u32>(0u, 44795u, 4294967295u, 1u), true), Struct_3(Struct_2(vec4<f32>(1856f, -636f, -261f, 594f), vec4<u32>(1u, 1u, 9316u, 1u), true), vec4<u32>(0u, 0u, 4294967295u, 0u), false), Struct_3(Struct_2(vec4<f32>(-127f, -1000f, -623f, -1231f), vec4<u32>(4294967295u, 59830u, 1u, 0u), false), vec4<u32>(21124u, 17358u, 28845u, 77038u), false));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32((arg_0 << (u_input.d % 32u)) & arg_0, -12416i), _wgslsmith_div_i32(u_input.b.x, ~_wgslsmith_sub_i32(u_input.c, 32371i)), _wgslsmith_div_i32(arg_0, _wgslsmith_div_i32(-1i, -2147483647i)), ~(~(-2147483647i))), firstTrailingBit(vec4<i32>(1i, abs(arg_0), ~(-2147483647i), 1i)));
    global0 = array<Struct_4, 3>();
    var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(16801i, arg_0, 14430i, arg_0) | vec4<i32>(65953i, -2147483647i, arg_0, -27119i), vec4<i32>(u_input.b.x, u_input.b.x, 8465i, 35285i)), ~vec4<i32>(u_input.a, u_input.c, -11711i, 13686i)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global2.c.b.x, 0u), global2.b.a.b | global2.a.a.b) % vec4<u32>(32u)), vec4<i32>(2147483647i, i32(-1i) * -1i, arg_0, u_input.a));
    global2 = Struct_4(global2.a, global2.a, global2.b);
    global0 = array<Struct_4, 3>();
    return reverseBits(vec2<i32>(-51277i, 0i));
}

fn func_2() -> u32 {
    let var_0 = abs(-select(-func_3(u_input.b.x), vec2<i32>(-u_input.b.x, firstLeadingBit(u_input.b.x)), vec2<bool>(true, any(vec4<bool>(global2.c.c, true, global2.b.c, true)))));
    var var_1 = false;
    let var_2 = firstLeadingBit(vec3<u32>(20812u, abs(u_input.d), 85951u));
    var var_3 = select(true, any(select(vec3<bool>(true, any(vec2<bool>(true, global2.c.c)), select(true, global2.b.a.c, global2.b.a.c)), vec3<bool>(global2.c.c && true, true, global2.c.c), vec3<bool>(any(vec4<bool>(true, global2.b.c, false, global2.b.a.c)), !global2.c.a.c, global2.a.c))), global2.b.c);
    var var_4 = Struct_4(global2.b, Struct_3(global2.b.a, global2.c.a.b, select(global2.c.a.c, !global2.a.a.c, global2.c.a.c)), global2.c);
    return ~24189u;
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    global2 = global0[_wgslsmith_index_u32(~4294967295u, 3u)];
    let var_0 = all(select(!select(select(vec4<bool>(global2.a.c, false, true, global2.a.c), vec4<bool>(false, true, global2.c.c, true), vec4<bool>(global2.c.c, false, false, true)), vec4<bool>(true, true, true, true), true | global2.b.c), select(select(vec4<bool>(true, global2.b.c, false, global2.a.a.c), select(vec4<bool>(true, global2.c.c, true, global2.b.c), vec4<bool>(global2.a.c, global2.c.a.c, global2.a.a.c, global2.b.a.c), vec4<bool>(global2.b.c, global2.c.a.c, true, global2.a.a.c)), vec4<bool>(global2.b.a.c, global2.a.c, true, false)), vec4<bool>(global2.c.b.x < 0u, true, true, global2.a.a.c), !vec4<bool>(true, false, global2.b.a.c, true)), !all(select(vec3<bool>(false, false, global2.c.a.c), vec3<bool>(false, global2.a.c, global2.b.a.c), vec3<bool>(global2.a.c, global2.c.c, global2.c.c)))));
    var var_1 = !vec3<bool>(true, true, !any(vec3<bool>(var_0, global2.a.a.c, global2.b.c)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.c.a.a.x, -363f, global2.c.a.a.x, 583f), global2.b.a.a)), ~_wgslsmith_sub_vec4_u32(global2.b.a.b, reverseBits(~vec4<u32>(7439u, 4294967295u, arg_0.x, u_input.d))), u_input.b.x >= _wgslsmith_mult_i32(select(countOneBits(-1i), u_input.a, all(vec4<bool>(global2.c.c, var_0, var_1.x, var_0))), -1i));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, 1000f, global2.a.c)), global2.b.a.a.x, -254f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.c.a.a.x, global2.c.a.a.x, var_2.a.x))) + _wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(var_2.b.x, 6u)]))), var_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.c.a.a.zyw + vec3<f32>(-284f, var_2.a.x, 717f))) * vec3<f32>(546f, _wgslsmith_f_op_f32(min(-243f, -401f)), -991f)));
    return global2.c;
}

fn func_1() -> Struct_4 {
    let var_0 = global2.a.a.b.yy;
    global1 = array<vec3<f32>, 6>();
    global2 = Struct_4(func_4(firstTrailingBit(vec3<u32>(4294967295u, func_2(), ~u_input.d))), global2.b, Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.c.a.a), global2.a.a.a, select(vec4<bool>(global2.c.a.c, global2.b.a.c, true, true), vec4<bool>(false, false, global2.c.a.c, global2.b.c), global2.c.c))), reverseBits(min(vec4<u32>(8596u, 68610u, u_input.d, global2.a.a.b.x), global2.a.b)), global2.c.a.c), ~global2.a.b, !global2.b.a.c));
    var var_1 = func_4(vec3<u32>(~(~1u) >> (u_input.d % 32u), min(~min(31353u, 0u), ~(~4294967295u)), 1u)).a;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_1.b.wx, vec2<u32>(global2.a.b.x, ~firstTrailingBit(~var_1.b.x))), 3u)];
    return global0[_wgslsmith_index_u32(abs(select(41984u >> (u_input.d % 32u), var_0.x, 1u < func_4(vec3<u32>(u_input.d, 54201u, global2.b.b.x)).a.b.x)), 3u)];
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_4 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 6>();
    global2 = func_5(global0[_wgslsmith_index_u32(45759u, 3u)], _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a.a.x, 1000f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.a.a.a.x)))), _wgslsmith_f_op_vec4_f32(min(global2.c.a.a, global2.b.a.a))), func_1());
    global2 = global0[_wgslsmith_index_u32(0u, 3u)];
    global2 = Struct_4(global2.c, global2.a, func_4(~min(select(global2.c.a.b.wzw, global2.b.a.b.wyz, vec3<bool>(false, true, true)), global2.a.b.zxx)));
    let var_0 = Struct_4(global2.a, func_1().b, Struct_3(global2.b.a, min(vec4<u32>(4294967295u, ~u_input.d, global2.c.a.b.x, 1u), min(firstLeadingBit(vec4<u32>(1u, u_input.d, 12001u, 46621u)), func_1().c.b)), any(vec2<bool>(true, u_input.d >= global2.a.a.b.x))));
    global0 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, countOneBits(1u), true), func_5(Struct_4(Struct_3(var_0.b.a, var_0.a.a.b, any(vec2<bool>(global2.c.c, global2.c.a.c))), Struct_3(func_1().a.a, countOneBits(global2.c.a.b), true), var_0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2.a.a.a)))), Struct_4(global2.a, Struct_3(func_4(vec3<u32>(4294967295u, 1u, 1u)).a, vec4<u32>(var_0.a.b.x, global2.a.b.x, var_0.b.a.b.x, global2.a.a.b.x) | vec4<u32>(30526u, 4294967295u, 31013u, var_0.c.a.b.x), global2.a.a.a.x != 1791f), global2.c)).c.b.x, global2.b.b.xx, vec3<u32>(62867u, ~global2.a.b.x, ~u_input.d | u_input.d), countOneBits(func_3(u_input.b.x).x) >> (firstTrailingBit(4294967295u) % 32u));
}

