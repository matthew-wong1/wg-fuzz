struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec2<f32>(391f, -1824f)), Struct_1(false, vec2<f32>(-836f, 923f)), Struct_1(true, vec2<f32>(1226f, 886f)), Struct_1(true, vec2<f32>(1065f, 396f)), Struct_1(false, vec2<f32>(-1000f, -205f)), Struct_1(true, vec2<f32>(992f, 683f)), Struct_1(true, vec2<f32>(848f, -1492f)), Struct_1(false, vec2<f32>(-1000f, -553f)), Struct_1(false, vec2<f32>(-1093f, -1170f)), Struct_1(true, vec2<f32>(-1000f, -234f)), Struct_1(false, vec2<f32>(-3153f, -631f)), Struct_1(true, vec2<f32>(404f, 1487f)), Struct_1(false, vec2<f32>(1413f, -2161f)), Struct_1(false, vec2<f32>(2281f, 867f)), Struct_1(true, vec2<f32>(-1000f, 350f)), Struct_1(true, vec2<f32>(-640f, -205f)), Struct_1(true, vec2<f32>(1148f, 828f)), Struct_1(true, vec2<f32>(-124f, -1019f)), Struct_1(true, vec2<f32>(126f, -1000f)), Struct_1(true, vec2<f32>(220f, 1661f)), Struct_1(false, vec2<f32>(1007f, 785f)), Struct_1(true, vec2<f32>(880f, -562f)), Struct_1(false, vec2<f32>(-1178f, -1129f)), Struct_1(false, vec2<f32>(1227f, -282f)), Struct_1(false, vec2<f32>(-1000f, -2198f)), Struct_1(false, vec2<f32>(-484f, 815f)), Struct_1(false, vec2<f32>(643f, -1000f)), Struct_1(true, vec2<f32>(103f, -1302f)), Struct_1(false, vec2<f32>(788f, -121f)), Struct_1(false, vec2<f32>(1347f, -124f)), Struct_1(false, vec2<f32>(-1723f, -244f)));

var<private> global2: u32 = 5269u;

var<private> global3: array<Struct_2, 29>;

var<private> global4: Struct_4 = Struct_4(vec3<u32>(1u, 16963u, 1u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    let var_0 = global4.a;
    let var_1 = any(!(!vec4<bool>(arg_1.e.x, true, true, arg_1.c.a)));
    let var_2 = vec4<f32>(1578f, arg_1.b.x, _wgslsmith_div_f32(1387f, arg_1.c.b.x), _wgslsmith_f_op_f32(trunc(194f)));
    global0 = arg_1.a.a;
    var var_3 = Struct_4(global4.a);
    return _wgslsmith_add_u32(max(firstTrailingBit(~0u), ~_wgslsmith_dot_vec2_u32(arg_0.a.zx, var_3.a.xx)), 0u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec2<u32> {
    global4 = Struct_4(vec3<u32>(global4.a.x, abs(69072u), 1u));
    global0 = !vec4<bool>(u_input.e != ~_wgslsmith_mod_i32(0i, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.c.b.x))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-447f - arg_2.b.x))), any(vec3<bool>(false, false, false)) == true, !any(vec2<bool>(arg_2.e.x, arg_3.a)));
    global4 = Struct_4(abs(~firstTrailingBit(global4.a)));
    var var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, ~1u), ~global4.a.xz | vec2<u32>(1u, 48552u), all(!arg_2.a.a.zx)), countOneBits(_wgslsmith_mult_vec2_u32(global4.a.zy | global4.a.zz, global4.a.zx))) == abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 13491u, 4294967295u), vec4<u32>(52375u, u_input.a, 34145u, u_input.a)), global4.a.x));
    var var_1 = select(vec3<bool>(true, all(vec4<bool>(!arg_3.a, true, true, any(arg_2.e))), arg_3.a), global0.zwz, false);
    return _wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(abs(global4.a.xy), max(global4.a.zx, global4.a.yy)), max(countOneBits(~vec2<u32>(u_input.a, global4.a.x)), ~(global4.a.zy & vec2<u32>(u_input.d, global4.a.x))) << (~(~vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), global4.a.xy);
}

fn func_2() -> bool {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global4.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(42993u, global4.a.x), global4.a.zz)), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-380f, -1524f, -1000f)))), Struct_1(global0.x, vec2<f32>(-1205f, 265f)), Struct_3(Struct_2(vec4<bool>(global0.x, global0.x, true, true)), _wgslsmith_div_vec3_f32(vec3<f32>(-140f, 132f, -245f), vec3<f32>(779f, -918f, 1112f)), Struct_1(true, vec2<f32>(-655f, -1865f)), true, vec4<bool>(global0.x, true, true, false)), global1[_wgslsmith_index_u32(func_3(Struct_4(global4.a), Struct_3(global3[_wgslsmith_index_u32(55192u, 29u)], vec3<f32>(477f, 121f, 681f), global1[_wgslsmith_index_u32(u_input.a, 31u)], global0.x, vec4<bool>(true, global0.x, true, global0.x)), global3[_wgslsmith_index_u32(global4.a.x, 29u)], select(vec4<i32>(u_input.c, -52729i, -19869i, u_input.c), vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), vec4<bool>(true, global0.x, false, true))), 31u)])), 29u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-691f, 767f, -393f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1464f, -877f, 1117f), vec3<f32>(-1073f, -967f, -472f), global0.zxz))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(385f, -518f, -1730f), vec3<f32>(-1000f, 1592f, 127f)) + vec3<f32>(983f, 1000f, -1480f))))), Struct_1(!(!any(vec4<bool>(true, global0.x, true, false))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(800f, -307f), vec2<f32>(-680f, 438f), global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1273f, 1181f)), true))))), all(!select(!global0.yy, select(global0.xy, vec2<bool>(global0.x, false), global0.xx), true)), !(!select(vec4<bool>(global0.x, true, global0.x, true), !vec4<bool>(false, true, true, global0.x), global0.x)));
    return false;
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(vec4<bool>(global0.x, select(arg_0.a.x, all(global0.wy), true), true, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1174f, 1000f, -2643f) * vec3<f32>(2556f, -142f, 1000f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(984f, 335f, -314f)))))), global1[_wgslsmith_index_u32(global4.a.x, 31u)], false, arg_0.a);
    let var_1 = Struct_4(global4.a);
    let var_2 = _wgslsmith_f_op_f32(-1310f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.c.b.x + -733f), true)), _wgslsmith_div_f32(-400f, _wgslsmith_f_op_f32(min(var_0.c.b.x, -963f))))));
    var var_3 = var_1;
    var var_4 = ~(firstLeadingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(-60997i, u_input.e), vec2<i32>(-2147483647i, u_input.c))) | ~_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(-16331i, -29951i)), vec2<i32>(-9658i, u_input.e)));
    return Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-142f, var_2, -1138f))) + vec3<f32>(1000f, var_0.c.b.x, var_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))), global1[_wgslsmith_index_u32(u_input.b, 31u)], true, select(!arg_0.a, arg_0.a, true));
}

fn func_1() -> Struct_4 {
    var var_0 = func_5(Struct_2(vec4<bool>(true, func_2() | global0.x, global0.x, true)));
    let var_1 = all(!var_0.e);
    let var_2 = vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.d, 10688u), 79474u) <= 46068u, false, all(vec2<bool>(var_0.a.a.x, any(select(var_0.a.a, vec4<bool>(var_1, var_0.c.a, global0.x, true), vec4<bool>(false, false, global0.x, var_0.d))))), func_5(Struct_2(!(!var_0.a.a))).a.a.x);
    let var_3 = Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -459f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - 1372f)))));
    global4 = Struct_4(vec3<u32>(u_input.a, 62263u, 10541u | (_wgslsmith_dot_vec2_u32(global4.a.yy, global4.a.zx) >> (global4.a.x % 32u))));
    return Struct_4(vec3<u32>(reverseBits(1u), 57561u, global4.a.x));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = global4.a.x;
    var var_1 = true;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1997f))), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 969f) - _wgslsmith_f_op_f32(-arg_3.x))))));
    let var_3 = (u_input.c << (arg_2.a.x % 32u)) <= _wgslsmith_dot_vec3_i32(-max(~vec3<i32>(-6411i, u_input.c, u_input.c), abs(vec3<i32>(-47907i, u_input.c, u_input.e))), _wgslsmith_div_vec3_i32(select(vec3<i32>(-14480i, 0i, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c, -14377i), vec3<i32>(-54478i, 2147483647i, u_input.c)), !global0.xxx), firstLeadingBit(vec3<i32>(59128i, -18943i, u_input.e))));
    var var_4 = abs(vec4<u32>(~1u, u_input.a, 75873u, global4.a.x | global4.a.x) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_2.a.x, 0u, u_input.b), vec4<u32>(u_input.d, 1u, u_input.a, 22265u)) % vec4<u32>(32u))) << (vec4<u32>(global4.a.x, u_input.b, global4.a.x, ~global4.a.x) % vec4<u32>(32u));
    return func_1();
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    return Struct_2(vec4<bool>(arg_0.a, all(!select(vec4<bool>(false, arg_0.a, false, true), arg_1.a, arg_1.a)), true, all(!(!vec4<bool>(global0.x, arg_0.a, true, global0.x)))));
}

fn func_8(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_1(global0.x, vec2<f32>(1f, 1f));
    var var_1 = vec3<i32>(i32(-1i) * -(i32(-1i) * -16543i), countOneBits(firstLeadingBit(-24481i)), countOneBits(2147483647i));
    let var_2 = 28012i;
    let var_3 = !global0.ywz;
    var_1 = select(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 39463i, var_1.x), vec3<i32>(-58850i, -2147483647i, -51253i), vec3<i32>(2147483647i, u_input.c, -3816i)), vec3<i32>(var_2, var_2, 2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, -2147483647i, u_input.c), vec3<i32>(16964i, var_1.x, var_2)) >> (vec3<u32>(1u, u_input.d, global4.a.x) % vec3<u32>(32u))), -vec3<i32>(2147483647i, u_input.c, var_1.x >> (u_input.b % 32u)), var_3) | select(vec3<i32>(var_2 | var_1.x, u_input.e, select(u_input.c, -6577i, var_0.a) << (1u % 32u)), vec3<i32>(~var_2, _wgslsmith_dot_vec2_i32(-var_1.xz, vec2<i32>(var_2, 40820i)), abs(-21414i) >> (_wgslsmith_mult_u32(u_input.d, global4.a.x) % 32u)), !(u_input.a < (global4.a.x & 10769u)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -45563i;
    global1 = array<Struct_1, 31>();
    global4 = func_8(func_7(global1[_wgslsmith_index_u32(abs(global4.a.x), 31u)], global3[_wgslsmith_index_u32(~global4.a.x, 29u)], func_6(vec4<f32>(_wgslsmith_f_op_f32(min(193f, 1020f)), -414f, _wgslsmith_f_op_f32(floor(1586f)), _wgslsmith_f_op_f32(222f + 1209f)), ~global4.a.x <= (u_input.a | global4.a.x), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1577f, -144f) * vec3<f32>(778f, 363f, 430f))))), global0.x);
    global1 = array<Struct_1, 31>();
    var var_1 = 15234i;
    global4 = Struct_4(func_8(Struct_2(select(!vec4<bool>(false, global0.x, true, true), vec4<bool>(false, false, global0.x, true), vec4<bool>(true, global0.x, false, false))), true).a);
    var var_2 = func_5(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~global4.a), global4.a) >> (~(~(~global4.a.x)) % 32u), 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-677f, _wgslsmith_f_op_f32(select(-1401f, 865f, global0.x)))));
}

