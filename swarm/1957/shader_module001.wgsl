struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: array<bool, 26>;

var<private> global3: Struct_1 = Struct_1(false);

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_clamp_i32(~max(u_input.d, ~1i), u_input.d, u_input.d);
    global3 = Struct_1(!(!global4.a));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = Struct_1(global1.a);
    return vec2<i32>(2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0, 57190i, -1i, u_input.d), reverseBits(vec4<i32>(2448i, 0i, 0i, u_input.d)), true), firstTrailingBit(firstTrailingBit(vec4<i32>(var_0, u_input.d, u_input.d, -33i)))) >> (~u_input.a.x % 32u));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_1(!global1.a);
    var var_1 = true;
    var var_2 = true;
    var var_3 = global3.a;
    var var_4 = vec2<bool>(any(vec2<bool>(true, global3.a)), var_0.a);
    return select(-((vec2<i32>(-1i) * -vec2<i32>(-1i, 6523i)) & func_3(Struct_1(false), Struct_1(global4.a), vec4<u32>(4294967295u, 4294967295u, 16862u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 0u, 0u, u_input.b), vec4<u32>(77950u, u_input.a.x, 4294967295u, u_input.c)))), -max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, -39723i), vec2<i32>(1i, u_input.d), vec2<i32>(arg_1, 29732i)), min(vec2<i32>(u_input.d, 31205i), vec2<i32>(-37810i, u_input.d))) ^ -(~(-vec2<i32>(0i, u_input.d))), select(select(select(vec2<bool>(arg_0, true), select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 26u)], true), vec2<bool>(var_4.x, true)), !vec2<bool>(true, global4.a)), vec2<bool>(all(vec2<bool>(true, global3.a)), true), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(global0.a, false), var_4.x)), !select(!vec2<bool>(false, var_4.x), vec2<bool>(true, true), any(vec4<bool>(var_4.x, arg_0, global0.a, global1.a))), !(!vec2<bool>(global1.a, false))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> Struct_1 {
    global4 = Struct_1(global0.a);
    let var_0 = Struct_1(!(!(!global2[_wgslsmith_index_u32(~u_input.b, 26u)])));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(13351u, 26u)]);
    global2 = array<bool, 26>();
    let var_2 = !vec2<bool>((min(arg_0.x, -10847i) <= -2147483647i) | false, true);
    return Struct_1(select(true, _wgslsmith_clamp_u32(37030u, _wgslsmith_mult_u32(88754u, 0u), u_input.a.x | 84983u) > (u_input.a.x ^ _wgslsmith_add_u32(1u, u_input.b)), true));
}

fn func_1() -> Struct_1 {
    global1 = func_4(func_2(true, _wgslsmith_add_i32(-1i, u_input.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-947f, 156f) * _wgslsmith_f_op_f32(min(1007f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-840f))) - -1462f))));
    global0 = Struct_1(!global4.a || global1.a);
    var var_0 = Struct_1(true && any(vec2<bool>(false, true)));
    return func_4(countOneBits(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.d, u_input.d)) ^ abs(vec2<i32>(u_input.d, 12837i)), -vec2<i32>(74627i, -1i) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e), u_input.a.xz) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(605f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -197f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * -1072f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(max(-461f, -361f)), var_0, _wgslsmith_f_op_f32(-var_0))))));
    global3 = Struct_1(~7037u == (~(4294967295u & u_input.a.x) & u_input.a.x));
    global0 = Struct_1(true);
    global4 = func_1();
    return Struct_1(global2[_wgslsmith_index_u32(u_input.c, 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(func_1(), func_4(_wgslsmith_mod_vec2_i32(-max(vec2<i32>(-38480i, u_input.d), vec2<i32>(u_input.d, 39514i)), ~(-vec2<i32>(-10151i, u_input.d))), -249f), func_1(), func_4(~(-vec2<i32>(u_input.d, -2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1051f, 772f)) - _wgslsmith_f_op_f32(-1206f * 482f)), _wgslsmith_f_op_f32(ceil(1000f)))));
    let var_0 = func_5(Struct_1(global1.a), Struct_1(!global2[_wgslsmith_index_u32(74733u, 26u)]), Struct_1(true), Struct_1(false));
    global4 = Struct_1(func_1().a);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e >> (reverseBits(~_wgslsmith_mult_u32(1u, u_input.b)) % 32u), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c), u_input.a.zz)), 26u)];
    let var_2 = u_input.a;
    global1 = func_5(var_0, var_0, var_0, Struct_1(!all(vec3<bool>(global3.a, var_0.a, false))));
    let var_3 = all(select(select(vec4<bool>(any(vec3<bool>(false, global1.a, false)), global2[_wgslsmith_index_u32(0u | u_input.e, 26u)], true || global2[_wgslsmith_index_u32(4294967295u, 26u)], select(global4.a, false, false)), vec4<bool>(global0.a && true, global4.a && false, true, global3.a), !select(vec4<bool>(var_0.a, global0.a, global4.a, false), vec4<bool>(global3.a, global4.a, global1.a, global0.a), true)), select(!select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], true, global3.a, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_2.x, 26u)], global3.a, false, var_0.a), true), select(select(vec4<bool>(false, false, global4.a, global4.a), vec4<bool>(false, global0.a, true, false), global1.a), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], false, false, false), !vec4<bool>(global4.a, true, false, global2[_wgslsmith_index_u32(u_input.c, 26u)])), global2[_wgslsmith_index_u32(10193u, 26u)]), vec4<bool>(all(vec3<bool>(global1.a, global3.a, true)), true, true, func_5(func_4(vec2<i32>(u_input.d, u_input.d), 144f), var_0, Struct_1(global0.a), func_1()).a)));
    var var_4 = !var_3;
    global2 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, 31864u, var_2.x, firstLeadingBit(u_input.c)), i32(-1i) * -6999i);
}

