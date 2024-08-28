struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<f32>(946f, 382f, -562f, 234f), 27716u, 285f), vec3<u32>(1u, 1u, 4294967295u), vec4<u32>(1u, 17447u, 29603u, 4294967295u));

var<private> global2: bool = false;

var<private> global3: vec4<u32> = vec4<u32>(0u, 70435u, 1u, 62531u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    var var_0 = ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 37616i, -7902i, -1i)) ^ 2147483647i, 1i, u_input.b.x));
    var var_1 = Struct_5(global1.c.ww, ~21192i);
    return select(!(!vec3<bool>(541f < global1.a.b.x, true, all(vec3<bool>(false, true, false)))), !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true, true), any(select(vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), false)));
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_4(u_input.b.xw, min(~(~(vec2<u32>(1u, global3.x) & vec2<u32>(global3.x, global0.x))), vec2<u32>(global0.x, ~4294967295u)), Struct_2(global1.a, ~vec3<u32>(23465u, u_input.a | u_input.a, abs(u_input.a)), ~(~global1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.a.b.yw, global1.a.b.yx) * global1.a.b.wy), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-533f, global1.a.d, 1052f) - vec3<f32>(284f, global1.a.d, -1151f)) * vec3<f32>(831f, global1.a.d, global1.a.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.a.b.wyx)) + _wgslsmith_f_op_vec3_f32(floor(global1.a.b.zyy)))))));
    let var_1 = var_0.c;
    var var_2 = !(!select(true, true, false)) & all(!select(func_3(vec4<u32>(global1.a.a.x, global3.x, global0.x, 0u), vec2<u32>(39514u, 4294967295u), Struct_2(Struct_1(var_1.c, vec4<f32>(1196f, -1518f, -1000f, global1.a.b.x), u_input.a, global1.a.d), var_0.c.a.a.zxy, var_0.c.a.a), 2102f), vec3<bool>(true, true, true), func_3(vec4<u32>(28432u, 4294967295u, 39454u, global3.x), var_1.c.xy, Struct_2(Struct_1(vec4<u32>(var_1.b.x, global1.b.x, 1u, var_0.b.x), vec4<f32>(467f, 412f, var_1.a.b.x, -1073f), global3.x, -122f), global3.wzy, global1.c), var_1.a.b.x)));
    return Struct_5(~var_1.a.a.wy << (vec2<u32>(_wgslsmith_sub_u32(~25841u, 1u), u_input.a) % vec2<u32>(32u)), -_wgslsmith_add_i32(0i, 0i));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>) -> Struct_5 {
    global2 = true && (true & (min(34660i, reverseBits(arg_0.b)) < (firstTrailingBit(u_input.b.x) >> (global1.b.x % 32u))));
    let var_0 = !(!(!func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, global3.x, 0u, 37114u), global1.c), global0.yy, Struct_2(Struct_1(global1.a.a, global1.a.b, 0u, 1266f), vec3<u32>(arg_0.a.x, u_input.a, global0.x), vec4<u32>(u_input.a, global3.x, 4294967295u, 1u)), _wgslsmith_f_op_f32(trunc(global1.a.b.x))).x));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(u_input.a, 0u, 0u, global1.a.a.x) << (reverseBits(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(12721u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 5642u, 0u), global1.c.xxy), 1u, global1.c.x), select(vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, false, false, false), select(vec4<bool>(var_0, true, false, true), vec4<bool>(false, var_0, true, true), vec4<bool>(true, var_0, true, var_0)))), _wgslsmith_div_vec4_u32(~max(global1.a.a, vec4<u32>(1u, 0u, 4294967295u, global3.x)), vec4<u32>(~39061u, _wgslsmith_sub_u32(0u, arg_0.a.x), global0.x, 1u))), vec4<f32>(284f, global1.a.b.x, -408f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.d - global1.a.b.x), _wgslsmith_f_op_f32(-global1.a.b.x))), global0.x, global1.a.b.x);
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(global1.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, var_1.c, global3.x, _wgslsmith_dot_vec4_u32(global1.a.a, var_1.a)), vec4<u32>(1u, ~var_1.c, _wgslsmith_clamp_u32(global1.a.c, arg_0.a.x, global1.a.a.x), 51429u), vec4<u32>(arg_0.a.x ^ 1u, arg_0.a.x | arg_0.a.x, _wgslsmith_mod_u32(arg_0.a.x, var_1.a.x), countOneBits(1u)))), vec4<f32>(704f, -205f, var_1.d, var_1.d), global0.x | 4294967295u, -886f);
    global1 = Struct_2(var_2, ~var_2.a.wyx, ~_wgslsmith_clamp_vec4_u32(min(var_2.a, vec4<u32>(global3.x, global1.a.c, arg_0.a.x, global3.x)), ~vec4<u32>(u_input.a, 0u, var_1.a.x, global1.a.c), var_1.a) & _wgslsmith_sub_vec4_u32(global1.c, ~vec4<u32>(64199u, arg_0.a.x, 0u, global3.x)));
    return func_2();
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(901f, -454f, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.d, -382f) - _wgslsmith_f_op_f32(f32(-1f) * -1642f)), any(vec4<bool>(true, false, false, false)) || any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-711f + -441f))), 1813f);
    let var_1 = global1.a.d;
    var var_2 = global1.c;
    var var_3 = global1.a;
    let var_4 = -18932i;
    return Struct_1(~vec4<u32>(var_2.x, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(11696u, u_input.a)), 4294967295u, 55846u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(f32(-1f) * -1429f)), _wgslsmith_f_op_f32(abs(var_3.b.x)), _wgslsmith_f_op_f32(ceil(var_3.b.x)))), 36590u, -103f);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), countOneBits(-vec2<i32>(u_input.b.x, u_input.b.x))));
    var var_1 = -25454i;
    global0 = vec3<u32>(select(global0.x, 4294967295u, any(vec4<bool>(true, true, true, true))), 56930u, u_input.a);
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~(~global1.b), global3.zww), func_1().a.wzy | ~(vec3<u32>(0u, 1u, global1.a.c) & vec3<u32>(global0.x, global1.b.x, global0.x))), vec4<u32>(func_1().a.x, global3.x, u_input.a & ~min(global3.x, 34586u), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global1.a.a, vec4<u32>(global3.x, global3.x, u_input.a, 1u)), func_1().a.x), _wgslsmith_add_u32(func_1().c, global0.x))));
    var_0 = Struct_2(Struct_1(vec4<u32>(~0u, select(global1.a.a.x, 75036u, select(true, true, false)), 89255u, func_4(Struct_5(vec2<u32>(var_0.c.x, u_input.a), 91732i), vec2<i32>(16838i, u_input.b.x) << (var_0.c.xy % vec2<u32>(32u))).a.x), var_0.a.b, ~(~(global0.x ^ 7374u)), -1000f), func_1().a.yxz, vec4<u32>(99527u, ~(~1u) << (global3.x % 32u), firstLeadingBit(0u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.a, global0.x), ~var_0.c.yx, true), select(global1.b.xx, abs(var_0.b.zz), vec2<bool>(true, true))) ^ ~vec2<u32>(func_1().c, _wgslsmith_add_u32(0u, 18414u)), firstLeadingBit(reverseBits(reverseBits(u_input.b))));
}

