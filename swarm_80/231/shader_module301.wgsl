struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(232f, -731f), vec2<f32>(-118f, 152f), vec2<f32>(208f, -349f), vec2<f32>(816f, -1278f), vec2<f32>(1000f, -1000f), vec2<f32>(-1409f, 714f), vec2<f32>(-1076f, 1422f), vec2<f32>(1649f, 865f), vec2<f32>(775f, -2409f), vec2<f32>(-895f, -1641f), vec2<f32>(818f, 1257f), vec2<f32>(-1224f, -1166f), vec2<f32>(-1702f, 695f), vec2<f32>(583f, 496f), vec2<f32>(-203f, 729f), vec2<f32>(1000f, 1157f), vec2<f32>(457f, -1775f), vec2<f32>(-1137f, -1105f), vec2<f32>(-1000f, 981f), vec2<f32>(-1667f, -786f), vec2<f32>(-1168f, 1316f), vec2<f32>(-348f, -647f), vec2<f32>(-1374f, -568f), vec2<f32>(496f, -791f), vec2<f32>(-857f, -1375f), vec2<f32>(432f, -273f), vec2<f32>(2048f, 209f), vec2<f32>(-350f, 573f), vec2<f32>(168f, -1236f), vec2<f32>(223f, -908f), vec2<f32>(-257f, -980f));

var<private> global4: Struct_4 = Struct_4(vec3<u32>(1u, 47836u, 1u), vec2<bool>(true, true), 1i, vec2<u32>(1u, 4294967295u), false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = global4.b;
    global3 = array<vec2<f32>, 31>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c, -54428i, -1i) << (global4.a % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-7643i, -2147483647i, 30257i) << (vec3<u32>(global4.a.x, 1u, global4.d.x) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.d.x, global1.x))), vec2<i32>(global4.c, 2147483647i))), u_input.d);
    let var_2 = global4.c;
    let var_3 = Struct_3(Struct_1(global4.a, u_input.d << (vec2<u32>(~0u, global4.a.x | u_input.a.x) % vec2<u32>(32u)), ~abs(~global4.c), true));
    return vec2<u32>(var_3.a.a.x, ~1u);
}

fn func_2() -> Struct_3 {
    global0 = -24165i;
    let var_0 = vec4<u32>(0u, global4.d.x, ~1u, 4294967295u);
    let var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 26909u, u_input.a.x), vec4<u32>(10037u, 12478u, 0u, 73932u)), abs(firstLeadingBit(45046u))), _wgslsmith_mod_u32(var_0.x, _wgslsmith_add_u32(138532u, max(var_0.x, var_0.x)))));
    global3 = array<vec2<f32>, 31>();
    global4 = Struct_4(global4.a, vec2<bool>(true, all(vec4<bool>(true, true, all(vec4<bool>(false, false, true, global2.x)), true))), global1.x, min(func_3(), abs(vec2<u32>(4294967295u, 70583u)) & vec2<u32>(global4.a.x >> (4294967295u % 32u), 4294967295u)), true);
    return Struct_3(Struct_1(global4.a, _wgslsmith_mult_vec2_i32(vec2<i32>(global4.c, i32(-1i) * -35446i), u_input.d), global1.x, all(select(vec3<bool>(true, global4.b.x, global2.x), !vec3<bool>(global4.e, global2.x, true), true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> u32 {
    global3 = array<vec2<f32>, 31>();
    let var_0 = Struct_1(global4.a, arg_1.a.b, _wgslsmith_clamp_i32(select(-2147483647i, ~global1.x, func_2().a.d) & 1i, u_input.b, -29851i), !func_2().a.d == arg_1.a.d);
    global4 = Struct_4(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, ~var_0.a.x), vec3<u32>(31240u, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, arg_0.x, 30307u, arg_1.a.a.x), vec4<u32>(u_input.a.x, global4.d.x, arg_1.a.a.x, arg_1.a.a.x)))) << (~vec3<u32>(var_0.a.x, ~19407u, arg_1.a.a.x) % vec3<u32>(32u)), vec2<bool>(arg_1.a.d & false, true), global1.x, max(_wgslsmith_div_vec2_u32(var_0.a.zx, vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, arg_1.a.a.x), 28580u ^ var_0.a.x)), vec2<u32>(u_input.a.x, ~(4294967295u | arg_0.x))), !global2.x & any(!(!vec4<bool>(arg_1.a.d, arg_1.a.d, false, global4.e))));
    global0 = u_input.c;
    global4 = Struct_4(vec3<u32>(59240u, ~arg_0.x, firstLeadingBit(~(~u_input.a.x))), !(!(!arg_2)), -2147483647i, u_input.a, all(vec3<bool>(true, true, arg_2.x)));
    return ~_wgslsmith_clamp_u32(50579u | func_2().a.a.x, arg_0.x, _wgslsmith_sub_u32(53088u, select(1u, ~u_input.a.x, !arg_1.a.d)));
}

fn func_1() -> Struct_4 {
    global4 = Struct_4(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(func_4(~global4.a.xz, func_2(), !global4.b), ~u_input.a.x | firstLeadingBit(global4.a.x)), ~_wgslsmith_sub_u32(28943u, u_input.a.x)), !select(global4.b, select(vec2<bool>(global4.e, false), vec2<bool>(global4.b.x, true), any(vec4<bool>(global2.x, true, global4.e, false))), vec2<bool>(true, all(vec2<bool>(true, false)))), -2147483647i, ~(~((global4.a.xx << (u_input.a % vec2<u32>(32u))) | ~vec2<u32>(1u, u_input.a.x))), true);
    global2 = vec2<bool>(global2.x, false);
    global2 = vec2<bool>(all(vec3<bool>(~global4.c == firstLeadingBit(20950i), global4.e, true)), global2.x);
    let var_0 = global4.d.x;
    global2 = select(select(select(select(global4.b, vec2<bool>(global2.x, global4.b.x), -1i >= global1.x), select(select(vec2<bool>(false, false), vec2<bool>(true, false), global4.b.x), select(global4.b, global4.b, false), vec2<bool>(true, global4.e)), vec2<bool>(global4.b.x, global2.x | false)), select(global4.b, !global4.b, select(global4.b, vec2<bool>(false, false), select(vec2<bool>(global2.x, global4.e), vec2<bool>(true, global4.b.x), global2.x))), global4.b), !select(global4.b, !(!global4.b), vec2<bool>(any(vec4<bool>(true, global2.x, global2.x, global4.e)), global2.x && global2.x)), vec2<bool>(true, true));
    return Struct_4(countOneBits(firstLeadingBit(global4.a)), global4.b, min(0i, i32(-1i) * -2147483647i), ~(~(~vec2<u32>(18111u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 12003u))), !global4.b.x || (!(!global4.e) || func_2().a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~global4.a.x), u_input.a.x, max(u_input.a.x, ~34530u));
    var var_1 = func_1();
    var var_2 = ~19235i;
    let var_3 = true;
    let var_4 = var_1.a.xz;
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(2208f, -481f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(963f))))))));
    global1 = vec2<i32>(83158i, ~(~(-1i)));
    global2 = vec2<bool>(all(var_1.b), !all(global4.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1091f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1641f)))))), global4.c);
}

