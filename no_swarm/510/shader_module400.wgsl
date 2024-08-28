struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, true, true, false, true, false, true, false, true, false, false, false, false, true, false, false, true, false, true, false, false, false);

var<private> global1: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(21671u, 34764u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 74981u, 1u));

var<private> global2: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<i32> {
    global1 = array<vec3<u32>, 3>();
    var var_0 = u_input.c.x;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-773f, arg_1.a))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-566f, 1135f))))))));
    let var_3 = Struct_2(Struct_1(u_input.a), Struct_1(~select(-vec2<i32>(-2147483647i, u_input.a.x), global2.a, vec2<bool>(arg_1.b, true))), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.b), min(vec2<i32>(22162i, 0i), global2.a)), ~abs(vec2<i32>(-14924i, 59739i)))));
    return var_3.a.a;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(vec2<i32>(global2.a.x, -2147483647i));
    var var_1 = Struct_2(Struct_1(-vec2<i32>(var_0.a.x, -27183i) ^ (u_input.a & vec2<i32>(var_0.a.x, -1i))), Struct_1(_wgslsmith_add_vec2_i32(u_input.b, -vec2<i32>(2147483647i, u_input.b.x) | func_3(Struct_3(-125f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), Struct_3(1419f, true)))), Struct_1(-(-vec2<i32>(30433i, global2.a.x) | (vec2<i32>(-10972i, 2147483647i) | vec2<i32>(u_input.a.x, 33827i)))));
    let var_2 = Struct_1(abs(vec2<i32>(global2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 1i), vec3<i32>(u_input.a.x, var_0.a.x, u_input.a.x)))));
    var_0 = var_2;
    var var_3 = !select(vec3<bool>(true, false, false), select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(84126u, 24u)], false), vec3<bool>(false, true, false), vec3<bool>(global0[_wgslsmith_index_u32(31588u, 24u)], global0[_wgslsmith_index_u32(6361u, 24u)], false)), vec3<bool>(true, global0[_wgslsmith_index_u32(29489u, 24u)], all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true))), vec3<bool>(u_input.c.x >= u_input.c.x, all(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 24u)])), 9419u < u_input.c.x)), !all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f - -1498f)))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(global2.a.x, global2.a.x) << (countOneBits(_wgslsmith_div_vec2_u32(u_input.c.xz, vec2<u32>(41335u, arg_2.x))) % vec2<u32>(32u))), Struct_1(vec2<i32>(u_input.a.x << (max(1u, 0u) % 32u), func_3(Struct_3(540f, arg_0), Struct_3(arg_1.x, true)).x & (1i << (0u % 32u)))), Struct_1(~vec2<i32>(-1i, -30103i)));
    let var_1 = ~u_input.c.x;
    global2 = Struct_1(vec2<i32>(12861i, u_input.b.x));
    global1 = array<vec3<u32>, 3>();
    var var_2 = -1i;
    return Struct_3(arg_1.x, true && arg_0);
}

fn func_1(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1087f)))));
    let var_1 = all(select(vec4<bool>(true, true, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], true, false)), true), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.x, 24u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(45007u, 24u)], global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true), true), vec4<bool>(!global0[_wgslsmith_index_u32(arg_0.x, 24u)], true, u_input.b.x < 5928i, true))) && true;
    global0 = array<bool, 24>();
    var var_2 = func_4(var_1, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1991f, _wgslsmith_f_op_f32(-var_0), var_0), vec4<f32>(_wgslsmith_f_op_f32(var_0 - -772f), _wgslsmith_div_f32(-1305f, var_0), _wgslsmith_f_op_f32(floor(var_0)), var_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -513f, var_0, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -222f, 258f, -1290f) - vec4<f32>(979f, -266f, 530f, 1254f)))))))), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 53779u), vec2<u32>(4294967295u, u_input.c.x)), arg_0.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -u_input.a, vec2<i32>(firstLeadingBit(u_input.a.x), 38215i), vec2<i32>(firstLeadingBit(2147483647i), firstTrailingBit(u_input.a.x)))), Struct_1(firstTrailingBit(u_input.a)), Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.a.x, global2.a.x))), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -14452i))));
    return !(!vec3<bool>(func_4(var_2.b, vec4<f32>(var_2.a, 1133f, var_2.a, -257f), u_input.c.xy, 4294967295u).b & (var_2.b & true), false, (var_1 != var_2.b) | any(vec2<bool>(true, var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~0u | u_input.c.x);
    var var_1 = u_input.a.x;
    let var_2 = var_0;
    let var_3 = !select(!func_1(_wgslsmith_mod_vec2_u32(u_input.c.wz, u_input.c.zx)), vec3<bool>(true, true, true), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(74418u, 24u)], false)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-162f - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_6 = _wgslsmith_f_op_f32(-334f - 1150f);
    let var_7 = all(select(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 24u)], global0[_wgslsmith_index_u32(var_2, 24u)], false, var_3.x), vec4<bool>(var_3.x, var_3.x, false, var_3.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 24u)], global0[_wgslsmith_index_u32(var_2, 24u)], true)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], var_3.x, global0[_wgslsmith_index_u32(0u, 24u)], false), vec4<bool>(var_3.x, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(95613u, 24u)], var_3.x, true, false)), !vec4<bool>(true, false, true, var_3.x)), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_0, 24u)], var_3.x, false, false)), vec4<bool>(var_3.x, !var_3.x, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 24u)], var_3.x, var_3.x, var_3.x)), var_3.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(12531u, var_0), 36932u), 24u)]), true));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.wz, _wgslsmith_f_op_f32(-var_6), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + var_4)), -232f, var_4)), 5855i, firstLeadingBit(vec3<i32>(global2.a.x, -u_input.a.x, abs(firstTrailingBit(68114i)))));
}

