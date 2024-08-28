struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(448f, 1244f, 1070f);

var<private> global1: array<u32, 13> = array<u32, 13>(1u, 0u, 20469u, 0u, 75494u, 1u, 1u, 5554u, 0u, 0u, 13754u, 26049u, 4294967295u);

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true));

var<private> global3: u32 = 13622u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = -_wgslsmith_mod_i32(24045i, arg_0.d);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.xwy - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 548f, 265f) - vec3<f32>(-467f, 714f, 752f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(step(global0.x, 1370f)), _wgslsmith_f_op_f32(440f + 131f)))), 1i == reverseBits(-var_0))));
    var var_1 = _wgslsmith_add_i32(arg_0.d, arg_0.d) & 2147483647i;
    let var_2 = true;
    let var_3 = arg_0.c.x;
    return ~(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.d, 43577i), -49877i, -arg_0.d) & var_0);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(arg_1, 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(arg_0.b.c.x, 13u)], arg_0.b.c.x), u_input.a.x)), arg_3.b);
    var var_1 = reverseBits(arg_2.zy);
    var var_2 = select(vec2<bool>(true, all(select(arg_0.c, select(vec3<bool>(true, arg_3.a.c.x, arg_0.a.x), vec3<bool>(arg_3.a.c.x, arg_0.b.a, arg_3.a.c.x), arg_0.a.zxx), all(arg_0.c.zx)))), !(!vec2<bool>(true, true | arg_0.a.x)), any(arg_0.c));
    return ~arg_2.x;
}

fn func_1(arg_0: bool) -> i32 {
    global3 = ~22452u;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-845f)), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_div_f32(-1598f, global0.x)));
    let var_0 = _wgslsmith_dot_vec4_i32(~vec4<i32>(max(abs(-2147483647i), abs(-2147483647i)), ~func_2(Struct_1(arg_0, true, u_input.a, -2147483647i), vec4<f32>(global0.x, 949f, -2166f, 500f)), ~1i, -_wgslsmith_sub_i32(-1i, 12709i)), vec4<i32>(-50533i, firstTrailingBit(-_wgslsmith_mult_i32(-13438i, -1i)), func_3(Struct_2(!global2[_wgslsmith_index_u32(0u, 3u)], Struct_1(arg_0, true, u_input.a, -15836i), vec3<bool>(arg_0, arg_0, arg_0)), u_input.a.x, -min(vec3<i32>(14907i, -17888i, 1i), vec3<i32>(-1110i, 22158i, -27993i)), Struct_3(Struct_2(vec4<bool>(arg_0, arg_0, false, false), Struct_1(false, arg_0, vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(35444u, 13u)]), -1i), vec3<bool>(arg_0, true, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(3306u, 4294967295u, 7194u), vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])), Struct_2(vec4<bool>(true, true, true, true), Struct_1(false, true, vec2<u32>(u_input.a.x, 14138u), 43122i), vec3<bool>(true, true, arg_0)), _wgslsmith_mod_i32(2147483647i, 59685i), vec3<u32>(12975u, 0u, global1[_wgslsmith_index_u32(4294967295u, 13u)]))), 1i));
    let var_1 = Struct_3(Struct_2(!vec4<bool>(var_0 >= var_0, select(false, true, arg_0), all(vec2<bool>(true, arg_0)), true), Struct_1(arg_0, false, vec2<u32>(0u, u_input.a.x), max(2147483647i | var_0, var_0 & var_0)), select(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0 | arg_0), select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, false)), vec3<bool>(arg_0, false, false), !vec3<bool>(arg_0, false, false)), any(vec3<bool>(arg_0, false, arg_0)))), min(vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), ~u_input.a.x, ~893u), reverseBits(firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 67510u, global1[_wgslsmith_index_u32(37091u, 13u)])))) | reverseBits(vec3<u32>(u_input.a.x, ~global1[_wgslsmith_index_u32(31967u, 13u)], _wgslsmith_mod_u32(44073u, 7819u))), Struct_2(vec4<bool>((-14656i >> (u_input.a.x % 32u)) < -1i, true, all(vec2<bool>(arg_0, false)), !(arg_0 != true)), Struct_1(arg_0, true, vec2<u32>(_wgslsmith_add_u32(27320u, u_input.a.x), 4294967295u), 1i >> (~u_input.a.x % 32u)), !select(!vec3<bool>(arg_0, arg_0, false), !vec3<bool>(false, arg_0, true), select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), false))), ~(-11620i), vec3<u32>(~min(u_input.a.x, 54823u) << (_wgslsmith_add_u32(u_input.a.x, 88149u) % 32u), 13321u | (~11101u >> (global1[_wgslsmith_index_u32(firstTrailingBit(1u), 13u)] % 32u)), ~56287u));
    var var_2 = ~vec4<i32>(0i, -var_0 >> ((~1u ^ u_input.a.x) % 32u), -2147483647i, var_1.a.b.d);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(66802u, 1u);
    let var_0 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -684f) < _wgslsmith_f_op_f32(global0.x - global0.x));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(17425u, 13u)], u_input.a.x, 4294967295u, u_input.a.x)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26144u, 13u)], 13u)], 4294967295u), abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 30911u, 97153u, 43122u))) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 125010u, u_input.a.x, _wgslsmith_add_u32(0u, u_input.a.x) ^ 1u)), 3u)], Struct_1(any(vec3<bool>(true, true, true)), any(vec2<bool>(all(vec3<bool>(false, false, true)), true)), vec2<u32>(~u_input.a.x, countOneBits(17832u)), i32(-1i) * -var_0), !vec3<bool>(!any(vec3<bool>(true, true, false)), false, any(vec3<bool>(false, false, false))));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-378f, _wgslsmith_f_op_f32(global0.x + 550f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-395f, global0.x)), global0.x), global0.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1295f - 998f)))), _wgslsmith_f_op_f32(-819f - -520f), -904f));
    var var_2 = Struct_3(Struct_2(!(!(!var_1.a)), Struct_1(var_1.b.b, true, _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(12759u, 4294967295u)), max(var_1.b.c, u_input.a)), _wgslsmith_sub_i32(i32(-1i) * -46399i, ~var_1.b.d)), !var_1.c), vec3<u32>(4437u, 1u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(3358u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)]) << (vec2<u32>(u_input.a.x, var_1.b.c.x) % vec2<u32>(32u)), u_input.a, var_1.a.yz), firstLeadingBit(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)])))), Struct_2(select(!var_1.a, !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.b.a), !(!global2[_wgslsmith_index_u32(var_1.b.c.x, 3u)])), Struct_1(!var_1.b.a, var_1.b.b, max(reverseBits(u_input.a), select(var_1.b.c, var_1.b.c, var_1.a.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.d, var_0, var_1.b.d), vec3<i32>(2147483647i, 2147483647i, 25015i)), var_1.b.d)), !vec3<bool>(true, var_1.b.a, true)), (-14796i >> (_wgslsmith_sub_u32(~15230u, abs(var_1.b.c.x)) % 32u)) << (_wgslsmith_dot_vec2_u32((var_1.b.c >> (var_1.b.c % vec2<u32>(32u))) ^ reverseBits(vec2<u32>(var_1.b.c.x, 57184u)), abs(~vec2<u32>(u_input.a.x, 1u))) % 32u), abs(min(~vec3<u32>(u_input.a.x, 18377u, 1u), vec3<u32>(u_input.a.x, 16063u, 0u)) & vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.b.c.x, 9378u, var_1.b.c.x), vec4<u32>(1u, u_input.a.x, 94011u, global1[_wgslsmith_index_u32(0u, 13u)])), var_1.b.c.x)));
    var var_3 = vec4<bool>(any(var_2.a.a.ww), any(vec4<bool>(true, true, var_2.c.a.x, false)), var_1.b.b, var_1.a.x);
    var var_4 = true;
    let var_5 = _wgslsmith_clamp_vec4_u32(~(select(~vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], 23908u, var_2.e.x, var_2.e.x), ~vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(29260u, 13u)], 4294967295u), global2[_wgslsmith_index_u32(var_2.a.b.c.x & var_2.c.b.c.x, 3u)]) & vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global1[_wgslsmith_index_u32(1u, 13u)], var_2.a.b.c.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 13u)])), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]), var_2.c.b.c.x)), select(vec4<u32>(0u, _wgslsmith_div_u32(var_2.c.b.c.x, ~u_input.a.x), 4294967295u, ~(~1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~13397u, var_2.c.b.c.x, max(u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(~0u, 13u)]), max(vec4<u32>(38833u, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], var_2.b.x, u_input.a.x), abs(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x, var_2.a.b.c.x)))), true), ~abs(~(~vec4<u32>(var_1.b.c.x, 1753u, 4244u, 12236u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x), -1000f, var_2.c.b.d, _wgslsmith_mod_i32(func_3(var_2.a, ~abs(var_1.b.c.x), -(vec3<i32>(var_0, -2147483647i, 2147483647i) ^ vec3<i32>(var_0, -1i, 0i)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(57263u, 3u)], var_1.b, vec3<bool>(var_1.a.x, true, false)), vec3<u32>(0u, 0u, 47518u), var_2.c, countOneBits(34705i), var_2.b)), var_1.b.d));
}

