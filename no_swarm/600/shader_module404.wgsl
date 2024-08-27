struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = vec4<i32>(abs(~firstTrailingBit(_wgslsmith_mod_i32(u_input.b, u_input.b))), reverseBits(u_input.b), abs(26431i), ~abs(-14091i));
    var var_1 = Struct_1(!vec4<bool>(~var_0.x == u_input.b, true, 5047u > arg_0.x, true), select(_wgslsmith_mult_i32(u_input.b, select(0i, 17702i, true)), ~reverseBits(var_0.x), true) & var_0.x, true);
    var_1 = Struct_1(var_1.a, ~(-1i), all(vec3<bool>(all(vec4<bool>(false, var_1.c, false, var_1.c)), var_1.c, true)) && all(vec4<bool>(any(vec2<bool>(true, var_1.a.x)), !var_1.c, true, true)));
    var var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(19265u, 4294967295u, 0u), arg_0), reverseBits(~vec3<u32>(57468u, arg_0.x, 1u))) ^ firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(122484u, 80944u, 0u) & vec3<u32>(7926u, 4294967295u, arg_0.x), select(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), arg_0, var_1.c)));
    let var_3 = _wgslsmith_clamp_i32(u_input.a.x, reverseBits(u_input.b), -30080i);
    return vec4<bool>(true, 2147483647i > var_3, false, var_1.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!(!func_3(u_input.c.xww << (vec3<u32>(4294967295u, u_input.c.x, 0u) % vec3<u32>(32u)), u_input.c.xw)), _wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(-u_input.a.x, select(~1112i, firstLeadingBit(37484i), all(vec2<bool>(true, false))))), any(vec3<bool>(any(vec3<bool>(true, true, true)), false, true)));
    var_0 = Struct_1(select(func_3(firstTrailingBit(~u_input.c.wyy), vec2<u32>(~u_input.c.x, 57354u)), !vec4<bool>(all(vec2<bool>(true, var_0.a.x)), false, true, true), var_0.c), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(~(-31312i), -u_input.b, u_input.a.x, 2147483647i & u_input.a.x)), false);
    var var_1 = Struct_3(Struct_1(vec4<bool>(false, var_0.a.x, false, true), -2147483647i, u_input.c.x >= u_input.c.x), Struct_2(Struct_1(vec4<bool>(!var_0.c, any(var_0.a.ww), any(vec4<bool>(var_0.a.x, true, true, var_0.a.x)), var_0.a.x), 1i, true), _wgslsmith_mod_u32(1u, 1u), Struct_1(!(!var_0.a), -1i, !(u_input.b > var_0.b))), all(!var_0.a.yx), 810f);
    var var_2 = Struct_2(var_1.b.a, ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(42791u, u_input.c.x, var_1.b.b, var_1.b.b)), ~reverseBits(u_input.c)), var_1.a);
    var var_3 = Struct_2(Struct_1(!var_2.c.a, max(u_input.b, var_0.b) & ((u_input.b & u_input.b) | var_1.a.b), any(var_2.c.a.zx)), _wgslsmith_div_u32(3106u, var_2.b), Struct_1(var_1.b.c.a, -(~(-var_2.a.b)), true));
    return Struct_1(vec4<bool>(func_3(u_input.c.xyw, u_input.c.wy).x, var_1.b.a.a.x, var_1.d <= _wgslsmith_f_op_f32(-var_1.d), !(!var_1.b.a.c)), u_input.b, false);
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = func_2();
    let var_1 = !func_3(~vec3<u32>(4294967295u, 8169u, ~72459u), u_input.c.yz).xy;
    var_0 = Struct_1(select(!(!select(var_0.a, vec4<bool>(var_0.a.x, var_1.x, var_0.c, true), var_0.a)), vec4<bool>(true, !any(var_0.a), !var_0.a.x || !var_1.x, all(vec3<bool>(var_1.x, true, var_1.x))), var_0.a), -10762i, !var_0.a.x);
    return true | var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), ~u_input.c.x & u_input.c.x), u_input.c.x), _wgslsmith_add_u32(abs(max(~16012u, 26943u)), ~(~reverseBits(u_input.c.x))));
    var var_1 = Struct_1(!vec4<bool>(true, true, true, select(func_1(vec3<i32>(u_input.b, -5532i, 2147483647i)), func_3(vec3<u32>(u_input.c.x, 1u, u_input.c.x), u_input.c.yy).x, true)), abs(0i), -273f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-297f, _wgslsmith_f_op_f32(-1000f + -391f))))));
    var var_2 = func_2();
    var_2 = func_2();
    var_2 = Struct_1(func_2().a, var_2.b, func_1(firstLeadingBit(~u_input.a.zww)));
    var_2 = Struct_1(vec4<bool>(func_2().c, false, _wgslsmith_mult_u32(u_input.c.x, ~1u) <= ~21196u, all(var_2.a.zzy)), countOneBits(~(firstTrailingBit(-1i) & -2147483647i)), func_3(vec3<u32>(~reverseBits(29162u), ~abs(u_input.c.x), 4294967295u), _wgslsmith_clamp_vec2_u32(min(_wgslsmith_mult_vec2_u32(u_input.c.xz, u_input.c.yy), abs(vec2<u32>(u_input.c.x, u_input.c.x))), vec2<u32>(0u, u_input.c.x), u_input.c.xz)).x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(407f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1828f)))), 303f));
}

