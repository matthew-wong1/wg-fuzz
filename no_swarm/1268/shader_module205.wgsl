struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-5007i, 24524i, -17711i, 1i, 2147483647i, 10635i, 29812i, 2147483647i, 1i, 6066i, 2147483647i, i32(-2147483648), 34190i, -1i, 27512i, -25515i, 0i, -15272i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    global0 = array<i32, 18>();
    let var_0 = u_input.b.wy;
    var var_1 = ~_wgslsmith_div_vec3_u32(~(~u_input.a.wyz), firstTrailingBit(max(u_input.a.zxw, vec3<u32>(u_input.c, 1u, u_input.a.x)) | firstLeadingBit(u_input.a.zzy)));
    let var_2 = !select(vec3<bool>(false, !arg_1.x || all(arg_1.zz), all(arg_1.wzz)), !select(arg_1.yyw, arg_1.zww, false), select(select(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.wwy, true), !vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !arg_1.zzy, !any(vec4<bool>(arg_1.x, false, arg_1.x, true))));
    var var_3 = false;
    return select(arg_1, arg_1, vec4<bool>((any(var_2.xy) & any(vec2<bool>(arg_1.x, arg_1.x))) & arg_1.x, all(arg_1.yyz), true, var_1.x > _wgslsmith_div_u32(u_input.a.x, var_1.x ^ var_1.x)));
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = all(!func_3(_wgslsmith_dot_vec4_i32(-u_input.b, abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 18u)], 2147483647i, 1i, u_input.b.x))), vec4<bool>(true, true, true, true), Struct_1(~4294967295u, 224i, u_input.a.ww, global0[_wgslsmith_index_u32(u_input.a.x, 18u)] | u_input.b.x)));
    var_0 = any(vec2<bool>(true, true));
    var var_1 = firstTrailingBit(firstLeadingBit(u_input.a.x)) | _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d << (u_input.a.x % 32u), ~select(u_input.c, 0u, false), ~(18501u & u_input.d), u_input.d), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u, 5623u, u_input.c, 1615u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(10439u, u_input.d, 64386u, u_input.a.x), u_input.a, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)))));
    var var_2 = Struct_3(false, -2147483647i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_0.x - arg_0.x)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -1150f) * _wgslsmith_div_f32(arg_0.x, arg_0.x)) * _wgslsmith_f_op_f32(floor(arg_0.x))));
    global0 = array<i32, 18>();
    return !(!vec3<bool>(all(!vec2<bool>(var_2.c, var_2.a)), func_3(-var_2.b, func_3(-1i, vec4<bool>(var_2.a, var_2.a, var_2.c, true), Struct_1(u_input.d, var_2.b, u_input.a.yx, 1i)), Struct_1(u_input.c, global0[_wgslsmith_index_u32(246u, 18u)], u_input.a.zz, 2147483647i)).x, true));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: u32) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = var_0.b.a.x;
    var var_2 = u_input.a;
    var var_3 = 1602f;
    var var_4 = countOneBits(vec4<i32>(_wgslsmith_mod_i32(10984i, max(-15052i, _wgslsmith_dot_vec3_i32(u_input.b.yxw, vec3<i32>(var_0.b.e.b, 0i, -1i)))), -18167i, u_input.b.x, 3711i));
    return !vec2<bool>(!func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-889f, arg_1.x, arg_1.x), vec3<f32>(var_0.b.d, -1000f, arg_1.x))).x, !any(!vec4<bool>(false, arg_0.a.x, false, true)));
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(Struct_4(select(vec3<bool>(true, true, true), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-753f, 352f, 1076f) * vec3<f32>(1000f, 1000f, -420f))), all(vec4<bool>(true, true, true, true))), Struct_2(vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)), Struct_1(select(u_input.c, 0u, true), u_input.b.x, vec2<u32>(29889u, 49231u), u_input.e | u_input.b.x), -375f, Struct_1(u_input.c, ~2147483647i, vec2<u32>(u_input.c, u_input.c), 3184i << (u_input.a.x % 32u)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(399f)) * -511f) - 373f), -1305f), u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.yxy, u_input.a.zwx & abs(select(u_input.a.zzz, vec3<u32>(4294967295u, 82702u, 52674u), var_0.x))), global0[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(1u, reverseBits(0u)), abs(~40277u)), 18u)], u_input.a.zw, ~(-25883i));
    let var_2 = Struct_3(1u >= var_1.c.x, -reverseBits(24082i), _wgslsmith_f_op_f32(step(-735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + -245f)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1198f)), -204f)));
    let var_3 = Struct_3(!(!var_2.c), 2147483647i, any(func_4(Struct_4(select(vec3<bool>(true, true, var_2.c), vec3<bool>(true, var_2.c, var_0.x), vec3<bool>(true, true, false)), Struct_2(vec3<bool>(var_0.x, var_2.a, var_2.c), var_2.c, var_1, -142f, var_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(844f, -1151f), vec2<f32>(-501f, -1804f))), 0u)));
    let var_4 = firstTrailingBit(reverseBits(u_input.b));
    return Struct_4(!(!vec3<bool>(var_2.b >= var_4.x, false, false)), Struct_2(!func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-286f, 1000f, -1370f)))), false, var_1, 756f, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(), Struct_3((true || (1u <= u_input.c)) & all(vec4<bool>(false, true, true, true)), select(~_wgslsmith_sub_i32(u_input.e, 2147483647i), -1i, true), _wgslsmith_dot_vec2_i32(select(u_input.b.zw, u_input.b.xx, vec2<bool>(true, true)), vec2<i32>(0i, 4540i)) >= 1i), func_1().b.c, 1100f);
    let var_1 = var_0.b.a;
    global0 = array<i32, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.b.d - -1568f), _wgslsmith_div_f32(var_0.d, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1285f + -235f), _wgslsmith_f_op_f32(round(var_0.a.b.d))), -1290f)));
    var_0 = Struct_5(Struct_4(var_0.a.a, Struct_2(vec3<bool>(var_0.b.a, true, any(vec4<bool>(var_0.b.c, var_0.a.a.x, var_0.a.b.b, true))), var_0.a.a.x, var_0.c, 1134f, var_0.a.b.c)), Struct_3(func_2(vec3<f32>(_wgslsmith_div_f32(222f, -1383f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_0.d - -1000f))).x, _wgslsmith_add_i32(~(~var_0.a.b.c.d), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.b.zwx, u_input.b.zwy), 41172i)), var_0.a.a.x), Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.a), u_input.a, vec4<u32>(u_input.d, var_0.a.b.c.c.x, 0u, 78475u)), u_input.a), -(max(22651i, var_0.a.b.e.d) ^ ~global0[_wgslsmith_index_u32(4294967295u, 18u)]), var_0.c.c, global0[_wgslsmith_index_u32(u_input.d >> (firstLeadingBit(var_0.a.b.c.a) % 32u), 18u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(812f)), 182f, 10977i >= global0[_wgslsmith_index_u32(u_input.c, 18u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-120f, var_0.d))))));
    let var_3 = _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(-26110i, global0[_wgslsmith_index_u32(~func_1().b.e.c.x ^ ~countOneBits(u_input.c), 18u)], countOneBits(_wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(u_input.b.x, global0[_wgslsmith_index_u32(28573u, 18u)]), countOneBits(1i))), u_input.b.x));
    var var_4 = all(vec3<bool>(true, all(var_0.a.a.xy), func_2(vec3<f32>(var_2.x, -2625f, -678f)).x));
    let var_5 = func_1().b.e;
    let var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a.b.d, 709f)))), 1i, vec2<f32>(1607f, -2498f), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.b, global0[_wgslsmith_index_u32(4294967295u, 18u)], var_5.b, var_6.b.c.b) << ((u_input.a & vec4<u32>(84042u, u_input.d, 40260u, 14418u)) % vec4<u32>(32u)), -(~u_input.b)), ~vec4<i32>(-50136i, var_0.a.b.e.d, firstLeadingBit(var_6.b.e.b), ~54096i), any(!select(vec3<bool>(false, true, false), var_6.b.a, var_0.a.b.a))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_5.c.x, ~4294967295u), var_5.c.x));
}

