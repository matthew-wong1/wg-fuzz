struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec2<f32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_4,
    d: vec2<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-992f, Struct_2(Struct_1(7567u, vec3<i32>(3177i, 1i, 35526i), vec2<i32>(32937i, -1i)), Struct_1(1u, vec3<i32>(2147483647i, 10347i, 1i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(48829u, vec3<i32>(22735i, 2147483647i, 38154i), vec2<i32>(0i, -3514i)), 102f), false, vec2<f32>(-368f, -802f));

var<private> global1: Struct_4 = Struct_4(1870f, Struct_2(Struct_1(1u, vec3<i32>(53236i, -30089i, -31106i), vec2<i32>(-1i, -1i)), Struct_1(1u, vec3<i32>(-11504i, 0i, 0i), vec2<i32>(0i, -1i)), Struct_1(3008u, vec3<i32>(-25062i, -14633i, 3909i), vec2<i32>(37720i, -48080i)), -217f), false, vec2<f32>(1438f, 2537f));

var<private> global2: bool;

var<private> global3: array<bool, 27>;

var<private> global4: Struct_3 = Struct_3(Struct_1(22402u, vec3<i32>(-10667i, 12978i, -6222i), vec2<i32>(-43188i, i32(-2147483648))), -1i, Struct_2(Struct_1(4294967295u, vec3<i32>(2147483647i, -3554i, -24547i), vec2<i32>(1i, 1i)), Struct_1(12690u, vec3<i32>(2147483647i, 6868i, -37038i), vec2<i32>(61013i, 0i)), Struct_1(0u, vec3<i32>(-755i, 0i, i32(-2147483648)), vec2<i32>(-1i, 1i)), -2528f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_4) -> i32 {
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(global4.c.c.b.x << (_wgslsmith_clamp_u32(global4.a.a, 56836u, u_input.b) % 32u), 53501i, global0.b.b.b.x, 1i), firstLeadingBit(vec4<i32>(arg_0.b.x, ~(-78924i), 18713i, global4.b)));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> bool {
    var var_0 = -1037f;
    var var_1 = Struct_1(_wgslsmith_sub_u32(global0.b.c.a ^ 6906u, _wgslsmith_div_u32(329u, ~global1.b.b.a | ~17175u)), global4.c.b.b, -vec2<i32>(func_3(global0.b.c, vec2<bool>(global3[_wgslsmith_index_u32(global0.b.a.a, 27u)], false), Struct_4(arg_1.x, global0.b, true, vec2<f32>(-336f, -1000f))), 2147483647i));
    var var_2 = select(vec3<bool>(!global1.c, -2062f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global0.b.d), true)), true), vec3<bool>(all(select(!vec3<bool>(global3[_wgslsmith_index_u32(global4.a.a, 27u)], global1.c, global0.c), vec3<bool>(true, true, global3[_wgslsmith_index_u32(1u, 27u)]), true)), false, false), select(!select(vec3<bool>(global3[_wgslsmith_index_u32(42479u, 27u)], true, global0.c), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 27u)], global0.c, global0.c), vec3<bool>(global0.c, false, global3[_wgslsmith_index_u32(var_1.a, 27u)]), vec3<bool>(true, global1.c, false)), select(false, true, global3[_wgslsmith_index_u32(global4.c.b.a, 27u)])), vec3<bool>(global1.c & any(vec2<bool>(global3[_wgslsmith_index_u32(26403u, 27u)], global1.c)), global3[_wgslsmith_index_u32(var_1.a, 27u)], false), global1.c && any(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 27u)], global1.c, false, true))));
    var_0 = -459f;
    let var_3 = select(select(select(vec4<bool>(true, global1.c, all(vec2<bool>(var_2.x, true)), global3[_wgslsmith_index_u32(~var_1.a, 27u)]), !vec4<bool>(true, true, global0.c, false), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(1u, 75457u), 22507u, ~37018u), 27u)]), select(select(!vec4<bool>(false, global3[_wgslsmith_index_u32(32779u, 27u)], global1.c, false), vec4<bool>(var_2.x, global1.c, true, true), false), !(!vec4<bool>(global0.c, global0.c, false, true)), !(global0.b.c.b.x > global1.b.b.c.x)), !(!select(vec4<bool>(false, false, var_2.x, global1.c), vec4<bool>(true, global0.c, var_2.x, false), false))), !select(!(!vec4<bool>(global0.c, var_2.x, true, global0.c)), vec4<bool>(global0.c, true, false && var_2.x, false), var_2.x), select(select(select(select(vec4<bool>(global0.c, global1.c, var_2.x, true), vec4<bool>(global3[_wgslsmith_index_u32(8841u, 27u)], global3[_wgslsmith_index_u32(u_input.b, 27u)], var_2.x, true), vec4<bool>(false, false, false, global0.c)), select(vec4<bool>(false, true, var_2.x, false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global1.b.c.a, 27u)], false), vec4<bool>(false, global1.c, var_2.x, true)), !vec4<bool>(global0.c, false, var_2.x, var_2.x)), vec4<bool>(var_2.x, all(vec3<bool>(true, var_2.x, global3[_wgslsmith_index_u32(var_1.a, 27u)])), !global0.c, !global3[_wgslsmith_index_u32(4294967295u, 27u)]), select(!vec4<bool>(global1.c, true, false, global3[_wgslsmith_index_u32(u_input.b, 27u)]), vec4<bool>(var_2.x, global1.c, global0.c, global0.c), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], false, var_2.x, true))), select(!vec4<bool>(global1.c, true, global3[_wgslsmith_index_u32(10062u, 27u)], false), vec4<bool>(true, global0.c, var_2.x, !global0.c), any(!vec3<bool>(global1.c, true, var_2.x))), select(vec4<bool>(false, any(vec4<bool>(true, false, false, false)), true, all(var_2.yz)), select(select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, false, false, false), vec4<bool>(global1.c, global3[_wgslsmith_index_u32(global4.a.a, 27u)], global3[_wgslsmith_index_u32(u_input.a, 27u)], false)), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], true, true, global3[_wgslsmith_index_u32(global1.b.c.a, 27u)]), var_2.x), select(select(vec4<bool>(true, global0.c, false, true), vec4<bool>(false, global0.c, true, true), vec4<bool>(true, global0.c, true, global3[_wgslsmith_index_u32(1u, 27u)])), !vec4<bool>(global3[_wgslsmith_index_u32(global4.c.b.a, 27u)], true, false, false), false))));
    return true && !global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 52281u), 27u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_5 {
    var var_0 = any(vec3<bool>(!func_2(-2147483647i, arg_0), false | select(global1.c, global0.a < 782f, global0.c), u_input.a > 53433u));
    return Struct_5(firstTrailingBit(~(~(~vec2<u32>(global0.b.c.a, u_input.a)))), global4.c, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1155f), global0.b, all(select(vec2<bool>(global1.c, false), vec2<bool>(global3[_wgslsmith_index_u32(global1.b.b.a, 27u)], true), any(vec2<bool>(global1.c, global1.c)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), abs(select(max(vec2<u32>(global4.a.a, 4294967295u), vec2<u32>(u_input.b, 0u)), ~vec2<u32>(23246u, 102365u), arg_1)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4.a.a, global0.b.a.a, global1.b.b.a, global4.c.a.a), ~vec4<u32>(global1.b.b.a, u_input.a, 1u, 0u)), 54426u) % vec2<u32>(32u)), Struct_3(global1.b.c, global0.b.c.b.x, Struct_2(Struct_1(~u_input.b, -vec3<i32>(global4.c.b.c.x, -1i, global0.b.a.b.x), vec2<i32>(0i, global1.b.c.c.x)), Struct_1(global0.b.a.a, vec3<i32>(8040i, 1i, global0.b.a.c.x), select(vec2<i32>(global4.a.c.x, global0.b.a.b.x), global0.b.b.c, vec2<bool>(true, true))), global1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.d, -536f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), -2023f, -193f), false);
    var var_1 = vec3<bool>(any(select(vec4<bool>(true, var_0.c.c, any(vec3<bool>(var_0.c.c, false, false)), var_0.c.c), !(!vec4<bool>(true, global0.c, false, global1.c)), _wgslsmith_f_op_f32(round(var_0.e.c.d)) < _wgslsmith_div_f32(var_0.c.a, global1.b.d))), false, global1.c);
    global1 = var_0.c;
    global0 = var_0.c;
    global2 = all(vec4<bool>(false, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, u_input.a, u_input.a), vec3<u32>(4294967295u, global4.c.b.a, global4.a.a)) > ~1u, any(select(select(vec4<bool>(var_1.x, false, global3[_wgslsmith_index_u32(6717u, 27u)], global1.c), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global0.c, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, global1.c)), vec4<bool>(true, false, true, var_0.c.c), vec4<bool>(true, true, var_0.c.c, false))), var_1.x != any(vec3<bool>(false, false, false))));
    global4 = Struct_3(var_0.b.c, min(-64405i, _wgslsmith_div_i32(global0.b.a.c.x, 1i)), global0.b);
    let var_2 = vec2<f32>(global1.b.d, _wgslsmith_f_op_f32(f32(-1f) * -1542f));
    var var_3 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(635f)), _wgslsmith_f_op_f32(floor(global0.b.d))))))));
    var var_4 = var_0.b.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-290f, var_0.b.d, var_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 1285f, var_2.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(-742f, -1068f, var_0.e.c.d), vec3<f32>(-248f, var_2.x, var_0.b.d))))), vec3<f32>(global1.b.d, _wgslsmith_f_op_f32(962f + -555f), _wgslsmith_div_f32(var_0.e.c.d, var_0.e.c.d))), var_0.e.a.b, -1169f, u_input.a, vec3<i32>(_wgslsmith_mult_i32(abs(global0.b.c.b.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.b.x, 2147483647i), var_4.yx), global4.c.a.c.x >> (29768u % 32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 1i, global0.b.a.c.x), _wgslsmith_sub_i32(global1.b.c.b.x, _wgslsmith_mod_i32(64184i, 25360i))), _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, abs(var_0.e.b)), -1i)));
}

