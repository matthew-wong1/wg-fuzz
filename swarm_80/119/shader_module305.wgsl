struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<bool> {
    global0 = arg_0.a;
    var var_0 = arg_0;
    var var_1 = vec2<bool>(false, !(!(!global0.a.x)) && arg_1);
    var var_2 = Struct_2(Struct_1(var_0.a.c.zx, var_0.a.e.yz, vec3<bool>(all(select(vec3<bool>(arg_0.a.c.x, false, arg_1), vec3<bool>(global0.a.x, true, arg_0.a.a.x), true)), arg_0.a.c.x, any(select(vec2<bool>(arg_0.a.a.x, true), arg_0.a.c.zx, arg_0.a.c.x))), reverseBits(~arg_0.a.d), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26057u, 0u, 35528u, var_0.a.b.x), vec4<u32>(35301u, 1u, arg_0.a.b.x, 6505u) ^ vec4<u32>(var_0.a.e.x, 34519u, arg_0.a.b.x, 0u)), global0.e.x, ~_wgslsmith_mod_u32(var_0.a.b.x, var_0.a.e.x), _wgslsmith_dot_vec3_u32(arg_0.a.e.zxz >> (global0.e.wzz % vec3<u32>(32u)), vec3<u32>(1u, 0u, 1u)))));
    let var_3 = select(_wgslsmith_sub_vec3_u32((select(global0.e.zzy, var_2.a.e.wxz, false) >> (vec3<u32>(global0.e.x, 0u, 45647u) % vec3<u32>(32u))) | ~_wgslsmith_div_vec3_u32(global0.e.yzw, vec3<u32>(var_2.a.e.x, global0.b.x, 4294967295u)), var_2.a.e.ywz), vec3<u32>(~var_2.a.b.x, var_0.a.e.x, ~arg_0.a.e.x), vec3<bool>(any(vec2<bool>(true, true)), true, any(!select(vec3<bool>(arg_1, false, true), global0.c, arg_0.a.c))));
    return vec2<bool>(select(all(!vec4<bool>(false, true, var_1.x, false)), false && (var_1.x && arg_0.a.a.x), _wgslsmith_mult_i32(u_input.a.x, 2147483647i) > _wgslsmith_mod_i32(-47345i, global0.d.x)) && true, var_2.a.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_sub_u32(5060u, arg_1.e.x);
    var var_1 = _wgslsmith_mult_vec3_u32(arg_1.e.yxw, ~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9672u), global0.e.zy), global0.e.x, 0u));
    global0 = Struct_1(select(arg_1.a, !func_3(arg_3, !global0.a.x), select(arg_3.a.c.yz, arg_1.a, any(!arg_3.a.c))), ~abs(vec2<u32>(global0.b.x, global0.e.x) >> (global0.b % vec2<u32>(32u))), select(!arg_1.c, vec3<bool>(arg_1.a.x, any(select(vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_3.a.c.x), vec4<bool>(false, true, false, arg_1.a.x), vec4<bool>(false, false, false, global0.a.x))), arg_1.a.x), vec3<bool>(true, true, true)), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-u_input.a.x, max(u_input.a.x, 2147483647i)), -2147483647i >> (abs(0u) % 32u), ~max(54868i, -2147483647i)), _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_3.a.d, vec3<i32>(global0.d.x, -2147483647i, 2147483647i)), vec3<i32>(min(arg_3.a.d.x, arg_2), 1i << (0u % 32u), -arg_0))), arg_1.e);
    var_0 = _wgslsmith_clamp_u32(max(arg_1.b.x, 4294967295u), var_1.x, arg_3.a.b.x);
    var_1 = arg_1.e.zxy;
    return 2147483647i;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<i32>(~(~_wgslsmith_clamp_i32(func_2(u_input.a.x, Struct_1(global0.a, vec2<u32>(global0.b.x, 1u), vec3<bool>(false, false, false), vec3<i32>(u_input.a.x, -2147483647i, global0.d.x), global0.e), global0.d.x, Struct_2(Struct_1(global0.c.yx, global0.b, global0.c, vec3<i32>(7758i, -45468i, global0.d.x), global0.e))), ~(-22709i), -44835i)), ~(~_wgslsmith_mult_i32(min(global0.d.x, 1i), global0.d.x)), firstTrailingBit(~_wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yz), vec2<i32>(1i, -7411i))));
    let var_1 = Struct_1(vec2<bool>(!(1i == global0.d.x), !global0.a.x), _wgslsmith_clamp_vec2_u32(global0.e.zz, ~vec2<u32>(26387u, global0.e.x), select(~vec2<u32>(90008u, 7149u), global0.e.yz >> (global0.b % vec2<u32>(32u)), global0.a)) << (global0.b % vec2<u32>(32u)), vec3<bool>(any(vec3<bool>(false, any(vec4<bool>(true, global0.c.x, global0.a.x, global0.c.x)), !global0.c.x)), all(!func_3(Struct_2(Struct_1(global0.a, global0.b, global0.c, global0.d, vec4<u32>(global0.e.x, 4294967295u, global0.b.x, global0.e.x))), true)), !any(vec4<bool>(global0.c.x, global0.c.x, false, false))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_0.x, 0i), vec3<i32>(1i, u_input.a.x, u_input.a.x))), abs(1i >> (0u % 32u))), -9589i, var_0.x), vec4<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.e.x, 4294967295u, 0u), vec3<u32>(54325u, global0.b.x, 29477u))), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(124398u, global0.b.x, global0.e.x), vec3<u32>(global0.e.x, global0.e.x, 45095u), global0.e.xxx))), _wgslsmith_add_u32(22627u, max(global0.b.x, countOneBits(global0.b.x))), global0.b.x, global0.e.x));
    var_0 = global0.d;
    var var_2 = var_1.b;
    var_2 = ~(_wgslsmith_mult_vec2_u32(select(var_1.e.ww, vec2<u32>(1u, 37768u) << (vec2<u32>(global0.b.x, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(true, var_1.a.x), var_1.c.yx, vec2<bool>(global0.c.x, true))), _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(11277u, 41104u)), _wgslsmith_mod_vec2_u32(global0.e.wy, vec2<u32>(var_2.x, global0.e.x)), ~vec2<u32>(1u, global0.b.x))) << (var_1.e.wx % vec2<u32>(32u)));
    return Struct_2(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -871f)), 801f)));
    var var_1 = Struct_1(vec2<bool>(true, true), ~vec2<u32>(4294967295u, 0u), !vec3<bool>(all(vec2<bool>(false, global0.a.x)), true, _wgslsmith_sub_i32(global0.d.x, -2147483647i) > _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1458i)), vec3<i32>(1i, global0.d.x, global0.d.x), global0.e);
    var var_2 = all(vec3<bool>(any(select(var_1.c.zz, !vec2<bool>(global0.c.x, var_1.a.x), true)), false, all(select(select(vec3<bool>(false, global0.c.x, true), global0.c, global0.c), var_1.c, var_1.c.x))));
    var var_3 = func_1();
    let var_4 = !vec4<bool>(var_1.c.x || (-u_input.a.x >= _wgslsmith_mult_i32(u_input.a.x, -39294i)), global0.c.x, global0.a.x, 232f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + -301f), _wgslsmith_f_op_f32(-var_0.x))));
    var var_5 = true || (var_3.a.a.x & !var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(abs(var_1.d.x), u_input.a.x ^ 0i, 17923i), global0.d, var_1.a.x), var_3.a.b.x, global0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))));
}

