struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2505f;

var<private> global1: Struct_3 = Struct_3(-640f, vec3<bool>(false, false, true), -183f, i32(-2147483648));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<f32>(-1230f, 1313f);
    var var_1 = Struct_3(global1.c, select(vec3<bool>(global1.b.x, true, any(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, true, false, arg_0.x), false))), vec3<bool>(select(false, var_0.x >= global1.a, global1.c == -1143f), global1.b.x, global2.x == true), !select(select(vec3<bool>(false, global1.b.x, global1.b.x), vec3<bool>(arg_0.x, global2.x, false), vec3<bool>(arg_0.x, global2.x, arg_0.x)), select(vec3<bool>(false, global1.b.x, arg_0.x), vec3<bool>(true, global2.x, false), vec3<bool>(true, arg_0.x, global2.x)), global2.x || arg_0.x)), 1603f, global1.d);
    var var_2 = _wgslsmith_add_vec4_i32(max(~(~(vec4<i32>(2147483647i, -2147483647i, 8951i, -34408i) ^ vec4<i32>(var_1.d, -1i, var_1.d, -8384i))), ~(-select(vec4<i32>(9118i, var_1.d, 0i, global1.d), vec4<i32>(2147483647i, -15490i, 46047i, 2147483647i), vec4<bool>(arg_0.x, global2.x, false, arg_0.x)))), vec4<i32>(1i, _wgslsmith_add_i32(~0i ^ -var_1.d, min(26217i, 74421i)), max(2147483647i, _wgslsmith_mult_i32(max(1i, var_1.d), _wgslsmith_mult_i32(14625i, 40330i))), -30794i));
    return var_1.d;
}

fn func_2() -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2736f)) - _wgslsmith_f_op_f32(-626f * global1.c)))), vec3<bool>(global2.x, global2.x, true), global1.c, firstTrailingBit(func_3(global2.xxx, Struct_1(select(vec3<u32>(0u, 4294967295u, 24913u), vec3<u32>(9492u, 4294967295u, 58306u), false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1904f, _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a)))))));
    var var_2 = Struct_1(vec3<u32>(~3357u, 16932u, _wgslsmith_mod_u32(u_input.c.x, max(65340u, ~u_input.c.x))));
    return -_wgslsmith_mod_i32(abs(var_0.d), -(u_input.d ^ _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d, u_input.a), vec2<i32>(-8392i, global1.d))));
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = Struct_3(1f, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), global1.c))), func_2());
    var var_1 = Struct_4(true, var_0.c, -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 78123i, u_input.d, global1.d), vec4<i32>(0i, global1.d, global1.d, 0i) << (vec4<u32>(u_input.b, u_input.c.x, 1u, 1u) % vec4<u32>(32u)), ~vec4<i32>(-52757i, 1i, 1i, -2147483647i)), ~vec4<i32>(u_input.d, var_0.d, 80665i, u_input.d)), Struct_1(_wgslsmith_add_vec3_u32(~(~vec3<u32>(7638u, u_input.b, 1u)), min(vec3<u32>(u_input.b, u_input.c.x, u_input.b), ~vec3<u32>(1u, 1u, u_input.b)))), select(select(vec4<bool>(any(vec4<bool>(true, arg_0, true, global1.b.x)), arg_0, false, !global1.b.x), select(vec4<bool>(true, global2.x, true, false), select(vec4<bool>(global2.x, true, global1.b.x, global1.b.x), vec4<bool>(false, var_0.b.x, global2.x, true), var_0.b.x), var_0.d < global1.d), select(!vec4<bool>(false, arg_0, true, global1.b.x), !vec4<bool>(arg_0, global2.x, arg_0, true), vec4<bool>(global1.b.x, false, arg_0, global2.x))), vec4<bool>(true, true, var_0.b.x, !any(vec3<bool>(false, var_0.b.x, var_0.b.x))), !(!vec4<bool>(true, true, false, arg_0))));
    let var_2 = ~select(~(u_input.b >> (1u % 32u)), var_1.d.a.x, true);
    var_1 = Struct_4(any(!vec4<bool>(global1.b.x, true, true, any(vec3<bool>(true, true, global2.x)))), -347f, ~vec4<i32>(0i, 1i, 2147483647i, ~(-15599i)), var_1.d, !(!select(vec4<bool>(false, true, false, var_1.a), vec4<bool>(global1.b.x, true, global2.x, true), false)));
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, abs(var_1.d.a.x), ~var_2), var_1.d.a), u_input.c.x, abs(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_1.d.a.x), var_1.d.a)))));
    return -338f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: u32) -> vec3<bool> {
    let var_0 = vec4<bool>(global1.b.x | global1.b.x, true, true | (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 68832u), vec2<u32>(4294967295u, u_input.c.x)), arg_0.c.a.xx) != _wgslsmith_dot_vec2_u32(arg_0.c.a.zy | vec2<u32>(arg_3, u_input.b), _wgslsmith_clamp_vec2_u32(arg_0.c.a.xz, vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(1u, 0u)))), !any(global1.b.xx));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1096f, -1805f), vec2<f32>(arg_1, 501f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c, -394f), vec2<f32>(arg_1, -190f), vec2<bool>(false, global1.b.x)))), global2.zx)) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(func_1(any(vec2<bool>(true, global1.b.x)))))));
    let var_2 = arg_0;
    return vec3<bool>(global1.b.x, true, true);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = arg_2.a;
    var var_1 = arg_2;
    var_1 = arg_2;
    var var_2 = global1.d;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1774f)), arg_1.b.x && all(vec3<bool>(false, true, global1.b.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f))))));
    return Struct_2(global1.d, -238f, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.c.x << (_wgslsmith_add_u32(19070u, ~u_input.c.x) % 32u), 0u);
    var var_1 = func_5(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.d, u_input.a), _wgslsmith_add_i32(global1.d, 20350i)), u_input.a, ~(-2147483647i)), ~(~max(global1.d, u_input.a))), Struct_3(global1.c, func_4(Struct_2(global1.d << (4294967295u % 32u), _wgslsmith_f_op_f32(func_1(false)), Struct_1(vec3<u32>(u_input.c.x, u_input.b, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1272f * global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1777f))), var_0.x), global1.a, i32(-1i) * -_wgslsmith_clamp_i32(-4477i, global1.d, 2147483647i)), Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 8463u), vec3<u32>(1u, 64148u, var_0.x))), all(vec3<bool>(true, true, false)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-1095f * 1721f)), _wgslsmith_f_op_f32(-2548f + _wgslsmith_div_f32(348f, global1.a)), global1.a);
    global1 = Struct_3(-630f, func_4(func_5(vec2<i32>(47247i, _wgslsmith_mult_i32(-10105i, u_input.a)), Struct_3(_wgslsmith_f_op_f32(590f - -1446f), !global1.b, _wgslsmith_f_op_f32(-801f - -2208f), global1.d), func_5(min(vec2<i32>(var_1.a, var_1.a), vec2<i32>(19176i, -40946i)), Struct_3(-462f, global1.b, var_1.b, var_1.a), var_1.c, true).c, global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, 260f)), var_1.b, ~(~(~72236u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1310f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.x, -1932f), _wgslsmith_f_op_f32(select(1923f, -711f, true)))))), 2147483647i);
    let var_3 = true;
    global1 = Struct_3(1000f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(round(-653f)), var_1.a);
    var_1 = func_5(-(~(-select(vec2<i32>(u_input.d, u_input.a), vec2<i32>(7911i, global1.d), true))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1127f, var_2.x))), vec3<bool>(any(select(vec2<bool>(true, var_3), vec2<bool>(var_3, global2.x), true)), !any(global2.xww), false & !global2.x), _wgslsmith_f_op_f32(-1f), -1i), func_5(vec2<i32>(-(var_1.a & -1i), global1.d), Struct_3(-133f, !vec3<bool>(global2.x, global1.b.x, false), var_1.b, global1.d), func_5(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(global1.d, u_input.a)), -vec2<i32>(global1.d, var_1.a)), Struct_3(var_2.x, vec3<bool>(false, true, global1.b.x), 1000f, u_input.d), var_1.c, 4294967295u == var_1.c.a.x).c, true).c, true);
    global0 = global1.a;
    let var_4 = Struct_3(680f, global2.wzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), -6822i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(_wgslsmith_mult_u32(var_0.x, _wgslsmith_add_u32(var_0.x, var_0.x)), ~abs(0u), 0u, _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.c.a.x, var_0.x), reverseBits(var_1.c.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(-var_4.c), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.x)))))), ~(~(~firstLeadingBit(vec4<u32>(u_input.c.x, var_0.x, u_input.b, var_0.x)))), ~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 28911i, -2147483647i), vec3<i32>(global1.d, -1i, var_4.d)), -vec3<i32>(u_input.a, 1i, var_4.d)), vec3<i32>(abs(firstTrailingBit(u_input.a)), -(func_5(vec2<i32>(u_input.d, -21084i), var_4, Struct_1(var_1.c.a), global1.b.x).a ^ (46195i >> (1u % 32u))), global1.d));
}

