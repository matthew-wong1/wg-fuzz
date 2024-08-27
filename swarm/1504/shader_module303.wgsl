struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<u32>(25237u, 5753u, 17039u, 62432u), i32(-2147483648), false, Struct_1(vec3<i32>(0i, 75294i, -22030i)), -38340i);

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_1) -> bool {
    global0 = arg_0;
    let var_0 = min(u_input.d.x, countOneBits(select(countOneBits(arg_0.d.a.x), _wgslsmith_add_i32(-2147483647i, global0.b), arg_0.c) ^ ~global0.b));
    var var_1 = -global0.d.a.x;
    var_1 = ~_wgslsmith_mult_i32(u_input.d.x, ~u_input.a.x);
    var var_2 = !(all(select(!global1.ww, !global1.xy, !global1.xz)) | (_wgslsmith_f_op_f32(1124f * -280f) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1064f)), 774f, all(arg_1)))));
    return any(vec4<bool>(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 47657u) <= u_input.b.x, all(vec4<bool>(true, all(vec2<bool>(global1.x, global1.x)), any(vec4<bool>(true, global0.c, arg_1.x, true)), !global1.x)), arg_0.c, true));
}

fn func_2() -> i32 {
    global1 = vec4<bool>(!(!select(select(false, global1.x, global1.x), global1.x, true)), global0.c, func_3(Struct_4(global0.a, min(global0.d.a.x, u_input.a.x) ^ 1i, true, global0.d, (i32(-1i) * -24519i) >> (1u % 32u)), vec3<bool>(global0.c, global0.c, true), Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a.x, global0.d.a.x), vec3<i32>(-1i, u_input.a.x, global0.e), u_input.d))), global1.x);
    var var_0 = 897f;
    var var_1 = global0.d;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-183f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1566f) - 2120f)));
    var var_3 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(max(u_input.a, abs(vec4<i32>(var_1.a.x, var_1.a.x, -1i, -1i))), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.a.yy, vec2<i32>(-1i, u_input.c.x)), 11410i, 1i & global0.d.a.x)), _wgslsmith_add_i32(-94433i, _wgslsmith_add_i32(-15269i, 43766i) >> ((global0.a.x >> (global0.a.x % 32u)) % 32u)), i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, 0i), global0.d.a.x);
    return abs(-2147483647i);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    var var_0 = Struct_4(global0.a | ~_wgslsmith_mult_vec4_u32(max(global0.a, global0.a), global0.a), arg_0.x, false, Struct_1(-(~global0.d.a) ^ vec3<i32>(i32(-1i) * -12101i, func_2(), arg_0.x << (41473u % 32u))), firstTrailingBit(-1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -340f))), -378f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, arg_1, -1182f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -544f) * vec3<f32>(-814f, arg_1, 2320f)))), global0.c));
    var_0 = Struct_4(vec4<u32>(u_input.b.x, var_0.a.x, _wgslsmith_dot_vec3_u32(global0.a.xzx, var_0.a.zzw), _wgslsmith_add_u32(1u, ~var_0.a.x)), -2147483647i, !(true && (false != func_3(Struct_4(var_0.a, global0.b, false, Struct_1(var_0.d.a), -23975i), vec3<bool>(false, global0.c, var_0.c), Struct_1(u_input.d)))), var_0.d, -18153i);
    var_0 = Struct_4((_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 1u, global0.a.x), vec4<u32>(2682u, 0u, 0u, 1u)) & ~firstLeadingBit(global0.a)) & vec4<u32>(20393u, global0.a.x, ~114109u, ~4294967295u), abs(-2147483647i), all(!select(vec2<bool>(true, true), !vec2<bool>(global1.x, false), var_0.c)), var_0.d, -1i);
    var_0 = Struct_4(max(~vec4<u32>(5942u, max(4294967295u, 0u), select(u_input.b.x, 1u, global0.c), firstLeadingBit(u_input.b.x)), min(_wgslsmith_mod_vec4_u32(var_0.a, ~var_0.a), ~vec4<u32>(var_0.a.x, global0.a.x, global0.a.x, 38608u))), -_wgslsmith_dot_vec2_i32((vec2<i32>(arg_0.x, -798i) << (var_0.a.xx % vec2<u32>(32u))) ^ firstTrailingBit(global0.d.a.yz), select(vec2<i32>(-5597i, var_0.d.a.x), global0.d.a.yy, global1.xw) | global0.d.a.yz), !(!all(!vec4<bool>(false, var_0.c, false, true))), Struct_1(vec3<i32>(reverseBits(-28348i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1237i, 191i, -2147483647i), var_0.d.a), select(-46191i, firstTrailingBit(arg_0.x), all(global1.xz)))), arg_0.x);
    return _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -436f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -113f))))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_5 {
    global0 = Struct_4(firstTrailingBit(firstTrailingBit(global0.a)) >> (~vec4<u32>(1u, _wgslsmith_dot_vec4_u32(global0.a, vec4<u32>(u_input.b.x, global0.a.x, global0.a.x, 44455u)), 1u, 0u) % vec4<u32>(32u)), _wgslsmith_sub_i32(21252i, reverseBits(0i)), global1.x, global0.d, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, u_input.c.x) & vec2<i32>(global0.e, u_input.a.x), ~global0.d.a.xz)));
    var var_0 = Struct_2(global1.x, true, (u_input.b.x & 844u) >> (_wgslsmith_add_u32(~71266u, 32795u) % 32u));
    var var_1 = Struct_4(~vec4<u32>(37795u, 30669u, u_input.b.x, global0.a.x), 1i, global0.c, global0.d, i32(-1i) * -_wgslsmith_dot_vec4_i32(countOneBits(u_input.a), vec4<i32>(u_input.c.x, global0.b, global0.b, u_input.c.x)));
    let var_2 = Struct_4(global0.a, max(var_1.d.a.x, var_1.e), global0.c, global0.d, u_input.d.x);
    var_0 = Struct_2(!var_2.c, var_0.b, abs(0u));
    return Struct_5(Struct_2(arg_0.x > -2277f, true, 32263u), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<f32>(732f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(-vec2<i32>(-2147483647i, 18166i), 1f))))));
    global1 = vec4<bool>(func_3(Struct_4(global0.a, -var_0.b.a.x, false, Struct_1(vec3<i32>(u_input.c.x, global0.d.a.x, 7311i)), -(~(-31390i))), select(select(!global1.yyy, select(global1.wwy, global1.xyw, global1.zwz), true), select(global1.yyx, vec3<bool>(global1.x, true, global0.c), true), true), Struct_1(vec3<i32>(8155i, u_input.d.x, u_input.d.x & -487i))), true, true, _wgslsmith_f_op_f32(floor(423f)) != -516f);
    global1 = select(vec4<bool>(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(2358f, 152f), vec2<f32>(1582f, -366f))).b.a.x != var_0.b.a.x, true, var_0.a.b, var_0.a.b), !(!select(vec4<bool>(true, true, global0.c, false), !vec4<bool>(global1.x, global1.x, true, global1.x), select(global0.c, true, global0.c))), global0.c);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    global1 = select(select(vec4<bool>(!(!var_1.a.a), var_0.a.a, var_1.a.a, false), vec4<bool>(any(select(global1.xy, vec2<bool>(false, global1.x), var_0.a.a)), true, var_0.a.b, !global0.c), vec4<bool>(global0.c, global0.c, !var_0.a.a, func_4(vec2<f32>(-1032f, 1005f)).a.b & (var_0.a.a && true))), select(!select(vec4<bool>(false, false, false, global1.x), select(vec4<bool>(true, false, var_0.a.b, false), vec4<bool>(false, var_1.a.a, var_1.a.b, true), false), func_3(Struct_4(vec4<u32>(1u, global0.a.x, 41577u, var_1.a.c), var_1.b.a.x, var_1.a.a, var_0.b, 2147483647i), vec3<bool>(true, global0.c, global0.c), Struct_1(vec3<i32>(1i, u_input.a.x, global0.e)))), select(vec4<bool>(false, global1.x, !var_1.a.a, global0.c), vec4<bool>(!global1.x, any(vec4<bool>(global1.x, global0.c, true, var_1.a.b)), !var_1.a.a, any(vec3<bool>(true, false, global0.c))), false), vec4<bool>(var_1.a.b, true, var_0.a.b, false)), true);
    global0 = Struct_4(global0.a, u_input.d.x, !all(!select(vec2<bool>(global1.x, var_1.a.a), global1.zw, true)), var_0.b, ~_wgslsmith_div_i32(reverseBits(var_1.b.a.x), firstLeadingBit(~28443i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.c, 4294967295u);
}

