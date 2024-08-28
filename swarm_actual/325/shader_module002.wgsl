struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: Struct_5) -> u32 {
    let var_0 = !any(vec4<bool>(true, all(vec4<bool>(true, false, false, true)), false, false)) && false;
    let var_1 = vec4<bool>(true, true, false, var_0);
    let var_2 = Struct_1(true, 84627i, u_input.d.zy, select(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23474i, u_input.a, -28025i), vec4<i32>(2147483647i, 10823i, u_input.d.x, 0i))), 15178i, !(!var_0) || true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(637f, 1289f, 2650f, -1039f) * vec4<f32>(-146f, 694f, 1584f, 1000f)))))));
    var var_3 = Struct_2(Struct_1(u_input.e.x != (min(u_input.c.x, 44735u) ^ abs(4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, min(1i, 13711i), u_input.d.x & u_input.d.x), u_input.d >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u))), ~(~arg_1), _wgslsmith_dot_vec2_i32(~reverseBits(arg_1), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1, u_input.d.zz, vec2<i32>(var_2.b, var_2.c.x)), arg_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.e)), vec4<bool>(var_2.e.x > 241f, true, true, var_2.a)))), _wgslsmith_div_f32(var_2.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.e.x - var_2.e.x)))), var_2, firstLeadingBit(~(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 5083i, 2147483647i, u_input.d.x))), false);
    var_3 = Struct_2(var_3.a, 369f, var_3.a, vec4<i32>(2147483647i, u_input.d.x, 1i, ~u_input.d.x), all(var_1.xwz));
    return _wgslsmith_sub_u32(arg_0.a, u_input.c.x);
}

fn func_2(arg_0: Struct_3) -> Struct_5 {
    var var_0 = vec2<i32>(1i, ~(-(~select(0i, u_input.a, true))));
    let var_1 = min(75611u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, func_3(Struct_5(u_input.b), vec2<i32>(u_input.d.x, 2147483647i), Struct_5(0u))), ~vec2<u32>(~1u, abs(u_input.c.x))));
    var var_2 = arg_0.a;
    var_2 = arg_0.a;
    let var_3 = min(select(vec2<u32>(~max(66824u, 1u), min(~1u, _wgslsmith_mult_u32(1u, u_input.c.x))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, u_input.c), (u_input.e ^ vec2<u32>(u_input.e.x, 2882u)) ^ abs(u_input.c)), -1i != ~u_input.d.x), ~u_input.e);
    return Struct_5(firstLeadingBit((u_input.b ^ _wgslsmith_add_u32(var_1, var_3.x)) << (~var_1 % 32u)));
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = func_2(Struct_3(u_input.d.x > u_input.a));
    var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = Struct_3(true | (~firstLeadingBit(1350u) < _wgslsmith_mult_u32(1u ^ var_0.a, u_input.e.x)));
    var_0 = func_2(Struct_3(var_1.a));
    return ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_0.a, arg_1.a), vec3<u32>(26937u, 4294967295u, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(~(~vec3<u32>(0u, u_input.c.x, 11634u)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.b, 4294967295u, u_input.e.x)), vec3<u32>(u_input.b, 4294967295u, 1u)) ^ vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_mod_u32(1u, 26095u)), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, select(false, true, true))));
    var_0 = ~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_div_u32(28491u, u_input.c.x), u_input.e.x, 0u)), (func_1(183f, Struct_5(0u)) << ((vec3<u32>(var_0.x, u_input.b, u_input.b) << (vec3<u32>(17526u, var_0.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(9173u, u_input.b, var_0.x), countOneBits(vec3<u32>(4294967295u, 1u, 1u)), vec3<u32>(4294967295u, 4294967295u, 16739u)));
    var_0 = countOneBits(countOneBits(vec3<u32>(49605u, var_0.x, u_input.b)));
    let var_1 = var_0.zz;
    let var_2 = min(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, ~56947u), vec2<u32>(1u, u_input.c.x) ^ min(vec2<u32>(48837u, var_1.x), vec2<u32>(105415u, u_input.c.x))), var_0.yz), max(~reverseBits(var_0.xx) | _wgslsmith_mod_vec2_u32(u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(5298u, u_input.e.x), vec2<u32>(u_input.b, 4294967295u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 4294967295u), u_input.e, func_1(-361f, Struct_5(1u)).yz), ~vec2<u32>(887u, 4294967295u))));
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(~(~vec3<u32>(var_2.x, u_input.c.x, 19044u))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_2.x, var_2.x), 302u, 27720u), ~(vec3<u32>(0u, var_2.x, 1u) & vec3<u32>(u_input.e.x, 4294967295u, 0u)))), select(~vec3<u32>(countOneBits(var_2.x), 27446u, ~4294967295u), max(func_1(1000f, Struct_5(0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.x), vec3<u32>(var_0.x, 105838u, u_input.e.x))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, u_input.e.x, u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, var_1.x, 1u), vec3<u32>(0u, 0u, 1u)), min(vec3<u32>(0u, var_1.x, 43708u), vec3<u32>(4294967295u, var_2.x, var_2.x))) % vec3<u32>(32u)), true));
    let var_3 = reverseBits(~(19696u >> (~_wgslsmith_add_u32(var_2.x, 57540u) % 32u)));
    var_0 = select(vec3<u32>(~_wgslsmith_mod_u32(~1u, _wgslsmith_clamp_u32(1u, 32173u, var_1.x)), 1u, _wgslsmith_mult_u32(~select(0u, var_3, true), u_input.e.x)), reverseBits(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_3, var_2.x, 53113u), vec3<u32>(4294967295u, var_3, var_1.x)), vec3<u32>(var_1.x, firstLeadingBit(1u), var_1.x), ~(~vec3<u32>(var_0.x, 19542u, 0u)))), true);
    var var_4 = Struct_2(Struct_1(true, u_input.d.x << (4294967295u % 32u), u_input.d.zz, _wgslsmith_sub_i32(38401i, ~u_input.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-498f, 244f, -337f, -676f) * vec4<f32>(518f, 1093f, -776f, -271f)))))), 159f, Struct_1(false, firstLeadingBit(8265i), ~u_input.d.zz, u_input.d.x | max(_wgslsmith_div_i32(u_input.a, 34873i), abs(-2147483647i)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-477f, 755f, 2244f, -335f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(878f, 457f, 1211f, -749f))))))), vec4<i32>(-u_input.a, _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.d.yz), u_input.d.x)), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 1i), _wgslsmith_mult_i32(1i, 1i)), -22348i), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(var_4.d, -firstLeadingBit(abs(vec4<i32>(var_4.c.d, -1i, -1i, 15265i)))), firstTrailingBit(select(select(_wgslsmith_mod_vec3_u32(vec3<u32>(61273u, 0u, var_3), vec3<u32>(65998u, var_0.x, 50173u)), vec3<u32>(u_input.c.x, 4294967295u, var_1.x) >> (vec3<u32>(21322u, u_input.b, var_2.x) % vec3<u32>(32u)), var_4.c.a), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, var_1.x), ~vec3<u32>(4294967295u, u_input.b, u_input.e.x)), !vec3<bool>(var_4.a.a, false, var_4.e))), firstLeadingBit(reverseBits(~vec4<u32>(0u, var_1.x, 1u, 0u) ^ vec4<u32>(1u, var_0.x, var_0.x, var_2.x))), 260f);
}

