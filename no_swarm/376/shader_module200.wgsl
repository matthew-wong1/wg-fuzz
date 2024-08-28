struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: Struct_5;

var<private> global2: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1211f, 468f), vec2<f32>(741f, 945f), vec2<f32>(1046f, 1232f), vec2<f32>(939f, 2025f), vec2<f32>(467f, -1076f), vec2<f32>(-580f, 823f), vec2<f32>(740f, -488f), vec2<f32>(-485f, -323f), vec2<f32>(-1000f, -462f), vec2<f32>(-2193f, 616f), vec2<f32>(-1476f, 185f), vec2<f32>(-867f, -588f), vec2<f32>(329f, -685f), vec2<f32>(540f, -187f), vec2<f32>(-562f, -1621f), vec2<f32>(-633f, -306f), vec2<f32>(366f, -203f), vec2<f32>(-1000f, 339f), vec2<f32>(953f, -205f), vec2<f32>(-2153f, -685f), vec2<f32>(-370f, 1000f), vec2<f32>(-620f, -1000f), vec2<f32>(-249f, -271f), vec2<f32>(134f, -359f), vec2<f32>(-145f, -815f), vec2<f32>(-179f, 2573f), vec2<f32>(1530f, -1482f), vec2<f32>(2814f, -1000f), vec2<f32>(-194f, -426f), vec2<f32>(873f, -272f));

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_2(global1.b.e.d, !(!select(global0.wx, vec2<bool>(global0.x, global3.x), true)), arg_1.c, arg_1.a, 1087f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(260f, global1.b.b.x, var_0.d.a.x, 1725f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.b.b), global1.b.b, !vec4<bool>(global1.b.e.a.b, global0.x, global0.x, global0.x)))), arg_0.b));
    var var_2 = Struct_5(arg_0.d.x, global1.b, global2[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_sub_u32(global1.b.e.c.x, ~global1.b.e.c.x)), 30u)], _wgslsmith_sub_vec2_i32(countOneBits(-max(vec2<i32>(global1.b.d.x, global1.a), vec2<i32>(0i, 43747i))), u_input.a.zx >> (global1.b.e.c.zz % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1487f, -1500f, var_0.d.a.x) * global1.b.b.xyx)) * var_1.xyw)));
    let var_3 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), arg_1.b, var_2.b.e.a.b), global1.b.e.b), var_0.b, vec2<bool>(global0.x, true)), !global0.xx, false);
    var_0 = arg_0.e;
    return firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c.x >> (arg_1.c.x % 32u), 63851u, ~899u, var_0.c.x), vec4<u32>(4294967295u, ~64601u, arg_0.c, _wgslsmith_div_u32(global1.b.e.c.x, 20656u)), ~(~vec4<u32>(arg_0.c, var_2.b.c, var_2.b.c, arg_1.c.x))) ^ vec4<u32>(12583u, abs(23810u), max(7435u, 36160u) | (1u ^ var_0.c.x), var_0.c.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = (global1.b.e.c.x << (global1.b.e.c.x % 32u)) >> (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(70121u, global1.b.e.c.x, global1.b.c, global1.b.e.c.x), func_3(global1.b, global1.b.e, u_input.c.x)) << (1u % 32u)) % 32u);
    var var_1 = Struct_4(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec4_f32(-global1.b.b), global1.b.e.c.x, -vec3<i32>(43855i, 28267i, u_input.a.x), Struct_2(global1.b.e.d, arg_0, vec3<u32>(0u, _wgslsmith_sub_u32(var_0, 22866u << (global1.b.e.c.x % 32u)), var_0), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(global1.b.c, 30u)]))), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) * -1000f)));
    var var_2 = 1i;
    var var_3 = global1.b.e.c;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-366f, var_1.b.x))));
    return var_1.e.d;
}

fn func_1() -> vec3<bool> {
    global1 = Struct_5(~(-_wgslsmith_div_i32(0i, -2147483647i)), Struct_4(_wgslsmith_f_op_f32(-1632f - _wgslsmith_f_op_f32(exp2(global1.b.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.x, global1.e.x, _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(floor(global1.b.b.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(610f, global1.c.x, global1.b.a, 1243f), global1.b.b)) + vec4<f32>(-877f, global1.c.x, global1.e.x, 656f))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, global1.b.c) | global1.b.e.c.yx), global1.b.e.c.yz), u_input.a.zzz, Struct_2(func_2(vec2<bool>(global0.x, global1.b.e.b.x), global1.e.yx), vec2<bool>(global0.x, global1.b.d.x <= 40022i), global1.b.e.c << (vec3<u32>(4294967295u, global1.b.c, 1u) % vec3<u32>(32u)), Struct_1(global1.e.zx, global0.x && false), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.b.b.x, 1567f))))), vec2<f32>(-435f, _wgslsmith_f_op_f32(-global1.e.x)), abs(u_input.a.xx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global1.b.b.wzz)), _wgslsmith_f_op_vec3_f32(global1.b.b.xxx + vec3<f32>(1748f, -209f, global1.b.a)), global3.xzz))))));
    let var_0 = vec4<bool>(global0.x, true, global1.b.e.a.b, global0.x);
    var var_1 = max(global1.b.e.c.yz, vec2<u32>(reverseBits(~global1.b.e.c.x), ~(~_wgslsmith_clamp_u32(4294967295u, global1.b.e.c.x, global1.b.e.c.x))));
    var_1 = global1.b.e.c.xz;
    global2 = array<vec2<f32>, 30>();
    return !var_0.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.b.e.c.xy & global1.b.e.c.xx;
    var var_1 = global1.d;
    global0 = vec4<bool>(!any(global0.yx), true, global1.b.e.a.b, !(all(func_1()) | (false && global0.x)));
    var_1 = _wgslsmith_div_vec2_i32(~u_input.a.xw, -(~u_input.c.zy | u_input.c.xz));
    global0 = vec4<bool>(any(!global0.wxz), !global0.x, !global3.x, false);
    let var_2 = global1.b.e;
    let var_3 = Struct_5(_wgslsmith_sub_i32(global1.a, 25903i) >> (_wgslsmith_dot_vec3_u32(~var_2.c, vec3<u32>(33688u, global1.b.c, _wgslsmith_add_u32(53141u, 48826u))) % 32u), global1.b, func_2(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(global1.b.a * _wgslsmith_f_op_f32(trunc(global1.b.a))), _wgslsmith_f_op_f32(1655f - func_2(vec2<bool>(false, false), var_2.d.a).a.x))).a, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-abs(u_input.c.yz), vec2<i32>(u_input.a.x, u_input.b ^ u_input.a.x)), -(select(vec2<i32>(var_1.x, 77613i), global1.d, global0.x) | (u_input.c.yx << (vec2<u32>(var_2.c.x, var_2.c.x) % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-global1.b.b.xyx));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(reverseBits(var_0.x), global1.b.c | var_3.b.e.c.x, var_2.c.x << (78094u % 32u), ~var_3.b.e.c.x)) >> (vec4<u32>(~var_0.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(45824u, var_0.x), vec2<u32>(var_2.c.x, var_0.x)) % 32u), ~(~global1.b.c), ~0u << (_wgslsmith_div_u32(global1.b.c, var_3.b.e.c.x) % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, var_3.b.e.c.x), abs(var_2.c.xz))) % vec4<u32>(32u)), ~115038u, _wgslsmith_sub_u32(global1.b.c, var_3.b.c));
}

