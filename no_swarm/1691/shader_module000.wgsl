struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_2(!vec3<bool>(all(vec2<bool>(true, true)), !select(arg_0, false, arg_0), arg_0), false, select(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), arg_0), vec2<bool>(arg_0, arg_0), !arg_0), !select(vec2<bool>(arg_0, false), select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), !arg_0), vec2<bool>(firstLeadingBit(global0.d.x) <= countOneBits(global0.a), true)), any(vec2<bool>((arg_0 & arg_0) != !arg_0, !(13566u <= global0.b.x))), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = Struct_1(_wgslsmith_add_i32(~(-u_input.a) >> ((select(4294967295u, 0u, true) ^ global0.b.x) % 32u), -(0i << (global0.b.x % 32u)) | countOneBits(_wgslsmith_add_i32(global0.d.x, global0.d.x))), global0.b, global0.c, _wgslsmith_mod_vec3_i32(global0.d, select(~vec3<i32>(2147483647i, 2147483647i, 16641i), ~(~global0.d), var_0.a)));
    global1 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(~global0.a), u_input.a, _wgslsmith_mult_i32(global0.d.x, i32(-1i) * -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, -9674i), _wgslsmith_mod_i32(global1.x, global1.x), firstTrailingBit(17876i)), max(vec3<i32>(global1.x, global1.x, -20605i), vec3<i32>(u_input.a, 12431i, global1.x)), ~vec3<i32>(1i, global1.x, -1439i))), countOneBits(vec3<i32>(-firstLeadingBit(-6067i), _wgslsmith_div_i32(global0.d.x, global0.d.x) | global0.a, -38266i | ~global1.x)));
    var var_1 = select(!select(select(vec2<bool>(true, arg_0), !var_0.c, global0.c.x > global0.c.x), select(var_0.c, !var_0.a.yy, !var_0.a.zz), all(vec2<bool>(false, arg_0))), select(!var_0.c, select(var_0.c, select(var_0.c, select(var_0.c, var_0.a.zx, vec2<bool>(false, arg_0)), !var_0.e), var_0.a.xx), vec2<bool>(all(var_0.a.zz), var_0.e)), var_0.c);
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(!vec2<bool>(func_3(true) | (-22775i <= global0.d.x), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), vec2<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))));
    let var_1 = false;
    global0 = Struct_1(countOneBits(-2147483647i), max(arg_0.b, ~vec3<u32>(~3994u, ~arg_0.b.x, global0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.c))), vec3<i32>(-_wgslsmith_mult_i32(-1i, max(u_input.a, -47552i)), global1.x, 28407i));
    let var_2 = arg_0;
    var var_3 = arg_0.b.yy;
    return Struct_1(_wgslsmith_mult_i32(abs(var_2.a), arg_0.d.x), _wgslsmith_mod_vec3_u32(vec3<u32>(~58138u, countOneBits(~u_input.b), 0u), vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(~arg_0.b, _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.x, 4294967295u, 1u), var_2.b)), _wgslsmith_add_u32(var_2.b.x, max(global0.b.x, 60192u)))), arg_0.c, -reverseBits(~arg_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    let var_0 = func_2(func_2(arg_0));
    global1 = select(countOneBits(-min(vec3<i32>(u_input.a, global0.d.x, u_input.a), vec3<i32>(var_0.a, 16091i, var_0.a))) & vec3<i32>(global0.d.x, global0.d.x, _wgslsmith_clamp_i32(var_0.d.x, 1i, 19592i)), vec3<i32>(_wgslsmith_dot_vec2_i32(-(var_0.d.xy | vec2<i32>(-356i, 5597i)), arg_0.d.zy), -2147483647i, global0.d.x), !(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false), true)));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-764f * arg_2.x), arg_2.x)), Struct_3(arg_0, Struct_1(firstTrailingBit(firstLeadingBit(1i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.x, 42696u, 1u), vec3<u32>(11590u, 1u, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -315f, -180f) * arg_2.zzx) + _wgslsmith_f_op_vec3_f32(-var_0.c)), var_0.d), -abs(var_0.d), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, 46064u, 1u), vec3<u32>(4294967295u, 48413u, var_0.b.x) | vec3<u32>(arg_0.b.x, 4294967295u, u_input.b)))));
    global1 = var_1.b.a.d;
    let var_2 = -1734f;
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global1.x, ~vec3<u32>(1u, 5645u, global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1799f, global0.c.x), global0.c.x))), global0.c.x, global0.c.x), vec3<i32>(global1.x, ~(~(~32401i)), -global0.d.x));
    global1 = ~var_0.d;
    let var_1 = ~(~vec4<u32>(func_4(func_2(Struct_1(u_input.a, var_0.b, vec3<f32>(var_0.c.x, var_0.c.x, 1000f), vec3<i32>(var_0.d.x, u_input.a, global0.a))), _wgslsmith_clamp_u32(global0.b.x, var_0.b.x, 37878u), _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, -1176f, -183f, var_0.c.x), vec4<f32>(global0.c.x, 1083f, global0.c.x, var_0.c.x))), var_0.b.x, 7684u | var_0.b.x, var_0.b.x));
    let var_2 = Struct_2(!select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, false, true)))), !(_wgslsmith_f_op_f32(max(1662f, global0.c.x)) >= global0.c.x) & any(vec4<bool>(true, select(true, true, false), true, select(true, false, false))), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, -23551i != _wgslsmith_clamp_i32(-2147483647i, 50528i, -41858i)), true), (_wgslsmith_f_op_f32(601f + global0.c.x) != global0.c.x) && true, false);
    let var_3 = var_0.b.zx;
    return func_2(func_2(func_2(func_2(Struct_1(global1.x, var_0.b, var_0.c, global0.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2(Struct_1(global0.a, vec3<u32>(func_2(Struct_1(1i, global0.b, var_0.c, var_0.d)).b.x, 4294967295u, ~global0.b.x) ^ var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))), ~(-var_0.d)));
    var_1 = Struct_1(_wgslsmith_sub_i32(~global1.x, abs(52876i)), var_1.b, vec3<f32>(global0.c.x, -1504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), global0.d);
    var_1 = func_1();
    let var_2 = Struct_3(Struct_1(u_input.a | ~47930i, ~(~vec3<u32>(global0.b.x, var_0.b.x, 64730u) & ~vec3<u32>(var_1.b.x, var_1.b.x, 4845u)), global0.c, -(-var_0.d ^ _wgslsmith_add_vec3_i32(var_0.d, vec3<i32>(var_1.a, var_1.a, var_1.d.x)))), func_2(func_1()), select(_wgslsmith_sub_vec3_i32(var_0.d, vec3<i32>(~27814i, -global1.x, -var_1.d.x)), var_1.d, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, any(vec4<bool>(false, true, true, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), !any(vec2<bool>(true, false))), vec3<bool>(true, true, all(vec2<bool>(true, true))), !(2147483647i >= func_1().a)), var_1.b);
    let var_3 = Struct_2(!vec3<bool>(true, var_2.c.x <= ~var_0.d.x, true), var_2.b.c.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_f32(-1246f - var_2.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), select(select(!var_2.d.zy, select(vec2<bool>(true, true), vec2<bool>(var_2.d.x, true), var_2.d.x), any(var_2.d)), select(select(var_2.d.zy, var_2.d.zz, select(var_2.d.zy, vec2<bool>(true, var_2.d.x), var_2.d.zx)), select(select(var_2.d.zx, var_2.d.yy, false), select(vec2<bool>(false, var_2.d.x), vec2<bool>(var_2.d.x, true), var_2.d.zz), var_2.d.x), all(select(vec4<bool>(true, true, false, var_2.d.x), vec4<bool>(true, true, false, true), true))), var_2.d.xx), !var_2.d.x, 1000f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.c.x * _wgslsmith_f_op_f32(var_1.c.x * var_0.c.x)), _wgslsmith_f_op_f32(abs(1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(251f, vec2<f32>(1f, 1f), 0u);
}

