struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<i32>(-10758i, -36289i, 80328i, 0i), vec2<f32>(1361f, -226f)), vec3<f32>(407f, -143f, 540f), Struct_1(vec4<i32>(-1i, i32(-2147483648), -3338i, -22140i), vec2<f32>(154f, 1943f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec3<f32> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(select(3027i, ~global0.a.a.x, true), -(_wgslsmith_div_i32(-34956i, global0.a.a.x) ^ global0.a.a.x)), 2147483647i >> (u_input.a.x % 32u), global0.c.a.x, _wgslsmith_div_i32(max(global0.c.a.x, -21082i), global0.a.a.x));
    global0 = Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1472f, global0.c.b.x, global0.a.b.x))))), Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, var_0.x, global0.a.a.x, 2147483647i), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(global0.c.a, vec4<i32>(var_0.x, 2596i, global0.a.a.x, -8844i)), firstLeadingBit(global0.c.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0.a.b)))));
    let var_1 = Struct_3(Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * global0.b) - _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(-global0.b)))), Struct_1(max(-vec4<i32>(global0.c.a.x, 19833i, 0i, var_0.x), _wgslsmith_clamp_vec4_i32(global0.c.a, vec4<i32>(global0.c.a.x, var_0.x, global0.c.a.x, -34884i), vec4<i32>(var_0.x, var_0.x, var_0.x, global0.a.a.x))), _wgslsmith_f_op_vec2_f32(step(global0.c.b, _wgslsmith_f_op_vec2_f32(step(global0.c.b, vec2<f32>(-1037f, -845f))))))), ~countOneBits(vec2<u32>(1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), Struct_1(~var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a.b.x, 232f))), global0.b.yx)))), vec3<i32>(select(-30349i, firstTrailingBit(2147483647i) | (var_0.x ^ var_0.x), true && any(vec2<bool>(false, false))), ~(-24307i), global0.c.a.x));
    var var_2 = select(true, any(vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), true | (global0.a.a.x <= global0.a.a.x))), !any(vec3<bool>(true, true, true)));
    global0 = var_1.a;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1164f, _wgslsmith_f_op_f32(global0.a.b.x + global0.a.b.x), -1521f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(543f, 173f, global0.a.b.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(423f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(global0.b.x, global0.a.b.x)))), vec3<f32>(341f, _wgslsmith_f_op_f32(sign(var_1.a.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec2<u32> {
    global0 = Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3()), vec3<f32>(915f, -629f, 991f)))), Struct_1(_wgslsmith_div_vec4_i32(countOneBits(~global0.a.a), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.a.x, global0.c.a.x, -58419i, -2147483647i), ~global0.a.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(-634f, global0.a.b.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -960f))))));
    let var_0 = ~_wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 0u), u_input.a.wz)), ((vec2<u32>(4294967295u, 18734u) | u_input.a.xw) & _wgslsmith_sub_vec2_u32(u_input.a.yw, vec2<u32>(42383u, 0u))) ^ reverseBits(~u_input.a.wz));
    global0 = Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.x, 2021f, -805f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.b.x, -885f, global0.a.b.x) - vec3<f32>(global0.b.x, 1448f, 750f)))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.b.x)))), -627f, global0.b.x)), Struct_1(vec4<i32>(global0.a.a.x, _wgslsmith_clamp_i32(~global0.a.a.x, _wgslsmith_dot_vec2_i32(global0.c.a.xx, global0.a.a.wx), 6060i), global0.c.a.x, abs(_wgslsmith_sub_i32(0i, global0.a.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-1738f * -119f)))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-923f, _wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_f32(-global0.c.b.x))) + global0.b), global0.a);
    let var_1 = abs(~34595u) ^ (_wgslsmith_add_u32(~u_input.a.x, u_input.a.x) | (~1u >> (~(u_input.a.x & 2889u) % 32u)));
    return countOneBits(_wgslsmith_sub_vec2_u32(select(~var_0, _wgslsmith_add_vec2_u32(u_input.a.wz, vec2<u32>(121379u, u_input.a.x)), select(arg_1.wx, vec2<bool>(false, false), arg_1.x)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 71035u), var_0, u_input.a.xw))) | ~u_input.a.yx;
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = reverseBits(vec2<u32>(reverseBits(max(1u, 1u)), 1u)) & _wgslsmith_clamp_vec2_u32(~(~u_input.a.wy) ^ _wgslsmith_mod_vec2_u32(arg_0 ^ u_input.a.zy, func_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true))), ~countOneBits(countOneBits(u_input.a.zz)), u_input.a.xw);
    var var_1 = Struct_3(Struct_2(global0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_div_vec3_f32(global0.b, global0.b))) - global0.b), global0.a), ~u_input.a.wx >> (u_input.a.zx % vec2<u32>(32u)), Struct_1(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, 5447i, -6021i), vec4<i32>(global0.c.a.x, 0i, 28344i, global0.a.a.x)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 26264i, global0.c.a.x, 0i), global0.a.a), ~vec4<i32>(global0.c.a.x, global0.c.a.x, global0.c.a.x, 1i))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-908f, -697f)), 1f)))), ~(-global0.c.a.xyy));
    var var_2 = Struct_3(Struct_2(Struct_1(reverseBits(abs(global0.a.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, -708f) + vec2<f32>(var_1.c.b.x, 1000f))))), global0.b, global0.a), vec2<u32>(u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.a.yww, ~vec3<u32>(arg_0.x, arg_0.x, 4294967295u)), ~_wgslsmith_mult_u32(var_0.x, var_0.x) << (_wgslsmith_clamp_u32(76333u ^ arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 59542u), var_1.b), ~u_input.a.x) % 32u)), Struct_1(select(~abs(var_1.a.c.a), -vec4<i32>(-2147483647i, var_1.a.c.a.x, var_1.d.x, 1i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(trunc(global0.c.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.c.b.x)), 873f, true)))), vec3<i32>(~countOneBits(max(var_1.c.a.x, -16501i)), var_1.d.x, global0.c.a.x));
    let var_3 = max(u_input.a.x, 12975u);
    var var_4 = abs(vec4<u32>(var_3, arg_0.x, 4294967295u, arg_0.x));
    return Struct_3(var_2.a, _wgslsmith_mult_vec2_u32(var_2.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(28363u, var_2.b.x), u_input.a.xx)), var_2.a.a, select(_wgslsmith_sub_vec3_i32(vec3<i32>(-19416i, -11988i, var_2.c.a.x), global0.c.a.zwz), firstTrailingBit(var_1.d), true) ^ -global0.c.a.xyw);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = global0.c.b.x > global0.c.b.x;
    global0 = func_1(vec2<u32>(~_wgslsmith_div_u32(abs(35547u), func_2(vec2<bool>(true, true), vec4<bool>(true, false, false, false)).x), 5982u)).a;
    var var_1 = -(arg_3.x << (34593u % 32u));
    global0 = func_1(countOneBits(func_1(firstLeadingBit(vec2<u32>(arg_0, 47867u))).b)).a;
    let var_2 = true;
    return func_1(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.b, ~vec2<u32>(64586u, 4294967295u)), arg_1.zx, min(vec2<u32>(69753u, 13675u), firstLeadingBit(vec2<u32>(1u, u_input.a.x))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -421f))) < 739f;
    var var_1 = false || ((all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))) && select(all(vec3<bool>(false, true, false)), true, true)) | (!(global0.c.a.x > global0.a.a.x) && true));
    var var_2 = func_4(_wgslsmith_dot_vec2_u32(~u_input.a.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a.zw), ~u_input.a.yz), _wgslsmith_mod_vec2_u32(~u_input.a.wy, ~vec2<u32>(u_input.a.x, u_input.a.x)))), ~u_input.a, func_1(u_input.a.ww), vec3<i32>(global0.c.a.x << (~abs(0u) % 32u), 2147483647i, 11178i));
    var var_3 = select(select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), false), select(vec3<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true)), true), vec3<bool>(all(vec2<bool>(true, true)) && false, true, !all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), !select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var_2 = Struct_2(global0.c, var_2.b, var_2.a);
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-956f)) + _wgslsmith_f_op_f32(1039f - _wgslsmith_f_op_f32(var_2.a.b.x * 499f))), _wgslsmith_f_op_f32(floor(global0.a.b.x)), global0.b.x, _wgslsmith_f_op_f32(-336f + -391f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.b.x, global0.a.b.x, global0.c.b.x, var_2.a.b.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c.b.x, var_2.c.b.x, global0.a.b.x, 1567f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.a.b.x, var_2.b.x, global0.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-909f, var_2.a.b.x, 305f, 557f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1103f, 701f, true))), 1074f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(-268f * global0.b.x))))));
    var var_5 = Struct_3(Struct_2(Struct_1(vec4<i32>(global0.a.a.x, firstTrailingBit(global0.c.a.x), -2147483647i, select(9858i, var_2.c.a.x, var_3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(368f, var_2.a.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) + global0.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -503f), 2351f), Struct_1(global0.a.a, _wgslsmith_f_op_vec2_f32(abs(var_2.c.b)))), u_input.a.zz, global0.c, _wgslsmith_clamp_vec3_i32(var_2.a.a.zwz, _wgslsmith_add_vec3_i32(~max(vec3<i32>(global0.c.a.x, var_2.c.a.x, global0.c.a.x), var_2.c.a.yyy), func_1(u_input.a.xz).a.a.a.zxw), firstLeadingBit(select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global0.a.a.x, 33644i), var_2.a.a.zxx), abs(vec3<i32>(-1i, 0i, var_2.c.a.x)), true))));
    var_2 = func_4(1u, firstLeadingBit(vec4<u32>(reverseBits(_wgslsmith_clamp_u32(var_5.b.x, 4294967295u, u_input.a.x)), firstTrailingBit(u_input.a.x), func_1(vec2<u32>(0u, u_input.a.x)).b.x, var_5.b.x)), func_1(var_5.b), var_2.c.a.zwx);
    let var_6 = global0.c.a.ww;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_5.b.x, firstTrailingBit(~4294967295u), ~u_input.a.x), vec4<u32>(3574u, 0u, func_1(min(vec2<u32>(u_input.a.x, 17813u), vec2<u32>(37928u, 1u))).b.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(var_5.b.x, var_5.b.x), abs(29892u)) & u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(var_5.c.a.x, 10274i), _wgslsmith_dot_vec4_i32(~global0.a.a, firstTrailingBit(vec4<i32>(var_2.c.a.x, var_6.x, -20926i, -40810i))), 1i, var_2.c.a.x), ~var_2.a.a, var_5.a.c.a), _wgslsmith_f_op_f32(-951f - _wgslsmith_f_op_f32(-var_5.a.a.b.x)));
}

