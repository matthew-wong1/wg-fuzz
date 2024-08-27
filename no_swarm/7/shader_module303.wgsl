struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(0i, 2147483647i, -43352i, 5162i, 12992i, 2147483647i, 2147483647i, 2147483647i, -1i, i32(-2147483648), i32(-2147483648), -1i);

var<private> global1: Struct_2;

var<private> global2: array<u32, 10>;

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<bool>(true, true)), -608f, vec2<bool>(true, false)), Struct_2(Struct_1(vec2<bool>(false, false)), -229f, vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, true)), 1049f, vec2<bool>(false, false)), Struct_2(Struct_1(vec2<bool>(false, false)), 1661f, vec2<bool>(true, true)), Struct_2(Struct_1(vec2<bool>(true, false)), 655f, vec2<bool>(false, true)), Struct_2(Struct_1(vec2<bool>(false, false)), 207f, vec2<bool>(true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(30950i, arg_3.a, 0i) ^ 1i, u_input.a), -(~vec2<i32>(0i, -67639i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(-18313i, arg_3.a) << (max(vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], 0u), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))), _wgslsmith_add_i32(u_input.a, reverseBits(firstTrailingBit(-2147483647i)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(7016u, 32056u, u_input.c), vec3<u32>(106687u, u_input.c, 858u), vec3<bool>(global1.c.x, true, arg_2.x)), vec3<u32>(u_input.c, reverseBits(87639u), ~12922u)), 12u)] & ~(-arg_3.a), 585i);
    let var_1 = true;
    var_0 = ~vec4<i32>(global0[_wgslsmith_index_u32(~(~(~u_input.c)), 12u)], 1i, ~var_0.x, var_0.x);
    let var_2 = arg_3;
    global2 = array<u32, 10>();
    return arg_2;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(35983u | _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(104164u, 10u)], 10u)], 93820u), 10u)], 4294967295u) >> (~0u % 32u), 12u)], Struct_1(!global1.c), true, Struct_1(select(!global1.c, vec2<bool>(false, any(vec2<bool>(global1.a.a.x, true))), global1.a.a)));
    var var_1 = global3[_wgslsmith_index_u32(~95588u, 6u)];
    let var_2 = Struct_2(Struct_1(select(global1.c, func_3(var_1.a, var_1.a, vec2<bool>(false, false), Struct_3(var_0.a, var_0.b, global1.a.a.x, Struct_1(vec2<bool>(var_1.c.x, var_1.a.a.x)))), var_0.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-845f - -472f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - _wgslsmith_f_op_f32(max(557f, var_1.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1218f)) + _wgslsmith_f_op_f32(-var_1.b)))), vec2<bool>(all(vec3<bool>(true, var_0.b.a.x, var_1.c.x)), var_1.a.a.x));
    let var_3 = _wgslsmith_mult_i32(var_0.a, ~(abs(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.xx)) >> ((firstTrailingBit(34625u) << (abs(0u) % 32u)) % 32u)));
    global3 = array<Struct_2, 6>();
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 537f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-241f, -1144f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1732f, _wgslsmith_f_op_f32(exp2(global1.b)))))));
    var var_2 = _wgslsmith_sub_u32(~min(global2[_wgslsmith_index_u32(u_input.c, 10u)], ~u_input.c ^ ~u_input.c), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(45375u, global2[_wgslsmith_index_u32(u_input.c, 10u)]) & 27233u, global2[_wgslsmith_index_u32(u_input.c, 10u)]), 45946u & u_input.c));
    let var_3 = arg_2;
    var var_4 = func_2().a;
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    let var_0 = ~global2[_wgslsmith_index_u32(4294967295u, 10u)] << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(((vec3<u32>(global2[_wgslsmith_index_u32(1u, 10u)], 36911u, u_input.c) >> (vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 10u)], 1u, 46198u) % vec3<u32>(32u))) & ~vec3<u32>(4294967295u, 4294967295u, 1u)) ^ ~select(vec3<u32>(32726u, arg_0, arg_0), vec3<u32>(u_input.c, 1u, 4294967295u), false), vec3<u32>(0u, ~u_input.c << (_wgslsmith_clamp_u32(arg_0, global2[_wgslsmith_index_u32(arg_0, 10u)], u_input.c) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(14653u, u_input.c), vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 10u)])), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14909u, 10u)], 10u)], u_input.c)))), 10u)] % 32u);
    global1 = func_4(func_2(), func_2().a, Struct_3(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(26622u, 12u)], global0[_wgslsmith_index_u32(max(4294967295u, ~7832u), 12u)]), arg_2.a, select(~0i, i32(-1i) * -1i, arg_2.a.a.x) < reverseBits(u_input.b.x), arg_2.a), all(arg_1));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(70448u, countOneBits(~(~firstTrailingBit(u_input.c)))), 6u)];
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(53433u, 30976u), var_0, 1u) ^ ~(~abs(vec3<u32>(0u, global2[_wgslsmith_index_u32(2960u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])) | vec3<u32>(reverseBits(var_0), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 10u)], u_input.c));
    return 1395f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(491f, -202f, _wgslsmith_f_op_f32(func_1(~(~_wgslsmith_div_u32(u_input.c, global2[_wgslsmith_index_u32(24201u, 10u)])), select(vec4<bool>(global1.a.a.x, global1.c.x, global1.a.a.x, true), !vec4<bool>(global1.c.x, global1.a.a.x, global1.c.x, false), global1.a.a.x), global3[_wgslsmith_index_u32(u_input.c, 6u)])));
    let var_1 = global3[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_add_u32(firstTrailingBit(u_input.c), 28728u)), 6u)];
    var var_2 = func_2().a;
    var var_3 = global1.a.a;
    global3 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zz, -30144i, ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 10u)], 10u)], global2[_wgslsmith_index_u32(3768u, 10u)]), vec2<u32>(105u, u_input.c) ^ vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 10u)], u_input.c), var_1.a.a), vec2<u32>(u_input.c, 41612u) << (vec2<u32>(4294967295u, 68689u) % vec2<u32>(32u))), ~select(~(~vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(0u, 10u)], u_input.c)), vec4<u32>(u_input.c, ~u_input.c, 55384u, ~global2[_wgslsmith_index_u32(4294967295u, 10u)]), var_1.c.x));
}

