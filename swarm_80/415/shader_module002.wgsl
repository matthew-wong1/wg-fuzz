struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 20444i, i32(-2147483648)), vec3<i32>(34288i, -7349i, 12233i), vec3<i32>(-28024i, -23340i, 0i), vec3<i32>(1i, 1i, -20514i), vec3<i32>(46143i, -6633i, 1i));

var<private> global3: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> u32 {
    global3 = _wgslsmith_f_op_f32(arg_0 - arg_0);
    var var_0 = vec3<f32>(-1000f, -1000f, arg_0);
    global1 = array<bool, 8>();
    global0 = array<Struct_1, 4>();
    global1 = array<bool, 8>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~(firstTrailingBit(arg_3) & _wgslsmith_clamp_u32(106809u, 1u, 4294967295u)), arg_3 << ((_wgslsmith_sub_u32(arg_2.a.x, 18615u) & _wgslsmith_mult_u32(28u, arg_3)) % 32u), 6162u), _wgslsmith_sub_vec3_u32(arg_2.a, vec3<u32>(_wgslsmith_sub_u32(~7056u, _wgslsmith_dot_vec2_u32(arg_2.a.yx, arg_2.a.yy)), arg_2.a.x, min(_wgslsmith_add_u32(1u, 7557u), 20205u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = ~abs(~firstTrailingBit(vec2<u32>(arg_2.a.x, 1u)));
    global2 = array<vec3<i32>, 5>();
    let var_1 = ~(~(var_0.x ^ arg_2.a.x));
    var var_2 = arg_2.d.x;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.a.x, var_0.x), ~func_3(-141f, !all(vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 8u)], false)), arg_2, arg_0)), 4u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 409f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1784f * -2710f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = all(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.a.x, 8u)]), vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 8u)], false))) && true));
    global3 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(arg_1 * arg_1));
    let var_1 = !all(vec3<bool>(!(!arg_0.d.x), !(!global1[_wgslsmith_index_u32(arg_0.a.x, 8u)]), true));
    global3 = arg_1;
    let var_2 = global0[_wgslsmith_index_u32(select(~(~18522u), firstLeadingBit(_wgslsmith_clamp_u32(max(arg_0.a.x, ~1u), arg_0.a.x, arg_0.a.x)), (~arg_0.a.x != ~(arg_0.a.x >> (0u % 32u))) & global1[_wgslsmith_index_u32(firstTrailingBit(func_3(arg_1, true, global0[_wgslsmith_index_u32(~52468u, 4u)], arg_0.a.x << (arg_0.a.x % 32u))), 8u)]), 4u)];
    return Struct_1(countOneBits(select(vec3<u32>(arg_0.a.x, var_2.a.x, 13122u), var_2.a, vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)], false))) ^ ~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(arg_0.a.x, var_2.a.x), ~arg_0.a.x), global1[_wgslsmith_index_u32(51793u, 8u)], firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 41267i, arg_0.c.x), vec3<i32>(arg_2.x, 2147483647i, var_2.c.x) & vec3<i32>(2147483647i, -2147483647i, arg_2.x))), !select(vec2<bool>(all(vec2<bool>(false, arg_0.d.x)), arg_0.d.x), select(var_2.d, arg_0.d, select(vec2<bool>(false, false), var_2.d, false)), !all(arg_0.d)));
}

fn func_1(arg_0: vec4<u32>) -> vec4<f32> {
    global0 = array<Struct_1, 4>();
    var var_0 = global0[_wgslsmith_index_u32(7783u, 4u)];
    var var_1 = func_4(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(50837u, global0[_wgslsmith_index_u32(24935u, 4u)], Struct_1(var_0.a, var_0.d.x, vec3<i32>(var_0.c.x, u_input.a, 0i), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1244f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(166f, 533f))), _wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(select(-386f, -1439f, false))))))), vec3<i32>(1i & _wgslsmith_dot_vec2_i32(var_0.c.zz, vec2<i32>(-2147483647i, 20046i)), min(2532i, _wgslsmith_div_i32(-32301i, var_0.c.x)), i32(-1i) * -var_0.c.x) | ~select(global2[_wgslsmith_index_u32(var_0.a.x, 5u)], vec3<i32>(2147483647i, 1i, var_0.c.x) >> (vec3<u32>(arg_0.x, arg_0.x, arg_0.x) % vec3<u32>(32u)), vec3<bool>(true, false, var_0.b)));
    var_1 = func_4(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -831f)), _wgslsmith_mult_vec3_i32(var_1.c, ~vec3<i32>(u_input.a, var_0.c.x, _wgslsmith_sub_i32(49165i, u_input.a))));
    var var_2 = func_4(Struct_1(vec3<u32>(var_1.a.x, _wgslsmith_sub_u32(arg_0.x, 1u) << (1u % 32u), arg_0.x), !all(!vec3<bool>(var_0.d.x, false, var_1.d.x)), _wgslsmith_sub_vec3_i32(~global2[_wgslsmith_index_u32(36744u | var_1.a.x, 5u)], vec3<i32>(-var_1.c.x, _wgslsmith_mod_i32(var_1.c.x, u_input.a), u_input.a)), !(!select(var_0.d, vec2<bool>(false, true), var_1.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(385f))), 662f)))), var_0.c);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1226f, -3095f, 740f, -1879f), vec4<f32>(-1000f, -1822f, -481f, 406f), var_1.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(min(650f, -624f)), _wgslsmith_f_op_f32(min(910f, -959f)), _wgslsmith_div_f32(302f, 712f), _wgslsmith_f_op_f32(trunc(-767f)))))), vec4<f32>(_wgslsmith_f_op_f32(func_2(func_3(_wgslsmith_f_op_f32(-493f * 2115f), !var_0.b, global0[_wgslsmith_index_u32(25091u, 4u)], var_0.a.x), Struct_1(var_0.a, select(global1[_wgslsmith_index_u32(43089u, 8u)], global1[_wgslsmith_index_u32(var_1.a.x, 8u)], false), global2[_wgslsmith_index_u32(abs(9301u), 5u)], var_0.d), global0[_wgslsmith_index_u32(~arg_0.x, 4u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -805f))), -161f)), -212f, _wgslsmith_f_op_f32(func_2(~arg_0.x, Struct_1(vec3<u32>(var_0.a.x, var_2.a.x, var_2.a.x), var_1.a.x > arg_0.x, vec3<i32>(u_input.a, -34394i, var_2.c.x), vec2<bool>(var_2.b, var_1.d.x)), func_4(func_4(Struct_1(arg_0.zyw, global1[_wgslsmith_index_u32(var_1.a.x, 8u)], vec3<i32>(var_2.c.x, var_0.c.x, 844i), vec2<bool>(var_2.d.x, true)), 959f, vec3<i32>(1i, -77342i, var_0.c.x)), -1271f, ~var_0.c))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>) -> vec4<bool> {
    var var_0 = countOneBits(~(~func_4(global0[_wgslsmith_index_u32(~28989u, 4u)], 495f, ~vec3<i32>(2147483647i, u_input.a, u_input.a)).c.x));
    let var_1 = Struct_1(vec3<u32>(~_wgslsmith_div_u32(countOneBits(109951u), ~0u), _wgslsmith_mod_u32(~func_3(arg_0.x, true, global0[_wgslsmith_index_u32(4294967295u, 4u)], 0u), 1u), _wgslsmith_div_u32(1u, 1u)), all(select(vec2<bool>(false, true), vec2<bool>(false, 858f == arg_0.x), vec2<bool>(true, true))), vec3<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.a), ~u_input.a, abs(u_input.a & u_input.a)), firstTrailingBit(2058i), -1i), vec2<bool>(func_4(Struct_1(~vec3<u32>(19965u, 12863u, 4294967295u), !global1[_wgslsmith_index_u32(21999u, 8u)], _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(38356u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(true, true)), 820f, global2[_wgslsmith_index_u32(~4294967295u, 5u)]).d.x, !(_wgslsmith_f_op_f32(-423f - arg_0.x) < -1254f)));
    var var_2 = 1i;
    var var_3 = var_1.d;
    var var_4 = global0[_wgslsmith_index_u32(max(var_1.a.x, ~(~(7619u | var_1.a.x))), 4u)];
    return vec4<bool>(true, false, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global2 = array<vec3<i32>, 5>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(178f, _wgslsmith_f_op_f32(1008f * -263f))))), -1196f);
    global0 = array<Struct_1, 4>();
    var var_1 = vec4<bool>(false, !global1[_wgslsmith_index_u32(22644u, 8u)], true, !global1[_wgslsmith_index_u32(9250u, 8u)]);
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(_wgslsmith_mod_u32(1u, 44333u), 0u, 52762u, 1u)))), vec2<f32>(-377f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-391f))))));
    var var_3 = select(~vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(max(~vec2<u32>(55623u, 0u), ~vec2<u32>(1u, 47148u)), vec2<u32>(6837u, 1u)), vec2<bool>(false, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-147f, var_0.x, 1000f, var_0.x)), var_0).x)) << (max(vec2<u32>(func_4(global0[_wgslsmith_index_u32(firstTrailingBit(9366u), 4u)], _wgslsmith_f_op_f32(-539f - -450f), -vec3<i32>(-37949i, -1i, u_input.a)).a.x, 1u << (1u % 32u)), ~firstTrailingBit(firstTrailingBit(vec2<u32>(28734u, 79272u)))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(403f, var_0.x, var_0.x) - vec3<f32>(var_0.x, -1000f, -506f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -313f, var_0.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-930f, 100f, -1493f), vec3<f32>(1000f, var_0.x, var_0.x), var_2.xyz))))), 1i);
}

