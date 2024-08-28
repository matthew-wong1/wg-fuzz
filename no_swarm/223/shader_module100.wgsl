struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(0u, 52839u);

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec2<f32>(1000f, 470f)), 35544i), Struct_2(Struct_1(vec2<f32>(1123f, 2163f)), -21938i), Struct_2(Struct_1(vec2<f32>(-1626f, -149f)), 13777i), Struct_2(Struct_1(vec2<f32>(2783f, -1000f)), 1i), Struct_2(Struct_1(vec2<f32>(606f, 267f)), 44844i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> f32 {
    global0 = array<u32, 2>();
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_0), 5u)];
    var var_1 = global1[_wgslsmith_index_u32(arg_2.x >> (84235u % 32u), 5u)];
    let var_2 = _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.yy, ~vec2<u32>(arg_0, 4294967295u)), vec2<u32>(u_input.a, 0u))), arg_2.x);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(var_0.a.a))))))), -13623i);
    return var_0.a.a.x;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = true;
    global1 = array<Struct_2, 5>();
    let var_1 = false;
    global1 = array<Struct_2, 5>();
    let var_2 = arg_0.x >> (reverseBits(arg_1.x) % 32u);
    return ~0u;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    global0 = array<u32, 2>();
    global0 = array<u32, 2>();
    var var_0 = !any(vec4<bool>(true, true, true, true)) & false;
    var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(54200u, 2u)], arg_2), ~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_2)), 88646u)) < _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(9770u, global0[_wgslsmith_index_u32(30406u, 2u)]) >> (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8401u, 2u)], 2u)]) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(3963u, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], arg_2))), _wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(arg_2, 75604u)), vec2<u32>(u_input.a, arg_2))), 54552u);
    let var_1 = arg_1.a;
    return vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_1.a.x) * var_1.a.x) - -775f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - _wgslsmith_f_op_f32(682f - -156f)))), -1000f);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1421f + 125f))), _wgslsmith_f_op_f32(func_2(~u_input.a, vec2<bool>(true, true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56218u, 2u)], 2u)], 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]) << (vec3<u32>(u_input.a, 61491u, 40048u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(trunc(-751f)), false))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x - -312f), _wgslsmith_f_op_f32(1f + -1000f), -1271f))), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(func_3(select(min(vec2<i32>(1i, arg_0.b), arg_1.xw), vec2<i32>(arg_0.b, -1i), true), vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 58163u & u_input.b, 0u), arg_0.a, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))), 2u)], 5u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 2u)], ~4294967295u), ~_wgslsmith_add_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(6945u, 2u)], u_input.a), vec2<u32>(18601u, u_input.b) >> (vec2<u32>(11391u, global0[_wgslsmith_index_u32(u_input.a, 2u)]) % vec2<u32>(32u))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -807f, -1810f) - vec3<f32>(arg_0.a.a.x, 567f, var_0.x))))))), var_0.xxz));
    global0 = array<u32, 2>();
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_4(arg_2, Struct_2(arg_0.a, ~arg_0.b), ~u_input.b)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1027f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.a.x)))))), -1000f);
    return Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a.a - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, 460f) - _wgslsmith_f_op_vec2_f32(ceil(arg_2.zy))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = arg_1.c;
    var var_1 = -2147483647i;
    var var_2 = u_input.b;
    global0 = array<u32, 2>();
    var_2 = u_input.b;
    return 39311u;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    let var_0 = func_1(arg_1, min((_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, arg_2.b, arg_1.b), vec4<i32>(arg_1.b, 25484i, -1i, arg_1.b)) | abs(vec4<i32>(arg_1.b, 1i, arg_1.b, 1i))) | vec4<i32>(~2147483647i, arg_1.b >> (global0[_wgslsmith_index_u32(0u, 2u)] % 32u), arg_1.b, 1i), vec4<i32>(_wgslsmith_clamp_i32(~2147483647i, -2147483647i, 1i), -2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(54998i, 0i), vec2<i32>(arg_1.b, arg_1.b)), countOneBits(-1i))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-660f, -942f), _wgslsmith_f_op_f32(arg_2.a.a.x + 1468f), _wgslsmith_f_op_f32(min(-272f, -1574f)))))));
    global0 = array<u32, 2>();
    let var_1 = Struct_3(vec2<i32>(arg_2.b, i32(-1i) * -1i), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(59629u, 68059u, arg_0, global0[_wgslsmith_index_u32(arg_0, 2u)])), countOneBits(vec4<u32>(4294967295u, arg_0, u_input.b, global0[_wgslsmith_index_u32(19774u, 2u)]))), arg_0), 5u)], Struct_2(func_1(arg_2, ~(vec4<i32>(2147483647i, arg_1.b, arg_2.b, arg_2.b) | vec4<i32>(arg_1.b, arg_2.b, arg_2.b, 7513i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(837f, 1363f, arg_2.a.a.x)))), -2147483647i));
    var var_2 = _wgslsmith_div_vec2_i32(firstTrailingBit(abs(-vec2<i32>(-44471i, 2147483647i))), vec2<i32>(var_1.a.x, 1i)) << (vec2<u32>(~(arg_0 >> (abs(global0[_wgslsmith_index_u32(arg_0, 2u)]) % 32u)), ~_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(118731u, 2u)], 39544u)) % vec2<u32>(32u));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(0u, global1[_wgslsmith_index_u32(u_input.a, 5u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~61535u, ~(~0u)), func_5(Struct_1(vec2<f32>(1f, 1f)), Struct_4(Struct_1(vec2<f32>(2371f, 440f)), func_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 5u)], vec4<i32>(34860i, 23153i, 20230i, 0i), vec3<f32>(238f, 802f, -412f)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 9717u), 5u)], Struct_2(Struct_1(vec2<f32>(-166f, -100f)), 50792i)), true)), 5u)]);
    let var_1 = _wgslsmith_f_op_f32(-289f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -432f))) - _wgslsmith_f_op_f32(f32(-1f) * -768f))));
    var_0 = Struct_3(var_0.a, var_0.c, func_6(50781u, func_6(~73526u, func_6(0u | u_input.b, var_0.b, Struct_2(Struct_1(vec2<f32>(var_1, -367f)), 9897i)).c, var_0.b).b, func_6(global0[_wgslsmith_index_u32(u_input.a, 2u)], func_6(abs(u_input.b), Struct_2(var_0.c.a, var_0.a.x), global1[_wgslsmith_index_u32(~u_input.a, 5u)]).b, func_6(~u_input.b, var_0.b, var_0.c).b).b).b);
    var var_2 = Struct_3(vec2<i32>(var_0.c.b, select(var_0.b.b, _wgslsmith_div_i32(func_6(39066u, Struct_2(var_0.b.a, var_0.c.b), Struct_2(var_0.b.a, 5395i)).a.x, ~27355i), all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), func_6(~global0[_wgslsmith_index_u32(abs(4294967295u), 2u)], func_6(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(47564u, global0[_wgslsmith_index_u32(4778u, 2u)]), 2u)], ~global0[_wgslsmith_index_u32(0u, 2u)]), Struct_2(Struct_1(vec2<f32>(var_0.b.a.a.x, -460f)), firstLeadingBit(var_0.c.b)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.b, 0u), 2u)], 2u)], 5u)]).c, func_6(firstLeadingBit(u_input.b), Struct_2(var_0.c.a, -93017i), func_6(0u, func_6(1u, global1[_wgslsmith_index_u32(u_input.a, 5u)], var_0.c).c, var_0.c).c).b).c, global1[_wgslsmith_index_u32(49349u, 5u)]);
    var_2 = Struct_3(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c.b, var_2.b.b) | (var_0.a ^ var_0.a), vec2<i32>(firstTrailingBit(var_0.a.x), var_0.c.b ^ -2147483647i), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-1i, var_2.c.b)), var_2.a))), func_6(firstLeadingBit(firstLeadingBit(31198u)), global1[_wgslsmith_index_u32(34124u, 5u)], Struct_2(func_1(Struct_2(var_2.b.a, var_2.c.b), ~vec4<i32>(var_2.b.b, var_2.b.b, -7183i, 0i), vec3<f32>(-457f, 1000f, var_1)), var_2.c.b)).b, func_6(14727u, global1[_wgslsmith_index_u32(countOneBits(18967u), 5u)], Struct_2(func_6(~global0[_wgslsmith_index_u32(8131u, 2u)], global1[_wgslsmith_index_u32(6715u, 5u)], func_6(8008u, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1044u, 2u)], 2u)], 5u)], Struct_2(Struct_1(vec2<f32>(-1000f, var_2.c.a.a.x)), 19789i)).b).c.a, -35496i & _wgslsmith_clamp_i32(var_0.a.x, var_2.c.b, 1i))).c);
    let var_3 = abs(vec4<u32>(abs(~_wgslsmith_mult_u32(u_input.b, u_input.a)), (~4294967295u | ~u_input.a) & _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(49606u, 2u)], 3617u, u_input.b, u_input.a), vec4<u32>(1791u, 13078u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 2u)], 2u)], 46938u)), global0[_wgslsmith_index_u32(~func_5(func_6(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(47025u, 5u)]).c.a, Struct_4(Struct_1(vec2<f32>(-562f, 570f)), Struct_1(vec2<f32>(var_2.b.a.a.x, var_1)), Struct_2(var_0.b.a, 39596i), var_0.b), true), 2u)], u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_i32(reverseBits(var_0.a.x), var_0.a.x)), var_2.c.a.a.x, ~(-1i));
}

