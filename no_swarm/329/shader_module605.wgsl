struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: array<u32, 11>;

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~arg_2.c, 11u)], u_input.d), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 11u)], 0u), u_input.d)) << (vec2<u32>(_wgslsmith_div_u32(0u, u_input.d), ~(141914u >> ((15364u << (u_input.d % 32u)) % 32u))) % vec2<u32>(32u));
    let var_1 = arg_2;
    var var_2 = ~(-(~u_input.e));
    global0 = array<u32, 11>();
    var_2 = ~u_input.e << (~(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 39038u, u_input.d), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.e, 4294967295u, 4294967295u, 6740u), vec4<u32>(0u, global0[_wgslsmith_index_u32(arg_2.c, 11u)], 0u, 64724u))) << ((vec4<u32>(85658u, 49802u, arg_2.c, 33097u) | ~vec4<u32>(var_0.x, 21518u, 1u, global0[_wgslsmith_index_u32(0u, 11u)])) % vec4<u32>(32u))) % vec4<u32>(32u));
    return vec3<bool>(true, 929f <= arg_1, !(firstLeadingBit(var_2.x) > ~_wgslsmith_mult_i32(0i, 5301i)));
}

fn func_3() -> u32 {
    global0 = array<u32, 11>();
    var var_0 = Struct_1(vec3<bool>(true, all(!func_1(u_input.b, global1.x, Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), u_input.d, vec2<i32>(u_input.c, -1i), u_input.d), vec4<bool>(true, true, true, true)).zy), !all(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(func_1(u_input.a, global1.x, Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), u_input.d, vec2<i32>(0i, 0i), 4294967295u), vec4<bool>(true, false, true, false)).x, true, false, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(u_input.d, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)]), vec3<u32>(u_input.d, u_input.d, 4294967295u)), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17977u, 51079u), vec3<u32>(u_input.d, 33864u, u_input.d)), 11u)]), 11u)], ~u_input.e.yy, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, u_input.d, u_input.d) & ~vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.d, 11u)], 0u, 3493u), ~vec4<u32>(u_input.d, 22336u, u_input.d, 4294967295u) ^ select(vec4<u32>(1630u, 51721u, global0[_wgslsmith_index_u32(u_input.d, 11u)], 84295u), vec4<u32>(0u, u_input.d, 4294967295u, u_input.d), true)), vec4<u32>(~(~global0[_wgslsmith_index_u32(u_input.d, 11u)]), _wgslsmith_mod_u32(1u, u_input.d), u_input.d >> (max(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 11u)], 11u)]) % 32u), 38262u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, 897f, -1741f, 251f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1012f, 1741f, global1.x, global1.x)))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + _wgslsmith_div_vec4_f32(vec4<f32>(-377f, -748f, 984f, global1.x), vec4<f32>(global1.x, -700f, global1.x, global1.x))))))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.zzy), var_1.wxz)))), var_1.xzy));
    var var_2 = Struct_1(var_0.b.wwy, !vec4<bool>(var_0.a.x, true, true, var_0.a.x), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, 66789u), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.e, u_input.d), vec2<u32>(4294967295u, u_input.d))) >> (min(var_0.e, abs(var_0.c)) % 32u), 11u)], max(_wgslsmith_mod_u32(u_input.d, var_0.c), var_0.c) << (var_0.c % 32u)), -vec2<i32>(20185i, u_input.e.x), _wgslsmith_mod_u32(u_input.d | ~45212u, 18258u));
    return max(_wgslsmith_clamp_u32(6954u, var_2.c, global0[_wgslsmith_index_u32(var_2.e, 11u)]) << (~abs(abs(u_input.d)) % 32u), ~0u);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    global1 = vec3<f32>(1057f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)));
    let var_0 = arg_1;
    global0 = array<u32, 11>();
    let var_1 = Struct_1(!vec3<bool>(true, any(func_1(u_input.c, -221f, Struct_1(var_0.a, arg_1.b, 0u, var_0.d, 35068u), var_0.b).zy), all(select(vec2<bool>(false, arg_1.a.x), vec2<bool>(var_0.b.x, var_0.a.x), var_0.a.x))), arg_1.b, reverseBits(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.c, 10494u, 0u, 4294967295u), ~vec4<u32>(var_0.e, 48815u, arg_1.c, arg_1.e))), vec2<i32>(_wgslsmith_sub_i32(arg_1.d.x, u_input.c), var_0.d.x), global0[_wgslsmith_index_u32(((0u & global0[_wgslsmith_index_u32(26513u, 11u)]) | func_3()) | var_0.e, 11u)] | global0[_wgslsmith_index_u32(~15811u, 11u)]);
    let var_2 = Struct_1(vec3<bool>(!(func_1(var_1.d.x, -1145f, var_1, var_1.b).x && any(vec4<bool>(var_0.b.x, var_1.b.x, false, var_0.a.x))), min(16965i, 46284i ^ var_1.d.x) != (1i | var_1.d.x), all(vec2<bool>(false, true))), select(arg_1.b, select(!select(vec4<bool>(arg_1.a.x, var_1.a.x, var_0.a.x, false), vec4<bool>(arg_1.a.x, false, false, var_1.a.x), var_1.b.x), !(!vec4<bool>(var_1.a.x, false, arg_1.b.x, true)), vec4<bool>(true, !arg_1.a.x, all(vec3<bool>(var_0.b.x, true, var_1.a.x)), var_1.b.x)), all(var_0.b.wzy) == any(!vec4<bool>(arg_1.b.x, false, false, var_1.a.x))), var_0.c, var_1.d, 1u);
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(select(arg_0.b.zzy, !vec3<bool>(func_2(global1.x, Struct_1(vec3<bool>(arg_1.a.x, arg_0.a.x, arg_0.b.x), vec4<bool>(true, true, arg_0.b.x, false), u_input.d, arg_0.d, arg_0.e)), arg_0.b.x, !arg_1.a.x), !((-575f == global1.x) && false)), vec4<bool>((countOneBits(arg_0.d.x) >> (_wgslsmith_add_u32(arg_0.e, 0u) % 32u)) >= (arg_0.d.x | -8143i), false, arg_0.b.x, any(!vec4<bool>(arg_0.b.x, true, false, arg_0.b.x))), arg_1.e, u_input.e.xz, firstLeadingBit(~func_3()));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.e, u_input.e);
    global0 = array<u32, 11>();
    let var_2 = !select(arg_0.b.xxw, !select(!vec3<bool>(false, var_0.a.x, true), func_1(8931i, -1307f, arg_0, arg_1.b), false), false);
    var var_3 = Struct_1(func_1(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.e, u_input.e), -u_input.e)), global1.x, arg_1, !var_0.b), arg_0.b, 13574u ^ var_0.e, firstLeadingBit(var_0.d), 0u);
    return select(vec4<bool>(true, true, min(34118u, _wgslsmith_sub_u32(u_input.d, arg_0.c)) < ~48501u, any(select(arg_0.b, arg_0.b, !var_0.b))), vec4<bool>(_wgslsmith_f_op_f32(-arg_2.x) > global1.x, -reverseBits(2147483647i) != -_wgslsmith_dot_vec3_i32(u_input.e.yww, u_input.e.ywy), arg_1.a.x, !var_0.a.x), !(var_2.x | any(!var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global1 = vec3<f32>(3605f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -322f))), -223f);
    var var_1 = ~(-(-_wgslsmith_add_vec2_i32(u_input.e.zx, vec2<i32>(u_input.b, -10219i)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    let var_2 = Struct_1(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), func_4(Struct_1(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), func_1(var_0, global1.x, Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), 57256u, u_input.e.xy, 4294967295u), vec4<bool>(true, false, false, false))), vec4<bool>(func_2(-1049f, Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, false), global0[_wgslsmith_index_u32(u_input.d, 11u)], u_input.e.ww, global0[_wgslsmith_index_u32(0u, 11u)])), func_1(-219i, 485f, Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, false, false), 75618u, vec2<i32>(-2147483647i, -13431i), global0[_wgslsmith_index_u32(u_input.d, 11u)]), vec4<bool>(true, true, false, false)).x, -1000f >= global1.x, any(vec2<bool>(false, false))), abs(88900u), vec2<i32>(-20787i, 641i) & (u_input.e.xz ^ u_input.e.ww), max(~u_input.d, global0[_wgslsmith_index_u32(u_input.d, 11u)] ^ 48034u)), Struct_1(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec4<bool>(true, false, true, true), 34546u, u_input.e.zy, _wgslsmith_sub_u32(u_input.d, u_input.d) & u_input.d), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, global1.x, 1546f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1220f, -219f, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1191f, 1187f), vec3<f32>(global1.x, global1.x, global1.x))))), ~global0[_wgslsmith_index_u32(~select(~global0[_wgslsmith_index_u32(79314u, 11u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)], 40670u, 4294967295u, u_input.d), vec4<u32>(99391u, global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 32129u)), any(vec2<bool>(false, false))), 11u)], countOneBits(vec2<i32>(var_1.x, _wgslsmith_mult_i32(firstTrailingBit(var_0), 0i))), ~global0[_wgslsmith_index_u32(25555u, 11u)]);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))) + global1.x);
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(var_4.c, 38942u) & vec2<u32>(1u, u_input.d))), vec2<u32>(~0u, ~var_2.c)));
}

