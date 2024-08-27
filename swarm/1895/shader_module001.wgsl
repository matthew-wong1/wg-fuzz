struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(1i, 4821i), true, 0i), Struct_1(vec2<i32>(-35172i, -1i), false, -1i), Struct_1(vec2<i32>(15849i, -23038i), false, i32(-2147483648)), Struct_1(vec2<i32>(-22600i, -1i), true, -47633i), Struct_1(vec2<i32>(i32(-2147483648), 0i), true, 1i), Struct_1(vec2<i32>(-22127i, 2147483647i), true, -1i), Struct_1(vec2<i32>(-31568i, 10093i), true, i32(-2147483648)), Struct_1(vec2<i32>(-5740i, 2147483647i), true, -1i), Struct_1(vec2<i32>(0i, 0i), true, i32(-2147483648)), Struct_1(vec2<i32>(13334i, -1i), false, -1i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), true, 1i), Struct_1(vec2<i32>(-15786i, -10608i), true, 40911i), Struct_1(vec2<i32>(9367i, i32(-2147483648)), true, 2147483647i), Struct_1(vec2<i32>(-1i, -1i), true, -32686i), Struct_1(vec2<i32>(-46362i, 2147483647i), true, -33583i), Struct_1(vec2<i32>(-18762i, 0i), true, 21773i), Struct_1(vec2<i32>(2147483647i, 4156i), false, i32(-2147483648)), Struct_1(vec2<i32>(-1i, 98640i), false, i32(-2147483648)), Struct_1(vec2<i32>(0i, i32(-2147483648)), false, 1i), Struct_1(vec2<i32>(1i, 0i), false, 56176i), Struct_1(vec2<i32>(2147483647i, -31788i), true, i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 7936i), true, 0i), Struct_1(vec2<i32>(-1i, 1i), false, 54150i), Struct_1(vec2<i32>(2147483647i, -4585i), true, 1i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<Struct_1, 24>();
    let var_0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, countOneBits(vec2<u32>(~(~0u), 45346u))), 24u)];
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~(~var_0), 8192u, 31271u), ~(~vec3<u32>(4294967295u, 4294967295u, 11686u))) | abs(min(~vec3<u32>(var_0, var_0, u_input.b), ~vec3<u32>(7262u, 0u, u_input.c.x)) >> ((~vec3<u32>(u_input.c.x, var_0, 4294967295u) & firstTrailingBit(vec3<u32>(56705u, 0u, u_input.c.x))) % vec3<u32>(32u)));
    let var_3 = vec3<f32>(872f, -878f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, 604f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f * 1082f))))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, -1342f, 627f, var_3.x))), vec4<f32>(var_3.x, 1000f, -2601f, -461f), arg_1.b)), vec4<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(-var_3.x), -1305f)))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(select(!(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], arg_0.b), vec2<bool>(false, true), vec2<bool>(arg_0.b, arg_0.b))), vec2<bool>(_wgslsmith_f_op_f32(step(-1449f, 668f)) != -2004f, false), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], true), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(u_input.b, 29u)]), true), select(vec2<bool>(false, false), vec2<bool>(arg_0.b, false), arg_0.b)), !vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(6293u, 29u)]), global0[_wgslsmith_index_u32(u_input.b, 29u)])), u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1936f, 1050f, -103f, -1158f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, -1918f, -1310f, 1676f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-913f, 986f, 292f, -955f), vec4<f32>(565f, -297f, 829f, -191f)))), _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, var_0.b), 24u)], global1[_wgslsmith_index_u32(~1u, 24u)])))));
    var var_2 = select(var_0.a, select(!var_0.a, select(vec2<bool>(false && arg_0.b, true), !select(var_0.a, var_0.a, true), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(78905u, 29u)]), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true)), vec2<bool>(true, any(!select(var_0.a, var_0.a, var_0.a))));
    var var_3 = _wgslsmith_div_u32(~var_0.b, ~(~(~2550u)));
    var var_4 = true;
    return var_1.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    global1 = array<Struct_1, 24>();
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.xy, !(1u < u_input.b), 2147483647i))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - arg_2.x) * 716f) + arg_0.x), 166f)));
    var var_2 = global1[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-u_input.a.x, 1i) & -2147483647i, var_2.c), false, u_input.a.x);
    return Struct_2(var_0.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), firstTrailingBit(u_input.c)), ~(~var_0.b), _wgslsmith_dot_vec2_u32(u_input.c << (vec2<u32>(u_input.b, arg_1.b) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(83659u, u_input.c.x)))) ^ 29300u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(~(4995u | arg_1.b), 24u)])))));
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.a.xy, false, -41667i)))), -1217f, 717f))));
    global1 = array<Struct_1, 24>();
    return _wgslsmith_div_u32(arg_1.b, min(_wgslsmith_mod_u32(arg_0.b, abs(4512u)), ~1u)) != _wgslsmith_mod_u32(31294u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    var var_0 = Struct_2(vec2<bool>(!(u_input.c.x < u_input.c.x) || func_4(func_1(vec4<f32>(522f, -246f, -503f, 299f), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 29u)], false), 46802u), vec3<f32>(-103f, 824f, -854f), global0[_wgslsmith_index_u32(u_input.b, 29u)]), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 29u)], true), u_input.c.x), Struct_1(u_input.a.zx, false, u_input.a.x), 5562u), !(!func_4(Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(35122u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), u_input.c.x), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), 49914u), global1[_wgslsmith_index_u32(0u, 24u)], u_input.c.x))), _wgslsmith_mod_u32(min(26609u >> (u_input.b % 32u), 4294967295u) & ~70807u, abs(_wgslsmith_add_u32(~27278u, reverseBits(u_input.c.x)))));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-984f, -546f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(31463u, 24u)], Struct_1(u_input.a.xy, true, u_input.a.x))).x - _wgslsmith_f_op_f32(-649f - -576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(830f, -395f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2384f)))), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1243f, 911f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, -2399f, -1569f, -1142f) - vec4<f32>(-690f, 572f, -1428f, 459f)))), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-455f, 1345f, 622f, 731f) * vec4<f32>(-568f, 1744f, -1222f, 1697f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(861f, -1000f, 1000f, -1000f) * vec4<f32>(-1948f, 630f, -591f, -612f))), Struct_2(!vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 29u)]), firstLeadingBit(var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(823f, -2111f, 1329f), vec3<f32>(798f, -206f, -1000f))), var_0.a.x), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1475f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-113f * 1082f), _wgslsmith_f_op_f32(max(1270f, -546f)))), _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(var_0.b, 24u)], Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), false, u_input.a.x))).x), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(391f, -575f, -159f), vec3<f32>(-395f, -1428f, -1370f)))))))), var_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1157f))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f)));
    var var_4 = select(func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-152f, 537f, 821f, 478f))))))), var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1130f, 580f, 1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(297f, 983f, 351f), vec3<f32>(1759f, 271f, -1537f), vec3<bool>(true, global0[_wgslsmith_index_u32(105564u, 29u)], false))))), var_1.a.x).a, select(var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], true), vec2<bool>(all(vec2<bool>(true, true)), abs(u_input.a.x) <= (u_input.a.x ^ u_input.a.x))), !var_1.a);
    global0 = array<bool, 29>();
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f - 824f))) - _wgslsmith_f_op_f32(f32(-1f) * -244f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1022f))), 378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f * 914f)) - _wgslsmith_div_f32(-1022f, _wgslsmith_f_op_f32(abs(525f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(select(vec3<i32>(~u_input.a.x, u_input.a.x, abs(u_input.a.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, 20138i, u_input.a.x)), global0[_wgslsmith_index_u32(75246u, 29u)]), -max(~u_input.a, ~u_input.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, -361f)), _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(~var_1.b, _wgslsmith_mult_u32(34640u, 1u)), u_input.b));
}

