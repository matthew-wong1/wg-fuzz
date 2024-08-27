struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(5087i, 1i, 1i, i32(-2147483648)), vec4<i32>(-86441i, -1i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, -28587i, 1i, 41773i), vec4<i32>(0i, -21085i, i32(-2147483648), -17503i), vec4<i32>(-2364i, 1i, 0i, 52881i), vec4<i32>(i32(-2147483648), 7283i, i32(-2147483648), 6518i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -14189i), vec4<i32>(5669i, 0i, 26459i, -1i), vec4<i32>(0i, -10644i, -56508i, 9003i), vec4<i32>(1i, -23125i, 1448i, 2147483647i), vec4<i32>(21100i, -4983i, 0i, 1i), vec4<i32>(0i, 1i, i32(-2147483648), 0i), vec4<i32>(2147483647i, -1i, -1i, 2124i), vec4<i32>(1i, -1i, -15194i, -40094i), vec4<i32>(-38313i, -13815i, 39744i, -16192i), vec4<i32>(47701i, 37547i, -1513i, -35738i), vec4<i32>(-19266i, 1i, 1i, 28942i), vec4<i32>(-12725i, 0i, 0i, -13759i), vec4<i32>(2147483647i, -1i, 2147483647i, -2821i), vec4<i32>(1i, -2767i, 5667i, 14075i), vec4<i32>(32544i, 0i, -40918i, 2147483647i), vec4<i32>(1625i, -7487i, -1i, 26992i), vec4<i32>(1i, 0i, 76421i, 38235i), vec4<i32>(-13846i, 2147483647i, -1i, 2147483647i), vec4<i32>(23i, 0i, 2147483647i, -33913i), vec4<i32>(-38070i, -5110i, 45073i, -24790i), vec4<i32>(5668i, 1i, -13664i, -8824i), vec4<i32>(2147483647i, 2147483647i, 1i, 3075i));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<bool>(false, true), 21108u, false, vec4<i32>(48362i, 52097i, -1i, -63950i), false), Struct_1(vec2<bool>(true, true), 4294967295u, true, vec4<i32>(33076i, 39576i, 1i, -62072i), true), Struct_1(vec2<bool>(false, true), 28504u, false, vec4<i32>(0i, 1i, -29100i, 4982i), false), Struct_1(vec2<bool>(false, true), 4294967295u, false, vec4<i32>(61i, -43748i, 6910i, 2745i), false), Struct_1(vec2<bool>(true, false), 44139u, false, vec4<i32>(-1i, 2147483647i, 2147483647i, -51021i), false), Struct_1(vec2<bool>(false, true), 12887u, false, vec4<i32>(-1933i, 2147483647i, i32(-2147483648), 34513i), true), Struct_1(vec2<bool>(true, true), 98083u, true, vec4<i32>(-34152i, i32(-2147483648), 28293i, i32(-2147483648)), false), Struct_1(vec2<bool>(false, false), 17667u, true, vec4<i32>(1i, 2147483647i, 0i, -74851i), true), Struct_1(vec2<bool>(true, false), 31800u, false, vec4<i32>(2147483647i, 27991i, 29432i, -1i), true));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    global0 = array<vec4<i32>, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(-1000f - 131f))));
    let var_1 = _wgslsmith_mod_i32(arg_2.d.x >> (u_input.a % 32u), 16207i) > _wgslsmith_dot_vec3_i32(-vec3<i32>(-arg_0, arg_0, -1i), vec3<i32>(-15834i, -arg_0, 1i) & ~arg_1.d.zwx);
    let var_2 = arg_1;
    var var_3 = arg_3.x;
    return !var_2.e;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(412f + 1679f) - 1446f)))));
    return 27890u;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = (vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(51377u, 28u)], min(vec4<i32>(1i, 59784i, -2147483647i, -5216i), vec4<i32>(7990i, -2147483647i, -2147483647i, -20086i))), 1i, 1i) & vec3<i32>(1i, -13893i, firstTrailingBit(-1i))) & vec3<i32>(-47748i >> (_wgslsmith_mod_u32(~26761u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 68682u, 0u), vec4<u32>(23007u, 7271u, 4294967295u, 4294967295u))) % 32u), select(-2147483647i, 3803i, any(vec2<bool>(false, false))), -1i);
    let var_1 = Struct_1(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true)), func_4(func_3(1i, Struct_1(vec2<bool>(false, true), u_input.a, false, vec4<i32>(var_0.x, var_0.x, var_0.x, -13082i), true), Struct_1(vec2<bool>(false, false), u_input.a, true, global0[_wgslsmith_index_u32(0u, 28u)], true), vec4<u32>(43750u, u_input.a, u_input.a, 10141u) & vec4<u32>(arg_0, 4294967295u, arg_0, u_input.a)), vec3<u32>(u_input.a >> (arg_0 % 32u), 0u, ~arg_0)) << (abs(4294967295u) % 32u), !((_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(1i, -10698i, var_0.x)) == var_0.x) & true), -global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, arg_0), 28u)], !all(vec4<bool>(true, true, true, false)));
    let var_2 = vec3<i32>(~_wgslsmith_dot_vec4_i32(~(-global0[_wgslsmith_index_u32(0u, 28u)]), reverseBits(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(1u, 28u)], var_1.d))), -var_1.d.x, ~(-abs(~var_0.x)));
    global0 = array<vec4<i32>, 28>();
    var var_3 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~select(vec2<u32>(u_input.a, 18290u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_0, 1u)), !vec2<bool>(var_1.a.x, true)), ~select(vec2<u32>(var_1.b, 6529u), vec2<u32>(arg_0, u_input.a), var_1.a) & ~vec2<u32>(u_input.a, 1u)), vec2<u32>(max(92746u, 55281u) | u_input.a, 1u) | select(~vec2<u32>(var_1.b, 4294967295u) | ~vec2<u32>(arg_0, u_input.a), ~vec2<u32>(var_1.b, var_1.b), any(!vec3<bool>(true, var_1.a.x, false))));
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = -vec3<i32>(~1i << ((arg_1 << (1u % 32u)) % 32u), 41105i, -13876i);
    let var_1 = arg_0.x;
    var var_2 = Struct_1(vec2<bool>(!(any(vec3<bool>(false, true, false)) || func_3(26427i, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], vec4<u32>(20374u, 66366u, 65920u, arg_1))), true), arg_1, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 * arg_0.x))), -906f)), vec4<i32>(-1i) * -(~(-global0[_wgslsmith_index_u32(4294967295u, 28u)])), false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))) * _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(sign(-652f)))))));
    let var_4 = _wgslsmith_f_op_f32(-arg_0.x);
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    global1 = array<Struct_1, 9>();
    var var_0 = vec2<i32>(_wgslsmith_div_i32(arg_3.d.x, ~(43887i & arg_3.d.x)) ^ ~1i, -2147483647i << (func_5(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -514f), 2090f), func_2(_wgslsmith_div_u32(1u, 4294967295u))) % 32u));
    let var_1 = !(!vec3<bool>(all(select(vec2<bool>(arg_3.e, true), vec2<bool>(arg_3.c, true), arg_3.a)), false, _wgslsmith_dot_vec4_i32(arg_3.d, arg_3.d) == -2147483647i));
    var_0 = ~(~arg_3.d.zy);
    let var_2 = Struct_1(!select(vec2<bool>(true, arg_3.c), vec2<bool>(true, arg_3.a.x), any(vec4<bool>(false, var_1.x, var_1.x, false))), ~firstLeadingBit(arg_2), all(!select(!var_1.yx, arg_3.a, arg_1)), ~firstLeadingBit(select(~vec4<i32>(0i, var_0.x, var_0.x, arg_3.d.x), global0[_wgslsmith_index_u32(36494u, 28u)], select(vec4<bool>(var_1.x, arg_3.e, true, var_1.x), vec4<bool>(true, false, var_1.x, arg_3.c), var_1.x))), false);
    return ~vec3<i32>(-1i | _wgslsmith_mult_i32(~var_2.d.x, _wgslsmith_div_i32(35273i, -24231i)), var_2.d.x, 56937i);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_2.a, 99386u, func_3(_wgslsmith_div_i32(arg_3.d.x, _wgslsmith_mult_i32(1i, ~arg_0.x)), Struct_1(select(arg_3.a, select(arg_3.a, arg_1.a, arg_3.a.x), select(vec2<bool>(arg_2.e, true), arg_2.a, arg_1.a)), 61015u, 0u < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.b, 1u, arg_1.b), vec4<u32>(arg_3.b, 1u, 0u, 4294967295u)), firstTrailingBit(~vec4<i32>(arg_1.d.x, arg_3.d.x, arg_2.d.x, arg_1.d.x)), (arg_1.b << (arg_3.b % 32u)) < 57865u), Struct_1(arg_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, u_input.a), ~vec2<u32>(arg_1.b, u_input.a)), arg_1.e, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.d.x, 1i, 2147483647i, -4595i) | global0[_wgslsmith_index_u32(arg_2.b, 28u)], -arg_2.d), func_3(_wgslsmith_add_i32(-2147483647i, arg_1.d.x), global1[_wgslsmith_index_u32(1u, 9u)], Struct_1(vec2<bool>(false, false), arg_2.b, true, vec4<i32>(22275i, arg_0.x, arg_1.d.x, arg_1.d.x), true), vec4<u32>(arg_3.b, 1u, u_input.a, arg_1.b))), vec4<u32>(~reverseBits(76446u), _wgslsmith_add_u32(4294967295u, arg_1.b) >> (abs(arg_1.b) % 32u), _wgslsmith_div_u32(1u, u_input.a), firstLeadingBit(24663u))), vec4<i32>(-firstTrailingBit(60681i), firstLeadingBit(~(~arg_0.x)), -36137i, reverseBits(~(i32(-1i) * -3134i))), !arg_1.a.x);
    let var_1 = Struct_1(arg_1.a, ~var_0.b, !(!arg_3.a.x), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 28u)], vec4<i32>(-1i, arg_2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.x), vec2<i32>(arg_1.d.x, -2147483647i)), -arg_0.x) << (select(vec4<u32>(u_input.a, 44392u, u_input.a, 27908u) << (vec4<u32>(arg_2.b, 0u, 1u, arg_2.b) % vec4<u32>(32u)), countOneBits(vec4<u32>(108188u, 59917u, 0u, 22653u)), vec4<bool>(false, false, arg_3.c, var_0.e)) % vec4<u32>(32u))), var_0.e);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-381f, _wgslsmith_f_op_f32(round(159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-544f, 248f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -320f, _wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(-var_2.x)));
    global0 = array<vec4<i32>, 28>();
    return ~68516u << (arg_1.b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(569f, 304f), vec2<f32>(-1698f, 539f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, -1065f))))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-397f)), 1923f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-803f)), _wgslsmith_f_op_f32(1022f - 194f)))));
    global1 = array<Struct_1, 9>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -321f);
    let var_2 = func_6(~func_1(var_1.x, false, 26971u, Struct_1(vec2<bool>(false, false), _wgslsmith_mod_u32(u_input.a, 0u), var_0.x != var_1.x, global0[_wgslsmith_index_u32(0u, 28u)], true)), global1[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(vec2<bool>(firstTrailingBit(0i) >= _wgslsmith_mult_i32(11964i, 35323i), _wgslsmith_f_op_f32(step(1651f, var_0.x)) == _wgslsmith_div_f32(-1000f, -186f)), 4294967295u, true, max(vec4<i32>(countOneBits(11629i), max(2147483647i, 62937i), -5161i, -58834i), vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(1u, 28u)]), true), global1[_wgslsmith_index_u32(u_input.a, 9u)]);
    let var_3 = _wgslsmith_sub_u32(~(var_2 >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(9167u, u_input.a), vec2<u32>(72976u, u_input.a)) % 32u)), ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 92405u, 67162u)), ~(vec3<u32>(u_input.a, 1u, 1u) << (vec3<u32>(u_input.a, u_input.a, var_2) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(select(var_1, _wgslsmith_f_op_vec2_f32(select(var_1, var_1, all(vec3<bool>(true, true, true)))), select(vec2<bool>(all(vec4<bool>(false, true, true, true)), select(false, true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true))));
    global0 = array<vec4<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(397f, ~var_2, var_0.x, -719f);
}

