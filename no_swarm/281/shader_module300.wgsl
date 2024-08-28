struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(999u);

var<private> global1: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<u32, 1>();
    var var_0 = Struct_2(_wgslsmith_div_i32(abs(abs(0i)), _wgslsmith_mult_i32(abs(min(2147483647i, -32297i)), _wgslsmith_sub_i32(-45384i, ~u_input.a.x))), Struct_1(1466i, vec3<u32>(u_input.b, abs(1u), ~(~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1561f)) + -959f), select(any(vec3<bool>(true, false, true)) | false, true, !all(vec2<bool>(true, true)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-555f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) * _wgslsmith_f_op_f32(f32(-1f) * -994f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(977f, -448f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-830f)), _wgslsmith_f_op_f32(abs(519f))))), _wgslsmith_f_op_f32(f32(-1f) * -503f)), vec4<f32>(-679f, _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(915f + -1152f)), -898f)), -1103f));
    var var_1 = var_0.d;
    global1 = u_input.a.x;
    var var_2 = 1i;
    return 982f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> u32 {
    let var_0 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(arg_1.b.b.zx, arg_0.b.yz), vec2<u32>(~arg_0.b.x, 56340u)), 1u)]);
    global1 = -1347i;
    let var_1 = true;
    var var_2 = vec3<u32>(9472u, var_0, ~(~u_input.b));
    let var_3 = Struct_2(firstTrailingBit(u_input.a.x), Struct_1(_wgslsmith_sub_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0.a), u_input.a.yx), arg_1.b.a), u_input.a.x), arg_0.b, _wgslsmith_f_op_f32(func_3()), !all(vec2<bool>(var_1, false))), vec3<f32>(437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(arg_2 * arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(arg_1.d))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.d)))));
    return var_3.b.b.x;
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(arg_2.a, vec3<u32>(arg_2.b.x, u_input.b, 4294967295u), _wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1095f - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)) + -1365f)), arg_2.d);
    let var_1 = select(!select(!select(vec3<bool>(var_0.d, true, true), vec3<bool>(true, false, arg_2.d), arg_2.d), !(!vec3<bool>(true, var_0.d, var_0.d)), firstTrailingBit(-2147483647i) > max(u_input.a.x, 0i)), select(vec3<bool>(true, true && (arg_2.d && false), select(2147483647i, 1i, arg_2.d) == _wgslsmith_div_i32(u_input.a.x, -1i)), select(select(select(vec3<bool>(true, var_0.d, arg_2.d), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_2.d)), !vec3<bool>(true, arg_2.d, arg_2.d), any(vec3<bool>(arg_2.d, false, arg_2.d))), !select(vec3<bool>(false, false, var_0.d), vec3<bool>(var_0.d, var_0.d, true), vec3<bool>(arg_2.d, false, false)), vec3<bool>(var_0.d | var_0.d, select(true, var_0.d, false), all(vec3<bool>(var_0.d, true, true)))), !((u_input.a.x & var_0.a) >= -2147483647i)), true);
    let var_2 = ~vec3<i32>(firstTrailingBit(-7546i), _wgslsmith_add_i32(firstLeadingBit(-49494i), firstTrailingBit(var_0.a)) & -countOneBits(-37284i), -31420i >> (~var_0.b.x % 32u));
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1997f, arg_2.c, arg_1.x, arg_2.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1871f, 999f, arg_1.x))))))));
    var var_4 = vec2<bool>(!select(true, var_0.a <= arg_2.a, any(vec4<bool>(var_0.d, arg_2.d, var_0.d, true))), true);
    return Struct_2(u_input.a.x, arg_2, var_3.zwx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1.x, var_3.x)), -1818f, var_3.x, _wgslsmith_f_op_f32(select(-611f, arg_2.c, var_1.x))) - vec4<f32>(_wgslsmith_f_op_f32(arg_2.c - -324f), arg_1.x, _wgslsmith_f_op_f32(trunc(var_0.c)), 1175f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 865f)), -821f, arg_1.x, arg_1.x)));
}

fn func_1(arg_0: i32) -> vec4<u32> {
    var var_0 = func_4(u_input.b ^ (global0[_wgslsmith_index_u32(19791u, 1u)] >> (((u_input.b ^ 69882u) & func_2(Struct_1(-1i, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43595u, 1u)], 1u)], 31823u, 31676u), 1721f, false), Struct_2(0i, Struct_1(u_input.a.x, vec3<u32>(25814u, 1u, 4294967295u), -531f, true), vec3<f32>(-2112f, 260f, 1000f), vec4<f32>(867f, 801f, 1028f, 1887f)), -1167f, arg_0)) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(418f)), -494f, _wgslsmith_f_op_f32(f32(-1f) * -1363f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, -1000f, -373f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 1000f, -377f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(734f, 235f, -1145f))))))), Struct_1(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_add_i32(1i, arg_0)), vec3<u32>(_wgslsmith_add_u32(~1u, global0[_wgslsmith_index_u32(4294967295u, 1u)]), ~_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)]), func_2(Struct_1(arg_0, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49203u, 1u)], 1u)], 22735u, 47383u), 1512f, false), Struct_2(u_input.a.x, Struct_1(arg_0, vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 1u)], 28105u), -153f, true), vec3<f32>(1000f, 1428f, -265f), vec4<f32>(601f, -836f, -687f, 343f)), -1583f, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1420f - 2863f)) + -1067f), true));
    let var_1 = var_0.b.d;
    global0 = array<u32, 1>();
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(~0u, global0[_wgslsmith_index_u32(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(8340u, 1u, var_0.b.b.x, 36254u), vec4<u32>(var_0.b.b.x, 4294967295u, 0u, global0[_wgslsmith_index_u32(1u, 1u)])), vec3<f32>(var_0.c.x, 1341f, var_0.b.c), var_0.b).b.b.x, 1u)], ~max(18099u, global0[_wgslsmith_index_u32(4294967295u, 1u)]), abs(u_input.b) & 0u), abs(_wgslsmith_sub_vec4_u32(max(vec4<u32>(4294967295u, 0u, u_input.b, 1u), vec4<u32>(18313u, var_0.b.b.x, u_input.b, 0u)), firstTrailingBit(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(13464u, 1u)], 4294967295u))))) ^ ((vec4<u32>(~33766u, firstLeadingBit(u_input.b), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.b.b.x, 1u)], 3803u), 1u) << (vec4<u32>(~var_0.b.b.x, 1u, 4294967295u, countOneBits(var_0.b.b.x)) % vec4<u32>(32u))) & abs(vec4<u32>(4294967295u, _wgslsmith_sub_u32(4294967295u, 4294967295u), ~var_0.b.b.x, max(2353u, 4294967295u))));
    global0 = array<u32, 1>();
    return firstTrailingBit(countOneBits(vec4<u32>(select(u_input.b, u_input.b, true), var_0.b.b.x, ~4294967295u, abs(u_input.b << (61469u % 32u)))));
}

fn func_5(arg_0: bool) -> Struct_2 {
    let var_0 = func_4(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b, 1u)]), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(210f, _wgslsmith_f_op_f32(-1061f - 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1379f * _wgslsmith_f_op_f32(min(-307f, -252f))))), Struct_1(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), ~10106i, -31674i), _wgslsmith_clamp_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(16475u, 1u)], _wgslsmith_clamp_u32(14519u, 65581u, 4294967295u), 4294967295u), vec3<u32>(_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]), ~u_input.b, 1u), vec3<u32>(0u, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b, 1u)]), ~4242u)), -570f, any(vec2<bool>(true, true)))).b;
    global0 = array<u32, 1>();
    var var_1 = Struct_1(0i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~u_input.b >> (func_2(var_0, Struct_2(u_input.a.x, Struct_1(u_input.a.x, vec3<u32>(0u, u_input.b, 22220u), var_0.c, var_0.d), vec3<f32>(var_0.c, -250f, 564f), vec4<f32>(328f, var_0.c, var_0.c, 248f)), 1118f, -27713i) % 32u)), 1u)], 1u)], 1u)] % 32u), ~var_0.b, 1000f, any(select(select(vec2<bool>(var_0.d, false), select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, true), vec2<bool>(var_0.d, true)), true || var_0.d), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, var_0.d)), arg_0), arg_0)));
    var var_2 = select(!select(!select(vec2<bool>(var_0.d, arg_0), vec2<bool>(false, var_1.d), var_0.d), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, var_0.d)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(!select(vec3<bool>(true, false, true), vec3<bool>(var_0.d, arg_0, false), false))), (select(arg_0, arg_0, true || arg_0) || (all(vec3<bool>(var_0.d, false, true)) & true)) & true);
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a.x, -40813i), u_input.a.zx);
    return func_4(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 1u)]) >> (((u_input.b << (64435u % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 51133u), vec2<u32>(u_input.b, 34919u)) % 32u)) % 32u), 1u)] | ~reverseBits(11223u), 1u)], vec3<f32>(2227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(var_0.c * 165f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c * -1784f) + -580f) + 2221f)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = -_wgslsmith_add_i32(u_input.a.x, u_input.a.x);
    let var_2 = !any(vec4<bool>(false, (u_input.a.x < var_1) && true, true, any(vec4<bool>(false, true, true, true))));
    var var_3 = func_5(_wgslsmith_dot_vec4_u32((vec4<u32>(global0[_wgslsmith_index_u32(var_0, 1u)], global0[_wgslsmith_index_u32(20260u, 1u)], 4294967295u, u_input.b) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], 10049u, 1u, global0[_wgslsmith_index_u32(0u, 1u)])) ^ (vec4<u32>(u_input.b, var_0, 67956u, u_input.b) | vec4<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 1u)], var_0, 10517u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(50894u, 4294967295u, var_0, 4294967295u), vec4<u32>(91095u, 35413u, u_input.b, 30807u)), func_1(5519i), var_2 | var_2)) > 20922u);
    global1 = i32(-1i) * -32030i;
    var var_4 = Struct_1(_wgslsmith_clamp_i32(func_5(any(select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, false, var_3.b.d), vec3<bool>(var_3.b.d, var_3.b.d, false)))).b.a, u_input.a.x, countOneBits(u_input.a.x) ^ abs(-var_3.b.a)), vec3<u32>(0u, _wgslsmith_div_u32(~(~global0[_wgslsmith_index_u32(37490u, 1u)]), var_3.b.b.x | ~10960u), _wgslsmith_sub_u32(~4294967295u, (u_input.b ^ 114785u) ^ 4294967295u)), 2413f, var_2);
    let var_5 = vec2<i32>(-abs(-2147483647i), 13017i);
    let x = u_input.a;
    s_output = StorageBuffer(-799f, 4294967295u, var_5, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3.d))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.d + vec4<f32>(-966f, var_4.c, 1507f, 117f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_3.c.x, 153f), _wgslsmith_f_op_f32(ceil(var_4.c)), _wgslsmith_div_f32(-804f, var_3.b.c), _wgslsmith_f_op_f32(1015f - var_4.c)))), 23027u);
}

