struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1u, vec2<bool>(false, false), vec2<i32>(0i, 2147483647i), vec3<u32>(133023u, 114113u, 0u)));

var<private> global1: Struct_2;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> bool {
    let var_0 = Struct_2(global0.a);
    var var_1 = global0.a.b;
    var_1 = select(vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, all(select(!vec4<bool>(var_1.x, var_1.x, global1.a.b.x, true), !vec4<bool>(global1.a.b.x, var_1.x, true, global0.a.b.x), true))), select(vec2<bool>(global0.a.b.x, true), !vec2<bool>(global2.x, !arg_2.a.b.x), true));
    global2 = !select(select(vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, arg_1.x)), global1.a.b.x), !(!vec3<bool>(false, false, arg_2.a.b.x)), select(vec3<bool>(var_1.x, false, false), select(vec3<bool>(global0.a.b.x, arg_1.x, false), vec3<bool>(true, false, true), vec3<bool>(arg_1.x, global0.a.b.x, false)), !vec3<bool>(arg_2.a.b.x, true, true))), select(select(select(vec3<bool>(arg_1.x, true, var_0.a.b.x), vec3<bool>(true, false, false), vec3<bool>(global0.a.b.x, false, global1.a.b.x)), select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, global0.a.b.x, true), global1.a.b.x), !vec3<bool>(arg_2.a.b.x, global0.a.b.x, global0.a.b.x)), select(select(vec3<bool>(true, global1.a.b.x, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(arg_1.x, global0.a.b.x, global2.x)), vec3<bool>(var_0.a.b.x, var_0.a.b.x, true), vec3<bool>(true, false, true)), true), true);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1116f, arg_0.x)), -237f))))), global0.a.b.x));
    return !any(select(vec2<bool>(true, global0.a.b.x || true), vec2<bool>(true || global1.a.b.x, var_0.a.c.x > -15421i), global2.yx));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global0 = Struct_2(global1.a);
    var var_0 = Struct_2(Struct_1(1u, vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(arg_0.zyw * vec3<f32>(arg_0.x, arg_0.x, 1452f)), vec2<bool>(global2.x, global1.a.b.x), Struct_2(Struct_1(global1.a.d.x, global0.a.b, vec2<i32>(global1.a.c.x, global0.a.c.x), global1.a.d)), global0.a.d.yx), global2.x), reverseBits(~reverseBits(global0.a.c)), global1.a.d));
    return ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.a.a, 0u, min(u_input.c, var_0.a.d.x)), firstTrailingBit(min(vec3<u32>(6320u, 0u, 22633u), vec3<u32>(65566u, u_input.c, 0u))), true), global1.a.d);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    global2 = !vec3<bool>(((i32(-1i) * -2147483647i) << (select(27729u, global1.a.a, true) % 32u)) <= ~global1.a.c.x, true, false);
    var var_0 = !vec4<bool>(!arg_1.a.b.x, !all(vec3<bool>(global1.a.b.x, false, global1.a.b.x)), true, global2.x);
    global2 = select(var_0.wzw, !(!select(vec3<bool>(global2.x, global1.a.b.x, true), var_0.zxx, !var_0.zxw)), var_0.xyz);
    let var_1 = false;
    let var_2 = ~(~max(arg_0, _wgslsmith_mod_vec4_u32(arg_0, arg_0)));
    return Struct_2(Struct_1(arg_0.x, vec2<bool>(!(!global2.x), abs(u_input.d.x) > 1i), select(global1.a.c, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), -vec2<i32>(26723i, u_input.a.x)), select(arg_1.a.b, vec2<bool>(true, false), global2.zz)), vec3<u32>(60825u, 1u, 34808u)));
}

fn func_1() -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(~var_0.a, _wgslsmith_sub_u32(~u_input.c, global0.a.d.x), reverseBits(func_2(vec4<f32>(-1009f, -201f, -233f, -235f))), 13100u), firstLeadingBit(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(21056u, 14303u, 1u, var_0.a)), firstLeadingBit(vec4<u32>(u_input.c, 290u, u_input.c, global1.a.a)), ~vec4<u32>(27933u, u_input.c, global0.a.d.x, u_input.c))), vec4<u32>(u_input.c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, 18065u), vec4<u32>(var_0.a, u_input.c, u_input.c, 67436u)), 1u, min(var_0.d.x, 0u)), 9472u, max(~4294967295u, global1.a.a))), Struct_2(global1.a));
    var_1 = Struct_2(Struct_1(0u, global0.a.b, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d.wyx, u_input.a), _wgslsmith_dot_vec4_i32(u_input.d, countOneBits(vec4<i32>(global0.a.c.x, var_0.c.x, 2147483647i, -2147483647i)))), global0.a.d));
    let var_2 = global1.a;
    global2 = select(!vec3<bool>(!func_3(vec3<f32>(-190f, -139f, 633f), vec2<bool>(global2.x, var_0.b.x), Struct_2(var_1.a), vec2<u32>(var_0.d.x, u_input.c)), !(!var_0.b.x), false), !(!select(select(vec3<bool>(true, var_0.b.x, global1.a.b.x), vec3<bool>(var_2.b.x, false, false), true), select(vec3<bool>(var_0.b.x, false, var_2.b.x), vec3<bool>(true, false, false), var_2.b.x), select(vec3<bool>(false, true, global0.a.b.x), vec3<bool>(var_0.b.x, true, true), vec3<bool>(false, true, true)))), !(!vec3<bool>(global1.a.b.x, var_0.b.x & true, var_2.b.x)));
    return Struct_1(u_input.c, select(!select(!vec2<bool>(var_2.b.x, var_2.b.x), select(global1.a.b, var_1.a.b, vec2<bool>(var_1.a.b.x, global1.a.b.x)), global2.x), !vec2<bool>(true, var_2.b.x), true), vec2<i32>(683i, ~2147483647i << (0u % 32u)), ~countOneBits(vec3<u32>(var_2.d.x, 0u, var_0.a)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(global0.a.d), vec3<u32>(var_2.d.x, var_2.d.x, 8251u)), ~abs(vec3<u32>(var_1.a.a, u_input.c, 1u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = func_4(reverseBits(vec4<u32>(~_wgslsmith_div_u32(76818u, 1u), func_1().d.x, 0u, _wgslsmith_add_u32(~0u, 0u))), Struct_2(func_4(~vec4<u32>(arg_1.a.a, 4294967295u, 50450u, 22097u), arg_1).a)).a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3419f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(789f, 514f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2924f, 624f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 332f))))));
    var var_2 = abs(vec2<i32>(var_0.c.x, 37043i)) | vec2<i32>(u_input.a.x, u_input.a.x);
    let var_3 = Struct_1(0u, global1.a.b, ~vec2<i32>(global0.a.c.x, reverseBits(_wgslsmith_sub_i32(arg_1.a.c.x, 34094i))), var_0.d);
    let var_4 = func_4(~(~(~vec4<u32>(4294967295u, u_input.c, 45375u, u_input.c))), func_4(countOneBits(firstTrailingBit(vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)) | abs(vec4<u32>(34005u, arg_1.a.a, 17848u, 11902u))), arg_1));
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~func_1().d.x, 83108u, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 791f, -489f, -951f))), ~global0.a.d.x), ~select(vec4<u32>(var_0.a, arg_1.a.d.x, 55694u, arg_1.a.a) & vec4<u32>(global1.a.d.x, global0.a.a, 4294967295u, var_0.d.x), vec4<u32>(var_4.a.a, var_0.a, arg_1.a.d.x, 41800u) >> (vec4<u32>(15017u, 12693u, var_4.a.d.x, global1.a.a) % vec4<u32>(32u)), true)), (vec4<u32>(~1u, arg_1.a.d.x << (122956u % 32u), ~4294967295u, global0.a.d.x) ^ ~(~vec4<u32>(1u, var_4.a.d.x, u_input.c, global0.a.d.x))) >> (vec4<u32>(~var_0.a & ~global0.a.a, 9722u, _wgslsmith_clamp_u32(global1.a.a, ~19891u, 4294967295u), var_4.a.d.x) % vec4<u32>(32u)));
}

fn func_6(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = func_4(arg_1, Struct_2(Struct_1(43274u, global1.a.b, global0.a.c, arg_1.xwy)));
    var var_1 = any(vec2<bool>(global0.a.c.x >= -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.a.c.x), vec2<i32>(u_input.d.x, 10852i)), false));
    let var_2 = max(global1.a.c & max(abs(var_0.a.c), func_4(~vec4<u32>(68194u, arg_1.x, 21486u, 4294967295u), var_0).a.c), vec2<i32>(0i, -2147483647i));
    var var_3 = all(select(vec2<bool>(true, !(u_input.b.x == global0.a.c.x)), select(global1.a.b, vec2<bool>(true, false), func_1().b.x), global1.a.b.x));
    global1 = func_4(vec4<u32>(global0.a.d.x, 1u, u_input.c, _wgslsmith_add_u32(abs(var_0.a.a), ~65159u) << (30738u % 32u)), func_4(~arg_1, var_0));
    return Struct_2(Struct_1(_wgslsmith_sub_u32(arg_1.x, 7325u), !(!global0.a.b), abs(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global0.a.c, vec2<i32>(global0.a.c.x, 3294i)), ~vec2<i32>(var_2.x, var_2.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(~34264u, ~global1.a.a, _wgslsmith_div_u32(global1.a.d.x, u_input.c)), global1.a.d)));
}

fn func_7(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec4<u32> {
    let var_0 = arg_2;
    global1 = Struct_2(Struct_1(0u, !vec2<bool>(global0.a.b.x, global1.a.b.x), -(~vec2<i32>(arg_1, 1i) | firstTrailingBit(vec2<i32>(global1.a.c.x, global1.a.c.x))), ~(~abs(global0.a.d))));
    global1 = arg_2;
    let var_1 = Struct_2(global0.a);
    var var_2 = var_1.a.d.x;
    return _wgslsmith_div_vec4_u32(func_5(func_4(~vec4<u32>(1u, 4294967295u, 4294967295u, 0u), func_4(countOneBits(vec4<u32>(var_1.a.d.x, 4683u, 0u, 0u)), Struct_2(arg_2.a))).a.b.x, var_0), ~reverseBits(vec4<u32>(var_0.a.d.x, _wgslsmith_div_u32(4294967295u, var_0.a.a), arg_2.a.d.x, var_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(-2147483647i, global0.a.c.x, func_6(_wgslsmith_f_op_f32(-1964f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) + -508f)), func_5(true, Struct_2(func_1()))), 0i);
    global1 = func_4(vec4<u32>(_wgslsmith_sub_u32(global1.a.a, global1.a.a), 1u & ~global1.a.a, global1.a.d.x, 0u), func_4(vec4<u32>(24221u, _wgslsmith_mult_u32(_wgslsmith_add_u32(global0.a.d.x, global0.a.a), abs(1u)), 170u, u_input.c), func_6(_wgslsmith_f_op_f32(-138f - _wgslsmith_f_op_f32(abs(544f))), ~vec4<u32>(global0.a.a, global1.a.d.x, global0.a.d.x, 30833u))));
    var var_1 = func_6(1049f, _wgslsmith_mod_vec4_u32(var_0, min(min(vec4<u32>(global1.a.a, 4294967295u, u_input.c, global1.a.a), vec4<u32>(0u, global0.a.d.x, global0.a.a, 8617u)) >> (vec4<u32>(global1.a.d.x, 31798u, 8148u, 0u) % vec4<u32>(32u)), select(~vec4<u32>(var_0.x, 0u, 4294967295u, 31745u), abs(var_0), !vec4<bool>(false, global0.a.b.x, global0.a.b.x, global1.a.b.x)))));
    var var_2 = global0.a.b.x;
    let var_3 = Struct_2(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zxw, u_input.b.x, 346f, global1.a.a, 1f);
}

