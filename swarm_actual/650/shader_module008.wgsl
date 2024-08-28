struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 53647i);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(2651u, 13934u), -678f, 0u, true, vec2<bool>(false, true));

var<private> global2: array<u32, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(0i, select(select(_wgslsmith_mod_i32(_wgslsmith_add_i32(-33561i, 27795i), reverseBits(-6051i)), firstTrailingBit(u_input.a), any(!vec3<bool>(global1.e.x, false, global1.d))), -u_input.a, true), reverseBits(_wgslsmith_div_i32(abs(~(-2147483647i)), -1i | (1i >> (global1.c % 32u)))));
    global2 = array<u32, 1>();
    var var_1 = select(vec4<bool>(false, true, false, false), vec4<bool>(global1.b > -720f, !all(global1.e) || any(global1.e), _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(global1.b, global1.b)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b, 644f, false))), (!global1.d && all(vec4<bool>(global1.e.x, global1.d, global1.d, true))) & global1.d), global1.e.x);
    global2 = array<u32, 1>();
    var var_2 = vec2<bool>(_wgslsmith_div_u32(_wgslsmith_sub_u32(max(1u, global1.a.x), _wgslsmith_clamp_u32(48080u, 0u, 0u)), global1.a.x) != 1u, any(vec3<bool>(true, any(!var_1.yyw), true)));
    return 73645u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~global2[_wgslsmith_index_u32(1u, 1u)], 4294967295u) & vec2<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(39536u, 1u)], 41692u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(), 1u)], 1u)]), vec2<u32>(~abs(20331u), _wgslsmith_dot_vec2_u32(vec2<u32>(13572u, 0u), ~vec2<u32>(14093u, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(608f * _wgslsmith_f_op_f32(-global1.b)))), 0u, true, global1.e);
    var var_1 = _wgslsmith_div_u32(~(~func_3()), global1.a.x);
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, var_0.c, 27991u, 108164u), ~vec4<u32>(4294967295u, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)])), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(global1.a.x, var_0.c)), global1.c ^ global1.a.x)), var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), -400f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1368f * -767f) * global1.b))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(global1.c), ~_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(var_0.a.x, 1u)], var_0.c, global2[_wgslsmith_index_u32(var_0.c, 1u)])), 1u)], var_0.d, vec2<bool>(true, true));
    var var_3 = Struct_2(62708u, Struct_1(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(43403u, 52494u), vec2<u32>(4294967295u, 86161u) << (vec2<u32>(1u, var_2.a.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2117f * _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))))), _wgslsmith_div_u32(1u, ~131716u) >> (var_0.c % 32u), all(vec3<bool>(global1.c >= 0u, !global1.d, global1.d)), vec2<bool>(!var_0.d, global1.d)), var_0.b, Struct_1(var_2.a, var_0.b, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(global1.a, vec2<u32>(var_2.c, var_0.a.x)), ~45914u), 1u)], abs(31553u ^ global1.c) > 36698u, vec2<bool>(arg_0 >= _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, 10501i), vec3<i32>(arg_0, global0.x, 0i)), var_0.d)));
    let var_4 = Struct_2(var_0.c & ~func_3(), Struct_1(vec2<u32>(var_0.a.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global2[_wgslsmith_index_u32(global1.c, 1u)], 4294967295u, var_2.c), vec3<u32>(var_2.c, global2[_wgslsmith_index_u32(0u, 1u)], 0u)), ~vec3<u32>(var_2.c, 104115u, global1.a.x)), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -150f), global1.b))), 39193u, global1.e.x, vec2<bool>(true, var_0.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(303f, var_0.b)), -1196f))) + _wgslsmith_f_op_f32(-var_3.c)), var_3.b);
    return Struct_1(var_3.d.a, var_3.d.b, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 53366u, var_2.c, global1.c), ~vec4<u32>(51647u, 34506u, var_3.d.a.x, 4294967295u)), ~47780u), false, !var_0.e);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_1;
    global1 = func_2(~(-1874i));
    var var_1 = Struct_2(~(var_0.c ^ global2[_wgslsmith_index_u32(1u, 1u)]), arg_1, func_2(global0.x ^ 14543i).b, arg_0);
    let var_2 = func_2(u_input.b.x);
    let var_3 = vec3<bool>(true, any(vec3<bool>(arg_1.e.x, arg_1.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 21771i, u_input.b.x), u_input.b) == u_input.b.x)), any(!func_2(_wgslsmith_mult_i32(global0.x, -1i)).e));
    return arg_0.b;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-min(u_input.b.zx, vec2<i32>(global0.x, 16987i)) | vec2<i32>(-1i, i32(-1i) * -38860i), -u_input.b.zz), u_input.b.yy << (~vec2<u32>(global1.c, 787u) % vec2<u32>(32u)));
    var var_0 = firstTrailingBit(_wgslsmith_div_vec2_i32(~(-(~vec2<i32>(global0.x, 0i))), _wgslsmith_add_vec2_i32(abs(abs(vec2<i32>(-15310i, 32860i))), ~select(u_input.b.zz, u_input.b.xz, global1.d))));
    let var_1 = ~countOneBits(reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(global1.c, 1u)], select(5583u, arg_1.b.a.x, true), ~57462u, ~global2[_wgslsmith_index_u32(17399u, 1u)])));
    global1 = func_2(~(-11169i));
    let var_2 = Struct_2(~(~4992u >> ((4294967295u << (var_1.x % 32u)) % 32u)), Struct_1(arg_1.d.a, _wgslsmith_f_op_f32(abs(588f)), reverseBits(35770u), select(all(vec2<bool>(true, true)), false, true), func_2(global0.x).e), arg_1.b.b, func_2(2147483647i));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, global2[_wgslsmith_index_u32(global1.c, 1u)], 19425u, 114918u), vec4<u32>(global2[_wgslsmith_index_u32(34804u, 1u)], global1.a.x, global1.c, global1.c), vec4<u32>(global1.c, 1u, global1.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)]))), ~_wgslsmith_div_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(17034u, 1u)], 0u, global2[_wgslsmith_index_u32(4294967295u, 1u)], 12931u), vec4<u32>(1u, 0u, 77871u, 1u))) < _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~global2[_wgslsmith_index_u32(0u, 1u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 1u)]), vec3<u32>(1u, 4294967295u >> (0u % 32u), global1.a.x >> (21753u % 32u))), Struct_2(abs(~(~4380u)), Struct_1(~firstTrailingBit(global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global1.a, 1000f, global1.c, true, global1.e), Struct_1(global1.a, 591f, global2[_wgslsmith_index_u32(71629u, 1u)], false, global1.e), vec4<f32>(2678f, global1.b, global1.b, -2115f), vec4<i32>(global0.x, -2147483647i, -42862i, global0.x)))), global2[_wgslsmith_index_u32(global1.a.x, 1u)], global1.e.x, global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)))), func_2(u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], var_0.a.x), global1.b, 7860u, var_0.e.x, var_0.e), Struct_1(global1.a, var_0.b, 1045u, false, vec2<bool>(true, true)), vec4<f32>(-787f, -1000f, -1354f, 398f), vec4<i32>(1i, -1i, 33371i, u_input.b.x))))))), -259f, var_0.b);
    global0 = vec2<i32>(abs(~(~(~11340i))), ~firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-6580i, 0i, -30181i, global0.x), vec4<i32>(global0.x, -31915i, u_input.b.x, -34408i)), vec4<i32>(u_input.b.x, 2147483647i, global0.x, 61276i))));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(~(~u_input.b.x)), u_input.b.x), abs(_wgslsmith_div_i32(select(firstLeadingBit(u_input.b.x), -global0.x, true), -5222i)), firstTrailingBit(global0.x));
    var_2 = 35145i;
    var_0 = func_2(_wgslsmith_clamp_i32(min(1i, firstLeadingBit(u_input.b.x)), -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -6726i), u_input.b.yz), ~u_input.b.zz), ~25314i));
    let var_3 = Struct_1(global1.a >> ((~var_0.a ^ ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.a)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)))), _wgslsmith_sub_u32(18796u, global1.c), global1.d, select(!var_0.e, vec2<bool>(global1.e.x, true), true || !(!global1.d)));
    global0 = _wgslsmith_add_vec2_i32(vec2<i32>(-43672i, ~2147483647i), u_input.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, global2[_wgslsmith_index_u32(31137u, 1u)], global1.c, 45323u), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 4294967295u, global1.a.x), vec4<u32>(var_0.c, 67434u, 1u, 0u)), vec4<u32>(var_3.a.x, var_3.c, global1.c, 47229u)), ~(vec4<u32>(var_0.c, global1.c, global2[_wgslsmith_index_u32(30192u, 1u)], 0u) & vec4<u32>(87649u, 9853u, 0u, 0u))), vec4<u32>(_wgslsmith_sub_u32(21139u, ~global1.a.x), abs(global1.a.x), 27723u, ~(~global1.c))), 968u);
}

