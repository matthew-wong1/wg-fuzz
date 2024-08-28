struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: bool;

var<private> global2: vec4<f32>;

var<private> global3: bool = false;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(global2.wzy, global2.yzw, vec3<bool>(all(!(!vec3<bool>(false, true, arg_2.b.x))), (i32(-1i) * -4369i) != arg_2.c.x, arg_2.b.x)));
    let var_1 = select(select(!vec4<bool>(any(vec4<bool>(arg_2.b.x, global0.x, arg_1, true)), true, true, all(vec4<bool>(arg_1, false, false, global0.x))), vec4<bool>(any(select(vec3<bool>(arg_1, global0.x, arg_1), vec3<bool>(false, false, global0.x), true)), true, true, global0.x), vec4<bool>(true, true, any(vec2<bool>(arg_1, global0.x)), arg_1)), vec4<bool>(!(!select(true, global0.x, true)), global0.x || !(arg_2.b.x && global0.x), false, !any(global0.yz)), !(!vec4<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, false)), arg_2.b.x, true, arg_1 | false)));
    global1 = all(select(select(var_1.zx, global0.yz, select(all(vec4<bool>(arg_1, false, global0.x, false)), global0.x, var_0.x == -102f)), select(!vec2<bool>(arg_1, var_1.x), !select(vec2<bool>(global0.x, var_1.x), var_1.xy, arg_2.b.x), arg_2.b), vec2<bool>(!(u_input.a.x != arg_2.c.x), u_input.a.x < (i32(-1i) * -11001i))));
    var var_2 = vec2<f32>(503f, _wgslsmith_f_op_f32(round(-343f)));
    return u_input.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(_wgslsmith_mod_u32(func_3(-906f, global0.x, Struct_1(u_input.b.x, vec2<bool>(false, global0.x), vec4<i32>(-4816i, -4048i, 66764i, -22841i))), _wgslsmith_div_u32(1u, u_input.b.x)) | u_input.b.x), !select(global0.zx, global0.yz, false), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x));
    let var_1 = Struct_1(_wgslsmith_sub_u32(var_0.a, firstTrailingBit(~(~0u))), select(vec2<bool>(true, true), !select(global0.yx, global0.xz, !var_0.b), true), -vec4<i32>(1i, var_0.c.x, firstLeadingBit(firstTrailingBit(-9215i)), -1i));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2597f, global2.x, global2.x, 911f), vec4<f32>(global2.x, 1571f, global2.x, 1801f), vec4<bool>(false, var_0.b.x, false, var_0.b.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 742f, global2.x) * vec4<f32>(-571f, -1166f, global2.x, 666f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1374f, -171f, 156f, -287f))))));
    global0 = vec3<bool>(false, true, select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, -1130f, global0.x))) == -1420f, any(vec4<bool>(true, false, true, var_1.b.x == var_1.b.x)), (_wgslsmith_sub_u32(var_0.a, u_input.b.x) ^ u_input.b.x) >= var_0.a));
    return Struct_1(_wgslsmith_mod_u32(var_1.a, min(~4294967295u, u_input.b.x)), select(!(!select(global0.yx, vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_1.b.x, var_0.b.x))), vec2<bool>(!select(true, true, global0.x), (var_1.b.x || false) & true), _wgslsmith_f_op_f32(round(556f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + global2.x)))), -var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(0u, arg_0.b, ~arg_0.c);
    return func_2().b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = -7698i;
    global1 = true;
    var var_1 = Struct_1(u_input.b.x, func_4(func_2(), _wgslsmith_dot_vec4_i32(-firstTrailingBit(vec4<i32>(arg_0.x, arg_0.x, 2147483647i, u_input.a.x)), vec4<i32>(arg_0.x, _wgslsmith_mod_i32(arg_0.x, u_input.a.x), -1i, 60511i)), -999f), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(85i, arg_0.x, -12876i) ^ vec3<i32>(u_input.a.x, 0i, 0i), u_input.a) << (u_input.b.x % 32u), u_input.a.x, abs(select(12087i, ~arg_0.x, true)), 0i));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global3 = any(arg_3.b);
    global0 = vec3<bool>(arg_0.b.x, func_4(arg_2, -55439i, 627f).x, arg_3.a > arg_0.a);
    global0 = select(select(!vec3<bool>(true, !arg_3.b.x, all(vec3<bool>(true, false, arg_3.b.x))), select(select(!vec3<bool>(arg_0.b.x, false, arg_0.b.x), !vec3<bool>(false, false, global0.x), any(global0.yz)), select(vec3<bool>(false, arg_3.b.x, false), vec3<bool>(arg_3.b.x, global0.x, arg_3.b.x), !vec3<bool>(false, arg_1.b.x, false)), select(!vec3<bool>(arg_3.b.x, true, global0.x), select(vec3<bool>(true, arg_0.b.x, true), vec3<bool>(false, true, global0.x), vec3<bool>(false, true, true)), arg_3.b.x)), !select(!vec3<bool>(arg_1.b.x, arg_0.b.x, false), vec3<bool>(arg_0.b.x, false, arg_1.b.x), all(vec4<bool>(false, arg_0.b.x, true, arg_3.b.x)))), !(!vec3<bool>(func_4(arg_3, arg_1.c.x, global2.x).x, arg_2.b.x, true)), vec3<bool>(!any(!arg_0.b), global0.x, !func_1(arg_1.c.yx).b.x));
    var var_0 = arg_2.c.wyy;
    let var_1 = arg_1;
    return any(select(!select(select(vec3<bool>(arg_3.b.x, true, var_1.b.x), vec3<bool>(arg_0.b.x, arg_2.b.x, true), vec3<bool>(true, arg_2.b.x, arg_1.b.x)), vec3<bool>(true, arg_1.b.x, global0.x), true || global0.x), vec3<bool>(all(!vec4<bool>(arg_3.b.x, true, false, var_1.b.x)), !all(arg_3.b), arg_2.b.x), var_1.b.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = ~vec4<u32>(12715u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 104401u, var_0, 36581u), vec4<u32>(var_0, u_input.b.x, u_input.b.x, var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 30558u, u_input.b.x, 5312u), vec4<u32>(var_0, 36851u, var_0, u_input.b.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, var_0)), 4294967295u)), ~var_0 >> (~var_0 % 32u), func_3(global2.x, true, func_1(vec2<i32>(u_input.a.x, 11542i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, global2.x, global2.x, 164f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1179f, 782f, -262f, -1352f) + vec4<f32>(global2.x, global2.x, global2.x, 991f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -627f, global2.x, global2.x)))))));
    let var_3 = vec4<i32>(arg_1.x, abs(_wgslsmith_sub_i32(min(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), max(2147483647i, _wgslsmith_add_i32(-1i, arg_1.x)))), 1i, u_input.a.x);
    return Struct_1(countOneBits(func_2().a), !select(!func_1(var_3.yw).b, func_2().b, true), ~(~var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)));
    global1 = global0.x & false;
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0, global2.x, 235f))))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1216f, var_0, 779f, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 947f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-321f, global2.x, -126f, -776f) + vec4<f32>(var_0, 813f, global2.x, var_0)))))));
    var var_1 = ~_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, 29740i)) << (select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(1u, 0u), vec2<bool>(false, global0.x)) % vec2<u32>(32u))) ^ countOneBits(u_input.a.x & _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(2147483647i, 0i, u_input.a.x)));
    var var_2 = func_6(vec4<bool>(false, all(global0.xy), func_5(func_1(~vec2<i32>(1i, u_input.a.x)), Struct_1(1u, !vec2<bool>(global0.x, global0.x), ~vec4<i32>(u_input.a.x, -38638i, 77811i, -66292i)), func_1(vec2<i32>(u_input.a.x, 0i)), Struct_1(u_input.b.x, !vec2<bool>(global0.x, global0.x), -vec4<i32>(-2147483647i, -52351i, -1i, -54221i))), global0.x), u_input.a.yx);
    var var_3 = Struct_1(_wgslsmith_mult_u32(var_2.a, u_input.b.x), func_1(vec2<i32>(_wgslsmith_mult_i32(1i, ~var_2.c.x), _wgslsmith_mod_i32(firstLeadingBit(1i), -u_input.a.x))).b, -_wgslsmith_mult_vec4_i32(var_2.c, -(~vec4<i32>(0i, -2147483647i, u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(func_2().a, reverseBits(45859u), u_input.b.x, _wgslsmith_mod_u32(~func_2().a, var_2.a)), 42933u, ~(-((var_3.c.ww << (vec2<u32>(var_3.a, var_2.a) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, var_2.a), u_input.b) % vec2<u32>(32u)))), ~firstLeadingBit(vec3<u32>(1u, var_3.a | 80484u, _wgslsmith_sub_u32(u_input.b.x, 13748u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))));
}

