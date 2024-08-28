struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(335f, 1000f, 1308f, 1000f), true, vec2<bool>(false, false), true, vec4<i32>(0i, -50934i, i32(-2147483648), 20832i));

var<private> global2: Struct_1 = Struct_1(vec4<f32>(698f, 376f, 729f, 417f), false, vec2<bool>(true, true), true, vec4<i32>(-21178i, 34745i, 64263i, 33701i));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(-409f, -1267f, 846f, -1261f), false, vec2<bool>(true, false), true, vec4<i32>(3727i, 18045i, -30483i, 4072i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> bool {
    var var_0 = !global1.b & false;
    var var_1 = u_input.a;
    let var_2 = Struct_1(vec4<f32>(-233f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(951f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.a.x)), -517f), select(false, true, true), select(vec2<bool>(!global1.d, global0.c.x), vec2<bool>(!arg_0.b, -2147483647i < arg_0.e.x), true), all(!(!vec4<bool>(false, global3.c.x, true, true))) != true, abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.e.x, 2147483647i, -42308i, 1i), -arg_0.e)));
    let var_3 = !select(arg_0.c, select(!select(vec2<bool>(global0.c.x, global0.b), vec2<bool>(var_2.b, global0.c.x), global3.d), select(global1.c, arg_0.c, global2.c), 1u == u_input.c), select(select(global3.c, !vec2<bool>(false, global1.d), arg_0.d), !global2.c, true));
    var var_4 = global0.a.x;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    global1 = Struct_1(global2.a, any(global3.c), select(vec2<bool>(!all(vec2<bool>(true, true)), (false == global1.d) == true), !vec2<bool>(global1.b == true, true), (func_3(Struct_1(vec4<f32>(global0.a.x, global1.a.x, global2.a.x, global1.a.x), false, global0.c, false, vec4<i32>(0i, -2147483647i, -3227i, u_input.d.x)), vec4<u32>(u_input.c, u_input.c, arg_0, arg_0)) && all(vec3<bool>(global1.b, global1.d, global1.c.x))) || true), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) + vec4<f32>(global1.a.x, -1325f, -210f, -349f)), false, vec2<bool>(global0.b || global1.d, true), all(!vec4<bool>(true, global3.c.x, global3.b, global2.d)), u_input.d), vec4<u32>(1893u, select(firstTrailingBit(42808u), u_input.c, true), ~(~arg_0), ~arg_0)), vec4<i32>(global3.e.x, 66989i, -42138i, _wgslsmith_dot_vec2_i32(abs(~global1.e.ww), global2.e.wz)));
    var var_0 = !vec3<bool>(false, true, global3.c.x);
    let var_1 = select(select(select(select(vec2<bool>(var_0.x, global3.b), global2.c, true), select(global1.c, vec2<bool>(false, global1.b), select(vec2<bool>(false, global2.c.x), global3.c, vec2<bool>(true, false))), !global1.d & func_3(Struct_1(global2.a, global3.c.x, global1.c, false, global2.e), vec4<u32>(u_input.e.x, arg_0, u_input.c, u_input.c))), global0.c, select(vec2<bool>(global1.c.x, all(global0.c)), select(!vec2<bool>(var_0.x, global1.c.x), vec2<bool>(global3.d, true), !global3.c), vec2<bool>(false, true))), !vec2<bool>(true, global0.c.x), true);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1307f + arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.x, global0.a.x)) - -350f), global0.a.x, _wgslsmith_div_f32(-557f, global2.a.x)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1198f, global3.a.x, global3.a.x, 1385f), global1.a)), global0.a))))), all(vec4<bool>(true, true, true, true)), select(vec2<bool>(all(select(vec2<bool>(global2.b, false), global3.c, global3.c)), 46965u > u_input.c), global3.c, !(!global1.c)), any(vec3<bool>(true || func_3(Struct_1(vec4<f32>(-933f, global0.a.x, global3.a.x, global0.a.x), global1.b, var_1, true, vec4<i32>(-1i, -14186i, 20270i, -12883i)), vec4<u32>(1u, 65513u, 14228u, 15277u)), any(global3.c), !all(vec2<bool>(true, global0.b)))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(global1.e.x, global3.e.x, u_input.a, global3.e.x) ^ (global3.e & vec4<i32>(global1.e.x, global1.e.x, -1i, 30169i))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(0i, 2147483647i, 13540i, 1i)), global3.e)));
    var var_3 = _wgslsmith_mod_u32(~0u, ~arg_0);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global0.a.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = ~max(u_input.e.x, 34897u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(15087u, global0.a.zyw)), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.a.x))))) + global2.a.x) * _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * _wgslsmith_div_f32(1416f, _wgslsmith_f_op_f32(-global3.a.x))))));
    let var_2 = !vec2<bool>(global3.c.x & global3.b, u_input.e.x != 1u);
    let var_3 = vec3<i32>(max(global3.e.x, countOneBits(1i)) | -44571i, ~35680i, countOneBits(i32(-1i) * -2147483647i));
    var var_4 = !(~u_input.e.x > _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(43918u, u_input.c, 20383u, u_input.c)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, 14568u, u_input.c)), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u) << (vec4<u32>(15746u, u_input.e.x, u_input.c, u_input.c) % vec4<u32>(32u)))));
    return select(select(select(!vec4<bool>(var_2.x, global2.b, true, false), !(!vec4<bool>(false, global2.d, true, global3.b)), any(!vec4<bool>(var_2.x, global2.b, global2.b, true))), select(select(select(vec4<bool>(true, false, global3.d, global2.b), vec4<bool>(false, global1.d, true, global3.c.x), false), !vec4<bool>(global2.d, true, false, false), any(global2.c)), select(select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(global2.d, true, false, global2.d), true), vec4<bool>(true, true, false, false), select(vec4<bool>(var_2.x, global3.b, global3.b, var_2.x), vec4<bool>(global0.c.x, global2.c.x, false, global0.c.x), global2.b)), false), vec4<bool>(true, ~0u < abs(u_input.e.x), var_2.x, global2.d)), !(!(!(!vec4<bool>(global1.b, true, false, true)))), global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(all(global0.c), all(select(vec4<bool>(true, global1.d, true, false), func_1(), vec4<bool>(global0.d, false, global0.b, global1.b))), all(global2.c)), func_1().xxw, !vec3<bool>(global3.d, any(global2.c), _wgslsmith_f_op_f32(ceil(global1.a.x)) < _wgslsmith_f_op_f32(global2.a.x * -654f)));
    global1 = Struct_1(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(func_2(~(~u_input.c), vec3<f32>(_wgslsmith_f_op_f32(-1000f - -684f), global3.a.x, _wgslsmith_f_op_f32(round(1102f))))), _wgslsmith_f_op_f32(f32(-1f) * -1206f), -1158f), any(select(!vec4<bool>(global0.b, true, true, global3.b), !func_1(), !any(vec4<bool>(global3.d, global0.d, false, true)))), global2.c, true, vec4<i32>(~(-1i), _wgslsmith_mod_i32(-17171i, global2.e.x), abs(global0.e.x), global3.e.x) >> (firstTrailingBit(vec4<u32>(select(u_input.c, u_input.e.x, false), 41845u, ~u_input.e.x, max(u_input.e.x, u_input.c))) % vec4<u32>(32u)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global2.a))), vec4<f32>(1708f, -2463f, global2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(ceil(-217f))))), vec4<bool>((-1000f >= global2.a.x) || (global0.d | false), false, false, (global2.b == false) != global2.c.x))), false, select(select(!select(global1.c, var_0.xz, vec2<bool>(global2.d, false)), vec2<bool>(!global3.d, true), select(global1.c, select(global0.c, global3.c, false), vec2<bool>(true, true))), var_0.yz, !vec2<bool>(any(global2.c), all(vec4<bool>(global3.b, false, false, global1.c.x)))), global1.c.x, global2.e);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(654f, 182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + 769f), global2.a.x), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-global2.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(1609f - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.x + -353f), 188f, global3.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-980f)), 1000f)), _wgslsmith_div_f32(global0.a.x, -518f)))), global3.d, !(!func_1().xy), func_3(Struct_1(global2.a, !global2.b, global1.c, false, -global2.e), vec4<u32>(~u_input.e.x, countOneBits(u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)), _wgslsmith_clamp_u32(u_input.c, u_input.e.x, 0u))) | select(true, func_1().x, global2.d), min(vec4<i32>(-_wgslsmith_dot_vec2_i32(global2.e.wz, global1.e.xw), global2.e.x, countOneBits(global0.e.x), min(u_input.a, _wgslsmith_mult_i32(-74198i, global1.e.x))), vec4<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, 1i, -14399i, global0.e.x), vec4<i32>(global1.e.x, u_input.b.x, u_input.a, global3.e.x)), -1i, all(vec2<bool>(false, true))), 1i, 0i, 61115i)));
    let var_2 = ~(abs(u_input.c) & u_input.c);
    global2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(517f)) * -673f), 276f, _wgslsmith_f_op_f32(abs(1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(max((select(2147483647i, var_1.e.x, var_0.x) & global3.e.x) << (143978u % 32u), 2147483647i), -2147483647i, u_input.e.yy, _wgslsmith_f_op_f32(-global0.a.x), u_input.e);
}

