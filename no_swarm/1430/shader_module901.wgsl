struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = true;

var<private> global2: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_1(~(~arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-882f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(1018f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(751f, arg_0.a, -355f) - vec3<f32>(1474f, arg_0.a, arg_0.e.x)) - vec3<f32>(arg_0.e.x, -1799f, -307f))))));
    var var_1 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(global2.yx, vec2<i32>(0i, -1i), arg_0.c), vec2<i32>(-2147483647i, global2.x)), abs(_wgslsmith_sub_i32(global2.x, 0i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.d.xyx, u_input.d.zyz), arg_0.d << (u_input.b % 32u))), -1i), _wgslsmith_mod_i32(-1i, arg_0.d));
    return select(vec2<bool>((~arg_1 << (~4294967295u % 32u)) > 4294967295u, arg_0.c), select(!select(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.c, true)), !vec2<bool>(true, arg_0.c), false), !select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(arg_0.c, arg_0.c), arg_0.c)), !vec2<bool>(true == arg_0.c, arg_0.c)), !arg_0.c);
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = select(!select(!select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, 47535u >= u_input.c), !func_3(Struct_2(arg_0, 4294967295u, true, global2.x, vec2<f32>(arg_0, arg_0)), u_input.c)), select(!func_3(Struct_2(arg_0, u_input.c, true, u_input.d.x, vec2<f32>(arg_0, arg_0)), u_input.c), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(false, false, true)), vec2<bool>(true, true)), func_3(Struct_2(1000f, 16322u, true, _wgslsmith_sub_i32(51687i, min(-11036i, u_input.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1498f) + vec2<f32>(arg_0, 1453f)))), 1u));
    global1 = !var_0.x;
    global1 = false;
    var var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.b), 49197u);
    var_0 = vec2<bool>(var_0.x, !(!(true && var_0.x)));
    return global2.x;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(global2.x, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, -40081i), 1i), -func_2(319f)), max(u_input.d.www, firstTrailingBit(arg_2)) & ~(-u_input.d.yzz)) ^ u_input.d.zzy;
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, ~30240u, max(~_wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(1u, 72199u, arg_3.x, u_input.b)), _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(6078u, 36402u, 68755u, 6653u) >> (vec4<u32>(0u, u_input.b, u_input.b, 1u) % vec4<u32>(32u))))), ~arg_3.xww);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -310f, -102f, _wgslsmith_f_op_f32(step(182f, -1182f)))));
    let var_3 = reverseBits((u_input.d << (~vec4<u32>(arg_3.x, 50807u, 5766u, var_1.x) % vec4<u32>(32u))) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 25262i, 20923i, -1i), u_input.d)) & -min(vec4<i32>(_wgslsmith_div_i32(arg_2.x, -6458i), -global2.x, -arg_2.x, ~(-2147483647i)), u_input.d);
    let var_4 = false;
    return 22465u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1605f;
    global1 = all(vec2<bool>(all(vec4<bool>(true, true, true, true)), ~func_1(-55214i, vec3<f32>(-1000f, var_0, var_0), vec3<i32>(u_input.a.x, 2167i, u_input.d.x), vec4<u32>(u_input.c, u_input.b, 10053u, u_input.c)) <= ~firstLeadingBit(1u)));
    var var_1 = select(~vec3<i32>(_wgslsmith_clamp_i32(min(1i, -8514i), -2147483647i, -18205i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 29612i, 19586i), firstLeadingBit(vec3<i32>(-10907i, u_input.d.x, -2147483647i))), global2.x), vec3<i32>(_wgslsmith_mult_i32(20844i << ((u_input.c | u_input.b) % 32u), global2.x), global2.x, reverseBits(~(-2147483647i) & (global2.x ^ -36099i))), true);
    var var_2 = _wgslsmith_dot_vec2_i32(~(-_wgslsmith_sub_vec2_i32(u_input.d.yx, var_1.xz)), _wgslsmith_mult_vec2_i32(vec2<i32>(min(func_2(-225f), ~u_input.a.x), 11830i), vec2<i32>(u_input.d.x, u_input.a.x)));
    var var_3 = true;
    var var_4 = select(select(select(vec4<bool>(true, false, select(false, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), true), vec4<bool>(func_3(Struct_2(var_0, u_input.b, false, 1i, vec2<f32>(1221f, -852f)), u_input.c).x, any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), true), !all(vec4<bool>(true, false, true, true))), vec4<bool>(true || select(all(vec4<bool>(false, false, false, true)), false, true), true, !all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, select(false, false, false)))), !select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, var_0 == -988f, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))));
    let var_5 = Struct_1(max(firstTrailingBit(u_input.c & 198u), 92034u), vec3<f32>(var_0, var_0, var_0));
    var var_6 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f))) + _wgslsmith_div_f32(var_5.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_5.b.x) + var_0))), var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(1u, 42038u, u_input.b << (34847u % 32u), 4294967295u | u_input.c)), min(select(~(var_1.x >> (u_input.c % 32u)), ~select(1i, -9451i, false), false), -2147483647i), var_5.a & _wgslsmith_mod_u32(~45236u, ~24577u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b, var_5.b.x, var_0)) - var_5.b), var_5.b)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 582f, var_5.b.x))))));
}

