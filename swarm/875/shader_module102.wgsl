struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_3 = Struct_3(vec2<u32>(4294967295u, 4294967295u));

var<private> global3: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(-863f, -1000f, -1000f), vec3<f32>(1000f, 167f, -973f), vec3<f32>(-1000f, 173f, -610f), vec3<f32>(-379f, 650f, 406f), vec3<f32>(-1198f, -1000f, -582f), vec3<f32>(596f, -436f, -1097f));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<f32> {
    var var_0 = 96272u;
    let var_1 = -620f;
    global0 = vec2<bool>(-16751i <= (u_input.b << (reverseBits(1330u) % 32u)), global0.x);
    var_0 = 12603u;
    var_0 = global2.a.x;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * var_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1))))));
}

fn func_3() -> u32 {
    let var_0 = ~(~vec2<i32>(abs(u_input.b), u_input.b));
    let var_1 = u_input.a.wz;
    var var_2 = vec2<u32>(u_input.a.x, (0u >> (global2.a.x % 32u)) >> (global2.a.x % 32u)) << ((vec2<u32>(~firstLeadingBit(1u), 15943u ^ min(4294967295u, global2.a.x)) ^ abs(~countOneBits(var_1))) % vec2<u32>(32u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1705f, -912f, -586f, 317f), vec4<f32>(-653f, -873f, 491f, 272f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1918f, 1000f, -987f, -915f)))))), !select(select(!vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false), global0.x), vec3<bool>(true, true, false)), vec3<bool>(true, global0.x, false), !select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x))), false, ~_wgslsmith_div_i32(u_input.b, -2147483647i));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 17123u, 4294967295u << (_wgslsmith_add_u32(0u, var_1.x) % 32u)), u_input.a.yyz);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    global0 = arg_0.c.yz;
    var var_0 = all(vec2<bool>(arg_0.d, all(select(!vec4<bool>(arg_0.c.x, true, false, false), vec4<bool>(false, true, arg_0.d, arg_0.c.x), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(global0.x, true, false, true), false)))));
    var var_1 = select(func_3() & _wgslsmith_dot_vec3_u32(u_input.a.wwx, u_input.a.zxz), 21602u, false);
    var_0 = !(!any(!vec4<bool>(global0.x, true, global0.x, arg_0.c.x)));
    let var_2 = vec4<bool>(true, 1329f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - 1063f))), !(!(!global0.x)) && ((2147483647i >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, -1i, 36948i), vec4<i32>(u_input.b, arg_0.e, arg_0.e, arg_0.e))) || global0.x), all(vec3<bool>(true, global0.x | true, arg_0.c.x || true)) && (_wgslsmith_dot_vec2_i32(vec2<i32>(-26178i, 1i), vec2<i32>(u_input.b, arg_0.e) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))) < 1i));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = Struct_1(1319f, arg_0.b, vec3<bool>(false, any(vec3<bool>(func_2(global1[_wgslsmith_index_u32(global2.a.x, 27u)], 2082f, Struct_3(vec2<u32>(0u, u_input.a.x)), arg_0.b).d, 0i < arg_0.e, global0.x || false)), !any(vec4<bool>(true, arg_0.d, true, true))), global0.x, arg_0.e);
    var var_1 = 15014u;
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.yy * _wgslsmith_f_op_vec2_f32(-var_0.b.xz)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(520f, _wgslsmith_div_f32(1346f, var_0.a)), vec2<f32>(func_2(Struct_1(-553f, vec4<f32>(-453f, arg_1, arg_0.a, -1000f), arg_0.c, false, u_input.b), -475f, Struct_3(global2.a), var_0.b).b.x, arg_0.b.x)))), u_input.a, func_2(func_2(global1[_wgslsmith_index_u32(4294967295u ^ ~global2.a.x, 27u)], 1083f, Struct_3(~global2.a), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_vec2_f32(func_1()).x), Struct_3(~(~vec2<u32>(4294967295u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, arg_1, -400f, 566f)))))), Struct_1(-343f, _wgslsmith_f_op_vec4_f32(-arg_0.b), !vec3<bool>(-3034i == var_0.e, var_0.c.x, true), (~u_input.a.x >> (1u % 32u)) != 4294967295u, arg_0.e), countOneBits(~(-vec3<i32>(arg_0.e, 0i, var_0.e)) << (u_input.a.zxz % vec3<u32>(32u))));
    global0 = var_2.d.c.yx;
    global0 = !select(var_0.c.xx, vec2<bool>(countOneBits(37750u) >= func_3(), false), select(var_0.c.zy, select(select(vec2<bool>(false, true), var_0.c.yy, arg_0.c.x), vec2<bool>(false, true), select(var_0.c.zy, var_0.c.yx, vec2<bool>(false, false))), !func_2(var_0, arg_1, Struct_3(var_2.b.xy), vec4<f32>(-660f, var_0.a, var_2.a.x, var_0.b.x)).c.zx));
    return var_0.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = global0.x;
    var var_1 = global2.a;
    global1 = array<Struct_1, 27>();
    var var_2 = u_input.a.x;
    let var_3 = Struct_3(~(~(~arg_1.a)));
    return (arg_1.a.x >> (_wgslsmith_div_u32(min(~global2.a.x, ~u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x) << (98418u % 32u)) % 32u)) | ~select(9304u, _wgslsmith_sub_u32(27850u, 1u ^ global2.a.x), all(!arg_0.c));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1089f * -901f) + -1343f)), 778f), ~(~(vec4<u32>(global2.a.x, arg_0, global2.a.x, global2.a.x) ^ u_input.a)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 228f), 800f), _wgslsmith_f_op_f32(step(-636f, _wgslsmith_f_op_f32(max(1149f, 1560f)))), func_2(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_f_op_f32(-2373f * -276f), Struct_3(global2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 855f, -2976f, -360f))).d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, -1417f, -1309f, -504f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, 844f, -1170f, -885f)))), func_2(func_2(global1[_wgslsmith_index_u32(arg_0, 27u)], _wgslsmith_div_f32(-2069f, -209f), Struct_3(u_input.a.xz), _wgslsmith_f_op_vec4_f32(vec4<f32>(655f, 1030f, -176f, 288f) - vec4<f32>(-1222f, -1000f, -126f, 1326f))), 880f, Struct_3(min(global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -618f, 482f, -1000f) + vec4<f32>(114f, 1000f, 151f, -135f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1098f, -172f, -776f, 341f), vec4<f32>(1965f, -1000f, -1502f, -497f))))).c, 2147483647i > -u_input.b, ~_wgslsmith_div_i32(u_input.b, -47942i)), func_2(func_2(global1[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -757f) * -539f), Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 95017u), vec2<u32>(global2.a.x, 10620u))), vec4<f32>(_wgslsmith_f_op_f32(-926f - -1790f), _wgslsmith_f_op_f32(f32(-1f) * -1162f), 383f, _wgslsmith_f_op_f32(f32(-1f) * -733f))), 795f, Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 207u), max(vec2<u32>(69255u, global2.a.x), u_input.a.yx))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-233f, 975f, -1609f, 1074f))) + vec4<f32>(-144f, -1287f, 1472f, -184f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(256f, 1909f, 830f, -1000f))) * vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_div_vec3_i32(~select(select(vec3<i32>(47725i, arg_1, arg_1), vec3<i32>(arg_1, 0i, u_input.b), vec3<bool>(global0.x, arg_2.x, global0.x)), vec3<i32>(15315i, u_input.b, 1i), global0.x), vec3<i32>(max(_wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b), -15264i), i32(-1i) * -1i, 1i)));
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xzw, u_input.a.zyx), ~u_input.a.wxw) & _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, arg_0), var_0.b.yy), 53406u, 1u), u_input.a.x, ~u_input.a.x);
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 747f) + var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.d.b.x) - var_0.d.b.xw), var_0.c.b.zx))), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a >> ((countOneBits(var_0.b) << ((vec4<u32>(global2.a.x, var_1, 35370u, 29199u) >> (vec4<u32>(var_1, var_1, 4294967295u, var_1) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), var_0.d, var_0.d, select(min(~var_0.e, vec3<i32>(u_input.b, -1i, arg_1)), ~vec3<i32>(u_input.b, var_0.e.x, 25997i), !var_0.c.c) >> (min(~_wgslsmith_clamp_vec3_u32(var_0.b.wxz, u_input.a.zxz, u_input.a.wxy), ~firstTrailingBit(u_input.a.ywy)) % vec3<u32>(32u)));
    let var_3 = Struct_3(~countOneBits(var_2.b.yx));
    var var_4 = 4294967295u;
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, var_2.c.b.x, any(vec4<bool>(false, false, false, true)))), func_2(global1[_wgslsmith_index_u32(reverseBits(~42885u), 27u)], _wgslsmith_f_op_f32(floor(var_2.a.x)), var_3, vec4<f32>(func_2(Struct_1(var_0.d.a, vec4<f32>(-888f, 522f, -2691f, var_2.c.b.x), vec3<bool>(arg_2.x, false, false), false, u_input.b), -958f, Struct_3(vec2<u32>(28291u, 0u)), vec4<f32>(var_2.c.b.x, -942f, -604f, -446f)).b.x, -572f, 677f, var_0.a.x)).a), vec4<u32>(119766u, var_1, abs(~50807u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.b.zw, vec2<u32>(var_2.b.x, 35837u)), ~0u)), Struct_1(-942f, var_2.d.b, vec3<bool>(true, true, arg_2.x), var_0.d.c.x, var_2.c.e), func_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c.b * vec4<f32>(var_2.a.x, 1000f, var_0.d.a, -507f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, var_2.c.a, var_2.c.a, var_2.a.x))), select(select(vec3<bool>(false, var_2.d.d, var_0.c.c.x), vec3<bool>(arg_2.x, var_0.d.d, false), vec3<bool>(false, var_0.d.c.x, false)), vec3<bool>(global0.x, true, global0.x), false), !any(vec3<bool>(arg_2.x, true, false)), ~(-2147483647i)), var_2.d.b.x, var_3, var_0.d.b), vec3<i32>(~(_wgslsmith_clamp_i32(arg_1, arg_1, 1i) << (30106u % 32u)), u_input.b, 60357i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1259f, -2307f, 811f, -1000f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, 1288f, 1072f, -1646f) - vec4<f32>(-1389f, -667f, -789f, 1128f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()));
    let var_2 = select(!any(select(!vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, false), global0.x), !vec3<bool>(true, true, global0.x))), !(u_input.b >= (u_input.b & ~52192i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 419f)))) == _wgslsmith_f_op_f32(sign(165f)));
    var var_3 = max(u_input.a.x, 1u) ^ firstLeadingBit(1u);
    var var_4 = func_6(func_5(global1[_wgslsmith_index_u32(4294967295u, 27u)], Struct_3(countOneBits(vec2<u32>(57297u, 18597u))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.x)))), var_0, vec3<bool>(var_2 != global0.x, !var_2, global0.x), func_4(func_2(global1[_wgslsmith_index_u32(4294967295u, 27u)], -677f, Struct_3(vec2<u32>(u_input.a.x, global2.a.x)), var_0), -996f), 49099i), Struct_3(select(_wgslsmith_mod_vec2_u32(u_input.a.ww, u_input.a.yw), u_input.a.wz, global0.x))), ~((u_input.b ^ (i32(-1i) * -1i)) ^ (max(0i, 0i) >> (global2.a.x % 32u))), !vec3<bool>(all(vec2<bool>(true, true)), var_2 && var_2, false));
    var var_5 = firstTrailingBit(50427i) >> (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.e);
}

