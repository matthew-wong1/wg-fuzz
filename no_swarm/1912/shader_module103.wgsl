struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<vec4<i32>, 1>;

var<private> global2: array<bool, 3>;

var<private> global3: array<Struct_2, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b.d))) - 1f);
    global0 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0))));
    let var_2 = select(arg_2, arg_2, arg_1.b.c.xy);
    global1 = array<vec4<i32>, 1>();
    return arg_1.b.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(arg_2.d - _wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(arg_1.x)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 912f, -208f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d, arg_1.x, -956f, arg_2.d), vec4<f32>(-1000f, var_0, 1091f, -1801f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 785f, arg_2.d, arg_2.d)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1962f, var_0, -439f, 492f) + vec4<f32>(var_0, -135f, var_0, -748f)) + vec4<f32>(-1620f, arg_1.x, arg_2.d, arg_1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, 940f, -1794f, var_0) - vec4<f32>(-887f, var_0, arg_1.x, -1619f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-469f, 1046f, -1000f, arg_1.x), vec4<f32>(arg_2.d, -218f, arg_2.d, arg_2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_1.x, -2114f, arg_2.d)), arg_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-342f, var_0, var_0, -535f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, arg_1.x, arg_2.d, 285f)), true)))));
    let var_2 = max(select(abs(vec4<u32>(1u, u_input.d, u_input.d, 0u) >> (vec4<u32>(arg_2.a, 1u, 29896u, 1u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_u32(vec4<u32>(86445u, arg_2.a, u_input.d, 23036u), ~vec4<u32>(arg_2.a, arg_2.a, arg_2.a, u_input.d)), _wgslsmith_sub_vec4_u32(~vec4<u32>(58505u, 119339u, 9196u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, arg_2.a, 25411u, 11700u), ~vec4<u32>(4294967295u, arg_2.a, 70540u, 1u))), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(35786u, 2u)], global2[_wgslsmith_index_u32(arg_2.a, 3u)], arg_2.c.x), arg_0, select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 3u)], false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, global2[_wgslsmith_index_u32(arg_2.a, 3u)], true), arg_2.c.x))), vec4<u32>(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_2.a, u_input.d, arg_2.a), vec4<u32>(31983u, u_input.d, 83029u, 0u)), 0u), _wgslsmith_clamp_u32(arg_2.a, ~u_input.d, _wgslsmith_mod_u32(u_input.d, 91274u)) | 4576u, 1u, 0u));
    global2 = array<bool, 3>();
    global1 = array<vec4<i32>, 1>();
    return ~var_2.yw;
}

fn func_2() -> u32 {
    var var_0 = vec2<u32>(u_input.d, ~1u) | select(func_4(vec4<bool>(all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d, 3u)])), true, true, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 239f, -984f)))), Struct_1(~0u, select(1i, u_input.b, false), vec3<bool>(false, global2[_wgslsmith_index_u32(52758u, 3u)], false), _wgslsmith_f_op_f32(func_3(u_input.d, global3[_wgslsmith_index_u32(0u, 11u)], vec2<u32>(1u, u_input.d))))), _wgslsmith_add_vec2_u32(abs(~vec2<u32>(u_input.d, u_input.d)), vec2<u32>(min(85761u, 1u), ~39047u)), global0[_wgslsmith_index_u32(~(~1u), 2u)]);
    var var_1 = 597f;
    var var_2 = abs(-u_input.a.wy);
    global0 = array<bool, 2>();
    var var_3 = Struct_1(~(~_wgslsmith_add_u32(u_input.d, reverseBits(0u))), var_2.x, vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 2u)], false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -702f), _wgslsmith_f_op_f32(func_3(~var_0.x, global3[_wgslsmith_index_u32(1u, 11u)], max(vec2<u32>(u_input.d, 65789u), vec2<u32>(1u, 15440u)))), any(vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(func_3(reverseBits(u_input.d) | var_0.x, Struct_2(var_0.x, Struct_1(var_0.x, u_input.e, vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.d, 3u)]), 885f), ~vec2<u32>(var_0.x, u_input.d)), countOneBits(func_4(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], false), vec3<f32>(288f, -1000f, -972f), Struct_1(u_input.d, u_input.a.x, vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 3u)], false, true), 703f)))))));
    return u_input.d;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(func_2(), 3u)] || arg_0.c.x;
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, arg_1.x, firstLeadingBit(arg_0.a), arg_1.x), (~abs(vec4<u32>(arg_0.a, 44719u, arg_1.x, arg_0.a)) ^ vec4<u32>(arg_1.x, abs(1u), _wgslsmith_add_u32(arg_1.x, 56912u), select(arg_1.x, 1u, global2[_wgslsmith_index_u32(45529u, 3u)]))) >> (~vec4<u32>(~arg_0.a, 4294967295u, 0u, _wgslsmith_mult_u32(0u, 1u)) % vec4<u32>(32u)), ~select(~vec4<u32>(0u, 4569u, u_input.d, arg_0.a), reverseBits(~vec4<u32>(arg_0.a, arg_0.a, arg_1.x, u_input.d)), true));
    let var_2 = global3[_wgslsmith_index_u32(24708u, 11u)];
    var_0 = true;
    global3 = array<Struct_2, 11>();
    return var_2.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-421f, _wgslsmith_f_op_f32(f32(-1f) * -993f), select(false, global2[_wgslsmith_index_u32(4294967295u, 3u)], arg_0.c.x))) - arg_0.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(round(530f))), 262f)), _wgslsmith_f_op_f32(-arg_1.d)));
    global3 = array<Struct_2, 11>();
    global0 = array<bool, 2>();
    var var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(arg_0.a, 4294967295u), Struct_2(0u, Struct_1(arg_0.a, -18142i, vec3<bool>(false, true, arg_2.x), -1602f), vec2<u32>(arg_0.a, 7552u)), abs(vec2<u32>(1u, 4294967295u)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1118f) + _wgslsmith_div_f32(arg_1.d, -934f)))), _wgslsmith_div_f32(arg_1.d, _wgslsmith_div_f32(arg_0.d, -1828f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))));
    return !(!arg_0.c);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-247f * arg_3.b.d), _wgslsmith_f_op_f32(f32(-1f) * -573f), 322f, 506f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(698f, arg_1.d, arg_1.d, arg_3.b.d)))), !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_3.b.a, 2u)], arg_2.x, arg_1.c.x, arg_1.c.x), vec4<bool>(arg_3.b.c.x, false, false, true), arg_0.x))))));
    let var_1 = func_1(func_1(func_1(func_1(func_1(arg_3.b, vec2<u32>(1u, arg_1.a)), vec2<u32>(4294967295u, 1u) >> (vec2<u32>(arg_1.a, arg_3.c.x) % vec2<u32>(32u))), select(vec2<u32>(6754u, arg_3.b.a), ~arg_3.c, arg_2.x)), vec2<u32>(~u_input.d, ~abs(arg_1.a))), ~arg_3.c);
    let var_2 = ~((countOneBits(u_input.a.xz >> (vec2<u32>(28927u, arg_3.b.a) % vec2<u32>(32u))) ^ vec2<i32>(1i, 1i)) << (~(~abs(vec2<u32>(arg_3.a, arg_3.a))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(var_0.wyw));
    let var_4 = ~arg_1.a;
    return StorageBuffer(abs(vec4<u32>(78287u, var_4, _wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.a, 10741u), firstLeadingBit(var_4)), ~_wgslsmith_add_u32(var_4, arg_3.a))), arg_3.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d + -107f))), var_1.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(332f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 11>();
    global0 = array<bool, 2>();
    global1 = array<vec4<i32>, 1>();
    global2 = array<bool, 3>();
    global3 = array<Struct_2, 11>();
    let x = u_input.a;
    s_output = func_6(!vec2<bool>(global2[_wgslsmith_index_u32(44297u, 3u)], global2[_wgslsmith_index_u32(1u | _wgslsmith_mod_u32(864u, u_input.d), 3u)]), Struct_1(u_input.d, u_input.a.x ^ abs(~1i), func_5(func_1(Struct_1(4294967295u, u_input.c.x, vec3<bool>(false, global0[_wgslsmith_index_u32(21464u, 2u)], global2[_wgslsmith_index_u32(u_input.d, 3u)]), -1356f), vec2<u32>(u_input.d, 74906u)), func_1(func_1(Struct_1(u_input.d, 4464i, vec3<bool>(global0[_wgslsmith_index_u32(32098u, 2u)], false, global2[_wgslsmith_index_u32(u_input.d, 3u)]), 1176f), vec2<u32>(17911u, u_input.d)), vec2<u32>(17793u, 4294967295u)), select(!vec4<bool>(global0[_wgslsmith_index_u32(63151u, 2u)], true, global2[_wgslsmith_index_u32(32931u, 3u)], global0[_wgslsmith_index_u32(u_input.d, 2u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 2u)], false, global0[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 3u)], true, global0[_wgslsmith_index_u32(9677u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(22655u, 2u)], true, global0[_wgslsmith_index_u32(35607u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])))), _wgslsmith_f_op_f32(round(1f))), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.d | ~31568u, 3u)], !(all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 2u)], true)) && true), global2[_wgslsmith_index_u32(u_input.d, 3u)]), global3[_wgslsmith_index_u32(35108u, 11u)]);
}

