struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true));

var<private> global3: array<f32, 31>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_5(Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 31u)], 1233f, -633f)), Struct_1(true, 36848i)), ~(vec4<u32>(0u, u_input.a, 0u, arg_0) ^ vec4<u32>(80935u, arg_0, arg_0, u_input.d.x)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1453f, global3[_wgslsmith_index_u32(arg_0, 31u)], global3[_wgslsmith_index_u32(43579u, 31u)]) * vec3<f32>(-408f, global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(u_input.d.x, 31u)])), Struct_1(true, 4108i)), all(global2[_wgslsmith_index_u32(arg_0, 6u)]), abs(_wgslsmith_mod_i32(2147483647i, 34565i))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1129f), _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.d.x ^ 1u, 31u)], _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(u_input.d.x, 31u)])))), _wgslsmith_f_op_f32(trunc(-1000f))), ~vec3<i32>(abs(2147483647i), u_input.c, firstTrailingBit(u_input.b.x)), 0u), ~(firstLeadingBit(max(vec2<i32>(-2147483647i, u_input.c), u_input.b)) >> (~firstLeadingBit(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))), Struct_3(Struct_2(vec3<f32>(-816f, _wgslsmith_f_op_f32(trunc(-1000f)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 55570u), 31u)]), Struct_1(true, firstLeadingBit(u_input.c))), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0, 42053u, 1u), vec4<u32>(u_input.d.x, arg_0, u_input.a, u_input.d.x)), vec4<u32>(arg_0, arg_0, u_input.a, u_input.d.x), any(global0[_wgslsmith_index_u32(44713u, 31u)])), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 31u)], -1000f, global3[_wgslsmith_index_u32(arg_0, 31u)]) + _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(arg_0, 31u)], global3[_wgslsmith_index_u32(48466u, 31u)]), vec3<f32>(global3[_wgslsmith_index_u32(arg_0, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(38647u, 31u)]))), Struct_1(159f <= global3[_wgslsmith_index_u32(arg_0, 31u)], u_input.b.x)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), (_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(2992u, 22u)], vec3<i32>(u_input.b.x, -1i, u_input.c)) ^ ~(-24513i)) >> (reverseBits(~arg_0) % 32u)));
    let var_1 = global3[_wgslsmith_index_u32(0u & max(_wgslsmith_add_u32(u_input.a, var_0.c.b.x), ~(~868u)), 31u)];
    var var_2 = vec4<i32>(u_input.c, min(reverseBits(-27796i), -77118i), countOneBits(~var_0.a.a.c.b.b), 1i);
    global0 = array<vec3<bool>, 31>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-var_0.a.a.a.a.xy);
    return ~abs(var_0.a.a.b);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32) -> bool {
    let var_0 = vec3<bool>(!(!select(true, arg_1.a.c.b.a, arg_1.a.c.b.a) != false), true, !arg_1.a.d);
    let var_1 = arg_0.x;
    var var_2 = global1[_wgslsmith_index_u32(49096u, 22u)];
    var var_3 = vec4<u32>(~u_input.d.x, select(_wgslsmith_sub_u32(max(~25555u, ~31830u), reverseBits(1u)), _wgslsmith_div_u32(arg_1.d, 90478u), arg_1.a.c.b.a), 0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(func_3(~53783u), ~vec4<u32>(65510u, 58524u, arg_1.a.b.x, 50766u))));
    var var_4 = -22619i << ((_wgslsmith_mult_u32(func_3(~0u).x, _wgslsmith_mult_u32(u_input.a, firstLeadingBit(11745u))) >> (~u_input.d.x % 32u)) % 32u);
    return var_0.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_3 {
    var var_0 = reverseBits(~firstTrailingBit(vec3<i32>(1i, -20736i, 0i))) << ((~(~(vec3<u32>(52044u, 1079u, u_input.a) << (vec3<u32>(u_input.d.x, 1u, u_input.d.x) % vec3<u32>(32u)))) << (vec3<u32>(~(u_input.a & 0u), max(u_input.a, u_input.d.x << (27380u % 32u)), firstLeadingBit(38188u ^ u_input.d.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d.x << (u_input.d.x % 32u), u_input.a), max(_wgslsmith_clamp_vec2_u32(u_input.d, ~u_input.d, vec2<u32>(11774u, 11712u)), ~vec2<u32>(u_input.d.x, u_input.d.x) | select(u_input.d, vec2<u32>(29191u, u_input.a), arg_1.zz))) & u_input.d;
    let var_2 = Struct_5(Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(33640u, 31u)], 780f, global3[_wgslsmith_index_u32(var_1.x, 31u)])), Struct_1(arg_2.x, var_0.x)), abs(vec4<u32>(var_1.x, var_1.x, 1u, 1u) | vec4<u32>(1u, u_input.d.x, 1u, u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(376f, 103f, 338f)), Struct_1(true, -51356i)), false, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(u_input.a, 31u)])), 1053f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(19531u, 31u)] - 1144f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)], -930f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1247f, global3[_wgslsmith_index_u32(var_1.x, 31u)], -1276f)))), -(~arg_0.zww), 8440u), arg_0.xx, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(var_1.x, 31u)], global3[_wgslsmith_index_u32(4294967295u, 31u)])), vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 31u)], global3[_wgslsmith_index_u32(var_1.x, 31u)], -155f))), Struct_1(false, 7723i)), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 31894u), countOneBits(1u), ~u_input.d.x, _wgslsmith_clamp_u32(30132u, 4294967295u, 102386u)), Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 31u)], -1393f, 311f), _wgslsmith_div_vec3_f32(vec3<f32>(-1223f, global3[_wgslsmith_index_u32(16857u, 31u)], -592f), vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(u_input.d.x, 31u)], -979f)), true)), Struct_1(arg_1.x && arg_1.x, _wgslsmith_sub_i32(1i, var_0.x))), all(vec4<bool>(!arg_2.x, true, all(global2[_wgslsmith_index_u32(var_1.x, 6u)]), all(global2[_wgslsmith_index_u32(u_input.d.x, 6u)]))), u_input.b.x));
    global2 = array<vec4<bool>, 6>();
    var var_3 = var_0.x;
    return Struct_3(var_2.c.a, ~(~var_2.c.b), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 31u)], var_2.c.c.a.x, global3[_wgslsmith_index_u32(u_input.a, 31u)]) - _wgslsmith_f_op_vec3_f32(var_2.a.a.a.a - vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 31u)], global3[_wgslsmith_index_u32(var_1.x, 31u)], global3[_wgslsmith_index_u32(u_input.a, 31u)])))), var_2.a.a.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(56589u, 31u)] - var_2.c.a.a.x) * -688f) + -208f) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(104383u, 31u)])) * -1315f), global3[_wgslsmith_index_u32(var_1.x, 31u)])), max(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, var_0.x), vec2<i32>(2147483647i, var_0.x)), var_2.b.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> Struct_1 {
    global1 = array<vec3<i32>, 22>();
    let var_0 = vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.c, firstTrailingBit(-1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, arg_0.b, arg_2), vec4<i32>(0i, 3493i, 1i, 0i)), u_input.b.x & u_input.c));
    var var_1 = func_4(-firstLeadingBit(vec4<i32>(-arg_2, _wgslsmith_mod_i32(var_0.x, -47767i), _wgslsmith_mod_i32(var_0.x, 74936i), arg_2)), vec4<bool>(true, any(global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), arg_0.a, true), vec4<bool>(!(!func_2(arg_1, Struct_4(Struct_3(Struct_2(vec3<f32>(arg_1.x, arg_1.x, -1000f), arg_0), vec4<u32>(u_input.d.x, u_input.a, 5792u, u_input.a), Struct_2(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 31u)], global3[_wgslsmith_index_u32(u_input.d.x, 31u)], -1563f), Struct_1(true, -23867i)), arg_0.a, arg_2), vec3<f32>(arg_1.x, arg_1.x, 529f), global1[_wgslsmith_index_u32(2869u, 22u)], u_input.a), 862f)), all(vec2<bool>(false, false)), false, !(!(u_input.b.x < arg_2))));
    global3 = array<f32, 31>();
    let var_2 = Struct_5(Struct_4(func_4(~vec4<i32>(u_input.c, 16565i, arg_2, arg_2), vec4<bool>(!var_1.a.b.a, arg_0.a == true, all(vec2<bool>(var_1.d, true)), true), global2[_wgslsmith_index_u32(~u_input.a, 6u)]), var_1.c.a, select(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, 0u, 85139u)), 22u)], _wgslsmith_mult_vec3_i32(vec3<i32>(20367i, var_1.e, var_0.x), -global1[_wgslsmith_index_u32(13047u, 22u)]), var_1.a.b.a), 21543u), _wgslsmith_sub_vec2_i32(min(reverseBits(var_0 & vec2<i32>(var_0.x, -10131i)), var_0), _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(arg_2, arg_2)), firstLeadingBit(-vec2<i32>(u_input.c, arg_0.b)))), func_4(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, -1i, -32776i), vec4<i32>(arg_2, var_0.x, var_1.a.b.b, 0i), vec4<i32>(var_1.a.b.b, u_input.c, -47871i, var_1.e)) >> (~var_1.b % vec4<u32>(32u))), vec4<bool>(false, true, !any(vec2<bool>(arg_0.a, false)), any(select(global0[_wgslsmith_index_u32(38246u, 31u)], vec3<bool>(true, arg_0.a, true), global0[_wgslsmith_index_u32(64196u, 31u)]))), !(!vec4<bool>(false, var_1.d, true, var_1.c.b.a))));
    return func_4(firstTrailingBit(~vec4<i32>(arg_0.b, var_1.a.b.b, -1i, 2147483647i)) << (~(vec4<u32>(var_1.b.x, 0u, u_input.a, 23048u) | ~vec4<u32>(16252u, 38236u, 10526u, 4294967295u)) % vec4<u32>(32u)), !vec4<bool>(all(vec4<bool>(true, true, true, true)), var_2.a.a.a.b.a, all(select(vec2<bool>(true, false), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true))), (var_2.b.x >> (4294967295u % 32u)) > (i32(-1i) * -7554i)), vec4<bool>(!(!any(vec4<bool>(true, true, var_2.c.a.b.a, var_2.c.d))), true, var_1.a.b.a, !arg_0.a)).a.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    global3 = array<f32, 31>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0.x, 31u)], -2260f), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(9788u, 31u)] - global3[_wgslsmith_index_u32(arg_0.x, 31u)]), arg_1.a)), -1305f, 298f, _wgslsmith_f_op_f32(trunc(-884f)))));
    var var_1 = -18445i;
    var var_2 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -576f))));
    var var_3 = !vec4<bool>(any(!(!vec4<bool>(arg_1.a, arg_1.a, false, arg_1.a))), true, true, true);
    return func_4(vec4<i32>(_wgslsmith_mult_i32(1i << (0u % 32u), arg_1.b | -40474i) & arg_1.b, 1i >> (u_input.d.x % 32u), 11574i, ~(-13820i)), vec4<bool>(var_3.x, arg_1.a, arg_1.a, var_3.x), select(vec4<bool>(true, (arg_1.b >> (u_input.a % 32u)) < _wgslsmith_clamp_i32(arg_1.b, -1192i, 8801i), false, arg_1.a), vec4<bool>(true, false, any(vec3<bool>(var_3.x, var_3.x, false)), !select(var_3.x, arg_1.a, arg_1.a)), func_1(func_4(reverseBits(vec4<i32>(44866i, u_input.c, u_input.b.x, 0i)), select(vec4<bool>(true, var_3.x, true, false), global2[_wgslsmith_index_u32(4294967295u, 6u)], vec4<bool>(false, false, false, false)), select(vec4<bool>(arg_1.a, arg_1.a, false, false), global2[_wgslsmith_index_u32(49509u, 6u)], false)).a.b, _wgslsmith_f_op_vec3_f32(ceil(var_0.wzx)), -2147483647i).a)).c;
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_5(Struct_4(func_4(vec4<i32>(1i, -arg_0.x, min(5323i, 0i), _wgslsmith_div_i32(arg_0.x, 0i)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(u_input.d.x), 4294967295u << (u_input.a % 32u)), 6u)], !select(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], arg_1.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(~20140u, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], _wgslsmith_f_op_f32(arg_1.a.x - global3[_wgslsmith_index_u32(1u, 31u)])) - arg_1.a), countOneBits(vec3<i32>(13365i, _wgslsmith_add_i32(28327i, arg_1.b.b), arg_1.b.b)), ~u_input.d.x), vec2<i32>(~(func_5(vec4<u32>(52444u, u_input.a, u_input.d.x, u_input.d.x), arg_1.b).b.b ^ 19201i), -func_4(vec4<i32>(31748i, u_input.c, arg_0.x, -2813i), global2[_wgslsmith_index_u32(u_input.a, 6u)], select(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(u_input.d.x, 6u)], global2[_wgslsmith_index_u32(18709u, 6u)])).c.b.b), func_4(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, arg_0.x, arg_1.b.b, -25585i)), max(-vec4<i32>(29196i, u_input.b.x, -1i, arg_0.x), -vec4<i32>(22448i, -2147483647i, u_input.c, 1i))), vec4<bool>(!arg_1.b.a, _wgslsmith_div_u32(u_input.a, u_input.a) >= 55606u, true, !(false != arg_1.b.a)), vec4<bool>(arg_1.b.a & arg_1.b.a, !(!arg_1.b.a), true, func_5(~vec4<u32>(u_input.d.x, 1u, u_input.a, u_input.d.x), arg_1.b).b.a)));
    let var_1 = Struct_5(var_0.a, reverseBits(select(firstTrailingBit(_wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(u_input.b.x, u_input.c))), vec2<i32>(abs(u_input.b.x), -1i), var_0.c.a.b.a)), var_0.a.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_0.c.b.x, 31u)], arg_2, -2136f, var_1.c.a.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(685u, 31u)], 290f, var_1.c.c.a.x, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -1638f, var_1.a.b.x, arg_2)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<i32>(var_0.a.c.x, -1i, u_input.c, 1i), vec4<bool>(false, arg_1.b.a, false, var_0.c.a.b.a), vec4<bool>(var_1.a.a.c.b.a, true, false, true)).a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1503f, 1270f), var_0.a.b.x)), 1000f), arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.c.a.a.x))))));
    var var_3 = select(vec2<bool>(!(!select(arg_1.b.a, var_0.c.c.b.a, false)), true), select(select(select(select(vec2<bool>(true, var_0.c.a.b.a), vec2<bool>(true, false), vec2<bool>(var_0.a.a.a.b.a, var_1.a.a.d)), select(vec2<bool>(arg_1.b.a, true), vec2<bool>(var_1.a.a.d, true), var_0.a.a.a.b.a), !arg_1.b.a), vec2<bool>(true, true), true), !(!select(vec2<bool>(false, var_0.c.a.b.a), vec2<bool>(var_0.c.a.b.a, false), vec2<bool>(false, var_1.c.d))), vec2<bool>(!func_4(vec4<i32>(1i, arg_0.x, u_input.b.x, var_0.c.e), global2[_wgslsmith_index_u32(9571u, 6u)], vec4<bool>(false, true, var_1.c.c.b.a, var_0.a.a.a.b.a)).d, true)), arg_1.b.a || !(_wgslsmith_f_op_f32(f32(-1f) * -718f) != _wgslsmith_f_op_f32(round(var_1.a.b.x))));
    var_0 = Struct_5(Struct_4(var_1.c, arg_1.a, vec3<i32>(~19578i, abs(arg_0.x), -20699i), reverseBits(u_input.d.x)), -var_0.b, Struct_3(func_4(~(~vec4<i32>(-2147483647i, 18787i, 1i, -1i)), global2[_wgslsmith_index_u32(var_1.c.b.x, 6u)], !vec4<bool>(false, true, true, var_1.a.a.a.b.a)).c, vec4<u32>(66625u, ~(~var_1.c.b.x), ~53173u << (var_1.c.b.x % 32u), ~var_1.a.d), var_1.c.a, var_3.x, arg_0.x));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(~reverseBits(u_input.a), u_input.a << (0u % 32u));
    var var_1 = Struct_4(Struct_3(func_6(global1[_wgslsmith_index_u32(1u, 22u)], func_5(vec4<u32>(1u, 32423u, 49087u, u_input.a), func_1(Struct_1(true, u_input.b.x), vec3<f32>(1422f, global3[_wgslsmith_index_u32(u_input.a, 31u)], -2007f), u_input.c)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(20111u, 31u)])), ~(~vec4<u32>(0u, u_input.d.x, 1u, u_input.a)), func_5(vec4<u32>(_wgslsmith_div_u32(26574u, 22610u), u_input.d.x, u_input.d.x, ~u_input.a), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.b.x, -40784i), vec4<i32>(61599i, u_input.c, -2147483647i, -57157i)), select(vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(u_input.a, 6u)], vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true)).a.b), true, -(_wgslsmith_dot_vec2_i32(vec2<i32>(-36195i, u_input.b.x), vec2<i32>(u_input.c, u_input.b.x)) & u_input.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, -399f, 412f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(23813u, 31u)], -320f, -638f) - vec3<f32>(global3[_wgslsmith_index_u32(23692u, 31u)], global3[_wgslsmith_index_u32(u_input.d.x, 31u)], 678f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(1u, 31u)], 856f, 121f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(235f, 603f, -470f) + vec3<f32>(global3[_wgslsmith_index_u32(14342u, 31u)], -620f, -572f))))), vec3<i32>(u_input.c, -(~u_input.b.x), u_input.b.x), reverseBits(91801u));
    let var_2 = Struct_5(Struct_4(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.a.c.a))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(59028u, 22u)], vec3<i32>(u_input.c, -11744i, 42568i)), ~vec3<i32>(0i, -2942i, 17253i)), var_1.a.b.x), vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -11249i, u_input.b.x), Struct_3(Struct_2(var_1.b, func_6(var_1.c, var_1.a.a, var_1.a.c.a.x).b), vec4<u32>(abs(28041u), 0u, ~11021u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(2652u, var_1.a.b.x), var_1.a.b.x)), var_1.a.a, _wgslsmith_clamp_u32(98418u, 4294967295u ^ u_input.d.x, u_input.d.x) >= (var_1.a.b.x >> (select(u_input.a, 34936u, true) % 32u)), ~(-2147483647i)));
    global2 = array<vec4<bool>, 6>();
    global1 = array<vec3<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b.x, global3[_wgslsmith_index_u32(1u, 31u)], false)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c.a.a * vec3<f32>(var_1.a.c.a.x, -528f, -1291f)))) + var_2.c.a.a), _wgslsmith_mod_vec4_i32(-select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.a.c.x, var_2.a.a.c.b.b, u_input.b.x, -18542i), vec4<i32>(-21604i, -33476i, u_input.b.x, -59135i)), select(vec4<i32>(0i, var_1.a.c.b.b, var_1.a.c.b.b, u_input.b.x), vec4<i32>(var_1.c.x, var_2.a.c.x, -21992i, -1i), vec4<bool>(var_2.c.d, false, false, true)), func_4(vec4<i32>(30333i, var_2.c.a.b.b, u_input.b.x, -51i), global2[_wgslsmith_index_u32(15396u, 6u)], global2[_wgslsmith_index_u32(u_input.a, 6u)]).c.b.a), -(~(vec4<i32>(u_input.b.x, var_2.c.a.b.b, 2147483647i, u_input.c) >> (var_1.a.b % vec4<u32>(32u))))), var_2.c.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 31u)] - var_1.b.x) - func_6(firstTrailingBit(_wgslsmith_mult_vec3_i32(var_1.c, vec3<i32>(u_input.c, var_2.c.e, -6833i))), func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a.b.b, var_2.c.e, -1i, 2147483647i), vec4<i32>(45555i, 71654i, -47314i, 0i)), select(global2[_wgslsmith_index_u32(1u, 6u)], vec4<bool>(false, false, var_1.a.c.b.a, var_2.c.c.b.a), var_2.a.a.d), !vec4<bool>(var_2.c.d, var_2.c.c.b.a, var_1.a.c.b.a, false)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1172f * -906f))).a.x));
}

