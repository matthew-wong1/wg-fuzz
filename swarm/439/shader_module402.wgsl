struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-819f, 345f), vec2<f32>(-618f, -1000f), vec2<f32>(136f, -987f), vec2<f32>(1262f, -1256f), vec2<f32>(438f, -224f), vec2<f32>(-256f, 593f), vec2<f32>(386f, -1000f), vec2<f32>(108f, -1176f), vec2<f32>(1903f, -1663f), vec2<f32>(1362f, -610f), vec2<f32>(-875f, -596f), vec2<f32>(-204f, -727f), vec2<f32>(-1000f, 2401f), vec2<f32>(-867f, 1292f), vec2<f32>(1000f, -460f), vec2<f32>(-1177f, -480f));

var<private> global1: Struct_2;

var<private> global2: array<u32, 9> = array<u32, 9>(20558u, 717u, 1u, 59821u, 1u, 0u, 76611u, 7676u, 65209u);

var<private> global3: array<bool, 13>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_4(Struct_1(~u_input.d.x | _wgslsmith_mult_u32(global1.a.e, 19912u), _wgslsmith_f_op_f32(max(arg_0, 741f)), _wgslsmith_mod_vec2_i32(-global1.b.c, vec2<i32>(0i >> (0u % 32u), u_input.b & u_input.c.x)), global1.a.d, abs(global1.a.e)), u_input.c.x);
    var var_1 = var_0.a.c;
    var_0 = Struct_4(Struct_1(var_0.a.a | ~_wgslsmith_sub_u32(var_0.a.a, 48589u), arg_0, vec2<i32>(0i, (var_1.x & var_0.b) >> (var_0.a.e % 32u)), select(global1.a.d, var_0.a.d, select(vec4<bool>(true, true, false, global1.a.d.x), !var_0.a.d, all(vec4<bool>(var_0.a.d.x, global3[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.a.d.x, var_0.a.d.x)))), firstTrailingBit(min(0u | var_0.a.e, var_0.a.e << (4294967295u % 32u)))), min(-2147483647i, min(var_1.x ^ 20395i, var_1.x)) & ~u_input.c.x);
    var var_2 = Struct_4(Struct_1(reverseBits((var_0.a.a ^ 1520u) ^ firstLeadingBit(0u)), _wgslsmith_f_op_f32(-345f - -2575f), ~var_0.a.c, global1.b.d, global1.a.e), countOneBits(global1.a.c.x));
    let var_3 = var_1.x;
    return u_input.e.x;
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    var var_0 = global1.b;
    let var_1 = Struct_3(Struct_1(94621u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1831f * -359f) - _wgslsmith_f_op_f32(round(-319f))), _wgslsmith_f_op_f32(exp2(global1.b.b)))), ~vec2<i32>(24748i, global1.a.c.x) | _wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.c.x, 27879i), vec2<i32>(var_0.c.x, u_input.c.x)), !select(!var_0.d, select(global1.b.d, vec4<bool>(global3[_wgslsmith_index_u32(56261u, 13u)], true, false, true), global1.a.d.x), vec4<bool>(global1.a.d.x, false, false, false)), ~min(arg_0.x, 1u)), global3[_wgslsmith_index_u32(~arg_0.x, 13u)], Struct_1(var_0.a, _wgslsmith_f_op_f32(trunc(-191f)), var_0.c, global1.b.d, 0u), Struct_1(min(var_0.a, ~arg_0.x ^ ~894u), global1.a.b, vec2<i32>(-1i, u_input.b), var_0.d, u_input.d.x), all(select(!select(var_0.d.xz, var_0.d.xx, var_0.d.zw), var_0.d.zy, _wgslsmith_f_op_f32(sign(global1.b.b)) != _wgslsmith_div_f32(1404f, 208f))));
    var var_2 = var_1.a;
    var var_3 = firstTrailingBit(countOneBits(select(-vec4<i32>(9030i, 2147483647i, -496i, 2147483647i), -(vec4<i32>(1491i, var_0.c.x, 18229i, u_input.c.x) ^ vec4<i32>(0i, -9012i, var_1.c.c.x, global1.b.c.x)), var_0.d.x)));
    let var_4 = var_1.d;
    return ~firstTrailingBit(~vec4<u32>(23898u, _wgslsmith_mult_u32(4294967295u, u_input.e.x), 1u, 1u));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(global1.b, global3[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(30375u, 85987u)), 13u)] && true, Struct_1(abs(_wgslsmith_div_u32(58256u, 5255u) | ~u_input.e.x), _wgslsmith_f_op_f32(-global1.b.b), vec2<i32>(-1i) * -u_input.c.yz, !global1.b.d, ~global1.b.e), global1.a, any(global1.a.d));
    var var_1 = vec2<i32>(u_input.b, ~0i);
    global2 = array<u32, 9>();
    var var_2 = select(vec4<bool>(firstLeadingBit(func_2(global1.a.b)) >= min(~u_input.e.x, global1.a.a), any(vec4<bool>(false, false, global1.a.d.x, global1.b.b >= global1.a.b)), global3[_wgslsmith_index_u32(global1.b.a, 13u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_3(vec3<u32>(1u, var_0.d.a, 4294967295u)), ~(~vec4<u32>(0u, 1u, 1u, 7220u))), 13u)]), var_0.c.d, (global1.a.d.x == (var_1.x != _wgslsmith_mult_i32(50388i, global1.b.c.x))) & any(!var_0.c.d));
    var var_3 = u_input.a.ww;
    return global2[_wgslsmith_index_u32(global1.a.e, 9u)];
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 9>();
    let var_0 = -(~27060i);
    let var_1 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1u, u_input.a.x) ^ (_wgslsmith_div_u32(u_input.e.x, min(3449u, arg_0)) ^ arg_0)), 9u)];
    let var_2 = _wgslsmith_f_op_f32(min(2452f, 278f));
    let var_3 = global1.b;
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(firstTrailingBit(func_1()) & ((52919u << (global2[_wgslsmith_index_u32(49306u, 9u)] % 32u)) | func_1())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(277f, -195f))) * -1065f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 677f))), vec3<bool>(!(1u == ~global2[_wgslsmith_index_u32(4294967295u, 9u)]), global1.a.d.x, ~abs(global1.a.a) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 3268u), u_input.e.yx)));
    global2 = array<u32, 9>();
    global0 = array<vec2<f32>, 16>();
    global3 = array<bool, 13>();
    global0 = array<vec2<f32>, 16>();
    let var_1 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1347f) + var_0.b)), abs(-_wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.c.x, var_0.c.x), vec2<i32>(-1i, global1.a.c.x))), func_4(~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(30533u, 9u)], global1.b.a), _wgslsmith_f_op_f32(587f - _wgslsmith_f_op_f32(-global1.b.b)), !select(var_0.d.yyz, vec3<bool>(global1.a.d.x, global1.b.d.x, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.e.x, 13u)], global1.a.d.x, global3[_wgslsmith_index_u32(global1.a.a, 13u)]))).d, _wgslsmith_add_u32(4294967295u, ~var_0.a)), !(!any(vec2<bool>(false, var_0.d.x))), func_4(~28787u, 1000f, !(!(!vec3<bool>(var_0.d.x, global1.a.d.x, var_0.d.x)))), func_4(54180u, 134f, vec3<bool>(false, true, global3[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(global1.b.e, 64099u), ~1u), 13u)])), !(global3[_wgslsmith_index_u32(firstLeadingBit(max(4294967295u, global2[_wgslsmith_index_u32(u_input.d.x, 9u)])), 13u)] || true));
    var var_2 = ~u_input.e.xx;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~var_1.a.a, 0u);
}

