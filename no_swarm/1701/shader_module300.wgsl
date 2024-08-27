struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 5>;

var<private> global3: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    global1 = vec2<u32>(_wgslsmith_sub_u32(arg_2.b, _wgslsmith_dot_vec2_u32((vec2<u32>(57407u, global1.x) << (vec2<u32>(u_input.b, 25142u) % vec2<u32>(32u))) | ~vec2<u32>(u_input.a, 28620u), (vec2<u32>(arg_2.b, 27639u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) >> ((vec2<u32>(u_input.b, 0u) & vec2<u32>(global1.x, global1.x)) % vec2<u32>(32u)))), ~select(_wgslsmith_clamp_u32(4294967295u, arg_2.b, arg_2.b), ~(1u | arg_2.b), true));
    var var_0 = countOneBits(global1.x);
    var var_1 = global0[_wgslsmith_index_u32(arg_2.b | arg_2.b, 3u)];
    global1 = vec2<u32>(10406u, ~global1.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1083f), _wgslsmith_f_op_f32(-arg_1.x)));
    return reverseBits(vec4<u32>(countOneBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, global1.x, 16993u, u_input.b), select(vec4<u32>(4294967295u, 4294967295u, u_input.b, arg_2.b), vec4<u32>(u_input.b, var_1.b, 21899u, arg_2.b), var_1.a.x)) | 0u, 0u, ~(firstLeadingBit(0u) >> (arg_2.b % 32u))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: i32) -> vec2<i32> {
    global2 = array<Struct_1, 5>();
    global1 = arg_1.yy;
    let var_0 = vec3<bool>(false, true || !(arg_1.x < 4294967295u), any(select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec2<bool>(false, false)), 2147483647i != arg_3), vec3<bool>(true, select(false, true, true), false))));
    var var_1 = Struct_1(vec2<bool>(var_0.x, any(!vec2<bool>(true, var_0.x))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-921f)) + 624f), 905f), vec3<f32>(442f, _wgslsmith_f_op_f32(sign(-1911f)), _wgslsmith_f_op_f32(1307f * _wgslsmith_f_op_f32(-184f + 793f))), global0[_wgslsmith_index_u32(~56908u, 3u)]).x);
    let var_2 = global0[_wgslsmith_index_u32(~reverseBits(arg_2.x), 3u)];
    return ~vec2<i32>(countOneBits(firstLeadingBit(-44358i)), 0i);
}

fn func_2() -> vec2<bool> {
    var var_0 = func_4(1i, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, global1.x, global1.x, 14075u), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(519f, 1362f, 137f), vec3<f32>(1343f, 1228f, -864f)), global2[_wgslsmith_index_u32(u_input.b, 5u)])), vec4<u32>(u_input.a, 24706u, reverseBits(_wgslsmith_div_u32(~0u, abs(2862u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~global1.x, 4294967295u ^ u_input.b), 4294967295u)), -_wgslsmith_clamp_i32(-(~(-44817i)), 1i, _wgslsmith_add_i32(select(-19492i, -2847i, true), 8931i)));
    return select(!(!vec2<bool>(all(vec3<bool>(false, false, false)), true)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec2<bool>(true, true))), vec2<bool>(any(vec3<bool>(true, false, true)), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, any(vec4<bool>(true, false, false, false))), vec2<bool>(any(vec2<bool>(true, false)), select(true, false, false)), false)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(!arg_1.a, min(abs(18472u), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(65069u), _wgslsmith_mod_u32(1u, global1.x), ~96793u), vec3<u32>(4294967295u, global1.x, 1u))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(830f + _wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1494f * 675f)) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(867f - -1223f)))) - 862f));
    let var_2 = _wgslsmith_f_op_f32(round(1443f));
    global1 = arg_3;
    let var_3 = Struct_1(!var_0.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(830u, 0u), global1.x) & 4294967295u, var_0.b << (var_0.b % 32u)));
    return vec2<u32>(firstLeadingBit(4294967295u) << (~(~_wgslsmith_mod_u32(48397u, arg_1.b)) % 32u), 13293u);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    global1 = func_5(all(!func_2()), Struct_1(vec2<bool>(true || func_2().x, all(vec3<bool>(false, true, true))), 4294967295u), !(!all(func_2())), arg_0);
    var var_0 = 362f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1503f * -1053f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-321f, 530f, true))) * 548f), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), false)))), 1699f);
    return global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(24347u, 64584u), arg_2.x), _wgslsmith_mod_u32(1u, firstTrailingBit(global1.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(1424u, arg_1.x), 1u)), ~_wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(arg_1.x, 1u, arg_1.x, u_input.b)) ^ (arg_1 >> ((vec4<u32>(u_input.a, 38087u, arg_2.x, 1u) << (arg_2 % vec4<u32>(32u))) % vec4<u32>(32u)))), 1u), 3u)];
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> u32 {
    var var_0 = func_5((-16541i ^ (-1i >> (u_input.b % 32u))) > _wgslsmith_div_i32(1i, 1i), Struct_1(func_1(~vec2<u32>(u_input.b, global1.x), _wgslsmith_div_vec4_u32(vec4<u32>(15695u, 73281u, u_input.b, u_input.b), vec4<u32>(0u, arg_0.b, u_input.b, global1.x)), max(vec4<u32>(43420u, 39498u, 57702u, arg_1), vec4<u32>(arg_0.b, 41756u, 0u, arg_1)), select(vec4<i32>(-2147483647i, -15278i, -19410i, 1i), vec4<i32>(17567i, 51890i, 47622i, -39986i), false)).a, global1.x), false, func_3(-973f, vec3<f32>(_wgslsmith_div_f32(935f, -1311f), 410f, _wgslsmith_div_f32(-1256f, 1544f)), func_1(func_5(arg_0.a.x, arg_0, false, vec2<u32>(19234u, u_input.a)), vec4<u32>(arg_0.b, arg_1, global1.x, arg_0.b), reverseBits(vec4<u32>(arg_0.b, 4294967295u, arg_0.b, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -24341i, -1791i, -30888i), vec4<i32>(-9857i, -1i, 1i, 25937i)))).zx) ^ (abs(vec2<u32>(firstLeadingBit(1u), arg_1)) & func_3(-424f, vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-522f, 1228f), 766f), global2[_wgslsmith_index_u32(~global1.x, 5u)]).wy);
    var var_1 = func_1(~(~vec2<u32>(var_0.x << (global1.x % 32u), 1u)), _wgslsmith_sub_vec4_u32(countOneBits(firstTrailingBit(~vec4<u32>(93226u, 4294967295u, 90518u, 33643u))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_1, arg_0.b, global1.x, global1.x)), vec4<u32>(global1.x, 25070u, u_input.a, ~51088u), vec4<u32>(var_0.x, global1.x, max(arg_1, u_input.a), 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(48692u, firstLeadingBit(41087u), max(41654u, ~arg_0.b), abs(arg_0.b)), ~vec4<u32>(func_3(564f, vec3<f32>(-601f, -661f, -2098f), global2[_wgslsmith_index_u32(arg_1, 5u)]).x, 32542u, _wgslsmith_add_u32(4294967295u, arg_1), 21229u)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, -11929i, _wgslsmith_sub_i32(-7189i, 0i)), -1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, -78080i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29576i, -45894i), _wgslsmith_div_vec2_i32(vec2<i32>(-42340i, 0i), vec2<i32>(-34422i, 37323i)))), 8965i, 1i));
    let var_2 = vec3<u32>(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(~42678u, var_1.b), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(var_1.b, 53032u)), ~vec2<u32>(global1.x, arg_1), !var_1.a.x)), var_1.b, func_5((var_1.a.x && arg_0.a.x) & true, global0[_wgslsmith_index_u32(var_1.b, 3u)], !arg_0.a.x, select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, arg_0.b), vec2<u32>(arg_1, 4294967295u)), vec2<u32>(global1.x, global1.x), true) ^ ~(~vec2<u32>(u_input.b, 517u))).x);
    global1 = ~(abs(vec2<u32>(_wgslsmith_sub_u32(10227u, 0u), arg_0.b)) | vec2<u32>(~1u, 1u));
    let var_3 = reverseBits(~(~(~4508i) << (var_0.x % 32u)));
    return u_input.b ^ arg_0.b;
}

fn func_7(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = -min(vec3<i32>(~(~(-10478i)), 1i, 2147483647i), max(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, 1i)));
    var var_1 = ~(~firstTrailingBit(_wgslsmith_add_u32(global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 1u)))));
    let var_2 = vec4<f32>(-1295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1171f * 1208f))), _wgslsmith_f_op_f32(2075f + -1228f)))), -1902f, _wgslsmith_f_op_f32(f32(-1f) * -2208f));
    var var_3 = vec3<i32>(var_0.x ^ ~(-22323i), var_0.x, countOneBits(var_0.x));
    return vec3<f32>(_wgslsmith_f_op_f32(688f * _wgslsmith_f_op_f32(var_2.x + var_2.x)), var_2.x, var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(vec2<bool>(true, false)) && true;
    var var_0 = _wgslsmith_f_op_vec3_f32(func_7(Struct_1(vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), false), ~func_6(func_1(vec2<u32>(28963u, 81844u), vec4<u32>(1u, 4294967295u, u_input.b, global1.x), vec4<u32>(0u, 49304u, 16219u, global1.x), vec4<i32>(-13079i, 7373i, 27167i, 40571i)), abs(u_input.b)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>((~26428u ^ (global1.x >> (8843u % 32u))) | u_input.a, _wgslsmith_add_u32(max(~global1.x, global1.x), 27332u), func_6(Struct_1(vec2<bool>(true, false), u_input.a), ~(64659u | global1.x)), ~(~(~u_input.a))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(566f, var_0.x, var_0.x)))), func_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2281u, 12534u, 34115u), vec3<u32>(21353u, 33595u, 4294967295u)), _wgslsmith_mult_u32(36714u, u_input.b)), ~(vec4<u32>(3397u, 54779u, 36231u, global1.x) | vec4<u32>(u_input.b, 93258u, global1.x, u_input.b)), firstTrailingBit(vec4<u32>(u_input.b, u_input.a, global1.x, 0u)) & select(vec4<u32>(global1.x, u_input.a, u_input.b, u_input.a), vec4<u32>(u_input.a, global1.x, u_input.a, 4294967295u), vec4<bool>(false, true, true, false)), reverseBits(vec4<i32>(0i, 1i, 1i, 0i)) << (~vec4<u32>(u_input.a, 61279u, u_input.b, global1.x) % vec4<u32>(32u))))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(97553u, 14523u, u_input.a) & ~vec3<u32>(4294967295u, 13300u, 0u), ~(~vec3<u32>(78455u, 25026u, global1.x))), ~select(select(vec3<u32>(0u, global1.x, 1u), vec3<u32>(61706u, u_input.a, 29620u), true), vec3<u32>(global1.x, global1.x, 17118u) << (vec3<u32>(14696u, 4294967295u, global1.x) % vec3<u32>(32u)), select(vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)))));
}

