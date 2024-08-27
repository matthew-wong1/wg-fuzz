struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(-514f, 1000f, -772f, 1261f, 1300f, 401f, 604f, -1158f, 141f, -150f, 724f, -956f, -537f, -1408f, 1033f, 127f, 1951f, -497f, 1568f, 1000f, 1719f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> bool {
    let var_0 = Struct_2(~abs(select(max(vec4<u32>(4294967295u, arg_2.x, u_input.a.x, arg_2.x), vec4<u32>(71729u, 11865u, 32174u, 20150u)), ~vec4<u32>(arg_2.x, u_input.a.x, 1u, u_input.a.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)))), arg_2.x <= select(~max(4294967295u, arg_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, u_input.a.x, u_input.a.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_2.x, u_input.a.x), vec4<u32>(1u, 58674u, 0u, 13378u))), any(vec2<bool>(true, true)) && true), Struct_1(vec2<i32>(-1i) * -(~u_input.c.xz), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1808f), arg_1, _wgslsmith_f_op_f32(sign(-1960f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_2.x, 21u)], arg_1, arg_1, arg_1)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1165f, arg_1, -2017f, global0[_wgslsmith_index_u32(1u, 21u)])))))), -(_wgslsmith_mult_vec2_i32(arg_0.xx, vec2<i32>(-7622i, -17038i)) & (u_input.b | vec2<i32>(u_input.c.x, u_input.b.x)))), vec4<i32>(abs(~(-1i)), u_input.c.x, arg_0.x, -14393i), ~abs(_wgslsmith_sub_u32(62598u, _wgslsmith_add_u32(9022u, 0u))));
    var var_1 = Struct_2(~(~vec4<u32>(33237u, 25385u, var_0.a.x, 1u) & abs(var_0.a)) | ~var_0.a, min(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~1u) >= min(0u, var_0.a.x), Struct_1(vec2<i32>(var_0.d.x, firstLeadingBit(u_input.b.x) & 0i), vec4<f32>(-472f, 1178f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 21u)])), 923f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_0.e, 21u)])))), var_0.c.a), _wgslsmith_add_vec4_i32(var_0.d, var_0.d), 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(var_1.c.b));
    global0 = array<f32, 21>();
    var var_3 = var_1.b;
    return var_0.b;
}

fn func_2() -> vec4<i32> {
    var var_0 = firstLeadingBit(-abs(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, ~u_input.a.x, ~u_input.a.x), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(48981u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x))), _wgslsmith_add_vec4_u32(vec4<u32>(73511u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 333u, u_input.a.x, 10901u)))) % vec4<u32>(32u));
    var_0 = vec4<i32>(-19020i, 1i, var_0.x, u_input.c.x) ^ ~vec4<i32>(10517i ^ max(1i, u_input.c.x), -33390i, countOneBits(-12976i), 1i);
    let var_1 = Struct_2(~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, 56812u, 1u), vec4<u32>(u_input.a.x, 110895u, u_input.a.x, 9718u), vec4<bool>(false, false, true, false)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), ~0u, _wgslsmith_sub_u32(u_input.a.x, min(40334u, u_input.a.x))), func_3(-min(vec3<i32>(u_input.c.x, 0i, var_0.x), vec3<i32>(2147483647i, 38433i, -8917i)), 1518f, u_input.a.xx, _wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, 1i), -1083i)) & true, Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(7872u, 21u)], -1000f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -265f)))))), vec2<i32>(_wgslsmith_clamp_i32(23350i, u_input.b.x, var_0.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, u_input.c.x), 1i))), -vec4<i32>(~u_input.b.x, max(45715i, u_input.b.x), u_input.b.x, ~1i) & ((abs(vec4<i32>(var_0.x, 0i, u_input.b.x, 2147483647i)) | abs(vec4<i32>(0i, -25736i, -16032i, var_0.x))) & select(vec4<i32>(0i, 30839i, 2147483647i, 2147483647i), reverseBits(vec4<i32>(var_0.x, u_input.b.x, -8210i, 1i)), true)), ~(~(~min(89482u, 4294967295u))));
    var var_2 = var_1.c;
    global0 = array<f32, 21>();
    return ~vec4<i32>(var_2.c.x, -2147483647i, -2147483647i, ~2147483647i);
}

fn func_1() -> Struct_2 {
    var var_0 = !(global0[_wgslsmith_index_u32(1u, 21u)] == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 53214u), vec4<u32>(24984u, u_input.a.x, u_input.a.x, u_input.a.x)), 21u)] - -891f));
    var var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c.x, -1i, -1i, -3057i), vec4<i32>(-2147483647i, 26895i, 1i, u_input.b.x), vec4<bool>(true, false, true, true)) ^ (vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -13266i) << (vec4<u32>(17237u, u_input.a.x, 24205u, 0u) % vec4<u32>(32u))), -func_2(), func_2() >> (vec4<u32>(259u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))) & ~vec4<i32>(-2147483647i << (u_input.a.x % 32u), 31741i, ~_wgslsmith_sub_i32(u_input.c.x, 2147483647i), _wgslsmith_sub_i32(u_input.c.x | 1i, _wgslsmith_mod_i32(3889i, u_input.c.x)));
    return Struct_2(select(~((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) & ~vec4<u32>(u_input.a.x, 1u, 19281u, u_input.a.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(24534u, 4294967295u, 18942u, u_input.a.x), _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.a.x, 77640u, 27050u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1476u, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, 23121u, 40705u))), vec4<bool>(true, true, _wgslsmith_f_op_f32(-560f - global0[_wgslsmith_index_u32(0u, 21u)]) < _wgslsmith_f_op_f32(f32(-1f) * -307f), any(vec4<bool>(true, true, false, false)) == true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1537f * global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 21u)]))) < -572f, Struct_1(var_1.xz, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -342f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) - vec4<f32>(-205f, -2058f, -1748f, 234f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 1113f, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 2362f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 685f, global0[_wgslsmith_index_u32(2127u, 21u)], global0[_wgslsmith_index_u32(22937u, 21u)])))))), max(_wgslsmith_div_vec2_i32(func_2().wx, countOneBits(u_input.c.yy)), var_1.ww)), min(vec4<i32>(-37455i, var_1.x, -min(var_1.x, 0i), -6664i), func_2()), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~(4294967295u << (u_input.a.x % 32u)), u_input.a.x), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 21>();
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, u_input.c.x), 18301i);
    global0 = array<f32, 21>();
    var var_1 = reverseBits(6354i);
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.b.x, vec2<u32>(~min(_wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_add_u32(27358u, 0u)), 7712u));
}

