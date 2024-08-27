struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -489f;

var<private> global1: vec2<i32> = vec2<i32>(2147483647i, 13560i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = countOneBits(_wgslsmith_mult_vec3_i32(-(abs(vec3<i32>(6285i, u_input.b.x, -2147483647i)) >> (vec3<u32>(29507u, 1u, u_input.a.x) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -1i, u_input.b.x), vec3<i32>(u_input.b.x, global1.x, global1.x)) | ((vec3<i32>(-7264i, 31089i, u_input.b.x) & u_input.b.xyy) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)))));
    var var_1 = Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec4<bool>(false, true, false, true)), false, false, any(vec2<bool>(true, false))), vec4<bool>(false, select(false, false, true), any(vec3<bool>(false, true, true)), any(vec3<bool>(true, false, true))), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), all(vec4<bool>(true, true, true, true)))));
    var var_2 = var_1.c.x;
    var var_3 = select(var_1.c.yz, !select(vec2<bool>(-72383i <= u_input.b.x, any(var_1.c)), !vec2<bool>(var_1.c.x, var_1.c.x), (false == var_1.c.x) && true), all(vec4<bool>(false, true, all(select(var_1.c.zx, vec2<bool>(var_1.c.x, true), var_1.c.x)), _wgslsmith_div_f32(1196f, var_1.b.a) <= _wgslsmith_f_op_f32(f32(-1f) * -726f))));
    var_3 = select(var_1.c.yx, select(!var_1.c.zy, !var_1.c.yw, false), select(!var_1.c.yy, select(var_1.c.zx, !var_1.c.zz, !(u_input.c != 1u)), vec2<bool>(any(var_1.c.wyw), true)));
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(max(arg_0.c.b.a, _wgslsmith_f_op_f32(step(arg_0.c.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.b.a - 1272f) * _wgslsmith_f_op_f32(sign(-1183f))))))));
    let var_0 = vec3<u32>(~u_input.a.x, reverseBits(u_input.c), arg_1 | firstLeadingBit(countOneBits(~u_input.c)));
    var var_1 = vec3<bool>(arg_0.e.x, select(arg_0.e.x, min(~4294967295u, var_0.x) < _wgslsmith_add_u32(abs(74506u), u_input.a.x), arg_0.a.x), all(arg_0.e.xx));
    var_1 = !(!vec3<bool>(true, false, all(!vec2<bool>(arg_0.e.x, var_1.x))));
    global1 = abs(countOneBits(abs(reverseBits(vec2<i32>(0i, global1.x)))));
    return vec2<i32>(-15414i, -28752i);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    var var_0 = select(vec4<bool>(true, !(global1.x > arg_3.x) | any(!vec3<bool>(true, arg_2.c.x, true)), !arg_2.c.x, arg_2.c.x), !(!arg_2.c), arg_1);
    let var_1 = u_input.a.x;
    let var_2 = vec4<bool>(all(vec3<bool>(true, arg_2.c.x, var_0.x)), false, true, !all(vec4<bool>(true, !var_0.x, !arg_1.x, true)));
    var var_3 = -func_4(Struct_3(arg_2.c.wxz, 71718u, arg_2, 4294967295u, !(!arg_1.xzz)), select(arg_2.a, 56225u, func_3()));
    var_3 = arg_3.xy >> (select(abs(firstLeadingBit(~vec2<u32>(arg_2.a, var_1))), ~(~(u_input.a ^ vec2<u32>(32504u, var_1))), true) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(abs(-419f));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global1 = -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.ww, arg_1.yy, abs(arg_1.xy)) ^ vec2<i32>(~17246i, _wgslsmith_mult_i32(arg_1.x, 2147483647i)), vec2<i32>(-1i) * -(vec2<i32>(global1.x, -1i) ^ vec2<i32>(-1i, -87357i)));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, _wgslsmith_f_op_f32(func_2(vec3<f32>(arg_2.b.a, arg_3.b.a, -871f), arg_3.c, arg_2, vec3<i32>(28432i, 0i, -2147483647i))), _wgslsmith_div_f32(-416f, arg_2.b.a), -399f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.a, arg_3.b.a, 310f, 288f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2376f, -337f, -618f, -1844f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, arg_3.b.a, 1300f, arg_3.b.a))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.a, arg_2.b.a, arg_2.b.a, arg_2.b.a), vec4<f32>(arg_3.b.a, arg_3.b.a, arg_3.b.a, arg_2.b.a), false))))))));
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0, abs(0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 4294967295u), ~u_input.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 12375u, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, arg_2.a, 93219u), vec4<u32>(arg_0, 0u, 1u, u_input.a.x), vec4<u32>(0u, arg_2.a, 4294967295u, 18867u))), select(~0u & _wgslsmith_mod_u32(arg_2.a, arg_0), 1u, arg_2.c.x));
    var var_2 = all(vec2<bool>(arg_2.c.x && true, (arg_3.b.a != arg_3.b.a) & (arg_2.c.x | arg_3.c.x))) || arg_2.c.x;
    global0 = arg_3.b.a;
    return -431f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(max(1000f, -523f)) < _wgslsmith_f_op_f32(func_1(u_input.c, u_input.b.xwy, Struct_2(u_input.c, Struct_1(894f), vec4<bool>(false, true, true, true)), Struct_2(4294967295u, Struct_1(1469f), vec4<bool>(true, false, true, true))))), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))) & true), abs(1u), Struct_2(0u, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -937f)))), vec4<bool>(false, !any(vec2<bool>(true, true)), false, true)), 23699u, !vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true, true));
    var var_1 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(~_wgslsmith_mod_u32(u_input.c, var_0.b), 26344u, _wgslsmith_clamp_u32(98234u, _wgslsmith_mod_u32(65035u, var_0.d), 42659u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(59511u, var_0.b, 1u, var_0.d), vec4<u32>(73324u, 5115u, u_input.a.x, var_0.d)), firstTrailingBit(vec4<u32>(u_input.a.x, 8676u, var_0.b, 87807u))))), select(~(~(vec4<u32>(4294967295u, u_input.a.x, u_input.c, u_input.c) & vec4<u32>(0u, 0u, u_input.a.x, 0u))), vec4<u32>(_wgslsmith_add_u32(22067u, u_input.a.x), 4294967295u, var_0.c.a, ~u_input.a.x) >> (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(19569u, u_input.c, var_0.c.a, var_0.c.a)), ~vec4<u32>(u_input.a.x, u_input.c, 19528u, 43236u)) % vec4<u32>(32u)), all(var_0.e)));
    let var_2 = false;
    var var_3 = !(!(!select(!var_2, false & var_2, var_0.e.x)));
    let var_4 = abs(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_0.b, var_1.x) >> (vec4<u32>(u_input.c, 4294967295u, 16899u, 58211u) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.d, 36002u, var_1.x, 1u))) | _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 33876u, u_input.c, u_input.c), ~vec4<u32>(var_0.d, u_input.c, u_input.c, 12771u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~(~1u), abs(var_1.x)), ~(~(select(var_0.b, 4294967295u, var_0.a.x) | 14444u)), 2147483647i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, -1000f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.b.a, _wgslsmith_f_op_f32(round(var_0.c.b.a))))))));
}

