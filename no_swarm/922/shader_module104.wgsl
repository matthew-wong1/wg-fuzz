struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: array<vec4<bool>, 15>;

var<private> global3: array<i32, 26> = array<i32, 26>(-7840i, 2147483647i, i32(-2147483648), -25871i, 0i, -22469i, 38069i, 1458i, -20427i, 4626i, 41406i, 6643i, 2147483647i, i32(-2147483648), -40836i, 18358i, -1i, 2147483647i, 1i, -4586i, i32(-2147483648), 30254i, 22663i, 24661i, 0i, 32575i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = u_input.a;
    var var_0 = vec2<f32>(-197f, -1346f);
    return vec4<u32>(max(~_wgslsmith_add_u32(countOneBits(0u), u_input.a), ~firstLeadingBit(u_input.a) & firstLeadingBit(_wgslsmith_mod_u32(arg_0.c.x, u_input.a))), 0u, select(arg_0.c.x, u_input.a, arg_0.a == global3[_wgslsmith_index_u32(reverseBits(~0u), 26u)]), 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.x, 2147483647i, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 46519u, 45770u, 4294967295u), ~(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(~func_3(Struct_1(1i, arg_2.x, vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), ~(~vec4<u32>(u_input.a, u_input.a, 84483u, u_input.a)))));
    global1 = any(select(vec3<bool>(_wgslsmith_mult_u32(var_0.c.x, 4294967295u) < var_0.c.x, true, !all(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), all(vec3<bool>(false, false, false))), vec3<bool>(all(vec3<bool>(false, false, false)), false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, false))), !(true & any(vec2<bool>(true, false)))));
    var var_1 = ~(arg_0 >> (_wgslsmith_add_vec4_u32(var_0.c, var_0.c >> ((var_0.c << (var_0.c % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = select(!(!vec3<bool>(false, false, any(vec4<bool>(false, false, false, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, true))), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), -485f, _wgslsmith_f_op_f32(arg_1 + arg_1), arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(floor(arg_1)), 1460f, arg_1))), vec4<f32>(-723f, arg_1, 1035f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) * arg_1)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec4<bool> {
    global2 = array<vec4<bool>, 15>();
    var var_0 = firstTrailingBit(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)] & 1i, i32(-1i) * -arg_1.b, -11246i));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(arg_3));
    global1 = select(var_1 && true, all(select(global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 15u)], vec4<bool>(true, !arg_0, !arg_0, var_1), vec4<bool>(true, false, true, true))), all(!global2[_wgslsmith_index_u32(28342u, 15u)]) || var_1);
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2, _wgslsmith_sub_u32(arg_1.c.x, ~_wgslsmith_add_u32(4294967295u, 0u))), 28966u), 15u)];
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = !select(select(select(global2[_wgslsmith_index_u32(15329u, 15u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, arg_0.c.x), 15u)], false), vec4<bool>(true, true, true, true), -23266i != max(0i, arg_0.b)), select(global2[_wgslsmith_index_u32(u_input.a, 15u)], vec4<bool>(all(vec4<bool>(true, false, true, true)), select(true, true, false), 4294967295u == u_input.a, any(vec2<bool>(true, false))), func_4(true, Struct_1(-20711i, 11023i, vec4<u32>(13533u, 4294967295u, 23167u, u_input.a)), arg_0.c.x, _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(10607i, -1i, arg_0.b, global3[_wgslsmith_index_u32(arg_0.c.x, 26u)]), 445f, vec4<i32>(-21906i, global3[_wgslsmith_index_u32(arg_0.c.x, 26u)], arg_0.b, 1i))))), select(vec4<bool>(all(vec3<bool>(false, false, true)), true, func_4(true, Struct_1(arg_0.b, -1i, arg_0.c), 0u, vec4<f32>(-643f, 1181f, 1364f, -1418f)).x, true), global2[_wgslsmith_index_u32(u_input.a, 15u)], (31961u == u_input.a) && true));
    var var_1 = Struct_1(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(50024i, arg_0.a, global3[_wgslsmith_index_u32(17499u, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<i32>(global3[_wgslsmith_index_u32(37600u, 26u)], arg_0.a, arg_0.b, arg_0.b))) << (~_wgslsmith_add_u32(u_input.a, 39013u) % 32u), -34633i), -abs(-1i), ~(~_wgslsmith_mult_vec4_u32(max(arg_0.c, arg_0.c), arg_0.c)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-796f - _wgslsmith_div_f32(-874f, -1172f)))))) * _wgslsmith_f_op_f32(-170f - _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(1035f))), -504f)));
    var var_3 = !var_0.xy;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, -108f), var_2))));
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    global0 = 0u;
    var var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true))));
    var var_1 = ~max(~(-vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], arg_0.b, -1i)), vec3<i32>(-global3[_wgslsmith_index_u32(arg_1.c.x, 26u)], _wgslsmith_mod_i32(arg_1.a, 36001i), func_1(arg_1).a)) | max(vec3<i32>(arg_1.b, -1i, global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(59512u, u_input.a), 26u)]), vec3<i32>(-10507i, abs(arg_1.a), _wgslsmith_add_i32(arg_1.b, global3[_wgslsmith_index_u32(~1u, 26u)])));
    global3 = array<i32, 26>();
    return _wgslsmith_mult_i32(-20430i, var_1.x) & ~(75608i << (_wgslsmith_mod_u32(_wgslsmith_add_u32(26516u, u_input.a), 51963u & arg_1.c.x) % 32u));
}

fn func_6(arg_0: i32, arg_1: i32) -> i32 {
    global0 = select(u_input.a, 0u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -291f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-2376f)), _wgslsmith_f_op_f32(floor(105f))))));
    global1 = all(vec4<bool>(true, true, _wgslsmith_mod_i32(func_1(Struct_1(0i, -1i, vec4<u32>(4294967295u, 33350u, 20619u, 1u))).b, ~arg_1) >= arg_0, false));
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(u_input.a), u_input.a, 1u, ~u_input.a ^ 1u), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 32315u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) & ~vec4<u32>(142787u, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(38097u, 20536u, u_input.a), vec3<u32>(u_input.a, 4294967295u, 9154u)), u_input.a, ~u_input.a, u_input.a), vec4<u32>(max(firstTrailingBit(42026u), 1u), abs(u_input.a) << ((u_input.a & u_input.a) % 32u), u_input.a, ~(22741u & u_input.a)))), 15u)];
    let var_1 = select(select(vec3<bool>(true, false, var_0.x), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, true), var_0.x), !vec3<bool>(select(true, var_0.x, true), !var_0.x, !var_0.x)), func_4(select(true, func_4(false, Struct_1(arg_0, 1i, vec4<u32>(u_input.a, 24297u, 1u, u_input.a)), 43322u ^ u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, 1000f, -1513f, 449f))).x, !var_0.x), func_1(func_1(func_1(Struct_1(5488i, 31403i, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))), 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(1423f + 843f), 1f, 285f))).xww, !(!select(select(vec3<bool>(var_0.x, var_0.x, false), var_0.yxz, var_0.x), var_0.wzy, select(var_0.xxz, var_0.ywy, false))));
    global1 = true;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_6(firstLeadingBit(func_5(func_1(Struct_1(-72688i, global3[_wgslsmith_index_u32(u_input.a, 26u)], vec4<u32>(4294967295u, 50431u, u_input.a, 1u))), func_1(Struct_1(29195i, global3[_wgslsmith_index_u32(u_input.a, 26u)], vec4<u32>(u_input.a, 37665u, 1u, u_input.a))), _wgslsmith_f_op_f32(708f - -880f))), global3[_wgslsmith_index_u32(24087u, 26u)]), -1i, countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(15658u, u_input.a, 0u, 4294967295u) | vec4<u32>(1u, u_input.a, u_input.a, 3143u), vec4<u32>(u_input.a, u_input.a, u_input.a, 89555u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(14063u, 0u, 33288u, u_input.a) % vec4<u32>(32u)), func_3(Struct_1(-994i, global3[_wgslsmith_index_u32(4294967295u, 26u)], vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))) % vec4<u32>(32u))));
    var var_1 = var_0.b;
    let var_2 = select(-_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.b, -5859i, -92902i, -17920i)), countOneBits(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], 0i, -44392i, global3[_wgslsmith_index_u32(u_input.a, 26u)]))) >> (vec4<u32>(var_0.c.x, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), var_0.c.zy), ~u_input.a) % vec4<u32>(32u)), -vec4<i32>(-global3[_wgslsmith_index_u32(12492u | var_0.c.x, 26u)], _wgslsmith_add_i32(var_0.a, var_0.a) ^ global3[_wgslsmith_index_u32(countOneBits(var_0.c.x), 26u)], abs(max(3840i, 1i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(-38119i, global3[_wgslsmith_index_u32(9928u, 26u)]), 42248i)), !vec4<bool>(true && all(vec3<bool>(true, true, true)), all(!global2[_wgslsmith_index_u32(var_0.c.x, 15u)]), false, select(true, any(vec2<bool>(true, true)), true)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 754f, -637f)) * vec3<f32>(-1000f, 422f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(168f, 1726f, 793f) - vec3<f32>(1173f, -1025f, 1430f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1157f, -1178f, -1190f), vec3<f32>(-499f, -1777f, -1293f))))));
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~max(~4294967295u, 48129u), var_0.c.x, any(func_4(46763u <= var_0.c.x, func_1(var_0), func_3(Struct_1(var_0.b, 43375i, var_0.c)).x, vec4<f32>(var_3.x, -842f, var_3.x, var_3.x)))), var_0.c.x), 26u)];
    let var_4 = Struct_1(-_wgslsmith_div_i32(16190i, firstTrailingBit(~23981i)), _wgslsmith_mult_i32(-48383i, ~min(69585i, -1i)), vec4<u32>(4294967295u, min(~(var_0.c.x ^ 44793u), var_0.c.x), u_input.a, _wgslsmith_mod_u32(~(~var_0.c.x), func_3(func_1(Struct_1(1354i, -1i, vec4<u32>(1u, 0u, 1u, u_input.a)))).x)));
    global2 = array<vec4<bool>, 15>();
    var var_5 = -1i;
    var var_6 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.x, var_3.x), _wgslsmith_f_op_f32(-var_3.x))), var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_6.x), var_4.c.x, countOneBits(var_0.c.x), _wgslsmith_f_op_f32(floor(var_6.x)));
}

