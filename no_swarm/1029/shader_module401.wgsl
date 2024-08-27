struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<bool, 18>;

var<private> global2: array<i32, 13> = array<i32, 13>(23833i, 4434i, -1i, -8057i, -23095i, 1i, 0i, -9293i, 0i, 17285i, 22874i, i32(-2147483648), 22086i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<f32>) -> bool {
    global1 = array<bool, 18>();
    global2 = array<i32, 13>();
    var var_0 = !vec2<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(37826i, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61721u, 13u)], 13u)], 0i, 2147483647i), vec4<i32>(u_input.b, 2147483647i, arg_2.x, arg_2.x)) < ~0i), all(!select(arg_0, vec4<bool>(global1[_wgslsmith_index_u32(48274u, 18u)], arg_1.a, false, arg_0.x), vec4<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(1u, 18u)], arg_0.x))));
    return (arg_3.x != -141f) != false;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec2_i32(u_input.c.yz, vec2<i32>(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x, u_input.a.x)), 13u)], u_input.c.x), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(15317u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]), 13u)], 13u)])) & max(_wgslsmith_div_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -1i), u_input.c.zy) << (((vec2<u32>(29892u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]) << (u_input.a.ww % vec2<u32>(32u))) << ((vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 46235u) << (u_input.a.zz % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c.zz);
    global2 = array<i32, 13>();
    var var_1 = true;
    let var_2 = Struct_1(all(!select(!vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.a), vec3<bool>(arg_0.a, true, false), !vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))));
    global2 = array<i32, 13>();
    return u_input.a.zxy;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> vec3<bool> {
    var var_0 = Struct_1(true);
    var var_1 = 1i;
    let var_2 = -26171i;
    let var_3 = Struct_1(var_2 == 1i);
    let var_4 = func_3(Struct_1(false), var_2) & ~vec3<u32>(50294u, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 13u)], 21005u), arg_2);
    return !(!select(vec3<bool>(var_3.a, all(vec2<bool>(var_0.a, var_0.a)), arg_0 > -882f), vec3<bool>(any(vec3<bool>(var_0.a, true, true)), false, var_3.a), select(vec3<bool>(true, var_3.a, var_0.a), select(vec3<bool>(var_3.a, var_3.a, var_0.a), vec3<bool>(true, global1[_wgslsmith_index_u32(47380u, 18u)], true), false), var_0.a)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = -(select(-select(u_input.c, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.x, 13u)], 13u)], 13u)], u_input.b), false), u_input.c, vec3<bool>(true, all(vec2<bool>(arg_0.x, true)), u_input.b != u_input.c.x)) | u_input.c);
    global1 = array<bool, 18>();
    let var_1 = func_2(-189f, 0u, global0[_wgslsmith_index_u32(68377u, 13u)]).x;
    var var_2 = Struct_1(var_1);
    let var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, func_3(Struct_1(!var_1), 1i).x, ~1u, firstTrailingBit(_wgslsmith_mult_u32(4391u, _wgslsmith_div_u32(49772u, u_input.a.x)))), ~vec4<u32>(44141u, _wgslsmith_add_u32(arg_3.x, arg_3.x), 1u, min(31379u, ~4352u)));
    return Struct_1(_wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-567f, 176f)))) + _wgslsmith_f_op_f32(select(2058f, _wgslsmith_f_op_f32(exp2(arg_1.x)), !var_2.a))));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = vec4<i32>(global2[_wgslsmith_index_u32(countOneBits(2705u) & ~(~abs(global0[_wgslsmith_index_u32(4294967295u, 13u)])), 13u)], 25394i, -1i, u_input.c.x);
    let var_1 = var_0.zw;
    var var_2 = select(select(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(firstLeadingBit(26253u), 13u)] >= _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), arg_0.a), select(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u >> (global0[_wgslsmith_index_u32(104293u, 13u)] % 32u), 18u)], false), vec3<bool>(false, true, arg_0.a), !(!vec3<bool>(arg_0.a, true, global1[_wgslsmith_index_u32(1u, 18u)]))), !select(vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 18u)], true), func_2(-620f, 1u, u_input.a.x), vec3<bool>(false, true, arg_0.a))), !select(vec3<bool>(all(vec4<bool>(true, arg_0.a, global1[_wgslsmith_index_u32(75416u, 18u)], true)), true, true), !(!vec3<bool>(false, arg_0.a, false)), false), vec3<bool>(true, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(global0[_wgslsmith_index_u32(35401u, 13u)], 1u, 33642u)), abs(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], u_input.a.x))) < u_input.a.x, true));
    let var_3 = Struct_1(countOneBits(global0[_wgslsmith_index_u32(~u_input.a.x >> (select(3723u, u_input.a.x, var_2.x) % 32u), 13u)]) != u_input.a.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2063f, -677f, 657f)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-513f)), _wgslsmith_f_op_f32(457f - -1200f), 1606f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-329f * -1764f), _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(sign(-1838f)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(all(vec2<bool>(true, true)), true, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43571u, 13u)], 13u)]) <= (i32(-1i) * -2147483647i)), vec3<bool>(select(func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(19748u, 18u)], true), Struct_1(global1[_wgslsmith_index_u32(31812u, 18u)]), vec2<i32>(u_input.b, u_input.b), vec2<f32>(231f, 1584f)), global1[_wgslsmith_index_u32(24310u, 18u)] & true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 13u)], 9592u), u_input.a.xxy), 13u)], 18u)]), global1[_wgslsmith_index_u32(1u, 18u)], false), false), !(!select(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], 13u)], 18u)], false), !global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), !vec3<bool>(any(vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2321u, 13u)], 13u)], 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(18658u, 18u)])), !any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), global1[_wgslsmith_index_u32(~42317u, 18u)]));
    global2 = array<i32, 13>();
    var_0 = vec3<bool>(true, func_5(func_4(func_2(_wgslsmith_f_op_f32(-1300f + 198f), ~u_input.a.x, select(87195u, u_input.a.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-385f, -2158f, -187f, -2385f), vec4<f32>(1269f, -120f, 424f, 1000f), false))), u_input.c.xx, u_input.a.wy >> (u_input.a.zy % vec2<u32>(32u)))), any(vec2<bool>(func_2(705f, u_input.a.x, 0u).x, true)));
    var var_1 = Struct_1(var_0.x);
    let var_2 = ~(~1u);
    let var_3 = var_0.xx;
    let var_4 = Struct_1(all(vec3<bool>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41856u, 13u)], 13u)] >= countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 13u)], 13u)]), !(u_input.b > global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43487u, 13u)], 13u)]), var_1.a)));
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(select(max(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 1i, global2[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i) & vec4<i32>(global2[_wgslsmith_index_u32(var_2, 13u)], 1i, 31819i, u_input.c.x), max(vec4<i32>(u_input.c.x, 27147i, global2[_wgslsmith_index_u32(0u, 13u)], -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(6058u, 13u)], -1i, 2147483647i, u_input.b))), vec4<i32>(~(-16651i), global2[_wgslsmith_index_u32(4294967295u, 13u)] ^ u_input.b, ~u_input.c.x, abs(u_input.b)), false) >> (vec4<u32>(4294967295u, 0u, 7115u, var_2 >> ((16915u >> (var_2 % 32u)) % 32u)) % vec4<u32>(32u)));
}

