struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, -664f, true, vec2<bool>(true, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> bool {
    global0 = Struct_1(global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(sign(-569f)))) - global0.b), true, select(global0.d, global0.d, !global0.c));
    let var_0 = min(~(-vec2<i32>(1i, 1i)) << (u_input.a.yx % vec2<u32>(32u)), reverseBits(select(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(4510i, 30366i), vec2<i32>(-1i, 0i))), vec2<i32>(1i, 1i), vec2<bool>(all(global0.d), select(arg_0, false, true)))));
    let var_1 = ~firstLeadingBit(_wgslsmith_add_i32(1i, -20884i));
    var var_2 = Struct_1(select(~max(0u, 28768u) >= abs(u_input.a.x), global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, global0.b)) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(690f - global0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))) - -2025f), arg_0, global0.d);
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) << (max(71988u, 42327u >> (1u % 32u)) % 32u), _wgslsmith_div_u32(33319u, abs(u_input.a.x & u_input.a.x))), 4294967295u, u_input.a.x >> (firstTrailingBit(_wgslsmith_mult_u32(0u, u_input.a.x) << (u_input.a.x % 32u)) % 32u), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 1u, 1u, 17498u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 31165u, 72399u, u_input.a.x) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 0u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, 95114u, 0u))));
    return (var_2.b > 341f) & (max(var_1, max(i32(-1i) * -27194i, var_0.x)) >= var_0.x);
}

fn func_2() -> f32 {
    let var_0 = ~min(vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(0i, 2432i)), _wgslsmith_mod_i32(0i, 1i)), vec2<i32>(1i, -1i));
    var var_1 = global0.d.x;
    var_1 = any(!(!select(global0.d, select(vec2<bool>(global0.a, global0.d.x), vec2<bool>(true, true), vec2<bool>(true, global0.a)), !vec2<bool>(false, global0.c))));
    let var_2 = all(vec4<bool>(global0.a && func_3(false), any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(global0.a, false, global0.d.x, global0.d.x), global0.c), !vec4<bool>(global0.a, false, global0.c, true), select(vec4<bool>(global0.d.x, global0.c, global0.c, global0.c), vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(global0.c, true, false, false)))), !(_wgslsmith_f_op_f32(global0.b + global0.b) != _wgslsmith_f_op_f32(ceil(-152f))), any(global0.d)));
    global0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), var_2, !global0.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(global0.b + global0.b))));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(select(835f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(-336f * global0.b), all(global0.d))) * _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(arg_0.a.x + global0.b)))), func_3(global0.a != true)));
    let var_1 = Struct_4(arg_0.a);
    let var_2 = !global0.c;
    var var_3 = select(vec3<bool>(all(vec3<bool>(true, var_2, false)), true, all(select(select(vec2<bool>(false, true), vec2<bool>(true, global0.c), vec2<bool>(global0.d.x, false)), vec2<bool>(var_2, true), global0.d))), select(vec3<bool>(func_3(true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.a.x, 16110u)) > ~u_input.a.x, any(select(vec3<bool>(global0.a, var_2, false), vec3<bool>(var_2, global0.a, true), vec3<bool>(global0.d.x, global0.d.x, true)))), !vec3<bool>(false, global0.d.x, all(vec4<bool>(global0.c, true, var_2, true))), vec3<bool>(all(select(vec4<bool>(var_2, false, var_2, false), vec4<bool>(var_2, false, var_2, global0.c), vec4<bool>(global0.c, true, var_2, global0.c))), !var_2, false)), select(select(vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, global0.c, var_2, global0.a)), true), vec3<bool>(global0.c, all(vec3<bool>(global0.c, true, global0.d.x)), all(vec3<bool>(false, false, var_2))), true), !select(!vec3<bool>(false, global0.a, var_2), vec3<bool>(true, global0.d.x, var_2), !var_2), vec3<bool>(!global0.a | false, global0.a & any(vec3<bool>(var_2, global0.a, true)), false)));
    var var_4 = !func_3(true);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<i32>(1i >> (abs(func_1(Struct_4(vec4<f32>(664f, 1853f, -449f, global0.b)), -13038i, vec4<i32>(-1i, -23599i, -1i, -2147483647i), -13265i)) % 32u), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, -44469i), select(-2147483647i, -1i, global0.a)), 1i)), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, 1043f))))), Struct_1(false, _wgslsmith_f_op_f32(trunc(global0.b)), true, global0.d)), true);
    global0 = var_0.b.b;
    var var_1 = var_0.a.x;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(394f + 204f), _wgslsmith_f_op_f32(-var_0.b.b.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a, var_0.b.b.b))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -964f), _wgslsmith_div_f32(-1198f, 1000f)), var_0.b.b.d)))));
    var var_4 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(var_0.a.x << (24597u % 32u), ~43019i), var_2.a.x, var_0.a.x)) ^ -vec3<i32>(var_2.a.x, 1i, -_wgslsmith_add_i32(25338i, var_0.a.x));
    let var_5 = var_2.b.b;
    let var_6 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_4.x, -2147483647i), ~countOneBits(-_wgslsmith_sub_i32(var_2.a.x, var_0.a.x)), -536f);
}

