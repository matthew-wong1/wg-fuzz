struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global1: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(44850u, 4294967295u), vec2<u32>(4294967295u, 0u));

var<private> global2: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(12452i, 14724i, 1i), vec3<i32>(-1i, 2147483647i, 20512i), vec3<i32>(-35111i, -6586i, 2147483647i), vec3<i32>(-29759i, 0i, i32(-2147483648)), vec3<i32>(3562i, 1i, -1i), vec3<i32>(-1i, -20172i, 8671i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(35930i, i32(-2147483648), 10251i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-57120i, -54858i, 0i), vec3<i32>(-47625i, 18647i, -48259i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(0i, 0i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-52783i, 4135i, -1i), vec3<i32>(0i, i32(-2147483648), -4054i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) + -609f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2410f)) - _wgslsmith_f_op_f32(abs(602f)))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1839f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(325f, 336f)), _wgslsmith_f_op_f32(526f - 275f))))))));
    let var_1 = ~u_input.b;
    var var_2 = Struct_1(_wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.a, u_input.a, var_1, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 115283u, global0.x), vec4<u32>(62474u, u_input.b, var_1, global0.x)), all(vec2<bool>(true, false))) & vec4<u32>(u_input.b, 4294967295u, ~248u, global0.x), vec4<u32>(abs(1u), ~global0.x ^ _wgslsmith_div_u32(var_1, var_1), 1u, _wgslsmith_mult_u32(abs(var_1), ~var_1))), ~(~(~abs(1u))));
    var var_3 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a), u_input.a, min(var_1 | 23792u, select(~0u, firstTrailingBit(var_2.b), false)), var_2.b), ~38895u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-255f)));
    return select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), !vec2<bool>(true, all(vec2<bool>(false, false)))), vec2<bool>(true, true), vec2<bool>(true, true));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(31736u, 2u)];
    var var_0 = !(!(!select(func_3(), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1));
    let var_2 = Struct_2(all(!select(!vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, true), var_0.x), var_0.x)));
    var var_3 = Struct_2(!select(true | !var_0.x, !(var_0.x & var_2.a), false));
    return Struct_1(vec4<u32>(u_input.b, u_input.a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(81195u, u_input.b), vec2<u32>(u_input.b, 99946u))), countOneBits(~(~4294967295u))), _wgslsmith_mod_u32(max(40044u | u_input.a, ~_wgslsmith_mod_u32(u_input.b, global0.x)), max(u_input.b, 0u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = -min(max(firstLeadingBit(vec2<i32>(arg_0.x, arg_0.x)), abs(arg_0)), _wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.x, 1i), vec2<i32>(arg_0.x, arg_0.x))) ^ vec2<i32>(-16898i, 1i);
    global2 = array<vec3<i32>, 16>();
    global2 = array<vec3<i32>, 16>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(342f))))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 217f, true)), 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f - _wgslsmith_f_op_f32(2209f * -1455f)))));
    return Struct_2(func_3().x);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = func_2(_wgslsmith_mod_i32(-(~countOneBits(8043i)), 2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1668f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(173f)))))))).a.yx;
    let var_0 = Struct_2(func_4(firstLeadingBit(vec2<i32>(1i, 26192i)), func_2(_wgslsmith_sub_i32(-1i, 22484i), _wgslsmith_f_op_f32(min(-1725f, -1000f))), func_4(vec2<i32>(8468i, 51842i), Struct_1(vec4<u32>(u_input.b, global0.x, 29531u, 0u), global0.x), arg_0)).a & any(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a)));
    let var_1 = Struct_2(false);
    global1 = array<vec2<u32>, 2>();
    let var_2 = -996f;
    return func_4(select(vec2<i32>(_wgslsmith_add_i32(1i, 1i), reverseBits(-47770i)), vec2<i32>(1i, 1i), reverseBits(~u_input.a) != u_input.b), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(1i, reverseBits(1606i))), var_2), arg_0);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = -509f;
    global2 = array<vec3<i32>, 16>();
    let var_1 = arg_2.www;
    var var_2 = -_wgslsmith_mod_vec3_i32(firstTrailingBit(global2[_wgslsmith_index_u32(max(global0.x, reverseBits(u_input.a)), 16u)]), firstLeadingBit(global2[_wgslsmith_index_u32((arg_1.a.x | 0u) | _wgslsmith_dot_vec2_u32(var_1.xx, arg_1.a.yx), 16u)]));
    var var_3 = Struct_2(true);
    return func_5(func_4(-vec2<i32>(i32(-1i) * -1i, -9008i), func_2(9814i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1536f, 874f))), arg_0));
}

fn func_6(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec4_i32(~(-vec4<i32>(arg_3, 1i, arg_1, arg_3)) >> (~(~vec4<u32>(1u, global0.x, 4926u, u_input.b)) % vec4<u32>(32u)), vec4<i32>(-(~2147483647i), 1i, ~_wgslsmith_mod_i32(arg_3, arg_3), _wgslsmith_mod_i32(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-26272i, arg_1), vec2<i32>(19426i, 1i))))) & vec4<i32>(arg_3, arg_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(global2[_wgslsmith_index_u32(0u, 16u)], vec3<i32>(arg_1, 2147483647i, 1i)), vec3<i32>(-6586i, 10497i, arg_3) << (vec3<u32>(12198u, 1u, arg_0.x) % vec3<u32>(32u))), arg_3), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(15697i, arg_1, 1i, 2147483647i), vec4<i32>(arg_1, arg_1, arg_3, arg_3)), -vec4<i32>(arg_3, -2147483647i, arg_3, arg_1)));
    let var_1 = arg_2;
    return ~vec4<u32>(arg_0.x, u_input.a, 59509u, 1u ^ reverseBits(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 7508u, u_input.b, 0u), vec4<u32>(global0.x, u_input.b, u_input.b, u_input.a))), ~func_6(abs(vec2<u32>(87848u, global0.x)), 1i, func_1(Struct_2(false), Struct_1(vec4<u32>(global0.x, 11497u, global0.x, 0u), u_input.a), vec4<u32>(0u, 1u, global0.x, global0.x)), -1i << (global0.x % 32u))));
    var var_1 = ~var_0;
    var_1 = u_input.a;
    let var_2 = !(!(!func_3()));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(283f - -164f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f - 314f) - -1695f)))), -1341f));
    global2 = array<vec3<i32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(-(i32(-1i) * -71991i)), 1i));
}

