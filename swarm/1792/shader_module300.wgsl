struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<i32>(-52474i, 2147483647i, 1i), Struct_1(vec2<bool>(false, true), 83645u, 0u, vec2<i32>(-21146i, 13699i), vec3<u32>(1u, 0u, 4294967295u)), vec2<u32>(0u, 48919u), vec2<bool>(false, true), false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> u32 {
    global0 = Struct_4(-global0.a, Struct_1(global0.d, 36064u, ~58497u, global0.b.d, vec3<u32>(global0.c.x, global0.b.c, _wgslsmith_clamp_u32(global0.c.x, 25873u, ~global0.b.c))), vec2<u32>(global0.b.c, ~global0.b.c), !global0.b.a, all(!vec4<bool>(global0.d.x, all(vec3<bool>(global0.e, true, global0.b.a.x)), true, !global0.d.x)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(462f, -485f, _wgslsmith_f_op_f32(-356f + 1420f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2213f, -222f, -1291f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), var_0.x, ~firstTrailingBit(4294967295u) != max(global0.c.x, global0.b.b & 1u))), var_0.x);
    var var_2 = Struct_4(global0.a, Struct_1(global0.d, ~(~1u), 80063u | global0.b.e.x, select(u_input.a.ww, firstLeadingBit(vec2<i32>(global0.b.d.x, arg_0)), select(vec2<bool>(true, true), select(vec2<bool>(global0.e, global0.d.x), global0.d, vec2<bool>(global0.b.a.x, true)), global0.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(~27003u, global0.b.e.x, 3645u), _wgslsmith_mult_vec3_u32(vec3<u32>(47286u, global0.c.x, global0.c.x), global0.b.e), vec3<u32>(~global0.b.c, _wgslsmith_add_u32(93598u, global0.b.b), ~4294967295u))), vec2<u32>(global0.b.b, (43104u >> (abs(1u) % 32u)) >> (~global0.c.x % 32u)), global0.b.a, !any(!select(vec2<bool>(true, true), vec2<bool>(false, global0.b.a.x), global0.d)));
    let var_3 = (-28848i ^ global0.a.x) == _wgslsmith_dot_vec2_i32(-vec2<i32>(~u_input.a.x, global0.b.d.x | global0.b.d.x), u_input.a.xy);
    return 1u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_2 {
    global0 = Struct_4(global0.a, Struct_1(!(!vec2<bool>(global0.b.a.x, false)), select(global0.c.x << ((global0.c.x ^ 1u) % 32u), _wgslsmith_mult_u32(func_3(arg_0.x), firstLeadingBit(0u)), global0.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.e.x, global0.b.e.x), global0.c.x >> (arg_2.x % 32u)), arg_2.x), u_input.a.wy, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.b, 412u), _wgslsmith_mult_u32(arg_2.x, arg_2.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.c.x, 1u), ~7562u), _wgslsmith_mod_u32(64534u, select(global0.b.e.x, 685u, global0.b.a.x)))), ~(~global0.c), !(!(!(!global0.b.a))), reverseBits(_wgslsmith_mult_u32(~17234u, _wgslsmith_add_u32(arg_2.x, arg_2.x))) <= select(1u, firstTrailingBit(~4294967295u), global0.d.x));
    let var_0 = arg_1.x;
    var var_1 = select(vec3<bool>(true, global0.b.a.x, ~1u != global0.b.e.x), vec3<bool>(global0.b.a.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 0u, global0.c.x, 97569u), vec4<u32>(arg_2.x, 26023u, 0u, 0u)), 2774u) <= arg_2.x, true), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -677f))), var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(arg_1.x * 1402f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), -469f, arg_1.x, _wgslsmith_f_op_f32(-191f * var_0))))), all(vec3<bool>(true, true, select(false, true, false)))));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(297f)), -841f, !global0.e)), var_2.x, var_2.x, var_0)))));
    return Struct_2(-1000f == _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1489f, -446f)))), select(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, global0.a.x), abs(global0.a.x), _wgslsmith_sub_i32(8409i, -1i)) & firstTrailingBit(_wgslsmith_div_i32(-13019i, -1i)), u_input.a.x, !any(global0.d)), global0.d.x, select(select(vec4<bool>(global0.d.x || global0.b.a.x, true, all(var_1.yz), !var_1.x), select(!vec4<bool>(var_1.x, global0.d.x, var_1.x, var_1.x), !vec4<bool>(false, false, global0.d.x, false), true), !select(vec4<bool>(global0.d.x, true, false, var_1.x), vec4<bool>(var_1.x, global0.b.a.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, false, global0.d.x))), !vec4<bool>(any(vec4<bool>(global0.d.x, true, var_1.x, false)), arg_0.x <= arg_3.x, var_1.x, false), select(vec4<bool>(false, var_1.x, global0.b.e.x == 1u, all(vec4<bool>(false, var_1.x, var_1.x, var_1.x))), !(!vec4<bool>(var_1.x, global0.d.x, global0.e, var_1.x)), global0.b.a.x)), Struct_1(select(!vec2<bool>(var_1.x, false), !(!global0.d), global0.d.x), 0u, global0.c.x, -arg_3, max(vec3<u32>(4294967295u, 31963u, arg_2.x) & abs(vec3<u32>(20561u, 0u, arg_2.x)), arg_2 << (_wgslsmith_add_vec3_u32(arg_2, global0.b.e) % vec3<u32>(32u)))));
}

fn func_1() -> u32 {
    let var_0 = func_2(-reverseBits(abs(u_input.a.yy | global0.a.zz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(835f, 1000f), vec2<f32>(317f, 848f))))))), ~(vec3<u32>(_wgslsmith_mult_u32(global0.b.e.x, global0.b.c), global0.b.b >> (12108u % 32u), _wgslsmith_add_u32(global0.c.x, 1u)) | vec3<u32>(~38871u, _wgslsmith_sub_u32(global0.b.c, global0.b.b), _wgslsmith_mod_u32(36436u, global0.b.c))), vec2<i32>(-37678i, ~1i));
    var var_1 = Struct_4(global0.a, global0.b, reverseBits(select(min(var_0.e.e.xx, ~vec2<u32>(24197u, 56731u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e.e.x, global0.b.c, var_0.e.b, var_0.e.e.x), vec4<u32>(1u, 1u, var_0.e.b, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.e.x, 1u, var_0.e.c), var_0.e.e)), !var_0.c)), var_0.e.a, var_0.a);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -411f);
    var var_3 = ~_wgslsmith_mod_u32(var_1.b.e.x, 0u);
    let var_4 = Struct_2(-1i == -_wgslsmith_dot_vec3_i32(global0.a, firstLeadingBit(vec3<i32>(-9227i, 1i, 0i))), -2147483647i >> (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(18641u, var_0.e.e.x, 0u)), ~vec3<u32>(var_0.e.c, global0.b.c, global0.b.b)), vec3<u32>(_wgslsmith_sub_u32(4294967295u, 95424u), ~global0.c.x, _wgslsmith_dot_vec3_u32(var_0.e.e, var_0.e.e))) % 32u), !(firstLeadingBit(u_input.a.x) > (global0.a.x << (0u % 32u))) && (true || any(vec4<bool>(false, false, true, global0.d.x))), vec4<bool>(!any(!vec3<bool>(var_0.c, global0.d.x, true)), true || (var_1.c.x >= _wgslsmith_mult_u32(var_1.b.e.x, global0.b.b)), firstTrailingBit(-u_input.a.x) < global0.a.x, var_0.c), func_2(vec2<i32>(1i, ~_wgslsmith_clamp_i32(var_1.b.d.x, 26243i, 25522i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(396f, -1204f) * vec2<f32>(-230f, 686f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-383f, 844f))), vec2<f32>(-357f, -1348f))), min(countOneBits(countOneBits(var_0.e.e)), ~vec3<u32>(37176u, var_1.c.x, 1u)), max(vec2<i32>(i32(-1i) * -2147483647i, 0i), var_1.b.d)).e);
    return countOneBits(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(~(global0.b.b >> (global0.c.x % 32u))), ~max(global0.c.x << (global0.c.x % 32u), ~global0.b.b)), func_1(), ~1u, global0.b.e.x);
    let var_1 = func_2(~(~_wgslsmith_sub_vec2_i32(global0.b.d, ~vec2<i32>(2147483647i, -3323i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1325f, 152f), vec2<f32>(-435f, -524f))))), vec3<u32>(~1u << (_wgslsmith_div_u32(max(var_0.x, 24170u), 1u) % 32u), 0u, var_0.x), u_input.a.zw);
    var var_2 = var_1.d.yxw;
    let var_3 = global0.a.x | -global0.b.d.x;
    var var_4 = global0.b.c;
    var_4 = ~1u;
    var var_5 = Struct_2(true, ~min(_wgslsmith_div_i32(global0.b.d.x, u_input.a.x), global0.b.d.x), true, vec4<bool>(!(!global0.b.a.x), true, true, var_2.x), func_2(var_1.e.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(round(-2674f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(516f, -1290f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-955f, 1000f))))), vec3<u32>(func_1(), 14477u, 30826u), global0.a.zy).e);
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-248f, 1276f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(789f, -1615f))) + _wgslsmith_f_op_f32(-391f - _wgslsmith_div_f32(-737f, 246f)))));
    let var_7 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-min(-10351i, var_3), 7123i, -31851i), ~min(min(u_input.a.yzy, vec3<i32>(-2147483647i, var_3, -2147483647i)), u_input.a.xwx)), 0i, -(i32(-1i) * -max(global0.b.d.x, -31298i)), ~(-global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, var_7.x, var_1.e.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-456f - -360f)))), -177f, var_1.c || !global0.e)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), 168f, -924f));
}

