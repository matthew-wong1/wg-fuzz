struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-408f, -1665f, -1607f), Struct_1(vec2<bool>(false, true), vec4<f32>(-245f, 1022f, 289f, 112f), false, 1u, true), vec2<u32>(1u, 1678u), Struct_1(vec2<bool>(false, true), vec4<f32>(-1467f, 125f, 1000f, -843f), true, 1u, false), Struct_1(vec2<bool>(false, true), vec4<f32>(1005f, -426f, -1681f, -550f), true, 59330u, true));

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<u32, 14>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(select(vec2<bool>(select(global0.b.a.x, all(vec3<bool>(true, false, global3.e)), all(vec4<bool>(true, true, true, true))), true), global3.a, select(vec2<bool>(!global0.d.a.x, all(vec2<bool>(global3.a.x, true))), global3.a, vec2<bool>(true, global0.d.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1384f)), global3.b.x, _wgslsmith_f_op_f32(931f + global0.a.x), -570f))), global3.c && !global3.c, 13676u, true);
    global3 = Struct_1(!(!select(select(vec2<bool>(global3.e, true), var_0.a, var_0.e), global3.a, true == var_0.e)), _wgslsmith_f_op_vec4_f32(-global3.b), true && ((4294967295u >= global0.d.d) || !global0.e.a.x), ~u_input.b, !global3.e);
    global0 = global1[_wgslsmith_index_u32(0u, 5u)];
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x * 206f) + _wgslsmith_div_f32(var_0.b.x, -509f)))), 1437f);
    let var_2 = vec3<bool>(all(!select(vec4<bool>(false, global0.e.e, global3.a.x, false), vec4<bool>(true, false, var_0.e, true), false)) | true, -u_input.d.x > (~2147483647i ^ max(arg_0, ~arg_0)), true);
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.b.x * -1629f));
    let var_1 = Struct_2(vec3<f32>(global0.b.b.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-876f - global3.b.x) * -697f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(972f)))))), Struct_1(global0.d.a, _wgslsmith_f_op_vec4_f32(-global3.b), !global0.b.a.x, 4294967295u, !(!global3.e)), u_input.c.wz, Struct_1(select(select(global3.a, global0.d.a, vec2<bool>(true, false)), global3.a, func_3(~2147483647i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global3.b), global0.d.b, !arg_0)), all(vec3<bool>(false, true, false)) != arg_2, _wgslsmith_mod_u32(~(global0.d.d ^ 3422u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21907u, global3.d, global2[_wgslsmith_index_u32(1u, 14u)]), vec3<u32>(0u, 4294967295u, 1u)), 57405u)), global0.d.a.x), global0.e);
    global1 = array<Struct_2, 5>();
    let var_2 = true;
    var_0 = _wgslsmith_f_op_f32(global3.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.b.x, arg_1), _wgslsmith_f_op_f32(round(-1163f))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3.b.x, -1171f, global3.a.x)), _wgslsmith_div_f32(var_1.a.x, var_1.b.b.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(132f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.b.e;
    var var_1 = firstLeadingBit(max(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.d.x) & u_input.d.wyx, _wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.a), vec3<i32>(-2147483647i, -2147483647i, -2147483647i))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(3506i, u_input.a), reverseBits(-2147483647i), 42779i), vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.a), u_input.a, -58875i ^ u_input.a))));
    global2 = array<u32, 14>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(false, global0.d.b.x, global0.c.x >= ~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)))));
    let var_3 = global0.e;
    return Struct_1(select(select(vec2<bool>(true, true), !vec2<bool>(var_3.e, true), false), vec2<bool>(true, global3.b.x >= _wgslsmith_f_op_f32(-var_3.b.x)), select(vec2<bool>(select(global3.a.x, var_3.e, var_3.a.x), global3.e), vec2<bool>(1947i >= var_1.x, global3.c), vec2<bool>(var_3.a.x, true))), global0.b.b, true, _wgslsmith_clamp_u32(min(max(countOneBits(4294967295u), u_input.e), _wgslsmith_sub_u32(global0.b.d, ~global0.e.d)), global3.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(42427u, global3.d) ^ vec2<u32>(35161u, 1u), max(u_input.c.xw, vec2<u32>(global3.d, 44904u))), u_input.c.wy)), func_3(-84325i));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<f32> {
    let var_0 = _wgslsmith_div_f32(1288f, global0.a.x);
    var var_1 = vec3<i32>(u_input.a, ~_wgslsmith_add_i32(~u_input.d.x, 0i), -3636i) ^ -vec3<i32>(u_input.a, 1i | select(u_input.d.x, 1420i, true), u_input.d.x);
    var var_2 = global1[_wgslsmith_index_u32(1u, 5u)];
    var var_3 = u_input.d.yzy;
    let var_4 = -var_1.x;
    return global3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 122348u;
    var var_1 = ~u_input.d.xwx;
    var var_2 = Struct_1(vec2<bool>(global3.c, all(vec4<bool>(false, true, true, true)) || (global0.d.a.x | true)), _wgslsmith_f_op_vec4_f32(func_4(func_1(), ~vec3<u32>(~71131u, 1u, 94393u << (u_input.b % 32u)))), true, max(global0.b.d, ~4294967295u), select(global0.b.e, true, global0.d.e));
    let var_3 = u_input.c.wz;
    var var_4 = u_input.c;
    var_2 = func_1();
    let var_5 = countOneBits(select(~var_4.wzy, var_4.xyw, !var_2.e && true) & select(~(~var_4.zzx), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(20392u, u_input.e, 1u), var_4.xwx, u_input.c.wxw), true));
    var var_6 = vec4<bool>(all(!select(select(vec3<bool>(false, global3.c, false), vec3<bool>(global3.a.x, global0.e.a.x, global0.b.e), global3.a.x), vec3<bool>(true, true, global3.a.x), !vec3<bool>(true, global0.b.e, var_2.e))), global0.e.a.x, global3.a.x, false);
    var var_7 = -3028i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, global0.d.b.x, false)) - _wgslsmith_f_op_f32(trunc(global3.b.x))), -364f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_2.b.x)))), true)));
}

