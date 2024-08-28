struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_3,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-2331f);

var<private> global1: array<u32, 1>;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a), ~u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 67093i, 2147483647i, 38868i), vec4<i32>(arg_0.x, 0i, -2147483647i, arg_0.x))), vec4<i32>(arg_0.x, max(u_input.a, -2147483647i), ~33531i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a, arg_0.x, arg_0.x), vec4<i32>(-25190i, arg_0.x, u_input.a, -40454i)))), _wgslsmith_dot_vec4_i32(reverseBits(select(vec4<i32>(u_input.a, -1i, -1i, u_input.a), vec4<i32>(-2147483647i, -1i, arg_0.x, u_input.a), vec4<bool>(global2.b.x, false, global2.b.x, false))), vec4<i32>(u_input.a, 1i, -27414i, arg_0.x) & ~vec4<i32>(arg_0.x, u_input.a, u_input.a, arg_0.x))), ~max(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 4294967295u), 23749u >> (global1[_wgslsmith_index_u32(23410u, 1u)] % 32u), global2.c.b.x >> (u_input.b % 32u), global2.d.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u, global2.d.x), vec4<u32>(u_input.b, 8491u, global1[_wgslsmith_index_u32(5843u, 1u)], 10688u))), global2.b);
    var var_1 = Struct_4(Struct_2(-513f), select(vec3<bool>(true, var_0.c.x, !select(var_0.c.x, global2.b.x, false)), global2.b, var_0.c), global2.c, _wgslsmith_sub_vec2_u32(firstLeadingBit(reverseBits(var_0.b.zy)), vec2<u32>(~u_input.b, global1[_wgslsmith_index_u32(~var_0.b.x, 1u)])), abs(_wgslsmith_mult_i32(arg_0.x, i32(-1i) * -42167i)) != 1i);
    var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.a)))), select(!global2.b, select(select(vec3<bool>(true, false, true), !var_0.c, any(vec3<bool>(false, false, true))), vec3<bool>(!var_1.e, var_1.b.x & var_1.b.x, all(vec3<bool>(var_0.c.x, true, true))), global2.e && (global2.e | false)), !select(!var_1.b, vec3<bool>(false, true, true), var_1.b)), var_1.c, _wgslsmith_clamp_vec2_u32(firstLeadingBit(~var_0.b.xx) << (vec2<u32>(~4294967295u, global2.d.x) % vec2<u32>(32u)), vec2<u32>(~_wgslsmith_div_u32(global2.d.x, 98854u), _wgslsmith_dot_vec4_u32(vec4<u32>(28790u, 65013u, 1u, var_1.d.x), global2.c.b) & global2.d.x), min(vec2<u32>(~var_1.d.x, global1[_wgslsmith_index_u32(countOneBits(43232u), 1u)]), abs(var_1.d))), var_1.b.x);
    var var_2 = Struct_3(global2.c.a, vec4<u32>(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 1u)], var_1.c.b.x, var_0.b.x | global2.d.x), 8589u, ~1u, select(14909u, _wgslsmith_clamp_u32(var_1.c.b.x, 9339u, var_0.b.x), !global2.b.x) ^ 1u));
    let var_3 = arg_0;
    return select(1u, 4294967295u, true);
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    global1 = array<u32, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, global2.c.a.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.a.a)))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-359f - global2.c.a.a))));
    global2 = Struct_4(Struct_2(-241f), select(vec3<bool>(select(any(global2.b), true, !global2.b.x), all(select(vec4<bool>(true, true, true, arg_2), vec4<bool>(false, arg_1.b.x, arg_1.b.x, false), global2.e)), 2147483647i <= (u_input.a | u_input.a)), select(vec3<bool>(global2.b.x, true, false && arg_2), select(global2.b, vec3<bool>(false, true, false), true), arg_1.e && global2.e), arg_2), arg_1.c, arg_1.d, arg_2);
    global2 = Struct_4(arg_1.a, !vec3<bool>(false == arg_2, any(vec2<bool>(true, arg_1.e)), true), Struct_3(global2.a, abs(vec4<u32>(u_input.b | u_input.b, 33105u, ~4294967295u, global1[_wgslsmith_index_u32(25538u, 1u)]))), vec2<u32>(4294967295u, func_3(vec3<i32>(-u_input.a, 1i, ~(-10311i)))), true);
    let var_1 = _wgslsmith_f_op_f32(arg_1.a.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-423f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -678f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.a)))));
    return arg_1;
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    global2 = func_2(_wgslsmith_mult_u32(~(~abs(80273u)), global1[_wgslsmith_index_u32(reverseBits(10002u), 1u)]), arg_0, all(!vec4<bool>(true, arg_3.c.x && global2.e, !arg_0.b.x, true)));
    let var_0 = global2.a.a;
    var var_1 = !global2.b.x;
    var var_2 = arg_3;
    let var_3 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-arg_2, _wgslsmith_mult_i32(arg_2, arg_3.a.x), arg_3.a.x, _wgslsmith_mod_i32(2480i, u_input.a)) | (vec4<i32>(72184i, u_input.a, var_2.a.x, u_input.a) >> (vec4<u32>(u_input.b, 1u, 49051u, 45776u) % vec4<u32>(32u))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_2, var_2.a.x, u_input.a), vec4<i32>(9986i, -23159i, -1i, 21546i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.x, u_input.a, 2147483647i, 1i), vec4<i32>(var_2.a.x, arg_2, 13405i, -16778i)) & _wgslsmith_clamp_vec4_i32(-vec4<i32>(-31446i, u_input.a, 46135i, -1i), ~vec4<i32>(-32068i, var_2.a.x, arg_3.a.x, -20375i), ~vec4<i32>(2147483647i, var_2.a.x, u_input.a, 17116i))), min(~firstLeadingBit(vec4<i32>(arg_2, 2147483647i, arg_3.a.x, arg_3.a.x)), -min(~vec4<i32>(0i, arg_2, -1i, u_input.a), vec4<i32>(arg_3.a.x, arg_3.a.x, 2147483647i, arg_3.a.x))), global2.b.x | (arg_3.a.x >= ~max(-2147483647i, -2147483647i)));
    return select(!vec2<bool>(!select(true, false, false), _wgslsmith_sub_i32(arg_2, var_3.x) == max(46728i, var_3.x)), var_2.c.xz, vec2<bool>(true, false));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_mult_u32(u_input.b, global1[_wgslsmith_index_u32(1u, 1u)]), func_2(u_input.b, func_2(~(4294967295u >> (global1[_wgslsmith_index_u32(global2.c.b.x, 1u)] % 32u)), func_2(_wgslsmith_mod_u32(global2.c.b.x, global1[_wgslsmith_index_u32(global2.c.b.x, 1u)]), Struct_4(Struct_2(global2.c.a.a), arg_0.c, global2.c, global2.c.b.zw, arg_1.x), arg_3.x), true), arg_1.x), true).c;
    global1 = array<u32, 1>();
    let var_1 = select(vec3<bool>(global2.e, !arg_1.x, true), !(!select(global2.b, vec3<bool>(false, arg_1.x, arg_0.c.x), !arg_0.c)), func_2(reverseBits(arg_0.b.x), func_2(0u, func_2(global2.d.x, Struct_4(Struct_2(-828f), vec3<bool>(global2.e, arg_0.c.x, arg_1.x), Struct_3(Struct_2(-751f), vec4<u32>(var_0.b.x, u_input.b, 4294967295u, global2.c.b.x)), vec2<u32>(global2.d.x, arg_0.b.x), arg_3.x), global2.b.x), all(arg_0.c)), all(func_2(0u, Struct_4(Struct_2(668f), vec3<bool>(true, arg_2, arg_0.c.x), global2.c, vec2<u32>(var_0.b.x, 37705u), false), !arg_3.x).b)).b);
    global1 = array<u32, 1>();
    let var_2 = Struct_3(Struct_2(716f), firstLeadingBit(~(~(~arg_0.b))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(vec2<i32>(-32296i, _wgslsmith_add_i32(u_input.a | u_input.a, u_input.a)), ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 1u)], u_input.b, 0u, 4294967295u), vec4<u32>(0u, u_input.b, 18609u, 1u)), global2.c.b, false & global2.e), global2.b), global2.b.yz, select(!global2.b.x, true || (global2.b.x || any(global2.b)), all(!func_1(Struct_4(global2.a, global2.b, Struct_3(global2.a, global2.c.b), vec2<u32>(4294967295u, u_input.b), global2.e), global2.c.a.a, -28827i, Struct_1(vec2<i32>(u_input.a, -5806i), vec4<u32>(global1[_wgslsmith_index_u32(0u, 1u)], global2.c.b.x, 0u, 58953u), vec3<bool>(global2.e, true, true))))), vec3<bool>(global2.b.x, !(!global2.b.x), global2.b.x));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.a.a * global2.c.a.a) * -790f))));
    let var_1 = global2.d.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f * global2.a.a) + _wgslsmith_f_op_f32(abs(var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-557f)) * -1132f)), global2.c.a.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(371f - 238f), var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.a, global0.a)), _wgslsmith_f_op_f32(-global0.a))), var_0.a, _wgslsmith_f_op_f32(-804f - -1264f))));
    let var_4 = func_2(global1[_wgslsmith_index_u32(u_input.b, 1u)], Struct_4(func_4(Struct_1(vec2<i32>(u_input.a, u_input.a), global2.c.b, global2.b), vec2<bool>(true, any(vec4<bool>(global2.e, global2.b.x, global2.e, true))), !func_1(Struct_4(Struct_2(global2.a.a), global2.b, Struct_3(global2.a, global2.c.b), vec2<u32>(u_input.b, global2.d.x), global2.e), global2.c.a.a, -26921i, Struct_1(vec2<i32>(u_input.a, -33705i), global2.c.b, vec3<bool>(false, global2.b.x, true))).x, select(!global2.b, select(vec3<bool>(true, global2.b.x, false), global2.b, vec3<bool>(false, true, global2.b.x)), select(global2.b, global2.b, global2.b))), global2.b, func_2(4294967295u, Struct_4(func_4(Struct_1(vec2<i32>(u_input.a, u_input.a), global2.c.b, vec3<bool>(false, true, global2.b.x)), global2.b.xz, global2.e, global2.b), !vec3<bool>(false, global2.e, false), Struct_3(Struct_2(-246f), global2.c.b), global2.d, u_input.a == u_input.a), func_1(func_2(global2.c.b.x, Struct_4(Struct_2(325f), global2.b, global2.c, global2.c.b.wz, global2.b.x), global2.e), _wgslsmith_div_f32(2276f, var_3.x), _wgslsmith_mult_i32(-1i, 2147483647i), Struct_1(vec2<i32>(-8707i, 40644i), global2.c.b, global2.b)).x).c, ~(~(~vec2<u32>(38929u, u_input.b))), global2.b.x), select(false, any(!vec2<bool>(global2.e, true)), select(false, !global2.b.x, global2.e)));
    let var_5 = select(var_4.b, vec3<bool>(func_1(var_4, _wgslsmith_f_op_f32(var_3.x - 641f), 1i, Struct_1(vec2<i32>(-1i, 2147483647i), var_4.c.b, vec3<bool>(false, true, false))).x, false, (var_3.x <= _wgslsmith_f_op_f32(global2.c.a.a + var_0.a)) & all(!vec4<bool>(var_4.e, var_4.b.x, var_4.e, var_4.e))), var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-26496i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-3833i, -30063i))), vec3<i32>(_wgslsmith_mod_i32(1i, u_input.a), -2147483647i << (global2.c.b.x % 32u), countOneBits(-26257i))), vec3<i32>(countOneBits(u_input.a) & _wgslsmith_mod_i32(u_input.a, -58811i), -17147i, (6548i >> (u_input.b % 32u)) >> ((24489u | u_input.b) % 32u))), 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.zww) - var_3.yyy));
}

