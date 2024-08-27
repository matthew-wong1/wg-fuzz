struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(firstLeadingBit(-(arg_0.a >> (_wgslsmith_sub_u32(u_input.b, u_input.b) % 32u))), arg_0.b);
    var var_1 = Struct_1(1i, var_0.b);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(865f + 966f) + _wgslsmith_f_op_f32(min(1976f, 580f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f + 1684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-308f, 848f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(682f, -456f, -1235f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, -743f, -1000f) - vec3<f32>(1623f, 298f, -504f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x, -577f))));
    return vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) <= -164f, global0.x, var_0.b.x, true);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    let var_0 = u_input.e;
    global2 = Struct_1(-1i, func_3(Struct_1(~min(3389i, 8665i), global2.b)));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f - 576f)))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-710f))));
    let var_1 = _wgslsmith_add_u32(u_input.b, _wgslsmith_sub_u32(abs(~17067u), 1u | arg_2)) ^ ~1u;
    return -_wgslsmith_mod_i32(arg_1.x, reverseBits(1i));
}

fn func_1() -> Struct_1 {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_div_i32(func_2(u_input.e.x, vec3<i32>(50493i, 2147483647i, global2.a), u_input.b), 1533i), -53309i);
    var var_1 = u_input.c.xx;
    let var_2 = Struct_1(2452i, func_3(Struct_1(~(u_input.e.x | -11948i), global2.b)));
    let var_3 = vec2<bool>(true || any(select(vec3<bool>(global2.b.x, true, global2.b.x), !var_2.b.wzw, true)), true);
    let var_4 = u_input.b;
    return Struct_1(var_1.x, !vec4<bool>(!(u_input.b < 1u), all(vec4<bool>(var_2.b.x, false, global0.x, false)), (i32(-1i) * -26449i) == global2.a, var_2.b.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = 39929u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-315f, 1000f) * -1192f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1026f, _wgslsmith_div_f32(479f, -1330f))) + _wgslsmith_f_op_f32(f32(-1f) * -1781f))))));
    var_1 = 0u << (u_input.b % 32u);
    global2 = func_1();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_mult_u32(u_input.b, u_input.b);
    let var_1 = _wgslsmith_add_vec4_u32(select(vec4<u32>(max(u_input.b, u_input.b), u_input.b, ~66535u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(36937u, 33548u, u_input.b, u_input.b))), !(!global0.x)), vec4<u32>(0u, u_input.b, ~_wgslsmith_sub_u32(101163u, u_input.b), u_input.b)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 363u ^ ~u_input.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), _wgslsmith_add_u32(0u, u_input.b)), u_input.b), ~abs(select(vec4<u32>(64215u, 2910u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 14352u, 0u), arg_1.b.x)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f * 1f) - _wgslsmith_f_op_f32(f32(-1f) * -806f)), -1374f)));
    let var_2 = func_4(!(!vec2<bool>(func_1().b.x, any(global2.b.zzz))), Struct_1(_wgslsmith_dot_vec2_i32(-(u_input.a >> (var_1.ww % vec2<u32>(32u))), vec2<i32>(func_4(arg_1.b.wz, Struct_1(1i, arg_0.b), arg_0, arg_1).a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.d, 43882i, 2147483647i), u_input.e))), !arg_1.b), arg_1, Struct_1(arg_0.a, !func_1().b)).a;
    return vec4<bool>(select(false, false, true && (global2.b.x && true)), any(vec4<bool>(global0.x, 0i >= (2147483647i >> (var_1.x % 32u)), !(true || global2.b.x), false)), any(global2.b), global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(select(!select(global0.yw, vec2<bool>(global2.b.x, false), vec2<bool>(false, global0.x)), vec2<bool>(false || global2.b.x, select(global2.b.x, global2.b.x, global0.x)), global0.x), func_1(), Struct_1(-_wgslsmith_clamp_i32(0i, u_input.c.x, global2.a), global2.b), func_1()), Struct_1(global2.a, global2.b));
    var var_1 = func_4(global2.b.yx, Struct_1(-2147483647i, func_3(func_4(!global0.zw, Struct_1(14088i, vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x)), func_1(), Struct_1(u_input.d, vec4<bool>(false, global0.x, global0.x, true))))), Struct_1(reverseBits(max(u_input.d & 2147483647i, max(u_input.d, 1i))), !(!vec4<bool>(global0.x, var_0.x, true, false))), func_1());
    let var_2 = Struct_1(firstLeadingBit(u_input.c.x), !func_4(var_0.ww, func_1(), func_4(var_1.b.xx, func_1(), Struct_1(u_input.a.x, global2.b), Struct_1(-1i, global2.b)), func_4(global0.wx, Struct_1(2147483647i, global2.b), func_4(vec2<bool>(true, true), Struct_1(31237i, vec4<bool>(true, var_0.x, true, global2.b.x)), Struct_1(global2.a, var_1.b), Struct_1(u_input.e.x, var_1.b)), Struct_1(1i, vec4<bool>(false, global2.b.x, global2.b.x, var_0.x)))).b);
    let var_3 = u_input.b;
    let var_4 = -u_input.d;
    var_0 = func_4(vec2<bool>(all(!var_2.b.yz), true), var_2, func_1(), var_2).b;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.wwy, ~(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3, var_3, 54399u, 14115u), ~vec4<u32>(76985u, var_3, var_3, var_3)) | _wgslsmith_div_vec4_u32(~vec4<u32>(var_3, 4294967295u, u_input.b, var_3), min(vec4<u32>(1u, var_3, u_input.b, 0u), vec4<u32>(var_3, 17920u, var_3, 0u)))));
}

