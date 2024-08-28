struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 2147483647i;

var<private> global2: array<f32, 4> = array<f32, 4>(-824f, -783f, 1630f, -1364f);

var<private> global3: array<Struct_1, 6>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    global4 = !vec4<bool>(!all(vec2<bool>(false, global4.x)), false, all(vec4<bool>(true, false, global4.x, false)) && (1u == u_input.a.x), ~(~9608u) <= u_input.b);
    var var_0 = _wgslsmith_f_op_f32(trunc(840f));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, global2[_wgslsmith_index_u32(u_input.b, 4u)], 929f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, -743f, -1184f) - vec3<f32>(global2[_wgslsmith_index_u32(75292u, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)], 1083f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(50931u, 4u)], global2[_wgslsmith_index_u32(52192u, 4u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, global2[_wgslsmith_index_u32(3773u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]) + vec3<f32>(-672f, 564f, 836f)), global4.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 4u)], -1755f, -542f)))));
    var var_2 = -1041f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, global2[_wgslsmith_index_u32(33460u, 4u)])) - var_1.x) - -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f - -1000f))))));
    return -1911i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(44467u, 6u)];
    global0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(~31891i, firstTrailingBit(i32(-1i) * -14621i), _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(-2147483647i, 0i, 7686i), vec3<i32>(1i, -12274i, 0i)), vec3<i32>(1i, 1i, 1i), global4.wwy), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 0i, 21266i), vec3<i32>(36209i, -2147483647i, 2147483647i)), vec3<i32>(0i, -2147483647i, 8894i) << (vec3<u32>(28946u, var_0.e.x, var_0.e.x) % vec3<u32>(32u))))), _wgslsmith_mult_i32(~func_3(), 24607i));
    global3 = array<Struct_1, 6>();
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = _wgslsmith_div_i32(min(_wgslsmith_add_i32(countOneBits(-5131i), _wgslsmith_mod_i32(-30584i, 1i)), _wgslsmith_add_i32(firstTrailingBit(-40547i), _wgslsmith_div_i32(2029i, -24118i))) & -abs(select(16925i, -35361i, arg_0.c.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-51618i, -14911i, -14512i, 1i), vec4<i32>(0i, 20636i, 0i, -327i)), vec4<i32>(-30923i, 0i, -1i, 13719i)), -2147483647i) << (~max(_wgslsmith_add_u32(1u, arg_0.e.x), ~var_0.e.x) % 32u));
    return vec4<bool>(var_0.c.x, arg_1.x, !(arg_0.c.x || global4.x), true);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, arg_2.e.x, 4294967295u), arg_2.a)), arg_2.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(arg_2.b)), vec3<f32>(global2[_wgslsmith_index_u32(3974u, 4u)], global2[_wgslsmith_index_u32(60172u, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), !arg_2.c.x)))), arg_2.b, arg_3.wxw)), arg_3.wz, _wgslsmith_f_op_vec2_f32(trunc(arg_2.b.xz)), vec2<u32>(firstLeadingBit(select(_wgslsmith_add_u32(4294967295u, arg_2.a.x), 1u, true)), u_input.b));
    var var_1 = vec2<i32>(~(0i ^ _wgslsmith_mult_i32(arg_0.x, 0i)), _wgslsmith_dot_vec4_i32(-((vec4<i32>(-31701i, arg_1, arg_1, arg_0.x) ^ vec4<i32>(0i, arg_1, 1i, 14576i)) >> (vec4<u32>(arg_2.a.x, 66977u, arg_2.e.x, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-24515i, arg_0.x, -1i, 23086i), ~arg_0), vec4<i32>(-arg_1, _wgslsmith_mult_i32(4225i, arg_0.x), 1i, -arg_1))));
    var var_2 = all(vec3<bool>(true, u_input.b > ~1740u, !arg_2.c.x));
    let var_3 = arg_2.a.zxx >> ((~arg_2.a.ywz & _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.a.x, 29926u, 12764u), ~(~arg_2.a.wwz))) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, arg_2.b.x, -1590f, global2[_wgslsmith_index_u32(var_3.x, 4u)]) * vec4<f32>(global2[_wgslsmith_index_u32(89774u, 4u)], global2[_wgslsmith_index_u32(arg_2.e.x, 4u)], 954f, -462f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(423f, arg_2.b.x, arg_2.b.x, arg_2.d.x), vec4<f32>(1000f, -899f, global2[_wgslsmith_index_u32(var_3.x, 4u)], -244f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.d.x, global2[_wgslsmith_index_u32(arg_2.e.x, 4u)])), global4.x | true)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-931f - 933f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * arg_2.d.x)), 844f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1564f - arg_2.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, arg_2.b.x, 2284f, -637f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-445f, 1294f, 121f, arg_2.d.x) - vec4<f32>(var_0.d.x, 1023f, var_0.b.x, 573f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 1000f, global2[_wgslsmith_index_u32(13894u, 4u)], 1021f) * vec4<f32>(var_0.d.x, 926f, arg_2.b.x, -650f)))), any(arg_3.yzz))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(948f, -691f, 605f, arg_2.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.a.x, 4u)], -509f, global2[_wgslsmith_index_u32(var_3.x, 4u)], -763f), vec4<f32>(global2[_wgslsmith_index_u32(var_3.x, 4u)], 518f, -1253f, global2[_wgslsmith_index_u32(arg_2.a.x, 4u)])))))))));
    return (vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-172i, var_1.x), 1i), arg_0.x) & -max(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(-20410i, 129i))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, abs(58345u)), _wgslsmith_div_vec2_u32(var_3.yz >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 1u) & vec2<u32>(35069u, 0u)) & ~(~vec2<u32>(714u, 4294967295u)), max(vec2<u32>(0u, abs(4294967295u)), ~(~vec2<u32>(var_0.a.x, var_0.a.x)))) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    global2 = array<f32, 4>();
    var var_0 = global3[_wgslsmith_index_u32(max(4294967295u >> (abs(u_input.b >> (4294967295u % 32u)) % 32u), max(7650u, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 35237u, 1u), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), global4.x), countOneBits(vec4<u32>(4294967295u, u_input.b, 4294967295u, 2665u))))), 6u)];
    global1 = _wgslsmith_dot_vec2_i32(func_4(vec4<i32>(-1i, _wgslsmith_mod_i32(0i, 1i) ^ (-1i << (var_0.e.x % 32u)), 1i >> (firstLeadingBit(8927u) % 32u), ~_wgslsmith_sub_i32(-2147483647i, 0i)), ~2147483647i, Struct_1(~var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.b), vec2<bool>(var_0.c.x, global4.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1189f, var_0.d.x) + vec2<f32>(global2[_wgslsmith_index_u32(var_0.a.x, 4u)], -614f)), ~(~u_input.a.yy)), !func_2(global3[_wgslsmith_index_u32(u_input.b, 6u)], global4.yx, -224f)), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(1i, 29977i)), max(vec2<i32>(24976i, 0i) << (u_input.a.zz % vec2<u32>(32u)), abs(vec2<i32>(3682i, -11935i))) & vec2<i32>(1i, 1i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(5475u, 4u)], var_0.b.x))), global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 4u)], _wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(796f * _wgslsmith_f_op_f32(select(-1215f, var_0.b.x, true)))), _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1143f)))));
    let var_2 = ~var_0.a.x;
    return Struct_1(var_0.a, var_1.yxw, select(vec2<bool>(true, (var_2 ^ 101734u) != var_0.a.x), select(vec2<bool>(true, true), func_2(Struct_1(var_0.a, vec3<f32>(var_1.x, var_0.d.x, var_0.b.x), vec2<bool>(var_0.c.x, false), vec2<f32>(1163f, var_1.x), vec2<u32>(1u, var_2)), !vec2<bool>(true, global4.x), var_1.x).wy, any(select(vec3<bool>(global4.x, true, var_0.c.x), global4.ywz, var_0.c.x))), any(global4.xzx)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1673f, var_0.b.x), _wgslsmith_f_op_vec2_f32(var_0.b.xy * var_0.b.zy))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1159f)), var_1.x) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.b.xz - var_1.wx)))))), ~countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1963u, 4294967295u), ~u_input.a.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(u_input.a.x & ~2125u, 4u)]);
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(), -1189i, -8995i, _wgslsmith_mod_i32(20157i, _wgslsmith_add_i32(-2147483647i, countOneBits(-2147483647i)))), _wgslsmith_div_vec4_i32(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, 1i), vec4<i32>(44685i, -52809i, 2147483647i, 14374i)), ~vec4<i32>(-35020i, 0i, -2147483647i, 2147483647i), reverseBits(vec4<i32>(16120i, -1i, 1i, 15959i))), vec4<i32>(_wgslsmith_mod_i32(abs(1i), 38188i), reverseBits(select(18926i, -1i, global4.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(19432i, -2147483647i, 18771i), min(vec3<i32>(27025i, 0i, -18421i), vec3<i32>(-1i, 2147483647i, 4471i))), _wgslsmith_div_i32(~1i, _wgslsmith_add_i32(-8394i, 1i)))));
    var var_2 = vec4<i32>(10208i, _wgslsmith_add_i32(_wgslsmith_div_i32(-firstLeadingBit(-21116i), max(3084i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, i32(-1i) * -1i, reverseBits(1i), ~(-32052i)), vec4<i32>(0i, func_3(), 0i, i32(-1i) * -2147483647i))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(-22992i), 50476i), _wgslsmith_mod_i32(-(i32(-1i) * -1i), -2147483647i), _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-46845i, -30979i, -18377i, 10463i), vec4<i32>(1i, 1i, 1i, 1i)))), reverseBits(1i));
    var var_3 = _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(select(var_2.wx, var_2.zz, var_0.c), var_2.xy)), vec2<i32>(var_2.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.x), var_2.zx)))) << (firstLeadingBit(abs(var_0.e.x)) % 32u);
    let var_4 = global3[_wgslsmith_index_u32(~(~0u), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(_wgslsmith_sub_vec2_u32(var_0.a.wy, ~var_0.a.wx))), -(~_wgslsmith_mod_i32(i32(-1i) * -3442i, 7017i)), func_3(), 0i, var_2.wzy);
}

