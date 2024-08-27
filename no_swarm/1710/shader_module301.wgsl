struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(21566u, 13439u, 4294967295u, 76620u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = abs(vec4<u32>(u_input.a, 0u, 19289u >> (u_input.a % 32u), u_input.b.x));
    let var_0 = Struct_2(Struct_1(min(arg_0.a.a, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2086f))), select(all(vec4<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c, arg_0.a.c)), arg_0.a.c, (0u == global0.x) & all(vec2<bool>(arg_0.a.c, arg_0.a.c))), _wgslsmith_sub_i32(~0i, reverseBits(-33862i)) & arg_0.a.e.x, vec3<i32>(0i, -_wgslsmith_sub_i32(u_input.c.x, arg_0.a.a), u_input.c.x)));
    let var_1 = ~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, global0.x, 1u, u_input.a), vec4<u32>(59969u, 0u, 0u, 1u)), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 4294967295u) ^ vec4<u32>(1u, u_input.b.x, 116089u, 4294967295u), !vec4<bool>(false, arg_0.a.c, var_0.a.c, true)) << (((vec4<u32>(16122u, 4294967295u, 4294967295u, 1u) ^ ~vec4<u32>(36970u, global0.x, 1u, u_input.a)) & ~abs(vec4<u32>(0u, 4294967295u, global0.x, 38004u))) % vec4<u32>(32u)));
    let var_2 = var_0;
    var var_3 = var_2.a;
    return arg_0.a.b;
}

fn func_2() -> Struct_1 {
    global0 = vec4<u32>(~0u, _wgslsmith_add_u32(~min(u_input.a, u_input.b.x), global0.x) << (u_input.a % 32u), ~1u, 53142u);
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-2069f, 611f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.c.x, -1429f, false, 12247i, u_input.c.zzw)))))), 1f, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)))), -1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-490f, -1672f)))), 883f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1680f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(517f + 719f), -371f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-162f, 960f))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_i32(1i, -21245i, -752i), var_0.x, !any(vec4<bool>(false, false, false, true)), firstLeadingBit(_wgslsmith_div_i32(-1i, 8780i) | select(u_input.c.x, u_input.c.x, false)), countOneBits(u_input.c.xwz)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-638f, var_1.a.b))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(865f, var_0.x, var_1.a.b, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1577f, 532f, 702f, var_0.x), vec4<f32>(var_1.a.b, -1228f, -912f, var_2.x)), select(vec4<bool>(true, false, var_1.a.c, true), vec4<bool>(var_1.a.c, false, var_1.a.c, var_1.a.c), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.b, -436f, var_1.a.b, var_2.x))))))));
    return Struct_1(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.e.x, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, 30632i, -25949i)) << (vec3<u32>(u_input.a, 36378u, global0.x) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, var_1.a.a, u_input.c.x) | vec3<i32>(u_input.c.x, 1i, u_input.c.x)), -801f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + 618f))), 710f, all(!vec3<bool>(true, var_1.a.c, var_1.a.c)))) == _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2169f, _wgslsmith_div_f32(var_3.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-923f * 826f) + _wgslsmith_f_op_f32(f32(-1f) * -1778f)), true)), u_input.c.x, firstTrailingBit(countOneBits(u_input.c.xzx)));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = Struct_2(func_2());
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (~(~(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 46389u) >> (vec4<u32>(u_input.b.x, global0.x, 0u, 0u) % vec4<u32>(32u)))) ^ vec4<u32>(73968u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -394f)), global0.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 41608u, 83625u), vec3<u32>(4294967295u, 93786u, u_input.b.x)), ~(~u_input.b.x))) | vec4<u32>(firstTrailingBit(28704u), ~u_input.b.x, abs(u_input.b.x), u_input.a);
    global0 = ~(~select(select(~vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(1u, 0u, 68025u, 100320u), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 1u, 18836u, 0u), abs(vec4<u32>(1u, 30920u, u_input.b.x, 45486u)), vec4<u32>(global0.x, 92032u, 104284u, 0u)), ~u_input.b.x <= min(u_input.a, 0u)));
    let var_0 = countOneBits((-abs(u_input.c.x) ^ (_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) & _wgslsmith_mult_i32(-2147483647i, u_input.c.x))) >> (_wgslsmith_mod_u32(49779u, _wgslsmith_sub_u32(2969u, global0.x)) % 32u));
    var var_1 = max(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(global0.x), 51683u) ^ global0.x, _wgslsmith_sub_u32(global0.x, u_input.a), ~firstLeadingBit(~33587u)), global0.wxx & vec3<u32>(min(global0.x, ~5387u), _wgslsmith_add_u32(1u, u_input.b.x) ^ _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~global0.x));
    var_1 = max(countOneBits(select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.x, u_input.b.x), u_input.b & vec3<u32>(var_1.x, 30877u, global0.x)), ~(~vec3<u32>(0u, 4294967295u, 0u)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)))), vec3<u32>(13860u, _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.a), vec2<u32>(11342u, 38002u))), u_input.b.x), 4294967295u & firstTrailingBit(~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, abs(var_1.yx) & countOneBits(firstTrailingBit(max(vec2<u32>(2088u, 30857u), global0.zx))), _wgslsmith_f_op_f32(sign(-373f)));
}

