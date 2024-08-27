struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = Struct_1(false);
    global1 = Struct_1(global1.a);
    let var_1 = Struct_3(~abs(arg_0.c.x) >> (1u % 32u), !any(vec3<bool>(u_input.b > 1i, any(vec4<bool>(var_0.a, var_0.a, true, global1.a)), arg_0.d.a != var_0.a)), arg_0);
    global0 = firstTrailingBit(firstTrailingBit(u_input.c)) << (26821u % 32u);
    let var_2 = Struct_2(arg_0.d, var_0, arg_0.c, Struct_1(global1.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -287f);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_3(0u, any(select(select(!vec4<bool>(global1.a, arg_0.c, global1.a, global1.a), !vec4<bool>(arg_3.b, false, arg_3.c.a.a, true), select(vec4<bool>(global1.a, true, true, false), vec4<bool>(global1.a, arg_3.c.b.a, arg_3.b, true), global1.a)), vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.b.a, arg_0.c, true))), arg_3.c);
    var var_1 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec3_u32(u_input.d.xww, vec3<u32>(0u, arg_3.c.c.x, 4294967295u))), ~(~(~0u)), min(76126u, ~0u) | (firstTrailingBit(4294967295u) | arg_1)) << (4294967295u % 32u);
    var var_2 = firstTrailingBit(select(~(-(~vec4<i32>(3413i, -2147483647i, -17832i, -1i))), vec4<i32>(-(~(-18940i)), -2147483647i, 3482i, _wgslsmith_sub_i32(countOneBits(u_input.c), _wgslsmith_mult_i32(u_input.c, 2147483647i))), !select(vec4<bool>(false, arg_0.a.a, arg_3.c.d.a, arg_3.c.a.a), select(vec4<bool>(true, global1.a, false, arg_3.b), vec4<bool>(false, global1.a, arg_0.e.x, arg_0.b.a), vec4<bool>(global1.a, true, true, false)), any(vec4<bool>(arg_0.c, false, false, false)))));
    let var_3 = arg_3;
    var_2 = vec4<i32>(_wgslsmith_div_i32(2147483647i, ~u_input.c), -32927i, var_2.x, var_2.x);
    return !select(vec2<bool>(~u_input.c >= var_2.x, global1.a), !arg_0.e, true & arg_0.e.x);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(false), Struct_1(false), true, 72533u, !vec2<bool>(global1.a, any(vec4<bool>(false, true, false, global1.a)) && global1.a));
    let var_1 = var_0.d;
    let var_2 = var_0.a;
    let var_3 = Struct_4(var_0.b, var_0.a, !var_0.a.a, 4294967295u, select(vec2<bool>(false, any(vec4<bool>(false, false, var_2.a, false))), func_4(Struct_4(var_0.a, Struct_1(var_0.a.a), var_2.a, 13080u, var_0.e), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(9650u, u_input.a.x, u_input.e.x)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(true), var_0.b, u_input.a.xz, var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-467f, arg_0)), i32(-1i) * -19246i, var_0.d)), Struct_3(5794u, var_0.b.a, Struct_2(Struct_1(true), Struct_1(true), u_input.a.zz, Struct_1(var_2.a)))), select(var_0.e, !func_4(Struct_4(Struct_1(false), Struct_1(var_2.a), global1.a, 34128u, var_0.e), var_0.d, -590f, Struct_3(u_input.a.x, true, Struct_2(Struct_1(true), var_0.b, vec2<u32>(58423u, u_input.e.x), var_0.a))), any(vec3<bool>(false, var_0.e.x, var_2.a)))));
    var var_4 = var_0.a;
    return Struct_4(Struct_1(true), var_0.a, arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 + 623f), 164f, all(var_0.e))) + arg_0), ~0u, vec2<bool>((0u <= var_0.d) || (u_input.c == arg_1.x), false & global1.a));
}

fn func_1() -> bool {
    let var_0 = func_2(_wgslsmith_f_op_f32(-127f - 610f), vec2<i32>(0i, 2147483647i));
    global1 = var_0.a;
    let var_1 = var_0.b;
    var var_2 = func_2(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-302f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f))))), min(~max(vec2<i32>(7058i, -5324i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-38947i, u_input.b))), vec2<i32>(u_input.b, _wgslsmith_mult_i32(0i, -1i)) << ((u_input.e ^ u_input.a.zz) % vec2<u32>(32u)))).b;
    global1 = var_0.a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.a.x, func_1(), Struct_2(func_2(_wgslsmith_f_op_f32(select(546f, -1412f, global1.a)), abs(vec2<i32>(-2147483647i, -12180i))).b, func_2(_wgslsmith_f_op_f32(-1303f - _wgslsmith_f_op_f32(step(608f, 2284f))), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.c, u_input.c), ~(-17686i))).b, u_input.d.zy, func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-391f)))), (vec2<i32>(25677i, u_input.b) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(vec2<i32>(50323i, 0i), vec2<i32>(u_input.c, u_input.c))).a));
    let var_1 = vec2<bool>(true, global1.a);
    var var_2 = -1000f;
    var var_3 = Struct_1(false);
    var var_4 = Struct_4(var_0.c.a, Struct_1(!var_3.a), all(vec3<bool>(true, !(var_1.x & var_0.c.b.a), false)), _wgslsmith_sub_u32(63087u, _wgslsmith_sub_u32(58184u, u_input.a.x >> (~40529u % 32u))), !vec2<bool>(global1.a, true));
    var_3 = var_0.c.a;
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, max(_wgslsmith_sub_vec2_u32(var_0.c.c, select(vec2<u32>(0u, u_input.a.x), _wgslsmith_sub_vec2_u32(var_5.c, u_input.a.xy), !var_3.a)), vec2<u32>(firstTrailingBit(40841u), 38924u)), _wgslsmith_mult_u32(92663u, _wgslsmith_div_u32(var_4.d & ~var_0.a, ~1u)));
}

