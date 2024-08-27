struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    var var_0 = min(vec2<u32>(u_input.a >> (_wgslsmith_dot_vec2_u32(global0.a.a.wz, global0.c.a.xx) % 32u), firstTrailingBit(_wgslsmith_div_u32(u_input.b, ~u_input.b))), _wgslsmith_sub_vec2_u32(~vec2<u32>(3176u, u_input.a) << (~abs(vec2<u32>(u_input.a, global0.d.a.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(global0.c.a.x, _wgslsmith_add_u32(3860u, global0.a.b)), 1u)));
    let var_1 = vec3<bool>(all(select(!(!global0.d.c.zwx), global0.d.c.xwx, global0.a.c.zxy)), !(-global0.e >= -global0.e) && arg_1, true);
    var var_2 = true;
    var_0 = ~(~global0.a.a.xy);
    var var_3 = !(!(!(!global0.d.c)));
    return global0.b;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = max(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(global0.c.b, 3507u)), ~(global0.c.a.ww | vec2<u32>(0u, 46203u))), max(countOneBits(vec2<u32>(u_input.b, u_input.a)) ^ _wgslsmith_mod_vec2_u32(global0.a.a.xy, vec2<u32>(u_input.b, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.c.a.x), _wgslsmith_div_vec2_u32(global0.a.a.zw, vec2<u32>(106214u, u_input.b)))) >> ((vec2<u32>(1u, u_input.b) | vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b, 24083u), global0.c.a.xx))) % vec2<u32>(32u)));
    let var_1 = reverseBits(global0.d.b);
    let var_2 = arg_0;
    let var_3 = firstLeadingBit(abs(~firstLeadingBit(u_input.a)));
    return Struct_3(select(vec4<bool>(!all(var_2), var_2.x, any(!vec3<bool>(true, arg_0.x, global0.c.c.x)), true), select(!vec4<bool>(var_2.x, false, arg_0.x, arg_0.x), vec4<bool>(false & arg_0.x, u_input.b <= 33581u, var_2.x && true, false & arg_0.x), vec4<bool>(true, var_2.x & var_2.x, true, true)), !any(!vec3<bool>(arg_0.x, true, true))), Struct_1(global0.d.a, ~(var_1 ^ abs(6613u)), global0.a.c), Struct_2(global0.a, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -367f) * _wgslsmith_f_op_f32(round(-578f))), true | arg_0.x), Struct_1(global0.c.a, 9187u, !select(vec4<bool>(global0.d.c.x, var_2.x, var_2.x, false), global0.c.c, var_2.x)), Struct_1(global0.a.a, var_3, vec4<bool>(any(global0.c.c.xyw), global0.a.c.x & global0.a.c.x, false, !var_2.x)), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), select(_wgslsmith_mult_vec2_i32(vec2<i32>(global0.e, global0.e), vec2<i32>(-28053i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-27613i, global0.e), vec2<i32>(3388i, 1i), vec2<i32>(global0.b, global0.e)), global0.b >= 0i))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_3 {
    return func_2(!(!global0.d.c.yyw));
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-955f)))), true).c;
    let var_0 = ~global0.d.a.xz;
    var var_1 = arg_0.a.x;
    var var_2 = (_wgslsmith_mod_i32(~(-2147483647i), func_2(select(arg_0.c.c.c.c.wzy, arg_0.c.b.c.yyw, arg_0.c.b.c.x)).c.b) ^ global0.e) >> (~(global0.d.b ^ abs(global0.d.b)) % 32u);
    let var_3 = arg_0;
    return vec4<bool>(global0.c.c.x, false, min(global0.a.a.x, _wgslsmith_clamp_u32(arg_0.c.c.c.a.x ^ var_3.c.c.c.a.x, ~arg_0.c.c.a.a.x, arg_0.c.c.d.b)) > func_1(_wgslsmith_f_op_f32(f32(-1f) * -446f), var_3.a.x != abs(-55866i)).b.a.x, arg_0.c.c.c.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global0.d.a, u_input.b, func_4(Struct_4(abs(vec2<i32>(global0.e, -1i)), global0.e, func_1(294f, global0.c.c.x)))), 1i, global0.a, global0.d, global0.b >> (1u % 32u));
    let var_0 = Struct_4(vec2<i32>(global0.b, -global0.e), max(-firstTrailingBit(0i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(9096i, -global0.b), 1i)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(853f - 681f), _wgslsmith_div_f32(1311f, 756f))) + _wgslsmith_f_op_f32(ceil(-1174f))), !global0.c.c.x));
    global0 = Struct_2(global0.d, min(~_wgslsmith_div_i32(0i, -23815i) >> (max(~u_input.a, ~0u) % 32u), 20849i), func_2(func_4(Struct_4(var_0.a, global0.b, func_1(1000f, false))).yyx).c.c, Struct_1(~firstTrailingBit(var_0.c.c.d.a), _wgslsmith_mult_u32(1u, ~abs(1u)), global0.c.c), ~select(80723i, -1i, var_0.c.c.a.c.x));
    global0 = Struct_2(Struct_1(var_0.c.b.a, global0.c.a.x, !(!func_4(var_0))), firstLeadingBit(var_0.a.x), func_1(-1196f, true).b, Struct_1(var_0.c.b.a, 4294967295u ^ u_input.b, func_1(-1006f, any(var_0.c.c.c.c.zy)).b.c), 2147483647i & -var_0.b);
    global0 = var_0.c.c;
    var var_1 = var_0;
    let var_2 = var_0;
    let var_3 = Struct_5(-_wgslsmith_mod_i32(countOneBits(min(global0.b, var_1.c.c.e)), global0.e), !vec4<bool>(true, all(vec4<bool>(var_2.c.b.c.x, false, false, true)), var_0.c.a.x, false));
    var_1 = Struct_4(reverseBits(-var_2.a) << (var_1.c.b.a.zy % vec2<u32>(32u)), var_1.b, func_2(select(var_1.c.a.wwy, vec3<bool>(true, false, func_1(-1169f, false).a.x), func_4(var_2).x || (var_2.c.a.x || false))));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(abs(vec4<i32>(18260i, -2147483647i, 30295i, 1i)) << (~vec4<u32>(global0.d.b, 4294967295u, 78432u, 84918u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(func_2(global0.d.c.yzw).b.a.x, u_input.a, 23913u), var_1.c.b.a.xyw));
}

