struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<u32>, 12>;

var<private> global2: array<Struct_1, 7>;

var<private> global3: vec3<i32> = vec3<i32>(-9919i, i32(-2147483648), 0i);

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = array<vec3<u32>, 12>();
    let var_0 = _wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(select(firstTrailingBit(u_input.b.wxy), select(u_input.b.wxy, global1[_wgslsmith_index_u32(global0.x, 12u)], vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, 24272u), 0u, u_input.b.x))), ~_wgslsmith_clamp_vec3_u32(u_input.b.xyy, ~u_input.b.wwy, ~(~vec3<u32>(41843u, 4294967295u, 89075u))));
    let var_1 = !vec2<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), !all(vec4<bool>(true, true, true, true)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, -1781f, 1f, _wgslsmith_f_op_f32(-1799f + _wgslsmith_f_op_f32(-359f * 1996f)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1223f, var_2.a.x)), _wgslsmith_f_op_f32(round(1014f))), -229f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -571f))))));
    return abs(~var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = abs(select(_wgslsmith_sub_u32(arg_3.e >> (0u % 32u), 1u << (0u % 32u)) ^ min(arg_3.c, ~global0.x), global0.x, !all(!arg_2)));
    global4 = _wgslsmith_mult_u32(u_input.c, arg_3.e);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyy, global1[_wgslsmith_index_u32(~1u, 12u)]), 12u)];
    var_0 = ~_wgslsmith_add_u32((4294967295u | (1u << (global0.x % 32u))) ^ ~max(4294967295u, 26536u), 1u);
    global0 = _wgslsmith_add_vec2_u32(u_input.b.zw, vec2<u32>(_wgslsmith_add_u32(~4294967295u, ~_wgslsmith_div_u32(arg_3.e, arg_3.e)), 417u));
    return ~0u;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.a.x);
    let var_1 = global2[_wgslsmith_index_u32(min(func_4(vec3<bool>(!(arg_2.x | false), false, select(false, arg_2.x, true) && true), reverseBits(_wgslsmith_add_i32(-global3.x, 2147483647i)), select(!(!vec4<bool>(false, true, arg_2.x, arg_2.x)), vec4<bool>(any(arg_2), true, true, arg_2.x), all(vec4<bool>(arg_2.x, arg_2.x, false, false)) & arg_2.x), global2[_wgslsmith_index_u32(min(func_3(), reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(9557u, u_input.c, 20053u, u_input.b.x)))), 7u)]), (~1u << (global0.x % 32u)) >> (u_input.c % 32u)), 7u)];
    var var_2 = ~(~select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, arg_1, 33724u), ~global1[_wgslsmith_index_u32(global0.x, 12u)], ~u_input.b.zwz), _wgslsmith_mod_vec3_u32(~u_input.b.wwz, _wgslsmith_div_vec3_u32(u_input.b.xyy, u_input.b.wzw)), !select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(true, arg_2.x, false), arg_2.x)));
    var var_3 = 0u;
    let var_4 = var_1.d;
    return Struct_1(!(!select(select(vec2<bool>(true, false), var_1.a, var_1.a), select(vec2<bool>(arg_2.x, true), vec2<bool>(true, true), vec2<bool>(var_1.a.x, arg_2.x)), true)), true, select(~global0.x, global0.x, !all(vec2<bool>(var_1.b, var_1.a.x))), -1614f, firstTrailingBit(~max(u_input.c, var_1.e)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.b.yzz;
    let var_1 = arg_0;
    let var_2 = Struct_4(vec2<bool>(global3.x >= arg_2, any(select(!vec4<bool>(arg_1.a.x, arg_0, false, false), vec4<bool>(true, true, true, true), true))));
    return func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-741f, arg_1.d) - vec2<f32>(arg_1.d, arg_1.d)))), vec2<f32>(_wgslsmith_f_op_f32(abs(627f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d), 1f)))), 1u, vec2<bool>(var_1, arg_0));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-574f, _wgslsmith_div_f32(arg_2, 1155f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(select(arg_3.a.d, arg_3.a.d, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.d, arg_2, arg_2, -471f)))))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1362f, func_1(false, global2[_wgslsmith_index_u32(35255u, 7u)], global3.x, vec3<i32>(1i, -41467i, u_input.d.x)).d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1639f, arg_2), var_0.a.zy)))), _wgslsmith_mult_u32(~arg_3.a.e, (func_4(vec3<bool>(true, false, true), -31038i, vec4<bool>(false, arg_3.a.b, true, false), global2[_wgslsmith_index_u32(arg_3.a.c, 7u)]) | arg_1) | u_input.c), !func_1(all(!vec4<bool>(arg_3.a.a.x, arg_3.a.a.x, arg_3.a.b, false)), func_2(vec2<f32>(var_0.a.x, 478f), firstTrailingBit(arg_1), select(arg_3.a.a, vec2<bool>(true, true), vec2<bool>(true, arg_3.a.a.x))), _wgslsmith_add_i32(max(23050i, global3.x), reverseBits(u_input.a.x)), arg_0).a);
    global0 = ~vec2<u32>(~_wgslsmith_div_u32(0u, ~global0.x), global0.x);
    var var_2 = min(u_input.b.zw, u_input.b.xy);
    let var_3 = Struct_2(func_1(all(!select(vec3<bool>(arg_3.a.a.x, true, true), vec3<bool>(var_1.a.x, false, var_1.a.x), vec3<bool>(var_1.a.x, false, false))), Struct_1(!select(arg_3.a.a, vec2<bool>(false, var_1.a.x), var_1.a), all(!vec3<bool>(var_1.a.x, var_1.b, var_1.b)), ~(0u | var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -180f), var_1.e), ~_wgslsmith_clamp_i32(-1i ^ u_input.d.x, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 9705i, 53184i, -13733i), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 11501i, global3.x, 2147483647i), vec4<i32>(23824i, u_input.d.x, 1i, global3.x), vec4<i32>(38547i, -1i, -54343i, global3.x))), ~select(5558i, 1i, arg_3.a.a.x))));
    return vec4<u32>(0u & abs(arg_3.a.c), arg_3.a.e, countOneBits(_wgslsmith_mod_u32(~(38330u ^ arg_3.a.e), var_2.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_1.c, 4294967295u, 34676u, 1u)), u_input.b) >> (abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.c, u_input.b.x), func_2(vec2<f32>(1107f, var_3.a.d), 81734u, var_1.a).c)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.b & func_5(vec3<i32>(global3.x, global3.x, -2147483647i), _wgslsmith_mod_u32(~1u, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1110f))), Struct_2(func_1(false, Struct_1(vec2<bool>(true, true), true, 1u, 1000f, u_input.c), 1i, vec3<i32>(u_input.d.x, -37813i, 3214i)))), vec4<u32>(countOneBits(0u), firstTrailingBit(~1u), global0.x, 13588u), select(vec4<bool>(false, any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), false, false), vec4<bool>(true, all(vec3<bool>(true, true, true)), func_1(select(false, true, true), func_2(vec2<f32>(-263f, 2338f), u_input.b.x, vec2<bool>(false, true)), global3.x, countOneBits(u_input.a)).b, true), vec4<bool>(global3.x <= _wgslsmith_mod_i32(global3.x, u_input.d.x), global3.x >= _wgslsmith_dot_vec2_i32(global3.zx, global3.xz), true, false)));
    var var_1 = ~global3.x;
    let var_2 = vec4<f32>(272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1026f, _wgslsmith_f_op_f32(ceil(-494f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-752f)) + 173f)) + 1668f), _wgslsmith_f_op_f32(min(-1003f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1286f))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -365f))))));
    var var_3 = vec3<bool>(true && (((-2147483647i >> (u_input.b.x % 32u)) < (i32(-1i) * -7526i)) || true), all(vec3<bool>(true, true, true)), ~var_0.x < 1u);
    var_3 = select(!(!vec3<bool>(false, var_3.x, all(vec2<bool>(var_3.x, var_3.x)))), !select(select(vec3<bool>(true, var_3.x, var_3.x), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(true, true, var_3.x)), true), !(!vec3<bool>(var_3.x, true, var_3.x)), vec3<bool>(any(vec4<bool>(false, var_3.x, var_3.x, var_3.x)), all(vec2<bool>(var_3.x, false)), var_3.x)), var_3.x);
    var var_4 = vec3<i32>(-19668i, ~(~(-14156i)), 0i);
    global1 = array<vec3<u32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, _wgslsmith_add_u32(var_0.x, 24660u), ~min(~9182u, ~u_input.c), ~_wgslsmith_add_u32(var_0.x, _wgslsmith_sub_u32(44666u, u_input.c))), 31609i | _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 2631i, -27948i, u_input.a.x) | _wgslsmith_add_vec4_i32(vec4<i32>(var_4.x, u_input.d.x, -17453i, var_4.x), vec4<i32>(-14311i, 14178i, global3.x, -2147483647i)), ~vec4<i32>(global3.x, u_input.d.x, global3.x, u_input.d.x)));
}

