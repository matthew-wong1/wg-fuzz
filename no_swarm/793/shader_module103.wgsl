struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-30178i, 50405i, -44310i, 62810i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 27882i), vec4<i32>(0i, 57397i, 0i, -15678i), vec4<i32>(-13647i, 54637i, i32(-2147483648), -8779i), vec4<i32>(1i, -6464i, 0i, i32(-2147483648)), vec4<i32>(0i, 2147483647i, 1471i, 1i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_2 {
    global1 = array<vec4<i32>, 6>();
    global0 = array<i32, 28>();
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~(~max(vec2<u32>(arg_3, 46024u), vec2<u32>(arg_3, 15921u))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3), vec2<u32>(4294967295u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(arg_3, 1u))), abs(~vec2<u32>(0u, 13180u)))), 0i, -1i, vec3<bool>(false, arg_1.a || true, all(select(vec4<bool>(false, false, arg_1.a, arg_1.a), vec4<bool>(true, arg_1.a, true, true), select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, false), arg_1.a)))), -u_input.b);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-478f - arg_2)))), 137f);
    global0 = array<i32, 28>();
    return arg_1;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    var var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-317f, 493f) * 1f)), 874f, 843f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f), 899f)), arg_3.a, 968f, max(~4294967295u, 162691u));
    var var_1 = ~(-(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(0i, 18690i)), -arg_3.c.b, -2147483647i) | vec3<i32>(arg_3.c.b, arg_3.c.e.x, arg_1 & -2147483647i)));
    let var_2 = vec2<u32>(4294967295u, 1u);
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1241f, -665f, -109f, -1341f)), _wgslsmith_div_vec4_f32(vec4<f32>(1738f, -724f, 344f, -1000f), vec4<f32>(-576f, -1675f, -1000f, -248f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, 1175f, 212f, 118f) * vec4<f32>(1685f, -283f, 376f, -259f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 265f, 1128f, 1387f), vec4<f32>(-1000f, 707f, -177f, -1005f))))))), arg_3.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-652f - 413f)), _wgslsmith_f_op_f32(f32(-1f) * -1197f), true)))), 0u);
    var_0 = Struct_2(!var_0.a);
    return -countOneBits(arg_1);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(888f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1932f) + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-104f, -1331f)), _wgslsmith_div_f32(256f, -311f))) + _wgslsmith_f_op_f32(1f - -376f)), false));
    global0 = array<i32, 28>();
    let var_1 = arg_1.c;
    let var_2 = vec3<u32>(~var_1.a.x, 19381u, arg_3.c.a.x);
    let var_3 = Struct_1(vec2<u32>(1u, 1u), u_input.b.x, _wgslsmith_sub_i32(arg_2.x, -3568i), select(!vec3<bool>(true, select(false, false, var_1.d.x), true), select(!vec3<bool>(false, arg_1.c.d.x, true), !select(vec3<bool>(false, false, var_1.d.x), var_1.d, vec3<bool>(arg_1.c.d.x, false, false)), !select(vec3<bool>(false, var_1.d.x, arg_1.a.a), arg_1.c.d, var_1.d)), _wgslsmith_mod_u32(0u, var_2.x) > 27843u), vec3<i32>(~u_input.b.x, ~firstLeadingBit(-arg_2.x), 1i));
    return _wgslsmith_sub_i32(arg_1.c.b, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2.x, ~firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(1i, i32(-1i) * -14503i)), global0[_wgslsmith_index_u32(~(~22193u), 28u)]));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(-889f, -726f);
    let var_1 = func_4(4294967295u, Struct_3(Struct_2(false), vec4<bool>(true, all(vec3<bool>(true, true, true)), !(var_0 != var_0), global0[_wgslsmith_index_u32(~34939u, 28u)] >= global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 11177u), 28u)]), Struct_1(max(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(57301u, 1u), true), abs(vec2<u32>(4294967295u, 0u))), abs(global0[_wgslsmith_index_u32(select(1u, 1u, true), 28u)]), global0[_wgslsmith_index_u32(~14681u, 28u)], vec3<bool>(true, true, 31105i >= u_input.b.x), firstTrailingBit(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(9195u, 28u)], u_input.b.x)))), vec4<i32>(func_3(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, 38803u, 85582u)), ~vec4<u32>(17306u, 28797u, 0u, 51682u)), -_wgslsmith_dot_vec2_i32(u_input.b.zx, u_input.b.zz), Struct_2(var_0 <= 1000f), Struct_3(func_2(vec4<f32>(507f, 1000f, 161f, 1016f), Struct_2(true), var_0, 1u), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), Struct_1(vec2<u32>(37920u, 4035u), global0[_wgslsmith_index_u32(1u, 28u)], -46250i, vec3<bool>(false, true, false), vec3<i32>(u_input.b.x, 0i, global0[_wgslsmith_index_u32(1u, 28u)])))), -2147483647i & select(global0[_wgslsmith_index_u32(~4294967295u, 28u)], firstLeadingBit(0i), true), ~firstLeadingBit(-27494i), ~max(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(~38958u, 28u)])), Struct_3(func_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_2(true), 303f, 4294967295u), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))), Struct_1(~vec2<u32>(1u, 1u), 1i, global0[_wgslsmith_index_u32(~1u, 28u)], vec3<bool>(true, true, true), u_input.b)));
    let var_2 = Struct_1(~(~min(countOneBits(vec2<u32>(4294967295u, 39391u)), firstLeadingBit(vec2<u32>(27122u, 0u)))), firstLeadingBit(~1i) & var_1, ~max(func_3(_wgslsmith_clamp_u32(1u, 0u, 4294967295u), u_input.a, Struct_2(false), Struct_3(Struct_2(true), vec4<bool>(true, false, true, false), Struct_1(vec2<u32>(59372u, 57437u), 40670i, var_1, vec3<bool>(false, false, true), vec3<i32>(global0[_wgslsmith_index_u32(73704u, 28u)], global0[_wgslsmith_index_u32(13028u, 28u)], -1i)))), min(-45728i, 2147483647i >> (0u % 32u))), select(vec3<bool>(true, !all(vec2<bool>(false, true)), true), !vec3<bool>(all(vec2<bool>(false, false)), 1000f <= var_0, false), false != (all(vec4<bool>(true, true, false, false)) | true)), _wgslsmith_div_vec3_i32(-u_input.b ^ -vec3<i32>(-9818i, 0i, -2147483647i), ~(-u_input.b)));
    var var_3 = _wgslsmith_div_vec2_u32(var_2.a, vec2<u32>(reverseBits(0u), 70326u));
    var var_4 = _wgslsmith_f_op_f32(max(var_0, -1737f));
    return StorageBuffer(-2147483647i, max(~0i | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~var_2.a.x), 28u)], u_input.b.x), abs(~(~vec3<u32>(var_2.a.x, var_2.a.x, var_3.x)) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 52101u, var_2.a.x), vec3<u32>(var_3.x, var_3.x, var_3.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(9117u, 52316u, 43098u), vec3<u32>(var_2.a.x, var_3.x, var_2.a.x))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -481f;
    let x = u_input.a;
    s_output = func_1();
}

