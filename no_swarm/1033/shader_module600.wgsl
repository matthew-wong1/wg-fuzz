struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(4294967295u, 89383u, 0u), vec3<u32>(40635u, 0u, 4294967295u), vec3<u32>(0u, 30274u, 0u), vec3<u32>(0u, 1721u, 4294967295u), vec3<u32>(1u, 14954u, 52630u), vec3<u32>(64795u, 4294967295u, 31029u), vec3<u32>(1u, 0u, 18250u), vec3<u32>(1u, 64217u, 67787u), vec3<u32>(29737u, 4294967295u, 0u), vec3<u32>(0u, 45644u, 4294967295u), vec3<u32>(102621u, 4294967295u, 41916u), vec3<u32>(19382u, 23738u, 12564u), vec3<u32>(1u, 1u, 6588u), vec3<u32>(4294967295u, 0u, 6202u), vec3<u32>(1u, 18166u, 1u), vec3<u32>(30u, 24168u, 55536u));

var<private> global2: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false));

var<private> global3: u32 = 47471u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<bool> {
    global0 = array<vec3<bool>, 16>();
    let var_0 = Struct_5(Struct_3(Struct_1(min(1u, u_input.b.x), vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(831f, 106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + -2477f)), 1857f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-676f - -541f), 499f))), Struct_1((u_input.b.x >> (4294967295u % 32u)) | _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))), Struct_1(u_input.b.x, select(select(vec3<bool>(false, false, true), !global0[_wgslsmith_index_u32(52386u, 16u)], select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), vec3<bool>(any(global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)))));
    return select(global2[_wgslsmith_index_u32(~min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9173u, 1u, var_0.a.c.a), vec4<u32>(7743u, var_0.a.a.a, var_0.b.a, 6108u))) ^ var_0.b.a, 16u)], select(vec4<bool>(all(global0[_wgslsmith_index_u32(4294967295u, 16u)]), select(true, var_0.a.c.b.x, true), true, true), select(vec4<bool>(any(global2[_wgslsmith_index_u32(var_0.a.a.a, 16u)]), all(global0[_wgslsmith_index_u32(4294967295u, 16u)]), true, any(vec3<bool>(false, var_0.b.b.x, var_0.a.c.b.x))), select(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], vec4<bool>(var_0.b.b.x, true, true, false), !vec4<bool>(true, var_0.b.b.x, var_0.a.a.b.x, var_0.b.b.x)), vec4<bool>(false, var_0.a.a.b.x, false && var_0.a.c.b.x, var_0.b.b.x)), vec4<bool>(!var_0.a.c.b.x, false, var_0.a.c.a <= u_input.b.x, any(select(var_0.a.a.b.zy, var_0.a.a.b.zx, var_0.a.a.b.zy)))), var_0.a.a.b.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    let var_0 = !all(func_3());
    global2 = array<vec4<bool>, 16>();
    let var_1 = Struct_5(Struct_3(Struct_1(arg_0.x, global0[_wgslsmith_index_u32(~(1u << (arg_0.x % 32u)), 16u)]), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-313f * 722f))), 1806f, -1106f, 985f), Struct_1(_wgslsmith_mult_u32(~1u, abs(u_input.b.x)), select(global0[_wgslsmith_index_u32(0u ^ u_input.b.x, 16u)], !arg_1.yyy, func_3().x))), Struct_1(arg_0.x, vec3<bool>(!(arg_0.x == 0u), true, !select(true, var_0, true))));
    var var_2 = -firstTrailingBit(-abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 32695i, 1i), vec3<i32>(1975i, 5305i, arg_2.x))));
    var var_3 = var_1.a.b;
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec3<bool>(func_2(reverseBits(arg_2.xy & ~u_input.b), global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 20994u)), 16u)], vec2<i32>(abs(-31374i), -1i)), true, func_3().x);
    global2 = array<vec4<bool>, 16>();
    let var_1 = _wgslsmith_clamp_vec3_u32(arg_2 ^ vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(20943u, arg_2.x), select(~39390u, ~4294967295u, var_0.x)), global1[_wgslsmith_index_u32(arg_2.x, 16u)], arg_2);
    var var_2 = Struct_2(vec3<bool>(!any(global2[_wgslsmith_index_u32(~arg_2.x, 16u)]), true, true), _wgslsmith_mult_i32(arg_0.x, ~(1i & min(arg_0.x, -2147483647i))));
    var_2 = Struct_2(vec3<bool>(false, false, 4294967295u > max(~4294967295u, var_1.x)), ~2221i);
    return min(~(~var_1.x), u_input.b.x);
}

fn func_4(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = max(~u_input.b.x, ~min(_wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))));
    let var_1 = Struct_3(Struct_1(~_wgslsmith_sub_u32(var_0, 23263u), vec3<bool>(all(select(global2[_wgslsmith_index_u32(99287u, 16u)], vec4<bool>(false, false, arg_0.x, false), vec4<bool>(false, arg_0.x, true, true))), true, arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1027f, -1286f, _wgslsmith_f_op_f32(ceil(1518f)), _wgslsmith_f_op_f32(-211f * -1277f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(605f, -1399f, 1294f, -697f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 428f, -126f, 1489f) - vec4<f32>(1676f, -1547f, 1096f, 557f)))))), Struct_1(~(~_wgslsmith_sub_u32(0u, var_0)), arg_0.xwx));
    global1 = array<vec3<u32>, 16>();
    let var_2 = var_1.a;
    global0 = array<vec3<bool>, 16>();
    return Struct_2(vec3<bool>(!any(vec4<bool>(arg_0.x, false, true, var_2.b.x)), ~_wgslsmith_div_u32(u_input.b.x, 10336u) > 35917u, (true && all(arg_0.zzz)) || !(var_1.b.x < var_1.b.x)), _wgslsmith_add_i32(-30206i, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max((vec3<u32>(1u, u_input.b.x, 1u) ^ vec3<u32>(1u, u_input.b.x, 0u)) >> ((vec3<u32>(u_input.b.x, 4294967295u, 48792u) ^ vec3<u32>(1u, 61304u, 12215u)) % vec3<u32>(32u)), ~abs(global1[_wgslsmith_index_u32(u_input.b.x, 16u)])) & global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(~u_input.b.x, firstLeadingBit(u_input.b.x) >> (u_input.b.x % 32u))), 16u)];
    var var_1 = global2[_wgslsmith_index_u32(~1u, 16u)];
    var var_2 = Struct_4(func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(vec2<i32>(u_input.a, 2147483647i), 1i, ~vec3<u32>(17908u, 13870u, 41493u), vec4<bool>(true, false, false, var_1.x)), firstTrailingBit(1u)), 16u)]));
    let var_3 = firstTrailingBit(_wgslsmith_sub_u32(((4294967295u | var_0.x) >> (1u % 32u)) | (_wgslsmith_clamp_u32(57385u, var_0.x, u_input.b.x) << (1u % 32u)), min(_wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, min(var_0.x, u_input.b.x)), u_input.b.x)));
    global1 = array<vec3<u32>, 16>();
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -352f), -278f));
    var_1 = vec4<bool>(select(var_2.a.a.x, var_2.a.a.x, all(vec3<bool>(true, var_4 >= var_4, true))), true, all(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, max(18829u, ~var_0.x)), 16u)]), !all(vec3<bool>(false, var_2.a.a.x & false, var_2.a.a.x)));
    global0 = array<vec3<bool>, 16>();
    var_2 = Struct_4(func_4(select(select(global2[_wgslsmith_index_u32(1u, 16u)], !vec4<bool>(true, var_1.x, false, var_2.a.a.x), var_4 == var_4), func_3(), !(!vec4<bool>(var_1.x, var_2.a.a.x, true, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.xy >> (reverseBits(~firstTrailingBit(u_input.b)) % vec2<u32>(32u)), (vec4<u32>(~31878u, ~11681u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 0u, var_0.x, var_0.x), vec4<u32>(0u, 27965u, u_input.b.x, 26340u)), 1u) | vec4<u32>(1u, 0u, 16520u, 4294967295u)) ^ ~(~vec4<u32>(u_input.b.x, 0u, var_0.x, 55478u)), _wgslsmith_f_op_f32(sign(1039f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 102f, -1000f, var_4) - vec4<f32>(1160f, var_4, var_4, var_4)))) + vec4<f32>(_wgslsmith_f_op_f32(round(var_4)), _wgslsmith_f_op_f32(abs(314f)), 227f, _wgslsmith_f_op_f32(round(-1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4, var_4, 1184f, var_4), _wgslsmith_f_op_vec4_f32(vec4<f32>(-999f, var_4, var_4, -608f) + vec4<f32>(var_4, var_4, var_4, -395f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, 100f, -483f) * vec4<f32>(-2272f, -1615f, -997f, 176f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-106f, var_4, -324f, 321f), vec4<f32>(var_4, -649f, -1000f, var_4))))))), i32(-1i) * -reverseBits(-2147483647i));
}

