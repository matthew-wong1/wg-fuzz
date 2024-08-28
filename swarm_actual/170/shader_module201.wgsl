struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<bool, 16>;

var<private> global2: i32 = 0i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_2(620f, vec4<u32>(14709u, arg_1.x, _wgslsmith_mod_u32(max(79397u, arg_1.x | 1u), max(firstTrailingBit(0u), abs(u_input.d.x))), 0u), Struct_1(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 2459u, arg_1.x), vec4<u32>(arg_1.x, 21068u, u_input.c, 2603u)))), !arg_2);
    let var_1 = -555f;
    var var_2 = var_0.c;
    global2 = abs(-1i);
    global1 = array<bool, 16>();
    return ~abs(~74236u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = true;
    global0 = vec2<bool>(!all(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), true)), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.c, arg_0.x), ~arg_0.x) >= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.c, arg_0.x), u_input.d) >> (func_3(0i, u_input.d.yxz, vec3<bool>(false, false, var_0)) % 32u), _wgslsmith_div_u32(arg_0.x >> (4294967295u % 32u), ~arg_0.x)));
    var var_1 = Struct_2(640f, u_input.d, Struct_1(select(~u_input.d.x & _wgslsmith_div_u32(0u, arg_0.x), func_3(-23167i, vec3<u32>(56723u, 1444u, 56596u), select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, global1[_wgslsmith_index_u32(17998u, 16u)]), vec3<bool>(false, global0.x, global1[_wgslsmith_index_u32(u_input.c, 16u)]))), true)), select(!(!select(vec3<bool>(false, true, var_0), vec3<bool>(true, global0.x, var_0), vec3<bool>(true, global0.x, false))), !vec3<bool>(var_0, true, global0.x), global0.x));
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(173f, _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(min(var_1.a, 1040f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - -250f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(~(~var_1.b.x), _wgslsmith_clamp_u32(u_input.c | arg_0.x, 70683u, reverseBits(3629u)), 13077u, 43266u), _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.c, u_input.c, 0u), select(vec4<u32>(arg_0.x, 26356u, arg_0.x, 12197u), vec4<u32>(1u, 17952u, u_input.c, arg_0.x), true))), Struct_1(1u), select(vec3<bool>(false, global0.x, !global0.x), vec3<bool>(true, all(vec4<bool>(true, var_0, true, true)), false), select(var_1.d, var_1.d, vec3<bool>(false, var_1.a > var_1.a, false))));
    var var_3 = false;
    return var_2.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(vec2<u32>(2350u, 27488u));
    let var_1 = Struct_2(arg_0.x, ~countOneBits(vec4<u32>(var_0.a, 4294967295u, u_input.d.x, 1u)) ^ _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(arg_2.a, arg_1.c.a, max(37502u, 4294967295u), _wgslsmith_mult_u32(var_0.a, arg_2.a))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(43342u, arg_2.a), var_0.a) & 74463u), select(select(!arg_1.d, select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(18942u, 16u)]), !arg_1.d, any(arg_1.d.zy)), select(arg_1.d, !arg_1.d, !arg_1.d)), arg_1.d, !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false, true))));
    global2 = ~reverseBits(~(~u_input.a));
    var var_2 = _wgslsmith_mod_vec3_i32(u_input.e, max(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e, u_input.e), 1i, abs(0i)) >> (~min(vec3<u32>(u_input.c, 10257u, var_0.a), vec3<u32>(4294967295u, var_1.b.x, 25616u)) % vec3<u32>(32u)), select(u_input.e & u_input.e, abs(min(vec3<i32>(u_input.a, -8697i, u_input.b), u_input.e)), any(vec2<bool>(true, true)) || select(false, arg_1.d.x, arg_1.d.x))));
    var var_3 = func_2(var_1.b.zz);
    return arg_1.c;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = select(!select(arg_0.d.yy, select(!vec2<bool>(false, arg_0.d.x), vec2<bool>(arg_0.d.x, false), !arg_0.d.xz), select(vec2<bool>(arg_0.d.x, false), arg_0.d.yy, global0.x)), select(vec2<bool>(all(arg_0.d.zx), global0.x), !(!(!vec2<bool>(arg_0.d.x, true))), !(!select(vec2<bool>(arg_0.d.x, false), arg_0.d.yy, arg_0.d.x))), !vec2<bool>(arg_0.d.x, false));
    let var_0 = vec4<u32>(func_2(u_input.d.zz).a, 83155u, ~(~(~42864u)), ~(u_input.c & ~33978u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-194f, arg_0.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1677f, 1342f)) - vec2<f32>(588f, arg_0.a)))) * vec2<f32>(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), arg_0.a));
    let var_2 = !arg_0.d.zz;
    let var_3 = arg_0.c;
    return Struct_1(arg_0.c.a);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(min(467f, -1000f)), u_input.d, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-151f, -545f, 885f)))), Struct_2(1661f, _wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(arg_0, 32533u, arg_0, 11064u)), func_2(vec2<u32>(63411u, 14753u)), vec3<bool>(arg_1, global0.x, arg_1)), Struct_1(_wgslsmith_mult_u32(arg_0, 4294967295u))), vec3<bool>(!(global0.x == global0.x), !(u_input.a != -2147483647i), !all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 16u)], false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))));
    var var_2 = global1[_wgslsmith_index_u32(0u, 16u)] || true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), -217f) * -102f);
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(var_1.x - var_3), var_1.x, _wgslsmith_f_op_f32(-var_1.x)))), vec4<f32>(-188f, var_3, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(283f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return Struct_2(-520f, _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_0.a, 65038u, var_0.a), countOneBits(firstLeadingBit(u_input.d))) & vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.d.x, 20084u)), abs(~4294967295u), _wgslsmith_mult_u32(var_0.a ^ u_input.d.x, 39386u >> (var_0.a % 32u)), ~var_0.a), Struct_1(42118u), !vec3<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(var_0.a, 16u)], true)), any(!vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0, 16u)], global1[_wgslsmith_index_u32(10804u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.c, 26091u ^ countOneBits(_wgslsmith_clamp_u32(~32400u, u_input.d.x, 65481u)), firstLeadingBit(27u));
    let var_1 = func_1(countOneBits(u_input.d.x), !(!any(vec3<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]))));
    let var_2 = var_1;
    global0 = var_2.d.zy;
    global0 = !var_1.d.yz;
    global2 = countOneBits(max(firstTrailingBit(-2147483647i), ~0i));
    var var_3 = Struct_2(-717f, vec4<u32>(func_3(u_input.a, ~vec3<u32>(var_1.b.x, var_0.x, var_2.c.a), vec3<bool>(true, false, true)), _wgslsmith_mod_u32(var_0.x, 21079u), ~49104u, 74470u) >> (var_1.b % vec4<u32>(32u)), var_2.c, vec3<bool>((_wgslsmith_f_op_f32(select(-1106f, var_2.a, false)) != _wgslsmith_f_op_f32(trunc(-1000f))) & func_1(var_1.c.a, func_1(var_2.c.a, false).d.x).d.x, select(global0.x, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.a, -39405i), u_input.e.zy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(621f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1284f, var_3.a)) * _wgslsmith_div_f32(var_2.a, 1000f))) - -1342f), ~vec4<u32>(1u, 49953u, 44424u, var_2.c.a), ~var_0.x, u_input.e >> (abs(u_input.d.xww) % vec3<u32>(32u)));
}

