struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 442f;

var<private> global1: u32;

var<private> global2: array<bool, 6>;

var<private> global3: array<f32, 14>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(vec2<bool>(true, all(vec2<bool>(true, true))), select(vec4<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(arg_1.b.x, 0u, arg_1.a) ^ arg_1.b.wyy), 6u)], global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], all(vec2<bool>(global2[_wgslsmith_index_u32(0u, 6u)], false))), !select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], false, true, global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(99185u, 6u)], true, false, global2[_wgslsmith_index_u32(4294967295u, 6u)])), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], global2[_wgslsmith_index_u32(50290u, 6u)], false, global2[_wgslsmith_index_u32(u_input.a, 6u)]), !global2[_wgslsmith_index_u32(u_input.a, 6u)]), select(vec4<bool>(true, true, !global2[_wgslsmith_index_u32(u_input.a, 6u)], true), !vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], false, true), all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 6u)], false, global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.a, 6u)]), false)))), -2147483647i, i32(-1i) * -(~(~1i)));
    global0 = -256f;
    global1 = _wgslsmith_mod_u32(7816u, arg_1.b.x);
    let var_1 = Struct_1(var_0.b.yw, vec4<bool>(true, true, true, true), -2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(abs(0i), -51685i, 9423i, -var_0.d), ~(-vec4<i32>(1i, -14420i, -20045i, 2147483647i))));
    global2 = array<bool, 6>();
    return 4294967295u;
}

fn func_2() -> vec4<bool> {
    global3 = array<f32, 14>();
    var var_0 = vec2<bool>(!(!(u_input.a == u_input.a)), true);
    global3 = array<f32, 14>();
    var var_1 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~max(u_input.a, func_3(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 14u)], -498f), Struct_2(u_input.a, vec4<u32>(56041u, u_input.a, 68018u, 22045u), 723f))), 14u)] - 1000f);
    var var_2 = ~vec4<u32>(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, 12589u) | u_input.a, _wgslsmith_div_u32(~4294967295u, ~u_input.a) & 1u);
    return select(!select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], true, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(var_2.x, 6u)], true, global2[_wgslsmith_index_u32(0u, 6u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 6u)], var_0.x)), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], true, global2[_wgslsmith_index_u32(u_input.a, 6u)], true), select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(1u, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], var_0.x, false, true), global2[_wgslsmith_index_u32(u_input.a, 6u)])), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 6u)], true, true)), true), !select(!(!vec4<bool>(var_0.x, true, true, true)), vec4<bool>(true | global2[_wgslsmith_index_u32(0u, 6u)], var_0.x, var_0.x, global2[_wgslsmith_index_u32(var_2.x, 6u)]), select(!vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 6u)], var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, global2[_wgslsmith_index_u32(1u, 6u)]))), vec4<bool>(false, !(!select(var_0.x, true, true)), global2[_wgslsmith_index_u32(~(u_input.a >> (u_input.a % 32u)), 6u)], all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2((~func_3(1853f, Struct_2(arg_1.a, arg_1.b, arg_1.c)) << (8840u % 32u)) >> (arg_1.b.x % 32u), firstLeadingBit(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(68039u, u_input.a, u_input.a, arg_2), vec4<u32>(65508u, 21892u, u_input.a, 11821u)), arg_1.b))), -1468f);
    global2 = array<bool, 6>();
    var var_1 = arg_0;
    var var_2 = var_1.a.x;
    let var_3 = global2[_wgslsmith_index_u32(~4294967295u, 6u)];
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(arg_1.c));
    global1 = 0u;
    global2 = array<bool, 6>();
    global3 = array<f32, 14>();
    let var_1 = vec3<i32>(i32(-1i) * -1i, -(~select(1i, -2147483647i, true)), ~1i) << (abs(vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_1.b.xxx, vec3<u32>(arg_1.a, 0u, 23483u)), ~u_input.a >> (~arg_1.b.x % 32u), 38933u)) % vec3<u32>(32u));
    return func_4(Struct_1(vec2<bool>(any(vec2<bool>(true, arg_0)) == true, true), func_2(), firstTrailingBit(~(~41987i)), _wgslsmith_dot_vec2_i32(var_1.xx, ~var_1.xx)), arg_1, u_input.a, -_wgslsmith_add_vec4_i32(min(~vec4<i32>(-55430i, 20664i, 0i, var_1.x), abs(vec4<i32>(var_1.x, var_1.x, -2147483647i, var_1.x))), -vec4<i32>(0i, -1i, var_1.x, var_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = countOneBits(arg_1.b);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1697f, 1354f), vec2<f32>(912f, arg_1.c), global2[_wgslsmith_index_u32(arg_0.a, 6u)])) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3[_wgslsmith_index_u32(5345u, 14u)], -912f))))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1174f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1474f)), -504f), func_4(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(38735u, 6u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(18988u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<bool>(global2[_wgslsmith_index_u32(6658u, 6u)], true, global2[_wgslsmith_index_u32(arg_0.b.x, 6u)], false), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(61154u, 6u)], global2[_wgslsmith_index_u32(var_0.x, 6u)])), -10141i, ~1i), arg_0, max(60492u, select(61337u, 4294967295u, global2[_wgslsmith_index_u32(11392u, 6u)])), ~select(vec4<i32>(-1561i, -41136i, 723i, 2147483647i), vec4<i32>(-1i, 3620i, 0i, 2147483647i), true)).c));
    var var_2 = 27549i;
    return select(vec3<bool>(global2[_wgslsmith_index_u32(~arg_0.a, 6u)], true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), var_0.xx), select(arg_1.b.ww, vec2<u32>(arg_1.b.x, u_input.a), vec2<bool>(true, true))), 6u)]), func_2().wyy, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(u_input.a, 14u)];
    global3 = array<f32, 14>();
    let var_0 = 1i;
    global2 = array<bool, 6>();
    global2 = array<bool, 6>();
    var var_1 = select(func_5(Struct_2(~firstTrailingBit(4294967295u), ~vec4<u32>(0u, u_input.a, 4294967295u, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global3[_wgslsmith_index_u32(u_input.a, 14u)]) + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 14u)]))), func_1(false | (global2[_wgslsmith_index_u32(1u, 6u)] || false), Struct_2(23795u, countOneBits(vec4<u32>(75542u, 0u, 58069u, 0u)), _wgslsmith_f_op_f32(-372f - -484f)))), !(!(!func_5(Struct_2(u_input.a, vec4<u32>(u_input.a, 1u, u_input.a, 27788u), 2116f), Struct_2(54685u, vec4<u32>(u_input.a, 0u, 64891u, 4294967295u), global3[_wgslsmith_index_u32(u_input.a, 14u)])))), select(!(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 6u)])), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(43269u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)])), !global2[_wgslsmith_index_u32(0u >> (~4294967295u % 32u), 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.a)) ^ _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(66704u, 13488u)), vec2<u32>(~u_input.a, abs(1816u)), vec2<u32>(~u_input.a, u_input.a)), ~firstLeadingBit(vec2<u32>(u_input.a, _wgslsmith_add_u32(19329u, u_input.a))), global3[_wgslsmith_index_u32(15872u, 14u)], max(_wgslsmith_add_i32((var_0 << (u_input.a % 32u)) & _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(-2147483647i, var_0, -5049i)), ~var_0), _wgslsmith_mult_i32(min(70078i, 13657i), _wgslsmith_sub_i32(var_0, var_0)) >> (~reverseBits(39904u) % 32u)));
}

