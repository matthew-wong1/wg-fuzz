struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(1i, 31887i, -73565i, -5025i, -27297i, 1i, -1i, -1i, 17109i, 2147483647i, 17193i, -6698i, -38888i, 17727i, -2134i, 10442i, 58724i, -47769i, -47395i, 1i, 34993i, 0i);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(-905f, -395f, 822f), false, true), Struct_1(vec3<f32>(-828f, 441f, -1000f), true, false), Struct_1(vec3<f32>(-345f, -1000f, 912f), true, true), Struct_1(vec3<f32>(167f, 333f, 888f), true, false), Struct_1(vec3<f32>(-587f, 1000f, 583f), false, true), Struct_1(vec3<f32>(590f, -245f, -868f), false, true), Struct_1(vec3<f32>(-315f, -2279f, -358f), false, true), Struct_1(vec3<f32>(-984f, -1634f, 671f), true, false), Struct_1(vec3<f32>(1000f, -2559f, 1969f), true, true), Struct_1(vec3<f32>(605f, -372f, -1517f), false, false), Struct_1(vec3<f32>(123f, 1723f, -705f), false, false), Struct_1(vec3<f32>(805f, 1000f, 721f), true, false), Struct_1(vec3<f32>(191f, -142f, 1257f), false, true), Struct_1(vec3<f32>(-2361f, 2101f, 344f), false, false), Struct_1(vec3<f32>(105f, -1777f, 358f), false, true));

var<private> global2: Struct_2 = Struct_2(34394u);

var<private> global3: vec3<i32> = vec3<i32>(-7035i, -5706i, 1i);

var<private> global4: i32 = 24771i;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = ~vec2<i32>(arg_1.x, ~(-2147483647i));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(965f))))))));
    var var_2 = false;
    let var_3 = global2.a;
    let var_4 = arg_3;
    return vec2<f32>(-765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f - -670f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -393f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - -118f)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3.c;
    let var_1 = vec2<bool>(true, true);
    global0 = array<i32, 22>();
    var var_2 = max(arg_1, 0i);
    var var_3 = var_1.x;
    return arg_3.d;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: u32) -> vec2<i32> {
    global2 = func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(69299u, arg_1.d.a, 17654u), vec4<i32>(-2296i, 57002i, -1i, global0[_wgslsmith_index_u32(global2.a, 22u)]), true, arg_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, 260f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(224f, -1458f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(573f, -209f), vec2<f32>(-531f, 1229f))))), ~1i, arg_2, arg_1);
    global4 = reverseBits(reverseBits(_wgslsmith_clamp_i32(~arg_2.x >> ((14826u << (arg_1.c.a % 32u)) % 32u), i32(-1i) * -12255i, 1125i)));
    let var_0 = arg_1.c;
    global0 = array<i32, 22>();
    global4 = arg_1.a;
    return vec2<i32>(reverseBits(22050i), abs((i32(-1i) * -2147483647i) | (-1i & _wgslsmith_mult_i32(u_input.c.x, -2147483647i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_3 {
    global2 = Struct_2(~(reverseBits(global2.a >> (34658u % 32u)) ^ u_input.a));
    var var_0 = Struct_3(countOneBits(~47220i), all(vec4<bool>(true, true, true, true)), func_3(_wgslsmith_f_op_vec2_f32(arg_1.xy - arg_1.yw), arg_0.x, u_input.c.xz & min(global3.zy, abs(arg_0.ww)), Struct_3(2147483647i, true, func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(489f, -1158f), vec2<f32>(-637f, arg_1.x))), _wgslsmith_dot_vec3_i32(arg_0.zzz, u_input.c), global3.zx, Struct_3(-2147483647i, false, Struct_2(0u), Struct_2(u_input.a), arg_0.x)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1012f, arg_1.x)), -1962i, _wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(global3.x, arg_0.x)), Struct_3(global0[_wgslsmith_index_u32(0u, 22u)], false, Struct_2(u_input.a), Struct_2(1u), -2147483647i)), -1i)), func_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.yw), _wgslsmith_f_op_vec2_f32(func_2(abs(vec3<u32>(global2.a, 31662u, 0u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, -1i, global3.x), arg_0), false, Struct_2(global2.a))))), func_1(select(select(vec2<u32>(97904u, 2597u), vec2<u32>(global2.a, global2.a), vec2<bool>(false, false)), vec2<u32>(u_input.a, 19250u), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), Struct_3(arg_0.x, true, Struct_2(4856u), func_3(vec2<f32>(arg_1.x, 467f), arg_0.x, arg_0.wy, Struct_3(global0[_wgslsmith_index_u32(26251u, 22u)], false, Struct_2(u_input.b), Struct_2(4294967295u), global0[_wgslsmith_index_u32(global2.a, 22u)])), -u_input.c.x), firstTrailingBit(vec2<i32>(2147483647i, arg_0.x)), ~(global2.a & 0u)).x, vec2<i32>(~0i, select(1i, firstLeadingBit(global0[_wgslsmith_index_u32(global2.a, 22u)]), false)), Struct_3(countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(2147483647i, -1i))), true, Struct_2(global2.a), Struct_2(_wgslsmith_mod_u32(u_input.a, 39517u)), abs(1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(-4535i, 1i), vec2<i32>(select(-22553i, min(global0[_wgslsmith_index_u32(6599u, 22u)], global3.x), false), global3.x)));
    return Struct_3(_wgslsmith_clamp_i32(abs(-global3.x >> ((global2.a << (1u % 32u)) % 32u)), -1i, 1i), abs(_wgslsmith_div_i32(countOneBits(38847i), _wgslsmith_dot_vec2_i32(arg_0.xz, u_input.c.zy))) > ~0i, var_0.d, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(948f, arg_1.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - arg_1.xz), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, global3.x) ^ global3.yz, vec2<i32>(var_0.e, 63403i)), ~(arg_0.wx << (vec2<u32>(4294967295u, 29587u) % vec2<u32>(32u)))), max(vec2<i32>(reverseBits(-1296i), _wgslsmith_dot_vec3_i32(u_input.c, arg_0.zyx)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10990i, arg_0.x), vec3<i32>(26124i, var_0.e, 0i)), 0i)), Struct_3(_wgslsmith_dot_vec2_i32(u_input.c.xx, -arg_0.yz), true, func_3(_wgslsmith_f_op_vec2_f32(exp2(arg_1.xx)), 1i, vec2<i32>(global3.x, 1i), Struct_3(-1i, var_0.b, var_0.d, Struct_2(68430u), 1i)), Struct_2(select(u_input.b, var_0.c.a, var_0.b)), _wgslsmith_mod_i32(~(-26256i), 29240i))), 671i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    var var_0 = true;
    let var_1 = func_4(vec4<i32>(-(~global0[_wgslsmith_index_u32(10376u, 22u)]), 53618i, 15172i & _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.xy, vec2<i32>(-29670i, global3.x)), func_1(vec2<u32>(61404u, 4294967295u), Struct_3(u_input.c.x, true, Struct_2(global2.a), Struct_2(global2.a), global3.x), vec2<i32>(-1i, u_input.c.x), 37588u)), global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(606f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * 1103f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1524f + -875f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(-490f - -809f))) * vec4<f32>(1f, 1f, 1f, 1f)));
    let var_2 = var_1.d;
    var var_3 = var_1.b;
    global3 = vec3<i32>(-u_input.c.x, -var_1.e, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(606f, -1044f, 873f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, -1092f, -523f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, -1542f, -758f))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(342f + -410f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(var_1.d.a, 8803u, global2.a), vec4<i32>(-21084i, -6342i, global0[_wgslsmith_index_u32(0u, 22u)], u_input.c.x), false, Struct_2(1u))).x, _wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(64786u, global2.a, 50248u), vec4<i32>(1i, global3.x, -2147483647i, 9118i), var_1.b, var_2)).x)), _wgslsmith_f_op_f32(-288f - 822f))), ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c.a, var_2.a), vec2<u32>(var_2.a, global2.a)) & ~vec2<u32>(1u, var_2.a), ~vec2<u32>(29438u, 0u) & ~vec2<u32>(var_2.a, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-907f, -1414f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1286f)) + _wgslsmith_f_op_f32(min(1216f, -1404f))))), min(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(21446u, u_input.a, u_input.b, 0u), vec4<u32>(0u, var_2.a, var_2.a, 4294967295u)), ~vec4<u32>(0u, 0u, global2.a, 1u)), abs(~vec4<u32>(var_1.d.a, u_input.a, global2.a, 1698u) >> (max(vec4<u32>(u_input.b, 38279u, 0u, u_input.a), vec4<u32>(global2.a, 4294967295u, 24043u, var_2.a)) % vec4<u32>(32u)))), _wgslsmith_div_f32(718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1000f)), 363f)))));
}

