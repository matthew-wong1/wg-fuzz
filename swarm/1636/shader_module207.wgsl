struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(11746u, 0u, 27479u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(u_input.c, -1i);
    global0 = vec3<u32>(abs(var_0.a), _wgslsmith_add_u32(firstTrailingBit(~var_0.a), _wgslsmith_mult_u32(var_0.a, 23614u)), u_input.c);
    var var_1 = Struct_4(vec4<bool>(arg_0.a, false, true, true), !(!vec3<bool>(true, arg_0.a, arg_0.b.x >= arg_0.b.x)));
    let var_2 = !(!select(!vec3<bool>(arg_0.a, true, arg_0.a), var_1.b, !vec3<bool>(arg_0.a, var_1.a.x, arg_0.a)));
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(31153u, ~abs(~17635u)), ~var_0.a & select(4294967295u, u_input.c, any(var_1.b.xx)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(select(var_0.a, 17529u, true), max(var_0.a, 4294967295u)), _wgslsmith_div_u32(~91u, var_0.a)), ~(~u_input.c)));
    return var_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_5(vec4<bool>(arg_0.x, !(!(arg_0.x || arg_0.x)), true, arg_0.x), vec2<i32>(-1i, 1i));
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(20767u, _wgslsmith_sub_u32(global0.x, 0u), countOneBits(arg_1.a)), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1.a, 1222u) << (vec3<u32>(31831u, u_input.c, 14789u) % vec3<u32>(32u)), vec3<u32>(arg_1.a, 26892u, global0.x) >> (vec3<u32>(arg_1.a, 75300u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 6681u, arg_1.a, arg_1.a), vec4<u32>(u_input.c, 38153u, 4294967295u, global0.x)), ~3463u)), reverseBits(countOneBits(~vec3<u32>(1298u, u_input.c, global0.x)))), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a, 0u, arg_1.a), ~vec3<u32>(18949u, 1u, arg_1.a)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 31777u, global0.x), vec3<u32>(global0.x, 1u, 0u), vec3<u32>(0u, global0.x, 4294967295u)), abs(vec3<u32>(arg_1.a, global0.x, global0.x)))));
    let var_1 = 0u > global0.x;
    let var_2 = -var_0.b;
    global0 = ~select(vec3<u32>(0u, ~arg_1.a >> (_wgslsmith_sub_u32(arg_1.a, 41965u) % 32u), global0.x), ~(~(~vec3<u32>(189u, 9744u, global0.x))), select(!select(arg_0, vec3<bool>(var_1, var_0.a.x, false), vec3<bool>(arg_0.x, arg_0.x, var_0.a.x)), vec3<bool>(true, true, any(var_0.a.zy)), var_0.a.wxz));
    return ~arg_1.a;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    global0 = vec3<u32>(u_input.c, ~(func_3(arg_0.a.wxy, func_2(Struct_1(true, vec4<f32>(969f, 630f, -390f, 1409f)))) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 27567u, u_input.c), vec3<u32>(u_input.c, 11987u, 4294967295u))), 1u);
    var var_0 = Struct_5(arg_0.a, select(abs(abs(vec2<i32>(u_input.a, u_input.b.x))), _wgslsmith_sub_vec2_i32(u_input.b.xz, -_wgslsmith_div_vec2_i32(u_input.b.yx, u_input.b.zx)), arg_2.zz));
    var_0 = Struct_5(vec4<bool>(select(true, var_0.a.x, true), any(select(vec2<bool>(false, true), arg_2.xz, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(119f)), _wgslsmith_f_op_f32(ceil(arg_3))) <= -625f, true), min(-_wgslsmith_mod_vec2_i32(vec2<i32>(10483i, arg_1), u_input.b.xy), u_input.b.wy) ^ select(~(-vec2<i32>(-9756i, u_input.a)), var_0.b, var_0.a.xy));
    var var_1 = var_0.a.wz;
    global0 = vec3<u32>(global0.x, 38450u, ~(~func_2(Struct_1(false, vec4<f32>(arg_3, arg_3, arg_3, -1000f))).a));
    return Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, 25380u) | vec4<u32>(0u, u_input.c, 1u, global0.x), vec4<u32>(global0.x, 2754u, global0.x, global0.x), abs(vec4<u32>(33900u, 4294967295u, 1u, global0.x))), vec4<u32>(~global0.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 0u, 4294967295u), vec3<u32>(16678u, global0.x, u_input.c)), 35337u)), ~vec4<u32>(~21700u, u_input.c, 4294967295u, _wgslsmith_add_u32(1161u, 58972u))), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_3) -> f32 {
    let var_0 = !(!arg_3.c.x);
    var var_1 = Struct_5(select(select(vec4<bool>(var_0, true, true, false), select(vec4<bool>(var_0, arg_3.c.x, true, var_0), select(vec4<bool>(true, arg_3.c.x, true, arg_3.c.x), vec4<bool>(var_0, arg_3.c.x, false, true), vec4<bool>(false, true, var_0, false)), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(true, true, false, true), vec4<bool>(arg_3.c.x, var_0, arg_3.c.x, false))), select(!vec4<bool>(arg_3.c.x, var_0, arg_3.c.x, false), !vec4<bool>(var_0, var_0, true, false), u_input.b.x > arg_0.b)), select(!(!vec4<bool>(var_0, var_0, true, var_0)), !select(vec4<bool>(true, var_0, arg_3.c.x, true), vec4<bool>(true, true, arg_3.c.x, var_0), arg_3.c.x), select(select(vec4<bool>(false, arg_3.c.x, true, arg_3.c.x), vec4<bool>(false, arg_3.c.x, false, true), false), !vec4<bool>(arg_3.c.x, false, var_0, var_0), true)), !(!(!vec4<bool>(var_0, false, var_0, true)))), vec2<i32>(arg_0.b, _wgslsmith_clamp_i32(2147483647i | arg_3.a.b, ~47222i, -30385i)));
    var var_2 = i32(-1i) * -12970i;
    global0 = arg_1.yzx;
    let var_3 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-416f, -843f, -805f, 1951f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1069f, -243f, _wgslsmith_f_op_f32(1000f - 957f), _wgslsmith_f_op_f32(ceil(295f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -995f) * var_3.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-822f, _wgslsmith_f_op_f32(min(-803f, -140f)))), _wgslsmith_f_op_f32(-333f * _wgslsmith_div_f32(-1218f, _wgslsmith_f_op_f32(-var_3.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, vec4<f32>(-242f, _wgslsmith_f_op_f32(-241f - _wgslsmith_f_op_f32(func_4(func_1(Struct_4(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false)), u_input.a, vec3<bool>(false, false, false), -1649f), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 9725u, 4294967295u, 15801u), vec4<u32>(u_input.c, 1u, global0.x, 1u)), func_2(Struct_1(true, vec4<f32>(-948f, -300f, -417f, -1823f))), Struct_3(Struct_2(0u, u_input.a), Struct_2(12900u, 1i), vec3<bool>(false, false, false))))), 1f, -484f));
    let var_1 = ~u_input.b.zwy;
    let var_2 = vec2<bool>(!var_0.a, var_0.a);
    var var_3 = Struct_1(true, var_0.b);
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(5598u, u_input.c, _wgslsmith_sub_u32(global0.x, global0.x | global0.x)), ~vec3<u32>(~(3033u << (global0.x % 32u)), 0u, firstLeadingBit(global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<i32>(firstTrailingBit(-63121i), -u_input.a, -2147483647i, u_input.b.x), vec4<i32>(-35041i, _wgslsmith_mod_i32(2147483647i, var_1.x), ~2147483647i, min(u_input.a, u_input.b.x)), true));
}

