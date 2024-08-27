struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: i32 = 21854i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> vec4<u32> {
    return u_input.b;
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = select(vec2<i32>(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 5u)]), -75281i >> (~reverseBits(u_input.b.x) % 32u)), u_input.a, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    global1 = ~2147483647i;
    global1 = abs(u_input.a.x);
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return vec3<u32>(39175u, 41609u, _wgslsmith_div_u32(arg_0.a.x, _wgslsmith_sub_u32((u_input.b.x >> (1u % 32u)) << (max(7426u, u_input.b.x) % 32u), 3811u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<i32, 5>();
    var var_0 = vec3<u32>(u_input.b.x, firstTrailingBit(4294967295u), arg_1.b.a.x);
    var_0 = vec3<u32>(~13036u, abs(arg_0.x) >> (((_wgslsmith_sub_u32(arg_1.a.x, 4294967295u) ^ arg_2.b) << (1u % 32u)) % 32u), 4294967295u);
    var var_1 = -(~u_input.a.x);
    var_1 = abs(-(~(~1i)));
    return ~0i;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> u32 {
    global0 = array<i32, 5>();
    var var_0 = -(~func_4(func_3(arg_3), arg_1.c, arg_1.c.b, Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, arg_2), vec2<u32>(arg_3.a.x, 49573u)), func_3(Struct_1(vec2<u32>(u_input.b.x, arg_1.b.a.x), arg_3.a.x)).x)));
    let var_1 = !vec4<bool>(!any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true))), true && (any(vec3<bool>(true, true, true)) && true), any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(false, false, true))), true);
    var var_2 = arg_1.c.b.b;
    var var_3 = -377f;
    return arg_1.c.b.a.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = all(select(select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), select(vec2<bool>(false, all(vec2<bool>(true, true))), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true))), true));
    let var_1 = Struct_4(arg_1.e.x >> (~arg_0.a.x % 32u), _wgslsmith_add_i32(countOneBits(-(~global0[_wgslsmith_index_u32(arg_1.c.b.a.x, 5u)])), 1i), Struct_3(1u, Struct_1(reverseBits(~vec2<u32>(1u, 12506u)), reverseBits(1u)), arg_1.c, _wgslsmith_f_op_vec2_f32(step(arg_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-764f, 2958f), vec2<f32>(1378f, -1661f)))))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, arg_2.x, u_input.a.x)), arg_2.wwy), vec3<i32>(i32(-1i) * -20659i, 1i, arg_1.e.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1773f, arg_1.d.x, -552f, 261f) - vec4<f32>(arg_1.d.x, 1000f, -1412f, arg_1.d.x)) - vec4<f32>(arg_1.d.x, 1096f, 240f, 1530f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.d.x, 177f, 281f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 1858f, 322f, 699f)))))))), -1i);
    let var_2 = !(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    var var_3 = ~(~var_1.c.b.a.x);
    var_0 = var_2.x;
    return var_1.c.e ^ var_1.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    var var_0 = (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 6620u, u_input.b.x, 5067u), vec4<u32>(1u, 1u, u_input.b.x, 89204u)) << (vec4<u32>(u_input.b.x, u_input.b.x, 47131u, u_input.b.x) % vec4<u32>(32u))) << (func_1() % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u));
    var var_1 = Struct_5(~u_input.b, func_5(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_0.xw, var_0.xy), var_0.xz), _wgslsmith_add_u32(4294967295u, u_input.b.x)), Struct_3(min(1u, func_2(u_input.a.x, Struct_3(u_input.b.x, Struct_1(vec2<u32>(5670u, var_0.x), var_0.x), Struct_2(u_input.b, Struct_1(vec2<u32>(4294967295u, 0u), 1u)), vec2<f32>(-358f, 885f), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), 12339u, Struct_1(u_input.b.yy, var_0.x))), Struct_1(~u_input.b.zw, ~78793u), Struct_2(vec4<u32>(u_input.b.x, 1u, var_0.x, 94577u), Struct_1(vec2<u32>(u_input.b.x, 75922u), var_0.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 271f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(862f, 1223f) - vec2<f32>(-258f, -1384f)))), firstLeadingBit(abs(vec3<i32>(-1i, global0[_wgslsmith_index_u32(7106u, 5u)], u_input.a.x)))), countOneBits(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 27943i)))), Struct_2(max(~(~vec4<u32>(var_0.x, 61016u, var_0.x, var_0.x)), ~(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b.x) | u_input.b)), Struct_1(vec2<u32>(u_input.b.x, var_0.x), ~(~u_input.b.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    global0 = array<i32, 5>();
    var_1 = Struct_5(vec4<u32>(_wgslsmith_clamp_u32(var_1.c.b.b, _wgslsmith_sub_u32(~u_input.b.x, 41949u), 0u), _wgslsmith_add_u32(func_2(-2147483647i, Struct_3(9418u, var_1.c.b, Struct_2(vec4<u32>(0u, var_1.a.x, var_0.x, 1u), Struct_1(vec2<u32>(var_1.a.x, u_input.b.x), u_input.b.x)), vec2<f32>(121f, 1448f), vec3<i32>(9710i, var_1.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)])), 1u, var_1.c.b), var_1.a.x), ~89798u, func_3(Struct_1(~var_0.yx, func_2(global0[_wgslsmith_index_u32(4294967295u, 5u)], Struct_3(u_input.b.x, var_1.c.b, Struct_2(vec4<u32>(1u, 18327u, var_0.x, 12934u), var_1.c.b), vec2<f32>(-323f, -1018f), var_1.b), var_1.c.b.a.x, Struct_1(var_1.a.xw, 4294967295u)))).x), vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 10616i, 30597i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 5u)], -1i, 1i), select(vec3<bool>(false, false, var_1.d.x), vec3<bool>(var_1.d.x, true, var_1.d.x), var_1.d.x)), var_1.b), 2147483647i), Struct_2(u_input.b, Struct_1(~vec2<u32>(var_1.a.x, u_input.b.x) | (u_input.b.xz >> (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))), 4294967295u)), vec2<bool>(var_1.d.x, true));
    global1 = -73484i;
    var var_2 = u_input.b << (_wgslsmith_mult_vec4_u32(~u_input.b, abs(~vec4<u32>(22745u, var_1.c.b.a.x, u_input.b.x, 44897u))) % vec4<u32>(32u));
    var_0 = vec4<u32>(var_0.x, _wgslsmith_dot_vec3_u32(countOneBits(var_0.yxx), vec3<u32>(u_input.b.x, var_0.x, var_1.c.b.a.x)) ^ 44838u, var_0.x ^ u_input.b.x, ~(~(var_2.x >> (0u % 32u)))) << (reverseBits(vec4<u32>(~(~1115u), min(func_1().x, var_0.x), var_2.x, ~28972u)) % vec4<u32>(32u));
    var var_3 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1637f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(203f + -958f), _wgslsmith_f_op_f32(max(-589f, 296f)), true))))), abs(_wgslsmith_div_u32(21644u, var_2.x)), u_input.a.x);
}

