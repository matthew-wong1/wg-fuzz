struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    global1 = true;
    let var_0 = select(true, true, true && all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)));
    let var_1 = 17495u;
    global1 = select(var_0, all(select(vec2<bool>(true, var_0 != false), vec2<bool>(var_0, true), vec2<bool>(false, all(vec3<bool>(var_0, var_0, var_0))))), global0.a.x <= 39816i);
    let var_2 = Struct_4(!all(select(select(vec2<bool>(true, true), vec2<bool>(true, var_0), var_0), !vec2<bool>(var_0, true), any(vec3<bool>(true, var_0, var_0)))), global0.a, Struct_3(vec4<bool>(var_0, var_0, false, true & any(vec3<bool>(var_0, false, true))), Struct_1(vec4<i32>(abs(arg_0.b.x), -global0.a.x, 1i << (arg_1.x % 32u), ~2147483647i)), true, arg_0.a));
    return !all(select(!vec4<bool>(var_2.a, true, false, var_0), select(!var_2.c.a, var_2.c.a, vec4<bool>(var_2.c.a.x, var_2.a, var_2.a, false)), all(var_2.c.a)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = !select(false, true, func_3(Struct_5(-2027f, vec3<i32>(global0.a.x, arg_0, -7704i), Struct_1(vec4<i32>(u_input.b, global0.a.x, arg_0, global0.a.x)), Struct_1(vec4<i32>(arg_0, global0.a.x, arg_0, -67327i))), vec4<u32>(countOneBits(35616u), 0u, min(arg_1.x, 51835u), ~0u), select(~global0.a.xyx, vec3<i32>(global0.a.x, -1i, global0.a.x), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), reverseBits(countOneBits(u_input.b))));
    let var_1 = ~(~abs(-global0.a.wxx >> (~vec3<u32>(arg_1.x, arg_1.x, u_input.c) % vec3<u32>(32u))));
    let var_2 = ~u_input.c == (~1u ^ ~select(arg_1.x | u_input.c, 40904u, any(vec2<bool>(false, false))));
    global0 = Struct_1(~((global0.a & max(global0.a, global0.a)) >> (vec4<u32>(firstLeadingBit(1u), 92594u, ~arg_1.x, u_input.c) % vec4<u32>(32u))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1819f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), -106f, all(vec4<bool>(var_2, true, false, var_2))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-290f)), -943f)))), countOneBits(var_1), Struct_1(abs(global0.a)), Struct_1(-global0.a));
    return var_3.c;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = func_2(_wgslsmith_add_i32(-10290i, max(-arg_0.a.x, _wgslsmith_div_i32(u_input.b, global0.a.x))) << (abs(~102445u) % 32u), arg_3.xy);
    let var_0 = !((_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, arg_2.x), 87363i) != 1i) | true);
    global1 = true;
    let var_1 = Struct_3(select(vec4<bool>(var_0, !var_0, !all(vec4<bool>(true, var_0, var_0, true)), true), !select(vec4<bool>(false, false, var_0, true), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, true, var_0), var_0), true), true), arg_0, false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(189f - 1477f))))), -408f)));
    global0 = var_1.b;
    return Struct_1(vec4<i32>(arg_2.x, 13216i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a.x, u_input.b), global0.a.xw) & ~(-arg_0.a.x), _wgslsmith_mult_i32(var_1.b.a.x, i32(-1i) * -26328i)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<u32> {
    return vec2<u32>(~3279u, firstTrailingBit(_wgslsmith_mod_u32(~u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c))) ^ (~u_input.c & 4294967295u));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: f32) -> Struct_5 {
    var var_0 = _wgslsmith_mult_vec2_i32(global0.a.wy ^ global0.a.yz, ~(-(~global0.a.wx)) << (func_5(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2), -673f, arg_2), func_4(func_2(52135i, vec2<u32>(44344u, 1u)), u_input.c, vec4<i32>(u_input.b, global0.a.x, 0i, u_input.a), ~vec3<u32>(7183u, u_input.c, 15338u))) % vec2<u32>(32u)));
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a << (u_input.c % 32u), ~global0.a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), vec2<i32>(global0.a.x, 0i)), var_0.x), global0.a.wxz));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))) + arg_2);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2));
    let var_3 = u_input.b;
    return Struct_5(arg_2, global0.a.xwy, func_2(-var_3, vec2<u32>(~0u << (u_input.c % 32u), ~(~0u))), func_2(var_0.x, vec2<u32>(1u, ~u_input.c)));
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(abs(firstTrailingBit(~global0.a)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 899u, ~78536u), ~(~vec4<u32>(u_input.c, 37380u, arg_0, arg_0))) % vec4<u32>(32u)));
    let var_0 = true;
    global0 = func_4(arg_2.d, 50921u, global0.a, vec3<u32>(_wgslsmith_mod_u32(arg_0, 1u << (firstLeadingBit(arg_0) % 32u)), 1u, 1u << (~countOneBits(arg_0) % 32u)));
    let var_1 = Struct_3(select(vec4<bool>(any(vec2<bool>(true, var_0)), !(!var_0), false, all(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0)))), vec4<bool>(true, any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, false), vec3<bool>(var_0, var_0, false))), all(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), var_0)), var_0 || any(vec2<bool>(var_0, true))), false), func_2(arg_3.x, _wgslsmith_mod_vec2_u32(min(firstLeadingBit(vec2<u32>(1u, 58524u)), ~vec2<u32>(4294967295u, 72726u)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(38146u, u_input.c)), countOneBits(vec2<u32>(arg_0, 60642u))))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, 14725i, -24599i), global0.a), 2147483647i) >= _wgslsmith_div_i32(arg_3.x, -75874i ^ max(arg_3.x, arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, arg_2.a)))) * arg_2.a));
    let var_2 = Struct_1(vec4<i32>(-2147483647i, var_1.b.a.x, -73776i, arg_1));
    return func_1(vec2<bool>(var_1.c, abs(_wgslsmith_add_u32(u_input.c, u_input.c)) < 26268u), -1000f, -2015f).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-115f + 240f) + -551f) != _wgslsmith_f_op_f32(round(-327f))));
    global0 = func_6(_wgslsmith_mod_u32(~(~(u_input.c ^ 75268u)), 4294967295u << (u_input.c % 32u)), abs(_wgslsmith_sub_i32(_wgslsmith_add_i32(-17346i << (u_input.c % 32u), ~u_input.b), -select(-2147483647i, 2147483647i, var_0.x))), func_1(!(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-162f, -542f))), -2250f), vec4<i32>(-40411i, _wgslsmith_dot_vec4_i32(func_4(Struct_1(global0.a), 15209u, global0.a, vec3<u32>(0u, 0u, u_input.c)).a >> (~vec4<u32>(u_input.c, 1u, 1u, u_input.c) % vec4<u32>(32u)), global0.a), i32(-1i) * -reverseBits(-15035i), _wgslsmith_mult_i32(-5123i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(global0.a.x, global0.a.x) | global0.a.wz))));
    global1 = var_0.x;
    let var_1 = vec4<f32>(func_1(vec2<bool>(false, var_0.x), 1045f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -926f)), -668f))).a, 1012f, -539f, -1199f);
    var var_2 = vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) * -1039f));
    var var_3 = ~(firstTrailingBit(~vec2<u32>(u_input.c, u_input.c)) | _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(1u, u_input.c))) & (firstTrailingBit(func_5(_wgslsmith_f_op_vec4_f32(-var_1), func_6(u_input.c, -23952i, Struct_5(var_2.x, vec3<i32>(u_input.a, global0.a.x, 22096i), Struct_1(global0.a), Struct_1(vec4<i32>(global0.a.x, global0.a.x, u_input.a, -2147483647i))), global0.a))) | ~countOneBits(~vec2<u32>(u_input.c, u_input.c)));
    let var_4 = Struct_3(!(!vec4<bool>(!var_0.x, false, !var_0.x, select(var_0.x, false, false))), func_4(func_2(func_2(func_1(vec2<bool>(var_0.x, var_0.x), var_2.x, var_1.x).b.x, vec2<u32>(u_input.c, 9481u) >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u))).a.x, ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 18216u), vec2<u32>(4294967295u, u_input.c))), u_input.c, ~select(vec4<i32>(u_input.b, -68512i, 23006i, -24443i), _wgslsmith_div_vec4_i32(vec4<i32>(38602i, 2147483647i, 2147483647i, -45854i), global0.a), vec4<bool>(var_0.x, true, var_0.x, true)), vec3<u32>(~var_3.x, max(~1u, 0u), u_input.c)), true, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(65691u, ~u_input.c, _wgslsmith_mod_u32(74u, 26585u)), func_5(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_1.x, var_1.x, _wgslsmith_div_f32(1536f, 989f)))), var_4.b).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_4.d, var_4.d)), var_1.x, true)), _wgslsmith_f_op_f32(min(742f, var_2.x)), (var_1.x <= var_2.x) && all(vec3<bool>(var_4.a.x, false, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1140f), !(27187u != (var_3.x << (20060u % 32u))))));
}

