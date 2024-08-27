struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

var<private> global1: array<bool, 2>;

var<private> global2: array<u32, 20> = array<u32, 20>(1u, 0u, 13629u, 14537u, 53397u, 0u, 5871u, 10553u, 24340u, 4294967295u, 63386u, 1u, 32139u, 1u, 59824u, 18817u, 8247u, 24232u, 22318u, 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_1 {
    return Struct_1(reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(51678u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], 20u)]), global2[_wgslsmith_index_u32(countOneBits(32289u), 20u)]) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4325u, global2[_wgslsmith_index_u32(27704u, 20u)]), ~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(51689u, 20u)])) % 32u)), 325f, _wgslsmith_sub_i32(u_input.a.x, 15334i) & (39886i | _wgslsmith_mult_i32(reverseBits(u_input.a.x), i32(-1i) * -3423i)), reverseBits(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.a.x, 42166i, u_input.a.x, u_input.a.x)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global2 = array<u32, 20>();
    let var_0 = Struct_3(-(~u_input.a.ww), false, ~(~u_input.a.zzw), arg_0, vec2<u32>(arg_0.a, 37345u));
    let var_1 = Struct_1(var_0.e.x, -673f, ~(countOneBits(_wgslsmith_mult_i32(arg_0.c, 2147483647i)) ^ (abs(-1i) ^ firstTrailingBit(-79760i))), _wgslsmith_sub_i32(-(func_2().c & 7731i), -9533i));
    global0 = array<vec4<bool>, 7>();
    global2 = array<u32, 20>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(1i, arg_0.d), _wgslsmith_div_i32(65349i, arg_0.d)), ~reverseBits(-2147483647i)), vec2<i32>(_wgslsmith_mult_i32(0i, arg_1.c), min(var_0.c.x, -26972i)) | reverseBits(~vec2<i32>(var_0.c.x, -13254i))) != _wgslsmith_div_i32(-2147483647i, arg_0.c);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_3(vec2<i32>(-u_input.a.x, ~var_0.c), func_3(var_0, Struct_1(firstTrailingBit(abs(26445u)), var_0.b, countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.zw)), abs(19891i))), countOneBits(-u_input.a.xyy), var_0, ~vec2<u32>(var_0.a >> (abs(27751u) % 32u), _wgslsmith_mod_u32(reverseBits(var_0.a), 48287u)));
    global2 = array<u32, 20>();
    var var_2 = Struct_1(~(~_wgslsmith_mod_u32(0u, 4294967295u)) | (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, 0u, 2201u), abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72970u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(21347u, 20u)], 0u))), 20u)] ^ ~(~1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))), -var_1.a.x >> (5610u % 32u), var_0.d);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f), -1521f), 735f)), 1055f));
    return Struct_2(Struct_1(_wgslsmith_mod_u32(39668u, _wgslsmith_add_u32(select(897u, var_1.d.a, true), 1u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -486f), -2165f)), 0i, select(var_1.a.x, u_input.a.x, !(var_2.b != var_1.d.b))), ~((var_1.e ^ vec2<u32>(var_1.e.x, 6313u)) ^ (vec2<u32>(var_2.a, 1u) << (var_1.e % vec2<u32>(32u)))) ^ var_1.e, Struct_1(firstTrailingBit(var_1.e.x ^ 4294967295u) << (var_0.a % 32u), -154f, ~(-2147483647i), reverseBits(63209i)), var_1.d, var_0);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> i32 {
    global1 = array<bool, 2>();
    var var_0 = vec2<i32>(2147483647i, -(~(arg_1 | firstLeadingBit(arg_0.c.c))));
    var_0 = vec2<i32>(firstTrailingBit(-3091i), -1i);
    var_0 = vec2<i32>(select(arg_2.a.d | arg_0.a.c, 37787i, true), -arg_1);
    var var_1 = ~firstLeadingBit(arg_3.wyy);
    return 512i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)]), vec4<u32>(40202u, global2[_wgslsmith_index_u32(0u, 20u)], 0u, 23893u))), 20u)], 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1232f, -167f)))), func_4(func_1(-682f), ~_wgslsmith_sub_i32(-43398i, u_input.a.x), func_1(-1607f), abs(select(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(56049u, 20u)], 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 0u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(76757u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global2[_wgslsmith_index_u32(0u, 20u)], 4294967295u), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 2u)]))), u_input.a.x), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 42168u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 1u) ^ vec2<u32>(global2[_wgslsmith_index_u32(22990u, 20u)], 72024u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25777u, 20u)], 20u)], 1u), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8201u, 20u)], 20u)], 2685u))), Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(countOneBits(52687u)), 20u)], 20u)], _wgslsmith_f_op_f32(-1352f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(334f + 3725f)))), _wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 57i), vec2<i32>(u_input.a.x, u_input.a.x))), ~37851i), -u_input.a.x), func_2(), func_2());
    global2 = array<u32, 20>();
    global2 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_f32(-1398f - _wgslsmith_f_op_f32(-var_0.c.b));
    var var_2 = Struct_3(vec2<i32>(u_input.a.x, var_0.d.c), all(vec2<bool>(global1[_wgslsmith_index_u32(~33333u, 2u)] || (var_0.d.d != 14071i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u, 0u, global2[_wgslsmith_index_u32(var_0.b.x, 20u)]), vec4<u32>(global2[_wgslsmith_index_u32(var_0.c.a, 20u)], var_0.a.a, 50048u, global2[_wgslsmith_index_u32(4294967295u, 20u)])), 1u), 2u)])), u_input.a.wxw, var_0.a, select(var_0.b, ~(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(32650u, 20u)])), global1[_wgslsmith_index_u32(0u, 2u)]));
    global1 = array<bool, 2>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f) + var_0.c.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.c, max(u_input.a.x, abs(-var_0.e.d)), abs(abs(~u_input.a)) & u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(18504u, global2[_wgslsmith_index_u32(131162u, 20u)], 1u, global2[_wgslsmith_index_u32(0u, 20u)]) | ~vec4<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 19945u, 27020u, global2[_wgslsmith_index_u32(28322u, 20u)]), countOneBits(vec4<u32>(16368u, 7006u, var_0.c.a, var_2.d.a)) << (~vec4<u32>(var_2.e.x, 0u, var_2.d.a, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, func_2().a, ~global2[_wgslsmith_index_u32(0u, 20u)], 32650u), vec4<u32>(var_2.e.x >> (73747u % 32u), 4294967295u, 59659u, _wgslsmith_mod_u32(var_2.d.a, var_0.d.a)))));
}

