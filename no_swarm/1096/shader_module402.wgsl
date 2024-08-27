struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> f32 {
    var var_0 = arg_1.a;
    global0 = array<Struct_2, 9>();
    let var_1 = global1.a.a.zx;
    var_0 = arg_1.a;
    global0 = array<Struct_2, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1814f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<Struct_2, 9>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(335f * arg_0.x)))) - _wgslsmith_f_op_f32(abs(global1.d.x))));
    global1 = Struct_3(arg_2, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.e), -1584f));
    global1 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-18657i, arg_2.c, global1.a.a.x, global1.a.c), vec4<i32>(global1.a.a.x, -1i, arg_2.a.x, global1.a.d)), select(min(-2147483647i, -68951i), abs(-16237i), global1.b), abs(_wgslsmith_add_i32(1i, 26829i))), vec4<u32>(~(~global1.a.b.x), u_input.a, _wgslsmith_sub_u32(~2624u, 1u), _wgslsmith_clamp_u32(1u, arg_2.b.x, 110904u)), -1i, 28998i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1088f)))) * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)))), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-622f, var_0.a)), _wgslsmith_f_op_vec2_f32(-arg_0));
    var var_1 = _wgslsmith_dot_vec4_i32(~reverseBits(-vec4<i32>(arg_2.d, arg_2.a.x, arg_1, -16672i)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(arg_2.d, 1i, global1.a.c, abs(58220i)), vec4<i32>(reverseBits(global1.a.a.x), arg_1, 2147483647i, -1i)), -(~vec4<i32>(arg_2.d, arg_2.c, 2147483647i, 0i) | countOneBits(vec4<i32>(-3646i, global1.a.d, arg_1, arg_2.a.x)))));
    return _wgslsmith_div_i32(global1.a.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.a.x, arg_2.a.x, ~0i, arg_1 | arg_2.a.x), -vec4<i32>(arg_1, -65680i, -51027i, 0i) | vec4<i32>(40110i, 0i, -29924i, global1.a.a.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = arg_1;
    var var_1 = global1.a;
    global1 = Struct_3(Struct_1(-(~(~vec3<i32>(arg_0.x, arg_1.a.a.x, -24686i))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, 1u), vec4<u32>(arg_1.a.b.x, 14115u, 1u, arg_1.a.b.x), arg_3), _wgslsmith_add_vec4_u32(arg_1.a.b, abs(vec4<u32>(u_input.a, 7711u, var_0.a.b.x, var_1.b.x)))), _wgslsmith_mod_i32(37093i, _wgslsmith_add_i32(~var_0.a.a.x, func_3(vec2<f32>(-192f, arg_1.c), arg_1.a.c, global1.a))), 33633i, var_0.a.e), any(vec2<bool>(any(select(vec4<bool>(global1.b, false, var_0.b, global1.b), vec4<bool>(true, false, true, global1.b), true)), select(var_0.b, any(vec2<bool>(global1.b, var_0.b)), var_0.b | false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -533f), arg_1.a.e, !global1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, -1037f) * vec2<f32>(-516f, 241f)))))));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    let var_0 = Struct_2(-251f);
    global1 = arg_1;
    var var_1 = select(!vec2<bool>(any(select(vec4<bool>(arg_2.b, arg_2.b, global1.b, arg_1.b), vec4<bool>(arg_2.b, arg_3.d, false, false), global1.b)), !any(vec4<bool>(false, arg_2.b, arg_2.b, true))), select(!select(select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, true), false), !vec2<bool>(arg_2.b, false), any(vec2<bool>(true, arg_2.b))), select(!(!vec2<bool>(true, arg_2.b)), !(!vec2<bool>(arg_2.b, true)), !arg_2.b), !select(!vec2<bool>(arg_2.b, false), vec2<bool>(false, true), u_input.a > 1u)), select(select(select(vec2<bool>(arg_1.b, global1.b), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(arg_1.b, 198f >= _wgslsmith_f_op_f32(sign(-1884f))), !select(vec2<bool>(false, arg_3.c.b), !vec2<bool>(arg_1.b, arg_2.b), vec2<bool>(false, arg_1.b))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 9u)];
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(741f))), any(vec3<bool>(true, true, arg_3.d)) | arg_2.b)), _wgslsmith_f_op_f32(654f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(sign(arg_1.a.e)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec2_u32(arg_1.a.b.zy, vec2<u32>(arg_2.a.b.x, arg_2.a.b.x)), arg_2, Struct_3(Struct_1(vec3<i32>(2147483647i, 2147483647i, 23633i), vec4<u32>(19260u, arg_1.a.b.x, arg_2.a.b.x, 1u), 0i, 62210i, 503f), false, global1.a.e, arg_3.c.d), arg_3.c.a.b)) + global1.a.e) - -485f));
    return Struct_1(vec3<i32>(1i, countOneBits(func_3(vec2<f32>(arg_3.a, -1000f), -2147483647i, func_2(arg_2.a.a.xz, arg_1, Struct_2(var_3), vec4<u32>(41256u, arg_1.a.b.x, 298u, 76959u)).a)), 2048i), vec4<u32>(reverseBits(max(~34297u, ~9774u)), ~reverseBits(_wgslsmith_clamp_u32(4294967295u, 79903u, arg_3.c.a.b.x)), abs(~arg_1.a.b.x), 9784u), _wgslsmith_mult_i32(-6550i << (arg_1.a.b.x % 32u), -arg_1.a.d), i32(-1i) * -1i, _wgslsmith_f_op_f32(global1.a.e + _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(floor(-384f)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec4<i32>(abs(_wgslsmith_sub_i32(reverseBits(-2147483647i), global1.a.a.x)), _wgslsmith_div_i32(5428i, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 2147483647i) ^ ~select(arg_0.x, -2147483647i, false)), _wgslsmith_clamp_i32(min(_wgslsmith_div_i32(_wgslsmith_sub_i32(51426i, arg_0.x), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, -38684i)), 1i), min(2370i << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a.b.x, 11734u), vec3<u32>(arg_1.a.b.x, 1u, 1u)) % 32u), global1.a.c), ~global1.a.c >> (~67804u % 32u)), global1.a.d);
    var var_1 = firstLeadingBit(_wgslsmith_add_vec3_u32(~global1.a.b.wzz | max(vec3<u32>(u_input.b, 13804u, 4294967295u), arg_1.a.b.xzw), vec3<u32>(u_input.b | global1.a.b.x, 98163u, _wgslsmith_mod_u32(0u, 4294967295u)))) ^ global1.a.b.wxw;
    global0 = array<Struct_2, 9>();
    let var_2 = vec4<u32>(func_4(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.c))))), arg_1, func_2(_wgslsmith_mod_vec2_i32(-vec2<i32>(-49423i, 39007i), select(vec2<i32>(6291i, arg_1.a.a.x), var_0.zz, true)), arg_1, Struct_2(func_2(vec2<i32>(arg_1.a.c, arg_1.a.d), arg_1, Struct_2(global1.d.x), global1.a.b).c), ~global1.a.b), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x + -676f) + _wgslsmith_f_op_f32(global1.d.x * 806f)), var_0.x, Struct_3(Struct_1(arg_0.wzy, vec4<u32>(global1.a.b.x, var_1.x, global1.a.b.x, u_input.c), -1i, 0i, arg_1.a.e), global1.b, _wgslsmith_f_op_f32(-global1.c), vec2<f32>(arg_1.c, 923f)), true)).b.x, arg_1.a.b.x, 19646u, ~1u);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1473f - global1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f * 1558f)), true)))), arg_1.a.d, arg_1, false);
    return func_2(-(~_wgslsmith_div_vec2_i32(vec2<i32>(var_3.b, -19798i), var_3.c.a.a.xx)), func_2(_wgslsmith_mod_vec2_i32((vec2<i32>(arg_1.a.d, var_0.x) >> (global1.a.b.wz % vec2<u32>(32u))) >> (var_1.xy % vec2<u32>(32u)), -vec2<i32>(global1.a.d, -28398i)), var_3.c, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) * _wgslsmith_f_op_f32(-global1.c))), func_4(Struct_2(global1.a.e), Struct_3(global1.a, true, global1.c, vec2<f32>(-1068f, 1224f)), func_2(arg_0.zz, Struct_3(global1.a, false, -282f, global1.d), Struct_2(global1.c), var_3.c.a.b), Struct_4(var_3.c.c, -894i, arg_1, global1.b)).b & vec4<u32>(~var_1.x, 15425u, firstLeadingBit(37453u), ~101257u)), global0[_wgslsmith_index_u32(global1.a.b.x, 9u)], reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_2, var_2), func_4(Struct_2(-441f), Struct_3(arg_1.a, true, arg_1.d.x, vec2<f32>(global1.a.e, 1000f)), var_3.c, Struct_4(arg_1.a.e, -2147483647i, var_3.c, false)).b)) >> (var_3.c.a.b % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-select(_wgslsmith_mod_i32(-global1.a.a.x, global1.a.a.x), 1i, _wgslsmith_f_op_f32(ceil(-735f)) < _wgslsmith_f_op_f32(func_1(18421u, Struct_3(Struct_1(vec3<i32>(2147483647i, -2147483647i, -1i), vec4<u32>(691u, u_input.b, 0u, 18367u), -2147483647i, 1i, global1.c), false, global1.a.e, vec2<f32>(-474f, 251f)), Struct_3(global1.a, true, global1.a.e, global1.d), vec4<u32>(global1.a.b.x, u_input.c, global1.a.b.x, 0u)))));
    global0 = array<Struct_2, 9>();
    var var_1 = 4294967295u;
    global1 = func_5(vec4<i32>(global1.a.d, 3060i, -14772i, 2147483647i), Struct_3(func_4(global0[_wgslsmith_index_u32(global1.a.b.x, 9u)], func_2(global1.a.a.xy & vec2<i32>(global1.a.a.x, var_0), Struct_3(global1.a, global1.b, 115f, global1.d), Struct_2(global1.d.x), global1.a.b), Struct_3(global1.a, any(vec4<bool>(global1.b, global1.b, false, false)), _wgslsmith_f_op_f32(select(453f, global1.c, global1.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, global1.d.x)))), Struct_4(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_mult_i32(global1.a.d, -8315i), func_2(global1.a.a.xy, Struct_3(Struct_1(vec3<i32>(var_0, var_0, -52393i), vec4<u32>(0u, global1.a.b.x, 70051u, 4294967295u), global1.a.c, global1.a.d, 1000f), global1.b, global1.a.e, global1.d), global0[_wgslsmith_index_u32(0u, 9u)], global1.a.b), global1.b | true)), true, _wgslsmith_f_op_f32(max(1310f, global1.d.x)), _wgslsmith_f_op_vec2_f32(exp2(global1.d))));
    global1 = Struct_3(func_2(~(~vec2<i32>(1i, var_0)), Struct_3(global1.a, !(false || global1.b), global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -572f))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, ~4294967295u), 9u)], ~global1.a.b).a, global1.b, 228f, global1.d);
    var var_2 = vec4<u32>(global1.a.b.x, global1.a.b.x, ~0u, select(1u, 85104u, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-226f, _wgslsmith_f_op_f32(func_1(4294967295u, Struct_3(Struct_1(vec3<i32>(var_0, 16662i, global1.a.a.x), vec4<u32>(var_2.x, global1.a.b.x, 0u, var_2.x), global1.a.c, 1i, 1011f), false, global1.c, vec2<f32>(global1.c, 423f)), Struct_3(Struct_1(vec3<i32>(var_0, global1.a.d, 1i), vec4<u32>(global1.a.b.x, 4294967295u, 0u, 9911u), var_0, global1.a.c, 127f), global1.b, -1194f, global1.d), global1.a.b))))), global1.c), vec4<i32>(~(-33418i), var_0, reverseBits(~(-22837i)), select(~(i32(-1i) * -21305i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global1.a.d, var_0, 1i), vec4<i32>(-41154i, var_0, 1i, 2147483647i)), countOneBits(vec4<i32>(var_0, -7867i, var_0, 14079i))), global1.b)), u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(countOneBits(-55947i), var_0), var_0, -global1.a.a.x, ~global1.a.d << ((global1.a.b.x ^ 8767u) % 32u)), ~vec4<i32>(global1.a.a.x, _wgslsmith_mult_i32(global1.a.c, var_0), -1i, var_0)));
}

