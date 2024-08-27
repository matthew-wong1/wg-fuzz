struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(i32(-2147483648), -46931i), vec2<i32>(-22900i, -10880i), vec2<i32>(2147483647i, -8548i), vec2<i32>(53167i, 0i), vec2<i32>(2147483647i, -46375i), vec2<i32>(0i, 7468i), vec2<i32>(-728i, 2147483647i), vec2<i32>(-1i, -6679i), vec2<i32>(2147483647i, -12649i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(48756i, 2147483647i), vec2<i32>(0i, 20446i), vec2<i32>(2147483647i, 0i), vec2<i32>(-27593i, -37905i), vec2<i32>(-12858i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 76537i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-17188i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(652i, -17841i), vec2<i32>(25408i, 0i), vec2<i32>(-14504i, 27640i), vec2<i32>(0i, -42481i), vec2<i32>(20463i, 0i), vec2<i32>(38620i, 0i));

var<private> global1: Struct_4;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = vec3<i32>(18920i | (~arg_0.a.a.x << (arg_0.a.c.x % 32u)), -1i << (~global1.c.c.x % 32u), 2147483647i);
    return countOneBits(~0u);
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<u32>(~global2.d.a.c.x, _wgslsmith_sub_u32(global1.d.a.c.x, select(~global1.c.c.x, _wgslsmith_mod_u32(global1.c.c.x, global1.d.a.c.x) ^ 4294967295u, true)), max(~(global1.c.c.x >> (0u % 32u)), func_3(Struct_2(Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), global1.c.b, vec3<u32>(global1.c.c.x, 71367u, global2.c.c.x), vec2<bool>(false, false)), true))), 4294967295u);
    global2 = Struct_4(global1.c.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(565f)), 662f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-188f, 118f))), global1.d.a, Struct_3(global2.d.a));
    var var_1 = abs(countOneBits(0i));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -265f);
    var_0 = abs(max(~(~_wgslsmith_div_vec4_u32(vec4<u32>(78307u, 30650u, global2.d.a.c.x, global1.c.c.x), vec4<u32>(var_0.x, var_0.x, global1.d.a.c.x, 0u))), abs(vec4<u32>(global1.d.a.c.x, global1.d.a.c.x >> (0u % 32u), ~global2.d.a.c.x, ~global1.c.c.x))));
    return Struct_2(global2.c, false);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_4 {
    global2 = Struct_4(global2.d.a.d.x && !all(vec4<bool>(true, true, true, true)), arg_0, global2.d.a, Struct_3(global1.d.a));
    let var_0 = func_2();
    var var_1 = _wgslsmith_mult_u32(global2.c.c.x, 4294967295u);
    var_1 = select(_wgslsmith_div_u32(~(~global2.d.a.c.x), ~_wgslsmith_clamp_u32(39533u, _wgslsmith_clamp_u32(4294967295u, var_0.a.c.x, var_0.a.c.x), ~var_0.a.c.x)), 3902u, arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -186f);
    return Struct_4(!arg_0, (_wgslsmith_div_u32(0u, global2.c.c.x) > 46541u) & false, Struct_1(u_input.a.yy >> (var_0.a.c.xy % vec2<u32>(32u)), select(select(vec3<bool>(true, global1.d.a.d.x, true), vec3<bool>(false, false, true), vec3<bool>(var_0.b, var_0.a.d.x, global1.b)), vec3<bool>(!arg_0, 1u >= var_0.a.c.x, var_0.a.d.x), !vec3<bool>(arg_0, arg_1.x, false)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.a.c.x, 6590u), global2.c.c), global1.c.c), !func_2().a.d), global2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, global1.c.b.xy);
    var var_1 = global1.d;
    global2 = var_0;
    let var_2 = !select(select(select(vec4<bool>(false, var_1.a.d.x, true, var_1.a.b.x), vec4<bool>(true, global1.c.d.x, global2.c.d.x, false), select(vec4<bool>(var_0.d.a.d.x, var_0.d.a.d.x, false, false), vec4<bool>(var_0.d.a.d.x, true, true, global1.b), global1.d.a.b.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, var_1.a.d.x, false), vec4<bool>(global1.d.a.b.x, true, false, global1.b))), vec4<bool>(select(global2.c.d.x, global2.c.d.x, false), false, true, true)), select(vec4<bool>(global1.a, false, false, 1i <= u_input.a.x), select(!vec4<bool>(false, global1.a, true, true), select(vec4<bool>(false, false, var_1.a.d.x, true), vec4<bool>(var_1.a.b.x, global1.a, var_0.d.a.d.x, false), vec4<bool>(true, var_1.a.d.x, var_1.a.d.x, false)), select(vec4<bool>(global1.b, true, true, var_1.a.b.x), vec4<bool>(false, var_1.a.d.x, var_0.a, true), false)), (var_1.a.a.x | 71900i) >= -18190i), !select(vec4<bool>(global2.c.d.x, true, false, false), vec4<bool>(var_0.b, global2.b, var_0.a, true), false));
    let var_3 = func_1(!(!(!(!global2.d.a.b.x))), func_2().a.b.yy).c;
    var var_4 = true;
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2176f - _wgslsmith_f_op_f32(f32(-1f) * -162f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1494f))))), -765f, true));
    let var_6 = var_5;
    global0 = array<vec2<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, var_5, 1301f, -181f)) * vec4<f32>(-1490f, var_5, _wgslsmith_div_f32(var_5, 1274f), 1f))), _wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(1056f + -1133f)), firstLeadingBit(vec2<i32>(-global2.d.a.a.x, -1i)));
}

