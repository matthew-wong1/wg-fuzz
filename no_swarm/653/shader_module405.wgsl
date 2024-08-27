struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.b.b, ~4294967295u), _wgslsmith_add_u32(min(_wgslsmith_div_u32(4294967295u, 4294967295u), arg_0.b.b | _wgslsmith_add_u32(4294967295u, arg_0.b.b)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 20169u, 71848u), vec3<u32>(16161u, 16572u, 38480u))), min(abs(u_input.b.x), reverseBits(57042u))), 3u)];
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-802f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1152f, arg_0.b.a.x))), _wgslsmith_div_f32(1000f, -339f), var_0.b.a.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, arg_0.b.a.x, var_0.b.a.x, var_0.b.a.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, 2276f, arg_0.b.a.x, 381f) + vec4<f32>(var_0.b.a.x, 829f, arg_0.b.a.x, 368f)) + arg_0.b.a))), arg_0.b.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.b.a))))));
    return vec4<bool>(!any(select(!vec3<bool>(arg_0.b.c, false, global0.x), !vec3<bool>(true, arg_0.b.c, arg_0.b.c), select(vec3<bool>(true, var_1, arg_0.b.c), vec3<bool>(var_1, var_0.b.c, arg_0.b.c), vec3<bool>(true, global0.x, false)))), arg_0.b.c == all(vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(var_0.b.c, arg_0.b.c)))), false, true);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = abs(vec2<i32>(~6030i << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, arg_1.x, u_input.b.x), u_input.b.zzz) % 32u), u_input.c)) >> (~_wgslsmith_div_vec2_u32(max(vec2<u32>(38844u, arg_1.x), vec2<u32>(u_input.b.x, 52928u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.b.xx, vec2<u32>(arg_2.b, u_input.b.x), arg_1.yw))) % vec2<u32>(32u));
    global1 = array<Struct_1, 23>();
    let var_1 = Struct_2(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(var_0.x, 76659i) >> (vec2<u32>(1u, 49431u) % vec2<u32>(32u))), var_0), global1[_wgslsmith_index_u32(83173u, 23u)]);
    global1 = array<Struct_1, 23>();
    global0 = !select(!(!(!global2[_wgslsmith_index_u32(arg_2.b, 3u)])), select(select(!vec2<bool>(global0.x, true), vec2<bool>(global0.x, arg_2.c), !global2[_wgslsmith_index_u32(1u, 3u)]), select(select(global2[_wgslsmith_index_u32(16527u, 3u)], global2[_wgslsmith_index_u32(u_input.b.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(true, true), select(global2[_wgslsmith_index_u32(25337u, 3u)], vec2<bool>(arg_0, true), false)), false), !global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.b, arg_1.x), arg_1.zw), 3u)]);
    return vec2<bool>(all(select(select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(true, false, var_1.b.c, arg_0), vec4<bool>(false, global0.x, true, var_1.b.c)), select(vec4<bool>(arg_2.c, true, var_1.b.c, arg_0), vec4<bool>(true, true, global0.x, false), vec4<bool>(arg_0, false, true, var_1.b.c)), func_3(var_1)), !vec4<bool>(arg_2.c, var_1.b.c, arg_0, var_1.b.c), true)), all(!select(select(vec4<bool>(false, true, global0.x, true), vec4<bool>(false, true, var_1.b.c, arg_0), false), select(vec4<bool>(false, var_1.b.c, true, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, var_1.b.c, global0.x))));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global0 = select(vec2<bool>(true, arg_0.b.c), vec2<bool>(global0.x, any(!vec3<bool>(false, arg_0.b.c, true))), select(select(global2[_wgslsmith_index_u32(arg_1 << (0u % 32u), 3u)], func_2(false, _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(4294967295u, arg_1, arg_0.b.b, 4294967295u)), Struct_1(arg_0.b.a, arg_0.b.b, true)), false), select(select(vec2<bool>(arg_0.b.c, false), global2[_wgslsmith_index_u32(0u, 3u)], vec2<bool>(true, arg_0.b.c)), global2[_wgslsmith_index_u32(~37780u, 3u)], false), vec2<bool>(any(vec2<bool>(true, true)), global0.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b.a)), _wgslsmith_sub_u32(0u, min(~1u, _wgslsmith_mult_u32(min(23361u, arg_0.b.b), max(46424u, 0u)))), true);
    var var_1 = arg_0;
    global1 = array<Struct_1, 23>();
    global0 = select(select(vec2<bool>(var_1.b.c, var_1.b.a.x < arg_0.b.a.x), vec2<bool>(arg_0.b.c, !func_2(false, vec4<u32>(u_input.b.x, 66851u, 16880u, 4294967295u), arg_0.b).x), all(!select(vec3<bool>(false, global0.x, var_1.b.c), vec3<bool>(var_0.c, arg_0.b.c, var_1.b.c), vec3<bool>(false, true, global0.x)))), global2[_wgslsmith_index_u32(33569u, 3u)], arg_0.b.a.x <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(min(-1263f, -1138f))), var_1.b.a.x)));
    return global1[_wgslsmith_index_u32(arg_1, 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)), ~(~arg_0.b), true);
    let var_1 = -_wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.c, 16293i))), -vec2<i32>(_wgslsmith_clamp_i32(1i, 1i, -1i), -u_input.c));
    var var_2 = select(firstLeadingBit(firstLeadingBit(firstTrailingBit(select(vec3<i32>(1i, -2147483647i, u_input.a), vec3<i32>(var_1.x, var_1.x, 0i), true)))), -(vec3<i32>(2147483647i, var_1.x, countOneBits(51632i)) | select(vec3<i32>(u_input.c, -2147483647i, var_1.x), firstTrailingBit(vec3<i32>(u_input.c, 1784i, 1i)), !vec3<bool>(false, global0.x, true))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-63777i, -72959i), var_1)) > ~(~(~var_1.x)));
    global2 = array<vec2<bool>, 3>();
    let var_3 = Struct_2(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(select(-1i, u_input.a, var_0.c), ~var_2.x), vec2<i32>(_wgslsmith_add_i32(u_input.a, 0i), -36297i)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_2.x, var_2.x)) & ~vec2<i32>(var_1.x, 2947i), select(var_2.xx, -var_2.yy, true))), global1[_wgslsmith_index_u32(var_0.b, 23u)]);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - _wgslsmith_f_op_vec4_f32(select(arg_1.a, arg_1.a, vec4<bool>(true, var_0.c, true, arg_0.c))))) * _wgslsmith_f_op_vec4_f32(exp2(func_1(var_3, firstTrailingBit(var_0.b)).a))));
}

fn func_5(arg_0: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.wy);
    let var_1 = reverseBits(-(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, -1i), ~vec2<i32>(-9076i, u_input.a)) & vec2<i32>(_wgslsmith_sub_i32(u_input.c, -66351i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c, -1i), vec3<i32>(-1i, -1i, -1i)))));
    var var_2 = var_1 >> (firstLeadingBit(vec2<u32>(1u, 53979u)) % vec2<u32>(32u));
    global1 = array<Struct_1, 23>();
    let var_3 = var_0.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_2(vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<f32>(-891f, -521f, 1033f, -521f), 4294967295u, false)), u_input.b.x), func_1(Struct_2(vec2<i32>(6887i, 0i), global1[_wgslsmith_index_u32(17974u, 23u)]), 9899u))))), global0.x);
    global1 = array<Struct_1, 23>();
    let var_0 = func_1(Struct_2(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, 1017i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(22214i, u_input.c), vec2<i32>(u_input.c, -2147483647i)), 1i)), func_1(Struct_2(-vec2<i32>(10674i, -2147483647i), func_1(Struct_2(vec2<i32>(u_input.a, 46970i), global1[_wgslsmith_index_u32(10607u, 23u)]), u_input.b.x)), ~u_input.b.x)), ~13188u);
    var var_1 = Struct_2(vec2<i32>(-24791i | ~(u_input.a >> (var_0.b % 32u)), _wgslsmith_sub_i32(u_input.a & 2147483647i, _wgslsmith_div_i32(u_input.a, -1i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<i32>(0i, u_input.c, u_input.a))), var_0);
    global2 = array<vec2<bool>, 3>();
    var var_2 = !(!(!vec2<bool>(false, var_0.c)));
    global2 = array<vec2<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.zz, select(countOneBits(~u_input.b.x) << ((var_0.b | _wgslsmith_div_u32(21782u, var_0.b)) % 32u), select(_wgslsmith_sub_u32(4294967295u, ~59940u), ~(~0u), !(!var_0.c)), false), ~max(~(-15219i), -2147483647i), vec2<f32>(-1057f, var_1.b.a.x));
}

