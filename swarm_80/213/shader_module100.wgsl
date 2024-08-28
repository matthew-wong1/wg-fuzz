struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<bool, 27> = array<bool, 27>(true, true, true, false, false, true, true, true, false, false, true, true, false, true, true, false, true, false, false, true, false, false, true, false, false, false, false);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(15507i, vec2<i32>(1i, 2147483647i)), Struct_1(-1i, vec2<i32>(7621i, -37718i)), true, Struct_1(0i, vec2<i32>(-5783i, -15456i)), Struct_1(49773i, vec2<i32>(-24439i, 9054i))), Struct_2(Struct_1(1i, vec2<i32>(-2472i, -31334i)), Struct_1(-18191i, vec2<i32>(4251i, -12061i)), false, Struct_1(i32(-2147483648), vec2<i32>(-1i, 1i)), Struct_1(85513i, vec2<i32>(-38887i, 2147483647i))), Struct_2(Struct_1(8476i, vec2<i32>(-7854i, 1i)), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 5348i)), false, Struct_1(-14365i, vec2<i32>(-1i, -3137i)), Struct_1(6111i, vec2<i32>(788i, i32(-2147483648)))), Struct_2(Struct_1(2147483647i, vec2<i32>(-36920i, 0i)), Struct_1(-1i, vec2<i32>(-9566i, -49627i)), true, Struct_1(2807i, vec2<i32>(64789i, -2373i)), Struct_1(-1i, vec2<i32>(i32(-2147483648), -1i))), Struct_2(Struct_1(1i, vec2<i32>(1i, -19323i)), Struct_1(15421i, vec2<i32>(-193i, 0i)), false, Struct_1(-28970i, vec2<i32>(31106i, -9611i)), Struct_1(-1i, vec2<i32>(1i, 2040i))), Struct_2(Struct_1(-1i, vec2<i32>(1i, 2147483647i)), Struct_1(0i, vec2<i32>(-1i, 18450i)), false, Struct_1(-21960i, vec2<i32>(12180i, 2147483647i)), Struct_1(i32(-2147483648), vec2<i32>(1i, 0i))), Struct_2(Struct_1(-51146i, vec2<i32>(2147483647i, -22063i)), Struct_1(i32(-2147483648), vec2<i32>(13550i, -20940i)), true, Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), 18992i)), Struct_1(-35267i, vec2<i32>(-1i, 5379i))));

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-1i, vec2<i32>(23448i, -25986i)), Struct_1(-1i, vec2<i32>(-1i, 1193i)), Struct_1(-40008i, vec2<i32>(1i, 0i)), Struct_1(2816i, vec2<i32>(i32(-2147483648), 32855i)), Struct_1(2147483647i, vec2<i32>(15231i, -31164i)), Struct_1(-1647i, vec2<i32>(662i, 41990i)), Struct_1(0i, vec2<i32>(-53107i, 491i)), Struct_1(2147483647i, vec2<i32>(56269i, 4137i)), Struct_1(-385i, vec2<i32>(1i, 1i)), Struct_1(13638i, vec2<i32>(31443i, -6169i)), Struct_1(2147483647i, vec2<i32>(-78563i, -14176i)), Struct_1(8305i, vec2<i32>(-50050i, 19872i)), Struct_1(4768i, vec2<i32>(i32(-2147483648), 22239i)), Struct_1(-33748i, vec2<i32>(32428i, 34909i)), Struct_1(23448i, vec2<i32>(1i, 32629i)), Struct_1(19088i, vec2<i32>(-14683i, -2722i)), Struct_1(28774i, vec2<i32>(-3831i, 56525i)), Struct_1(22585i, vec2<i32>(-27042i, -9371i)), Struct_1(1i, vec2<i32>(-1i, 46012i)), Struct_1(-18142i, vec2<i32>(1i, -24761i)), Struct_1(-14833i, vec2<i32>(35013i, -62949i)), Struct_1(0i, vec2<i32>(6038i, -21763i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = select(!vec3<bool>(arg_0.c, true, false), vec3<bool>(true, select(all(vec4<bool>(arg_0.c, global0.x, global1[_wgslsmith_index_u32(9514u, 27u)], false)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), true)), select(!arg_0.c, !global0.x, true)), false), select(!select(vec3<bool>(true, false, arg_0.c), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0.c), all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], false, false))), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0.c, true), !vec3<bool>(false, arg_0.c, false), global1[_wgslsmith_index_u32(~17636u, 27u)]), !(-347f < _wgslsmith_f_op_f32(sign(global2.x)))));
    let var_0 = vec2<u32>(u_input.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 44273u, 0u), abs(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 2487u))) << (~15301u % 32u), 4294967295u));
    global0 = select(vec3<bool>(arg_0.c, any(select(select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 27u)], true, arg_0.c), vec3<bool>(false, global0.x, false), false), !vec3<bool>(false, global0.x, global1[_wgslsmith_index_u32(var_0.x, 27u)]), select(arg_0.c, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0.c))), !(true && (true || arg_0.c))), !vec3<bool>(~var_0.x >= select(var_0.x, 3338u, true), arg_0.c, global1[_wgslsmith_index_u32(~u_input.b.x, 27u)]), vec3<bool>(arg_0.c, all(vec4<bool>(!arg_0.c, true, u_input.b.x < 4294967295u, -1000f <= global2.x)), true));
    let var_1 = false;
    global1 = array<bool, 27>();
    return ~_wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.a.x, arg_0.e.a, -2147483647i), -vec3<i32>(arg_0.b.a, -14913i, 2147483647i), var_1), -(vec3<i32>(arg_0.b.a, arg_0.a.b.x, -1i) | vec3<i32>(u_input.a.x, u_input.a.x, 28291i))) << (firstLeadingBit(4294967295u & var_0.x) % 32u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    global3 = array<Struct_2, 7>();
    let var_0 = Struct_3(Struct_2(arg_2.a.e, Struct_1(0i, vec2<i32>(firstLeadingBit(arg_2.a.a.b.x), func_3(arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) == global2.x, arg_2.a.b, Struct_1(u_input.a.x, select(-arg_2.a.b.b, -vec2<i32>(arg_1.x, -26446i), arg_0.x))), firstTrailingBit(~select(vec3<u32>(arg_2.b.x, 222u, 0u), firstLeadingBit(vec3<u32>(arg_2.b.x, u_input.b.x, arg_2.b.x)), select(global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(arg_3.x, 27u)], false))), true);
    var var_1 = 1i;
    var_1 = 2147483647i;
    var var_2 = any(vec4<bool>(!var_0.a.c, true, true, false));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * 303f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-339f, _wgslsmith_f_op_f32(-global2.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-142f, _wgslsmith_f_op_f32(-arg_0))), arg_0));
    let var_0 = !(!vec4<bool>(select(!global1[_wgslsmith_index_u32(59403u, 27u)], global0.x, global1[_wgslsmith_index_u32(max(1888u, arg_2.b.x), 27u)]), all(vec2<bool>(arg_2.c, false)), false, !(!global0.x)));
    global3 = array<Struct_2, 7>();
    let var_1 = Struct_1(arg_2.a.e.b.x, vec2<i32>(u_input.a.x, ~_wgslsmith_clamp_i32(-1i ^ arg_2.a.d.b.x, -14671i >> (u_input.b.x % 32u), 0i << (1u % 32u))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -223f) * -924f)), arg_0), -1232f));
    return Struct_1(min(~_wgslsmith_dot_vec2_i32(var_1.b, min(var_1.b, vec2<i32>(var_1.a, arg_2.a.e.a))), -42114i), u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global0 = !select(select(select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global0.x), vec3<bool>(global0.x, true, global1[_wgslsmith_index_u32(1u, 27u)]), global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec3<bool>(false, false, global0.x), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], false), global1[_wgslsmith_index_u32(0u, 27u)])), vec3<bool>(global0.x, false, global0.x), true), vec3<bool>(global0.x == !global1[_wgslsmith_index_u32(0u, 27u)], !all(vec3<bool>(false, true, global0.x)), true), true);
    let var_0 = vec3<bool>(true, global1[_wgslsmith_index_u32(((firstTrailingBit(0u) & u_input.b.x) | countOneBits(abs(u_input.b.x))) | 1u, 27u)], select(true, func_2(vec2<bool>(func_2(vec2<bool>(true, true), arg_1.yyz, Struct_3(Struct_2(Struct_1(2147483647i, u_input.a), Struct_1(arg_1.x, arg_0.b), global1[_wgslsmith_index_u32(0u, 27u)], arg_0, Struct_1(u_input.a.x, vec2<i32>(u_input.a.x, 0i))), u_input.b, true), vec2<u32>(u_input.b.x, u_input.b.x)).c, any(vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(1u, 27u)], global0.x))), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.x, arg_0.b.x, arg_1.x), arg_1.xzw), Struct_3(Struct_2(Struct_1(14908i, vec2<i32>(arg_0.b.x, 35674i)), Struct_1(u_input.a.x, u_input.a), true, Struct_1(-2147483647i, vec2<i32>(u_input.a.x, -1441i)), global4[_wgslsmith_index_u32(u_input.b.x, 22u)]), u_input.b, !global0.x), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 19151u), vec2<u32>(1u, 14090u)))).a.c, global0.x));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1304f, 716f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 622f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, global2.x, -1000f, global2.x)))))));
    global4 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global2.x, 1000f, global2.x), vec4<f32>(global2.x, global2.x, -658f, 924f), vec4<bool>(false, true, var_0.x, true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -487f, global2.x, -1000f), vec4<f32>(-1782f, global2.x, -615f, 1233f), vec4<bool>(false, var_0.x, var_0.x, true))))), all(select(vec4<bool>(global0.x, global1[_wgslsmith_index_u32(0u, 27u)], false, var_0.x), vec4<bool>(global0.x, false, false, false), global1[_wgslsmith_index_u32(83247u, 27u)])))))) - vec4<f32>(_wgslsmith_f_op_f32(step(global2.x, 1945f)), global2.x, global2.x, _wgslsmith_f_op_f32(sign(-1041f))));
    return global3[_wgslsmith_index_u32(10618u, 7u)];
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = Struct_3(func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)), !(!global0.x), func_2(global0.zx, -vec3<i32>(-2147483647i, 0i, 24803i), Struct_3(Struct_2(global4[_wgslsmith_index_u32(var_0, 22u)], global4[_wgslsmith_index_u32(arg_1.x, 22u)], true, global4[_wgslsmith_index_u32(71484u, 22u)], Struct_1(-33631i, u_input.a)), u_input.b, true), u_input.b.zx >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), -vec4<i32>(u_input.a.x, -49118i, u_input.a.x, 2147483647i) ^ countOneBits(vec4<i32>(-37555i, u_input.a.x, u_input.a.x, 30913i))), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~var_0, u_input.b.x), ~0u), firstTrailingBit(var_0) >> (firstLeadingBit(reverseBits(0u)) % 32u), func_2(select(global0.xx, vec2<bool>(true, false), vec2<bool>(true, true)), vec3<i32>(-u_input.a.x, -24566i, u_input.a.x | -13806i), Struct_3(Struct_2(global4[_wgslsmith_index_u32(4294967295u, 22u)], Struct_1(-16203i, vec2<i32>(u_input.a.x, u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(52436u, 22u)], global4[_wgslsmith_index_u32(u_input.b.x, 22u)]), _wgslsmith_mult_vec3_u32(arg_1.wxw, vec3<u32>(40182u, 1u, 10837u)), global0.x), select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, 30684u), global0.xx) >> (u_input.b.zy % vec2<u32>(32u))).b.x), (i32(-1i) * -20453i) >= firstTrailingBit(abs(2147483647i)));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(abs(~(u_input.b.xz >> (u_input.b.yx % vec2<u32>(32u)))), (~arg_1.yx ^ vec2<u32>(arg_1.x, u_input.b.x)) >> (vec2<u32>(firstLeadingBit(var_0), reverseBits(15867u)) % vec2<u32>(32u))), u_input.b.yz);
    global0 = !vec3<bool>(false, global0.x || (_wgslsmith_f_op_f32(-arg_0) != arg_0), global0.x);
    let var_3 = var_1.a.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec3<bool>(!(_wgslsmith_div_f32(global2.x, global2.x) == global2.x), (u_input.a.x < -2147483647i) == (reverseBits(2147483647i) != u_input.a.x), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-354f))), vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b.x), 0u | u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 15871u, u_input.b.x, 82599u)), _wgslsmith_sub_u32(52835u, 1u))));
    let var_0 = func_2(vec2<bool>(all(global0.xy), true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 0i, ~(-55014i)), abs(vec3<i32>(-u_input.a.x, 1i, _wgslsmith_add_i32(-2147483647i, 0i)))), Struct_3(func_2(vec2<bool>(global0.x, true), select(~vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec3<i32>(-23106i, -23661i, 1i) | vec3<i32>(43707i, -21237i, u_input.a.x), global2.x > 300f), Struct_3(func_5(global4[_wgslsmith_index_u32(1u, 22u)], vec4<i32>(-28689i, u_input.a.x, 0i, u_input.a.x)), vec3<u32>(u_input.b.x, 49000u, 41336u) | u_input.b, false), func_2(vec2<bool>(true, true), abs(vec3<i32>(2147483647i, -25742i, 1i)), func_2(global0.yx, vec3<i32>(u_input.a.x, u_input.a.x, 0i), Struct_3(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], vec3<u32>(u_input.b.x, u_input.b.x, 1u), false), vec2<u32>(u_input.b.x, 4294967295u)), ~u_input.b.zx).b.yy).a, u_input.b, true), vec2<u32>(0u, u_input.b.x));
    let var_1 = _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(-110f - global2.x))));
    let var_2 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(50154u, var_0.b.x), var_0.b.x), 22u)], -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, ~(-9828i), reverseBits(5526i)), -(~vec4<i32>(8275i, -17888i, -21138i, u_input.a.x)))).b;
    var var_3 = Struct_1(43232i, ~vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.a.d.b), max(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, var_0.a.a.b.x), 61187i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(max(var_0.b.x, var_0.b.x) & u_input.b.x, ~var_0.b.x >> ((var_0.b.x >> (u_input.b.x % 32u)) % 32u)) << (select(abs(4294967295u), countOneBits(1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.b.x, 4294967295u, u_input.b.x), vec4<u32>(var_0.b.x, 22992u, var_0.b.x, u_input.b.x)) % 32u), !(!global0.x)) % 32u), vec4<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 54268u), vec4<u32>(u_input.b.x, u_input.b.x, 86950u, var_0.b.x)), reverseBits(vec4<u32>(u_input.b.x, var_0.b.x, var_0.b.x, u_input.b.x)))), func_2(vec2<bool>(any(vec3<bool>(false, var_0.a.c, var_0.c)), all(vec3<bool>(var_0.c, true, global0.x))), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, 1i, var_0.a.a.b.x), vec3<i32>(70349i, var_0.a.d.a, u_input.a.x)), Struct_3(Struct_2(Struct_1(0i, vec2<i32>(2147483647i, u_input.a.x)), Struct_1(var_2.b.x, var_0.a.e.b), false, var_0.a.a, var_2), ~u_input.b, select(global1[_wgslsmith_index_u32(38648u, 27u)], global0.x, false)), select(select(vec2<u32>(u_input.b.x, 0u), var_0.b.yy, vec2<bool>(false, false)), _wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(79122u, 13803u)), vec2<bool>(false, true))).b.x, ~_wgslsmith_div_u32(var_0.b.x, 61221u), ~(~(~0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(326f, var_1, -983f, -1708f), vec4<f32>(var_1, -564f, 504f, 208f), var_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 609f, global2.x, -862f) * vec4<f32>(-1000f, 505f, var_1, 594f)))))));
}

