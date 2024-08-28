struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(~(~_wgslsmith_add_u32(4294967295u, 0u)), (any(vec2<bool>(true, false)) & true) && true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-603f, -863f, -543f, 1230f)) + vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global0.wx, min(global0.xy, global0.yz)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 2147483647i), global0.xx)) & ~_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global0.x, -31072i)), vec2<i32>(-1i, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global0.x), global0.zx)), Struct_1(max(4294967295u, 58348u), false, vec4<f32>(-531f, -280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2366f, 1020f))), 1115f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(108f, -480f, -1234f) * vec3<f32>(-192f, -340f, 779f))))), -2147483647i);
    global0 = ~vec4<i32>(u_input.a, select(_wgslsmith_clamp_i32(-2147483647i, 0i, ~global0.x), _wgslsmith_dot_vec2_i32(reverseBits(var_0.b), -var_0.b), false), 20869i, global0.x ^ global0.x);
    global0 = select(_wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(75168i, var_0.b.x, global0.x, global0.x)), vec4<i32>(firstTrailingBit(-16903i), firstLeadingBit(_wgslsmith_clamp_i32(var_0.e, 0i, global0.x)), -2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-24538i, -2147483647i), abs(-1i)))), ~_wgslsmith_div_vec4_i32(abs(abs(vec4<i32>(var_0.b.x, u_input.a, -46301i, var_0.e))), vec4<i32>(2147483647i, -1i >> (var_0.a.a % 32u), -u_input.a, global0.x)), select(!(!select(vec4<bool>(var_0.a.b, false, var_0.a.b, var_0.a.b), vec4<bool>(var_0.c.b, true, var_0.a.b, false), true)), vec4<bool>(!any(vec4<bool>(false, false, true, false)), true && var_0.c.b, var_0.a.b, all(select(vec3<bool>(true, false, var_0.a.b), vec3<bool>(false, var_0.c.b, var_0.a.b), false))), select(vec4<bool>(!var_0.c.b, false, any(vec2<bool>(false, true)), true), vec4<bool>(var_0.a.b, true, true, var_0.c.b), !vec4<bool>(var_0.a.b, var_0.a.b, true, true))));
    let var_1 = !all(select(!(!vec4<bool>(false, var_0.c.b, var_0.c.b, false)), select(vec4<bool>(var_0.c.b, true, false, var_0.a.b), !vec4<bool>(false, false, var_0.a.b, false), select(vec4<bool>(false, var_0.c.b, false, var_0.a.b), vec4<bool>(true, false, true, true), false)), vec4<bool>(var_0.c.b, true, false, true)));
    var var_2 = Struct_1(7228u, !var_0.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.c.x, 2137f, var_0.c.c.x, var_0.d.x))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-583f * -950f)), 520f, var_0.c.c.x, var_0.a.c.x)));
    return !(!vec2<bool>(all(vec2<bool>(var_2.b, false)), select(var_2.b, var_0.a.b, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(global0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -218f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * -562f)), _wgslsmith_f_op_f32(ceil(-853f))), select(select(!func_3(), func_3(), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), !(_wgslsmith_f_op_f32(floor(1986f)) > -1661f))));
    var var_2 = 4294967295u;
    let var_3 = 4294967295u;
    var var_4 = Struct_2(Struct_1(27924u, true, vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, -1199f, var_1.x)), ~(-vec2<i32>(~52047i, _wgslsmith_mult_i32(-7588i, -1i))), Struct_1(~24634u, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -170f, var_1.x, 1569f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, 1530f, 1f)), ~(-8409i));
    return Struct_1(abs(var_4.c.a), false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1535f, -1237f, var_4.c.c.x, var_4.a.c.x)) - var_4.c.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, var_1.x, var_4.a.c.x, 791f)) + vec4<f32>(var_4.d.x, var_1.x, var_4.c.c.x, 255f))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mult_u32(arg_3.x, _wgslsmith_clamp_u32(arg_1, arg_1, arg_3.x)) << (arg_1 % 32u);
    var var_2 = Struct_2(func_2(), ~(~vec2<i32>(abs(global0.x), -3570i)), func_2(), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(242f, _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(arg_2 + 460f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(972f, -486f, -218f), vec3<f32>(1426f, 812f, -343f)))))))), u_input.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_vec4_i32(select(vec4<i32>(firstLeadingBit(-3263i), _wgslsmith_dot_vec2_i32(global0.zy, global0.zz), 0i, _wgslsmith_div_i32(-2147483647i, 1i)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a, global0.x, -2147483647i, u_input.a)), ~vec4<i32>(-2147483647i, u_input.a, 44692i, global0.x)), vec4<bool>(true, true, true, true)), ~(~vec4<i32>(u_input.a, -2536i, u_input.a, global0.x)));
    let var_0 = Struct_2(func_1(vec2<bool>(true, true), ~1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(543f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(exp2(1f)))), ~(~vec4<u32>(94u, 0u, 52395u, 1u))), vec2<i32>(firstTrailingBit(u_input.a << (~30899u % 32u)), -79119i), Struct_1(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(68850u, 4294967295u), _wgslsmith_clamp_u32(0u, 1u, 417u)), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 157f) * _wgslsmith_f_op_f32(select(205f, -1206f, true))), _wgslsmith_f_op_f32(round(-1390f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1718f - -1172f)), _wgslsmith_f_op_f32(floor(-226f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(879f, -1192f, 1263f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-101f, 100f, 749f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, -322f, 1348f) * vec3<f32>(952f, 1092f, -310f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(392f, -661f, 476f), vec3<f32>(-1019f, -614f, -2003f))))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 610f, -1433f)), vec3<f32>(820f, -145f, -622f), vec3<bool>(true, true, true))), vec3<f32>(-226f, _wgslsmith_f_op_f32(select(-554f, -415f, true)), _wgslsmith_f_op_f32(f32(-1f) * -602f)), !(global0.x <= 0i)))), global0.x);
    var var_1 = Struct_2(var_0.a, global0.yx, func_2(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.d))))), firstTrailingBit(-var_0.e));
    var var_2 = true;
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.c.yyw);
}

