struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    var var_0 = -8810i;
    var_0 = -firstLeadingBit(u_input.a.x);
    var var_1 = -1122f;
    var var_2 = u_input.a.xx;
    var var_3 = false & all(arg_1.a.d);
    return _wgslsmith_div_i32(1i, var_2.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = firstLeadingBit(vec2<i32>(max(-_wgslsmith_dot_vec3_i32(u_input.a.yyw, vec3<i32>(u_input.a.x, arg_0.a.a, 19356i)), i32(-1i) * -arg_2.a.a), -u_input.a.x));
    let var_1 = u_input.a.yy;
    return vec2<bool>(arg_2.a.d.x, false);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = !func_3(Struct_2(Struct_1(u_input.a.x, _wgslsmith_sub_u32(4294967295u, 25774u), _wgslsmith_dot_vec2_u32(vec2<u32>(87736u, 4294967295u), vec2<u32>(39828u, 26281u)), !vec3<bool>(arg_1, arg_1, true))), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 * 1740f)))), Struct_2(Struct_1(-17727i, 1u, 27459u, !vec3<bool>(arg_1, arg_1, false))), Struct_1(-78289i, 1u, 4294967295u, vec3<bool>(false, arg_1, true)));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~1u, ~min(56268u, 18748u), 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(24555u, 652u, 0u, 38425u), vec4<u32>(27317u, 1u, 63408u, 37635u), vec4<u32>(11115u, 0u, 4294967295u, 25329u))) & vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~_wgslsmith_clamp_u32(1u, 1u, 1u), ~(~86367u), ~(~1u), ~abs(4294967295u)) & vec4<u32>(1u, 1u, 1u, 1u));
    let var_3 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(8840i, u_input.a.x, 0i), -arg_0.x, firstTrailingBit(-2147483647i), -1i), u_input.a >> (vec4<u32>(var_2.x, 4294967295u, 1u, var_2.x) % vec4<u32>(32u))), countOneBits(var_2.x), 376u, vec3<bool>(!(!arg_1), true, any(func_3(Struct_2(Struct_1(28348i, 91809u, var_2.x, vec3<bool>(arg_1, arg_1, false))), 1134f, Struct_2(Struct_1(arg_0.x, var_2.x, var_2.x, vec3<bool>(var_0.x, var_0.x, true))), Struct_1(-5490i, var_2.x, 49076u, vec3<bool>(false, false, true)))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -344f)), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), 185f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), -1642f, 284f, _wgslsmith_div_f32(arg_2, arg_2)))), !(_wgslsmith_mult_u32(var_2.x, 0u) <= (35124u << (var_3.a.c % 32u))))));
    return Struct_1(-63416i | u_input.a.x, 42262u, var_2.x, vec3<bool>(false, false, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(min(-func_1(false, Struct_2(Struct_1(0i, 0u, 74965u, vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-223f, -242f, 800f, -450f) + vec4<f32>(443f, -555f, -713f, -854f)), 36809u), -(u_input.a.x | ~u_input.a.x)), reverseBits(u_input.a.x));
    var_0 = vec2<i32>(u_input.a.x, 1i | func_1(true, Struct_2(func_2(u_input.a.xy, true, -417f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, -586f, 313f, -1000f) - vec4<f32>(-1587f, 1987f, 1000f, -790f))), ~76169u));
    var var_1 = func_2(_wgslsmith_add_vec2_i32(~(-reverseBits(u_input.a.zw)), -u_input.a.zy), all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), select(0u, 75275u, false) <= func_2(u_input.a.ww, true, 664f).b, true)), -926f);
    let var_2 = -var_1.a;
    let var_3 = Struct_1(~1i, _wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(vec2<u32>(33639u, var_1.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, 14787u), vec2<u32>(65056u, var_1.c), vec2<u32>(var_1.b, var_1.c))), ~vec2<u32>(1u, 1u)), ~((vec2<u32>(63556u, var_1.c) | vec2<u32>(var_1.c, var_1.c)) << (vec2<u32>(27526u, var_1.c) % vec2<u32>(32u)))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~10458u, ~var_1.c), 1u) | _wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.c, 17835u), vec2<u32>(0u, var_1.b)), abs(vec2<u32>(var_1.b, var_1.c))), vec2<u32>(1u, var_1.b)), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -683f, 1626f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(min(2180f, -728f)), _wgslsmith_f_op_f32(f32(-1f) * -1662f))))), var_1.b);
}

