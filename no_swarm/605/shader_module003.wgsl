struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 20> = array<bool, 20>(true, false, true, false, false, true, true, false, false, false, true, false, true, true, false, true, false, false, true, true);

var<private> global3: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    let var_0 = !(!global2[_wgslsmith_index_u32(firstLeadingBit(~26828u), 20u)]);
    var var_1 = false;
    var var_2 = global0[_wgslsmith_index_u32(reverseBits(~u_input.a), 12u)];
    var var_3 = 125444u;
    global2 = array<bool, 20>();
    return ~(~u_input.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = ~(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a)), vec4<u32>(abs(1u), 4294967295u, 1u, abs(u_input.a))) & vec4<u32>(~18204u, ~func_3(Struct_3(vec2<bool>(true, global1.b.b), global1.b.b), vec2<bool>(false, true), global1.b.a), 0u, max(u_input.a, u_input.a)));
    let var_1 = _wgslsmith_mult_u32(var_0.x, u_input.a) < firstLeadingBit(14286u);
    global3 = ~(~(-vec4<i32>(i32(-1i) * -9939i, 2147483647i, ~(-1i), _wgslsmith_add_i32(1i, 9865i))));
    let var_2 = false;
    global0 = array<vec3<f32>, 12>();
    return select(vec3<bool>(global1.d || any(vec3<bool>(false, arg_1.b, var_2)), var_2 || true, true), vec3<bool>(true, true, all(select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 20u)], false, global2[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 20u)], true, global1.d), false), !vec3<bool>(arg_1.b, false, false), false))), !select(!select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(u_input.a, 20u)]), vec3<bool>(select(true, true, false), select(arg_1.b, true, global1.a.b), true), vec3<bool>(global1.d == global1.c.b, !arg_1.b, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    global2 = array<bool, 20>();
    let var_0 = max(~select(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, u_input.a)), vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a) & (vec2<u32>(13141u, u_input.a) | vec2<u32>(u_input.a, 10906u)), all(!vec4<bool>(global1.b.b, global1.a.b, true, arg_0.x))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), firstTrailingBit(0u)), select(~51763u, u_input.a, !arg_2.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(23578u, u_input.a)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(55388u, u_input.a) % vec2<u32>(32u)), vec2<u32>(4294967295u, 0u) ^ vec2<u32>(1u, u_input.a))));
    let var_1 = ~(~(~vec3<u32>(_wgslsmith_sub_u32(46509u, u_input.a), var_0.x, func_3(Struct_3(vec2<bool>(false, arg_0.x), global1.d), arg_0.zz, global3.x))));
    let var_2 = var_0.x;
    var var_3 = 12002i;
    return Struct_2(global1.c, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(14659i, -1i, _wgslsmith_dot_vec3_i32(global3.ywz, vec3<i32>(arg_1.a, global3.x, arg_1.a))), ~abs(global3.xzz)), !arg_2.b, 1000f), global1.a, true, -2147483647i);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    global3 = abs(select(abs(~vec4<i32>(14878i, global1.e, 1i, global1.a.a)), reverseBits(vec4<i32>(~global1.a.a, _wgslsmith_dot_vec4_i32(vec4<i32>(47680i, -31716i, -15405i, -2147483647i), vec4<i32>(-2147483647i, global3.x, global1.b.a, global1.e)), ~11388i, min(global3.x, global1.b.a))), all(vec2<bool>(!global1.d, !global2[_wgslsmith_index_u32(arg_0.x, 20u)]))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_div_f32(1032f, -753f)));
    global1 = func_4(select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 20u)], false), vec3<bool>(false, false, global1.a.b), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)])), select(vec3<bool>(true, global1.c.b, global1.d), vec3<bool>(global1.a.b, true, false), vec3<bool>(global2[_wgslsmith_index_u32(58683u, 20u)], true, true)), var_0 < 1411f), func_2(vec3<i32>(global3.x, global1.a.a, 19759i), Struct_1(2147483647i, true, -236f))), !vec3<bool>(true, all(vec2<bool>(global2[_wgslsmith_index_u32(9867u, 20u)], true)), true), vec3<bool>(!select(false, global2[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]), select(true, all(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 20u)], global1.b.b)), true | global1.c.b), !(!global2[_wgslsmith_index_u32(27242u, 20u)]))), global1.a, Struct_3(!vec2<bool>(global1.d, global1.c.a != 1i), false));
    let var_1 = func_4(vec3<bool>(global1.a.b, !(!(!global2[_wgslsmith_index_u32(116401u, 20u)])), true), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global3.yy, firstLeadingBit(vec2<i32>(global3.x, -2147483647i))), vec2<i32>(global3.x, _wgslsmith_add_i32(global3.x, global3.x))), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(sign(var_0))), global1.b.c, global1.d))), Struct_3(!select(!vec2<bool>(false, global1.d), select(vec2<bool>(global1.b.b, global1.a.b), vec2<bool>(global1.a.b, global1.b.b), vec2<bool>(global1.c.b, global1.b.b)), func_2(global3.yyz, Struct_1(1i, true, -1000f)).xx), true));
    global2 = array<bool, 20>();
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<bool>(global2[_wgslsmith_index_u32(~min(0u, u_input.a), 20u)] && !(global2[_wgslsmith_index_u32(577u, 20u)] || true), true), true);
    global0 = array<vec3<f32>, 12>();
    let var_1 = u_input.a;
    global2 = array<bool, 20>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1987f, -158f))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c) - global1.b.c)), _wgslsmith_f_op_f32(exp2(global1.a.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f), 1486f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec2<u32>(92438u, 15114u))))), 260f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, 8383u))), _wgslsmith_f_op_f32(round(global1.a.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(671f + -277f), _wgslsmith_f_op_f32(var_2.x - global1.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.c.c))))), global1.b.c)));
    let var_4 = var_0.a.x;
    global1 = func_4(select(select(!(!vec3<bool>(global1.c.b, global1.d, global2[_wgslsmith_index_u32(1u, 20u)])), func_2(global3.xwx | vec3<i32>(-2147483647i, global3.x, 1i), Struct_1(global1.e, true, var_3.x)), global2[_wgslsmith_index_u32(1u, 20u)]), vec3<bool>(any(vec2<bool>(global1.d, false)), var_0.a.x, var_0.b), !(!vec3<bool>(true, var_4, global2[_wgslsmith_index_u32(46600u, 20u)]))), func_4(select(vec3<bool>(select(false, false, false), false, global3.x > -25706i), !(!vec3<bool>(true, var_0.a.x, var_0.a.x)), vec3<bool>(!global1.b.b, func_4(vec3<bool>(var_4, false, var_0.b), Struct_1(global3.x, false, var_3.x), var_0).b.b, any(vec3<bool>(true, false, true)))), Struct_1(1i, var_0.a.x, var_2.x), Struct_3(var_0.a, true)).a, Struct_3(!var_0.a, any(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, -2147483647i, global3.x), vec3<i32>(global3.x, global3.x, -78992i)), global1.b))));
    let var_5 = ~firstLeadingBit(min(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1), vec2<u32>(36254u, u_input.a)), ~vec2<u32>(var_1, 4294967295u)) ^ ~select(vec2<u32>(4884u, var_1), vec2<u32>(var_1, 39237u), vec2<bool>(false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_i32(0i & global3.x, select(2147483647i, -14346i, global2[_wgslsmith_index_u32(4294967295u, 20u)]) | global3.x, countOneBits(global3.x)), -22383i), _wgslsmith_mod_u32(max(1u, ~var_1), reverseBits(select(48079u, ~var_1, true))));
}

