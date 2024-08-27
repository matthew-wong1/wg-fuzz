struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: array<u32, 32>;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 25>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_4(select(-min(u_input.a, vec4<i32>(2147483647i, 1i, 35642i, -2147483647i)), firstLeadingBit(vec4<i32>(0i, global1.c.c, -2147483647i, u_input.b.x)), true == any(global1.a.d)) & vec4<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, -u_input.b), -27672i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-6748i, 0i, global1.a.c, u_input.a.x), u_input.a, vec4<bool>(arg_0, true, false, global1.d)), u_input.a)));
    let var_1 = select(select(select(select(select(vec3<bool>(global1.a.d.x, arg_0, false), global1.c.d.yxz, global1.a.d.xwy), select(global1.a.d.ywx, global1.a.d.zzz, true), !global1.c.d.zyy), global1.a.d.zzx, true), select(select(!vec3<bool>(arg_0, global1.c.d.x, arg_0), select(global1.c.d.wyy, vec3<bool>(true, arg_0, arg_0), global1.a.d.zzx), global1.a.d.xxz), global1.c.d.xwz, select(select(vec3<bool>(global1.d, false, true), global1.c.d.yxw, global1.a.d.wyw), select(vec3<bool>(false, false, global1.d), vec3<bool>(true, false, arg_0), vec3<bool>(global1.a.d.x, false, true)), global1.d)), arg_0), select(global1.c.d.xxx, select(!(!vec3<bool>(arg_0, true, true)), !vec3<bool>(false, arg_0, arg_0), (global1.c.d.x | false) | (global1.c.d.x | arg_0)), !global1.c.d.zxw), vec3<bool>(true, all(global1.c.d.wz), 27237u <= firstLeadingBit(_wgslsmith_add_u32(u_input.e, 40927u))));
    return max(~global1.a.e, global0[_wgslsmith_index_u32(abs(countOneBits(36801u)), 32u)] ^ _wgslsmith_sub_u32(~countOneBits(global1.c.b), ~(~1u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = ~firstTrailingBit(~u_input.d);
    let var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_div_f32(arg_0.x, 377f))) - -522f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -511f)));
    var var_2 = Struct_2(Struct_1(global1.b, 1u, max(~global1.a.c, ~(-16044i)), arg_1.d, global1.a.e), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a)), _wgslsmith_f_op_vec3_f32(arg_0.wyx + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, vec3<f32>(arg_0.x, 742f, 733f)))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_2.x) * 1404f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(2110f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(673f)), 139f, global1.d && arg_1.d.x))), arg_1.b, 0i, select(select(vec4<bool>(false, global1.a.d.x, arg_1.d.x, false), select(vec4<bool>(global1.a.d.x, arg_1.d.x, true, true), global1.c.d, global1.c.d.x), select(arg_1.d, vec4<bool>(true, true, false, true), false)), select(vec4<bool>(arg_1.d.x, true, true, false), !global1.a.d, -13513i != global1.c.c), any(select(arg_1.d, vec4<bool>(true, global1.d, arg_1.d.x, false), vec4<bool>(true, arg_1.d.x, arg_1.d.x, global1.a.d.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(28354u, 32u)], 0u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(arg_1.e, 32u)], var_0.x), u_input.d.zx) % vec2<u32>(32u)), ~(~vec2<u32>(arg_1.b, 0u)))), !(!arg_1.d.x));
    let var_3 = arg_0.x;
    global2 = array<vec2<f32>, 25>();
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(269f, var_2.b.x, arg_2.x) - var_2.b) * vec3<f32>(-842f, var_2.c.a.x, -1668f)), vec3<f32>(_wgslsmith_f_op_f32(floor(482f)), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(arg_2.x)))), 1u, u_input.b.x, select(!vec4<bool>(arg_1.d.x, true, false, global1.d), !vec4<bool>(arg_1.d.x, arg_1.d.x, global1.d, true), global1.c.d.x), global0[_wgslsmith_index_u32(arg_1.b, 32u)]), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-var_3)))), var_2.a.a.x, 649f), global1.c, true);
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.c.a.x, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-596f, arg_2.a.x) * _wgslsmith_f_op_f32(abs(global1.a.a.x)))), global1.a.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * -212f))), _wgslsmith_div_f32(1000f, -620f)), global1.a, arg_2.b.a.a.xz, _wgslsmith_f_op_f32(floor(global1.b.x)));
    var var_0 = -1553f;
    global2 = array<vec2<f32>, 25>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(1000f - 1168f)));
    return global1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = global1.a.d.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.a.x, global1.c.a.x, global1.c.a.x, global1.c.a.x), vec4<f32>(1444f, -1000f, global1.b.x, global1.c.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1114f, 386f, global1.b.x, global1.b.x) * vec4<f32>(global1.a.a.x, -392f, -775f, global1.c.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1675f, 1032f, 209f, 368f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-831f, global1.a.a.x, global1.a.a.x, global1.b.x)), global1.d))))), Struct_2(func_4(Struct_5(-global1.a.c), 31018i << (global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global1.a.d.x), 32u)] % 32u), Struct_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(138f, -1297f, -1000f, 1204f))), func_2(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), Struct_1(vec3<f32>(global1.c.a.x, -765f, global1.a.a.x), 1u, -21414i, vec4<bool>(global1.d, global1.a.d.x, global1.c.d.x, global1.a.d.x), global1.a.e), global1.b.yz, -500f), u_input.b.x, Struct_1(vec3<f32>(global1.c.a.x, global1.b.x, global1.b.x), global1.c.b, -52460i, global1.a.d, 549u)), 0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(ceil(479f)), 488f) - global1.c.a), global1.c, any(!global1.a.d)), -34118i, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(vec4<f32>(329f, 1565f, global1.c.a.x, -1000f), Struct_1(vec3<f32>(global1.c.a.x, -1329f, -560f), 29678u, 0i, global1.a.d, global0[_wgslsmith_index_u32(global1.a.b, 32u)]), global1.b.yy, global1.b.x).b.x, _wgslsmith_f_op_f32(global1.a.a.x * global1.a.a.x), _wgslsmith_f_op_f32(max(global1.b.x, global1.a.a.x)), _wgslsmith_f_op_f32(-global1.c.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c.a.x, 491f, 786f), global1.c.a))), select(17194u, global0[_wgslsmith_index_u32(u_input.e, 32u)], false) << (~27521u % 32u), 0i, global1.c.d, firstLeadingBit(0u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-728f, -224f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(951f * -1141f) + global1.c.a.x)).c);
    var var_2 = 19695u << (var_1.d.b % 32u);
    let var_3 = Struct_5(_wgslsmith_dot_vec3_i32(u_input.a.yxw, -u_input.a.zzy));
    var var_4 = var_1.b;
    return var_1.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> f32 {
    let var_0 = countOneBits(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -1685f, -257f, arg_1.a.x), vec4<f32>(arg_2.c.a.x, -1081f, -1019f, global1.c.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1160f, arg_2.b.x, arg_1.a.x)))), Struct_1(arg_1.a, 10978u, global1.a.c, vec4<bool>(arg_0.a.d.x, arg_3.x, !global1.d, false), arg_2.a.e), vec2<f32>(_wgslsmith_f_op_f32(floor(-877f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.c.a.x, arg_0.b.x)), 1399f))), -1000f).c.c);
    let var_1 = Struct_5(1i);
    let var_2 = 0u;
    var var_3 = arg_1;
    var var_4 = Struct_4(_wgslsmith_mod_vec4_i32(-(vec4<i32>(arg_0.a.c, var_3.c, -7651i, arg_2.a.c) & reverseBits(vec4<i32>(arg_2.a.c, 2147483647i, -42624i, -10784i))), -(u_input.a | vec4<i32>(41240i, -83583i, arg_1.c, var_3.c)) << (~abs(vec4<u32>(4294967295u, 7140u, global0[_wgslsmith_index_u32(var_2, 32u)], u_input.e)) % vec4<u32>(32u))));
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))), global1.b.x, global1.b.x, _wgslsmith_f_op_f32(func_5(func_1(), func_4(Struct_5(-29563i), 1i << (1u % 32u), Struct_3(vec4<f32>(-1000f, 578f, 342f, global1.a.a.x), Struct_2(global1.a, global1.c.a, global1.c, true), 0i, Struct_1(global1.b, 4294967295u, -2147483647i, global1.a.d, 4294967295u)), ~43254i), Struct_2(Struct_1(global1.c.a, global1.a.e, -12248i, global1.c.d, u_input.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1097f, global1.b.x, -1000f)), func_4(Struct_5(43696i), u_input.b.x, Struct_3(vec4<f32>(global1.b.x, -1009f, global1.b.x, -629f), Struct_2(global1.c, vec3<f32>(840f, -516f, 650f), global1.c, global1.c.d.x), global1.a.c, Struct_1(global1.b, global0[_wgslsmith_index_u32(1u, 32u)], -1i, global1.c.d, 54731u)), global1.a.c), global1.c.e <= 30589u), !func_2(vec4<f32>(global1.a.a.x, 676f, -269f, global1.c.a.x), Struct_1(vec3<f32>(global1.b.x, global1.a.a.x, -1000f), u_input.c, -25908i, vec4<bool>(true, global1.a.d.x, global1.c.d.x, true), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 25u)], global1.a.a.x).a.d.zww))), func_1(), ~(~func_4(Struct_5(39064i), -13030i, Struct_3(vec4<f32>(512f, global1.b.x, global1.c.a.x, global1.c.a.x), Struct_2(Struct_1(vec3<f32>(993f, global1.c.a.x, 879f), global1.a.b, u_input.b.x, vec4<bool>(global1.c.d.x, global1.d, global1.c.d.x, global1.c.d.x), 1u), vec3<f32>(global1.c.a.x, global1.a.a.x, global1.c.a.x), Struct_1(global1.c.a, 89527u, u_input.b.x, global1.a.d, 38388u), global1.d), 2147483647i, global1.c), min(global1.c.c, 16709i)).c), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(487f - global1.a.a.x), _wgslsmith_f_op_f32(round(275f)), global1.b.x) - global1.c.a), abs(~0u << (_wgslsmith_sub_u32(7825u, global1.c.b) % 32u)), ~(-25047i) & -_wgslsmith_dot_vec3_i32(u_input.a.wxx, u_input.a.ywy), global1.c.d, ~0u));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(-8272i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, 1i), _wgslsmith_mod_i32(var_0.c << (9772u % 32u), 0i))), ~firstLeadingBit(u_input.b.x), 0i | ~var_0.d.c);
    var var_2 = select(any(global1.c.d.xzw), false, true);
    let var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-910f + _wgslsmith_f_op_f32(-1027f + -154f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-273f * var_0.a.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-161f + global1.a.a.x)))), _wgslsmith_f_op_f32(-2044f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f), var_0.a.x)), global1.a.a.x), func_2(_wgslsmith_f_op_vec4_f32(-var_0.a), Struct_1(var_0.b.c.a, ~(~var_0.d.b), ~global1.c.c >> (var_0.b.a.b % 32u), vec4<bool>(!var_0.b.c.d.x, false, 1i == var_0.c, false), _wgslsmith_mod_u32(12301u, var_0.b.c.e) >> (~4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.a.x, 420f) + vec2<f32>(var_0.d.a.x, var_0.d.a.x))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.c.a.x, var_0.b.a.a.x)))), -459f).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-220f, var_0.d.a.x)), _wgslsmith_f_op_f32(select(global1.c.a.x, global1.a.a.x, true))) * _wgslsmith_f_op_vec2_f32(-global1.a.a.xx)) - vec2<f32>(-502f, _wgslsmith_f_op_f32(ceil(212f)))), 1000f).c;
    var var_4 = u_input.c;
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

