struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-36957i, -5075i, i32(-2147483648), 1i);

var<private> global1: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(1u, 1465u, 60774u), vec3<u32>(1u, 1u, 108752u), vec3<u32>(19273u, 4294967295u, 33047u), vec3<u32>(0u, 20809u, 0u), vec3<u32>(0u, 84187u, 0u), vec3<u32>(10055u, 4062u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(3215u, 4294967295u, 0u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 9712u, 0u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, 43481u, 27631u), vec3<u32>(58873u, 60045u, 0u), vec3<u32>(4294967295u, 0u, 54715u), vec3<u32>(40940u, 77917u, 26345u), vec3<u32>(1u, 366u, 29228u), vec3<u32>(51646u, 1u, 0u), vec3<u32>(21120u, 4294967295u, 30165u), vec3<u32>(52528u, 2959u, 38152u), vec3<u32>(4294967295u, 0u, 0u));

var<private> global2: vec3<f32> = vec3<f32>(814f, 914f, 919f);

var<private> global3: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(i32(-2147483648), 0i, -15709i), vec3<i32>(-72497i, i32(-2147483648), -23854i), vec3<i32>(1i, -1i, -14757i), vec3<i32>(5718i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-7014i, 0i, 12844i), vec3<i32>(-1i, -37227i, 38449i), vec3<i32>(-29786i, 0i, i32(-2147483648)), vec3<i32>(1i, 1i, -15464i), vec3<i32>(-52305i, i32(-2147483648), 2147483647i), vec3<i32>(10445i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 1i, -38363i), vec3<i32>(-1i, -39232i, -20271i), vec3<i32>(-23911i, -1i, -35779i), vec3<i32>(-56961i, 2147483647i, -39311i), vec3<i32>(0i, -1i, -31119i), vec3<i32>(-12404i, 1i, 1i), vec3<i32>(0i, 53264i, 23670i), vec3<i32>(-1i, -26966i, 41160i), vec3<i32>(-52014i, 0i, -14336i), vec3<i32>(-1541i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, -77429i, -13502i), vec3<i32>(-11170i, i32(-2147483648), 38096i));

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    return global4.b.x;
}

fn func_3() -> i32 {
    global0 = vec4<i32>(-2147483647i, u_input.b.x, -1i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(global4.d.a, u_input.b.x, true), ~global4.c.a), global0.x, global0.x), _wgslsmith_sub_i32(~(~global0.x), u_input.b.x)));
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(426f, global4.a, -1000f))))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global2.x, 1089f)), 562f, -618f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, 1077f, global2.x)))))));
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))), 781f), vec3<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(global2.x * -231f)))), _wgslsmith_f_op_f32(global4.a * -539f)));
    var var_0 = vec3<bool>(!global4.d.b.x, global4.c.b.x, global4.c.b.x);
    let var_1 = vec3<f32>(_wgslsmith_div_f32(global2.x, global4.a), _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(ceil(global4.a)));
    return global4.d.a;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_2.d;
    var var_1 = min(vec4<u32>(_wgslsmith_mult_u32(~(~4294967295u), ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(1u, 21u)], vec3<u32>(23483u, 40076u, 1u))), ~(~1u), _wgslsmith_mod_u32(~(~1u), 4513u), _wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(696u, 21u)], _wgslsmith_add_vec3_u32(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<u32>(14982u, 30502u, 7748u)))), vec4<u32>(_wgslsmith_clamp_u32(max(~22218u, ~1u), _wgslsmith_add_u32(1u, countOneBits(94164u)), ~10813u), 1u, 1u, 7425u));
    let var_2 = abs(vec4<i32>(-(~18043i), firstLeadingBit(-(u_input.b.x ^ arg_2.d.a)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, var_0.a), ~arg_2.d.a) << (57270u % 32u), 1i));
    var var_3 = Struct_1(_wgslsmith_div_i32(-(i32(-1i) * -1i), ~arg_2.c.a) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(152746u, 59366u, 4294967295u), vec3<u32>(var_1.x, var_1.x, 45299u)), ~vec3<u32>(var_1.x, 1u, 4294967295u)), max(~vec3<u32>(var_1.x, var_1.x, var_1.x), ~vec3<u32>(var_1.x, var_1.x, 12285u))) % 32u), select(global4.d.b, select(var_0.b, arg_2.d.b, arg_2.d.b), global4.b.x));
    var var_4 = vec2<bool>(false, arg_3.x);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = func_4(global4.d.b.x, global4.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4.a, global2.x))))), vec3<bool>(func_2(), global4.c.b.x, true), Struct_1(func_3() ^ 1i, select(select(global4.c.b, global4.c.b, vec2<bool>(false, false)), global4.d.b, true)), Struct_1(arg_3.x, !global4.c.b), true), select(!vec2<bool>(global4.c.b.x, true), select(select(select(vec2<bool>(global4.c.b.x, arg_0), vec2<bool>(true, true), false), !global4.d.b, true), global4.b.zx, all(global4.b) == arg_0), global4.b.xy));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(373f, 1355f, global2.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a, 113f, -192f) + vec3<f32>(303f, global2.x, 1355f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_0.a)))), select(!vec3<bool>(true, var_0.e, arg_0), global4.b, _wgslsmith_f_op_f32(select(-1280f, global2.x, var_0.d.b.x)) > -672f))));
    var var_1 = (countOneBits(~66300u) << (_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~9751u, 21u)], ~(~vec3<u32>(7484u, 103000u, 2694u))) % 32u)) < _wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(0u, 29395u, 8812u, 4294967295u)), ~vec4<u32>(~24181u, ~14860u, 1u, 331u));
    var var_2 = Struct_1(1i, var_0.d.b);
    global3 = array<vec3<i32>, 23>();
    return var_0;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<vec3<u32>, 21>();
    var var_0 = arg_1.d.b;
    let var_1 = Struct_2(769f, vec3<bool>(arg_1.e, true, true), Struct_1(_wgslsmith_add_i32(i32(-1i) * -34463i, -1i), !(!vec2<bool>(false, arg_1.e))), Struct_1(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -28133i), -arg_0), !arg_1.d.b), all(select(vec4<bool>(-8307i > arg_0, !global4.b.x, arg_1.b.x, any(arg_1.b)), !select(vec4<bool>(global4.b.x, global4.c.b.x, true, false), vec4<bool>(false, false, false, false), vec4<bool>(arg_1.c.b.x, global4.e, false, false)), global4.e)));
    global4 = var_1;
    let var_2 = Struct_1(-2147483647i, !func_1(true, _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_2, vec4<i32>(arg_1.c.a, var_1.d.a, 22292i, arg_0)), vec4<i32>(-70962i, 30234i, var_1.c.a, u_input.b.x) >> (vec4<u32>(1u, 4294967295u, 1u, 69947u) % vec4<u32>(32u))), vec2<i32>(-2147483647i, var_1.d.a), -(arg_2 | vec4<i32>(33093i, 1i, 77362i, arg_2.x))).d.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(14919i, func_1(any(select(vec2<bool>(false, false), global4.b.zy, !vec2<bool>(global4.d.b.x, global4.c.b.x))), vec4<i32>(~u_input.a, -1i, _wgslsmith_clamp_i32(global0.x, ~(-29859i), -1i), -26862i), -vec2<i32>(global4.c.a, -13397i) | global0.zz, ~(-(vec4<i32>(global0.x, -6816i, -29790i, global4.d.a) >> (vec4<u32>(0u, 57441u, 16484u, 98726u) % vec4<u32>(32u))))), firstLeadingBit(~((vec4<i32>(-56089i, u_input.a, -2147483647i, -33745i) | vec4<i32>(32908i, global4.c.a, u_input.b.x, global4.c.a)) | ~vec4<i32>(1i, 36521i, global0.x, global4.c.a))));
    var var_1 = global4.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2003f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, var_0.a))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1489f, -482f, 1988f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -361f, 170f) + vec3<f32>(-376f, 432f, -650f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, -483f, 792f)))))));
    let var_3 = firstTrailingBit(vec2<u32>(0u, ~11685u));
    var var_4 = 12717u;
    var var_5 = ~0u <= var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, global2.x, 881f, 1157f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, -1120f, 370f, var_0.a) - vec4<f32>(var_0.a, var_2.x, 923f, global2.x)), !vec4<bool>(true, true, true, var_1.b.x))))))), ~vec4<u32>(~(~var_3.x), var_3.x, var_3.x, var_3.x), -global4.c.a, global2.x);
}

