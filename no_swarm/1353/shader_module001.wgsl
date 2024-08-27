struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, true, false, true, true, false, false, false, false, false, true, true);

var<private> global1: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(Struct_2(vec3<u32>(40780u, 89324u, 4294967295u), vec2<bool>(false, false))), Struct_5(Struct_2(vec3<u32>(1u, 55068u, 4294967295u), vec2<bool>(false, true))), Struct_5(Struct_2(vec3<u32>(4294967295u, 31258u, 0u), vec2<bool>(true, true))), Struct_5(Struct_2(vec3<u32>(0u, 0u, 0u), vec2<bool>(true, false))), Struct_5(Struct_2(vec3<u32>(75193u, 39352u, 4294967295u), vec2<bool>(true, true))), Struct_5(Struct_2(vec3<u32>(59018u, 20226u, 196492u), vec2<bool>(true, false))));

var<private> global2: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 2147483647i);

var<private> global3: array<vec2<i32>, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(806f + arg_0);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a, var_0, arg_0, 2601f), vec4<f32>(-318f, 1429f, -429f, 278f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(950f, arg_0, 679f, arg_0))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, 262f, 394f, arg_1.a) * vec4<f32>(arg_0, 1000f, arg_1.a, arg_0))))), any(select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c.a.x, 13u)], false), !vec2<bool>(arg_1.c.b.x, true), select(arg_1.c.b.x, false, global0[_wgslsmith_index_u32(0u, 13u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a + arg_1.a))) + -584f), _wgslsmith_f_op_f32(trunc(arg_1.a)), arg_0, var_0));
    return countOneBits(vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19175u, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, arg_1.c.a.x, 0u, u_input.a.x))) & u_input.a.x, max(~(u_input.a.x | 37178u), 1u), arg_1.c.a.x));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_3 {
    let var_0 = Struct_4(19143i, Struct_3(_wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(min(1315f, _wgslsmith_f_op_f32(f32(-1f) * -1430f)))), -1i, Struct_2((u_input.a >> (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))) << (u_input.a % vec3<u32>(32u)), vec2<bool>(-34424i < arg_1, global0[_wgslsmith_index_u32(1u, 13u)]))), countOneBits(global2.x), select(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(34144u, 3613u), 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true))), vec4<bool>(!any(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)])), !(global0[_wgslsmith_index_u32(u_input.a.x, 13u)] & global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), true | (true || global0[_wgslsmith_index_u32(4294967295u, 13u)]), false), false));
    var var_1 = func_3(_wgslsmith_f_op_f32(min(var_0.b.a, _wgslsmith_f_op_f32(min(-816f, _wgslsmith_f_op_f32(max(-417f, -2311f)))))), var_0.b);
    global2 = firstTrailingBit(~_wgslsmith_add_vec3_i32(arg_0.xyx, -arg_0.yyw));
    let var_2 = var_0.b.a;
    let var_3 = Struct_1(select(var_0.b.c.b, vec2<bool>(_wgslsmith_f_op_f32(step(1000f, 175f)) >= _wgslsmith_f_op_f32(sign(-873f)), any(var_0.d.xw)), !all(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.b.c.a.x, 13u)], false, false, var_0.d.x), var_0.d, global0[_wgslsmith_index_u32(0u, 13u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)) - var_0.b.a));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2443f, 857f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(f32(-1f) * -203f), false)))), ~_wgslsmith_div_i32(~36511i, max(~35084i, var_0.b.b)), Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, var_1.x), vec3<u32>(u_input.a.x, var_0.b.c.a.x, var_0.b.c.a.x) >> (vec3<u32>(var_0.b.c.a.x, 25509u, 16702u) % vec3<u32>(32u))), 42112u, (var_0.b.c.a.x | 4294967295u) & _wgslsmith_div_u32(var_1.x, 19435u)), select(select(var_3.a, var_3.a, vec2<bool>(true, true)), var_3.a, true)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> vec3<i32> {
    global2 = _wgslsmith_mult_vec3_i32(~(-_wgslsmith_div_vec3_i32(max(vec3<i32>(15601i, global2.x, 2147483647i), u_input.b), u_input.b)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(-2147483647i, 1i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, 1i), ~9994i, 8506i)), _wgslsmith_div_vec3_i32(-(~u_input.b), countOneBits(vec3<i32>(0i, arg_1.b, global2.x)))));
    let var_0 = Struct_2(func_3(_wgslsmith_f_op_f32(f32(-1f) * -350f), arg_0), select(vec2<bool>(arg_2, false || arg_0.c.b.x), arg_0.c.b, vec2<bool>(false, all(vec3<bool>(false, true, arg_1.c.b.x)))));
    global0 = array<bool, 13>();
    var var_1 = Struct_1(!arg_0.c.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1593f, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-902f, -1150f)) - _wgslsmith_f_op_f32(-arg_1.a)), arg_2)))));
    global0 = array<bool, 13>();
    return vec3<i32>(-4706i, arg_0.b, _wgslsmith_sub_i32(4248i, -1i));
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: vec2<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(29949i, 0i, -(~(-41134i))), -abs(-u_input.c), vec3<bool>(arg_1.a.b.x, !arg_1.a.b.x, (global2.x | 0i) < 5726i)), _wgslsmith_clamp_vec3_i32(~u_input.b, vec3<i32>(global2.x, u_input.b.x, 2147483647i), u_input.c), vec3<i32>(u_input.c.x, 40440i, min(2147483647i, -1i)));
    global2 = func_4(func_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 7405i, -65151i, var_0.x), vec4<i32>(2147483647i, var_0.x, -14230i, -28423i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -39128i, 10651i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, var_0.x, u_input.c.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.a.x, arg_2.x, arg_2.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, arg_2.x, 4294967295u), vec4<u32>(0u, 0u, 55130u, arg_1.a.a.x)) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(global2.x, -4807i, -26961i, global2.x))), _wgslsmith_mult_i32(firstTrailingBit(2147483647i), select(i32(-1i) * -1i, _wgslsmith_add_i32(-22765i, -1i), global0[_wgslsmith_index_u32(arg_1.a.a.x, 13u)] && true))), func_2(~vec4<i32>(max(global2.x, -1i), 4354i, ~var_0.x, ~(-13893i)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c.x, global2.x, var_0.x, 27364i)) >> (vec4<u32>(125016u, 43139u, 1u, 64127u) % vec4<u32>(32u)), ~abs(vec4<i32>(-1i, 1i, var_0.x, 1i)))), false);
    global2 = u_input.b;
    global2 = u_input.c;
    let var_1 = u_input.a;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    var var_0 = _wgslsmith_f_op_f32(-1016f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1390f) * 1000f), 638f))));
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(105f - -746f), _wgslsmith_f_op_f32(f32(-1f) * -643f))), Struct_5(Struct_2((u_input.a << (u_input.a % vec3<u32>(32u))) ^ vec3<u32>(4294967295u, 61807u, 0u), vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 13u)], true))), vec2<u32>(0u & _wgslsmith_mod_u32(44563u, select(107632u, u_input.a.x, true)), ~_wgslsmith_add_u32(~44293u, ~u_input.a.x)));
    var var_2 = Struct_4(_wgslsmith_mod_i32(reverseBits(1i), _wgslsmith_mult_i32(~global2.x, ~global2.x)) << (((func_2(vec4<i32>(u_input.b.x, -2147483647i, var_1.x, global2.x), -17834i).c.a.x & abs(u_input.a.x)) >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x | u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a)) % 32u)) % 32u), Struct_3(1f, 2147483647i, func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 0i, 2147483647i, global2.x) << (vec4<u32>(72022u, 6420u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-7728i, var_1.x, -22399i, -29261i), vec4<i32>(0i, u_input.c.x, var_1.x, -1i), vec4<i32>(u_input.b.x, 10081i, -59245i, 1i)), ~vec4<i32>(var_1.x, var_1.x, 1i, 2147483647i)), -1i).c), ~(i32(-1i) * -abs(-16957i)), select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29456u, u_input.a.x, u_input.a.x), u_input.a), 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.x > 1u), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(28706u, 13u)]), any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))), vec4<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), true, false, all(vec2<bool>(false, true)))), vec4<bool>(select(false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)] & true, global0[_wgslsmith_index_u32(4294967295u, 13u)] && global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(63708u, 13u)], true, true, true)), true, global0[_wgslsmith_index_u32(min(~u_input.a.x, 1u), 13u)]), all(vec3<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true)), any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(55017u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]))))));
    let var_3 = 1547f;
    let x = u_input.a;
    s_output = StorageBuffer(5359u, abs(vec2<i32>(~global2.x, -max(var_1.x, var_1.x))), var_2.b.c.a.x);
}

