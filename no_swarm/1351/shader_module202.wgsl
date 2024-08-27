struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = -413f;
    var var_1 = vec3<bool>(true, global0.b, any(vec2<bool>(false, any(vec4<bool>(true, global0.b, false, global0.b)))));
    var var_2 = Struct_1(global0.a, arg_0, ~(~(vec2<u32>(u_input.c.x, u_input.c.x) << (vec2<u32>(global0.c.x, global0.c.x) % vec2<u32>(32u))) | ~(~u_input.a.zy)), abs(abs(_wgslsmith_add_vec3_i32(global0.a.xxx, ~global0.a.wwx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.e.x, -558f, global0.e.x, global0.e.x))))), true))));
    let var_3 = ~4325u;
    var var_4 = Struct_1(var_2.a & vec4<i32>(var_2.d.x, var_2.a.x, 2480i, u_input.e), false, ~u_input.c, abs(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 16054i, u_input.e), var_2.a.zzx) ^ ~var_2.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_2.e * vec4<f32>(-553f, global0.e.x, 1006f, 1988f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, -2647f, global0.e.x, 246f)), var_2.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.e - global0.e)) + vec4<f32>(global0.e.x, _wgslsmith_f_op_f32(var_2.e.x * var_2.e.x), -1332f, var_2.e.x)))));
    return var_4.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(7906i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), vec2<i32>(1i, -36717i)), _wgslsmith_dot_vec4_i32(global0.a, max(global0.a, global0.a)), 2147483647i | -global0.a.x), vec4<i32>(_wgslsmith_mult_i32(func_3(arg_0.x), abs(global0.a.x)), _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.a.wz), u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-54164i, 1i), vec2<i32>(1i, 1i)), -3278i)), true || !(!(true & global0.b)), min(~vec2<u32>(27363u << (arg_2.x % 32u), ~54255u), _wgslsmith_add_vec2_u32(~arg_2, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 1u), u_input.a), arg_2.x))), countOneBits(~min(_wgslsmith_clamp_vec3_i32(global0.d, vec3<i32>(10210i, 19230i, u_input.b.x), vec3<i32>(u_input.d, -10113i, 49778i)), ~vec3<i32>(0i, u_input.d, 17510i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(trunc(global0.e.x)), _wgslsmith_f_op_f32(sign(global0.e.x)), _wgslsmith_f_op_f32(-152f * global0.e.x)))), global0.e)));
    global0 = Struct_1(vec4<i32>(47369i | _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.d.x, -16626i), ~global0.d.x), _wgslsmith_mult_i32(global0.d.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-20277i, global0.d.x), vec2<i32>(u_input.b.x, global0.a.x)))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.e, u_input.e)), vec2<i32>(-36067i >> (u_input.a.x % 32u), global0.a.x)), ~u_input.d), any(arg_3.yxx) && true, _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, reverseBits(arg_1)), abs(vec2<u32>(27146u, 0u))), vec2<u32>(arg_2.x, _wgslsmith_dot_vec2_u32(global0.c, ~vec2<u32>(25869u, 4294967295u)))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.d, select(vec3<i32>(-7805i, 8872i, 62829i), vec3<i32>(global0.a.x, global0.d.x, global0.d.x) << (u_input.a % vec3<u32>(32u)), arg_3.x), global0.d), reverseBits(vec3<i32>(~(-1i), u_input.d, countOneBits(global0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-408f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x - global0.e.x) * 329f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + -979f))), global0.e.x, global0.e.x));
    global0 = Struct_1(-firstLeadingBit(vec4<i32>(global0.d.x & global0.a.x, -2147483647i, -u_input.d, 0i)), !arg_3.x, arg_2, ~vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(global0.a), select(global0.a, global0.a, vec4<bool>(global0.b, arg_3.x, true, arg_0.x))), _wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(u_input.b.x, -1i)), select(-1i, -1i, global0.b && false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2375f, global0.e.x, global0.e.x, global0.e.x), global0.e, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(-global0.e)) * global0.e), arg_3.x)));
    global0 = Struct_1(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(_wgslsmith_add_i32(33647i, global0.d.x), ~u_input.d, func_3(arg_0.x), abs(2935i)), -global0.a) | (firstTrailingBit(global0.a & vec4<i32>(21205i, global0.d.x, 26293i, global0.a.x)) >> (vec4<u32>(u_input.c.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 16205u, arg_2.x, global0.c.x), vec4<u32>(global0.c.x, 33709u, 22854u, 0u)), _wgslsmith_mod_u32(8666u, 47342u)) % vec4<u32>(32u))), select(all(select(vec2<bool>(arg_0.x, arg_3.x), vec2<bool>(global0.b, arg_0.x), arg_3.x)), !global0.b, global0.b) & true, countOneBits(vec2<u32>(min(abs(u_input.c.x), ~arg_2.x), min(global0.c.x, u_input.c.x))), global0.a.xxw, vec4<f32>(_wgslsmith_f_op_f32(round(-551f)), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_f_op_f32(max(-2149f, global0.e.x)), all(vec3<bool>(arg_0.x, true, global0.b)))) * global0.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(307f))))));
    var var_0 = countOneBits(vec2<i32>(-69008i, global0.a.x));
    return select(select(arg_3.xyy, select(arg_3.xzz, vec3<bool>(true, false, all(vec2<bool>(true, false))), vec3<bool>(!arg_0.x, true, arg_3.x)), arg_3.xwz), arg_3.xzw, select(arg_3.wyx, !vec3<bool>(all(vec4<bool>(false, false, arg_0.x, global0.b)), !global0.b, false), arg_3.xyx));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(global0.a, abs(vec4<i32>(u_input.e, -33952i & u_input.e, ~(-16216i), -33078i))), all(select(!(!vec3<bool>(false, global0.b, global0.b)), vec3<bool>(true, true, true), func_2(vec2<bool>(global0.b, global0.b), _wgslsmith_add_u32(arg_2.x, 81214u), ~arg_0.xz, !vec4<bool>(true, global0.b, false, false)))), global0.c, global0.a.zyy, _wgslsmith_f_op_vec4_f32(select(global0.e, _wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(global0.e.x, arg_1.x, _wgslsmith_f_op_f32(-1078f + -534f), global0.e.x)), global0.b)));
    global0 = Struct_1(~(var_0.a & vec4<i32>(11200i, _wgslsmith_mult_i32(0i, var_0.a.x), ~(-3804i), 38334i)), var_0.b, arg_0.yy, var_0.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.e, _wgslsmith_f_op_vec4_f32(sign(var_0.e))))))));
    let var_1 = Struct_1(global0.a, true, firstLeadingBit(select(select(arg_0.zx, ~var_0.c, vec2<bool>(true, true)), ~arg_2.zz, false)), -global0.a.zxz << (~vec3<u32>(var_0.c.x, 4294967295u, ~0u) % vec3<u32>(32u)), global0.e);
    var var_2 = ~1u;
    let var_3 = Struct_1(~global0.a, !select(true, (2147483647i >> (var_0.c.x % 32u)) <= _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(var_1.d.x, 0i, 31723i, 1i)), true), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(51628u, var_0.c.x), abs(abs(vec2<u32>(arg_2.x, arg_2.x)))), vec2<u32>(u_input.a.x, arg_0.x)), var_0.a.zzy ^ vec3<i32>(~(-17413i), ~func_3(global0.b), _wgslsmith_dot_vec2_i32(var_1.d.zy, select(vec2<i32>(var_1.a.x, var_0.a.x), var_0.a.ww, vec2<bool>(false, var_1.b)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.e + var_0.e)))));
    return -15953i;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(arg_2.x, -56313i, u_input.b.x, 0i)), _wgslsmith_add_vec4_i32(arg_2, arg_2)), global0.b && !global0.b, abs(global0.c), _wgslsmith_clamp_vec3_i32(~(-arg_2.xyz & (arg_2.xxy ^ vec3<i32>(-2147483647i, global0.d.x, 1i))), -(firstLeadingBit(arg_2.xwz) >> ((u_input.a << (arg_1.yzx % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(arg_0.a.x, arg_2.x, -1434i)), vec4<f32>(396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f + global0.e.x)) + global0.e.x), _wgslsmith_f_op_f32(arg_0.e.x * global0.e.x), global0.e.x));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2132f)) - _wgslsmith_f_op_f32(1016f + 1084f)))), var_0.e.x, -662f);
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = -419f;
    return Struct_1(-reverseBits(max(countOneBits(arg_0.a), reverseBits(var_0.a))), all(!vec2<bool>(any(vec2<bool>(true, false)), true)), abs((~var_0.c & countOneBits(vec2<u32>(14910u, arg_0.c.x))) << (abs(~vec2<u32>(40465u, arg_0.c.x)) % vec2<u32>(32u))), _wgslsmith_add_vec3_i32(-var_2.a.xyy, var_0.d), vec4<f32>(-1422f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1666f, 1944f) + -144f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1010f)), _wgslsmith_div_f32(var_1.x, arg_0.e.x))), _wgslsmith_f_op_f32(-615f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-589f * 1087f), global0.e.x)))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(ceil(-422f)) > _wgslsmith_f_op_f32(floor(func_4(func_4(arg_0, vec4<u32>(0u, global0.c.x, u_input.a.x, 75777u), global0.a), vec4<u32>(29813u, 17258u, global0.c.x, 95893u), global0.a).e.x)), arg_0.b, false);
    var_0 = !select(vec3<bool>(var_0.x, arg_0.b, true), vec3<bool>(true, arg_0.b, global0.b), var_0.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(max(arg_0.e.x, 309f)));
    let var_2 = false;
    var_0 = vec3<bool>(global0.c.x < 54754u, false, true);
    return func_4(func_4(func_4(func_4(arg_0, vec4<u32>(4294967295u, 0u, u_input.c.x, arg_0.c.x), vec4<i32>(-58493i, arg_0.a.x, 37487i, -1i)), ~(vec4<u32>(arg_0.c.x, 55443u, 40192u, 13145u) ^ vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, global0.c.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.a, vec4<i32>(arg_0.d.x, 0i, -54682i, -34321i)), arg_0.a >> (vec4<u32>(33806u, u_input.c.x, u_input.a.x, u_input.c.x) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)), countOneBits(vec4<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, global0.c.x))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1715u, u_input.c.x), vec4<u32>(4294967295u, 84590u, 0u, 1u), vec4<u32>(1u, global0.c.x, 48461u, global0.c.x)), ~vec4<u32>(4294967295u, 8232u, 11532u, global0.c.x), true)), vec4<i32>(~min(-2147483647i, global0.d.x), abs(u_input.d), global0.a.x, 2147483647i)), ~vec4<u32>(abs(0u << (0u % 32u)), 17552u, arg_0.c.x, ~(30124u ^ global0.c.x)), _wgslsmith_div_vec4_i32(global0.a, select(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.d.x, global0.d.x, u_input.d), vec4<i32>(-2147483647i, u_input.e, 1i, arg_0.d.x)), vec4<i32>(-28552i, arg_0.a.x, 1i, ~arg_0.a.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(Struct_1(global0.a, global0.b, max(global0.c, ~u_input.c), vec3<i32>(-2147483647i, u_input.b.x, -21829i) | (global0.d ^ vec3<i32>(u_input.b.x, -3439i, 4608i)), _wgslsmith_f_op_vec4_f32(-global0.e)), ~vec4<u32>(~17259u, 15072u, u_input.c.x, global0.c.x), ~vec4<i32>(-34581i, func_1(u_input.a, vec2<f32>(-630f, 1696f), vec3<u32>(4294967295u, 1u, global0.c.x)), 0i, ~global0.a.x)));
    var var_0 = false;
    var var_1 = ~(-61822i);
    global0 = func_5(func_5(func_5(Struct_1(-global0.a, global0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.c.x, global0.c.x), vec2<u32>(u_input.a.x, u_input.a.x)), min(vec3<i32>(-14221i, u_input.d, global0.d.x), vec3<i32>(global0.a.x, u_input.b.x, -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x))))));
    let var_2 = global0.b;
    var var_3 = func_4(Struct_1(global0.a, true, ~_wgslsmith_add_vec2_u32(~vec2<u32>(88607u, u_input.a.x), _wgslsmith_clamp_vec2_u32(u_input.c, u_input.a.zx, vec2<u32>(71259u, global0.c.x))), min(vec3<i32>(_wgslsmith_mult_i32(4817i, global0.d.x), ~u_input.d, -2147483647i), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, global0.a.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -2147483647i, global0.d.x), vec3<i32>(1i, 22944i, global0.a.x)))), global0.e), _wgslsmith_mult_vec4_u32(abs(select(max(vec4<u32>(global0.c.x, 44409u, 28438u, 0u), vec4<u32>(global0.c.x, global0.c.x, 4294967295u, 18203u)), vec4<u32>(global0.c.x, 0u, 0u, global0.c.x) | vec4<u32>(global0.c.x, global0.c.x, 1u, 1u), global0.b)), ~_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(4294967295u, 77768u, 4294967295u, 31922u)), _wgslsmith_div_vec4_u32(vec4<u32>(18667u, 4294967295u, 3862u, global0.c.x), vec4<u32>(0u, u_input.c.x, global0.c.x, u_input.a.x)))), reverseBits(countOneBits(func_5(Struct_1(global0.a, global0.b, vec2<u32>(u_input.a.x, 77541u), global0.a.wyw, global0.e)).a)));
    var_3 = func_4(func_5(func_4(func_5(Struct_1(vec4<i32>(var_3.a.x, 2691i, -26017i, -6666i), true, vec2<u32>(global0.c.x, 65167u), vec3<i32>(1421i, -2147483647i, 1i), vec4<f32>(global0.e.x, -254f, var_3.e.x, var_3.e.x))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(var_3.c.x, u_input.c.x, global0.c.x, u_input.c.x), vec4<u32>(global0.c.x, 2446u, 0u, u_input.c.x), global0.b), ~vec4<u32>(var_3.c.x, 1u, 49729u, u_input.a.x)), ~vec4<i32>(0i, 1i, 2162i, var_3.a.x))), vec4<u32>(4294967295u, 1u, 4294967295u, _wgslsmith_clamp_u32(var_3.c.x, ~1u & (global0.c.x | var_3.c.x), func_4(func_5(Struct_1(vec4<i32>(30278i, 2147483647i, u_input.d, -1i), global0.b, vec2<u32>(0u, var_3.c.x), var_3.a.xyx, vec4<f32>(global0.e.x, -402f, -1012f, var_3.e.x))), vec4<u32>(global0.c.x, 41737u, global0.c.x, global0.c.x) >> (vec4<u32>(0u, var_3.c.x, 1u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, global0.d.x, -8532i, 2147483647i), var_3.a, vec4<i32>(-21974i, 16757i, u_input.d, 1168i))).c.x)), countOneBits(var_3.a));
    var var_4 = 1f;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.e.x, _wgslsmith_f_op_f32(896f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.x);
}

