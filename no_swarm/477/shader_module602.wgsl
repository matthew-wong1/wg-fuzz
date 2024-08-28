struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: vec3<bool>;

var<private> global2: vec2<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_3(arg_1, Struct_1(arg_1.zww, 0i, _wgslsmith_sub_i32(global2.x, firstLeadingBit(global2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(3138u, 1u), vec2<u32>(0u, 33378u)), _wgslsmith_clamp_u32(1u, 12590u, 68995u), select(48251u, 58579u, false)), vec4<u32>(1u, 1u, 1u, 1u)), false), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -520f))), 695f));
    global0 = array<bool, 32>();
    global1 = vec3<bool>(any(!vec2<bool>(var_0.b.d.x < var_0.b.d.x, !global0[_wgslsmith_index_u32(13569u, 32u)])), all(arg_1), any(vec2<bool>(arg_1.x, global1.x)));
    var_0 = Struct_3(vec4<bool>(false, arg_1.x, (min(u_input.a, global2.x) | var_0.b.c) > u_input.b.x, var_0.a.x & select(var_0.b.e, true, var_0.a.x & true)), var_0.b, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(866f + _wgslsmith_f_op_f32(select(348f, 313f, global0[_wgslsmith_index_u32(3361u, 32u)] && var_0.a.x)))));
    global2 = -u_input.b.yy;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), -337f), 193f);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = 488f;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), -1281f, 385f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, var_0, 621f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-952f, var_0, -1000f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, -931f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0, var_0, 143f))), true))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(f32(-1f) * -311f))))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(563f, var_0)) - _wgslsmith_f_op_f32(func_3(var_0, vec4<bool>(true, false, arg_2.x, false)))))));
    var var_2 = Struct_1(!(!select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, arg_2.x, false), false), select(vec3<bool>(arg_2.x, global1.x, arg_2.x), vec3<bool>(true, global0[_wgslsmith_index_u32(5060u, 32u)], arg_2.x), false), vec3<bool>(arg_2.x, true, false))), countOneBits(select(~arg_0.x, ~18326i, !global0[_wgslsmith_index_u32(54491u, 32u)])) | arg_0.x, arg_0.x, (arg_1.a >> (vec4<u32>(0u, ~arg_1.a.x, countOneBits(arg_1.a.x), arg_1.a.x) % vec4<u32>(32u))) | vec4<u32>(~arg_1.a.x, min(3338u, 1u) ^ (21613u & arg_1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(75260u, arg_1.a.x, 4294967295u), vec3<u32>(arg_1.a.x, 4294967295u, 4294967295u)), select(4294967295u, arg_1.a.x, !global1.x)), true);
    return ~var_2.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, firstTrailingBit(arg_0.x)), 32u)], false, all(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 32u)], true, global1.x, global1.x))), any(vec2<bool>(all(arg_2.a), global1.x))), Struct_1(arg_2.a, global2.x, arg_2.c, vec4<u32>(~arg_2.d.x & ~arg_2.d.x, ~_wgslsmith_dot_vec3_u32(arg_0.www, arg_2.d.xxz), _wgslsmith_clamp_u32(arg_2.d.x, 1u, arg_0.x ^ 4294967295u), ~59363u >> (0u % 32u)), global0[_wgslsmith_index_u32(~min(0u, max(4294967295u, 12206u)), 32u)]), vec2<f32>(-2740f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1800f, -505f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-607f, 808f))))));
    global0 = array<bool, 32>();
    let var_1 = Struct_1(select(var_0.b.a, !vec3<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(true, global1.x)), 2147483647i <= arg_2.b), (_wgslsmith_sub_u32(arg_2.d.x, 0u) != ~var_0.b.d.x) && (arg_2.d.x >= arg_2.d.x)), u_input.b.x, 0i, _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.d.x, 1u, ~arg_0.x, firstLeadingBit(30647u))), var_0.b.d), !all(select(vec2<bool>(var_0.b.e, global0[_wgslsmith_index_u32(4294967295u, 32u)]), arg_2.a.xx, vec2<bool>(true, true))) || global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0.x, ~arg_2.d.x), 32u)]);
    var var_2 = Struct_2(firstTrailingBit(firstLeadingBit(vec4<u32>(var_0.b.d.x, var_0.b.d.x, arg_1, arg_2.d.x) & vec4<u32>(arg_0.x, arg_0.x, 44952u, arg_2.d.x))));
    var var_3 = !(false || !(_wgslsmith_f_op_f32(-var_0.c.x) > _wgslsmith_f_op_f32(trunc(var_0.c.x))));
    return Struct_4(all(!var_1.a), select(arg_2.a.zx, global1.yy, !global1.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * 276f)), -(~abs(~u_input.a)), vec3<bool>(all(var_0.a.yw) | global0[_wgslsmith_index_u32(var_1.d.x, 32u)], global1.x, 0i < min(1i, select(u_input.b.x, 0i, var_1.e))));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = func_4(~(~(func_2(vec3<i32>(global2.x, global2.x, global2.x), Struct_2(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x)), vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)], false)) << (vec4<u32>(arg_0.x, 106402u, 0u, 33921u) % vec4<u32>(32u)))), 4294967295u, Struct_1(select(vec3<bool>(any(vec4<bool>(true, false, true, true)), false, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], true, global0[_wgslsmith_index_u32(arg_0.x, 32u)]), !vec3<bool>(global1.x, false, true)), global2.x, 0i, vec4<u32>(0u, 1u, _wgslsmith_mod_u32(max(0u, 1u), firstTrailingBit(38603u)), ~select(arg_0.x, arg_0.x, false)), false));
    let var_1 = Struct_2(vec4<u32>(23759u, arg_0.x, ~(~arg_0.x >> (_wgslsmith_dot_vec3_u32(arg_0.www, arg_0.yyz) % 32u)), 421u));
    global1 = var_0.e;
    var var_2 = any(vec4<bool>(true, all(vec4<bool>(var_0.a, 27280u != arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 32u)] | true, var_0.b.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(61391u, arg_0.x >> (9769u % 32u)), 4294967295u), 32u)], select(true, true, global1.x)));
    var var_3 = var_0.c;
    return !(!(var_0.a || global1.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool) -> Struct_2 {
    global1 = arg_1.a.wyz;
    global2 = u_input.b.zy;
    let var_0 = Struct_2(arg_1.b.d);
    var var_1 = Struct_4(true, vec2<bool>(any(!select(vec3<bool>(false, arg_2, global0[_wgslsmith_index_u32(var_0.a.x, 32u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], false), false)), !global1.x), 1144f, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(29946i), -31463i, abs(18507i & global2.x), 0i), vec4<i32>(global2.x | -22219i, func_4(~var_0.a, 1u, arg_1.b).d, 2147483647i, arg_1.b.b)), vec3<bool>(!(!global0[_wgslsmith_index_u32(1u, 32u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~25469u, _wgslsmith_sub_u32(arg_1.b.d.x, abs(36395u))), 32u)], all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 23410u), var_0.a.zw), 32u)], select(false, global0[_wgslsmith_index_u32(1u, 32u)], arg_2), select(arg_2, true, global1.x)))));
    var var_2 = ~(abs(vec2<u32>(min(var_0.a.x, arg_1.b.d.x), firstLeadingBit(arg_1.b.d.x))) >> (firstLeadingBit(var_0.a.ww) % vec2<u32>(32u)));
    return Struct_2(func_2(u_input.b, Struct_2(var_0.a << (arg_1.b.d % vec4<u32>(32u))), !vec2<bool>(var_1.b.x && global0[_wgslsmith_index_u32(3148u, 32u)], true || global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(156f, -905f))), Struct_3(vec4<bool>(!func_1(vec4<u32>(4294967295u, 4294967295u, 22915u, 94243u)), true, !global0[_wgslsmith_index_u32(abs(0u), 32u)], all(vec4<bool>(true, true, true, true))), Struct_1(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.x, global1.x)), -abs(global2.x), -(~43653i), vec4<u32>(_wgslsmith_mod_u32(62430u, 2257u), 4294967295u, select(4294967295u, 60026u, true), 1u), true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(519f, _wgslsmith_f_op_f32(max(1710f, 1060f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(221f, -1163f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-389f, 887f))), vec2<bool>(global1.x, any(global1.xz))))), true);
    let var_1 = Struct_2(~(~var_0.a));
    global0 = array<bool, 32>();
    var var_2 = !select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 32u)], global1.x, global0[_wgslsmith_index_u32(94537u, 32u)]), select(vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(0u, 32u)], global1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a.x, 32u)], false, true), !vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 32u)], false, global0[_wgslsmith_index_u32(0u, 32u)], false)), vec4<bool>(true, true, !global1.x, global0[_wgslsmith_index_u32(var_1.a.x, 32u)] || global0[_wgslsmith_index_u32(var_1.a.x, 32u)])), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(31816u, 32u)], global0[_wgslsmith_index_u32(var_0.a.x, 32u)]), vec4<bool>(true, global1.x, true, global0[_wgslsmith_index_u32(36996u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 32u)], true, false, global0[_wgslsmith_index_u32(var_1.a.x, 32u)])), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 32u)], true)), true);
    global0 = array<bool, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_1.a), -(~2147483647i), ~(~_wgslsmith_mod_vec4_u32(~var_1.a, var_0.a)), ~1u, abs(~global2.x));
}

