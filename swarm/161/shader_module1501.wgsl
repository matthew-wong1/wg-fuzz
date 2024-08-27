struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_4,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>) -> vec3<f32> {
    var var_0 = abs(~(~_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 0u, u_input.a, u_input.a), vec4<u32>(53936u, 40014u, u_input.a, 1u), vec4<bool>(global0[_wgslsmith_index_u32(10528u, 22u)], false, global0[_wgslsmith_index_u32(u_input.a, 22u)], false)), vec4<u32>(1u, 1u, u_input.a, 1u))));
    var var_1 = Struct_3(Struct_2(arg_0), Struct_1(~(_wgslsmith_div_u32(u_input.a, var_0.x) << (var_0.x % 32u))));
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(f32(-1f) * -682f))))), Struct_1(max(min(6782u, var_1.b.a << (var_1.b.a % 32u)), var_1.b.a)));
    global0 = array<bool, 22>();
    var_0 = vec4<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.zzy, vec3<u32>(33115u, var_0.x, var_1.b.a)) & min(vec3<u32>(11370u, var_0.x, 4294967295u), var_0.ywz), reverseBits(_wgslsmith_div_vec3_u32(var_0.xwy, vec3<u32>(13904u, 65575u, 4294967295u)))), var_1.b.a, var_1.b.a, ~(~4294967295u) ^ ~var_1.b.a);
    return vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a - var_1.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(998f * 316f))))));
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -181f), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1498f)), -298f, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], true, true)))))), Struct_3(Struct_2(arg_3.x), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(44790u, arg_2.b.a), vec2<u32>(u_input.a, 4745u)))), Struct_4(19577u), arg_1.a, arg_2);
    global0 = array<bool, 22>();
    var var_1 = arg_1;
    var var_2 = -882f;
    var_2 = -1000f;
    return var_1.e.a;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> f32 {
    var var_0 = func_3(arg_1, Struct_5(_wgslsmith_f_op_vec3_f32(func_2(arg_1, vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -6473i, 24210i, select(15824i, -29936i, global0[_wgslsmith_index_u32(u_input.a, 22u)])))), Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_1)), Struct_1(abs(11512u))), arg_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 381f, -327f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -2247f))), vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), -1000f, 1f)), Struct_3(Struct_2(_wgslsmith_f_op_f32(1427f * 1871f)), Struct_1(1u))), Struct_3(Struct_2(-366f), Struct_1(_wgslsmith_sub_u32(67954u, 11821u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-617f, -316f, 391f) * vec3<f32>(arg_1, arg_1, -554f))))));
    var var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(4616i, i32(-1i) * -1i, 1i), select(-vec3<i32>(21599i, -2147483647i, -2147483647i), max(vec3<i32>(2147483647i, -40254i, -2147483647i), vec3<i32>(-1i, -2147483647i, 8643i)), any(vec3<bool>(true, true, true)))), vec3<i32>(~(-2147483647i), -52034i, _wgslsmith_dot_vec3_i32(vec3<i32>(-50683i, -12946i, 1i), vec3<i32>(41825i, -1i, 460i))) << (select(~vec3<u32>(u_input.a, 4294967295u, 28576u), ~vec3<u32>(4294967295u, u_input.a, 19622u), select(vec3<bool>(false, false, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.a, 22u)], arg_0, false), global0[_wgslsmith_index_u32(arg_2.a, 22u)])) % vec3<u32>(32u)));
    var_1 = countOneBits(_wgslsmith_mod_vec3_i32(countOneBits(~vec3<i32>(14109i, var_1.x, var_1.x)), abs(abs(-vec3<i32>(var_1.x, 108264i, var_1.x)))));
    var var_2 = true;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)))), Struct_1(_wgslsmith_add_u32(~u_input.a, 49511u)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1619f)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(f32(-1f) * -2072f))), var_0.a);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32) -> u32 {
    global0 = array<bool, 22>();
    let var_0 = select(select(!vec4<bool>(!global0[_wgslsmith_index_u32(20485u, 22u)], !global0[_wgslsmith_index_u32(7165u, 22u)], global0[_wgslsmith_index_u32(select(arg_0, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 22u)]), 22u)], true), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0, 105224u), 22u)], global0[_wgslsmith_index_u32(firstTrailingBit(~arg_0), 22u)], global0[_wgslsmith_index_u32(1u, 22u)] | global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(54380u, arg_0), 22u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(31383u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)]))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(19628u, 22u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 22u)])))), select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(86016u, 22u)], false, global0[_wgslsmith_index_u32(arg_0, 22u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4739u, 22u)], true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)], true))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, false, global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(78275u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)]), !vec4<bool>(global0[_wgslsmith_index_u32(107051u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)])), true), vec4<bool>(min(u_input.a, 2198u) > arg_0, !all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 22u)], false, global0[_wgslsmith_index_u32(6776u, 22u)])), !(!global0[_wgslsmith_index_u32(arg_0, 22u)]), false), global0[_wgslsmith_index_u32(~(arg_0 ^ arg_0), 22u)]), true);
    global0 = array<bool, 22>();
    var var_1 = ~_wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-29296i, -14415i, 1i, -2147483647i)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(-25346i, 2147483647i), countOneBits(23270i), ~31587i)) == _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 55779i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<i32>(34958i, -28697i)), abs(vec2<i32>(1i, -46211i))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), firstTrailingBit(vec2<i32>(1i, 1i))));
    let var_2 = true | select(var_0.x, !(!any(var_0.ywz)), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(21601u, 106817u, u_input.a) & vec3<u32>(0u, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 35030u, 0u) & vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_add_u32(firstTrailingBit(u_input.a), ~4294967295u), u_input.a, 20256u));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(514f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1397f, 1000f) * 505f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1487f, -209f)), 950f)))));
    let var_2 = ~4294967295u;
    let var_3 = Struct_1(func_4(34898u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(trunc(var_1))) * _wgslsmith_f_op_f32(select(1000f, 660f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2, var_0.x, var_0.x), 22u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f - _wgslsmith_f_op_f32(func_1(false, var_1, Struct_4(1u)))))));
    var var_4 = Struct_3(func_3(_wgslsmith_f_op_f32(abs(var_1)), Struct_5(vec3<f32>(var_1, var_1, var_1), Struct_3(Struct_2(1457f), Struct_1(u_input.a)), Struct_4(firstLeadingBit(15261u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(536f, 325f, 250f) * vec3<f32>(var_1, -1000f, 1120f))), Struct_3(Struct_2(-354f), var_3)), Struct_3(func_3(_wgslsmith_div_f32(var_1, -1704f), Struct_5(vec3<f32>(var_1, 1056f, -250f), Struct_3(Struct_2(var_1), Struct_1(105010u)), Struct_4(var_0.x), vec3<f32>(302f, 1000f, var_1), Struct_3(Struct_2(var_1), var_3)), Struct_3(Struct_2(-1979f), Struct_1(55479u)), vec3<f32>(var_1, var_1, 345f)), var_3), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(-632f, select(vec4<i32>(2147483647i, 4634i, 0i, 26904i), vec4<i32>(10125i, -7487i, 1i, 1i), vec4<bool>(true, false, global0[_wgslsmith_index_u32(var_3.a, 22u)], true))))))), Struct_1(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(-9252i ^ select(13568i, -24993i, true))), ~vec3<u32>(~13782u, ~1u, abs(_wgslsmith_dot_vec4_u32(var_0, var_0))), vec3<f32>(var_1, -444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1066f, _wgslsmith_f_op_f32(-var_4.a.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_3(var_4.a.a, Struct_5(vec3<f32>(var_4.a.a, var_4.a.a, var_1), Struct_3(Struct_2(var_4.a.a), var_4.b), Struct_4(var_3.a), vec3<f32>(1000f, -1000f, 1301f), Struct_3(Struct_2(-1552f), var_3)), Struct_3(Struct_2(-489f), var_4.b), vec3<f32>(-1338f, var_1, -175f)).a, 1f, _wgslsmith_div_f32(355f, var_1)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, 841f, var_4.a.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.a, var_1, var_4.a.a) - vec3<f32>(2947f, var_4.a.a, -1162f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 462f, var_4.a.a) + vec3<f32>(509f, -513f, -912f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 576f, 1239f) + vec3<f32>(var_4.a.a, var_4.a.a, var_4.a.a)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 793f, var_1), vec3<f32>(374f, var_4.a.a, var_1), true))))), var_4.a.a);
}

