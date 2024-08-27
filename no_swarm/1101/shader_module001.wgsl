struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), false)), ~firstTrailingBit(vec4<i32>(19984i, -47701i, -1i, -2147483647i)) << (_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 0u, u_input.d.x, 0u)), ~u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1564f - _wgslsmith_f_op_f32(f32(-1f) * -1010f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_f_op_f32(max(-1000f, -301f))))), Struct_1(!vec4<bool>(any(vec4<bool>(true, true, false, true)), false, 29270u != u_input.b.x, all(vec4<bool>(false, true, false, false))), vec4<i32>(1i, ~(-92501i), countOneBits(~0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(45550i, 0i, 17572i, -26542i), vec4<i32>(7567i, 32311i, 78192i, -2147483647i))), 216f), (-vec4<i32>(1i, 1i, 1i, 1i) >> (~(~u_input.a) % vec4<u32>(32u))) ^ reverseBits(-vec4<i32>(66354i, 37546i, -20823i, -50156i)), ~vec3<i32>(11342i, 1i, ~14355i));
    let var_1 = Struct_1(var_0.a.a, vec4<i32>(abs(select(-6206i, 62134i, var_0.a.a.x)), firstLeadingBit(var_0.d.x), -max(~var_0.d.x, var_0.d.x), min(~select(var_0.b.b.x, var_0.a.b.x, var_0.a.a.x), var_0.a.b.x)), _wgslsmith_f_op_f32(614f * _wgslsmith_f_op_f32(max(-103f, var_0.a.c))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-2008f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(round(var_1.c)), 1000f));
    var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 701f, var_3.x, 625f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.c, var_1.c, var_3.x, -636f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 835f, -423f, var_0.b.c) * vec4<f32>(-1502f, var_0.b.c, 564f, -874f)))), vec4<f32>(489f, var_3.x, _wgslsmith_f_op_f32(1f - var_3.x), var_0.a.c))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.c)) - _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(trunc(var_1.c)), var_0.a.c, 521f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2040f, var_3.x, -1400f, var_3.x) - vec4<f32>(var_0.a.c, var_0.b.c, var_3.x, -593f))))));
    return select(select(var_0.b.a, !var_1.a, true), vec4<bool>(select(false, select(false & var_0.a.a.x, true, all(vec4<bool>(true, true, var_0.a.a.x, var_0.b.a.x))), var_1.a.x), var_2.x <= _wgslsmith_add_u32(~99000u, var_2.x), any(select(vec2<bool>(true, var_1.a.x), vec2<bool>(var_0.b.a.x, var_1.a.x), var_0.a.a.wz)) | any(vec4<bool>(var_1.a.x, var_1.a.x, var_0.b.a.x, var_0.b.a.x)), var_0.a.a.x), var_0.a.a.x);
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(!vec4<bool>(!arg_0.a.x, arg_0.a.x, false, arg_0.a.x), arg_0.b, -1399f), Struct_1(func_3(), _wgslsmith_div_vec4_i32(arg_0.b, arg_0.b), 1f), vec4<i32>(arg_0.b.x, ~1i, -arg_0.b.x, select(2147483647i, 18213i << (~u_input.a.x % 32u), arg_0.a.x)), ~max(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, -4332i, arg_0.b.x), vec3<i32>(-2147483647i, arg_0.b.x, -63757i)), arg_0.b.wyy));
    var var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i | arg_0.b.x, var_0.b.b.x, var_0.c.x, arg_0.b.x) & var_0.b.b, var_0.c);
    var var_2 = true;
    let var_3 = firstTrailingBit(-vec4<i32>(reverseBits(arg_0.b.x), arg_0.b.x, 105i, var_0.c.x >> (u_input.c.x % 32u)));
    var var_4 = var_0.a.a.x;
    return u_input.b;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_0, 1270f))))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -940f))))), var_0.xy));
    var var_2 = Struct_2(Struct_1(vec4<bool>(all(vec3<bool>(arg_2, false, true)), true, all(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, arg_2), false)), true), -min(firstLeadingBit(vec4<i32>(-2147483647i, 0i, -2147483647i, -21907i)), vec4<i32>(-5932i, 2147483647i, 60624i, -2147483647i)), 588f), Struct_1(!func_3(), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-962i, -2147483647i, -33677i, -26819i), -vec4<i32>(-1i, 0i, 19711i, -14991i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -567f)))))), abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(42930i, 1i, -1i, 12988i))), vec3<i32>(abs(0i), 1456i, ~(-76300i)));
    var_2 = Struct_2(Struct_1(vec4<bool>(false, (-1997f != var_1.x) & (true | arg_2), any(select(vec3<bool>(true, arg_2, true), var_2.b.a.xzy, var_2.b.a.zww)), true), (vec4<i32>(-20455i, 0i, 8627i, var_2.b.b.x) & _wgslsmith_mod_vec4_i32(var_2.a.b, vec4<i32>(8548i, var_2.c.x, var_2.c.x, -2147483647i))) << (select(u_input.c >> (vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x) % vec4<u32>(32u)), min(u_input.c, u_input.a), true) % vec4<u32>(32u)), -494f), Struct_1(select(func_3(), !vec4<bool>(arg_2, var_2.a.a.x, arg_2, arg_2), var_2.a.a), ~(~(var_2.c >> (vec4<u32>(30696u, 1u, u_input.a.x, arg_1.x) % vec4<u32>(32u)))), var_0.x), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_2.a.b, var_2.b.b), _wgslsmith_add_vec4_i32(vec4<i32>(-39985i, 9149i, var_2.d.x, var_2.b.b.x), vec4<i32>(var_2.c.x, var_2.d.x, 0i, var_2.b.b.x))), -var_2.a.b), (vec4<i32>(2147483647i, var_2.a.b.x, 14118i, var_2.c.x) & vec4<i32>(var_2.b.b.x, var_2.d.x, var_2.c.x, 28598i)) << (vec4<u32>(u_input.c.x | arg_1.x, ~u_input.c.x, 1u, 0u) % vec4<u32>(32u))), -vec3<i32>(22167i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), abs(var_2.a.b.www))));
    let var_3 = select(var_2.b.a.zy, !func_3().yy, arg_2);
    return Struct_2(var_2.b, var_2.b, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 20987i, _wgslsmith_mult_i32(1i, 2147483647i), 24903i ^ var_2.a.b.x), vec4<i32>(var_2.a.b.x, var_2.d.x, var_2.d.x, var_2.b.b.x) ^ var_2.c) ^ -vec4<i32>(var_2.c.x, abs(-19050i), _wgslsmith_add_i32(var_2.c.x, 2147483647i), _wgslsmith_div_i32(var_2.c.x, var_2.c.x)), ~min(firstLeadingBit(abs(var_2.b.b.yxy)), vec3<i32>(abs(var_2.a.b.x), var_2.c.x, _wgslsmith_sub_i32(var_2.a.b.x, var_2.a.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = ((vec4<u32>(var_0.x << (u_input.a.x % 32u), 0u, ~6809u, ~5845u) << (u_input.c % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(reverseBits(min(vec4<u32>(var_0.x, u_input.b.x, u_input.b.x, 0u), u_input.c)), u_input.a)) & u_input.a;
    var var_1 = func_4(_wgslsmith_f_op_f32(-119f * -1052f), func_2(Struct_1(select(!arg_0.a, !vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(true, true, arg_0.a.x, false)), ~max(vec4<i32>(-28424i, arg_0.b.x, 42006i, 1i), vec4<i32>(1i, -21777i, arg_0.b.x, arg_0.b.x)), 1714f)), !all(arg_0.a));
    var_0 = ~(~(~u_input.c));
    var var_2 = !vec2<bool>(true, var_1.a.a.x);
    return func_4(1000f, ~u_input.a.wwx, false | !(!(u_input.b.x == 30584u))).b;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(arg_1.a.x, arg_1.a.x);
    let var_1 = Struct_2(Struct_1(!vec4<bool>(any(vec3<bool>(false, var_0.x, arg_1.a.x)), true, true, any(vec2<bool>(true, var_0.x))), -select(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), firstLeadingBit(vec4<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), arg_1.c), func_1(arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_1.c) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_1.c) * vec2<f32>(arg_1.c, 255f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, arg_1.c) - vec2<f32>(-516f, 532f))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(0i, -29960i), _wgslsmith_dot_vec2_i32(arg_1.b.zy, arg_1.b.xw)), arg_1.b.wz), vec3<bool>(true, var_0.x, true)), abs(vec4<i32>(min(_wgslsmith_clamp_i32(0i, arg_1.b.x, arg_1.b.x), min(arg_1.b.x, arg_1.b.x)), ~(arg_1.b.x >> (1u % 32u)), -1i, min(arg_1.b.x, arg_1.b.x))), _wgslsmith_add_vec3_i32(-(~firstTrailingBit(vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x))), ~_wgslsmith_mult_vec3_i32(arg_1.b.yxx & arg_1.b.xxz, vec3<i32>(45285i, arg_1.b.x, 2147483647i) ^ vec3<i32>(-1i, arg_1.b.x, -1i))));
    let var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(arg_0.x), ~arg_0.x), ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0, abs(arg_0)), abs(vec2<u32>(u_input.c.x, arg_0.x))));
    var_0 = vec2<bool>(1i > var_1.c.x, select(var_1.a.a.x, all(arg_1.a), true));
    var var_3 = func_4(_wgslsmith_f_op_f32(-arg_1.c), select(min(countOneBits(u_input.a.wyy), vec3<u32>(39352u, 4294967295u, 13560u) ^ u_input.c.xxy), vec3<u32>(arg_0.x >> (29488u % 32u), arg_0.x, _wgslsmith_add_u32(4294967295u, 0u)), vec3<bool>(var_0.x, true, !var_1.b.a.x)) << (u_input.a.xwx % vec3<u32>(32u)), func_3().x);
    return var_1;
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(~arg_1.x, max(0u, arg_1.x), ~(~reverseBits(42482u)), ~1u), ~firstLeadingBit(countOneBits(u_input.c)));
    var var_1 = u_input.c.x | firstTrailingBit(func_2(arg_2.a).x);
    let var_2 = false;
    var var_3 = 875f;
    var_3 = _wgslsmith_f_op_f32(floor(1000f));
    return arg_2.a;
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b.a.zw;
    let var_1 = ~((u_input.a.x << (_wgslsmith_mod_u32(u_input.d.x, u_input.a.x >> (u_input.b.x % 32u)) % 32u)) >> (4016u % 32u));
    let var_2 = func_3();
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_6(var_1, vec2<u32>(u_input.d.x, u_input.c.x), Struct_2(arg_0.b, Struct_1(vec4<bool>(var_2.x, var_2.x, true, true), vec4<i32>(-16962i, 2147483647i, -54035i, arg_0.a.b.x), arg_0.a.c), arg_0.a.b, vec3<i32>(10149i, 2147483647i, arg_0.d.x))).c)), arg_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.c + _wgslsmith_f_op_f32(sign(arg_0.b.c)))), -128f)));
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, arg_0.b.c, 1107f) + vec4<f32>(781f, 1806f, 164f, 546f))))), vec4<f32>(-487f, _wgslsmith_f_op_f32(-var_3.x), arg_0.b.c, func_6(0u, u_input.d, arg_0).c))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(func_6(~100229u, firstTrailingBit(abs(u_input.c.xx)), func_5(vec2<u32>(u_input.d.x, 4294967295u), func_1(Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-1i, 2147483647i, -85522i, 60688i), -291f), vec2<f32>(-231f, 261f), vec2<i32>(-2147483647i, -1i), vec3<bool>(true, false, true)))), func_4(-659f, u_input.c.wzx, select(true, true, true)).b, vec4<i32>(0i, -10291i, 1i, 1i), select(select(vec3<i32>(1732i, 0i, 1i), ~vec3<i32>(13659i, -31102i, 11905i), any(vec3<bool>(true, false, true))), vec3<i32>(~(-1i), 2147483647i, ~(-25019i)), vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -516f, -472f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, func_1(func_5(u_input.d, var_0.b).a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(478f, var_1.x))), var_0.c.xw, select(var_0.a.a.wzx, vec3<bool>(false, var_0.a.a.x, true), !var_0.a.a.zzw)).c, _wgslsmith_f_op_f32(-var_1.x))));
    var var_2 = func_6(func_2(func_5(u_input.a.wx, Struct_1(vec4<bool>(var_0.b.a.x, var_0.a.a.x, true, var_0.b.a.x), vec4<i32>(0i, 2147483647i, var_0.b.b.x, var_0.b.b.x), var_0.b.c)).b).x >> (~(min(u_input.b.x, 28206u) << (_wgslsmith_add_u32(u_input.c.x, 0u) % 32u)) % 32u), u_input.a.zy, var_0);
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f), func_4(var_1.x, max(reverseBits(_wgslsmith_mod_vec3_u32(u_input.b, u_input.c.zzz)), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(33142u, 1u, u_input.a.x))), var_2.a.x).a.c, var_2.c);
    var var_3 = Struct_1(!vec4<bool>(var_2.a.x, _wgslsmith_f_op_f32(floor(639f)) < _wgslsmith_f_op_f32(-var_1.x), all(vec2<bool>(true, true)), var_0.b.a.x), ~_wgslsmith_mult_vec4_i32(var_0.c, _wgslsmith_clamp_vec4_i32(select(var_2.b, vec4<i32>(25275i, var_0.d.x, 2147483647i, 0i), vec4<bool>(false, var_2.a.x, var_0.a.a.x, false)), firstTrailingBit(vec4<i32>(-45379i, 2147483647i, 13464i, var_2.b.x)), ~vec4<i32>(0i, 27659i, 0i, var_2.b.x))), _wgslsmith_f_op_f32(var_2.c + var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(14076u, reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 73769u), u_input.c.zw, var_0.a.a.zw), countOneBits(u_input.b.xz)), 4294967295u | u_input.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, u_input.a.x), u_input.c), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.a.x, u_input.c.x, 1u))), 4294967295u | _wgslsmith_add_u32(1u, u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.c, 948f, var_2.c), vec3<f32>(var_2.c, var_0.b.c, var_1.x), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, -310f, var_0.a.c) + vec3<f32>(-741f, 1612f, var_2.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c, var_2.c, 188f)))), func_7(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c - 2317f) * _wgslsmith_f_op_f32(-651f - 209f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 23111u), u_input.c.zz), abs(u_input.b.x), min(5124u, 160160u)), !func_4(var_2.c, u_input.a.zwz, var_0.b.a.x).a.a.x)).d.x);
}

