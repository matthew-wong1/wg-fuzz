struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_2(arg_1, Struct_1(true, vec4<i32>(-arg_1.d.x, u_input.a.x, 13728i, -1i), select(select(vec2<bool>(arg_1.c.x, true), vec2<bool>(false, false), !arg_1.c), select(arg_1.c, select(arg_1.c, vec2<bool>(false, false), true), true), arg_1.a), vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, 0i), u_input.a.x, arg_1.d.x | abs(1i))), Struct_1(arg_1.c.x, arg_1.b, select(vec2<bool>(arg_1.c.x, arg_1.a), arg_1.c, !(!arg_1.c.x)), max(arg_1.b.wxw >> ((vec3<u32>(u_input.b.x, 72925u, 4294967295u) << (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 38813i, 0i), arg_1.d, vec3<i32>(-14774i, -14259i, u_input.a.x)))), select(vec4<bool>(arg_1.c.x, !all(vec3<bool>(arg_1.a, arg_1.a, false)), all(!vec4<bool>(arg_1.a, arg_1.c.x, arg_1.c.x, true)), arg_1.c.x), vec4<bool>(!all(vec2<bool>(false, true)), any(select(vec4<bool>(arg_1.c.x, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.c.x, false, true, arg_1.c.x), false)), true, all(!vec4<bool>(arg_1.c.x, arg_1.a, false, true))), select(vec4<bool>(arg_1.c.x, all(vec3<bool>(false, arg_1.c.x, arg_1.c.x)), false, arg_1.a), select(vec4<bool>(false, false, arg_1.c.x, arg_1.c.x), vec4<bool>(true, arg_1.c.x, false, arg_1.c.x), true), vec4<bool>(true, 12694i <= arg_1.b.x, !arg_1.c.x, arg_1.a || arg_1.a))), arg_1);
    let var_1 = select(var_0.d, var_0.d, true);
    var var_2 = var_1.zwx;
    var_2 = var_1.yyy;
    let var_3 = vec3<i32>(-(i32(-1i) * -(2147483647i >> (u_input.b.x % 32u))), abs(max(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1.b.x, 1i, 26208i, -2147483647i)), min(vec4<i32>(5868i, u_input.a.x, -2147483647i, 47883i), vec4<i32>(var_0.e.b.x, u_input.a.x, 1i, 33855i))), -23621i)), firstLeadingBit(_wgslsmith_mod_i32(i32(-1i) * -u_input.a.x, -1i >> (u_input.b.x % 32u))));
    return select(select(vec4<bool>(true | var_0.c.c.x, !all(vec4<bool>(true, arg_1.a, var_2.x, true)), var_2.x, var_2.x), vec4<bool>(any(!vec3<bool>(var_1.x, false, true)), any(!var_1), 1310f > arg_2, false), any(var_0.d.zx)), select(vec4<bool>(!var_1.x, all(var_0.e.c), select(true, !var_1.x, true), u_input.a.x > 0i), vec4<bool>(var_1.x, all(vec3<bool>(true, true, true)), all(!vec3<bool>(true, var_0.d.x, var_0.b.a)), false), var_0.a.a), var_0.d);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    let var_0 = select(true, arg_1.x, all(vec2<bool>(select(all(vec4<bool>(arg_1.x, false, arg_2.a, arg_2.b.b.c.x)), any(arg_2.b.d), true), func_3(arg_3.x, Struct_1(true, arg_2.b.c.b, arg_2.b.b.c, vec3<i32>(-21475i, -1i, 1i)), -522f, arg_3.x).x && all(vec2<bool>(arg_2.b.a.a, arg_1.x)))));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(31465u, u_input.b.x, 40503u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) & vec3<u32>(17228u, 4294967295u, u_input.b.x)), select(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 64796u, 1u), true) ^ vec3<u32>(71202u, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), abs(vec3<u32>(u_input.b.x, u_input.b.x, 0u)))), u_input.b);
    let var_2 = true;
    var_1 = ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, _wgslsmith_sub_u32(15507u, max(~29909u, ~u_input.b.x)));
    var_1 = u_input.b.x;
    return arg_3.x;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(max(u_input.b.yx, u_input.b.yy), u_input.b.zy);
    var var_1 = -1804f;
    var_1 = _wgslsmith_f_op_f32(-560f * _wgslsmith_f_op_f32(func_4(u_input.a.xx, vec3<bool>(!any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), false), Struct_3(any(vec4<bool>(false, false, false, true)), Struct_2(Struct_1(false, vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(false, vec4<i32>(u_input.a.x, 0i, u_input.a.x, -20099i), vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), Struct_1(false, vec4<i32>(49776i, u_input.a.x, u_input.a.x, 1i), vec2<bool>(true, true), u_input.a.wwx), func_3(-2311f, Struct_1(false, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, 54411i)), -586f, 957f), Struct_1(true, vec4<i32>(0i, u_input.a.x, 0i, u_input.a.x), vec2<bool>(true, false), u_input.a.yyx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-467f, 656f, -1561f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1947f, 478f, 401f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -802f), -281f, _wgslsmith_f_op_f32(floor(985f)))))));
    var_1 = 1486f;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(round(-686f)), -2195f, _wgslsmith_f_op_f32(f32(-1f) * -1573f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1364f - 877f), -1854f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1509f, 1175f) + _wgslsmith_f_op_f32(f32(-1f) * -1145f)), 557f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -485f)))), (!select(true, false, false) | (~u_input.b.x > _wgslsmith_add_u32(0u, var_0.x))) & false));
    return Struct_1(any(vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(-countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, u_input.a.x, u_input.a.x), vec4<i32>(-3769i, u_input.a.x, u_input.a.x, u_input.a.x))), min(abs(max(u_input.a, u_input.a)), vec4<i32>(_wgslsmith_mult_i32(1i, 19049i), i32(-1i) * -70112i, u_input.a.x, -40966i)), countOneBits(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(2147483647i, 2147483647i, 2147483647i, u_input.a.x)) & ~u_input.a)), select(!func_3(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), Struct_1(true, vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x), vec2<bool>(false, false), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), _wgslsmith_f_op_f32(var_2.x + 2136f), _wgslsmith_f_op_f32(ceil(-1308f))).yw, select(select(func_3(var_2.x, Struct_1(false, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -24766i), vec2<bool>(true, false), u_input.a.xzz), var_2.x, var_2.x).yx, vec2<bool>(true, false), false), !func_3(-1000f, Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.a.wxw), var_2.x, var_2.x).zw, true), !vec2<bool>(all(vec4<bool>(false, true, true, false)), true)), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(23221i, -9726i, -2147483647i), u_input.a.yxy) << (~vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = -581f;
    var var_1 = arg_1.a;
    let var_2 = Struct_1(func_2().c.x, vec4<i32>(_wgslsmith_mult_i32(arg_3.x, -3866i), _wgslsmith_dot_vec3_i32(arg_2.d ^ vec3<i32>(5395i, arg_1.d.x, 1i), min(min(vec3<i32>(arg_3.x, u_input.a.x, arg_3.x), arg_1.d), u_input.a.zyx >> (u_input.b % vec3<u32>(32u)))), ~arg_1.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 32880i, -1i, arg_3.x) ^ vec4<i32>(arg_1.d.x, -34535i, arg_1.d.x, -2147483647i), vec4<i32>(~arg_3.x, arg_2.b.x | 49562i, arg_3.x, arg_3.x))), func_3(_wgslsmith_f_op_f32(-var_0), Struct_1(arg_1.a, u_input.a, arg_2.c, vec3<i32>(-2147483647i, ~(-13935i), _wgslsmith_dot_vec2_i32(arg_3, u_input.a.yw))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -1089f).zx, func_2().d);
    var var_3 = Struct_2(arg_1, func_2(), func_2(), select(select(vec4<bool>(all(vec3<bool>(var_2.c.x, true, arg_2.c.x)), 1924f == var_0, true, !var_2.c.x), func_3(-433f, func_2(), 555f, var_0), !vec4<bool>(arg_2.c.x, arg_1.c.x, false, false)), vec4<bool>(!func_3(-1245f, Struct_1(true, vec4<i32>(35125i, -15226i, -17529i, arg_1.b.x), arg_1.c, arg_2.b.zzz), 467f, var_0).x, arg_1.a, arg_1.c.x, ~5702u > u_input.b.x), ~_wgslsmith_mult_u32(arg_0.x, arg_0.x) >= 0u), Struct_1(!arg_2.c.x, abs(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, -14317i, 0i, arg_3.x), vec4<i32>(arg_2.d.x, arg_2.d.x, -37974i, var_2.b.x), var_2.a), vec4<i32>(2147483647i, 7779i, var_2.d.x, arg_1.d.x))), !arg_1.c, _wgslsmith_add_vec3_i32(abs(var_2.d), vec3<i32>(_wgslsmith_mult_i32(arg_3.x, 5858i), -21607i, arg_1.d.x))));
    var var_4 = Struct_3(any(vec2<bool>(true, !(!var_3.e.a))), Struct_2(Struct_1(!(var_3.a.d.x < arg_2.d.x), _wgslsmith_mod_vec4_i32(-var_3.a.b, arg_2.b), vec2<bool>(true, false || var_2.c.x), -(vec3<i32>(-1i, arg_3.x, var_2.b.x) << (vec3<u32>(arg_0.x, arg_0.x, 88688u) % vec3<u32>(32u)))), arg_2, Struct_1(true, -_wgslsmith_div_vec4_i32(arg_2.b, arg_2.b), arg_1.c, ~vec3<i32>(arg_2.b.x, u_input.a.x, var_3.a.b.x) & countOneBits(vec3<i32>(var_2.d.x, var_2.b.x, 2147483647i))), var_3.d, Struct_1(var_3.d.x, abs(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(arg_3.x, var_2.d.x, 2147483647i, -1i))), func_3(var_0, arg_2, _wgslsmith_f_op_f32(666f + var_0), 414f).ww, arg_1.d)));
    return Struct_2(arg_2, var_4.b.b, Struct_1(func_2().a, firstTrailingBit(~(~var_2.b)), select(arg_2.c, !var_4.b.a.c, any(func_2().c)), vec3<i32>(min(var_4.b.b.b.x, max(var_2.d.x, -36788i)), firstTrailingBit(arg_1.b.x) >> (firstLeadingBit(21965u) % 32u), var_4.b.a.b.x << (_wgslsmith_sub_u32(arg_0.x, arg_0.x) % 32u))), vec4<bool>(!(!(var_4.a == var_3.b.a)), true, !(!(!var_2.a)), var_3.d.x), Struct_1(true, ~(-(~vec4<i32>(7517i, var_2.d.x, var_4.b.a.b.x, -2147483647i))), vec2<bool>(any(!arg_2.c), false), var_2.b.xxy));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1.b.e.a, true != arg_3.c.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2))));
    return Struct_1(!all(arg_3.d.wzy), arg_3.e.b, arg_1.b.b.c, arg_1.b.e.b.xzw);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: bool) -> i32 {
    var var_0 = func_6(arg_0.b.e, Struct_3(!(~arg_0.b.a.b.x != 1i), func_5(_wgslsmith_sub_vec2_u32(max(vec2<u32>(45801u, 0u), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.yx), func_2(), arg_0.b.a, u_input.a.xw)), -1455f, Struct_2(Struct_1(any(!vec4<bool>(false, true, arg_2, arg_1.x)), ~arg_0.b.b.b, arg_0.b.e.c, vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -44471i), i32(-1i) * -1i, 32436i)), arg_0.b.a, Struct_1(!any(vec2<bool>(arg_2, arg_2)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b.e.d.x, u_input.a.x, 0i, -30149i), reverseBits(vec4<i32>(10808i, -2147483647i, arg_0.b.b.d.x, -18892i))), vec2<bool>(!arg_2, true), vec3<i32>(-1i) * -u_input.a.zyx), arg_0.b.d, Struct_1(arg_0.a, u_input.a, func_2().c, vec3<i32>(arg_0.b.a.b.x, 1i, _wgslsmith_mult_i32(arg_0.b.a.b.x, 20835i)))));
    var var_1 = ~(-2147483647i);
    let var_2 = func_5(u_input.b.yy, arg_0.b.b, Struct_1(true, min(_wgslsmith_add_vec4_i32(reverseBits(var_0.b), -vec4<i32>(-14032i, 0i, u_input.a.x, u_input.a.x)), ~vec4<i32>(var_0.b.x, 0i, 17421i, -4196i)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1243f) * _wgslsmith_div_f32(560f, 230f)), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f * -902f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -1377f), _wgslsmith_f_op_f32(430f - 931f)))).yy, _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(u_input.a.wzy, u_input.a.wxy), select(vec3<i32>(var_0.d.x, u_input.a.x, -2147483647i), vec3<i32>(1i, -2147483647i, var_0.b.x), true))), vec2<i32>(arg_0.b.b.d.x, var_0.b.x));
    var var_3 = func_5(vec2<u32>(~firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), firstTrailingBit(u_input.b.x)), Struct_1(arg_2, -vec4<i32>(-1i, ~arg_0.b.e.b.x, 37133i, var_2.b.d.x), select(vec2<bool>(false, select(true, arg_2, var_0.a)), func_5(~vec2<u32>(41744u, 48628u), var_2.c, func_5(u_input.b.xy, Struct_1(false, arg_0.b.e.b, vec2<bool>(arg_1.x, true), var_2.c.d), var_2.e, arg_0.b.b.d.zz).a, var_2.b.d.yx).a.c, arg_1.x), func_2().b.xxx), Struct_1(true, u_input.a, select(arg_1.xx, vec2<bool>(all(vec2<bool>(var_2.c.a, arg_1.x)), false), !(!var_2.a.c)), var_0.b.yyw), ~_wgslsmith_mult_vec2_i32(-min(arg_0.b.c.b.zw, var_2.e.b.yx), -vec2<i32>(arg_0.b.b.d.x, 19094i))).b;
    var var_4 = var_2.d;
    return ~(-15745i);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.d.x, arg_2.x), u_input.a.x) > 61240i, abs(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 21667i)) >> (vec4<u32>(_wgslsmith_add_u32(0u, 23011u), 4294967295u, arg_3, _wgslsmith_dot_vec3_u32(vec3<u32>(26381u, arg_3, u_input.b.x), vec3<u32>(9601u, 0u, 0u))) % vec4<u32>(32u)), arg_0.c, vec3<i32>(-u_input.a.x, ~abs(0i), 0i)), arg_0, func_2(), select(select(select(vec4<bool>(arg_0.a, arg_0.c.x, arg_0.c.x, true), !vec4<bool>(true, false, arg_0.a, false), !vec4<bool>(false, arg_0.c.x, arg_0.a, true)), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x || arg_0.a), !select(vec4<bool>(false, false, arg_0.c.x, false), vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.a), arg_0.c.x)), select(vec4<bool>(arg_0.c.x, true, true, func_3(arg_1.x, arg_0, -410f, -759f).x), select(vec4<bool>(arg_0.a, arg_0.a, true, false), func_5(vec2<u32>(23267u, arg_3), arg_0, Struct_1(true, u_input.a, arg_0.c, arg_0.b.zxz), vec2<i32>(2147483647i, 0i)).d, false), true), !select(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), func_3(arg_1.x, Struct_1(arg_0.a, vec4<i32>(arg_0.d.x, arg_0.b.x, arg_0.b.x, arg_2.x), arg_0.c, vec3<i32>(-2147483647i, -1i, 1i)), -519f, arg_1.x), arg_0.c.x && true)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.x)), -707f)) < arg_1.x, -vec4<i32>(-arg_2.x, func_5(vec2<u32>(1u, u_input.b.x), Struct_1(false, u_input.a, vec2<bool>(true, true), vec3<i32>(arg_2.x, arg_2.x, arg_2.x)), arg_0, vec2<i32>(2803i, -5905i)).e.d.x, func_2().b.x, ~55988i), vec2<bool>(!(!arg_0.a), false), vec3<i32>(arg_0.d.x, _wgslsmith_clamp_i32(arg_2.x, arg_2.x & 17130i, arg_0.b.x), 1i)));
    var var_1 = var_0.a.a;
    let var_2 = _wgslsmith_add_vec3_i32(abs(~(-_wgslsmith_add_vec3_i32(u_input.a.xyz, u_input.a.zzy))), -_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(u_input.a.x, var_0.e.b.x, 3690i)), vec3<i32>(-arg_2.x, ~u_input.a.x, max(u_input.a.x, u_input.a.x))));
    var_1 = false;
    return 48889u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u ^ func_7(Struct_1(true, u_input.a, vec2<bool>(true, true), select(-u_input.a.xww, ~vec3<i32>(0i, 0i, 32662i), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(796f, -627f, 1467f, -715f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, -590f, -1832f, -419f))))), vec2<i32>(~u_input.a.x, _wgslsmith_mult_i32(firstLeadingBit(-14589i), func_1(Struct_3(true, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, false), vec3<i32>(8251i, u_input.a.x, u_input.a.x)), Struct_1(true, u_input.a, vec2<bool>(true, false), vec3<i32>(9454i, 1i, u_input.a.x)), Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.a.yyw), vec4<bool>(false, true, false, false), Struct_1(true, u_input.a, vec2<bool>(true, false), vec3<i32>(2147483647i, 22333i, 2147483647i)))), vec4<bool>(true, false, false, false), true))), abs(15396u));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(225f))))), -1649f, -1370f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(579f, 657f, -608f), vec3<f32>(-278f, -671f, -563f), true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_2 = func_5(countOneBits(abs(u_input.b.zy) & u_input.b.yx), Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, -u_input.a.x, -_wgslsmith_clamp_i32(-35810i, -2147483647i, u_input.a.x)), select(func_3(-1163f, Struct_1(true, u_input.a, vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(sign(995f)), -1603f).wz, vec2<bool>(false, true), vec2<bool>(true, true)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, 2786i, u_input.a.x), -func_2().b.xww)), func_6(func_6(Struct_1(false, select(u_input.a, u_input.a, true), func_2().c, _wgslsmith_mult_vec3_i32(u_input.a.ywz, vec3<i32>(u_input.a.x, 0i, 705i))), Struct_3(func_3(-1396f, Struct_1(false, u_input.a, vec2<bool>(false, true), vec3<i32>(0i, u_input.a.x, u_input.a.x)), var_1.x, -377f).x, Struct_2(Struct_1(false, vec4<i32>(-1i, -143i, -1i, u_input.a.x), vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, -24537i)), Struct_1(false, vec4<i32>(1i, u_input.a.x, -34072i, u_input.a.x), vec2<bool>(true, true), u_input.a.wzw), Struct_1(true, u_input.a, vec2<bool>(true, false), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), vec4<bool>(false, false, true, true), Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.a.www))), _wgslsmith_f_op_f32(-934f - _wgslsmith_f_op_f32(-676f * var_1.x)), func_5(u_input.b.zz, func_6(Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, 12039i, u_input.a.x), vec2<bool>(false, true), u_input.a.xwy), Struct_3(false, Struct_2(Struct_1(false, u_input.a, vec2<bool>(true, true), u_input.a.xxy), Struct_1(true, u_input.a, vec2<bool>(false, false), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_1(false, vec4<i32>(0i, 20900i, 28535i, -1i), vec2<bool>(false, false), vec3<i32>(-1i, 1i, -33833i)), vec4<bool>(false, false, false, false), Struct_1(false, u_input.a, vec2<bool>(true, false), u_input.a.zyw))), 1345f, Struct_2(Struct_1(true, vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1794i), vec2<bool>(true, false), u_input.a.zzw), Struct_1(false, u_input.a, vec2<bool>(true, true), u_input.a.wzw), Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, 27763i, 2147483647i), vec2<bool>(false, true), u_input.a.wwz), vec4<bool>(false, true, false, false), Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.a.yxy))), Struct_1(true, u_input.a, vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.yy & vec2<i32>(u_input.a.x, u_input.a.x))), Struct_3(true || (u_input.b.x <= 1u), Struct_2(func_6(Struct_1(false, u_input.a, vec2<bool>(true, true), vec3<i32>(10945i, u_input.a.x, -14187i)), Struct_3(false, Struct_2(Struct_1(true, u_input.a, vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(false, u_input.a, vec2<bool>(false, false), vec3<i32>(22994i, -12700i, 16044i)), Struct_1(false, u_input.a, vec2<bool>(true, false), u_input.a.yyy), vec4<bool>(false, false, true, false), Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, -31775i, u_input.a.x), vec2<bool>(true, false), u_input.a.xxz))), var_1.x, Struct_2(Struct_1(false, u_input.a, vec2<bool>(false, true), u_input.a.xzx), Struct_1(false, u_input.a, vec2<bool>(false, true), vec3<i32>(u_input.a.x, 19818i, -1i)), Struct_1(true, u_input.a, vec2<bool>(true, true), vec3<i32>(0i, u_input.a.x, -2147483647i)), vec4<bool>(false, true, true, false), Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.a.wzy))), Struct_1(false, vec4<i32>(1i, 8885i, u_input.a.x, u_input.a.x), vec2<bool>(true, false), vec3<i32>(u_input.a.x, -2147483647i, -1i)), func_5(u_input.b.zy, Struct_1(false, u_input.a, vec2<bool>(true, false), u_input.a.yzy), Struct_1(true, vec4<i32>(-26883i, 26270i, 0i, u_input.a.x), vec2<bool>(false, true), u_input.a.wyy), u_input.a.ww).e, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false), Struct_1(false, vec4<i32>(u_input.a.x, -48678i, 2147483647i, 13976i), vec2<bool>(true, false), vec3<i32>(-27113i, u_input.a.x, u_input.a.x)))), var_1.x, Struct_2(Struct_1(func_6(Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 8312i), vec2<bool>(true, false), u_input.a.xwx), Struct_3(true, Struct_2(Struct_1(false, vec4<i32>(46793i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(true, true), u_input.a.xxx), Struct_1(true, u_input.a, vec2<bool>(false, false), u_input.a.ywy), Struct_1(true, u_input.a, vec2<bool>(false, true), u_input.a.zwx), vec4<bool>(false, true, true, true), Struct_1(false, u_input.a, vec2<bool>(true, false), u_input.a.wwy))), var_1.x, Struct_2(Struct_1(false, vec4<i32>(-20304i, -2147483647i, 1530i, 1i), vec2<bool>(true, true), vec3<i32>(20300i, -4393i, u_input.a.x)), Struct_1(true, vec4<i32>(u_input.a.x, -1i, -20416i, u_input.a.x), vec2<bool>(false, true), vec3<i32>(-2147483647i, u_input.a.x, -1i)), Struct_1(true, u_input.a, vec2<bool>(true, false), u_input.a.yyw), vec4<bool>(false, false, true, true), Struct_1(false, vec4<i32>(-12856i, u_input.a.x, 24995i, u_input.a.x), vec2<bool>(true, true), u_input.a.zzy))).a, vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) ^ vec4<i32>(27900i, -10727i, u_input.a.x, 2147483647i), func_6(Struct_1(true, u_input.a, vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_3(true, Struct_2(Struct_1(true, vec4<i32>(-2599i, u_input.a.x, 46051i, 0i), vec2<bool>(true, true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(true, u_input.a, vec2<bool>(true, true), vec3<i32>(1i, u_input.a.x, 2147483647i)), Struct_1(false, u_input.a, vec2<bool>(false, true), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), vec4<bool>(true, true, true, true), Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(false, true), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)))), -743f, Struct_2(Struct_1(true, u_input.a, vec2<bool>(true, true), u_input.a.ywy), Struct_1(false, u_input.a, vec2<bool>(false, false), u_input.a.xxy), Struct_1(true, vec4<i32>(-1i, u_input.a.x, 70984i, -7010i), vec2<bool>(false, false), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), vec4<bool>(false, true, false, true), Struct_1(false, u_input.a, vec2<bool>(false, false), vec3<i32>(u_input.a.x, u_input.a.x, 62433i)))).c, _wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, -1i), u_input.a.wxz)), Struct_1(false, vec4<i32>(u_input.a.x, u_input.a.x, 14266i, u_input.a.x), vec2<bool>(true, true), ~vec3<i32>(2147483647i, u_input.a.x, 0i)), func_2(), vec4<bool>(true, true, true, false), Struct_1(all(vec3<bool>(true, true, true)), -u_input.a, vec2<bool>(false, true), vec3<i32>(47743i, u_input.a.x, -1386i) | vec3<i32>(u_input.a.x, -27108i, -9026i)))), ~_wgslsmith_sub_vec2_i32(-u_input.a.wx, _wgslsmith_add_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, -1i)) >> (vec2<u32>(u_input.b.x, 7729u) % vec2<u32>(32u))));
    var_0 = _wgslsmith_div_u32(1u, ~(~53625u));
    var_0 = u_input.b.x << ((~(~(u_input.b.x & 0u)) | ~(~firstLeadingBit(u_input.b.x))) % 32u);
    var var_3 = func_5(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 1u), reverseBits(_wgslsmith_clamp_vec2_u32(u_input.b.yz, u_input.b.yx, u_input.b.zx)), func_5(~vec2<u32>(u_input.b.x, 4294967295u), func_5(u_input.b.zz, var_2.a, var_2.e, u_input.a.yz).c, var_2.e, u_input.a.zz << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))).e.c), u_input.b.yy, u_input.b.xz), func_5(~u_input.b.yy, var_2.e, Struct_1(true, select(-vec4<i32>(-34176i, 2851i, 7717i, u_input.a.x), ~vec4<i32>(var_2.c.b.x, -4770i, 59284i, u_input.a.x), vec4<bool>(true, true, true, false)), vec2<bool>(!var_2.a.c.x, true), select(_wgslsmith_mod_vec3_i32(var_2.e.d, u_input.a.yxw), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.d.x, 0i, var_2.a.b.x), vec3<i32>(u_input.a.x, -1i, var_2.e.b.x), u_input.a.zzx), var_2.d.xzx)), select(u_input.a.xw, var_2.c.b.zx, all(!var_2.d.wyw))).b, var_2.b, u_input.a.xw).b;
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, max(~21392u, 4294967295u ^ u_input.b.x) ^ u_input.b.x), firstTrailingBit(~u_input.b) & ((~u_input.b >> (u_input.b % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u))), ~u_input.a.x);
}

