struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: array<u32, 12>;

var<private> global2: array<i32, 11>;

var<private> global3: array<f32, 19> = array<f32, 19>(1071f, 1828f, 1233f, 153f, 411f, -868f, 468f, -2870f, 2134f, -635f, 1000f, 1924f, -344f, -472f, -202f, -428f, -1090f, 526f, -567f);

var<private> global4: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(1297f, 600f, -316f), Struct_1(-136f, -340f, -1081f), Struct_1(-2121f, -485f, 663f), Struct_1(-128f, -1000f, 1268f), Struct_1(-784f, 121f, -1294f), Struct_1(-1040f, -299f, -2569f), Struct_1(1070f, -490f, 1069f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = array<u32, 12>();
    global2 = array<i32, 11>();
    var var_0 = 51905i;
    global1 = array<u32, 12>();
    global2 = array<i32, 11>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(501f)))));
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    global2 = array<i32, 11>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 19u)])), global3[_wgslsmith_index_u32(u_input.a << (1u % 32u), 19u)]) * global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 19u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 19u)] + -177f), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a) << (u_input.c.x % 32u), 19u)], true)), global3[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 19u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 19u)], -582f)))))));
    var_0 = global4[_wgslsmith_index_u32(select(abs(47771u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), arg_0.x | arg_0.x), 7u)];
    let var_1 = -u_input.b.x;
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(countOneBits(u_input.a), abs(1u)), 7u)];
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, u_input.a)), ~_wgslsmith_sub_u32(u_input.a, global1[_wgslsmith_index_u32(29942u, 12u)]), _wgslsmith_div_u32(4098u, global1[_wgslsmith_index_u32(25088u >> (global1[_wgslsmith_index_u32(1u, 12u)] % 32u), 12u)])), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<u32>(21904u, 4294967295u, 69947u)), ~vec3<u32>(2836u, 1u, global1[_wgslsmith_index_u32(0u, 12u)])) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(16070u, 1u, 20382u)) % vec3<u32>(32u))), min(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(59838u << (u_input.c.x % 32u), ~0u, global1[_wgslsmith_index_u32(u_input.a, 12u)]), vec3<u32>(max(1u, u_input.a), ~4294967295u, 4294967295u))));
}

fn func_1() -> Struct_1 {
    global2 = array<i32, 11>();
    global3 = array<f32, 19>();
    var var_0 = _wgslsmith_mod_u32(~min(func_2(vec2<bool>(true, true)), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~0u, 12u)], _wgslsmith_clamp_u32(4294967295u, 46648u, u_input.a))), u_input.a);
    var var_1 = global0[_wgslsmith_index_u32(min(0u | u_input.a, ~_wgslsmith_div_u32(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], u_input.c.x), countOneBits(46352u))), 8u)];
    var var_2 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(29396u, 12u)], 28766u, global1[_wgslsmith_index_u32(4294967295u, 12u)], 39292u), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47011u, 12u)], 12u)], 4294967295u))), ~_wgslsmith_mult_u32(47001u, 1u));
    return Struct_1(_wgslsmith_f_op_f32(ceil(-875f)), _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.x, ~var_2.x), 19u)] - 583f) - global3[_wgslsmith_index_u32(select(u_input.c.x, global1[_wgslsmith_index_u32(min(var_2.x, ~global1[_wgslsmith_index_u32(u_input.a, 12u)]), 12u)], var_1.x), 19u)]));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = 33657i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(min(0u, ~10505u), 19u)], 916f))), arg_0.a, _wgslsmith_f_op_f32(floor(-1476f)));
    global1 = array<u32, 12>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 12u)], 19u)]))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(916f, arg_0.c)), -516f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 220f) * vec2<f32>(998f, 1651f)))), vec2<f32>(-1000f, arg_0.b), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~u_input.c.x), 8u)])));
    var var_3 = vec4<i32>(2212i, ~1546i | (_wgslsmith_mult_i32(45982i, u_input.b.x) | -abs(33485i)), u_input.b.x, 42676i);
    return _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(max(u_input.c, vec2<u32>(9095u, global1[_wgslsmith_index_u32(4294967295u, 12u)])), countOneBits(u_input.c)), 124421u) & _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(u_input.a, u_input.c.x, 67178u, 4294967295u), vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)], 17688u), true) ^ vec4<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 12u)], 4294967295u), (vec4<u32>(1u, 4294967295u, 1u, u_input.a) | vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 12u)], u_input.a, u_input.a, u_input.a)) >> (~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u) % vec4<u32>(32u)), true), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], 4294967295u, 42060u, global1[_wgslsmith_index_u32(29889u, 12u)]), vec4<u32>(u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(u_input.a, 12u)], u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(func_4(func_1(), true, vec3<bool>(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true, true)), 7u)];
    let var_1 = global4[_wgslsmith_index_u32(abs(func_4(Struct_1(global3[_wgslsmith_index_u32(~58869u, 19u)], var_0.c, -1784f), (_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(0u, 11u)], 30744i) >> (1679u % 32u)) > ~abs(-12082i), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, true)))), 7u)];
    let var_2 = Struct_1(582f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - 661f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))), -1330f);
    global0 = array<vec2<bool>, 8>();
    var var_3 = max(min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 45168i, -2147483647i), vec4<i32>(34791i, u_input.b.x, -2147483647i, -1i)) | vec4<i32>(u_input.b.x, 2147483647i, 41502i, global2[_wgslsmith_index_u32(1u, 11u)]), vec4<i32>(u_input.b.x, -u_input.b.x, u_input.b.x ^ 2147483647i, u_input.b.x >> (u_input.a % 32u))), ~vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 11u)], 0i), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7040u, 12u)], 11u)], -global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 11u)])) & (vec4<i32>(-1i) * -vec4<i32>(-38799i, ~u_input.b.x, u_input.b.x, ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 11u)]));
    let var_4 = func_1();
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f)), global3[_wgslsmith_index_u32(u_input.c.x, 19u)], all(select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), all(global0[_wgslsmith_index_u32(0u, 8u)])), vec3<bool>(false, select(true, false, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), 1u < global1[_wgslsmith_index_u32(13262u, 12u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(107586u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), abs(u_input.c.x)) & ~60016u);
}

