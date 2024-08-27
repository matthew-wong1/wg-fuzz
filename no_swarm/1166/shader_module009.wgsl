struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_1 = Struct_1(1u, 40487u, 41176i, true, 0u);

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, false, false, false);

var<private> global3: array<bool, 3>;

var<private> global4: array<u32, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = ~vec2<u32>(~global1.a, ~(~global4[_wgslsmith_index_u32(firstTrailingBit(0u), 1u)]));
    global1 = Struct_1(var_0.x >> (_wgslsmith_sub_u32(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.e, 1u)], 1u)]), reverseBits(_wgslsmith_clamp_u32(1u, global4[_wgslsmith_index_u32(global1.a, 1u)], 4294967295u))) % 32u), reverseBits(var_0.x), i32(-1i) * -24748i, all(vec4<bool>(!all(vec2<bool>(true, true)), true, !all(vec4<bool>(global3[_wgslsmith_index_u32(global1.e, 3u)], false, true, global1.d)), all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 5u)], global1.d, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(9259u, 1u)], 1u)], 1u)], 3u)], global3[_wgslsmith_index_u32(6042u, 3u)])))), var_0.x);
    let var_1 = arg_1;
    global0 = array<i32, 2>();
    var var_2 = 21045i;
    return -46668i;
}

fn func_3() -> vec3<i32> {
    var var_0 = vec3<i32>(-2147483647i, -abs(global0[_wgslsmith_index_u32(24172u, 2u)]) ^ (-2147483647i >> (reverseBits(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global1.a, 1u)], global4[_wgslsmith_index_u32(global1.a, 1u)])) % 32u)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(303f))), any(select(vec3<bool>(false, true, global1.d), select(vec3<bool>(global1.d, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b, 1u)], 3u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8272u, 1u)], 3u)]), vec3<bool>(global1.d, global3[_wgslsmith_index_u32(87902u, 3u)], global2[_wgslsmith_index_u32(global1.b, 5u)]), vec3<bool>(false, global1.d, false)), vec3<bool>(false, true, true))), 2147483647i));
    return u_input.a;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_i32(-u_input.a.xy, u_input.a.xx);
    let var_1 = _wgslsmith_add_vec3_i32(-u_input.a, min(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a >> (vec3<u32>(global4[_wgslsmith_index_u32(global1.a, 1u)], global1.b, 0u) % vec3<u32>(32u)), func_3()), u_input.a)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b, 1u)], 1u)], global1.a), 1u)], _wgslsmith_mod_u32(1u, ~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e, 4294967295u, global1.e, 4294967295u) >> (vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(68365u, 1u)], 0u, global4[_wgslsmith_index_u32(4294967295u, 1u)]) % vec4<u32>(32u)), vec4<u32>(59044u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30552u, 1u)], 1u)], 36642u, global1.e))), vec3<u32>(64856u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(1u, 1u)], 5129u), 4294967295u)) % vec3<u32>(32u));
    var var_2 = ~vec3<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 61759u), ~(vec2<u32>(global1.b, global1.e) | vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23087u, 1u)], 1u)], 1u)], 4294967295u))), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, -584f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f) + _wgslsmith_f_op_f32(max(-1000f, -1117f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(129f - -758f))), select(select(vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 5u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_2.x, 1u)], 3u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.e, 1u)], 5u)]), !global3[_wgslsmith_index_u32(global1.e, 3u)]), vec2<bool>(true, true), !vec2<bool>(true, global3[_wgslsmith_index_u32(var_2.x, 3u)])))));
    var var_4 = _wgslsmith_f_op_f32(sign(-978f));
    return Struct_1(19160u, var_2.x, -48808i, false, 4294967295u >> (reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(3014u, global4[_wgslsmith_index_u32(1u, 1u)]), global4[_wgslsmith_index_u32(var_2.x, 1u)])) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> i32 {
    global3 = array<bool, 3>();
    global1 = arg_0;
    global2 = array<bool, 5>();
    let var_0 = _wgslsmith_f_op_f32(531f - 240f);
    global2 = array<bool, 5>();
    return _wgslsmith_mod_i32(global1.c, arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.a, 1u)], 2u)], -17619i, 31181i, func_1(1517f, global1.d, global0[_wgslsmith_index_u32(59458u, 2u)])), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 35521i, u_input.a.x), ~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.c, -15551i, u_input.a.x))), select(_wgslsmith_add_i32(-global0[_wgslsmith_index_u32(98523u, 2u)], _wgslsmith_mult_i32(u_input.a.x, 1i)), global0[_wgslsmith_index_u32(60485u, 2u)], !(2546u > global1.a)), _wgslsmith_sub_i32(global1.c, -u_input.a.x)) | ~vec3<i32>(func_4(func_2(), ~u_input.a.x, func_2()), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(1017u, 2u)] ^ u_input.a.x, u_input.a.x ^ u_input.a.x), -(i32(-1i) * -2147483647i));
    let var_1 = abs(0i);
    let var_2 = Struct_1((firstLeadingBit(func_2().a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(55380u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)]), vec2<u32>(50183u, global4[_wgslsmith_index_u32(4294967295u, 1u)])) % 32u)) & _wgslsmith_sub_u32(~4294967295u << (global1.b % 32u), _wgslsmith_mult_u32(1u >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b, 1u)], 1u)], 1u)], 1u)] % 32u), 4294967295u)), abs((4294967295u << ((global1.e >> (global1.e % 32u)) % 32u)) & global4[_wgslsmith_index_u32(global1.b, 1u)]), -38599i, var_1 > global1.c, global1.b);
    global3 = array<bool, 3>();
    var var_3 = ~(~vec2<u32>(1u & _wgslsmith_clamp_u32(global1.a, global1.b, global1.a), _wgslsmith_sub_u32(~global1.e, ~0u)));
    let var_4 = func_2();
    var var_5 = func_2();
    let var_6 = func_2();
    var var_7 = Struct_1(_wgslsmith_sub_u32(~var_5.e, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, var_4.a), vec2<u32>(4294967295u, 104712u), global3[_wgslsmith_index_u32(0u, 3u)]), max(vec2<u32>(0u, var_3.x), vec2<u32>(global4[_wgslsmith_index_u32(var_6.b, 1u)], var_6.a))), countOneBits(~vec2<u32>(18223u, 0u)))), ~(~_wgslsmith_mod_u32(~1u, select(20103u, var_3.x, false))), _wgslsmith_dot_vec2_i32(~vec2<i32>(3918i, -2147483647i), ~_wgslsmith_add_vec2_i32(var_0.yx, vec2<i32>(-32810i, 0i))) ^ -(~(-var_4.c)), global1.e <= var_5.e, _wgslsmith_div_u32(countOneBits(var_3.x), _wgslsmith_sub_u32(max(reverseBits(0u), _wgslsmith_div_u32(var_4.b, var_2.b)), ~_wgslsmith_div_u32(global4[_wgslsmith_index_u32(global1.e, 1u)], 21796u))));
    let x = u_input.a;
    s_output = StorageBuffer(32626i, 0u, ((_wgslsmith_mult_vec3_u32(vec3<u32>(5015u, var_4.b, var_6.a), vec3<u32>(4294967295u, global1.b, global4[_wgslsmith_index_u32(var_4.e, 1u)])) ^ ~vec3<u32>(47117u, var_2.a, var_4.a)) | _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_6.b, var_3.x), vec3<u32>(748u, 12364u, global4[_wgslsmith_index_u32(77855u, 1u)])), vec3<u32>(106149u, 4294967295u, 66838u))) >> ((vec3<u32>(~global1.e, 134644u, 80510u >> (var_4.b % 32u)) << (vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_6.e), 22906u, var_5.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

