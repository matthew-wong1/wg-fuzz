struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 75784u, 1u);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    global0 = reverseBits(u_input.d | vec4<u32>(15128u, firstLeadingBit(0u) & global0.x, abs(0u), ~_wgslsmith_mult_u32(global0.x, global0.x)));
    global0 = vec4<u32>(_wgslsmith_clamp_u32(abs(4294967295u), u_input.a.x >> (global0.x % 32u), _wgslsmith_clamp_u32(~(~u_input.a.x), ~(~global0.x), ~(~u_input.d.x))), global0.x, ~u_input.d.x, ~(min(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, 1016u), vec3<u32>(u_input.d.x, 2757u, 31810u))) >> (global0.x % 32u)));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, 460f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, global1.c.x))), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(130f * global1.b.x))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.c), vec3<f32>(_wgslsmith_div_f32(global1.b.x, -169f), _wgslsmith_f_op_f32(-832f + _wgslsmith_div_f32(1950f, -165f)), 1379f))), global1.c);
    let var_0 = vec4<i32>(u_input.e, ~(-22629i << (u_input.a.x % 32u)), 29797i, u_input.c.x);
    var var_1 = Struct_2(u_input.c, Struct_1(global1.a, vec3<f32>(766f, -597f, 1162f), _wgslsmith_f_op_vec3_f32(-global1.b)));
    return ~(~(~vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(u_input.a.x, 1u), _wgslsmith_dot_vec3_u32(u_input.a.yzz, vec3<u32>(u_input.d.x, 1u, global0.x)), 10499u)));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(~(~94875u), ~_wgslsmith_sub_u32(1u, global0.x), u_input.d.x), global0.x);
    let var_1 = Struct_2(u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.b.xx, vec2<f32>(1179f, 1369f))) * _wgslsmith_f_op_vec2_f32(global1.b.yz * global1.c.xz)), global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.c)) - _wgslsmith_f_op_vec3_f32(abs(global1.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b + vec3<f32>(global1.b.x, global1.a.x, -1000f))))));
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d.x, global0.x, u_input.d.x, 0u)), ~func_3(), vec4<u32>(~global0.x, ~1u, ~u_input.d.x, 0u)), _wgslsmith_add_vec4_u32(u_input.a, ~vec4<u32>(u_input.d.x, global0.x, global0.x, var_0))) << (max(vec4<u32>(global0.x, global0.x, select(68382u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), true), var_0), vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(32748u, global0.x) ^ u_input.a.xw), var_0, var_0)) % vec4<u32>(32u));
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, var_0, 52995u) | (global0.x | 67010u), 4294967295u, 20581u >> (_wgslsmith_dot_vec3_u32(global0.zxw, vec3<u32>(global0.x, global0.x, 11503u)) % 32u), _wgslsmith_dot_vec3_u32(u_input.d.wxx, global0.yyw ^ vec3<u32>(71489u, global0.x, var_0))), vec4<u32>(~(~4294967295u), global0.x, _wgslsmith_clamp_u32(var_0, ~1u, 10392u), u_input.a.x)), select(u_input.a.x, global0.x, true) << (global0.x % 32u), global0.x, ~(~abs(global0.x)) & (abs(func_3().x) >> (1u % 32u)));
    global0 = u_input.d;
    return vec3<f32>(var_1.b.a.x, -647f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2212f + _wgslsmith_f_op_f32(max(-1041f, global1.c.x))))));
}

fn func_1() -> Struct_2 {
    return Struct_2(~(-_wgslsmith_clamp_vec4_i32(u_input.c, ~vec4<i32>(-2147483647i, 0i, -30311i, u_input.e), _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.e, u_input.c.x, 1i)))), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, -1513f, global1.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) * _wgslsmith_f_op_vec3_f32(global1.c * vec3<f32>(-577f, -402f, global1.b.x)))), _wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, 1207f))))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = func_1().b;
    let var_0 = vec2<f32>(_wgslsmith_div_f32(arg_0.b.b.x, func_1().b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.b.x))) - _wgslsmith_f_op_f32(min(808f, -213f))));
    var var_1 = ~(~49062u << (global0.x % 32u));
    global0 = ~vec4<u32>(firstLeadingBit(abs(4294967295u)), global0.x, 3983u, 4294967295u) << ((~(~firstTrailingBit(vec4<u32>(global0.x, global0.x, u_input.d.x, 0u))) | _wgslsmith_add_vec4_u32(~(~u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(48423u, 4294967295u, u_input.d.x, u_input.a.x) | u_input.a, u_input.d ^ u_input.d))) % vec4<u32>(32u));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.c.x * arg_0.b.a.x), -1749f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(-280f, -485f, 1426f) + _wgslsmith_f_op_vec3_f32(-arg_0.b.c)))), vec3<f32>(var_0.x, arg_0.b.c.x, _wgslsmith_f_op_f32(905f + -166f)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    let var_1 = select(!(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), var_0.a.x < -1i)), select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), false)), true);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(-296f))), _wgslsmith_f_op_f32(-429f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c.x)))), any(select(select(select(vec2<bool>(true, true), vec2<bool>(true, var_1.x), var_1.x), vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, true), var_1, var_1)), var_1, !(!var_1.x)))));
    global1 = var_0.b;
    let var_3 = _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.d.yzy, global0.zwz) & global0.x), 21979u);
    global0 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)))), global1.a.x, vec3<u32>(_wgslsmith_mod_u32(select(7543u, _wgslsmith_dot_vec3_u32(u_input.a.xwy, vec3<u32>(var_3, 0u, u_input.a.x)), var_1.x), u_input.b), abs(~(~var_3)), func_3().x), -vec2<i32>(~u_input.e, var_0.a.x));
}

