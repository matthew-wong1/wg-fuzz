struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec3<f32>(-1000f, 2081f, -1000f), Struct_1(vec4<u32>(0u, 14236u, 32711u, 16519u), vec4<f32>(508f, -650f, 736f, 335f)), Struct_2(12433i, 25010i), Struct_1(vec4<u32>(7936u, 0u, 4294967295u, 1u), vec4<f32>(-1480f, 1524f, 448f, 543f)), 17814u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2.a.xzx;
    let var_1 = vec4<bool>(!(arg_1 <= arg_2.b.x), false, any(select(vec4<bool>(all(vec4<bool>(true, false, true, true)), all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, true))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true))))), true);
    global1 = Struct_3(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(1485f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.a.x, -292f)))), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-396f)), -1145f))))), Struct_1(~(~vec4<u32>(arg_2.a.x, var_0.x, u_input.b.x, 0u) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, var_0.x, 0u), global1.b.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global1.d.b, global1.b.b, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-arg_2.b))), global1.c, arg_2, ~min(~(28277u | global1.b.a.x), ~_wgslsmith_dot_vec2_u32(var_0.yx, vec2<u32>(u_input.d.x, 4294967295u))));
    var var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + -1367f));
    return 0u;
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec4<u32>(3260u, ~_wgslsmith_sub_u32(func_3(u_input.a.x, global1.a.x, global1.b), ~global1.b.a.x), func_3(global1.c.a, -685f, global1.b), global1.e), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(260f, 1000f) * 1478f), _wgslsmith_div_f32(global1.b.b.x, 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -167f)));
    var var_1 = all(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, true)), true), vec2<bool>(true, firstTrailingBit(1i) >= 2147483647i)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global1.d.b.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(exp2(global1.a)))), global1.d, Struct_2(_wgslsmith_dot_vec3_i32(~(~u_input.a.zyx), vec3<i32>(_wgslsmith_div_i32(-1i, 1677i), u_input.e & u_input.c.x, -16994i >> (0u % 32u))), reverseBits(0i)), global1.d, ~var_0.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.a)));
    var var_4 = ~(~_wgslsmith_sub_u32(firstLeadingBit(~4294967295u), 1u));
    return ~_wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c.b, u_input.e, u_input.c.x), vec3<i32>(var_2.c.a, -63097i, var_2.c.b)), select(u_input.a.yxz, u_input.c.zzw, true)) > (firstTrailingBit(global1.c.b) & var_2.c.a);
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = select(vec4<bool>(false, any(vec4<bool>(true, true, u_input.d.x >= global1.b.a.x, all(vec2<bool>(false, true)))), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), func_2() && any(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, func_2(), all(vec3<bool>(false, true, true))), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(all(vec3<bool>(true, true, false)), true, all(vec4<bool>(true, true, false, false)), true)), true), true);
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.b.xyx * _wgslsmith_f_op_vec3_f32(ceil(global1.b.b.xxw))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, 640f, -526f)), global1.d.b.xyy, var_0.wxz))) * vec3<f32>(_wgslsmith_f_op_f32(min(global1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1338f))), global1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-134f))))), global1.b, Struct_2(~_wgslsmith_add_i32(arg_1.b, 29200i) & arg_1.b, 31830i), global1.d, ~(~4294967295u & u_input.b.x));
    var var_1 = -2143f;
    var var_2 = global1.b.b.x;
    global1 = Struct_3(global1.d.b.xww, Struct_1(max(u_input.d, ~(~u_input.d)), global1.d.b), arg_1, Struct_1(vec4<u32>(~(~global1.e), 64625u, 1u << (u_input.b.x % 32u), _wgslsmith_mult_u32(~u_input.d.x, global1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, _wgslsmith_f_op_f32(-global1.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -540f), -1061f))), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(arg_1.a, global1.d.b.x, global1.b), 4294967295u, max(0u, 0u)), vec3<u32>(global1.d.a.x, u_input.d.x, global1.d.a.x)), any(var_0) & !var_0.x));
    return ~(-2147483647i);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = Struct_3(arg_3.b.xxw, Struct_1(vec4<u32>(43893u, (0u >> (global1.e % 32u)) & global1.b.a.x, ~arg_3.a.x, _wgslsmith_mod_u32(~6035u, global1.b.a.x)), vec4<f32>(arg_3.b.x, arg_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d.b.x, 466f)) - _wgslsmith_div_f32(arg_2, arg_3.b.x)), global1.a.x)), global1.c, global1.b, abs(112098u));
    var var_0 = func_2();
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b.ywz), _wgslsmith_f_op_vec3_f32(-arg_3.b.yxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.x, 300f, 1133f)) + _wgslsmith_div_vec3_f32(arg_3.b.wxy, arg_3.b.zxy)), true)))), Struct_1(_wgslsmith_sub_vec4_u32(arg_3.a, _wgslsmith_add_vec4_u32(vec4<u32>(global1.d.a.x, 4294967295u, 13932u, 34786u), u_input.d)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(664f, arg_2, arg_2, -1676f) * arg_3.b)))), global1.c, Struct_1(select(vec4<u32>(1u, _wgslsmith_add_u32(9575u, 7853u), global1.b.a.x, ~u_input.d.x), ~(u_input.d << (arg_3.a % vec4<u32>(32u))), vec4<bool>(true, any(vec3<bool>(false, true, true)), false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_3.b.x), arg_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -670f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1118f * global1.a.x), _wgslsmith_f_op_f32(-global1.b.b.x), _wgslsmith_f_op_f32(min(415f, arg_2))))), firstLeadingBit(~(~global1.e) & 1u));
    let var_1 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))));
    let var_2 = ~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), global1.d.a.zww) >> (global1.d.a.yzx % vec3<u32>(32u))) & arg_3.a.wxz);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-4436i, global1.c.a, 2147483647i, global1.c.b)) ^ ~u_input.a), min(_wgslsmith_div_i32(0i, func_1(global1.c.a, global1.c)), 2147483647i) ^ (i32(-1i) * -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.b.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d.b.x + global1.d.b.x), global1.d.b.x, true)))), global1.b);
    let var_1 = global1.d;
    global1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1231f + 353f), _wgslsmith_f_op_f32(select(var_1.b.x, 532f, false)), -760f)) * vec3<f32>(global1.d.b.x, _wgslsmith_div_f32(var_1.b.x, -451f), global1.a.x)), Struct_1(_wgslsmith_div_vec4_u32(select(var_0.a, var_0.a, vec4<bool>(true, true, false, false)) ^ var_1.a, vec4<u32>(u_input.d.x, var_0.a.x, var_0.a.x, ~var_0.a.x)), func_4(~(u_input.a ^ u_input.a), (i32(-1i) * -2147483647i) >> (u_input.d.x % 32u), -383f, func_4(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), global1.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1460f), global1.b)).b), global1.c, func_4(u_input.c, -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), func_4(u_input.c, _wgslsmith_sub_i32(firstLeadingBit(14784i), -global1.c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 800f) - -510f), func_4(vec4<i32>(u_input.a.x, -43033i, -2142i, global1.c.b), ~global1.c.b, global1.d.b.x, var_0))), 4294967295u);
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-1f), 839f, _wgslsmith_f_op_f32(min(3850f, -426f))), func_4(_wgslsmith_add_vec4_i32(select(vec4<i32>(global1.c.a, global1.c.a, 25342i, 2147483647i), u_input.c, true) ^ u_input.c, u_input.c), firstLeadingBit(u_input.e | global1.c.b) << (15754u % 32u), -865f, global1.b), Struct_2(_wgslsmith_dot_vec2_i32(u_input.a.yz, max(firstTrailingBit(vec2<i32>(global1.c.a, 24574i)), u_input.a.xz >> (vec2<u32>(50183u, 0u) % vec2<u32>(32u)))), u_input.c.x), var_0, u_input.d.x);
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.b.b.xwx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.xxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, 1094f, 1620f) * var_0.b.wyz)))), Struct_1(abs(var_2.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_1.b - var_1.b))))), Struct_2(max(-22778i, ~(~0i)), _wgslsmith_add_i32(-17697i, -13618i)), var_0, ~(~4294967295u));
    let var_4 = Struct_4(var_1.b.xwy, !(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))), var_3);
    global0 = var_4.b.x;
    var var_5 = -24528i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xzx, var_4.c.d.a.x);
}

