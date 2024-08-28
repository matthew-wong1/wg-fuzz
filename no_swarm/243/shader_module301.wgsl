struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec2<i32>(2147483647i, -1i)), Struct_2(vec2<i32>(1i, i32(-2147483648))), Struct_2(vec2<i32>(1i, 2147483647i)), Struct_2(vec2<i32>(11697i, 7691i)), Struct_2(vec2<i32>(46358i, 2147483647i)), Struct_2(vec2<i32>(i32(-2147483648), 0i)), Struct_2(vec2<i32>(44715i, -4595i)), Struct_2(vec2<i32>(0i, -28951i)), Struct_2(vec2<i32>(9164i, i32(-2147483648))), Struct_2(vec2<i32>(-12498i, i32(-2147483648))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    var var_0 = vec4<i32>(countOneBits(~_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, 1i), abs(vec2<i32>(47864i, 1i)))), -(~14211i << (~4294967295u % 32u)), countOneBits(_wgslsmith_mult_i32(~(-1i >> (u_input.a % 32u)), abs(i32(-1i) * -54707i))), firstLeadingBit(abs(1i)) & select(abs(1i), _wgslsmith_div_i32(1i, -12340i), global1.x));
    global1 = vec4<bool>(global1.x, ~25332u > _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(53134u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a) ^ 39600u), true, any(!global1.yzw));
    global0 = select(vec3<bool>(true, select(all(vec2<bool>(global1.x, global1.x)), !global0.x, false), !((var_0.x & var_0.x) != ~1i)), global1.yxy, select(!global1.wyw, global1.zzx, global1.x));
    var_0 = min(~(-(vec4<i32>(-10442i, 2365i, -1i, var_0.x) ^ vec4<i32>(var_0.x, 24983i, var_0.x, 0i))), firstTrailingBit(vec4<i32>(select(-53240i, var_0.x, global0.x), var_0.x ^ var_0.x, var_0.x, var_0.x))) | _wgslsmith_add_vec4_i32(min(min(abs(vec4<i32>(var_0.x, -35235i, var_0.x, var_0.x)), vec4<i32>(var_0.x, 14686i, var_0.x, var_0.x)), min(max(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), vec4<i32>(-2147483647i, -2147483647i, 0i, 39077i)), vec4<i32>(var_0.x, 2147483647i, var_0.x, 2147483647i) << (vec4<u32>(u_input.a, 4294967295u, 56590u, 1738u) % vec4<u32>(32u)))), ~abs(reverseBits(vec4<i32>(-407i, -2147483647i, var_0.x, -32926i))));
    var var_1 = vec3<u32>(1u, abs(_wgslsmith_mult_u32(~firstTrailingBit(1u), ~u_input.a)), ~4294967295u);
    return false;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    global0 = select(select(vec3<bool>(!all(vec3<bool>(false, true, true)), func_3() || all(global1.yyz), global0.x), global1.zzw, global1.wzz), select(select(global1.zxx, select(select(global1.www, global1.wxw, true), select(vec3<bool>(false, true, false), vec3<bool>(true, global0.x, global0.x), false), global0.x), vec3<bool>(all(global1.zwy), all(vec4<bool>(false, true, false, true)), global0.x)), !select(vec3<bool>(true, true, false), select(vec3<bool>(global0.x, global1.x, global0.x), global1.ywz, vec3<bool>(global0.x, global1.x, false)), true), global1.x), false);
    let var_0 = global0.yy;
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(i32(-1i) * -(~(-2147483647i)), -firstTrailingBit(1i >> (1u % 32u))), _wgslsmith_sub_i32(-2147483647i << ((~u_input.a & 19196u) % 32u), _wgslsmith_div_i32(1i, 1i)));
    global2 = array<Struct_2, 10>();
    global0 = select(!global1.xzz, global1.xww, select(!select(vec3<bool>(global1.x, global1.x, global0.x), vec3<bool>(false, global0.x, var_0.x), true), global1.yzx, !any(vec3<bool>(false, global1.x, var_0.x))));
    return vec4<bool>(!(arg_0.x >= arg_0.x), true, var_0.x, global0.x);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    global0 = !vec3<bool>(true, all(select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global0.x, false, true, false), vec4<bool>(true, true, global0.x, false)), !vec4<bool>(global1.x, false, global1.x, global0.x), all(vec3<bool>(true, global0.x, false)))), true);
    global2 = array<Struct_2, 10>();
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(870f * arg_1.x)))));
    var var_1 = !func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, 436f, var_0.a), _wgslsmith_f_op_vec3_f32(-arg_1), global1.xxw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, 963f, arg_1.x))) + vec3<f32>(arg_1.x, arg_1.x, 394f)), !(!global1.wyy))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(1205f - -396f))) - arg_1.x));
    return global2[_wgslsmith_index_u32(1u, 10u)];
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<f32>) -> vec4<bool> {
    global1 = select(vec4<bool>(true, global0.x, global1.x, false), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, -596f, 747f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_3.zwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(109f, arg_0.x, arg_0.x)))))), !vec4<bool>(all(!vec4<bool>(true, true, global1.x, false)), true, !global1.x & true, true));
    let var_0 = 16352u;
    global0 = global1.zzx;
    global2 = array<Struct_2, 10>();
    let var_1 = Struct_3(1f);
    return vec4<bool>(true, !func_3(), global0.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1763f, _wgslsmith_f_op_f32(ceil(1708f)))));
    global2 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_dot_vec4_i32(max(-vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-1i, countOneBits(-34601i), -2147483647i, 8057i)), ~vec4<i32>(1417i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -7866i, 7115i), vec3<i32>(1i, 1i, 1i)), _wgslsmith_mod_i32(1i, -2147483647i), -27724i));
    var var_2 = Struct_2(_wgslsmith_div_vec2_i32(~(~select(vec2<i32>(var_1, var_1), vec2<i32>(var_1, 0i), global0.x)), -vec2<i32>(var_1, 30580i ^ var_1)));
    var var_3 = global1.x;
    let var_4 = global2[_wgslsmith_index_u32(u_input.a, 10u)];
    let var_5 = true;
    let var_6 = all(global0.yx) || any(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1532f, 918f, -290f, var_0.a) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-759f, -940f, 962f, var_0.a)))), func_1(0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1694f, -455f, 489f) * vec3<f32>(-1000f, var_0.a, 1072f))), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, -180f, var_0.a, 254f), vec4<f32>(996f, -725f, 1100f, var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(abs(vec4<i32>(~(-1i), var_4.a.x | 2147483647i, ~var_2.a.x, var_1)), vec4<i32>(55240i, -11667i, 54555i, -1i)), vec3<f32>(_wgslsmith_div_f32(-752f, var_0.a), _wgslsmith_f_op_f32(-527f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a - var_0.a), _wgslsmith_f_op_f32(floor(-847f)), true))), var_0.a), abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_2.a.x, 49708i) ^ vec3<i32>(-1i, var_4.a.x, 29583i), vec3<i32>(15908i, -63555i, -2147483647i) | vec3<i32>(45855i, -16308i, var_2.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)), var_0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)) - -476f)))), u_input.a);
}

