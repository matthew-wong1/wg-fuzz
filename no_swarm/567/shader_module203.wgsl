struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<bool, 16>;

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(~firstLeadingBit(1u), 1u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.c)))), !global1[_wgslsmith_index_u32(arg_0.b, 16u)])), ~(~vec2<i32>(arg_0.d.x ^ -2147483647i, ~(-2147483647i))));
    global1 = array<bool, 16>();
    var var_1 = arg_0;
    var_0 = Struct_1(11867u, u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)) + var_0.c.x)), -554f), vec2<i32>(_wgslsmith_sub_i32(var_1.d.x, arg_0.d.x), firstLeadingBit(firstTrailingBit(-69089i << (u_input.c % 32u)))));
    let var_2 = arg_0;
    return vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(56526u, _wgslsmith_div_u32(113507u, max(var_1.b, var_0.a ^ var_0.b))), 16u)], !all(vec4<bool>(!global1[_wgslsmith_index_u32(11496u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], 4294967295u != arg_0.b, 1174f == arg_0.c.x)), global1[_wgslsmith_index_u32(~abs(1u), 16u)], global1[_wgslsmith_index_u32(var_0.b, 16u)]);
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1461f + -1233f)), -293f))) - -103f);
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, ~1u), _wgslsmith_add_vec2_u32(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, 53116u), min(vec2<u32>(51963u, 47519u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 27u)], u_input.a) ^ vec2<u32>(u_input.c, 27893u))), ~vec2<u32>(arg_0, arg_0))), 16u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1813f, 1286f, 372f, -630f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1401f, 1805f, -1000f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(424f, 689f, 2139f, -1589f) + vec4<f32>(973f, -444f, -659f, 637f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1376f), -470f, _wgslsmith_f_op_f32(sign(-591f)), _wgslsmith_f_op_f32(-523f - 1630f))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(arg_1.a, 27u)], ~(~60217u));
    global0 = array<u32, 27>();
    let var_1 = !(arg_0.x & any(select(func_2(arg_1), vec4<bool>(false, true, false, true), true)));
    global1 = array<bool, 16>();
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3(arg_2 & _wgslsmith_mod_u32(91283u, ~global0[_wgslsmith_index_u32(48970u, 27u)])))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = array<u32, 27>();
    let var_0 = arg_1;
    var var_1 = Struct_1(abs(func_1(vec3<bool>(select(true, arg_3, false), true, false), func_1(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(arg_2.b, 16u)]), Struct_1(var_0.a, 1u, vec2<f32>(arg_1.c.x, arg_2.c.x), vec2<i32>(-2147483647i, -2147483647i)), ~arg_1.b), 23668u).a), ~_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(0u, arg_1.a))), 29350u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1377f, _wgslsmith_f_op_f32(f32(-1f) * -441f)) - arg_1.c), vec2<i32>(-9630i & (arg_2.d.x ^ 5066i), min(~(-6095i), -28947i)));
    global0 = array<u32, 27>();
    var var_2 = arg_2.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -1184f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-3068i, global2.x, global2.x);
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(select(~u_input.a, select(u_input.b, u_input.a, select(true, true, false) & true), false), 27u)], 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-902f - 182f), _wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 16u)], true), Struct_1(u_input.a, u_input.b, vec2<f32>(-139f, -1079f), var_0.zz), 0u), func_1(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)], true), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 27u)], u_input.b, vec2<f32>(-160f, -1926f), global2.zz), global0[_wgslsmith_index_u32(3343u, 27u)]), func_1(vec3<bool>(false, true, global1[_wgslsmith_index_u32(14263u, 16u)]), Struct_1(67120u, global0[_wgslsmith_index_u32(4294967295u, 27u)], vec2<f32>(-1445f, 441f), global2.zx), u_input.c), false)))), -firstTrailingBit(vec2<i32>(u_input.d, -22306i)) << (~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(40813u, 0u)), ~vec2<u32>(17935u, 4294967295u)) % vec2<u32>(32u)));
    let var_2 = max(select(select(~(vec2<u32>(var_1.a, 1u) << (vec2<u32>(25409u, global0[_wgslsmith_index_u32(var_1.a, 27u)]) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, u_input.c), vec2<u32>(27085u, 4294967295u), vec2<u32>(27641u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(162649u, 27u)], 27u)])) ^ ~vec2<u32>(var_1.b, 0u), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 16u)], -908i >= global2.x)), ~max(~vec2<u32>(39308u, u_input.a), vec2<u32>(1u, 0u) ^ vec2<u32>(36332u, global0[_wgslsmith_index_u32(4294967295u, 27u)])), true), firstTrailingBit(~vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.c, 27u)]), 1u)));
    var var_3 = Struct_1(_wgslsmith_div_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 9794u, 47001u, 0u), vec4<u32>(11610u, u_input.b, 4294967295u, var_2.x)) | ~0u, func_1(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.b, 16u)], true), func_1(vec3<bool>(global1[_wgslsmith_index_u32(var_1.a, 16u)], true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 16u)]), Struct_1(global0[_wgslsmith_index_u32(var_1.a, 27u)], global0[_wgslsmith_index_u32(37743u, 27u)], vec2<f32>(-164f, var_1.c.x), var_0.zz), 13884u), 1047u).a, false | (-20511i < var_1.d.x)), var_2.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(38912u, global0[_wgslsmith_index_u32(29123u, 27u)]), 27u)]) << (~(~1u) % 32u), (41408u & u_input.a) ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(abs(var_2.x), reverseBits(39303u)), 27u)], 27u)], 27u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), 1124f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)))), firstTrailingBit(global2.zz));
    let var_4 = !global1[_wgslsmith_index_u32(26028u, 16u)];
    let var_5 = reverseBits(~var_3.b) & 131615u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(max(var_3.b, 0u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, var_1.b), 27u)])), _wgslsmith_mult_u32(firstTrailingBit(1u), 0u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(17908u, 0u)), vec2<u32>(30313u, 0u))), -2147483647i, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, var_1.b, 43306u), abs(vec4<u32>(82843u, 28016u, global0[_wgslsmith_index_u32(9772u, 27u)], var_5)))), var_1.b, vec3<f32>(553f, func_1(vec3<bool>(any(vec3<bool>(var_4, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(var_5, 16u)])), true, var_3.b <= var_2.x), func_1(vec3<bool>(true, true, false), func_1(vec3<bool>(false, true, true), Struct_1(11242u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)], var_1.c, var_0.xx), global0[_wgslsmith_index_u32(6491u, 27u)]), ~var_5), _wgslsmith_add_u32(0u, 1u)).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(trunc(670f))) * var_3.c.x)));
}

