struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = 1i;
    global1 = array<vec3<i32>, 5>();
    global0 = vec3<bool>(any(select(vec4<bool>(true, u_input.b > 0u, any(vec4<bool>(true, global2.x, global2.x, global0.x)), true), select(vec4<bool>(arg_0, true, global2.x, arg_0), select(vec4<bool>(true, false, true, true), vec4<bool>(global0.x, global0.x, global0.x, global2.x), vec4<bool>(arg_0, arg_0, false, true)), all(global0.zz)), global2.x)), u_input.c >= 29528i, !(!global2.x));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, -1983f, 610f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1489f, -1000f, -214f) * vec3<f32>(-504f, -610f, 462f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, 235f, -824f))), vec3<f32>(1883f, -793f, _wgslsmith_div_f32(444f, -651f)), vec3<bool>(any(vec3<bool>(true, true, global2.x)), true | global0.x, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1522f, _wgslsmith_f_op_f32(1165f - 195f), any(vec2<bool>(arg_0, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(879f, -1217f))), -342f)));
    return _wgslsmith_add_i32(var_0, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-36006i, 1i, countOneBits(u_input.a)), max(select(vec3<i32>(var_0, 17997i, var_0), vec3<i32>(u_input.a, global3.x, -18407i), vec3<bool>(arg_0, global0.x, true)), countOneBits(vec3<i32>(global3.x, var_0, u_input.a)))), _wgslsmith_sub_i32(firstTrailingBit(u_input.c << (u_input.b % 32u)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, global3.x)), 3538i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_3(true);
    var var_1 = ~(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 26884u, arg_0.x, u_input.b), vec4<u32>(u_input.b, arg_0.x, arg_0.x, 0u) << (vec4<u32>(arg_0.x, 57341u, 68967u, 1u) % vec4<u32>(32u)))) ^ ~max(select(vec4<u32>(u_input.b, 1u, arg_0.x, u_input.b), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u), vec4<bool>(arg_1.a.x, arg_1.a.x, global2.x, arg_2.x)), ~vec4<u32>(31823u, u_input.b, 1u, arg_0.x)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1244f, 607f, 1397f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1316f, 1510f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1337f, -1000f, -1996f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -152f, -259f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1125f, 217f, -1186f) + vec3<f32>(817f, -1469f, -654f)))), select(!select(arg_1.a.yxy, arg_1.a.zyx, arg_2), select(arg_1.a.yzx, arg_1.a.xyx, arg_2), select(vec3<bool>(global2.x, true, global2.x), arg_2, global2.x)))));
    let var_3 = _wgslsmith_sub_u32(arg_0.x, _wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4335u, 1u, 4294967295u, arg_0.x), vec4<u32>(0u, 0u, 19057u, arg_0.x)), vec4<u32>(52077u, 39985u, var_1.x, var_1.x))) << (0u % 32u));
    global0 = select(vec3<bool>(all(select(arg_1.a.wz, global2.zx, global2.xz)) & true, true, !((true || global2.x) & all(arg_2))), vec3<bool>(any(select(select(arg_1.a.yx, arg_1.a.zz, false), arg_1.a.yx, global0.x)), arg_2.x, false), select(select(vec3<bool>(false, all(vec2<bool>(global2.x, global2.x)), true), !select(arg_2, arg_2, vec3<bool>(global0.x, true, false)), all(vec4<bool>(global2.x, false, global2.x, arg_2.x))), !vec3<bool>(!global2.x, true, var_2.x > 1365f), select(select(select(vec3<bool>(global2.x, true, true), arg_2, arg_1.a.x), select(vec3<bool>(arg_2.x, false, false), arg_1.a.ywy, global0.x), false), select(select(arg_2, arg_1.a.wwz, vec3<bool>(true, true, global2.x)), !arg_1.a.zyy, true), true)));
    return Struct_1(select(arg_1.a, !(!arg_1.a), vec4<bool>(true, all(!arg_1.a.xxx), any(vec3<bool>(arg_2.x, arg_2.x, global0.x)), all(arg_1.a) != global0.x)));
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = select(func_2(vec2<u32>(26231u, _wgslsmith_mod_u32(reverseBits(u_input.b), ~34277u)), Struct_1(func_2(countOneBits(vec2<u32>(13232u, 1u)), func_2(vec2<u32>(4294967295u, u_input.b), Struct_1(vec4<bool>(global2.x, arg_0.a.x, global2.x, global0.x)), vec3<bool>(global2.x, true, global2.x)), arg_0.a.xxy).a), vec3<bool>(global2.x, arg_0.a.x && any(arg_0.a.yzx), (global3.x | global3.x) <= u_input.a)).a.wz, global2.yx, vec2<bool>(all(global2.xy), global2.x));
    let var_1 = !vec3<bool>(arg_0.a.x, true, false);
    let var_2 = u_input.a;
    var var_3 = var_1;
    var_0 = !var_3.yz;
    return firstTrailingBit(~vec2<u32>(0u, _wgslsmith_div_u32(1u, u_input.b << (16633u % 32u))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(func_4(func_2(vec2<u32>(1u, u_input.b), Struct_1(vec4<bool>(false, true, true, global2.x)), vec3<bool>(true, global2.x, global0.x))), vec2<u32>(u_input.b & 37659u, 3491u)), ~select(abs(func_4(Struct_1(vec4<bool>(true, global0.x, true, false)))), vec2<u32>(u_input.b, 1u), select(!global2.xz, select(vec2<bool>(global0.x, global2.x), global2.zx, false), vec2<bool>(global2.x, true))));
    let var_1 = ((reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 652u), vec3<u32>(u_input.b, 31015u, arg_0))) >> (~(vec3<u32>(var_0.x, var_0.x, arg_0) ^ vec3<u32>(3839u, u_input.b, u_input.b)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_sub_u32(abs(arg_0), _wgslsmith_clamp_u32(arg_0, u_input.b, 143407u)), var_0.x, u_input.b) % vec3<u32>(32u))) >> (~vec3<u32>(4294967295u, countOneBits(_wgslsmith_div_u32(24204u, u_input.b)), arg_0) % vec3<u32>(32u));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(769f, -239f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1290f * 603f)))))), _wgslsmith_div_u32(var_1.x, u_input.b), func_2(vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(6253u, 1u, u_input.b)), vec3<u32>(4294967295u, 31089u, 5248u)), 4294967295u), Struct_1(vec4<bool>(select(true, false, global0.x), true, global0.x, true)), !select(!vec3<bool>(global2.x, true, true), !vec3<bool>(true, global0.x, global2.x), !vec3<bool>(true, global2.x, global0.x))).a.yxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-734f + -493f), _wgslsmith_f_op_f32(f32(-1f) * -826f))))));
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    global3 = vec2<i32>(-(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 40327i), vec2<i32>(-5261i, 0i)))), arg_1);
    var var_0 = -1036f;
    var var_1 = any(!arg_2.c);
    var_1 = !arg_3.c.x;
    var var_2 = func_2(arg_0.zz, func_2(vec2<u32>(~1u, arg_3.b), Struct_1(!vec4<bool>(false, arg_3.c.x, global2.x, arg_3.c.x)), func_2(~(~vec2<u32>(arg_3.b, 0u)), func_2(abs(vec2<u32>(arg_0.x, arg_3.b)), Struct_1(vec4<bool>(arg_3.c.x, global0.x, arg_2.c.x, false)), select(vec3<bool>(arg_2.c.x, arg_2.c.x, global0.x), arg_2.c, arg_3.c)), !arg_3.c).a.xxw), select(arg_2.c, arg_3.c, !(!(!arg_2.c)))).a.x;
    return arg_2;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>) -> i32 {
    var var_0 = arg_0.b;
    var var_1 = Struct_3(arg_0.a, firstLeadingBit(arg_0.b) >> (58718u % 32u), vec3<bool>(global0.x, global0.x, _wgslsmith_clamp_u32(~arg_0.b, select(51473u, arg_1.x, false), arg_1.x) > 58900u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(max(func_1(1u).a, arg_0.d))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1436f, 180f, _wgslsmith_f_op_f32(var_1.a - 658f), arg_0.d)), firstLeadingBit(_wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, arg_1.x, arg_1.x, var_1.b) | vec4<u32>(4294967295u, arg_0.b, arg_0.b, 45406u)), abs(~vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)))), 31655i);
    let var_3 = ~(~vec2<u32>(35033u, var_2.b.x));
    global1 = array<vec3<i32>, 5>();
    return max(firstTrailingBit(global3.x ^ min(var_2.c << (4294967295u % 32u), _wgslsmith_sub_i32(22509i, 0i))), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 5>();
    var var_0 = u_input.b;
    global3 = _wgslsmith_div_vec2_i32(firstTrailingBit(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, 31583i), vec2<i32>(-2147483647i, 0i))) ^ vec2<i32>(min(select(0i, 44359i, true), -global3.x), u_input.a), vec2<i32>(-1i, func_6(func_5(min(vec4<u32>(63151u, 32854u, u_input.b, 59976u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b)), _wgslsmith_mult_i32(u_input.a, -2160i), func_1(u_input.b), func_1(u_input.b)), vec2<u32>(1u, u_input.b))));
    let var_1 = func_5(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.b), u_input.b, 3080u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 31401u, 22965u), vec4<u32>(u_input.b, u_input.b, 1u, 0u)), ~112496u) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 7069u), func_5(vec4<u32>(32709u, u_input.b, u_input.b, u_input.b), global3.x, Struct_3(-810f, 103850u, vec3<bool>(global2.x, global2.x, true), 509f), Struct_3(426f, 0u, vec3<bool>(false, global2.x, global0.x), -457f)).b) % 32u)), global3.x, Struct_3(-1000f, abs(u_input.b), !func_1(u_input.b | u_input.b).c, _wgslsmith_f_op_f32(f32(-1f) * -2134f)), func_1(16861u));
    global2 = var_1.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(max(565f, var_1.a))), func_5(vec4<u32>(var_1.b, 7439u, u_input.b, 1u) << (vec4<u32>(7913u, var_1.b, u_input.b, 4294967295u) % vec4<u32>(32u)), ~global3.x, func_1(68453u), func_5(vec4<u32>(u_input.b, u_input.b, var_1.b, 0u), u_input.c, var_1, Struct_3(229f, 0u, var_1.c, var_1.d))).d), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f), -756f), var_1.a))) + vec2<f32>(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(max(-1006f, _wgslsmith_f_op_f32(-var_1.d)))), _wgslsmith_f_op_f32(trunc(var_1.d))));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(588f, _wgslsmith_f_op_f32(max(1000f, var_2.x)), var_1.a, 498f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_2.x, var_2.x, -1575f))))), func_1(~var_1.b).c.x)), vec4<u32>(u_input.b, var_1.b, ~_wgslsmith_div_u32(~4877u, 1u), _wgslsmith_clamp_u32(abs(1u) << (func_5(vec4<u32>(3694u, 1u, 1u, 56942u), u_input.a, var_1, Struct_3(var_1.a, u_input.b, vec3<bool>(global2.x, global2.x, false), var_1.a)).b % 32u), 84662u, u_input.b)), -_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(u_input.c, 2147483647i), -1i, ~1i));
    var var_4 = vec2<i32>(-2688i, var_3.c);
    global3 = vec2<i32>(_wgslsmith_mod_i32(var_4.x, -_wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(32975i, -2147483647i), vec2<i32>(global3.x, 19176i)))), global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -30441i), global3.x), _wgslsmith_f_op_vec4_f32(step(var_3.a, var_3.a)), ~abs(vec4<u32>(var_1.b, u_input.b, 4294967295u, var_1.b) << ((var_3.b >> (var_3.b % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2) * vec2<f32>(var_3.a.x, -620f)) * vec2<f32>(_wgslsmith_f_op_f32(max(var_2.x, var_3.a.x)), -169f))), vec2<f32>(_wgslsmith_f_op_f32(1065f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(145f))))), var_3.a.x));
}

