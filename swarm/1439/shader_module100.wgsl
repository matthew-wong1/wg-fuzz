struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = Struct_1(-firstLeadingBit(_wgslsmith_add_vec4_i32(global0.a, arg_2.a >> (vec4<u32>(1u, 68406u, 50889u, 1u) % vec4<u32>(32u)))), abs(-(i32(-1i) * -1i)), global0.a, arg_2.d);
    return !(!(!all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_2.d.x), vec3<bool>(global0.d.x, arg_2.d.x, global0.d.x)))));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32((vec2<i32>(arg_1.x, 28282i) & global0.a.ww) & global0.a.xz, vec2<i32>(6082i, arg_1.x)), ~_wgslsmith_sub_vec2_i32(~(~vec2<i32>(29076i, u_input.a)), arg_1.yz));
    global0 = Struct_1(global0.c, -firstLeadingBit(var_0), abs(~vec4<i32>(global0.b, arg_1.x, var_0, ~1i)), vec2<bool>(true, true));
    var var_1 = !select(vec4<bool>(true, !any(global0.d), global0.d.x, false), select(!(!vec4<bool>(global0.d.x, global0.d.x, global0.d.x, true)), !vec4<bool>(true, global0.d.x, global0.d.x, true), vec4<bool>(!global0.d.x, func_3(-1000f, 28072i, Struct_1(global0.c, -8091i, global0.a, global0.d), 53913u), all(vec3<bool>(true, global0.d.x, true)), func_3(1306f, var_0, Struct_1(vec4<i32>(arg_1.x, global0.b, arg_1.x, u_input.a), -12238i, global0.a, vec2<bool>(global0.d.x, false)), 66755u))), vec4<bool>(!global0.d.x, any(select(vec3<bool>(global0.d.x, false, true), vec3<bool>(true, true, global0.d.x), true)), global0.d.x, ~arg_0 <= 43839u));
    let var_2 = false | var_1.x;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(357f - 300f))), Struct_2(global0.c.zz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(955f, -1054f, 721f), vec3<f32>(-335f, 1086f, -1202f), global0.d.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1031f, -1419f, 2315f))), false)))), vec3<i32>(var_0, _wgslsmith_mod_i32(~global0.c.x, global0.c.x), 1i)), Struct_1(_wgslsmith_sub_vec4_i32(global0.c, global0.a), min(arg_1.x, -25268i), firstTrailingBit(firstTrailingBit(-global0.c)), vec2<bool>(var_2, global0.d.x)), abs(max(1u, _wgslsmith_mod_u32(1u, 4294967295u))));
    return ~(~1u);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-540f, -1394f, 236f, 385f))), _wgslsmith_div_vec4_f32(vec4<f32>(-363f, 884f, -581f, 110f), vec4<f32>(125f, 1364f, 857f, -749f))))))));
    var var_1 = min(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.d), _wgslsmith_dot_vec2_u32(~u_input.d.xy, ~u_input.c.yz));
    var_1 = func_2(select(22040u, ~u_input.c.x, u_input.d.x > abs(0u)), global0.c.wyx);
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(725f - _wgslsmith_f_op_f32(step(var_0.x, var_0.x))), true)), Struct_2((vec2<i32>(2147483647i, u_input.b) & global0.a.yx) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.c.wy) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(var_0.zyw - var_0.wzz), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, 8622i), global0.c.wz), 22334i, _wgslsmith_dot_vec3_i32(global0.c.wyz, global0.a.yzy))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, -22669i, global0.b, 28156i), vec4<i32>(0i, global0.b, global0.b, -2147483647i) << (vec4<u32>(u_input.c.x, u_input.d.x, 4294967295u, 1u) % vec4<u32>(32u))), ~(~(-1i)), global0.c, vec2<bool>(all(vec3<bool>(true, global0.d.x, global0.d.x)), false & global0.d.x)), max(_wgslsmith_mult_u32(1u << (u_input.d.x % 32u), u_input.c.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.c.x), u_input.d.x))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1779f, -1675f)))), Struct_2(_wgslsmith_add_vec2_i32(global0.a.yw, select(global0.a.yx, global0.a.xy, vec2<bool>(true, global0.d.x))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -221f)), ~(~vec3<i32>(global0.b, u_input.a, global0.b))), Struct_1(vec4<i32>(-26163i, _wgslsmith_dot_vec4_i32(vec4<i32>(10788i, u_input.b, global0.c.x, -38651i), vec4<i32>(u_input.a, -1i, -2456i, 10646i)), i32(-1i) * -57976i, u_input.a), 0i, vec4<i32>(-1i) * -global0.a, select(global0.d, select(global0.d, global0.d, vec2<bool>(false, false)), true)), 30425u), !select(vec4<bool>(!global0.d.x, global0.d.x, true, select(false, false, false)), select(select(vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(global0.d.x, false, false, global0.d.x), global0.d.x), !vec4<bool>(false, false, global0.d.x, true), global0.d.x), global0.d.x));
    let var_3 = !(!select(var_2.a.c.d, !(!global0.d), var_2.c.yy));
    return var_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(min(-vec4<i32>(_wgslsmith_mod_i32(global0.b, u_input.b), _wgslsmith_mod_i32(-1i, u_input.a), u_input.a, global0.a.x), _wgslsmith_mod_vec4_i32(global0.c, -vec4<i32>(22733i, 0i, -7890i, u_input.b))), reverseBits(-6270i), -abs(vec4<i32>(min(3829i, 0i), select(u_input.b, -1i, true), u_input.a, func_1().b)), select(global0.d, global0.d, global0.d));
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(~(-26825i), -63754i, 0i | u_input.b, u_input.a)), global0.c), _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b, global0.a.x, global0.b), max(global0.a, vec4<i32>(global0.c.x, -5568i, -65126i, u_input.b))), ~global0.a), countOneBits(global0.c)), _wgslsmith_sub_vec4_i32(~(~min(global0.c, vec4<i32>(global0.b, 47493i, 2147483647i, -1i))), vec4<i32>(_wgslsmith_mult_i32(-u_input.a, _wgslsmith_dot_vec3_i32(global0.a.xwx, vec3<i32>(global0.a.x, 30395i, 2147483647i))), u_input.a, max(1i, global0.b ^ -1i), countOneBits(-24906i))), select(vec2<bool>(any(vec4<bool>(true, global0.d.x, global0.d.x, false)), !global0.d.x), vec2<bool>(global0.d.x, any(global0.d)), global0.d.x));
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-844f - 414f))), Struct_2(vec2<i32>(global0.b, u_input.b), vec3<f32>(-216f, _wgslsmith_f_op_f32(floor(998f)), 1f), -max(vec3<i32>(-30859i, 3664i, u_input.a), global0.a.yzy)), Struct_1(global0.a, 1i, ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -8622i, 0i, global0.b), vec4<i32>(global0.b, u_input.b, u_input.b, u_input.a)), vec2<bool>(global0.d.x, true & global0.d.x)), ~min(63751u, _wgslsmith_dot_vec2_u32(vec2<u32>(6227u, u_input.d.x), vec2<u32>(u_input.d.x, u_input.c.x)))), Struct_3(832f, Struct_2(global0.a.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, 1202f, 1457f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(949f, -1120f, 1028f))), global0.c.ywy), func_1(), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 106328u, u_input.d.x, 21977u), vec4<u32>(13855u, u_input.c.x, 4436u, u_input.d.x)), u_input.c.x, _wgslsmith_mod_u32(1u, 4294967295u))), select(select(select(vec4<bool>(global0.d.x, global0.d.x, false, true), vec4<bool>(true, true, false, global0.d.x), any(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false))), vec4<bool>(true, true, true, all(global0.d)), !select(vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(false, false, global0.d.x, true), vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x))), select(vec4<bool>(any(vec2<bool>(false, global0.d.x)), global0.d.x, !global0.d.x, all(global0.d)), select(!vec4<bool>(false, false, global0.d.x, global0.d.x), !vec4<bool>(global0.d.x, true, false, global0.d.x), vec4<bool>(false, global0.d.x, true, false)), true), vec4<bool>(false, !(!global0.d.x), func_3(_wgslsmith_f_op_f32(-152f - -1000f), ~(-47523i), Struct_1(vec4<i32>(global0.b, 1i, u_input.a, 3163i), 45974i, vec4<i32>(2147483647i, global0.b, u_input.b, global0.b), vec2<bool>(true, global0.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, 1u), u_input.d)), false)));
    var var_1 = Struct_2(~abs(_wgslsmith_div_vec2_i32(var_0.a.c.c.yx, ~var_0.a.b.c.yz)), var_0.b.b.b, var_0.b.c.c.zxz & global0.a.zwz);
    let var_2 = Struct_4(var_0.b, var_0.b, var_0.c);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(round(var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-130f))), _wgslsmith_f_op_f32(-894f + var_0.b.a) == -1248f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.b.b.x))))))));
    var_3 = var_1.b.x;
    let var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(274f, 1000f, 1000f, -1364f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, -759f)));
}

