struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(1i, -48497i, -155i, -23350i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec4<bool> {
    return arg_2;
}

fn func_3() -> bool {
    var var_0 = ~u_input.d | global3.xy;
    global3 = global2.a ^ select(u_input.b, global2.a, !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_1(firstTrailingBit(u_input.b), vec4<f32>(-1047f, global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f + 1243f)), global2.b.x), _wgslsmith_dot_vec3_i32(-firstLeadingBit(u_input.b.xzx), ~max(global3.zwy, global3.xxw) ^ vec3<i32>(global3.x, ~(-2147483647i), global2.a.x >> (36680u % 32u))), global3.x);
    global0 = array<vec2<u32>, 12>();
    let var_2 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, 1356f)), -3290f))), _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(var_1.b.x, -863f))), 1678f)));
    return func_2(20442u, u_input.a.yx, vec4<bool>(all(func_2(~u_input.a.x, vec2<u32>(u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, true)).yy), !(!all(vec3<bool>(true, true, true))), u_input.a.x <= (~u_input.a.x | (u_input.a.x & u_input.a.x)), true)).x;
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = u_input.a.x;
    let var_3 = arg_2.x;
    global3 = -(~var_1.a);
    return Struct_1(-(~firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, arg_3.d, -26458i, global3.x), global2.a, var_1.a))), var_1.b, ~arg_3.c, -(_wgslsmith_sub_i32(2147483647i, global3.x) & (var_1.d | (var_0.d | 49028i))));
}

fn func_1() -> vec4<f32> {
    global0 = array<vec2<u32>, 12>();
    let var_0 = func_4(-386f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, global2.b.x, global2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, -689f, global2.b.x) + global2.b.wxy)))) - global2.b.xzy), select(select(vec4<bool>(true, true, true, true), func_2(~1u, vec2<u32>(u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))), vec4<bool>(true, false, true, func_3()), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), true)), Struct_1(~(global2.a & vec4<i32>(global2.d, 0i, u_input.d.x, global2.a.x)) << (vec4<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(914f, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(abs(-234f)), _wgslsmith_f_op_f32(global2.b.x + -454f)) - vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - -1183f), global2.b.x, _wgslsmith_f_op_f32(1632f * -1000f), global2.b.x)), -u_input.c.x, (-global2.d << (~51971u % 32u)) ^ -2147483647i));
    var var_1 = Struct_1(func_4(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(max(-750f, var_0.b.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(var_0.b.xxx, _wgslsmith_f_op_vec3_f32(global2.b.xyw + vec3<f32>(1594f, 434f, -520f)))))), select(vec4<bool>(any(vec3<bool>(false, true, false)), func_3(), true, u_input.c.x >= 15597i), vec4<bool>(true, true, true, true), true), func_4(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b.xxy))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false), global2.c == 1150i), func_4(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec3_f32(-global2.b.yzy), func_2(0u, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec4<bool>(false, false, true, true)), func_4(var_0.b.x, global2.b.wwz, vec4<bool>(true, false, false, false), var_0)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-764f, -233f, -789f, global2.b.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1679f, -1000f, global2.b.x, 302f)))), vec4<f32>(global2.b.x, global2.b.x, -441f, -1300f))), -func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-681f))), vec3<f32>(1180f, _wgslsmith_f_op_f32(select(var_0.b.x, -1904f, false)), _wgslsmith_f_op_f32(-global2.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), func_4(_wgslsmith_div_f32(1250f, global2.b.x), var_0.b.xww, vec4<bool>(true, true, true, false), func_4(var_0.b.x, global2.b.yyy, vec4<bool>(false, true, false, false), var_0))).d, 1i);
    var_1 = func_4(254f, vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x)), -276f)), var_0.b.x), !vec4<bool>(-var_1.c < (global3.x & 0i), var_0.a.x >= ~global2.d, true, true), func_4(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-425f, -613f, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.b.wyz, global2.b.yyy))), vec4<bool>(true, true, true, true), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(163f))), _wgslsmith_f_op_vec3_f32(-var_1.b.zzw), select(func_2(4294967295u, u_input.a.xz, vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), var_0)));
    global1 = ~(_wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(var_1.d, u_input.c.x)) >> ((1u << (u_input.a.x % 32u)) % 32u)) << (_wgslsmith_sub_u32(abs(countOneBits(~44404u)), reverseBits(u_input.a.x)) % 32u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(var_1.b.x, var_0.b.x, 748f, -1906f))), _wgslsmith_f_op_vec4_f32(-var_0.b), true)), vec4<bool>(true, any(vec4<bool>(false, false, true, true)), true, func_3()))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b - var_0.b) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.b.x, 2282f, var_0.b.x, 248f)))))), var_0.b, vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(u_input.b, reverseBits(_wgslsmith_clamp_vec4_i32(global2.a << (vec4<u32>(4294967295u, u_input.a.x, 1u, 4294967295u) % vec4<u32>(32u)), -u_input.b, vec4<i32>(global2.c, global3.x, global3.x, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-198f, -193f, -527f, global2.b.x)) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, 297f, -1000f, global2.b.x) * global2.b), _wgslsmith_f_op_vec4_f32(func_1()))))), ~u_input.d.x, ~(i32(-1i) * -_wgslsmith_div_i32(var_0.x, global3.x)));
    var var_2 = Struct_1(vec4<i32>(var_1.d, global2.c, var_0.x, global3.x), global2.b, global2.c, -8450i);
    global3 = var_2.a ^ (vec4<i32>(-1i) * -(-vec4<i32>(31867i, var_0.x, 0i, 2147483647i) & var_0));
    var var_3 = vec2<bool>(all(vec2<bool>(true, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(-8488i, var_2.b.x);
}

