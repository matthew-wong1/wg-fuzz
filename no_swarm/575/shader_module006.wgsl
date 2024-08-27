struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1089f, 1898f), vec2<f32>(-139f, 1124f), vec2<f32>(839f, 785f), vec2<f32>(-1000f, -233f), vec2<f32>(965f, 659f), vec2<f32>(910f, 293f), vec2<f32>(431f, -357f), vec2<f32>(731f, -1598f), vec2<f32>(1714f, -1824f), vec2<f32>(-1225f, 1106f), vec2<f32>(126f, -882f), vec2<f32>(909f, 1182f), vec2<f32>(2328f, 1966f), vec2<f32>(-720f, 286f), vec2<f32>(-641f, -344f), vec2<f32>(-1168f, 1000f), vec2<f32>(-550f, -754f), vec2<f32>(654f, -773f), vec2<f32>(-438f, 1311f), vec2<f32>(-1026f, -546f), vec2<f32>(-179f, 224f), vec2<f32>(169f, -1000f), vec2<f32>(754f, 788f), vec2<f32>(-253f, 2109f), vec2<f32>(156f, 537f), vec2<f32>(765f, 1350f), vec2<f32>(-599f, 752f), vec2<f32>(540f, -1223f), vec2<f32>(-1271f, -447f), vec2<f32>(-265f, -2510f));

var<private> global2: i32;

var<private> global3: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1439f, 566f), vec2<f32>(-626f, -1433f), vec2<f32>(-710f, 2541f), vec2<f32>(-3114f, 638f), vec2<f32>(625f, -1810f), vec2<f32>(-378f, -1046f), vec2<f32>(1343f, 131f), vec2<f32>(1114f, -488f), vec2<f32>(-733f, -441f), vec2<f32>(525f, 1210f), vec2<f32>(-1298f, 688f), vec2<f32>(657f, -546f), vec2<f32>(-1000f, -585f), vec2<f32>(-821f, 801f), vec2<f32>(1000f, 676f), vec2<f32>(-134f, 598f), vec2<f32>(1262f, 265f), vec2<f32>(-585f, 345f), vec2<f32>(677f, -319f), vec2<f32>(-2232f, -842f), vec2<f32>(151f, -1070f), vec2<f32>(-2085f, -925f), vec2<f32>(1000f, -324f), vec2<f32>(-1235f, -161f), vec2<f32>(-162f, 381f), vec2<f32>(-242f, 444f), vec2<f32>(1641f, 311f), vec2<f32>(-415f, -426f), vec2<f32>(-703f, 452f), vec2<f32>(-173f, -1134f), vec2<f32>(962f, 153f), vec2<f32>(257f, -324f));

var<private> global4: vec2<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3[_wgslsmith_index_u32(~1u & _wgslsmith_mod_u32(u_input.b.x, arg_1.e), 32u)], arg_1.d.yz)) - global3[_wgslsmith_index_u32(4294967295u, 32u)]), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1672f, arg_1.d.x, -1830f, 356f), vec4<f32>(-916f, -726f, global0.x, 834f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-168f, -431f, -484f, arg_1.d.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.d.x, global0.x, arg_1.d.x, global0.x))))))), arg_1);
    let var_1 = Struct_4(arg_1.c, _wgslsmith_div_i32(arg_1.a, ~(-24216i)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(u_input.c.zyx, vec3<i32>(u_input.c.x, var_0.c.a, -38859i)), u_input.c.xxx), _wgslsmith_mult_vec3_i32(vec3<i32>(~var_0.c.a, firstTrailingBit(arg_1.a), ~2147483647i), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a, 33399i, arg_1.a), u_input.c.yyx))), u_input.c);
    let var_2 = Struct_5(var_0.b.x);
    return var_1.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: u32) -> bool {
    var var_0 = vec4<u32>(3645u, _wgslsmith_div_u32(_wgslsmith_add_u32(max(~30772u, u_input.b.x), _wgslsmith_clamp_u32(arg_2, 23984u, ~35351u)), 45251u), max(1u, reverseBits(1u & global4.x) << (37248u % 32u)), arg_2);
    let var_1 = Struct_4(vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(17369u, u_input.a << (1923u % 32u), 16789u, 30260u >> (u_input.b.x % 32u)), u_input.b), _wgslsmith_mult_u32(func_3(false, Struct_2(u_input.c.x, 1u, vec4<u32>(u_input.a, 1u, 0u, 22691u), vec3<f32>(805f, -1300f, global0.x), u_input.a), !vec2<bool>(arg_0, arg_0)), (global4.x | arg_2) & arg_2), 68803u), u_input.c.x, ~(~(-(i32(-1i) * -47771i))), ~_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 1i, -u_input.c.x, -u_input.c.x)));
    global3 = array<vec2<f32>, 32>();
    let var_2 = 1000f;
    var_0 = select(u_input.b, vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(0u), _wgslsmith_mult_u32(var_1.a.x, arg_2)), ~24630u, u_input.b.x, ~39908u) << (~(~vec4<u32>(1u, u_input.b.x, 3334u, 34189u) << (~vec4<u32>(global4.x, 1u, 4294967295u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u)), false);
    return ~64626u != _wgslsmith_add_u32(13883u, _wgslsmith_dot_vec2_u32(u_input.b.yz, _wgslsmith_mod_vec2_u32(var_1.a.wy, reverseBits(vec2<u32>(411u, global4.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> vec2<bool> {
    global1 = array<vec2<f32>, 30>();
    global4 = vec2<u32>(global4.x, global4.x);
    let var_0 = Struct_2(_wgslsmith_div_i32(-17008i, ~(~2147483647i)) | _wgslsmith_sub_i32(u_input.c.x, arg_0.a), ~74298u, vec4<u32>(_wgslsmith_add_u32(~(u_input.b.x << (0u % 32u)), 30862u), u_input.a | arg_0.b, u_input.a, u_input.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -646f, true)), 234f)), arg_0.d, false)), u_input.a);
    global1 = array<vec2<f32>, 30>();
    var var_1 = _wgslsmith_f_op_f32(491f - _wgslsmith_f_op_f32(-1f));
    return vec2<bool>(any(vec4<bool>(!func_2(true, Struct_5(356f), 65534u), !all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(round(arg_0.d.x)) != _wgslsmith_f_op_f32(trunc(1000f)), true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 32>();
    global3 = array<vec2<f32>, 32>();
    let var_0 = vec2<bool>(false, all(select(func_1(Struct_2(u_input.c.x, 1u, vec4<u32>(u_input.b.x, 0u, 247u, global4.x), vec3<f32>(global0.x, global0.x, global0.x), global4.x), _wgslsmith_f_op_vec2_f32(-global0.yy)), vec2<bool>(false, true), false)));
    let var_1 = vec3<i32>(-2147483647i, abs(_wgslsmith_dot_vec4_i32(~u_input.c, _wgslsmith_sub_vec4_i32(u_input.c, u_input.c))) >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(1u, countOneBits(0u)), u_input.a) % 32u), firstLeadingBit(1i));
    global1 = array<vec2<f32>, 30>();
    var var_2 = any(!select(select(vec4<bool>(false, true, true, true), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(select(var_0.x, var_0.x, var_0.x), true, true, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(vec2<u32>(26506u, ~u_input.b.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 21435u), vec2<u32>(global4.x, global4.x))), 1u);
}

