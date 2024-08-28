struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, false, false, false, true, true, true, true, true, true, true, false, false, false, true, false, true, true, true, true, false);

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<u32>(51215u, 1u), -1i, -43974i, vec4<u32>(4294967295u, 14647u, 13087u, 6141u)), Struct_1(vec2<u32>(27539u, 4294967295u), i32(-2147483648), 25063i, vec4<u32>(3329u, 1u, 4294967295u, 1u)), Struct_1(vec2<u32>(34036u, 44464u), 679i, i32(-2147483648), vec4<u32>(0u, 4294967295u, 24803u, 0u)), Struct_1(vec2<u32>(51871u, 0u), -28261i, 0i, vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), Struct_1(vec2<u32>(4294967295u, 30418u), -6065i, -42030i, vec4<u32>(6468u, 4294967295u, 17071u, 1u)), Struct_1(vec2<u32>(0u, 16755u), 0i, 2147483647i, vec4<u32>(26914u, 0u, 47259u, 3435u)), Struct_1(vec2<u32>(43988u, 4294967295u), 2147483647i, 13712i, vec4<u32>(22549u, 0u, 1u, 1u)), Struct_1(vec2<u32>(44010u, 4294967295u), 0i, -1i, vec4<u32>(0u, 4294967295u, 14285u, 109163u)), Struct_1(vec2<u32>(32473u, 53549u), 7694i, -25889i, vec4<u32>(4294967295u, 0u, 4294967295u, 24688u)), Struct_1(vec2<u32>(73213u, 48572u), -1i, 1i, vec4<u32>(71977u, 3133u, 1u, 4294967295u)), Struct_1(vec2<u32>(0u, 0u), 2367i, 39298i, vec4<u32>(49575u, 4294967295u, 39576u, 1u)), Struct_1(vec2<u32>(0u, 40779u), -1i, 11304i, vec4<u32>(4294967295u, 110068u, 1u, 0u)), Struct_1(vec2<u32>(38856u, 0u), -930i, 9164i, vec4<u32>(27500u, 66270u, 4294967295u, 38391u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> i32 {
    global1 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))))));
    global0 = array<bool, 23>();
    let var_1 = Struct_5(arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(abs(arg_2))), Struct_2(select(!(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(22120u, 23u)])), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(96618u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], false)), false & global0[_wgslsmith_index_u32(arg_1.x, 23u)], !global0[_wgslsmith_index_u32(arg_0.x, 23u)]), vec3<bool>(false, any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 23u)], global0[_wgslsmith_index_u32(arg_1.x, 23u)])), true)), vec2<i32>(u_input.b.x, -2147483647i), 784f), vec4<bool>(!any(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 23u)], global0[_wgslsmith_index_u32(34074u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])), !(!global0[_wgslsmith_index_u32(~49625u, 23u)]), global0[_wgslsmith_index_u32(abs(~arg_1.x), 23u)], 16467u >= _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, u_input.c, arg_0.x, 40591u), vec4<u32>(1u, 9123u, 79105u, 13011u)), 1u)));
    global0 = array<bool, 23>();
    return _wgslsmith_mod_i32(var_1.c.b.x, abs(-1i));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_1, 13>();
    var var_0 = Struct_3(Struct_1(vec2<u32>(min(1u, _wgslsmith_add_u32(43802u, 1u)), _wgslsmith_mult_u32(~u_input.c, ~u_input.c)), u_input.a, u_input.e.x, ~vec4<u32>(max(u_input.c, u_input.c), u_input.d.x, _wgslsmith_mod_u32(0u, u_input.c), 52295u)), !(!vec3<bool>(true, u_input.c < 1u, global0[_wgslsmith_index_u32(abs(u_input.d.x), 23u)])), ~(-363i), _wgslsmith_add_u32(1u, max(u_input.d.x, u_input.d.x)));
    let var_1 = ~9234u;
    let var_2 = ~0u;
    let var_3 = Struct_2(!var_0.b, u_input.b.yx, _wgslsmith_f_op_f32(2686f * -403f));
    return Struct_4(~func_3(~firstLeadingBit(vec3<u32>(4294967295u, var_2, 4294967295u)), ~u_input.d.xxz, var_3.c));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: f32) -> Struct_5 {
    global0 = array<bool, 23>();
    let var_0 = func_2();
    return Struct_5(1536f, _wgslsmith_f_op_f32(-1000f * arg_2), Struct_2(!(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 23u)], false))), u_input.b.wy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - arg_2))) * arg_2)), !(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(~arg_1.x, 23u)], false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_5) -> StorageBuffer {
    global0 = array<bool, 23>();
    var var_0 = 3329u;
    let var_1 = reverseBits(vec2<u32>(5196u, u_input.d.x));
    var var_2 = func_2();
    let var_3 = Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_3.c.c)))), arg_3.a, arg_3.c, arg_3.d);
    return StorageBuffer(vec4<f32>(func_1(u_input.d, select(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(var_1.x, 4294967295u, 98775u) ^ vec3<u32>(33996u, 4294967295u, var_1.x), all(arg_3.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(-1117f * 885f))).c.c, _wgslsmith_f_op_f32(step(arg_3.c.c, _wgslsmith_f_op_f32(1874f + -1196f))), _wgslsmith_f_op_f32(-arg_3.b), 361f), -abs(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_1.x, 1i), vec2<i32>(-1298i, 1i))), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    global0 = array<bool, 23>();
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.xz, _wgslsmith_mult_vec2_u32(u_input.d.xx, u_input.d.xy)), 13u)], !vec3<bool>(false, true, all(vec2<bool>(true, true))), ~44472i, ~1u & ~u_input.d.x);
    let var_1 = _wgslsmith_mod_u32(var_0.d, var_0.a.a.x);
    var var_2 = ~(~4294967295u);
    global0 = array<bool, 23>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = func_4(!select(vec4<bool>(true, !var_0.b.x, true & var_0.b.x, var_0.b.x), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(41586u, 1u, var_1), 23u)], any(var_0.b.xz), var_0.b.x, !global0[_wgslsmith_index_u32(38611u, 23u)]), !vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(8782u, 23u)])), u_input.b.xyz >> ((var_0.a.d.zxx | ~vec3<u32>(var_1, 26954u, 48579u)) % vec3<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 56888u), vec2<u32>(1u, 1u)), 0u), func_1(var_0.a.d, _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, var_1, 0u), min(vec3<u32>(var_1, 75762u, 151282u), var_0.a.d.wzz) ^ (var_0.a.d.yxy >> (vec3<u32>(16454u, var_1, var_1) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(583f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -688f), -925f)), !var_0.b.x))));
}

