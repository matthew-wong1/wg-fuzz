struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 10> = array<bool, 10>(true, false, false, true, false, true, false, false, true, false);

var<private> global2: array<i32, 1> = array<i32, 1>(2033i);

var<private> global3: array<f32, 6> = array<f32, 6>(-1578f, -1259f, -168f, 2441f, 510f, 854f);

var<private> global4: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.a.x;
    global3 = array<f32, 6>();
    global3 = array<f32, 6>();
    global1 = array<bool, 10>();
    global1 = array<bool, 10>();
    return ~vec3<u32>(firstTrailingBit(abs(global4.x) | ~global4.x), ~13973u, 21546u);
}

fn func_2() -> Struct_1 {
    var var_0 = abs(~vec3<u32>(_wgslsmith_mod_u32(0u, global4.x), ~global4.x, reverseBits(4294967295u)) >> (func_3() % vec3<u32>(32u)));
    let var_1 = vec2<u32>(~1u, global4.x);
    global3 = array<f32, 6>();
    var var_2 = ~_wgslsmith_mod_u32(var_1.x | _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_0.x), vec3<u32>(19507u, var_0.x, var_1.x) | vec3<u32>(var_1.x, global4.x, 17387u)), 0u);
    var var_3 = vec3<u32>(reverseBits(_wgslsmith_sub_u32(firstLeadingBit(var_0.x), func_3().x)) << (min(firstLeadingBit(global4.x), countOneBits(var_1.x)) % 32u), ~(~0u) << (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(28217u, var_0.x), 0u), _wgslsmith_mult_u32(var_0.x, var_1.x) & min(global4.x, var_0.x)) % 32u), func_3().x);
    return Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), all(select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(var_0.x, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(3371u, 10u)], true, global1[_wgslsmith_index_u32(23641u, 10u)]), global1[_wgslsmith_index_u32(4294967295u, 10u)])), !(global1[_wgslsmith_index_u32(global4.x, 10u)] & true)), !(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_3.x, 10u)]))), !vec3<bool>(true || global1[_wgslsmith_index_u32(4294967295u, 10u)], all(vec4<bool>(false, global1[_wgslsmith_index_u32(28926u, 10u)], global1[_wgslsmith_index_u32(var_3.x, 10u)], true)), global1[_wgslsmith_index_u32(9695u, 10u)])));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_1 {
    global4 = min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(27081u, 100024u, global4.x) | vec3<u32>(82060u, arg_0, 7024u), vec3<u32>(4294967295u, 13379u, 0u)) << (22516u % 32u), 0u), firstLeadingBit(abs(~vec2<u32>(55965u, arg_0) >> (~vec2<u32>(arg_0, 36246u) % vec2<u32>(32u)))));
    let var_0 = arg_1;
    global1 = array<bool, 10>();
    let var_1 = var_0;
    let var_2 = u_input.b;
    return Struct_1(!(!var_1.c.a));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    global0 = 1659f;
    global2 = array<i32, 1>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(abs(~global4.x), 6u)] + _wgslsmith_f_op_f32(f32(-1f) * -156f)) + global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~35032u | _wgslsmith_div_u32(1u, global4.x)), 6u)]));
    var var_1 = vec4<bool>(arg_0.a.x, true, true, !arg_1.a.x);
    var var_2 = arg_1;
    return Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 6u)], global3[_wgslsmith_index_u32(681u, 6u)]) - vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 6u)], global3[_wgslsmith_index_u32(global4.x, 6u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(589f, global3[_wgslsmith_index_u32(global4.x, 6u)])), vec2<f32>(-1871f, _wgslsmith_f_op_f32(1090f * 880f))), true)), vec2<i32>(_wgslsmith_add_i32(1i, global2[_wgslsmith_index_u32(global4.x, 1u)] >> (79550u % 32u)) | -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 0i & (u_input.a.x >> (_wgslsmith_add_u32(4294967295u, global4.x) % 32u))), arg_1.c.a);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> vec4<u32> {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, ~select(6529u, 26120u, false)), arg_1), _wgslsmith_add_vec3_u32(arg_1, countOneBits(vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(49138u, arg_1.x, 1028u), ~5146u))));
    let var_1 = func_5(Struct_1(select(vec3<bool>(false, arg_3, true), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_2, 10u)]), false)), Struct_2(vec4<bool>(any(!vec4<bool>(arg_3, arg_3, true, global1[_wgslsmith_index_u32(global4.x, 10u)])), any(select(vec2<bool>(false, false), vec2<bool>(arg_3, false), false)), arg_3, any(vec3<bool>(true, arg_3, arg_3))), Struct_1(!(!vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 10u)], true, arg_3))), func_4(arg_2, Struct_2(!vec4<bool>(arg_3, global1[_wgslsmith_index_u32(global4.x, 10u)], arg_3, global1[_wgslsmith_index_u32(arg_1.x, 10u)]), func_2(), func_2()), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1712f, -983f) - vec2<f32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(14847u, 6u)])), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a), !vec3<bool>(false, arg_3, false)), firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(arg_0, global2[_wgslsmith_index_u32(arg_2, 1u)]))))));
    var var_2 = func_4((arg_1.x | _wgslsmith_div_u32(1u, global4.x)) ^ ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(41323u, 5379u, global4.x, 1u), vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 56464u)), vec4<u32>(0u, arg_2, var_0.x, 0u)), Struct_2(select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], arg_3, global1[_wgslsmith_index_u32(arg_1.x, 10u)], false), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 10u)], true, false, arg_3), vec4<bool>(var_1.c.x, true, global1[_wgslsmith_index_u32(0u, 10u)], true)), select(vec4<bool>(true, false, true, arg_3), vec4<bool>(var_1.c.x, false, false, false), vec4<bool>(false, var_1.c.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_3)), select(vec4<bool>(true, true, var_1.c.x, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 10u)], global1[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(var_1.c.x, global1[_wgslsmith_index_u32(27547u, 10u)], false, var_1.c.x))), vec4<bool>(!arg_3, true, !global1[_wgslsmith_index_u32(77954u, 10u)], false), select(!vec4<bool>(true, false, false, arg_3), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.x, 10u)], var_1.c.x), select(vec4<bool>(arg_3, false, false, true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_0.x, 10u)], var_1.c.x), false))), Struct_1(vec3<bool>(false, var_1.a.x != 1000f, true)), Struct_1(var_1.c)), func_5(func_2(), Struct_2(!vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2, 10u)], true, arg_3), Struct_1(!vec3<bool>(var_1.c.x, arg_3, false)), func_2())), _wgslsmith_div_vec2_i32(~(-vec2<i32>(-28631i, -2147483647i)) ^ vec2<i32>(_wgslsmith_sub_i32(17479i, arg_0), -u_input.a.x), _wgslsmith_div_vec2_i32(select(select(vec2<i32>(4635i, arg_0), vec2<i32>(var_1.b.x, 2147483647i), vec2<bool>(true, true)), u_input.a, true), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, u_input.b, -2147483647i, arg_0), vec4<i32>(-30539i, u_input.b, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 1u)]))))));
    let var_3 = Struct_1(func_5(Struct_1(var_2.a), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)], var_1.c.x, true, select(global1[_wgslsmith_index_u32(28637u, 10u)], global1[_wgslsmith_index_u32(6370u, 10u)], false)), func_4(28588u, Struct_2(vec4<bool>(false, true, false, false), Struct_1(var_1.c), Struct_1(vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 10u)]))), var_1, firstTrailingBit(u_input.a)), Struct_1(!var_2.a))).c);
    var var_4 = !select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(4312u, 10u)], arg_3, var_2.a.x, var_3.a.x), !vec4<bool>(var_1.c.x, var_1.c.x, true, false), all(vec4<bool>(var_1.c.x, arg_3, false, true))), !vec4<bool>(global1[_wgslsmith_index_u32(arg_2, 10u)], global1[_wgslsmith_index_u32(arg_2, 10u)], global1[_wgslsmith_index_u32(15086u, 10u)], true), vec4<bool>(var_3.a.x, u_input.b != global2[_wgslsmith_index_u32(2787u, 1u)], !var_1.c.x, var_3.a.x)), vec4<bool>(func_4(global4.x, Struct_2(vec4<bool>(true, var_1.c.x, false, false), Struct_1(vec3<bool>(arg_3, true, false)), var_3), Struct_3(vec2<f32>(-1312f, var_1.a.x), vec2<i32>(u_input.a.x, -1i), vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], true, false)), var_1.b << (var_0.zz % vec2<u32>(32u))).a.x, !(!var_1.c.x), false, !(var_3.a.x | global1[_wgslsmith_index_u32(global4.x, 10u)])), !(!var_2.a.x));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(~31091u, _wgslsmith_dot_vec3_u32(select(arg_1, _wgslsmith_add_vec3_u32(arg_1, arg_1), !var_1.c), abs(arg_1)), countOneBits(~var_0.x), reverseBits(1u)), vec4<u32>(~select(global4.x, max(1u, 7783u), func_4(38051u, Struct_2(vec4<bool>(arg_3, false, true, false), Struct_1(var_3.a), Struct_1(var_1.c)), Struct_3(var_1.a, vec2<i32>(-1i, var_1.b.x), var_4.zxx), u_input.a).a.x), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, select(global4.x, 4294967295u, var_1.c.x)), 1u), var_0.x, 43309u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(29229u, 1u)), vec2<u32>(2507u, _wgslsmith_add_u32(global4.x, global4.x))), vec2<u32>(~select(global4.x, global4.x, false), ~max(global4.x, 0u))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(func_1(global2[_wgslsmith_index_u32(4294967295u, 1u)], vec3<u32>(global4.x, global4.x, 30022u), 1u, false), vec4<u32>(49438u, 4294967295u, global4.x, 21092u))), abs(global4.x)), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(22842u >> (0u % 32u), countOneBits(~global4.x)), 10u)], any(vec4<bool>(false, global1[_wgslsmith_index_u32(17662u, 10u)], false, global1[_wgslsmith_index_u32(47249u, 10u)])) & !(!global1[_wgslsmith_index_u32(106047u, 10u)])));
    global1 = array<bool, 10>();
    global2 = array<i32, 1>();
    global0 = -727f;
    let var_0 = Struct_2(vec4<bool>(any(func_2().a.xy), false, true, !(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1224u, 6u)] + -275f) > global3[_wgslsmith_index_u32(global4.x, 6u)])), func_4(global4.x, Struct_2(!vec4<bool>(true, global1[_wgslsmith_index_u32(global4.x, 10u)], false, false), func_2(), Struct_1(func_5(Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)])), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], true, false, true), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)])), Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)])))).c)), func_5(func_4(reverseBits(71715u), Struct_2(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(1u, 10u)]), Struct_1(vec3<bool>(false, false, global1[_wgslsmith_index_u32(global4.x, 10u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)]))), func_5(Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(global4.x, 10u)], false)), Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], true, true, true), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], false)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)])))), ~vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], -1i)), Struct_2(select(vec4<bool>(true, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(25815u, 10u)], false, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], false)), func_4(global4.x, Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<bool>(true, true, global1[_wgslsmith_index_u32(global4.x, 10u)])), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(global4.x, 10u)]))), Struct_3(vec2<f32>(234f, -132f), u_input.a, vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), u_input.a))), vec2<i32>(reverseBits(u_input.a.x), _wgslsmith_mult_i32(7382i, 0i)) ^ (-u_input.a & ~vec2<i32>(global2[_wgslsmith_index_u32(27801u, 1u)], global2[_wgslsmith_index_u32(global4.x, 1u)]))), Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], ~global4.x < func_1(0i, vec3<u32>(global4.x, 39299u, global4.x), 1u, global1[_wgslsmith_index_u32(60057u, 10u)]).x)));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(22867u, 6u)] - -422f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~(vec3<u32>(global4.x, global4.x, 1u) & vec3<u32>(global4.x, global4.x, 18540u)), _wgslsmith_div_vec3_u32(~vec3<u32>(global4.x, global4.x, global4.x), vec3<u32>(5636u, global4.x, 37341u))), vec4<i32>(select(_wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(4294967295u, 1u)], ~(-1i)), 0i, !var_0.c.a.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u >> (0u % 32u), global4.x), 1u)], -44079i, ~global2[_wgslsmith_index_u32(global4.x, 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))) * var_1)), abs(abs(reverseBits(~vec3<u32>(global4.x, 1u, 1u)))));
}

