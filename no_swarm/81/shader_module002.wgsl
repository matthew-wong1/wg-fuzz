struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(-u_input.a.x, 1i, u_input.a.x) >> (~abs(u_input.c.x) % 32u), -2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -129f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1098f))) - _wgslsmith_div_f32(-473f, -385f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f), -840f)))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    global0 = vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-949f)), 866f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 754f), false, global0.x, u_input.c.x == max(max(select(u_input.c.x, 31767u, global0.x), 4294967295u), u_input.c.x));
    let var_0 = !global0.wyz;
    global0 = vec4<bool>(true, !all(vec2<bool>(global0.x, false)) || false, select(global0.x, any(vec2<bool>(true, true)), any(select(global0.zx, global0.xx, any(vec3<bool>(true, global0.x, global0.x))))), all(select(var_0, !global0.zxy, vec3<bool>(any(vec3<bool>(true, global0.x, true)), select(global0.x, true, false), global0.x))));
    let var_1 = _wgslsmith_add_u32(u_input.c.x, 0u ^ _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), u_input.c.x ^ 14123u));
    global0 = vec4<bool>(var_0.x, true, false | select(global0.x, !all(var_0), select(arg_0.x > 41297i, !global0.x, true)), !(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, arg_0.x, arg_0.x)), u_input.a.zwz) != (firstLeadingBit(-1i) | _wgslsmith_mod_i32(u_input.a.x, 20288i))));
    return 2147483647i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> vec4<bool> {
    global0 = !(!select(vec4<bool>(false, !global0.x, true, true), vec4<bool>(any(vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x || global0.x, all(global0.wy), global0.x), vec4<bool>(global0.x, all(vec4<bool>(global0.x, true, false, global0.x)), global0.x && global0.x, false)));
    global0 = select(vec4<bool>(!(!(global0.x | false)), false || all(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, global0.x, false, global0.x))), global0.x, global0.x), vec4<bool>(global0.x, false, !global0.x, true), select(vec4<bool>(!(!global0.x), _wgslsmith_f_op_f32(arg_2 + arg_2) < _wgslsmith_f_op_f32(arg_2 * -256f), false, global0.x), vec4<bool>(global0.x, any(!vec4<bool>(global0.x, false, global0.x, true)), global0.x, !(true && global0.x)), _wgslsmith_div_i32(func_2(vec3<i32>(arg_0.x, u_input.a.x, 58485i)), arg_0.x) < _wgslsmith_mod_i32(-11314i, -40620i)));
    var var_0 = Struct_3(-61730i, Struct_2(reverseBits(arg_3), Struct_1(abs(func_2(vec3<i32>(-10628i, arg_0.x, -1i))), -12416i, ~abs(vec3<u32>(arg_1.x, 36151u, arg_3))), Struct_1(~(-34786i), -1i, reverseBits(~vec3<u32>(52831u, 42127u, 18966u))), vec4<bool>(any(!vec2<bool>(false, global0.x)), _wgslsmith_f_op_f32(arg_2 * -945f) == -632f, u_input.b < countOneBits(-46190i), !global0.x), Struct_1(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, arg_0.x), u_input.a)), -103410i, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_3, 41259u, arg_1.x), vec3<u32>(arg_3, u_input.c.x, 0u)) | (arg_1.xzw >> (vec3<u32>(1412u, arg_1.x, 4294967295u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), Struct_1(_wgslsmith_clamp_i32(-firstLeadingBit(arg_0.x), arg_0.x, 0i), _wgslsmith_add_i32(~u_input.b << (14401u % 32u), u_input.b), arg_1.yzy));
    var var_1 = Struct_4(~arg_3);
    let var_2 = Struct_2(var_0.b.c.c.x, Struct_1(0i, -_wgslsmith_dot_vec4_i32(countOneBits(u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 0i, -19818i, var_0.d.a), vec4<i32>(-1i, arg_0.x, var_0.a, u_input.b))), vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(0u, arg_1.x, 2238u, var_1.a)), 0u, max(1u, 1u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 22988u, arg_1.x), vec3<u32>(arg_3, u_input.c.x, 30324u))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(u_input.a.x, arg_0.x), _wgslsmith_div_i32(u_input.b, u_input.a.x)), arg_0), var_0.b.e.b, firstTrailingBit(arg_1.yzy)), var_0.b.d, var_0.d);
    return vec4<bool>(global0.x & (firstLeadingBit(var_1.a) < 0u), false, global0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_1(~(-u_input.a.zzw), vec4<u32>(47685u, 0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(72014u, u_input.c.x), u_input.c.x), ~u_input.c.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(823f, 589f))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.c.x, 1u), u_input.c.ww, global0.x), firstLeadingBit(u_input.c.wy)));
    let var_0 = global0.zxx;
    global0 = select(select(!(!vec4<bool>(false, true, global0.x, global0.x)), !select(vec4<bool>(true, true, var_0.x, global0.x), vec4<bool>(true, false, global0.x, true), true), func_1(~vec3<i32>(u_input.b, 57449i, u_input.b), firstLeadingBit(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(974f * -1006f), 5729u).x | true), vec4<bool>(!all(func_1(u_input.a.xxy, u_input.c, -1336f, u_input.c.x).wz), false, select(true, all(!vec3<bool>(true, true, global0.x)), any(global0.xw)), global0.x), false);
    var var_1 = -1527f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(abs(-269f)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-27722i, u_input.a.x), vec2<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a.x, u_input.a.x), -19916i)) ^ ~_wgslsmith_sub_i32(u_input.b, 0i), -u_input.a.x, ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(25366u, 50452u, u_input.c.x), vec3<u32>(0u, 62164u, u_input.c.x), u_input.c.xzz), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c.xxy))));
    let var_3 = global0.zw;
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(126f, -1627f)), _wgslsmith_f_op_f32(f32(-1f) * -363f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-353f, 887f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(594f - 414f), -1544f))), 2030f, 277f), _wgslsmith_f_op_f32(f32(-1f) * -1675f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(573f, 877f, false)) + -1883f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-406f)) + _wgslsmith_f_op_f32(f32(-1f) * -482f)), var_0.x))));
}

