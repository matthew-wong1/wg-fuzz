struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(16771u, 4294967295u, 14049u), true, 31619i, 42843u, vec3<u32>(45579u, 1u, 31688u));

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: i32;

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_3(Struct_2(!(!select(vec3<bool>(global0.b, global1.b, false), vec3<bool>(false, global0.b, true), vec3<bool>(false, false, global1.b))), 1912f, 1i, global4[_wgslsmith_index_u32(global1.d, 14u)]), global1.b, global0.c);
    let var_1 = Struct_2(var_0.a.a, 143f, 1i, Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global1.a.x, 4294967295u), vec3<u32>(var_0.a.d.d, global1.a.x, global1.a.x)), any(select(!vec4<bool>(global1.b, true, var_0.b, true), !vec4<bool>(global1.b, global0.b, false, var_0.b), select(vec4<bool>(var_0.a.a.x, true, global0.b, global1.b), vec4<bool>(true, global0.b, global1.b, true), var_0.b))), ~global0.c, ~1u, firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.c.wwy, vec3<u32>(3110u, global0.e.x, global0.e.x))) ^ firstLeadingBit(u_input.c.xyy)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2097f, _wgslsmith_f_op_f32(-997f * var_0.a.b), var_0.b)), _wgslsmith_f_op_f32(-var_0.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, var_1.b))))), -2120f, _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.b)))));
    var var_3 = all(select(vec3<bool>(!(true != var_0.b), true, (global0.b && false) && !var_1.d.b), !var_0.a.a, var_1.d.b));
    global0 = var_0.a.d;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(sign(-416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - -1341f) * _wgslsmith_f_op_f32(-var_2.x))))), var_0.a.d.b));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-335f - 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -265f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_1.zy))))))));
    var var_0 = vec2<u32>(global0.a.x, 18517u);
    let var_1 = Struct_2(!vec3<bool>(any(select(vec2<bool>(arg_0.b, false), vec2<bool>(global1.b, true), vec2<bool>(false, global0.b))), global1.b, !all(vec3<bool>(false, true, global0.b))), _wgslsmith_f_op_f32(sign(452f)), global0.c, arg_0);
    var var_2 = Struct_3(Struct_2(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.b)))) - _wgslsmith_div_f32(var_1.b, var_1.b)), countOneBits(_wgslsmith_mult_i32(abs(global1.c), arg_1.x | 2147483647i)), Struct_1(~max(vec3<u32>(1u, 0u, 1u), vec3<u32>(11248u, 0u, 1u)), arg_0.b, -8024i, ~(~var_0.x), _wgslsmith_sub_vec3_u32(abs(arg_0.a), vec3<u32>(global1.a.x, 4294967295u, global0.e.x)))), !global0.b, global1.c);
    let var_3 = true;
    return var_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(select(!vec3<bool>(all(vec2<bool>(false, global1.b)), !global0.b, !global1.b), select(select(vec3<bool>(false, true, global0.b), !vec3<bool>(true, arg_1.b, global1.b), !global1.b), vec3<bool>(true, false, global0.b), false), select(select(vec3<bool>(global1.b, global1.b, global0.b), select(vec3<bool>(false, global0.b, false), vec3<bool>(false, global1.b, global1.b), vec3<bool>(global0.b, true, global0.b)), true), vec3<bool>(true, arg_1.b, true), !any(vec4<bool>(global1.b, true, global0.b, global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-562f, _wgslsmith_f_op_f32(func_3(vec2<i32>(29242i, arg_1.c)))))), -global0.c, global4[_wgslsmith_index_u32(~global1.e.x & ~u_input.b, 14u)]);
    var var_1 = -27212i;
    let var_2 = vec3<i32>(~global0.c, 2147483647i, var_0.d.c) << (vec3<u32>(func_2(Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 34944u, 26692u), vec3<u32>(17436u, var_0.d.a.x, arg_0)), true && arg_1.b, _wgslsmith_mult_i32(39255i, arg_1.c), firstLeadingBit(var_0.d.d), var_0.d.e | arg_1.e), vec3<i32>(abs(-2147483647i), ~(-1i), select(-56154i, global1.c, var_0.d.b))), ~(~firstLeadingBit(arg_1.e.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, global0.e.x, u_input.d.x, u_input.d.x) << (~u_input.c % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(var_0.d.e.x, global1.a.x), _wgslsmith_clamp_u32(arg_0, arg_1.d, var_0.d.a.x), 3439u, global0.a.x))) % vec3<u32>(32u));
    var var_3 = Struct_3(Struct_2(vec3<bool>(select(true, true, arg_1.b) | (0u <= var_0.d.a.x), _wgslsmith_mod_u32(31982u, u_input.c.x) >= 0u, !(global1.c <= -2147483647i)), _wgslsmith_f_op_f32(-var_0.b), -2147483647i, Struct_1(~u_input.c.xyx, global0.b, global0.c ^ select(var_0.d.c, 3300i, global1.b), _wgslsmith_add_u32(~34702u, arg_1.a.x), vec3<u32>(0u, 1u, 0u) | (u_input.c.wyy | global0.a))), true, ~17195i);
    global4 = array<Struct_1, 14>();
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> Struct_2 {
    global3 = ~(-(i32(-1i) * -(global1.c | 0i)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    global4 = array<Struct_1, 14>();
    let var_0 = Struct_3(Struct_2(!vec3<bool>(true, all(vec3<bool>(false, false, false)), global0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-116f * _wgslsmith_f_op_f32(-1000f * arg_2.x)))), 66392i, func_4(countOneBits(func_2(Struct_1(vec3<u32>(global1.e.x, global0.a.x, global1.d), false, global0.c, global0.e.x, global0.a), vec3<i32>(-2147483647i, 0i, -28709i))), global4[_wgslsmith_index_u32(~u_input.d.x, 14u)])), global0.b, _wgslsmith_add_i32(arg_0, ~global0.c));
    global0 = Struct_1(global0.e, any(vec4<bool>(var_0.a.d.b, any(select(vec3<bool>(true, arg_1, true), vec3<bool>(false, global1.b, global0.b), vec3<bool>(true, true, global0.b))), any(vec3<bool>(var_0.a.d.b, true, true)), !var_0.b)), _wgslsmith_mult_i32(global0.c, ~select(reverseBits(37323i), 2147483647i, any(var_0.a.a))), 124587u, global1.a);
    return Struct_2(var_0.a.a, _wgslsmith_f_op_f32(func_3(vec2<i32>(_wgslsmith_mod_i32(-1i, -1i) & _wgslsmith_mult_i32(global0.c, 28356i), var_0.a.d.c))), firstLeadingBit(global1.c), global4[_wgslsmith_index_u32(abs(global0.d), 14u)]);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_3(Struct_2(!select(select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(false, true, true), vec3<bool>(global1.b, false, arg_0.d.b)), arg_0.a, !vec3<bool>(false, global1.b, global1.b)), 923f, 1i, Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, 53923u), ~2572u, 0u >> (u_input.e % 32u)), true, _wgslsmith_add_i32(-u_input.a, global0.c), ~4294967295u, select(~global1.a, ~vec3<u32>(arg_2.x, global0.a.x, u_input.d.x), select(global1.b, global0.b, global1.b)))), global1.b, ~min(-30555i, ~1i));
    global1 = Struct_1(vec3<u32>(global1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_2.x, 26960u), _wgslsmith_mod_u32(0u, global1.e.x), firstLeadingBit(u_input.c.x), 4294967295u ^ arg_0.d.e.x), vec4<u32>(u_input.b, var_0.a.d.d & u_input.c.x, var_0.a.d.d, _wgslsmith_mod_u32(1u, u_input.c.x))), global0.a.x), !(true || select(global0.b, any(vec4<bool>(var_0.b, true, global1.b, global0.b)), var_0.a.d.b)), _wgslsmith_clamp_i32(1i, func_4(abs(global1.e.x), func_1(-877i, global0.b, vec4<f32>(arg_0.b, -131f, 260f, 529f)).d).c, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, var_0.c, 1006i, 1i), vec4<i32>(2147483647i, var_0.c, 0i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c, u_input.a, 2147483647i, 1i), vec4<i32>(global0.c, 1i, 53490i, 32189i), vec4<i32>(-12078i, u_input.a, u_input.a, u_input.a)))) << (130521u % 32u), global0.e.x, ~arg_2.yyy);
    global1 = var_0.a.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.b));
    return _wgslsmith_f_op_f32(func_3(reverseBits(firstLeadingBit(vec2<i32>(-37839i, -2147483647i) | vec2<i32>(u_input.a, global1.c)) << (vec2<u32>(global1.e.x ^ 4294967295u, ~32265u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-500f, _wgslsmith_f_op_f32(-1147f * -2235f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(669f * 876f), 707f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(min(-941f, -856f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(-557f + 286f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -952f), -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-419f)), _wgslsmith_f_op_f32(step(-273f, -397f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1922f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(1i, global1.b, vec4<f32>(-832f, 2502f, 234f, -896f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1018f, 1832f) + vec2<f32>(-1570f, -145f)), u_input.c << (vec4<u32>(global0.a.x, 49281u, global0.a.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_f32(156f, -156f)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-163f, 1000f))));
    global2 = _wgslsmith_f_op_f32(-var_1.x);
    let var_3 = Struct_3(Struct_2(vec3<bool>(all(select(vec4<bool>(global1.b, global1.b, false, global0.b), vec4<bool>(global1.b, false, true, true), true)), any(select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, global0.b), vec2<bool>(global0.b, global1.b))), func_1(2147483647i, true, var_1).a.x), _wgslsmith_f_op_f32(-var_2), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), min(vec2<i32>(global1.c, global1.c), vec2<i32>(global1.c, u_input.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(-20572i, u_input.a, 52993i) | vec3<i32>(global1.c, 0i, 88840i), -vec3<i32>(-2147483647i, 0i, global0.c))), Struct_1(vec3<u32>(firstLeadingBit(27228u), min(8612u, 33394u), ~18326u), global0.b, ~max(-3362i, 19388i), 4294967295u, min(_wgslsmith_sub_vec3_u32(vec3<u32>(31023u, 31088u, 1u), global0.e), u_input.c.zyz))), !global0.b, abs(global1.c));
    global4 = array<Struct_1, 14>();
    let var_4 = var_3.a;
    let var_5 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1100f, -1405f, _wgslsmith_f_op_f32(exp2(1f))), vec4<u32>(global0.e.x, var_5.e.x, ~_wgslsmith_mult_u32(func_2(var_5, vec3<i32>(var_4.d.c, var_3.c, -1i)), 1u), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 20018u, global1.e.x), u_input.c.yxz))), firstLeadingBit(~select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global0.c, global0.c, -2147483647i), vec4<i32>(-2147483647i, global0.c, 1i, global0.c)), countOneBits(vec4<i32>(var_3.c, 2147483647i, -77306i, u_input.a)), var_4.c > global0.c)), ~vec2<u32>(_wgslsmith_sub_u32(u_input.e, global1.e.x), 87354u));
}

