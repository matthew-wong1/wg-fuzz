struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -2594f;

var<private> global2: array<bool, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    let var_2 = var_1;
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(479f - _wgslsmith_div_f32(-1323f, _wgslsmith_f_op_f32(-1452f * arg_1.a))), var_0.a), var_1.b, select(!select(vec2<bool>(true, true), select(var_0.c, vec2<bool>(true, true), vec2<bool>(true, true)), false), select(arg_1.c, select(select(vec2<bool>(global0.c.x, var_0.c.x), var_1.c, var_0.c.x), !vec2<bool>(var_0.c.x, arg_1.c.x), 1u == var_1.b.x), global0.c), arg_1.c.x), 0i);
    global0 = var_2;
    return 7844u >> (~4294967295u % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1.a;
    global1 = _wgslsmith_f_op_f32(max(1003f, 827f));
    var var_1 = ~vec3<u32>(~func_3(!arg_2, Struct_1(var_0, vec4<u32>(4502u, 19350u, arg_0.b.x, arg_0.b.x), global0.c, u_input.b.x)), arg_1.b.x, abs(firstLeadingBit(~1u)));
    let var_2 = Struct_1(261f, (~countOneBits(global0.b) ^ vec4<u32>(1u, 1u, ~1u, u_input.c)) >> (min(~vec4<u32>(4294967295u, global0.b.x, global0.b.x, 4294967295u) >> (vec4<u32>(var_1.x, arg_0.b.x, 96081u, arg_1.b.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 28419u, arg_1.b.x, u_input.c), ~arg_1.b)) % vec4<u32>(32u)), !vec2<bool>(all(arg_1.c) | global0.c.x, true), select(16279i, global0.d, !global0.c.x));
    let var_3 = 1u;
    return arg_0;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = 1u >> (var_0.b.x % 32u);
    let var_2 = 41643u;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-global0.a), ~((_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, global0.b.x, 4294967295u, global0.b.x), var_0.b) | global0.b) | ~func_2(Struct_1(var_0.a, arg_1.b, vec2<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 32u)], false), 1i), Struct_1(-1598f, arg_0, vec2<bool>(true, global0.c.x), var_0.d), true).b), select(var_0.c, global0.c, true), -11551i);
    var var_4 = _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(u_input.a.zx, countOneBits(vec2<i32>(var_0.d, -2147483647i))), u_input.d) ^ u_input.d.x;
    return select(var_3.c, vec2<bool>(false, _wgslsmith_clamp_u32(var_2 >> (var_1 % 32u), select(var_1, var_2, true), 0u) <= u_input.c), true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global0 = func_2(Struct_1(-1631f, vec4<u32>(func_3(global2[_wgslsmith_index_u32(global0.b.x, 32u)], Struct_1(-499f, vec4<u32>(arg_1.b.x, 1u, arg_1.b.x, 16497u), vec2<bool>(false, false), arg_1.d)) & ~1u, u_input.c, select(~arg_0.b.x, ~35095u, true), 4294967295u), global0.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_1.d, u_input.d.x, arg_0.d), u_input.a), u_input.a), _wgslsmith_div_i32(-7306i, global0.d))), arg_0, arg_0.a == -353f);
    return vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))), func_2(func_2(func_2(func_2(Struct_1(global0.a, vec4<u32>(global0.b.x, 51496u, arg_1.b.x, arg_0.b.x), global0.c, arg_0.d), Struct_1(744f, vec4<u32>(u_input.c, global0.b.x, global0.b.x, global0.b.x), arg_1.c, -2147483647i), global2[_wgslsmith_index_u32(arg_0.b.x, 32u)]), arg_1, true), func_2(Struct_1(arg_1.a, vec4<u32>(16600u, global0.b.x, global0.b.x, arg_1.b.x), vec2<bool>(arg_0.c.x, arg_1.c.x), arg_1.d), func_2(arg_0, Struct_1(arg_1.a, vec4<u32>(4294967295u, u_input.c, 2752u, 64691u), vec2<bool>(true, true), -29626i), global2[_wgslsmith_index_u32(0u, 32u)]), true), 1u == select(arg_1.b.x, arg_1.b.x, true)), arg_1, false).a);
}

fn func_1() -> vec3<f32> {
    global2 = array<bool, 32>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(global0.a, global0.b, func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), global0.b), func_2(Struct_1(global0.a, vec4<u32>(12064u, 6077u, global0.b.x, u_input.c), global0.c, 0i), Struct_1(-1580f, vec4<u32>(global0.b.x, 1u, u_input.c, u_input.c), vec2<bool>(global0.c.x, var_0), global0.d), select(global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)]))), -2147483647i), Struct_1(global0.a, ~(~vec4<u32>(1u, global0.b.x, u_input.c, 0u)), vec2<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(u_input.c, 32u)], true), vec3<bool>(false, false, true), false)), any(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 32u)], global2[_wgslsmith_index_u32(global0.b.x, 32u)], true, true))), -17568i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1632f) + -788f), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(769f, global0.b, global0.c, -25056i), Struct_1(-407f, global0.b, global0.c, 2147483647i))).x * _wgslsmith_div_f32(var_1.x, 1230f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_5(func_2(Struct_1(197f, vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.c, 2147483647i), Struct_1(1005f, vec4<u32>(20270u, 14635u, 4294967295u, 1u), global0.c, global0.d), global0.c.x), func_2(Struct_1(-855f, global0.b, global0.c, 105253i), Struct_1(global0.a, global0.b, global0.c, global0.d), true))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f * global0.a)), global0.a, global0.a)));
    let var_3 = !(!global0.c.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(254f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(var_2.x, vec4<u32>(u_input.c, global0.b.x, global0.b.x, 1u), global0.c, global0.d), Struct_1(-199f, global0.b, global0.c, u_input.b.x))).x, _wgslsmith_f_op_f32(596f + global0.a), -563f)) + var_2.zzz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_1 = Struct_1(560f, vec4<u32>(~1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(global0.b.yz, global0.b.yy)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_mult_u32(6063u, global0.b.x)), _wgslsmith_dot_vec2_u32(~global0.b.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b.x, 1u), global0.b.zz, vec2<u32>(7763u, u_input.c)))) ^ ((select(global0.b, global0.b, vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], true, false, false)) | global0.b) ^ vec4<u32>(~14040u, ~global0.b.x, _wgslsmith_div_u32(43176u, 29163u), u_input.c)), vec2<bool>(global0.c.x | true, global2[_wgslsmith_index_u32(~u_input.c, 32u)]), -min(reverseBits(u_input.d.x >> (u_input.c % 32u)), ~global0.d));
    var var_2 = vec4<u32>(~u_input.c, firstLeadingBit(u_input.c), 42395u, u_input.c);
    let var_3 = func_2(func_2(func_2(func_2(func_2(Struct_1(var_0.x, global0.b, vec2<bool>(global0.c.x, false), var_1.d), Struct_1(var_0.x, vec4<u32>(global0.b.x, u_input.c, var_2.x, 14036u), var_1.c, 18887i), global0.c.x), Struct_1(global0.a, vec4<u32>(19985u, global0.b.x, var_2.x, 0u), global0.c, 1i), any(vec3<bool>(global0.c.x, false, true))), func_2(func_2(Struct_1(-2352f, global0.b, global0.c, u_input.b.x), Struct_1(-2115f, var_1.b, vec2<bool>(global0.c.x, global0.c.x), 2147483647i), true), func_2(Struct_1(-1079f, vec4<u32>(38660u, var_1.b.x, 39184u, 22714u), vec2<bool>(true, global2[_wgslsmith_index_u32(global0.b.x, 32u)]), -29538i), Struct_1(574f, var_1.b, vec2<bool>(true, false), global0.d), false), var_1.b.x <= 25436u), global0.c.x), Struct_1(_wgslsmith_f_op_f32(select(global0.a, var_1.a, var_1.c.x && true)), global0.b, var_1.c, _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.a.x, 5885i))), true), Struct_1(1547f, global0.b, !var_1.c, -u_input.b.x), func_4(abs(vec4<u32>(abs(var_2.x), _wgslsmith_clamp_u32(var_1.b.x, var_2.x, 0u), firstLeadingBit(39294u), _wgslsmith_dot_vec2_u32(var_1.b.wx, var_2.yx))), Struct_1(global0.a, _wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, global0.b.x, u_input.c, global0.b.x), vec4<u32>(1u, u_input.c, 4294967295u, global0.b.x), global0.c.x), var_1.b), func_4(~var_1.b, Struct_1(-1239f, vec4<u32>(1u, 1u, 62231u, global0.b.x), global0.c, 1i)), _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 1i, firstTrailingBit(var_1.d)))).x);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_4 = var_3;
    var var_5 = vec4<u32>(countOneBits(~13129u), reverseBits(_wgslsmith_dot_vec2_u32((global0.b.wz << (vec2<u32>(var_1.b.x, var_1.b.x) % vec2<u32>(32u))) >> (var_4.b.xy % vec2<u32>(32u)), var_3.b.wz)), 4294967295u, ~(~2439u));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-714f, var_4.a, _wgslsmith_f_op_f32(296f - -219f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(317f, var_4.a, var_1.a))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1105f, -867f, global0.a), vec3<f32>(1283f, var_0.x, global0.a), vec3<bool>(global0.c.x, true, false)))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a, -1412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-507f + 404f))))));
    let var_6 = select(_wgslsmith_mult_vec2_i32(u_input.d, vec2<i32>(select(min(var_4.d, var_1.d), -var_4.d, any(var_1.c)), -(~var_3.d))), -abs(u_input.d) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(1u), ~19034u), firstTrailingBit(vec2<u32>(u_input.c, global0.b.x) & vec2<u32>(var_3.b.x, 21817u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.b.x, global0.b.x), vec2<u32>(5213u, var_4.b.x)), firstLeadingBit(var_1.b.x))) % vec2<u32>(32u)), var_4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_div_vec4_u32(global0.b, global0.b))), -vec2<i32>(-var_3.d, _wgslsmith_mult_i32(~global0.d, 1i)), 4294967295u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_1.a, var_4.a), vec3<f32>(387f, var_0.x, 270f)))))));
}

