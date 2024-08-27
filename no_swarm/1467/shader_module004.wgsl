struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_5(global0.a, global0.b, global0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, global0.d.x) - vec2<f32>(-769f, 1513f)))), vec2<f32>(872f, global0.a.x)));
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -418f, _wgslsmith_f_op_f32(ceil(110f)), _wgslsmith_f_op_f32(sign(global0.d.x))) * global0.a)), -(abs(1i) >> (1u % 32u)), select(global0.c, _wgslsmith_clamp_vec3_u32(select(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 0u, global0.c.x), u_input.a), u_input.a, false), ~select(vec3<u32>(u_input.b.x, 38944u, global0.c.x), global0.c, true), u_input.a), 1038f <= _wgslsmith_f_op_f32(floor(global0.d.x))), _wgslsmith_f_op_vec2_f32(global0.a.xx - _wgslsmith_f_op_vec2_f32(-global0.a.yy)));
    var var_0 = global0.a.yz;
    var var_1 = true == (~(firstTrailingBit(global0.c.x) >> (global0.c.x % 32u)) > 16884u);
    var var_2 = Struct_3(Struct_1(all(vec2<bool>(true, true)) | select(false, true, all(vec3<bool>(true, true, true))), global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * global0.d.x))), global0.d.x, 221f, var_0.x), select(-vec4<i32>(global0.b, global0.b, u_input.e.x, -14890i) | vec4<i32>(-global0.b, -2147483647i, -2147483647i, -u_input.e.x), abs(vec4<i32>(u_input.e.x, _wgslsmith_div_i32(42533i, global0.b), u_input.e.x << (u_input.c % 32u), i32(-1i) * -60957i)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)))));
    return !select(vec3<bool>(1159f == var_0.x, var_2.a.a, var_2.a.a), !vec3<bool>(any(vec3<bool>(var_2.a.a, false, false)), !var_2.a.a, var_2.a.a), !(!vec3<bool>(true, false, var_2.a.a)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(false, arg_2), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, global0.a)) * global0.a))), -_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, -global0.b, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(2147483647i, 13604i)), _wgslsmith_div_i32(15206i, 1i)), arg_1));
    var var_1 = var_0;
    var var_2 = Struct_2(var_1.a, vec3<i32>(-(arg_1.x << (1u % 32u)), -_wgslsmith_div_i32(countOneBits(global0.b), ~arg_1.x), 0i), select(!func_3(), select(!(!vec3<bool>(var_0.a.a, false, var_0.a.a)), select(!vec3<bool>(var_0.a.a, var_1.a.a, false), vec3<bool>(true, true, true), select(false, true, true)), vec3<bool>(true & var_0.a.a, !var_1.a.a, !var_1.a.a)), !(!vec3<bool>(false, var_1.a.a, false))), vec3<bool>(false, all(!(!vec4<bool>(false, false, var_1.a.a, var_0.a.a))), var_1.a.a), abs(firstTrailingBit(vec3<i32>(-var_0.c.x, 10390i & var_0.c.x, _wgslsmith_sub_i32(u_input.d, -53366i)))));
    return !var_2.d;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> Struct_5 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var_0 = var_1;
    let var_2 = select(all(vec4<bool>(any(var_0.c), true, any(vec4<bool>(true, false, var_1.a.a, arg_0.a.a)), true && all(var_1.d))), arg_2.x, !(~arg_1 != 3891u));
    let var_3 = var_1;
    return Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.b, 420f, _wgslsmith_f_op_f32(-global0.d.x), var_0.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global0.a))))), u_input.d, ~select(firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(arg_1, u_input.b.x, 1u))), u_input.b, var_0.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2277f, arg_0.a.b))) + global0.d));
}

fn func_1() -> Struct_5 {
    global0 = func_4(Struct_2(Struct_1(!all(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.x, global0.d.x)) - _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(select(u_input.e, u_input.e, false), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.e.x, global0.b), vec3<i32>(12810i, u_input.e.x, global0.b))), -vec3<i32>(global0.b, -2147483647i, u_input.e.x)), func_2(u_input.e.xx, select(-vec4<i32>(-2147483647i, -26124i, -2147483647i, global0.b), vec4<i32>(26257i, u_input.d, global0.b, 2147483647i), all(vec2<bool>(true, false))), 628f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1800f + -551f))), vec3<bool>(true, true, false), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(u_input.e.x), reverseBits(u_input.d), ~29814i), max(vec3<i32>(u_input.d, u_input.d, global0.b), u_input.e), select(u_input.e & vec3<i32>(-52020i, global0.b, 1i), u_input.e, false))), abs(~4294967295u) & ~countOneBits(_wgslsmith_sub_u32(global0.c.x, 0u)), vec4<bool>((min(global0.b, -4054i) != ~2147483647i) && (_wgslsmith_div_f32(349f, global0.d.x) > -731f), true, min(1u, u_input.c) == global0.c.x, any(vec2<bool>(true, true))));
    global0 = Struct_5(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.d.x + 548f), _wgslsmith_div_f32(global0.d.x, global0.a.x), _wgslsmith_f_op_f32(global0.a.x - 1000f), -127f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, -1285f, global0.a.x, -502f) + global0.a)), vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1052f, global0.d.x), _wgslsmith_f_op_f32(605f * -1030f), any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(abs(-358f))), func_4(Struct_2(Struct_1(true, 1181f), u_input.e, vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<i32>(-26449i, u_input.d, u_input.d)), ~1345u, select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)).a.x))), u_input.e.x, ~firstTrailingBit(_wgslsmith_mult_vec3_u32(select(global0.c, vec3<u32>(global0.c.x, u_input.b.x, u_input.a.x), false), _wgslsmith_div_vec3_u32(global0.c, global0.c))), vec2<f32>(659f, func_4(Struct_2(Struct_1(true, -1609f), vec3<i32>(global0.b, global0.b, -2147483647i), vec3<bool>(false, true, false), vec3<bool>(true, true, true), min(vec3<i32>(global0.b, global0.b, u_input.d), u_input.e)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(0u, u_input.a.x)) << (1u % 32u), vec4<bool>(any(vec3<bool>(false, false, true)), true, true, all(vec4<bool>(false, false, false, true)))).d.x));
    var var_0 = func_4(Struct_2(Struct_1(all(vec2<bool>(true, false)) || func_3().x, global0.a.x), ~vec3<i32>(select(global0.b, -2147483647i, false), -1i, u_input.d), func_3(), select(vec3<bool>(false, false, true), func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 32117i), u_input.e.yz, vec2<i32>(16711i, u_input.d)), firstLeadingBit(vec4<i32>(u_input.d, -43154i, global0.b, u_input.d)), 1000f, -362f), false), select(reverseBits(vec3<i32>(-35685i, u_input.e.x, -49082i)), abs(u_input.e), all(vec2<bool>(true, false))) << ((~vec3<u32>(u_input.a.x, 0u, 4294967295u) >> (global0.c % vec3<u32>(32u))) % vec3<u32>(32u))), ~u_input.a.x, vec4<bool>(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), true, all(vec2<bool>(false, func_2(u_input.e.xy, vec4<i32>(u_input.e.x, -1i, 1i, u_input.e.x), 979f, 627f).x)), !(!(-120f < global0.d.x))));
    var var_1 = false;
    var_0 = func_4(Struct_2(Struct_1(!(var_0.b <= -2147483647i), _wgslsmith_f_op_f32(-global0.d.x)), vec3<i32>(1i, _wgslsmith_mult_i32(-9303i, 20749i), -2147483647i), vec3<bool>(true, all(vec3<bool>(false, false, true)), any(vec2<bool>(false, true))), !vec3<bool>(true, var_0.d.x < var_0.a.x, func_3().x), vec3<i32>(firstTrailingBit(global0.b | -20870i), ~(u_input.d | var_0.b), 2147483647i)), _wgslsmith_mod_u32(var_0.c.x, 4764u), select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false))), vec4<bool>((2148f < var_0.d.x) || true, all(vec4<bool>(true, true, true, true)), true, !any(vec2<bool>(true, false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)))));
    return func_4(Struct_2(Struct_1(u_input.b.x != 2151u, _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(trunc(global0.a.x)))), vec3<i32>(-var_0.b, var_0.b, -2147483647i), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, true, true)), true && (global0.d.x != var_0.a.x)), -vec3<i32>(_wgslsmith_sub_i32(var_0.b, u_input.d), var_0.b, max(1i, 15848i))), func_4(Struct_2(Struct_1(true, var_0.a.x), vec3<i32>(global0.b, u_input.e.x | global0.b, global0.b), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), -abs(u_input.e)), 4294967295u, !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)))).c.x, select(!vec4<bool>(func_3().x, true, true, true), vec4<bool>(any(vec3<bool>(true, false, true)), abs(77676u) > select(global0.c.x, 0u, false), true, true), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = func_1();
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a.xwz)) * global0.a.yzy);
    var var_3 = Struct_2(Struct_1(!(func_2(u_input.e.xx, vec4<i32>(u_input.e.x, var_1.x, var_1.x, -37425i), var_2.x, -1151f).x & true), global0.a.x), u_input.e, vec3<bool>(true, func_3().x, select(global0.c.x > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), u_input.a.yz), all(vec4<bool>(true, true, true, true)), false)), !(!func_3()), max(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(17733i, -1i, var_1.x)) & ~u_input.e, vec3<i32>(-1i, u_input.d, u_input.e.x) & ~u_input.e), max(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, global0.b, u_input.d), firstLeadingBit(vec3<i32>(2147483647i, -2147483647i, 1i))), u_input.e)));
    var_3 = Struct_2(var_3.a, var_3.e, select(vec3<bool>(false, true, any(var_3.c.yz)), vec3<bool>(func_3().x, var_3.a.a, select(var_3.c.x, true, !var_3.c.x)), var_3.c), !vec3<bool>(!any(vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(global0.d.x, global0.d.x) > _wgslsmith_div_f32(global0.a.x, var_3.a.b), !any(vec4<bool>(var_3.a.a, var_3.d.x, false, false))), vec3<i32>(-33323i >> (0u % 32u), 40562i, 0i));
    var var_4 = var_3.b.x;
    let var_5 = vec3<f32>(1982f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_3.a.b), _wgslsmith_f_op_f32(var_2.x * -782f))) + -358f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1290f - _wgslsmith_div_f32(global0.a.x, var_3.a.b)), func_1().a.x, !(var_3.c.x && var_3.a.a))), 2834f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, 1000f, vec4<i32>(-global0.b, _wgslsmith_sub_i32(3514i, func_1().b), (countOneBits(u_input.d) & var_3.e.x) << (_wgslsmith_mult_u32(u_input.b.x, u_input.c) % 32u), -u_input.d), u_input.b.yz, ~85179u);
}

