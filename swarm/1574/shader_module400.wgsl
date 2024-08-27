struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-590f + 1241f), _wgslsmith_f_op_f32(step(272f, -1633f)), !all(vec3<bool>(false, false, true)))), vec3<bool>(true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-883f))), Struct_2(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-1000f))), Struct_1(vec3<bool>(true, true, true), select(false, true, false), vec2<bool>(true, false), vec4<bool>(true, true, true, true)), Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, true)), vec2<bool>(true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))))));
    var var_1 = -2147483647i;
    var var_2 = ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), ~vec3<u32>(1u, 20923u, u_input.e.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1043f, var_0.a.d.a), vec2<f32>(654f, -1273f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-306f, var_0.a.a), vec2<f32>(var_0.a.d.a, 1000f))))))));
    let var_4 = ~10910u;
    return false;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> vec2<bool> {
    var var_0 = countOneBits(countOneBits(u_input.b) & (u_input.b >> (~u_input.b % 32u)));
    let var_1 = Struct_4(arg_2.a);
    let var_2 = var_1;
    var var_3 = vec3<bool>(!arg_1 || true, all(vec3<bool>(false, true, true)), func_3());
    var var_4 = vec4<i32>(u_input.d, _wgslsmith_add_i32(abs(-(-6067i & u_input.c)), 16176i), 18673i, 2147483647i);
    return var_3.yy;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = !any(select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), all(vec4<bool>(false, false, true, false)), Struct_4(Struct_3(arg_1, vec3<bool>(true, true, false), arg_1, Struct_2(arg_1, Struct_1(vec3<bool>(false, false, true), true, vec2<bool>(false, false), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, true), true, vec2<bool>(false, false), vec4<bool>(true, false, true, false))))), true), vec2<bool>(true, true), func_2(vec2<f32>(-642f, 658f), select(false, true, true), Struct_4(Struct_3(-861f, vec3<bool>(false, false, true), 807f, Struct_2(arg_1, Struct_1(vec3<bool>(true, false, false), false, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, vec2<bool>(true, true), vec4<bool>(false, false, true, true))))), true)));
    let var_1 = vec4<f32>(605f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-2241f + 842f)))), arg_1), -519f, arg_1);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(countOneBits(2147483647i), reverseBits(-2147483647i), ~u_input.d, -u_input.d)), vec4<i32>(-21958i, arg_0, arg_0, u_input.a)), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(24631i), _wgslsmith_add_i32(u_input.a, 0i)) >> (~_wgslsmith_sub_u32(4294967295u, u_input.e.x) % 32u), -64754i, 0i, firstLeadingBit(~1i)));
    var_0 = 4294967295u != ~(~u_input.e.x);
    var_0 = true;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -682f), Struct_1(vec3<bool>(false, !any(vec3<bool>(false, true, true)), true), any(select(func_2(vec2<f32>(arg_1, var_1.x), true, Struct_4(Struct_3(-1000f, vec3<bool>(false, true, true), -621f, Struct_2(1957f, Struct_1(vec3<bool>(false, false, false), true, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, false, false), true, vec2<bool>(false, false), vec4<bool>(true, true, false, false))))), false), vec2<bool>(true, true), select(true, false, false))), vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.x > 546f, true, all(vec4<bool>(false, true, true, true)), u_input.e.x <= 0u), false)), Struct_1(vec3<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true), any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true)), vec2<bool>(false, !select(false, true, false)), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(15057u >> (0u % 32u), u_input.e.x), ~0u, u_input.e.x, 4294967295u) ^ (~abs(vec4<u32>(0u, 14733u, 1u, arg_1.x)) << (~select(arg_1, arg_1, arg_0.b.c.x) % vec4<u32>(32u))));
    var var_1 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_sub_i32(max(u_input.c, -2147483647i), arg_2.x), 18257i), ((vec4<i32>(-2147483647i, arg_2.x, u_input.d, -1780i) & vec4<i32>(0i, 2147483647i, 20222i, 2147483647i)) ^ select(vec4<i32>(arg_2.x, u_input.c, u_input.a, 21934i), vec4<i32>(arg_2.x, arg_2.x, -21653i, arg_2.x), arg_0.c.d)) ^ vec4<i32>(55397i, 46227i, arg_2.x, countOneBits(arg_2.x))), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.d, 1i), vec3<i32>(13068i, -2147483647i, 1i)), u_input.a, abs(u_input.c), ~0i));
    var_1 = vec4<i32>(1i, -1i, 18644i, 22297i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a + 509f), _wgslsmith_f_op_f32(step(arg_0.a, 775f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * 208f)))), arg_0.a, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-2018f + arg_0.a)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(arg_0.a - func_1(0i, _wgslsmith_f_op_f32(-arg_0.a)).a)));
    var var_3 = _wgslsmith_f_op_f32(max(arg_0.a, 759f));
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(min(arg_0.a, var_2.x)), arg_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + var_2.x)))), func_1(u_input.c, var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~u_input.e);
    var var_1 = vec3<i32>(21449i, 12423i, 17350i);
    let var_2 = u_input.e;
    let var_3 = func_4(func_1(-reverseBits(-52253i), -1060f), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(max(var_0.x, var_0.x), abs(var_2.x), 1u, u_input.b), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(13965u, u_input.e.x, var_0.x, u_input.e.x), vec4<u32>(88487u, 3865u, u_input.e.x, 1758u), vec4<u32>(var_0.x, 1u, u_input.b, var_2.x))), ~min(vec4<u32>(var_0.x, 4294967295u, u_input.e.x, 42354u), ~vec4<u32>(49444u, 4294967295u, u_input.b, u_input.b))), -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-22228i, u_input.c, var_1.x), _wgslsmith_mod_i32(-1i, u_input.d)), u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-3667i, var_1.x, 30867i), vec3<i32>(-1i, u_input.d, var_1.x)) & var_1.x));
    var var_4 = ~vec2<i32>(abs(abs(-31730i)), -var_1.x) ^ vec2<i32>(-2147483647i, ~(-2147483647i));
    let var_5 = func_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-248f)) + var_3.a.c)), var_3.a.d.c, func_1((0i << (var_2.x % 32u)) & _wgslsmith_sub_i32(var_1.x, 0i), _wgslsmith_f_op_f32(trunc(194f))).b), abs(reverseBits(vec4<u32>(~4294967295u, 80353u, min(0u, u_input.e.x), var_2.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 0i, ~(u_input.a | var_4.x)), abs(select(vec3<i32>(13016i, u_input.d, u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_4.x), vec3<i32>(-6523i, var_1.x, -1i)), select(vec3<bool>(false, var_3.a.d.c.a.x, true), var_3.a.d.b.a, vec3<bool>(var_3.a.b.x, false, false))))));
    var_1 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(1i, u_input.d, u_input.c), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, u_input.a), vec3<i32>(-16906i, var_1.x, u_input.c)), countOneBits(1i)), countOneBits(0i)), firstLeadingBit(~var_1.x & 1i), i32(-1i) * -1i), vec3<i32>(var_1.x, _wgslsmith_div_i32(var_4.x, var_1.x) & var_1.x, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_5.a.a, var_3.a.d.a), vec4<u32>(var_0.x, countOneBits(~(~u_input.b)), firstLeadingBit(_wgslsmith_clamp_u32(var_0.x, u_input.b, u_input.b & var_2.x)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e.x, var_2.x) >> (vec3<u32>(var_2.x, u_input.b, u_input.e.x) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, var_2.x, 4294967295u)), var_2.x)));
}

