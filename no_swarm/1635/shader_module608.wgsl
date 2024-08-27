struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, false, false, false, false, true, true, true, false, false, true, true, false, false, true, true, false, true, false, false, true, false, false, true, true, true, true, false, false, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(284f, _wgslsmith_f_op_f32(step(-556f, _wgslsmith_f_op_f32(502f - -494f))), true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-116f, 1411f)), 646f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1128f, -624f))), all(vec2<bool>(false, false)) & !arg_0.x))));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    var var_1 = Struct_2(Struct_1(arg_0.x, !arg_1.b, select(vec4<bool>(true, true, arg_0.x, arg_1.d > arg_1.d), select(arg_1.c, arg_1.c, vec4<bool>(arg_0.x, arg_1.c.x, true, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a, 32u)]), i32(-1i) * -23810i));
    let var_2 = arg_1;
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true)), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(8761u, 32u)]), select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(51172u, 32u)], false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(17926u, 32u)]))), Struct_1(all(vec4<bool>(true, true, true, true)), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(44735u, 32u)]), vec4<bool>(true, false, true, true), -42372i), false), vec3<bool>(true, any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], false, global0[_wgslsmith_index_u32(0u, 32u)])), any(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], true)), vec2<bool>(true, false), vec2<bool>(true, true)))), !vec4<bool>(!global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(44805u >> (1u % 32u), max(u_input.a, u_input.a)), 32u)], false, global0[_wgslsmith_index_u32(~u_input.a, 32u)] & !global0[_wgslsmith_index_u32(u_input.a, 32u)]), ~(-1i));
    let var_1 = 3988i;
    var var_2 = ~vec3<u32>(abs(1u), 9247u, 4294967295u);
    return Struct_1(all(var_0.c.zw), !select(vec3<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 32u)], var_0.b.x, false, true)), true), select(select(var_0.b, var_0.b, false), var_0.b, global0[_wgslsmith_index_u32(u_input.a, 32u)]), !(!var_0.c.zxz)), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)] && global0[_wgslsmith_index_u32(47806u, 32u)], true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(93782u, var_2.x), 32u)], false)), _wgslsmith_dot_vec2_i32(min(~countOneBits(vec2<i32>(var_0.d, 1i)), ~vec2<i32>(var_1, 2941i)), vec2<i32>(-63130i, 0i)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = max(_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 19506u), vec2<u32>(u_input.a, 41115u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 97687u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(0u, 1u) & vec2<u32>(4680u, u_input.a))), ~(~vec2<u32>(18148u, u_input.a)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(117310u, u_input.a), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) >> (abs(min(vec2<u32>(10768u, u_input.a), ~abs(vec2<u32>(4294967295u, u_input.a)))) % vec2<u32>(32u));
    let var_1 = ~(~((1u << (var_0.x % 32u)) << ((1u ^ u_input.a) % 32u)));
    var var_2 = var_1;
    let var_3 = !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(var_1), 32u)])));
    var_0 = vec2<u32>(var_1, u_input.a);
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    return -1282f;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1044f, _wgslsmith_f_op_f32(func_5(_wgslsmith_mod_u32(4294967295u, u_input.a) << (35940u % 32u), func_4(func_2(), func_2().c, func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1300f + 1652f), _wgslsmith_div_f32(239f, -1887f))))));
    global0 = array<bool, 32>();
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(236f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -1000f, var_0.x), vec3<f32>(var_0.x, 1890f, -1053f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(abs(var_0.x)), var_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(746f, 581f, var_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(736f, 1009f, var_0.x) * vec3<f32>(758f, var_0.x, -436f))))));
    var var_1 = -vec2<i32>(-2147483647i, -19749i);
    var var_2 = abs(1i >> (_wgslsmith_add_u32(arg_0, reverseBits(~6253u)) % 32u));
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = ~vec2<u32>(~u_input.a, ~36081u);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1245f)))));
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(43812u, 1u), 6354u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, var_0.x), 0u)), vec3<u32>(reverseBits(_wgslsmith_sub_u32(var_0.x, var_0.x)), ~_wgslsmith_div_u32(61336u, 1277u), 4294967295u), vec3<u32>(reverseBits(1u), _wgslsmith_dot_vec2_u32(select(var_0, var_0, false), countOneBits(var_0)), ~(~18603u))), ~select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39755u, var_0.x, var_0.x), vec3<u32>(18515u, 0u, u_input.a)), reverseBits(u_input.a), 4294967295u), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 18404u, u_input.a)), ~vec3<u32>(4294967295u, u_input.a, var_0.x)), true));
    let var_4 = abs(vec3<i32>(-var_1.a.d | ((2147483647i | arg_3.x) & func_2().d), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.d, ~arg_3.x, firstLeadingBit(-48419i), 2147483647i), ~reverseBits(vec4<i32>(0i, arg_3.x, -14362i, -1i))), func_4(Struct_1(any(vec3<bool>(arg_1.a.b.x, arg_0.a.c.x, true)), vec3<bool>(global0[_wgslsmith_index_u32(var_3, 32u)], true, arg_1.a.a), func_4(Struct_1(arg_1.a.a, vec3<bool>(true, false, false), vec4<bool>(false, arg_0.a.a, true, var_1.a.a), 2473i), arg_0.a.c, Struct_1(false, vec3<bool>(arg_1.a.c.x, arg_0.a.c.x, true), vec4<bool>(true, var_1.a.c.x, true, var_1.a.b.x), arg_0.a.d)).c, 1i), arg_1.a.c, Struct_1(any(var_1.a.c), vec3<bool>(arg_0.a.c.x, true, arg_0.a.a), vec4<bool>(arg_1.a.c.x, false, true, true), arg_3.x)).d));
    return Struct_2(func_4(Struct_1(all(var_1.a.c), vec3<bool>(!arg_1.a.c.x, var_1.a.c.x, true), select(!var_1.a.c, vec4<bool>(arg_1.a.b.x, false, true, global0[_wgslsmith_index_u32(var_3, 32u)]), !global0[_wgslsmith_index_u32(1u, 32u)]), ~1i), !vec4<bool>(true, true, true, func_2().c.x), var_1.a));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, -394f, 512f) + vec3<f32>(-146f, 1145f, -389f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1398f, -1227f, 607f) + vec3<f32>(-1399f, -203f, -1100f)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, 1626f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-522f, -1025f, _wgslsmith_f_op_f32(f32(-1f) * -799f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1487f), -234f, _wgslsmith_f_op_f32(-849f * 1235f))))), !(!(!arg_2.a.b))));
    let var_1 = arg_0;
    let var_2 = ~u_input.a;
    global0 = array<bool, 32>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_0 = func_7(func_6(Struct_2(Struct_1(global0[_wgslsmith_index_u32(0u, 32u)] & true, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false, global0[_wgslsmith_index_u32(116441u, 32u)], false)), max(2147483647i, 30824i))), Struct_2(func_1(_wgslsmith_sub_u32(4294967295u, u_input.a))), vec3<f32>(-650f, _wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1806f) * _wgslsmith_f_op_f32(func_5(u_input.a, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 32u)], vec3<bool>(true, global0[_wgslsmith_index_u32(116533u, 32u)], false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], false, false, global0[_wgslsmith_index_u32(u_input.a, 32u)]), 28557i))))), _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(abs(-1i), _wgslsmith_mod_i32(-1i, 9595i)))), abs(vec4<u32>(4294967295u, 1u, 1u, _wgslsmith_sub_u32(reverseBits(u_input.a), 0u & u_input.a))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 32u)], !vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], false), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(0u, 32u)])), 2147483647i)));
    global0 = array<bool, 32>();
    let var_1 = ~firstTrailingBit(1u);
    var var_2 = Struct_2(func_6(Struct_2(Struct_1(true, var_0.b, vec4<bool>(true, var_0.a, true, true), 1i)), Struct_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 32u)] && true, var_0.c.xyx, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 32u)], var_0.b.x, false, true), func_2().d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2567f, -1758f, -476f))))), vec2<i32>(var_0.d, _wgslsmith_add_i32(1i, var_0.d)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d, 1i) | vec2<i32>(var_0.d, var_0.d), abs(vec2<i32>(0i, var_0.d)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec3<u32>(var_1, 35218u, var_1 | 1u), reverseBits(~max(vec3<u32>(4240u, 39138u, var_1), vec3<u32>(31227u, 40529u, 43265u)))), u_input.a, _wgslsmith_mult_vec4_u32(~min(max(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 32868u)), vec4<u32>(1u, 19029u, 25381u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 8291u, 0u, _wgslsmith_add_u32(88802u, u_input.a)), vec4<u32>(abs(1u), u_input.a, var_1, reverseBits(0u)))));
}

