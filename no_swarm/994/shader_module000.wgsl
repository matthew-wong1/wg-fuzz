struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, true, false, false, false, false, false, true, false, true, false, true, true, true, true, false, true, false);

var<private> global1: bool;

var<private> global2: array<f32, 7> = array<f32, 7>(1517f, -1234f, -794f, -1608f, 225f, -456f, -613f);

var<private> global3: array<f32, 7> = array<f32, 7>(1710f, 450f, -1566f, -641f, 446f, 1000f, -265f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_mult_vec4_i32(select(~min(vec4<i32>(-7759i, 0i, -33398i, 2147483647i), vec4<i32>(1i, 50390i, -24513i, -1i)), vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(29074u, u_input.a, 0u, 0u) % vec4<u32>(32u)), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 7u)] <= global2[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_div_vec4_i32(firstLeadingBit(-vec4<i32>(0i, 25053i, -63042i, 0i)), vec4<i32>(1i, 1i, 1i, 1i))), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 3090u), ~0u) & abs(abs(u_input.a)), 7u)]), vec2<u32>(u_input.a, u_input.a), -32346i);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> i32 {
    global1 = any(select(vec3<bool>(arg_0.c.x, arg_0.b, select(!arg_0.b, false, any(vec3<bool>(true, arg_0.b, global0[_wgslsmith_index_u32(u_input.a, 21u)])))), !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], false)), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], arg_0.c.x, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, arg_0.c.x), true)));
    global2 = array<f32, 7>();
    global3 = array<f32, 7>();
    global3 = array<f32, 7>();
    let var_0 = Struct_4(vec4<i32>((arg_2 << (~u_input.a % 32u)) & arg_1, 2147483647i, 68757i, ~arg_2), Struct_2(-1180f), vec2<u32>(u_input.a, countOneBits(1u)), 2147483647i);
    return arg_2;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a, 21u)], !(func_3(Struct_1(global2[_wgslsmith_index_u32(var_0.c.x, 7u)], global0[_wgslsmith_index_u32(var_0.c.x, 21u)], vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 21u)])), 1i, var_0.a.x) <= 2147483647i));
    var var_2 = select(vec4<bool>((-9532i < countOneBits(var_0.a.x)) || var_1.x, global0[_wgslsmith_index_u32(~79321u, 21u)], (min(-4625i, -48017i) >> (_wgslsmith_clamp_u32(10929u, u_input.a, 12154u) % 32u)) > -1i, true), vec4<bool>(!global0[_wgslsmith_index_u32(var_0.c.x, 21u)] & (true | global0[_wgslsmith_index_u32(~16959u, 21u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0.c.x, 7u)], 1302f))) != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(44093u, 7u)] * _wgslsmith_f_op_f32(ceil(var_0.b.a))), any(var_1), any(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, true), !vec3<bool>(true, var_1.x, global0[_wgslsmith_index_u32(u_input.a, 21u)])))), global0[_wgslsmith_index_u32(13717u, 21u)]);
    global0 = array<bool, 21>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(select(1352f, -512f, false))))), true, select(!var_1, !var_2.zz, !var_2.x));
    return 18722u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1526f), global2[_wgslsmith_index_u32(16282u, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 7u)] + global2[_wgslsmith_index_u32(u_input.a, 7u)]) + -1276f), -2170f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -450f), global2[_wgslsmith_index_u32(func_1(), 7u)], 875f, _wgslsmith_f_op_f32(f32(-1f) * -856f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(61854u, 7u)], -1253f, 260f, 139f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(955f, -1731f, -449f, global2[_wgslsmith_index_u32(u_input.a, 7u)]) * vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], 1618f, global2[_wgslsmith_index_u32(u_input.a, 7u)]))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.xy)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(325f, global2[_wgslsmith_index_u32(u_input.a, 7u)]), var_0.wy)) + _wgslsmith_f_op_vec2_f32(-var_0.xw)), _wgslsmith_f_op_vec2_f32(min(var_0.ww, vec2<f32>(-1404f, -1000f))), true | (true | global0[_wgslsmith_index_u32(u_input.a, 21u)]))))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 21u)];
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, ~firstTrailingBit(-42979i)), -(0i >> (_wgslsmith_clamp_u32(1u, u_input.a, u_input.a) % 32u)), abs(~(-9285i))), ~abs(firstTrailingBit(abs(vec3<i32>(1i, 0i, 0i)))));
    var var_4 = -1100f;
    var var_5 = all(!select(vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], true, global0[_wgslsmith_index_u32(116855u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))), vec2<bool>(global0[_wgslsmith_index_u32(~76029u, 21u)], u_input.a > u_input.a), select(!vec2<bool>(global0[_wgslsmith_index_u32(25049u, 21u)], true), select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(50930u, 21u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)])), var_3 == var_3)));
    var var_6 = u_input.a;
    var var_7 = _wgslsmith_add_u32(~(~u_input.a ^ u_input.a), _wgslsmith_add_u32(~u_input.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 47867u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(2495f, -882f, -416f, 862f), var_0.x, ~_wgslsmith_mod_i32(~firstTrailingBit(-3913i), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_3, 15864i, var_3), vec4<i32>(var_3, var_3, 2147483647i, var_3)), -var_3)));
}

