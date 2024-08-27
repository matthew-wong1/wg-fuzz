struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<bool>(true, false, true, true), vec2<bool>(true, true), false, true, vec3<u32>(1u, 45880u, 66332u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_3, arg_3: Struct_4) -> vec3<bool> {
    global0 = Struct_5(!select(select(global0.a, vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(true, true, true, true)), global0.a, any(select(global0.a, global0.a, false))), select(vec2<bool>(arg_0, all(vec4<bool>(arg_3.c.x, arg_3.c.x, true, true))), !arg_3.c.zx, false), global0.c, !(global0.c == all(!arg_3.c.zy)), vec3<u32>(~global0.e.x, global0.e.x, countOneBits(0u)));
    global0 = Struct_5(vec4<bool>(true, global0.b.x, true, arg_0), vec2<bool>(true, true), any(global0.a.wyy), arg_3.c.x, vec3<u32>(0u, ~46374u, 0u << ((select(arg_1, arg_3.e, arg_3.c.x) >> (abs(arg_2.a) % 32u)) % 32u)));
    global0 = Struct_5(!global0.a, arg_3.c.yx, arg_3.c.x, global0.c, global0.e | vec3<u32>(4294967295u << (_wgslsmith_clamp_u32(37300u, 1u, 28240u) % 32u), 1u ^ arg_3.e, arg_2.a));
    global0 = Struct_5(!global0.a, arg_3.c.yz, !(!(4294967295u <= min(global0.e.x, u_input.d))), arg_0, _wgslsmith_sub_vec3_u32(vec3<u32>(~0u << (firstTrailingBit(arg_3.e) % 32u), _wgslsmith_div_u32(4294967295u, ~arg_2.a), 10806u), vec3<u32>(0u, ~1u, 0u)));
    global0 = Struct_5(vec4<bool>(1i < -_wgslsmith_mod_i32(arg_3.a.b.x, arg_2.b.b.x), true, arg_3.c.x, false), select(!select(select(global0.b, global0.b, arg_3.c.xx), vec2<bool>(true, global0.a.x), select(global0.a.zz, arg_3.c.yz, false)), select(select(global0.a.yw, select(global0.a.yx, arg_3.c.zz, global0.d), global0.a.wz), !global0.b, vec2<bool>(true, any(vec2<bool>(arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1275f))) <= -986f), (4294967295u ^ min(_wgslsmith_dot_vec2_u32(global0.e.xz, vec2<u32>(arg_2.a, 4294967295u)), select(37261u, arg_1, true))) <= firstLeadingBit(select(0u, 0u, false)), arg_3.c.x, vec3<u32>(1u, ~arg_3.e, ~select(39472u, _wgslsmith_dot_vec2_u32(vec2<u32>(4704u, arg_2.a), vec2<u32>(u_input.d, u_input.d)), global0.d)));
    return select(!vec3<bool>(any(arg_3.c), !all(vec2<bool>(false, true)), all(vec2<bool>(false, global0.a.x))), select(select(global0.a.wwx, vec3<bool>(any(global0.a), global0.b.x, arg_3.c.x), any(!vec4<bool>(arg_3.c.x, true, arg_0, true))), select(select(!vec3<bool>(false, global0.c, true), select(global0.a.yyw, vec3<bool>(true, true, global0.a.x), global0.a.yzz), !vec3<bool>(global0.d, global0.a.x, global0.d)), select(select(arg_3.c, vec3<bool>(global0.c, global0.d, true), true), select(vec3<bool>(true, false, arg_3.c.x), arg_3.c, false), global0.a.wzz), !select(vec3<bool>(true, arg_3.c.x, arg_3.c.x), vec3<bool>(false, global0.c, false), arg_3.c)), vec3<bool>(global0.c, all(arg_3.c), global0.c)), any(arg_3.c));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5) -> Struct_5 {
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(164f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f + -768f) + 816f) - 433f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-574f + 298f), -1000f, -126f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-432f, _wgslsmith_div_f32(1208f, -322f), -1747f)))));
    global0 = Struct_5(select(arg_1.a, arg_1.a, vec4<bool>(!arg_1.c, !global0.a.x, false, all(select(vec2<bool>(true, false), arg_1.a.yx, global0.a.xz)))), vec2<bool>(false, arg_1.c), true, !all(func_3(false, 11687u, Struct_3(u_input.d, Struct_1(675f, vec3<i32>(1i, u_input.c.x, -9886i))), Struct_4(Struct_1(-1542f, u_input.c.zzw), Struct_1(999f, u_input.c.wzz), vec3<bool>(arg_1.c, true, true), 11745i, 8624u))), arg_0);
    var var_1 = vec2<bool>(!global0.b.x, !global0.c);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-983f, _wgslsmith_f_op_f32(-1000f - var_0.x), _wgslsmith_f_op_f32(round(var_0.x))))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-152f, _wgslsmith_f_op_f32(step(758f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1567f))))));
    return Struct_5(vec4<bool>(false, arg_1.b.x == select(var_1.x, var_1.x, true), false, false), vec2<bool>(false, _wgslsmith_add_i32(abs(12781i), u_input.c.x) < 2147483647i), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)) != 306f, (_wgslsmith_f_op_f32(f32(-1f) * -603f) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-494f, var_0.x))) || true, _wgslsmith_div_vec3_u32(abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.x, arg_1.e.x, 0u)), ~vec3<u32>(0u, 39493u, 24113u))), arg_0));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_3(39196u, arg_1);
    let var_1 = firstLeadingBit(arg_1.b.x);
    global0 = func_2(vec3<u32>(arg_2.e, _wgslsmith_add_u32(reverseBits(global0.e.x), arg_0) >> (0u % 32u), _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(73839u, 1u, var_0.a, 1u), ~vec4<u32>(61091u, arg_3.e.x, arg_2.e, arg_3.e.x)))), arg_3);
    var var_2 = Struct_2(arg_2.a);
    var var_3 = arg_2.d;
    return arg_2.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(global0.a, global0.b, !(!(func_1(global0.e.x, Struct_1(1230f, u_input.b), Struct_4(Struct_1(239f, u_input.b), Struct_1(-1311f, vec3<i32>(u_input.c.x, -8906i, u_input.b.x)), global0.a.wwy, u_input.b.x, 54206u), Struct_5(global0.a, vec2<bool>(global0.c, true), false, true, global0.e)) < u_input.b.x)), true, global0.e);
    global0 = func_2(~(~(~_wgslsmith_mult_vec3_u32(global0.e, vec3<u32>(4294967295u, global0.e.x, 31694u)))), func_2(global0.e, func_2(vec3<u32>(global0.e.x, global0.e.x, 0u) >> (~global0.e % vec3<u32>(32u)), Struct_5(!global0.a, func_3(global0.a.x, 4294967295u, Struct_3(4294967295u, Struct_1(125f, vec3<i32>(u_input.b.x, -1i, 0i))), Struct_4(Struct_1(710f, vec3<i32>(u_input.a.x, 973i, u_input.c.x)), Struct_1(1269f, vec3<i32>(-2147483647i, 2147483647i, -1450i)), global0.a.zwy, -4267i, u_input.d)).yy, func_3(global0.d, global0.e.x, Struct_3(global0.e.x, Struct_1(543f, vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x))), Struct_4(Struct_1(1757f, u_input.b), Struct_1(-1211f, vec3<i32>(-27935i, u_input.c.x, u_input.a.x)), vec3<bool>(true, true, false), u_input.a.x, global0.e.x)).x, u_input.c.x >= u_input.b.x, global0.e))));
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(851f, 1067f)), -757f)) * _wgslsmith_div_f32(-120f, -240f)), ~countOneBits(abs(vec3<i32>(u_input.b.x, 0i, -64166i)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2331f, -1891f, true)) * _wgslsmith_f_op_f32(1272f * -104f))), u_input.b), select(select(vec3<bool>(u_input.d < global0.e.x, !global0.b.x, false), !(!global0.a.xwx), !func_2(global0.e, Struct_5(global0.a, global0.a.xy, global0.a.x, false, global0.e)).c), vec3<bool>((u_input.b.x >= u_input.c.x) | global0.c, global0.c, !all(vec2<bool>(true, false))), true), u_input.c.x, 1u);
    var var_1 = true;
    var var_2 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~select(max(vec4<i32>(-1i, var_2.a.b.x, var_2.a.b.x, u_input.a.x), vec4<i32>(-50007i, var_2.a.b.x, u_input.b.x, var_0.d)), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 9457i, var_0.a.b.x, -2147483647i)), global0.d || global0.c)));
}

