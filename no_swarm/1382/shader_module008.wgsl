struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = ~(countOneBits(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(33298u, 4294967295u, u_input.a, 0u)), 1u, _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mod_u32(u_input.a, u_input.a))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_f32(248f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-657f)))));
    return select(!(!select(select(arg_0.a, arg_0.a, arg_0.a), arg_0.a, select(vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, false)))), !arg_0.a, arg_0.a);
}

fn func_2() -> bool {
    let var_0 = Struct_1(func_3(Struct_1(vec4<bool>(true, false, true, true)), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, 40663i), select(vec3<i32>(-20974i, -75830i, u_input.c.x), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), false))), u_input.c.wy));
    var var_1 = -firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yx, u_input.c.xx), ~u_input.b.yy << ((vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_1 = u_input.b.x;
    var var_2 = min(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, countOneBits(4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(31652u, 75320u), firstLeadingBit(vec2<u32>(u_input.a, 857u)))), select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 15289u), select(_wgslsmith_mod_vec2_u32(vec2<u32>(22140u, 29126u), vec2<u32>(u_input.a, 37374u)), abs(vec2<u32>(1u, 29792u)), !vec2<bool>(var_0.a.x, var_0.a.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 1u), vec2<u32>(0u, _wgslsmith_div_u32(65833u, 46434u))), select(func_3(var_0, u_input.b.x, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.b.x, -2147483647i))).yx, vec2<bool>(all(vec3<bool>(var_0.a.x, false, true)), true), vec2<bool>(true, !var_0.a.x))));
    let var_3 = !var_0.a.x;
    return var_0.a.x && any(vec2<bool>(var_3, any(var_0.a.zz)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1361f)), 1453f, _wgslsmith_div_f32(-1346f, -554f), _wgslsmith_f_op_f32(495f * -1781f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -616f, -1000f, -1000f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_1 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, func_2(), u_input.b.x == 25528i, true), false), vec4<bool>(true, any(vec2<bool>(false, true)), true || any(vec2<bool>(false, true)), true), !func_3(Struct_1(vec4<bool>(true, true, true, false)), _wgslsmith_mod_i32(92630i, u_input.c.x), vec2<i32>(u_input.c.x, -10526i) & u_input.c.wy)));
    var var_2 = ~u_input.a;
    var_2 = u_input.a;
    let var_3 = Struct_2(Struct_1(!select(!vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x), var_1.a, true)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = !(func_1() != 39520u);
    var var_2 = Struct_1(!func_3(Struct_1(vec4<bool>(true, true, true, true)), u_input.b.x, vec2<i32>(u_input.b.x, -9969i)));
    let var_3 = Struct_2(Struct_1(var_2.a));
    var_2 = var_3.a;
    var var_4 = var_3.a;
    var_4 = Struct_1(func_3(Struct_1(var_4.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, -26286i, -18104i) ^ u_input.b, -vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.c.xw));
    var var_5 = Struct_2(var_3.a);
    var_1 = (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-237f)), -914f)) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2603f - _wgslsmith_f_op_f32(floor(-305f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -837f) - -1000f), false))) || all(select(var_4.a.zyx, vec3<bool>(select(var_2.a.x, var_4.a.x, true), all(var_4.a.yyz), true), var_5.a.a.yyw));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_clamp_i32(-2147483647i, -77570i, -u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1898f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(max(137f, 934f)), _wgslsmith_f_op_f32(-981f * -1000f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, 1000f) * vec2<f32>(-645f, -243f)))))), ~firstLeadingBit(func_1()));
}

