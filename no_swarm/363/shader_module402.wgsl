struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(u_input.e, 6u)];
    global0 = array<Struct_1, 6>();
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.e), 6u)];
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(491f))), 407f));
    global0 = array<Struct_1, 6>();
    return var_1.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3;
    global0 = array<Struct_1, 6>();
    var var_1 = arg_2.x;
    var var_2 = Struct_1(!func_3(), vec2<bool>(arg_1.a.x, var_0.a.x));
    var var_3 = Struct_1(select(!var_0.a, !var_2.a, arg_1.a), arg_3.b);
    return select(vec2<bool>(~arg_2.x >= -(~arg_2.x), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.e, u_input.e)) != 2868u) && !(!arg_3.b.x)), arg_1.b, func_3().xw);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = 55811u;
    global0 = array<Struct_1, 6>();
    var var_1 = arg_0;
    let var_2 = select(!func_2(any(func_3()), global0[_wgslsmith_index_u32(4294967295u, 6u)], vec3<i32>(abs(u_input.a.x), u_input.a.x, ~2147483647i), arg_0), !vec2<bool>(arg_0.a.x, arg_0.a.x), var_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-573f, _wgslsmith_f_op_f32(ceil(125f)), _wgslsmith_f_op_f32(-220f - 1173f), _wgslsmith_f_op_f32(step(-434f, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(314f, -1120f, 628f, -174f), vec4<f32>(966f, 2007f, 977f, -160f), arg_0.b.x)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(974f, 1406f, 547f, -355f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-1163f, -262f), -242f, _wgslsmith_f_op_f32(f32(-1f) * -179f), -1324f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(916f, -332f, -1912f, 655f))))))));
    return min(vec3<i32>(u_input.b.x, u_input.b.x >> (select(var_0, _wgslsmith_mod_u32(31334u, var_0), !arg_0.a.x) % 32u), max(u_input.a.x, u_input.a.x)), u_input.a.zxw);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = -792f;
    var_0 = countOneBits(u_input.b.x);
    let var_2 = func_4(Struct_1(vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_2), false)), any(!vec2<bool>(arg_2, false)), true), !func_2(!arg_2, global0[_wgslsmith_index_u32(~arg_1.x, 6u)], vec3<i32>(u_input.a.x, u_input.d, u_input.b.x) ^ u_input.a.ywx, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.x, 0u), 6u)])));
    var var_3 = Struct_1(vec4<bool>(all(vec2<bool>(arg_2, any(vec3<bool>(false, true, arg_2)))), arg_2 && false, true, false), !func_3().xw);
    return Struct_1(!select(!select(vec4<bool>(true, arg_2, var_3.a.x, false), vec4<bool>(arg_2, false, arg_2, arg_2), true), vec4<bool>(94046u <= u_input.e, true, true, any(vec2<bool>(var_3.b.x, var_3.a.x))), !vec4<bool>(false, arg_2, false, false)), func_2(true, Struct_1(!vec4<bool>(var_3.a.x, var_3.b.x, arg_2, true), vec2<bool>(arg_2 || arg_2, 44582u < arg_1.x)), u_input.c, Struct_1(vec4<bool>(any(var_3.a), true, all(vec3<bool>(arg_2, arg_2, false)), arg_0 >= 4928u), vec2<bool>(true, true))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_1, 6>();
    let var_0 = ~(~vec2<u32>(_wgslsmith_mult_u32(83089u, _wgslsmith_div_u32(1u, u_input.e)), firstLeadingBit(_wgslsmith_add_u32(u_input.e, 39572u))));
    global0 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_div_vec3_i32(u_input.c, firstTrailingBit(_wgslsmith_mult_vec3_i32(max(u_input.c, vec3<i32>(u_input.b.x, -25004i, u_input.c.x)), reverseBits(-u_input.a.zxw))));
    var var_2 = arg_1.a.x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), func_5(func_1(5742u, vec3<u32>(24653u, 95374u, 4294967295u), false), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(true, true)))), !func_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~0u), 6u)], Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(true, false))).xw);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2527f, 314f, 418f, 795f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -190f), -2024f)), -367f, 1000f, -846f)))));
    let var_3 = func_1(1u, select(vec3<u32>(1u, 4938u & ~u_input.e, _wgslsmith_div_u32(countOneBits(4983u), ~0u)), abs(~vec3<u32>(u_input.e, 63312u, 16148u) & firstLeadingBit(vec3<u32>(u_input.e, 4294967295u, u_input.e))), func_1(~5646u, vec3<u32>(_wgslsmith_sub_u32(u_input.e, 32865u), ~u_input.e, 52329u), false).a.x), 2147483647i < u_input.a.x);
    let var_4 = func_1(u_input.e, ~min(max(vec3<u32>(u_input.e, 61830u, u_input.e), vec3<u32>(4294967295u, u_input.e, 4294967295u)), vec3<u32>(u_input.e, u_input.e, u_input.e) << (vec3<u32>(30988u, u_input.e, 1737u) % vec3<u32>(32u))) << (vec3<u32>(~(~u_input.e), u_input.e, firstLeadingBit(u_input.e ^ 4294967295u)) % vec3<u32>(32u)), var_1.a.x);
    var_1 = func_1(firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 28242u, 0u, u_input.e)), ~select(vec4<u32>(1u, 1u, 1u, u_input.e), vec4<u32>(25666u, 545u, 4294967295u, 1u), var_3.a))), ~(~vec3<u32>(u_input.e, u_input.e, 52617u)), !var_0.b.x);
    var var_5 = vec3<u32>(reverseBits(1u), u_input.e, abs(4294967295u)) << (max(~(vec3<u32>(u_input.e, 0u, 44005u) & vec3<u32>(4294967295u, u_input.e, 4294967295u)) << (max(vec3<u32>(23545u, 61008u, u_input.e), ~vec3<u32>(6144u, u_input.e, u_input.e)) % vec3<u32>(32u)), max(vec3<u32>(u_input.e | u_input.e, select(4294967295u, u_input.e, var_4.a.x), u_input.e), min(countOneBits(vec3<u32>(u_input.e, 27692u, u_input.e)), vec3<u32>(u_input.e, u_input.e, u_input.e)))) % vec3<u32>(32u));
    var_1 = func_1(41315u << (reverseBits(reverseBits(~u_input.e)) % 32u), vec3<u32>(_wgslsmith_dot_vec2_u32(var_5.yy, vec2<u32>(select(35321u, u_input.e, true), ~1u)), ~(0u << ((u_input.e >> (u_input.e % 32u)) % 32u)), ~(~(23225u >> (var_5.x % 32u)))), all(vec3<bool>(!var_0.b.x, var_1.a.x, u_input.d <= u_input.d)) && ((max(var_5.x, 4294967295u) >> (u_input.e % 32u)) != ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_dot_vec3_u32(max(min(vec3<u32>(u_input.e, u_input.e, 4933u), select(vec3<u32>(var_5.x, 8443u, 4294967295u), vec3<u32>(u_input.e, 101208u, u_input.e), false)), vec3<u32>(select(var_5.x, var_5.x, true), _wgslsmith_clamp_u32(4797u, var_5.x, 4294967295u), 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(42075u, 0u), vec2<u32>(u_input.e, 0u) ^ vec2<u32>(var_5.x, u_input.e)), var_5.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33179u, u_input.e, 18258u), vec3<u32>(u_input.e, var_5.x, var_5.x)), _wgslsmith_clamp_u32(37326u, 23628u, u_input.e)))), _wgslsmith_div_u32(680u, ~24466u), -(~(u_input.c.x ^ -u_input.d)), _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, var_5.x, u_input.e, u_input.e), vec4<u32>(16536u, var_5.x, u_input.e, 1770u) ^ vec4<u32>(var_5.x, u_input.e, 80358u, u_input.e)), abs(vec4<u32>(var_5.x, 4294967295u, var_5.x, var_5.x)), all(!vec3<bool>(var_4.b.x, false, true))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_5.x, 4294967295u), u_input.e ^ 22051u, 0u, reverseBits(var_5.x)), (vec4<u32>(u_input.e, u_input.e, 68996u, var_5.x) | vec4<u32>(61285u, var_5.x, 0u, var_5.x)) & abs(vec4<u32>(18735u, 4294967295u, 31283u, 13842u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_5.x, u_input.e, var_5.x), vec4<u32>(21001u, var_5.x, var_5.x, var_5.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 18679u), vec4<u32>(0u, u_input.e, u_input.e, 77807u))))));
}

