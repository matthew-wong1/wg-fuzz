struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-579f, vec3<u32>(53792u, 4294967295u, 0u), -84i, false, 346f);

var<private> global1: f32 = -671f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = 8099i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.e, -1558f)) * -2676f), _wgslsmith_div_f32(1154f, -1957f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)));
    var var_2 = u_input.b.www;
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(global0.e, _wgslsmith_f_op_f32(arg_1.e + 592f)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(33430u, arg_0, global0.b.x), vec3<u32>(arg_1.b.x, 4294967295u, 1u) & vec3<u32>(17363u, 4294967295u, 0u)), firstTrailingBit(~vec3<u32>(u_input.a, arg_1.b.x, 73243u)), false), u_input.b.x, false, _wgslsmith_f_op_f32(f32(-1f) * -219f)), Struct_1(_wgslsmith_f_op_f32(floor(1735f)), ~select(vec3<u32>(40481u, u_input.a, 20179u), ~vec3<u32>(u_input.a, u_input.a, 1393u), global0.d), global0.c, false, -215f), ~(-u_input.b.yww), 27091u);
    var var_4 = var_3;
    return 1164f;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(-555f, global0.b, _wgslsmith_clamp_i32(-25228i, ~global0.c, ~select(0i, u_input.b.x, true)), false, _wgslsmith_f_op_f32(func_3(0u << (~u_input.a % 32u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1403f), global0.b & global0.b, -u_input.b.x, true, _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_sub_vec2_i32(select(u_input.b.zw, vec2<i32>(-19780i, 2147483647i), vec2<bool>(global0.d, global0.d)), vec2<i32>(global0.c, -9180i))))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 162f)))), global0.b, 2147483647i | -select(global0.c, u_input.b.x, global0.d), true || global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) * _wgslsmith_f_op_f32(round(-813f)))), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.wyy, u_input.b.zyz)), _wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(global0.c, u_input.b.x, global0.c, u_input.b.x), u_input.b, vec4<bool>(global0.d, global0.d, global0.d, false))), u_input.b), global0.c), 58482u);
    global1 = var_0.a.e;
    return any(select(vec4<bool>(true, var_0.a.d, var_0.b.c == u_input.b.x, select(true, true, true && global0.d)), vec4<bool>(false, any(!vec4<bool>(true, var_0.a.d, true, global0.d)), true, true), vec4<bool>(true, !any(vec3<bool>(var_0.b.d, true, var_0.b.d)), global0.d, true)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.b.e)));
    global0 = arg_2.a;
    var var_0 = Struct_1(arg_2.b.e, arg_2.a.b, u_input.b.x, func_2(), 1f);
    var_0 = Struct_1(arg_2.b.e, vec3<u32>(~1u, 66593u, ~arg_0.a.b.x), 38710i, ~(~4294967295u) < min(~var_0.b.x, 39835u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * global0.a) * -1051f), 152f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e))))))));
    global0 = Struct_1(arg_2.a.e, countOneBits(_wgslsmith_div_vec3_u32(arg_2.a.b, vec3<u32>(var_0.b.x, var_0.b.x, global0.b.x))) | vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_2.a.b.x, global0.b.x)), firstTrailingBit(var_0.b.yx)), ~max(u_input.a, u_input.a)), _wgslsmith_div_i32(arg_1.x, 0i) & -2147483647i, func_2(), _wgslsmith_f_op_f32(func_3(~_wgslsmith_mod_u32(1u, 15712u), arg_0.a, countOneBits(vec2<i32>(var_0.c, arg_2.b.c)))));
    return abs(arg_2.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(func_1(Struct_2(Struct_1(global0.a, vec3<u32>(global0.b.x, 4294967295u, 14267u), -29899i, global0.d, 588f), Struct_1(2869f, vec3<u32>(u_input.a, global0.b.x, 85392u), global0.c, global0.d, 2173f), u_input.b.yyx, u_input.a), u_input.b.yw, Struct_2(Struct_1(global0.a, vec3<u32>(73782u, global0.b.x, 0u), u_input.b.x, false, global0.a), Struct_1(global0.e, vec3<u32>(16911u, 1u, 46349u), 64132i, global0.d, global0.a), u_input.b.xwx, u_input.a))), global0.b.x, ~1u ^ global0.b.x, 15091u), vec4<u32>(0u, u_input.a, global0.b.x << (global0.b.x % 32u), abs(global0.b.x ^ 7432u))) | (~(~vec4<u32>(u_input.a, 86302u, u_input.a, global0.b.x)) ^ ~vec4<u32>(global0.b.x >> (global0.b.x % 32u), global0.b.x, 38543u, max(4294967295u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-283f, _wgslsmith_f_op_f32(-global0.e))));
    global0 = Struct_1(1251f, max(vec3<u32>(global0.b.x, var_0.x, ~global0.b.x) & _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.a, 1u), reverseBits(vec3<u32>(var_0.x, u_input.a, 0u))), ~global0.b), ~u_input.b.x, true, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-261f * var_1)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-720f + global0.a) - _wgslsmith_div_f32(163f, -536f)), _wgslsmith_f_op_f32(f32(-1f) * -1824f), all(vec4<bool>(global0.d, global0.d, false, true)))), 2045f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(min(global0.a, var_1))))), ~reverseBits(global0.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1)))));
}

